-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
-- Date        : Mon May 15 05:15:00 2017
-- Host        : DESKTOP-QFI1E31 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_mdm_1_0_sim_netlist.vhdl
-- Design      : design_1_mdm_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1157-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_BSCANE2 is
  port (
    Dbg_Capture_0 : out STD_LOGIC;
    drck_i : out STD_LOGIC;
    Ext_JTAG_RESET : out STD_LOGIC;
    sel : out STD_LOGIC;
    \Use_Serial_Unified_Completion.completion_status_reg[15]\ : out STD_LOGIC;
    Dbg_TDI_31 : out STD_LOGIC;
    Ext_JTAG_UPDATE : out STD_LOGIC;
    \Use_UART.tdo_reg_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    shift_n_reset : out STD_LOGIC;
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Use_Serial_Unified_Completion.count_reg[5]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \shift_Count_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Use_Serial_Unified_Completion.completion_status_reg[15]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Use_Serial_Unified_Completion.count_reg[0]__0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    tdo : in STD_LOGIC;
    Scan_Reset : in STD_LOGIC;
    Scan_Reset_Sel : in STD_LOGIC;
    \Use_Serial_Unified_Completion.count_reg[5]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Use_Serial_Unified_Completion.sample_1_reg[15]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \p_54_out__0\ : in STD_LOGIC;
    \p_31_out__0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_BSCANE2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_BSCANE2 is
  signal \^dbg_capture_0\ : STD_LOGIC;
  signal \Use_E2.BSCANE2_I_n_3\ : STD_LOGIC;
  signal \Use_E2.BSCANE2_I_n_6\ : STD_LOGIC;
  signal \Use_E2.BSCANE2_I_n_8\ : STD_LOGIC;
  signal \^use_serial_unified_completion.completion_status_reg[15]\ : STD_LOGIC;
  signal \^sel\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Use_BSCAN.Config_Reg[30]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \Use_BSCAN.PORT_Selector[3]_i_1\ : label is "soft_lutpair31";
  attribute box_type : string;
  attribute box_type of \Use_E2.BSCANE2_I\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \Use_Serial_Unified_Completion.completion_status[15]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \Use_Serial_Unified_Completion.count[0]__0_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \Use_Serial_Unified_Completion.count[5]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \Use_UART.tdo_reg[0]_i_1\ : label is "soft_lutpair29";
begin
  Dbg_Capture_0 <= \^dbg_capture_0\;
  \Use_Serial_Unified_Completion.completion_status_reg[15]\ <= \^use_serial_unified_completion.completion_status_reg[15]\;
  sel <= \^sel\;
\Use_BSCAN.Config_Reg[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => Scan_Reset,
      I1 => Scan_Reset_Sel,
      I2 => \^use_serial_unified_completion.completion_status_reg[15]\,
      O => shift_n_reset
    );
\Use_BSCAN.PORT_Selector[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => Scan_Reset,
      I1 => Scan_Reset_Sel,
      I2 => \^sel\,
      O => AR(0)
    );
\Use_E2.BSCANE2_I\: unisim.vcomponents.BSCANE2
    generic map(
      DISABLE_JTAG => "FALSE",
      JTAG_CHAIN => 2
    )
        port map (
      CAPTURE => \^dbg_capture_0\,
      DRCK => drck_i,
      RESET => Ext_JTAG_RESET,
      RUNTEST => \Use_E2.BSCANE2_I_n_3\,
      SEL => \^sel\,
      SHIFT => \^use_serial_unified_completion.completion_status_reg[15]\,
      TCK => \Use_E2.BSCANE2_I_n_6\,
      TDI => Dbg_TDI_31,
      TDO => tdo,
      TMS => \Use_E2.BSCANE2_I_n_8\,
      UPDATE => Ext_JTAG_UPDATE
    );
\Use_Serial_Unified_Completion.completion_status[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \p_54_out__0\,
      I1 => \^dbg_capture_0\,
      I2 => \^use_serial_unified_completion.completion_status_reg[15]\,
      O => \Use_Serial_Unified_Completion.completion_status_reg[15]_0\(0)
    );
\Use_Serial_Unified_Completion.completion_status[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^dbg_capture_0\,
      I1 => \Use_Serial_Unified_Completion.sample_1_reg[15]\(0),
      O => D(0)
    );
\Use_Serial_Unified_Completion.count[0]__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \p_31_out__0\,
      I1 => \^dbg_capture_0\,
      I2 => \^use_serial_unified_completion.completion_status_reg[15]\,
      O => \Use_Serial_Unified_Completion.count_reg[0]__0\(0)
    );
\Use_Serial_Unified_Completion.count[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dbg_capture_0\,
      I1 => \Use_Serial_Unified_Completion.count_reg[5]_0\(0),
      O => \Use_Serial_Unified_Completion.count_reg[5]\(0)
    );
\Use_UART.tdo_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^use_serial_unified_completion.completion_status_reg[15]\,
      I1 => \^dbg_capture_0\,
      O => \Use_UART.tdo_reg_reg[7]\(0)
    );
\shift_Count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^use_serial_unified_completion.completion_status_reg[15]\,
      I1 => Q(0),
      O => \shift_Count_reg[0]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_BUFG is
  port (
    Dbg_Clk_31 : out STD_LOGIC;
    drck_i : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_BUFG;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_BUFG is
  attribute box_type : string;
  attribute box_type of \Using_FPGA.Native\ : label is "PRIMITIVE";
begin
\Using_FPGA.Native\: unisim.vcomponents.BUFG
     port map (
      I => drck_i,
      O => Dbg_Clk_31
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDC_1 is
  port (
    data_cmd_noblock : out STD_LOGIC;
    D_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \Use_Serial_Unified_Completion.completion_block_reg\ : out STD_LOGIC;
    sample_1 : out STD_LOGIC;
    \Use_Serial_Unified_Completion.completion_status_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Use_Serial_Unified_Completion.sample_reg[15]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \p_31_out__0\ : out STD_LOGIC;
    Debug_Rst_i0 : out STD_LOGIC;
    \shifting_Data1__0\ : out STD_LOGIC;
    Dbg_Reg_En_0 : out STD_LOGIC_VECTOR ( 0 to 7 );
    CE : out STD_LOGIC;
    \command_1_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Use_Serial_Unified_Completion.mb_instr_overrun_reg\ : out STD_LOGIC;
    \Use_Serial_Unified_Completion.mb_instr_error_reg\ : out STD_LOGIC;
    \Use_Serial_Unified_Completion.mb_data_overrun_reg\ : out STD_LOGIC;
    \completion_ctrl_reg[0]\ : out STD_LOGIC;
    \Use_Serial_Unified_Completion.completion_block_reg_0\ : out STD_LOGIC;
    \Use_UART.tx_buffered_reg\ : out STD_LOGIC;
    CLK : in STD_LOGIC;
    sel_n : in STD_LOGIC;
    \Use_Serial_Unified_Completion.count_reg[1]\ : in STD_LOGIC;
    \Use_Serial_Unified_Completion.count_reg[0]\ : in STD_LOGIC;
    \command_reg[0]\ : in STD_LOGIC;
    sync : in STD_LOGIC;
    \Use_BSCAN.PORT_Selector_reg[0]\ : in STD_LOGIC;
    \command_reg[5]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \Use_Serial_Unified_Completion.completion_status_reg[10]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \Use_Serial_Unified_Completion.completion_status_reg[2]\ : in STD_LOGIC;
    \Use_Serial_Unified_Completion.completion_status_reg[3]\ : in STD_LOGIC;
    \Use_Serial_Unified_Completion.completion_status_reg[4]\ : in STD_LOGIC;
    \Use_Serial_Unified_Completion.completion_status_reg[5]\ : in STD_LOGIC;
    \Use_Serial_Unified_Completion.completion_status_reg[7]\ : in STD_LOGIC;
    \Use_Serial_Unified_Completion.completion_block_reg_1\ : in STD_LOGIC;
    \Use_BSCAN.PORT_Selector_reg[0]_0\ : in STD_LOGIC;
    \Use_Serial_Unified_Completion.sample_reg[15]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \command_reg[2]\ : in STD_LOGIC;
    \tdi_shifter_reg[0]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \Use_BSCAN.PORT_Selector_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sel : in STD_LOGIC;
    Dbg_TDO_0 : in STD_LOGIC;
    \Use_Serial_Unified_Completion.count_reg[5]\ : in STD_LOGIC;
    completion_ctrl : in STD_LOGIC;
    \p_3_out__10\ : in STD_LOGIC;
    in0 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDC_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDC_1 is
  signal \^d_0\ : STD_LOGIC;
  signal Dbg_Shift_31_INST_0_i_2_n_0 : STD_LOGIC;
  signal \^use_serial_unified_completion.completion_block_reg\ : STD_LOGIC;
  signal \Use_Serial_Unified_Completion.mb_instr_error_i_2_n_0\ : STD_LOGIC;
  signal \Use_Serial_Unified_Completion.mb_instr_overrun_i_2_n_0\ : STD_LOGIC;
  signal \Use_Serial_Unified_Completion.mb_instr_overrun_i_3_n_0\ : STD_LOGIC;
  signal \Use_UART.tx_buffered_i_2_n_0\ : STD_LOGIC;
  signal \Using_FPGA.Native_i_2_n_0\ : STD_LOGIC;
  signal completion_ctrl0 : STD_LOGIC;
  signal \^data_cmd_noblock\ : STD_LOGIC;
  signal \^p_31_out__0\ : STD_LOGIC;
  signal \^sample_1\ : STD_LOGIC;
  signal \^shifting_data1__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Dbg_Reg_En_0[1]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Dbg_Reg_En_0[2]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Dbg_Reg_En_0[3]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Dbg_Reg_En_0[4]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Dbg_Reg_En_0[5]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Dbg_Reg_En_0[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Dbg_Reg_En_0[7]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of Dbg_Shift_31_INST_0_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Use_Serial_Unified_Completion.completion_status[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Use_Serial_Unified_Completion.completion_status[15]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Use_Serial_Unified_Completion.completion_status[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Use_Serial_Unified_Completion.completion_status[9]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Use_Serial_Unified_Completion.sample[13]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Use_Serial_Unified_Completion.sample[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Use_Serial_Unified_Completion.sample_1[15]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Using_FPGA.Native\ : label is "FDC_1";
  attribute box_type : string;
  attribute box_type of \Using_FPGA.Native\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \Using_FPGA.Native_i_1__3\ : label is "soft_lutpair1";
begin
  D_0 <= \^d_0\;
  \Use_Serial_Unified_Completion.completion_block_reg\ <= \^use_serial_unified_completion.completion_block_reg\;
  data_cmd_noblock <= \^data_cmd_noblock\;
  \p_31_out__0\ <= \^p_31_out__0\;
  sample_1 <= \^sample_1\;
  \shifting_Data1__0\ <= \^shifting_data1__0\;
\Dbg_Reg_En_0[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \Use_Serial_Unified_Completion.completion_block_reg_1\,
      I1 => \^data_cmd_noblock\,
      I2 => Q(7),
      O => Dbg_Reg_En_0(0)
    );
\Dbg_Reg_En_0[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \Use_Serial_Unified_Completion.completion_block_reg_1\,
      I1 => \^data_cmd_noblock\,
      I2 => Q(6),
      O => Dbg_Reg_En_0(1)
    );
\Dbg_Reg_En_0[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \Use_Serial_Unified_Completion.completion_block_reg_1\,
      I1 => \^data_cmd_noblock\,
      I2 => Q(5),
      O => Dbg_Reg_En_0(2)
    );
\Dbg_Reg_En_0[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \Use_Serial_Unified_Completion.completion_block_reg_1\,
      I1 => \^data_cmd_noblock\,
      I2 => Q(4),
      O => Dbg_Reg_En_0(3)
    );
\Dbg_Reg_En_0[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \Use_Serial_Unified_Completion.completion_block_reg_1\,
      I1 => \^data_cmd_noblock\,
      I2 => Q(3),
      O => Dbg_Reg_En_0(4)
    );
\Dbg_Reg_En_0[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \Use_Serial_Unified_Completion.completion_block_reg_1\,
      I1 => \^data_cmd_noblock\,
      I2 => Q(2),
      O => Dbg_Reg_En_0(5)
    );
\Dbg_Reg_En_0[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \Use_Serial_Unified_Completion.completion_block_reg_1\,
      I1 => \^data_cmd_noblock\,
      I2 => Q(1),
      O => Dbg_Reg_En_0(6)
    );
\Dbg_Reg_En_0[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \Use_Serial_Unified_Completion.completion_block_reg_1\,
      I1 => \^data_cmd_noblock\,
      I2 => Q(0),
      O => Dbg_Reg_En_0(7)
    );
Dbg_Shift_31_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000000"
    )
        port map (
      I0 => \command_reg[5]\,
      I1 => Dbg_Shift_31_INST_0_i_2_n_0,
      I2 => Q(1),
      I3 => \command_reg[0]\,
      I4 => sync,
      I5 => \Use_BSCAN.PORT_Selector_reg[0]\,
      O => E(0)
    );
Dbg_Shift_31_INST_0_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_cmd_noblock\,
      I1 => \Use_Serial_Unified_Completion.completion_block_reg_1\,
      O => Dbg_Shift_31_INST_0_i_2_n_0
    );
Ext_NM_BRK_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => Dbg_Shift_31_INST_0_i_2_n_0,
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      I4 => Q(3),
      I5 => \command_reg[0]\,
      O => Debug_Rst_i0
    );
\Use_Serial_Unified_Completion.completion_block_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFDFDF03000000"
    )
        port map (
      I0 => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      I1 => \^use_serial_unified_completion.completion_block_reg\,
      I2 => completion_ctrl0,
      I3 => \p_3_out__10\,
      I4 => completion_ctrl,
      I5 => \Use_Serial_Unified_Completion.completion_block_reg_1\,
      O => \Use_Serial_Unified_Completion.completion_block_reg_0\
    );
\Use_Serial_Unified_Completion.completion_status[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \^use_serial_unified_completion.completion_block_reg\,
      I1 => \Use_Serial_Unified_Completion.completion_status_reg[10]\(1),
      I2 => \Use_Serial_Unified_Completion.completion_status_reg[10]\(0),
      I3 => \^sample_1\,
      O => D(0)
    );
\Use_Serial_Unified_Completion.completion_status[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \^data_cmd_noblock\,
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => \command_reg[2]\,
      O => \^use_serial_unified_completion.completion_block_reg\
    );
\Use_Serial_Unified_Completion.completion_status[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF606060"
    )
        port map (
      I0 => \Use_Serial_Unified_Completion.completion_status_reg[10]\(1),
      I1 => \Use_Serial_Unified_Completion.completion_status_reg[10]\(0),
      I2 => \^sample_1\,
      I3 => \^use_serial_unified_completion.completion_block_reg\,
      I4 => \Use_Serial_Unified_Completion.completion_status_reg[10]\(2),
      O => D(1)
    );
\Use_Serial_Unified_Completion.completion_status[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF6A006A006A00"
    )
        port map (
      I0 => \Use_Serial_Unified_Completion.completion_status_reg[10]\(2),
      I1 => \Use_Serial_Unified_Completion.completion_status_reg[10]\(1),
      I2 => \Use_Serial_Unified_Completion.completion_status_reg[10]\(0),
      I3 => \^sample_1\,
      I4 => \^use_serial_unified_completion.completion_block_reg\,
      I5 => \Use_Serial_Unified_Completion.completion_status_reg[10]\(3),
      O => D(2)
    );
\Use_Serial_Unified_Completion.completion_status[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF606060"
    )
        port map (
      I0 => \Use_Serial_Unified_Completion.completion_status_reg[10]\(3),
      I1 => \Use_Serial_Unified_Completion.completion_status_reg[2]\,
      I2 => \^sample_1\,
      I3 => \^use_serial_unified_completion.completion_block_reg\,
      I4 => \Use_Serial_Unified_Completion.completion_status_reg[10]\(4),
      O => D(3)
    );
\Use_Serial_Unified_Completion.completion_status[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF606060"
    )
        port map (
      I0 => \Use_Serial_Unified_Completion.completion_status_reg[10]\(4),
      I1 => \Use_Serial_Unified_Completion.completion_status_reg[3]\,
      I2 => \^sample_1\,
      I3 => \^use_serial_unified_completion.completion_block_reg\,
      I4 => \Use_Serial_Unified_Completion.completion_status_reg[10]\(5),
      O => D(4)
    );
\Use_Serial_Unified_Completion.completion_status[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF606060"
    )
        port map (
      I0 => \Use_Serial_Unified_Completion.completion_status_reg[10]\(5),
      I1 => \Use_Serial_Unified_Completion.completion_status_reg[4]\,
      I2 => \^sample_1\,
      I3 => \^use_serial_unified_completion.completion_block_reg\,
      I4 => \Use_Serial_Unified_Completion.completion_status_reg[10]\(6),
      O => D(5)
    );
\Use_Serial_Unified_Completion.completion_status[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF484848"
    )
        port map (
      I0 => \Use_Serial_Unified_Completion.completion_status_reg[10]\(6),
      I1 => \^sample_1\,
      I2 => \Use_Serial_Unified_Completion.completion_status_reg[5]\,
      I3 => \^use_serial_unified_completion.completion_block_reg\,
      I4 => \Use_Serial_Unified_Completion.completion_status_reg[10]\(7),
      O => D(6)
    );
\Use_Serial_Unified_Completion.completion_status[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF488848884888"
    )
        port map (
      I0 => \Use_Serial_Unified_Completion.completion_status_reg[10]\(7),
      I1 => \^sample_1\,
      I2 => \Use_Serial_Unified_Completion.completion_status_reg[5]\,
      I3 => \Use_Serial_Unified_Completion.completion_status_reg[10]\(6),
      I4 => \^use_serial_unified_completion.completion_block_reg\,
      I5 => \Use_Serial_Unified_Completion.completion_status_reg[10]\(8),
      O => D(7)
    );
\Use_Serial_Unified_Completion.completion_status[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF484848"
    )
        port map (
      I0 => \Use_Serial_Unified_Completion.completion_status_reg[10]\(8),
      I1 => \^sample_1\,
      I2 => \Use_Serial_Unified_Completion.completion_status_reg[7]\,
      I3 => \^use_serial_unified_completion.completion_block_reg\,
      I4 => \Use_Serial_Unified_Completion.completion_status_reg[10]\(9),
      O => D(8)
    );
\Use_Serial_Unified_Completion.completion_status[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF0003AA00AA00"
    )
        port map (
      I0 => \Use_BSCAN.PORT_Selector_reg[0]\,
      I1 => \^data_cmd_noblock\,
      I2 => \Use_Serial_Unified_Completion.completion_block_reg_1\,
      I3 => \^use_serial_unified_completion.completion_block_reg\,
      I4 => completion_ctrl0,
      I5 => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      O => \Use_Serial_Unified_Completion.completion_status_reg[0]\(0)
    );
\Use_Serial_Unified_Completion.completion_status[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF488848884888"
    )
        port map (
      I0 => \Use_Serial_Unified_Completion.completion_status_reg[10]\(9),
      I1 => \^sample_1\,
      I2 => \Use_Serial_Unified_Completion.completion_status_reg[7]\,
      I3 => \Use_Serial_Unified_Completion.completion_status_reg[10]\(8),
      I4 => \^use_serial_unified_completion.completion_block_reg\,
      I5 => \Use_Serial_Unified_Completion.completion_status_reg[10]\(10),
      O => D(9)
    );
\Use_Serial_Unified_Completion.completion_status[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => Q(2),
      I1 => \^data_cmd_noblock\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \command_reg[2]\,
      O => completion_ctrl0
    );
\Use_Serial_Unified_Completion.count[0]__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Dbg_Shift_31_INST_0_i_2_n_0,
      I4 => Q(1),
      I5 => \command_reg[0]\,
      O => \^p_31_out__0\
    );
\Use_Serial_Unified_Completion.count[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Dbg_Shift_31_INST_0_i_2_n_0,
      I4 => Q(1),
      I5 => \command_reg[0]\,
      O => \^shifting_data1__0\
    );
\Use_Serial_Unified_Completion.mb_data_overrun_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"053F0F3F05000000"
    )
        port map (
      I0 => Dbg_TDO_0,
      I1 => completion_ctrl0,
      I2 => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      I3 => \^p_31_out__0\,
      I4 => \Use_Serial_Unified_Completion.count_reg[5]\,
      I5 => \Use_Serial_Unified_Completion.sample_reg[15]_0\(2),
      O => \Use_Serial_Unified_Completion.mb_data_overrun_reg\
    );
\Use_Serial_Unified_Completion.mb_instr_error_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0B033308080000"
    )
        port map (
      I0 => Dbg_TDO_0,
      I1 => \Use_Serial_Unified_Completion.mb_instr_error_i_2_n_0\,
      I2 => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      I3 => completion_ctrl0,
      I4 => \^shifting_data1__0\,
      I5 => \Use_Serial_Unified_Completion.sample_reg[15]_0\(1),
      O => \Use_Serial_Unified_Completion.mb_instr_error_reg\
    );
\Use_Serial_Unified_Completion.mb_instr_error_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \Use_Serial_Unified_Completion.count_reg[1]\,
      I1 => \Use_Serial_Unified_Completion.count_reg[0]\,
      I2 => \Use_Serial_Unified_Completion.mb_instr_overrun_i_3_n_0\,
      I3 => \command_reg[0]\,
      I4 => sync,
      I5 => \Use_BSCAN.PORT_Selector_reg[0]\,
      O => \Use_Serial_Unified_Completion.mb_instr_error_i_2_n_0\
    );
\Use_Serial_Unified_Completion.mb_instr_overrun_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0B033308080000"
    )
        port map (
      I0 => Dbg_TDO_0,
      I1 => \Use_Serial_Unified_Completion.mb_instr_overrun_i_2_n_0\,
      I2 => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      I3 => completion_ctrl0,
      I4 => \^shifting_data1__0\,
      I5 => \Use_Serial_Unified_Completion.sample_reg[15]_0\(0),
      O => \Use_Serial_Unified_Completion.mb_instr_overrun_reg\
    );
\Use_Serial_Unified_Completion.mb_instr_overrun_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => \Use_Serial_Unified_Completion.count_reg[1]\,
      I1 => \Use_Serial_Unified_Completion.count_reg[0]\,
      I2 => \Use_Serial_Unified_Completion.mb_instr_overrun_i_3_n_0\,
      I3 => \command_reg[0]\,
      I4 => sync,
      I5 => \Use_BSCAN.PORT_Selector_reg[0]\,
      O => \Use_Serial_Unified_Completion.mb_instr_overrun_i_2_n_0\
    );
\Use_Serial_Unified_Completion.mb_instr_overrun_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => Q(1),
      I1 => \^data_cmd_noblock\,
      I2 => \Use_Serial_Unified_Completion.completion_block_reg_1\,
      I3 => Q(3),
      I4 => Q(0),
      I5 => Q(2),
      O => \Use_Serial_Unified_Completion.mb_instr_overrun_i_3_n_0\
    );
\Use_Serial_Unified_Completion.sample[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Use_Serial_Unified_Completion.sample_reg[15]_0\(3),
      I1 => \^sample_1\,
      O => \Use_Serial_Unified_Completion.sample_reg[15]\(0)
    );
\Use_Serial_Unified_Completion.sample[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Use_Serial_Unified_Completion.sample_reg[15]_0\(4),
      I1 => \^sample_1\,
      O => \Use_Serial_Unified_Completion.sample_reg[15]\(1)
    );
\Use_Serial_Unified_Completion.sample[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Use_Serial_Unified_Completion.sample_reg[15]_0\(5),
      I1 => \^sample_1\,
      O => \Use_Serial_Unified_Completion.sample_reg[15]\(2)
    );
\Use_Serial_Unified_Completion.sample_1[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFFF7FF"
    )
        port map (
      I0 => \command_reg[2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \^data_cmd_noblock\,
      I4 => Q(2),
      O => \^sample_1\
    );
\Use_UART.tx_buffered_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \tdi_shifter_reg[0]\(7),
      I1 => \Use_UART.tx_buffered_i_2_n_0\,
      I2 => \command_reg[0]\,
      I3 => in0,
      O => \Use_UART.tx_buffered_reg\
    );
\Use_UART.tx_buffered_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(3),
      I4 => \Use_Serial_Unified_Completion.completion_block_reg_1\,
      I5 => \^data_cmd_noblock\,
      O => \Use_UART.tx_buffered_i_2_n_0\
    );
\Using_FPGA.Native\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => sel_n,
      D => \^d_0\,
      Q => \^data_cmd_noblock\
    );
\Using_FPGA.Native_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \Using_FPGA.Native_i_2_n_0\,
      I1 => \tdi_shifter_reg[0]\(3),
      I2 => \tdi_shifter_reg[0]\(2),
      I3 => \tdi_shifter_reg[0]\(0),
      I4 => \tdi_shifter_reg[0]\(1),
      O => CE
    );
\Using_FPGA.Native_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_cmd_noblock\,
      O => \^d_0\
    );
\Using_FPGA.Native_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \tdi_shifter_reg[0]\(5),
      I1 => \tdi_shifter_reg[0]\(4),
      I2 => \tdi_shifter_reg[0]\(6),
      I3 => \tdi_shifter_reg[0]\(7),
      I4 => \Use_Serial_Unified_Completion.completion_block_reg_1\,
      I5 => \^data_cmd_noblock\,
      O => \Using_FPGA.Native_i_2_n_0\
    );
\command_1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \Use_BSCAN.PORT_Selector_reg[3]\(2),
      I1 => \Use_BSCAN.PORT_Selector_reg[3]\(3),
      I2 => \Use_BSCAN.PORT_Selector_reg[3]\(1),
      I3 => \Use_BSCAN.PORT_Selector_reg[3]\(0),
      I4 => sel,
      I5 => Dbg_Shift_31_INST_0_i_2_n_0,
      O => \command_1_reg[7]\(0)
    );
\completion_ctrl[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdi_shifter_reg[0]\(7),
      I1 => completion_ctrl0,
      I2 => completion_ctrl,
      O => \completion_ctrl_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE is
  port (
    Q_0 : out STD_LOGIC;
    bus2ip_wrce : in STD_LOGIC_VECTOR ( 0 to 0 );
    tx_Buffer_Empty : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE is
  attribute box_type : string;
  attribute box_type of \Using_FPGA.Native\ : label is "PRIMITIVE";
begin
\Using_FPGA.Native\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => tx_Buffer_Empty,
      Q => Q_0,
      R => bus2ip_wrce(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_1 is
  port (
    sync : out STD_LOGIC;
    D_0 : in STD_LOGIC;
    CE : in STD_LOGIC;
    \Use_BSCAN.PORT_Selector_reg[0]\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_1 is
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Using_FPGA.Native\ : label is "FDRE_1";
  attribute box_type : string;
  attribute box_type of \Using_FPGA.Native\ : label is "PRIMITIVE";
begin
\Using_FPGA.Native\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => CE,
      D => '1',
      Q => sync,
      R => D_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_10 is
  port (
    \Using_FPGA.Native_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC;
    \Use_Uart.reset_RX_FIFO_reg\ : in STD_LOGIC;
    data_Exists_I_reg : in STD_LOGIC;
    O : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    Addr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \Use_UART.fifo_Write_reg\ : in STD_LOGIC;
    bus2ip_rdce : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_10 : entity is "MB_FDRE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_10;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_10 is
  signal \^using_fpga.native_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute box_type : string;
  attribute box_type of \Using_FPGA.Native\ : label is "PRIMITIVE";
begin
  \Using_FPGA.Native_0\(0) <= \^using_fpga.native_0\(0);
\Using_FPGA.Native\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => data_Exists_I_reg,
      D => O,
      Q => \^using_fpga.native_0\(0),
      R => \Use_Uart.reset_RX_FIFO_reg\
    );
\Using_FPGA.Native_I1_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555554AAAAAAAA"
    )
        port map (
      I0 => \^using_fpga.native_0\(0),
      I1 => Addr(1),
      I2 => Addr(0),
      I3 => Addr(2),
      I4 => \Use_UART.fifo_Write_reg\,
      I5 => bus2ip_rdce(0),
      O => S
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_12 is
  port (
    Addr : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_0_in : out STD_LOGIC;
    S : out STD_LOGIC;
    CI : out STD_LOGIC;
    data_Exists_I_reg : out STD_LOGIC;
    \Use_Uart.reset_RX_FIFO_reg\ : in STD_LOGIC;
    data_Exists_I_reg_0 : in STD_LOGIC;
    O : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    \Use_UART.tdo_reg_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Use_BSCAN.PORT_Selector_reg[0]\ : in STD_LOGIC;
    \command_reg[0]\ : in STD_LOGIC;
    Data_Out : in STD_LOGIC_VECTOR ( 0 to 0 );
    \command_reg[0]_0\ : in STD_LOGIC;
    \Using_FPGA.Native_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \Use_UART.fifo_Write_reg\ : in STD_LOGIC;
    bus2ip_rdce : in STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_12 : entity is "MB_FDRE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_12;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_12 is
  signal \^addr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \buffer_Empty__2\ : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \Using_FPGA.Native\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of data_Exists_I_i_2 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[1]_i_2\ : label is "soft_lutpair8";
begin
  Addr(0) <= \^addr\(0);
  p_0_in <= \^p_0_in\;
\Use_UART.tdo_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \Use_UART.tdo_reg_reg[3]\(0),
      I1 => \Use_BSCAN.PORT_Selector_reg[0]\,
      I2 => \command_reg[0]\,
      I3 => \^p_0_in\,
      I4 => Data_Out(0),
      I5 => \command_reg[0]_0\,
      O => D(0)
    );
\Using_FPGA.Native\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => data_Exists_I_reg_0,
      D => O,
      Q => \^addr\(0),
      R => \Use_Uart.reset_RX_FIFO_reg\
    );
\Using_FPGA.Native_I1_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555554AAAAAAAA"
    )
        port map (
      I0 => \^addr\(0),
      I1 => \Using_FPGA.Native_0\(0),
      I2 => \Using_FPGA.Native_0\(2),
      I3 => \Using_FPGA.Native_0\(1),
      I4 => \Use_UART.fifo_Write_reg\,
      I5 => bus2ip_rdce(0),
      O => S
    );
\Using_FPGA.Native_I1_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF00000000"
    )
        port map (
      I0 => bus2ip_rdce(0),
      I1 => \^addr\(0),
      I2 => \Using_FPGA.Native_0\(0),
      I3 => \Using_FPGA.Native_0\(2),
      I4 => \Using_FPGA.Native_0\(1),
      I5 => \Use_UART.fifo_Write_reg\,
      O => CI
    );
\data_Exists_I_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF2AAAAA"
    )
        port map (
      I0 => data_Exists_I_reg_0,
      I1 => Bus_RNW_reg,
      I2 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I3 => \Use_UART.fifo_Write_reg\,
      I4 => \buffer_Empty__2\,
      I5 => \Use_Uart.reset_RX_FIFO_reg\,
      O => data_Exists_I_reg
    );
data_Exists_I_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^addr\(0),
      I1 => \Using_FPGA.Native_0\(0),
      I2 => \Using_FPGA.Native_0\(2),
      I3 => \Using_FPGA.Native_0\(1),
      O => \buffer_Empty__2\
    );
\s_axi_rdata_i[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^addr\(0),
      I1 => \Using_FPGA.Native_0\(0),
      I2 => \Using_FPGA.Native_0\(2),
      I3 => \Using_FPGA.Native_0\(1),
      O => \^p_0_in\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_14 is
  port (
    \Using_FPGA.Native_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    LI : out STD_LOGIC;
    \Use_Uart.reset_RX_FIFO_reg\ : in STD_LOGIC;
    data_Exists_I_reg : in STD_LOGIC;
    sum_A_0 : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    Addr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \Use_UART.fifo_Write_reg\ : in STD_LOGIC;
    bus2ip_rdce : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_14 : entity is "MB_FDRE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_14;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_14 is
  signal \^using_fpga.native_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute box_type : string;
  attribute box_type of \Using_FPGA.Native\ : label is "PRIMITIVE";
begin
  \Using_FPGA.Native_0\(0) <= \^using_fpga.native_0\(0);
\Using_FPGA.Native\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => data_Exists_I_reg,
      D => sum_A_0,
      Q => \^using_fpga.native_0\(0),
      R => \Use_Uart.reset_RX_FIFO_reg\
    );
\Using_FPGA.Native_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555554AAAAAAAA"
    )
        port map (
      I0 => \^using_fpga.native_0\(0),
      I1 => Addr(0),
      I2 => Addr(2),
      I3 => Addr(1),
      I4 => \Use_UART.fifo_Write_reg\,
      I5 => bus2ip_rdce(0),
      O => LI
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_2 is
  port (
    Addr : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC;
    \Use_Uart.reset_TX_FIFO_reg\ : in STD_LOGIC;
    data_Exists_I_reg : in STD_LOGIC;
    O : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    \Using_FPGA.Native_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    FIFO_Write : in STD_LOGIC;
    \Use_UART.fifo_Read_reg\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_2 : entity is "MB_FDRE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_2 is
  signal \^addr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute box_type : string;
  attribute box_type of \Using_FPGA.Native\ : label is "PRIMITIVE";
begin
  Addr(0) <= \^addr\(0);
\Using_FPGA.Native\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => data_Exists_I_reg,
      D => O,
      Q => \^addr\(0),
      R => \Use_Uart.reset_TX_FIFO_reg\
    );
\Using_FPGA.Native_I1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555554AAAAAAAA"
    )
        port map (
      I0 => \^addr\(0),
      I1 => \Using_FPGA.Native_0\(1),
      I2 => \Using_FPGA.Native_0\(0),
      I3 => \Using_FPGA.Native_0\(2),
      I4 => FIFO_Write,
      I5 => \Use_UART.fifo_Read_reg\,
      O => S
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_3 is
  port (
    \Using_FPGA.Native_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC;
    \Use_Uart.reset_TX_FIFO_reg\ : in STD_LOGIC;
    data_Exists_I_reg : in STD_LOGIC;
    O : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    Addr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    FIFO_Write : in STD_LOGIC;
    \Use_UART.fifo_Read_reg\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_3 : entity is "MB_FDRE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_3 is
  signal \^using_fpga.native_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute box_type : string;
  attribute box_type of \Using_FPGA.Native\ : label is "PRIMITIVE";
begin
  \Using_FPGA.Native_0\(0) <= \^using_fpga.native_0\(0);
\Using_FPGA.Native\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => data_Exists_I_reg,
      D => O,
      Q => \^using_fpga.native_0\(0),
      R => \Use_Uart.reset_TX_FIFO_reg\
    );
\Using_FPGA.Native_I1_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555554AAAAAAAA"
    )
        port map (
      I0 => \^using_fpga.native_0\(0),
      I1 => Addr(1),
      I2 => Addr(0),
      I3 => Addr(2),
      I4 => FIFO_Write,
      I5 => \Use_UART.fifo_Read_reg\,
      O => S
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_5 is
  port (
    Addr : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    tx_Buffer_Full : out STD_LOGIC;
    S : out STD_LOGIC;
    CI : out STD_LOGIC;
    data_Exists_I_reg : out STD_LOGIC;
    \Use_Uart.reset_TX_FIFO_reg\ : in STD_LOGIC;
    data_Exists_I_reg_0 : in STD_LOGIC;
    O : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Use_BSCAN.PORT_Selector_reg[0]\ : in STD_LOGIC;
    \command_reg[0]\ : in STD_LOGIC;
    Data_Out : in STD_LOGIC_VECTOR ( 0 to 0 );
    \command_reg[0]_0\ : in STD_LOGIC;
    \Using_FPGA.Native_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    FIFO_Write : in STD_LOGIC;
    \Use_UART.fifo_Read_reg\ : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ : in STD_LOGIC;
    \out\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_5 : entity is "MB_FDRE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_5;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_5 is
  signal \^addr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \buffer_Empty__2\ : STD_LOGIC;
  signal \^tx_buffer_full\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \Using_FPGA.Native\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_Exists_I_i_2__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[3]_i_2\ : label is "soft_lutpair9";
begin
  Addr(0) <= \^addr\(0);
  tx_Buffer_Full <= \^tx_buffer_full\;
\Use_UART.tdo_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => Q(0),
      I1 => \Use_BSCAN.PORT_Selector_reg[0]\,
      I2 => \command_reg[0]\,
      I3 => \^tx_buffer_full\,
      I4 => Data_Out(0),
      I5 => \command_reg[0]_0\,
      O => D(0)
    );
\Using_FPGA.Native\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => data_Exists_I_reg_0,
      D => O,
      Q => \^addr\(0),
      R => \Use_Uart.reset_TX_FIFO_reg\
    );
\Using_FPGA.Native_I1_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555554AAAAAAAA"
    )
        port map (
      I0 => \^addr\(0),
      I1 => \Using_FPGA.Native_0\(0),
      I2 => \Using_FPGA.Native_0\(2),
      I3 => \Using_FPGA.Native_0\(1),
      I4 => FIFO_Write,
      I5 => \Use_UART.fifo_Read_reg\,
      O => S
    );
\Using_FPGA.Native_I1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0B000000"
    )
        port map (
      I0 => \Use_UART.fifo_Read_reg\,
      I1 => \^tx_buffer_full\,
      I2 => Bus_RNW_reg,
      I3 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I4 => \out\,
      O => CI
    );
data_Exists_I_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F2AA"
    )
        port map (
      I0 => data_Exists_I_reg_0,
      I1 => \Use_UART.fifo_Read_reg\,
      I2 => FIFO_Write,
      I3 => \buffer_Empty__2\,
      I4 => \Use_Uart.reset_TX_FIFO_reg\,
      O => data_Exists_I_reg
    );
\data_Exists_I_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^addr\(0),
      I1 => \Using_FPGA.Native_0\(0),
      I2 => \Using_FPGA.Native_0\(2),
      I3 => \Using_FPGA.Native_0\(1),
      O => \buffer_Empty__2\
    );
\s_axi_rdata_i[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^addr\(0),
      I1 => \Using_FPGA.Native_0\(0),
      I2 => \Using_FPGA.Native_0\(2),
      I3 => \Using_FPGA.Native_0\(1),
      O => \^tx_buffer_full\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_7 is
  port (
    \Using_FPGA.Native_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    LI : out STD_LOGIC;
    \Use_Uart.reset_TX_FIFO_reg\ : in STD_LOGIC;
    data_Exists_I_reg : in STD_LOGIC;
    sum_A_0 : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    Addr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    FIFO_Write : in STD_LOGIC;
    \Use_UART.fifo_Read_reg\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_7 : entity is "MB_FDRE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_7;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_7 is
  signal \^using_fpga.native_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute box_type : string;
  attribute box_type of \Using_FPGA.Native\ : label is "PRIMITIVE";
begin
  \Using_FPGA.Native_0\(0) <= \^using_fpga.native_0\(0);
\Using_FPGA.Native\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => data_Exists_I_reg,
      D => sum_A_0,
      Q => \^using_fpga.native_0\(0),
      R => \Use_Uart.reset_TX_FIFO_reg\
    );
\Using_FPGA.Native_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555554AAAAAAAA"
    )
        port map (
      I0 => \^using_fpga.native_0\(0),
      I1 => Addr(0),
      I2 => Addr(2),
      I3 => Addr(1),
      I4 => FIFO_Write,
      I5 => \Use_UART.fifo_Read_reg\,
      O => LI
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_8 is
  port (
    Addr : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC;
    \Use_Uart.reset_RX_FIFO_reg\ : in STD_LOGIC;
    data_Exists_I_reg : in STD_LOGIC;
    O : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    \Using_FPGA.Native_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \Use_UART.fifo_Write_reg\ : in STD_LOGIC;
    bus2ip_rdce : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_8 : entity is "MB_FDRE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_8;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_8 is
  signal \^addr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute box_type : string;
  attribute box_type of \Using_FPGA.Native\ : label is "PRIMITIVE";
begin
  Addr(0) <= \^addr\(0);
\Using_FPGA.Native\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => data_Exists_I_reg,
      D => O,
      Q => \^addr\(0),
      R => \Use_Uart.reset_RX_FIFO_reg\
    );
\Using_FPGA.Native_I1_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555554AAAAAAAA"
    )
        port map (
      I0 => \^addr\(0),
      I1 => \Using_FPGA.Native_0\(1),
      I2 => \Using_FPGA.Native_0\(0),
      I3 => \Using_FPGA.Native_0\(2),
      I4 => \Use_UART.fifo_Write_reg\,
      I5 => bus2ip_rdce(0),
      O => S
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRSE is
  port (
    Ext_BRK : out STD_LOGIC;
    \Use_Uart.clear_Ext_BRK_reg\ : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    set_Ext_BRK : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRSE;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRSE is
  signal \^ext_brk\ : STD_LOGIC;
  signal \Using_FPGA.Native_i_1__4_n_0\ : STD_LOGIC;
  attribute IS_CE_INVERTED : string;
  attribute IS_CE_INVERTED of \Using_FPGA.Native\ : label is "1'b0";
  attribute IS_S_INVERTED : string;
  attribute IS_S_INVERTED of \Using_FPGA.Native\ : label is "1'b0";
  attribute box_type : string;
  attribute box_type of \Using_FPGA.Native\ : label is "PRIMITIVE";
begin
  Ext_BRK <= \^ext_brk\;
\Using_FPGA.Native\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \Using_FPGA.Native_i_1__4_n_0\,
      Q => \^ext_brk\,
      R => \Use_Uart.clear_Ext_BRK_reg\
    );
\Using_FPGA.Native_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => set_Ext_BRK,
      I1 => \^ext_brk\,
      O => \Using_FPGA.Native_i_1__4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY_XORCY is
  port (
    LO : out STD_LOGIC;
    O : out STD_LOGIC;
    S : in STD_LOGIC;
    Addr : in STD_LOGIC_VECTOR ( 0 to 0 );
    CI : in STD_LOGIC;
    lopt : out STD_LOGIC;
    lopt_1 : in STD_LOGIC;
    lopt_2 : in STD_LOGIC;
    lopt_3 : out STD_LOGIC;
    lopt_4 : in STD_LOGIC;
    lopt_5 : in STD_LOGIC;
    lopt_6 : out STD_LOGIC;
    lopt_7 : out STD_LOGIC;
    lopt_8 : out STD_LOGIC;
    lopt_9 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY_XORCY;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY_XORCY is
  signal \^lopt_1\ : STD_LOGIC;
  signal lopt_10 : STD_LOGIC;
  signal \^lopt_2\ : STD_LOGIC;
  signal \^lopt_3\ : STD_LOGIC;
  signal \^lopt_4\ : STD_LOGIC;
  signal \^lopt_5\ : STD_LOGIC;
  signal \^lopt_6\ : STD_LOGIC;
  signal \^lopt_7\ : STD_LOGIC;
  signal \^lopt_8\ : STD_LOGIC;
  signal \^lopt_9\ : STD_LOGIC;
  signal \NLW_Using_FPGA.Native_I1_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Using_FPGA.Native_I1_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Using_FPGA.Native_I1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Using_FPGA.Native_I1_CARRY4\ : label is "LO:O";
  attribute box_type : string;
  attribute box_type of \Using_FPGA.Native_I1_CARRY4\ : label is "PRIMITIVE";
begin
  \^lopt_2\ <= lopt_1;
  \^lopt_3\ <= lopt_2;
  \^lopt_5\ <= lopt_4;
  \^lopt_6\ <= lopt_5;
  lopt <= \^lopt_1\;
  lopt_10 <= lopt_9;
  lopt_3 <= \^lopt_4\;
  lopt_6 <= \^lopt_7\;
  lopt_7 <= \^lopt_8\;
  lopt_8 <= \^lopt_9\;
\Using_FPGA.Native_I1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_Using_FPGA.Native_I1_CARRY4_CO_UNCONNECTED\(3),
      CO(2) => \^lopt_4\,
      CO(1) => \^lopt_1\,
      CO(0) => LO,
      CYINIT => CI,
      DI(3) => \NLW_Using_FPGA.Native_I1_CARRY4_DI_UNCONNECTED\(3),
      DI(2) => \^lopt_5\,
      DI(1) => \^lopt_2\,
      DI(0) => Addr(0),
      O(3) => \^lopt_9\,
      O(2) => \^lopt_8\,
      O(1) => \^lopt_7\,
      O(0) => O,
      S(3) => lopt_10,
      S(2) => \^lopt_6\,
      S(1) => \^lopt_3\,
      S(0) => S
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY_XORCY_11 is
  port (
    LO : out STD_LOGIC;
    O : out STD_LOGIC;
    S : in STD_LOGIC;
    \Using_FPGA.Native\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    CI : in STD_LOGIC;
    lopt : in STD_LOGIC;
    lopt_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY_XORCY_11 : entity is "MB_MUXCY_XORCY";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY_XORCY_11;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY_XORCY_11 is
  signal \^lo\ : STD_LOGIC;
  signal \^o\ : STD_LOGIC;
begin
  LO <= \^lo\;
  O <= \^o\;
  \^lo\ <= lopt;
  \^o\ <= lopt_1;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY_XORCY_13 is
  port (
    LO : out STD_LOGIC;
    O : out STD_LOGIC;
    S : in STD_LOGIC;
    Addr : in STD_LOGIC_VECTOR ( 0 to 0 );
    CI : in STD_LOGIC;
    lopt : in STD_LOGIC;
    lopt_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY_XORCY_13 : entity is "MB_MUXCY_XORCY";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY_XORCY_13;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY_XORCY_13 is
  signal \^lo\ : STD_LOGIC;
  signal \^o\ : STD_LOGIC;
begin
  LO <= \^lo\;
  O <= \^o\;
  \^lo\ <= lopt;
  \^o\ <= lopt_1;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY_XORCY_4 is
  port (
    LO : out STD_LOGIC;
    O : out STD_LOGIC;
    S : in STD_LOGIC;
    \Using_FPGA.Native\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    CI : in STD_LOGIC;
    lopt : in STD_LOGIC;
    lopt_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY_XORCY_4 : entity is "MB_MUXCY_XORCY";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY_XORCY_4;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY_XORCY_4 is
  signal \^lo\ : STD_LOGIC;
  signal \^o\ : STD_LOGIC;
begin
  LO <= \^lo\;
  O <= \^o\;
  \^lo\ <= lopt;
  \^o\ <= lopt_1;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY_XORCY_6 is
  port (
    LO : out STD_LOGIC;
    O : out STD_LOGIC;
    S : in STD_LOGIC;
    Addr : in STD_LOGIC_VECTOR ( 0 to 0 );
    CI : in STD_LOGIC;
    lopt : in STD_LOGIC;
    lopt_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY_XORCY_6 : entity is "MB_MUXCY_XORCY";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY_XORCY_6;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY_XORCY_6 is
  signal \^lo\ : STD_LOGIC;
  signal \^o\ : STD_LOGIC;
begin
  LO <= \^lo\;
  O <= \^o\;
  \^lo\ <= lopt;
  \^o\ <= lopt_1;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY_XORCY_9 is
  port (
    LO : out STD_LOGIC;
    O : out STD_LOGIC;
    S : in STD_LOGIC;
    Addr : in STD_LOGIC_VECTOR ( 0 to 0 );
    CI : in STD_LOGIC;
    lopt : out STD_LOGIC;
    lopt_1 : in STD_LOGIC;
    lopt_2 : in STD_LOGIC;
    lopt_3 : out STD_LOGIC;
    lopt_4 : in STD_LOGIC;
    lopt_5 : in STD_LOGIC;
    lopt_6 : out STD_LOGIC;
    lopt_7 : out STD_LOGIC;
    lopt_8 : out STD_LOGIC;
    lopt_9 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY_XORCY_9 : entity is "MB_MUXCY_XORCY";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY_XORCY_9;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY_XORCY_9 is
  signal \^lopt_1\ : STD_LOGIC;
  signal lopt_10 : STD_LOGIC;
  signal \^lopt_2\ : STD_LOGIC;
  signal \^lopt_3\ : STD_LOGIC;
  signal \^lopt_4\ : STD_LOGIC;
  signal \^lopt_5\ : STD_LOGIC;
  signal \^lopt_6\ : STD_LOGIC;
  signal \^lopt_7\ : STD_LOGIC;
  signal \^lopt_8\ : STD_LOGIC;
  signal \^lopt_9\ : STD_LOGIC;
  signal \NLW_Using_FPGA.Native_I1_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Using_FPGA.Native_I1_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Using_FPGA.Native_I1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Using_FPGA.Native_I1_CARRY4\ : label is "LO:O";
  attribute box_type : string;
  attribute box_type of \Using_FPGA.Native_I1_CARRY4\ : label is "PRIMITIVE";
begin
  \^lopt_2\ <= lopt_1;
  \^lopt_3\ <= lopt_2;
  \^lopt_5\ <= lopt_4;
  \^lopt_6\ <= lopt_5;
  lopt <= \^lopt_1\;
  lopt_10 <= lopt_9;
  lopt_3 <= \^lopt_4\;
  lopt_6 <= \^lopt_7\;
  lopt_7 <= \^lopt_8\;
  lopt_8 <= \^lopt_9\;
\Using_FPGA.Native_I1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_Using_FPGA.Native_I1_CARRY4_CO_UNCONNECTED\(3),
      CO(2) => \^lopt_4\,
      CO(1) => \^lopt_1\,
      CO(0) => LO,
      CYINIT => CI,
      DI(3) => \NLW_Using_FPGA.Native_I1_CARRY4_DI_UNCONNECTED\(3),
      DI(2) => \^lopt_5\,
      DI(1) => \^lopt_2\,
      DI(0) => Addr(0),
      O(3) => \^lopt_9\,
      O(2) => \^lopt_8\,
      O(1) => \^lopt_7\,
      O(0) => O,
      S(3) => lopt_10,
      S(2) => \^lopt_6\,
      S(1) => \^lopt_3\,
      S(0) => S
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E is
  port (
    \Use_UART.fifo_Din_reg[0]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Use_BSCAN.PORT_Selector_reg[0]\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E is
  attribute box_type : string;
  attribute box_type of \Use_unisim.MB_SRL16E_I1\ : label is "PRIMITIVE";
  attribute srl_name : string;
  attribute srl_name of \Use_unisim.MB_SRL16E_I1\ : label is "U0/\MDM_Core_I1/JTAG_CONTROL_I/Use_Config_SRL16E.SRL16E_1/Use_unisim.MB_SRL16E_I1 ";
begin
\Use_unisim.MB_SRL16E_I1\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0167",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => '0',
      CLK => \Use_BSCAN.PORT_Selector_reg[0]\,
      D => '0',
      Q => \Use_UART.fifo_Din_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized1\ is
  port (
    config_TDO_2 : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Use_BSCAN.PORT_Selector_reg[0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized1\ : entity is "MB_SRL16E";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized1\ is
  attribute box_type : string;
  attribute box_type of \Use_unisim.MB_SRL16E_I1\ : label is "PRIMITIVE";
  attribute srl_name : string;
  attribute srl_name of \Use_unisim.MB_SRL16E_I1\ : label is "U0/\MDM_Core_I1/JTAG_CONTROL_I/Use_Config_SRL16E.SRL16E_2/Use_unisim.MB_SRL16E_I1 ";
begin
\Use_unisim.MB_SRL16E_I1\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"42A7",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => '0',
      CLK => \Use_BSCAN.PORT_Selector_reg[0]\,
      D => '0',
      Q => config_TDO_2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized11\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    CI : in STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 0 to 0 );
    Addr : in STD_LOGIC_VECTOR ( 0 to 3 );
    S_AXI_ACLK : in STD_LOGIC;
    \command_reg[0]\ : in STD_LOGIC;
    \Use_BSCAN.PORT_Selector_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized11\ : entity is "MB_SRL16E";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized11\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized11\ is
  signal Data_Out : STD_LOGIC_VECTOR ( 2 to 2 );
  attribute box_type : string;
  attribute box_type of \Use_unisim.MB_SRL16E_I1\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \Use_unisim.MB_SRL16E_I1\ : label is "U0/\MDM_Core_I1/JTAG_CONTROL_I/Use_UART.TX_FIFO_I/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \Use_unisim.MB_SRL16E_I1\ : label is "U0/\MDM_Core_I1/JTAG_CONTROL_I/Use_UART.TX_FIFO_I/FIFO_RAM[2].D16.SRL16E_I/Use_unisim.MB_SRL16E_I1 ";
begin
\Use_UART.tdo_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => Data_Out(2),
      I1 => \command_reg[0]\,
      I2 => \Use_BSCAN.PORT_Selector_reg[0]\,
      I3 => Q(0),
      O => D(0)
    );
\Use_unisim.MB_SRL16E_I1\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Addr(0),
      A1 => Addr(1),
      A2 => Addr(2),
      A3 => Addr(3),
      CE => CI,
      CLK => S_AXI_ACLK,
      D => S_AXI_WDATA(0),
      Q => Data_Out(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized11_18\ is
  port (
    RX_Data : out STD_LOGIC_VECTOR ( 0 to 0 );
    CI : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Addr : in STD_LOGIC_VECTOR ( 0 to 3 );
    S_AXI_ACLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized11_18\ : entity is "MB_SRL16E";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized11_18\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized11_18\ is
  attribute box_type : string;
  attribute box_type of \Use_unisim.MB_SRL16E_I1\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \Use_unisim.MB_SRL16E_I1\ : label is "U0/\MDM_Core_I1/JTAG_CONTROL_I/Use_UART.RX_FIFO_I/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \Use_unisim.MB_SRL16E_I1\ : label is "U0/\MDM_Core_I1/JTAG_CONTROL_I/Use_UART.RX_FIFO_I/FIFO_RAM[2].D16.SRL16E_I/Use_unisim.MB_SRL16E_I1 ";
begin
\Use_unisim.MB_SRL16E_I1\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Addr(0),
      A1 => Addr(1),
      A2 => Addr(2),
      A3 => Addr(3),
      CE => CI,
      CLK => S_AXI_ACLK,
      D => Q(0),
      Q => RX_Data(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized13\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    CI : in STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 0 to 0 );
    Addr : in STD_LOGIC_VECTOR ( 0 to 3 );
    S_AXI_ACLK : in STD_LOGIC;
    \command_reg[0]\ : in STD_LOGIC;
    \Use_BSCAN.PORT_Selector_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized13\ : entity is "MB_SRL16E";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized13\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized13\ is
  signal Data_Out : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute box_type : string;
  attribute box_type of \Use_unisim.MB_SRL16E_I1\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \Use_unisim.MB_SRL16E_I1\ : label is "U0/\MDM_Core_I1/JTAG_CONTROL_I/Use_UART.TX_FIFO_I/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \Use_unisim.MB_SRL16E_I1\ : label is "U0/\MDM_Core_I1/JTAG_CONTROL_I/Use_UART.TX_FIFO_I/FIFO_RAM[3].D16.SRL16E_I/Use_unisim.MB_SRL16E_I1 ";
begin
\Use_UART.tdo_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => Data_Out(3),
      I1 => \command_reg[0]\,
      I2 => \Use_BSCAN.PORT_Selector_reg[0]\,
      I3 => Q(0),
      O => D(0)
    );
\Use_unisim.MB_SRL16E_I1\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Addr(0),
      A1 => Addr(1),
      A2 => Addr(2),
      A3 => Addr(3),
      CE => CI,
      CLK => S_AXI_ACLK,
      D => S_AXI_WDATA(0),
      Q => Data_Out(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized13_19\ is
  port (
    RX_Data : out STD_LOGIC_VECTOR ( 0 to 0 );
    CI : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Addr : in STD_LOGIC_VECTOR ( 0 to 3 );
    S_AXI_ACLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized13_19\ : entity is "MB_SRL16E";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized13_19\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized13_19\ is
  attribute box_type : string;
  attribute box_type of \Use_unisim.MB_SRL16E_I1\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \Use_unisim.MB_SRL16E_I1\ : label is "U0/\MDM_Core_I1/JTAG_CONTROL_I/Use_UART.RX_FIFO_I/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \Use_unisim.MB_SRL16E_I1\ : label is "U0/\MDM_Core_I1/JTAG_CONTROL_I/Use_UART.RX_FIFO_I/FIFO_RAM[3].D16.SRL16E_I/Use_unisim.MB_SRL16E_I1 ";
begin
\Use_unisim.MB_SRL16E_I1\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Addr(0),
      A1 => Addr(1),
      A2 => Addr(2),
      A3 => Addr(3),
      CE => CI,
      CLK => S_AXI_ACLK,
      D => Q(0),
      Q => RX_Data(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized15\ is
  port (
    \Use_UART.tdo_reg_reg[4]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    CI : in STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 0 to 0 );
    Addr : in STD_LOGIC_VECTOR ( 0 to 3 );
    S_AXI_ACLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized15\ : entity is "MB_SRL16E";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized15\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized15\ is
  attribute box_type : string;
  attribute box_type of \Use_unisim.MB_SRL16E_I1\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \Use_unisim.MB_SRL16E_I1\ : label is "U0/\MDM_Core_I1/JTAG_CONTROL_I/Use_UART.TX_FIFO_I/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \Use_unisim.MB_SRL16E_I1\ : label is "U0/\MDM_Core_I1/JTAG_CONTROL_I/Use_UART.TX_FIFO_I/FIFO_RAM[4].D16.SRL16E_I/Use_unisim.MB_SRL16E_I1 ";
begin
\Use_unisim.MB_SRL16E_I1\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Addr(0),
      A1 => Addr(1),
      A2 => Addr(2),
      A3 => Addr(3),
      CE => CI,
      CLK => S_AXI_ACLK,
      D => S_AXI_WDATA(0),
      Q => \Use_UART.tdo_reg_reg[4]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized15_20\ is
  port (
    RX_Data : out STD_LOGIC_VECTOR ( 0 to 0 );
    CI : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Addr : in STD_LOGIC_VECTOR ( 0 to 3 );
    S_AXI_ACLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized15_20\ : entity is "MB_SRL16E";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized15_20\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized15_20\ is
  attribute box_type : string;
  attribute box_type of \Use_unisim.MB_SRL16E_I1\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \Use_unisim.MB_SRL16E_I1\ : label is "U0/\MDM_Core_I1/JTAG_CONTROL_I/Use_UART.RX_FIFO_I/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \Use_unisim.MB_SRL16E_I1\ : label is "U0/\MDM_Core_I1/JTAG_CONTROL_I/Use_UART.RX_FIFO_I/FIFO_RAM[4].D16.SRL16E_I/Use_unisim.MB_SRL16E_I1 ";
begin
\Use_unisim.MB_SRL16E_I1\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Addr(0),
      A1 => Addr(1),
      A2 => Addr(2),
      A3 => Addr(3),
      CE => CI,
      CLK => S_AXI_ACLK,
      D => Q(0),
      Q => RX_Data(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized17\ is
  port (
    \Use_UART.tdo_reg_reg[5]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    CI : in STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 0 to 0 );
    Addr : in STD_LOGIC_VECTOR ( 0 to 3 );
    S_AXI_ACLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized17\ : entity is "MB_SRL16E";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized17\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized17\ is
  attribute box_type : string;
  attribute box_type of \Use_unisim.MB_SRL16E_I1\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \Use_unisim.MB_SRL16E_I1\ : label is "U0/\MDM_Core_I1/JTAG_CONTROL_I/Use_UART.TX_FIFO_I/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \Use_unisim.MB_SRL16E_I1\ : label is "U0/\MDM_Core_I1/JTAG_CONTROL_I/Use_UART.TX_FIFO_I/FIFO_RAM[5].D16.SRL16E_I/Use_unisim.MB_SRL16E_I1 ";
begin
\Use_unisim.MB_SRL16E_I1\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Addr(0),
      A1 => Addr(1),
      A2 => Addr(2),
      A3 => Addr(3),
      CE => CI,
      CLK => S_AXI_ACLK,
      D => S_AXI_WDATA(0),
      Q => \Use_UART.tdo_reg_reg[5]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized17_21\ is
  port (
    RX_Data : out STD_LOGIC_VECTOR ( 0 to 0 );
    CI : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Addr : in STD_LOGIC_VECTOR ( 0 to 3 );
    S_AXI_ACLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized17_21\ : entity is "MB_SRL16E";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized17_21\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized17_21\ is
  attribute box_type : string;
  attribute box_type of \Use_unisim.MB_SRL16E_I1\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \Use_unisim.MB_SRL16E_I1\ : label is "U0/\MDM_Core_I1/JTAG_CONTROL_I/Use_UART.RX_FIFO_I/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \Use_unisim.MB_SRL16E_I1\ : label is "U0/\MDM_Core_I1/JTAG_CONTROL_I/Use_UART.RX_FIFO_I/FIFO_RAM[5].D16.SRL16E_I/Use_unisim.MB_SRL16E_I1 ";
begin
\Use_unisim.MB_SRL16E_I1\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Addr(0),
      A1 => Addr(1),
      A2 => Addr(2),
      A3 => Addr(3),
      CE => CI,
      CLK => S_AXI_ACLK,
      D => Q(0),
      Q => RX_Data(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized19\ is
  port (
    Data_Out : out STD_LOGIC_VECTOR ( 0 to 0 );
    CI : in STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 0 to 0 );
    Addr : in STD_LOGIC_VECTOR ( 0 to 3 );
    S_AXI_ACLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized19\ : entity is "MB_SRL16E";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized19\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized19\ is
  attribute box_type : string;
  attribute box_type of \Use_unisim.MB_SRL16E_I1\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \Use_unisim.MB_SRL16E_I1\ : label is "U0/\MDM_Core_I1/JTAG_CONTROL_I/Use_UART.TX_FIFO_I/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \Use_unisim.MB_SRL16E_I1\ : label is "U0/\MDM_Core_I1/JTAG_CONTROL_I/Use_UART.TX_FIFO_I/FIFO_RAM[6].D16.SRL16E_I/Use_unisim.MB_SRL16E_I1 ";
begin
\Use_unisim.MB_SRL16E_I1\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Addr(0),
      A1 => Addr(1),
      A2 => Addr(2),
      A3 => Addr(3),
      CE => CI,
      CLK => S_AXI_ACLK,
      D => S_AXI_WDATA(0),
      Q => Data_Out(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized19_22\ is
  port (
    RX_Data : out STD_LOGIC_VECTOR ( 0 to 0 );
    CI : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Addr : in STD_LOGIC_VECTOR ( 0 to 3 );
    S_AXI_ACLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized19_22\ : entity is "MB_SRL16E";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized19_22\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized19_22\ is
  attribute box_type : string;
  attribute box_type of \Use_unisim.MB_SRL16E_I1\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \Use_unisim.MB_SRL16E_I1\ : label is "U0/\MDM_Core_I1/JTAG_CONTROL_I/Use_UART.RX_FIFO_I/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \Use_unisim.MB_SRL16E_I1\ : label is "U0/\MDM_Core_I1/JTAG_CONTROL_I/Use_UART.RX_FIFO_I/FIFO_RAM[6].D16.SRL16E_I/Use_unisim.MB_SRL16E_I1 ";
begin
\Use_unisim.MB_SRL16E_I1\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Addr(0),
      A1 => Addr(1),
      A2 => Addr(2),
      A3 => Addr(3),
      CE => CI,
      CLK => S_AXI_ACLK,
      D => Q(0),
      Q => RX_Data(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized21\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    CI : in STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 0 to 0 );
    Addr : in STD_LOGIC_VECTOR ( 0 to 3 );
    S_AXI_ACLK : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Use_BSCAN.PORT_Selector_reg[0]\ : in STD_LOGIC;
    \command_reg[0]\ : in STD_LOGIC;
    data_Exists_I_reg : in STD_LOGIC;
    \command_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized21\ : entity is "MB_SRL16E";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized21\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized21\ is
  signal Data_Out : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute box_type : string;
  attribute box_type of \Use_unisim.MB_SRL16E_I1\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \Use_unisim.MB_SRL16E_I1\ : label is "U0/\MDM_Core_I1/JTAG_CONTROL_I/Use_UART.TX_FIFO_I/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \Use_unisim.MB_SRL16E_I1\ : label is "U0/\MDM_Core_I1/JTAG_CONTROL_I/Use_UART.TX_FIFO_I/FIFO_RAM[7].D16.SRL16E_I/Use_unisim.MB_SRL16E_I1 ";
begin
\Use_UART.tdo_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => Q(0),
      I1 => \Use_BSCAN.PORT_Selector_reg[0]\,
      I2 => \command_reg[0]\,
      I3 => data_Exists_I_reg,
      I4 => Data_Out(7),
      I5 => \command_reg[0]_0\,
      O => D(0)
    );
\Use_unisim.MB_SRL16E_I1\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Addr(0),
      A1 => Addr(1),
      A2 => Addr(2),
      A3 => Addr(3),
      CE => CI,
      CLK => S_AXI_ACLK,
      D => S_AXI_WDATA(0),
      Q => Data_Out(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized21_23\ is
  port (
    RX_Data : out STD_LOGIC_VECTOR ( 0 to 0 );
    CI : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Addr : in STD_LOGIC_VECTOR ( 0 to 3 );
    S_AXI_ACLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized21_23\ : entity is "MB_SRL16E";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized21_23\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized21_23\ is
  attribute box_type : string;
  attribute box_type of \Use_unisim.MB_SRL16E_I1\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \Use_unisim.MB_SRL16E_I1\ : label is "U0/\MDM_Core_I1/JTAG_CONTROL_I/Use_UART.RX_FIFO_I/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \Use_unisim.MB_SRL16E_I1\ : label is "U0/\MDM_Core_I1/JTAG_CONTROL_I/Use_UART.RX_FIFO_I/FIFO_RAM[7].D16.SRL16E_I/Use_unisim.MB_SRL16E_I1 ";
begin
\Use_unisim.MB_SRL16E_I1\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Addr(0),
      A1 => Addr(1),
      A2 => Addr(2),
      A3 => Addr(3),
      CE => CI,
      CLK => S_AXI_ACLK,
      D => Q(0),
      Q => RX_Data(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized3\ is
  port (
    Q0_out : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Use_BSCAN.PORT_Selector_reg[0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized3\ : entity is "MB_SRL16E";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized3\ is
  attribute box_type : string;
  attribute box_type of \Use_unisim.MB_SRL16E_I1\ : label is "PRIMITIVE";
  attribute srl_name : string;
  attribute srl_name of \Use_unisim.MB_SRL16E_I1\ : label is "U0/\MDM_Core_I1/JTAG_CONTROL_I/Use_ID_SRL16E.SRL16E_ID_1/Use_unisim.MB_SRL16E_I1 ";
begin
\Use_unisim.MB_SRL16E_I1\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"4443",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => '0',
      CLK => \Use_BSCAN.PORT_Selector_reg[0]\,
      D => '0',
      Q => Q0_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized5\ is
  port (
    tdo : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \Use_BSCAN.PORT_Selector_reg[0]\ : in STD_LOGIC;
    \Use_BSCAN.PORT_Selector_reg[2]\ : in STD_LOGIC;
    \Use_BSCAN.PORT_Selector_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \command_reg[0]\ : in STD_LOGIC;
    \command_reg[0]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \command_reg[6]\ : in STD_LOGIC;
    Dbg_TDO_0 : in STD_LOGIC;
    \command_reg[5]\ : in STD_LOGIC;
    \command_reg[5]_0\ : in STD_LOGIC;
    config_TDO_2 : in STD_LOGIC;
    Q0_out : in STD_LOGIC;
    \shift_Count_reg[0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized5\ : entity is "MB_SRL16E";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized5\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized5\ is
  signal ID_TDO_2 : STD_LOGIC;
  signal \Use_E2.BSCANE2_I_i_5_n_0\ : STD_LOGIC;
  signal \Use_E2.BSCANE2_I_i_8_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \Use_unisim.MB_SRL16E_I1\ : label is "PRIMITIVE";
  attribute srl_name : string;
  attribute srl_name of \Use_unisim.MB_SRL16E_I1\ : label is "U0/\MDM_Core_I1/JTAG_CONTROL_I/Use_ID_SRL16E.SRL16E_ID_2/Use_unisim.MB_SRL16E_I1 ";
begin
\Use_E2.BSCANE2_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEEEAEEEAEEEAEA"
    )
        port map (
      I0 => \Use_BSCAN.PORT_Selector_reg[2]\,
      I1 => \Use_BSCAN.PORT_Selector_reg[0]_0\(0),
      I2 => \command_reg[0]\,
      I3 => \command_reg[0]_0\(2),
      I4 => \command_reg[6]\,
      I5 => \Use_E2.BSCANE2_I_i_5_n_0\,
      O => tdo
    );
\Use_E2.BSCANE2_I_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A3F00"
    )
        port map (
      I0 => Dbg_TDO_0,
      I1 => \command_reg[0]_0\(0),
      I2 => \command_reg[5]\,
      I3 => \Use_E2.BSCANE2_I_i_8_n_0\,
      I4 => \command_reg[5]_0\,
      O => \Use_E2.BSCANE2_I_i_5_n_0\
    );
\Use_E2.BSCANE2_I_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCFAFA0C0C0AFA0"
    )
        port map (
      I0 => ID_TDO_2,
      I1 => config_TDO_2,
      I2 => Q(4),
      I3 => Q0_out,
      I4 => \command_reg[0]_0\(1),
      I5 => \shift_Count_reg[0]\,
      O => \Use_E2.BSCANE2_I_i_8_n_0\
    );
\Use_unisim.MB_SRL16E_I1\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"584D",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => '0',
      CLK => \Use_BSCAN.PORT_Selector_reg[0]\,
      D => '0',
      Q => ID_TDO_2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized7\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    CI : in STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 0 to 0 );
    Addr : in STD_LOGIC_VECTOR ( 0 to 3 );
    S_AXI_ACLK : in STD_LOGIC;
    \command_reg[0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized7\ : entity is "MB_SRL16E";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized7\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized7\ is
  signal Data_Out : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute box_type : string;
  attribute box_type of \Use_unisim.MB_SRL16E_I1\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \Use_unisim.MB_SRL16E_I1\ : label is "U0/\MDM_Core_I1/JTAG_CONTROL_I/Use_UART.TX_FIFO_I/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \Use_unisim.MB_SRL16E_I1\ : label is "U0/\MDM_Core_I1/JTAG_CONTROL_I/Use_UART.TX_FIFO_I/FIFO_RAM[0].D16.SRL16E_I/Use_unisim.MB_SRL16E_I1 ";
begin
\Use_UART.tdo_reg[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \command_reg[0]\,
      I1 => Data_Out(0),
      O => D(0)
    );
\Use_unisim.MB_SRL16E_I1\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Addr(0),
      A1 => Addr(1),
      A2 => Addr(2),
      A3 => Addr(3),
      CE => CI,
      CLK => S_AXI_ACLK,
      D => S_AXI_WDATA(0),
      Q => Data_Out(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized7_16\ is
  port (
    RX_Data : out STD_LOGIC_VECTOR ( 0 to 0 );
    CI : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Addr : in STD_LOGIC_VECTOR ( 0 to 3 );
    S_AXI_ACLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized7_16\ : entity is "MB_SRL16E";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized7_16\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized7_16\ is
  attribute box_type : string;
  attribute box_type of \Use_unisim.MB_SRL16E_I1\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \Use_unisim.MB_SRL16E_I1\ : label is "U0/\MDM_Core_I1/JTAG_CONTROL_I/Use_UART.RX_FIFO_I/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \Use_unisim.MB_SRL16E_I1\ : label is "U0/\MDM_Core_I1/JTAG_CONTROL_I/Use_UART.RX_FIFO_I/FIFO_RAM[0].D16.SRL16E_I/Use_unisim.MB_SRL16E_I1 ";
begin
\Use_unisim.MB_SRL16E_I1\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Addr(0),
      A1 => Addr(1),
      A2 => Addr(2),
      A3 => Addr(3),
      CE => CI,
      CLK => S_AXI_ACLK,
      D => Q(0),
      Q => RX_Data(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized9\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    CI : in STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 0 to 0 );
    Addr : in STD_LOGIC_VECTOR ( 0 to 3 );
    S_AXI_ACLK : in STD_LOGIC;
    \command_reg[0]\ : in STD_LOGIC;
    \Use_BSCAN.PORT_Selector_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized9\ : entity is "MB_SRL16E";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized9\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized9\ is
  signal Data_Out : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute box_type : string;
  attribute box_type of \Use_unisim.MB_SRL16E_I1\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \Use_unisim.MB_SRL16E_I1\ : label is "U0/\MDM_Core_I1/JTAG_CONTROL_I/Use_UART.TX_FIFO_I/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \Use_unisim.MB_SRL16E_I1\ : label is "U0/\MDM_Core_I1/JTAG_CONTROL_I/Use_UART.TX_FIFO_I/FIFO_RAM[1].D16.SRL16E_I/Use_unisim.MB_SRL16E_I1 ";
begin
\Use_UART.tdo_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => Data_Out(1),
      I1 => \command_reg[0]\,
      I2 => \Use_BSCAN.PORT_Selector_reg[0]\,
      I3 => Q(0),
      O => D(0)
    );
\Use_unisim.MB_SRL16E_I1\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Addr(0),
      A1 => Addr(1),
      A2 => Addr(2),
      A3 => Addr(3),
      CE => CI,
      CLK => S_AXI_ACLK,
      D => S_AXI_WDATA(0),
      Q => Data_Out(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized9_17\ is
  port (
    RX_Data : out STD_LOGIC_VECTOR ( 0 to 0 );
    CI : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Addr : in STD_LOGIC_VECTOR ( 0 to 3 );
    S_AXI_ACLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized9_17\ : entity is "MB_SRL16E";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized9_17\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized9_17\ is
  attribute box_type : string;
  attribute box_type of \Use_unisim.MB_SRL16E_I1\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \Use_unisim.MB_SRL16E_I1\ : label is "U0/\MDM_Core_I1/JTAG_CONTROL_I/Use_UART.RX_FIFO_I/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \Use_unisim.MB_SRL16E_I1\ : label is "U0/\MDM_Core_I1/JTAG_CONTROL_I/Use_UART.RX_FIFO_I/FIFO_RAM[1].D16.SRL16E_I/Use_unisim.MB_SRL16E_I1 ";
begin
\Use_unisim.MB_SRL16E_I1\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => Addr(0),
      A1 => Addr(1),
      A2 => Addr(2),
      A3 => Addr(3),
      CE => CI,
      CLK => S_AXI_ACLK,
      D => Q(0),
      Q => RX_Data(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_XORCY is
  port (
    sum_A_0 : out STD_LOGIC;
    LI : in STD_LOGIC;
    LO : in STD_LOGIC;
    lopt : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_XORCY;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_XORCY is
  signal \^sum_a_0\ : STD_LOGIC;
begin
  \^sum_a_0\ <= lopt;
  sum_A_0 <= \^sum_a_0\;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_XORCY_15 is
  port (
    sum_A_0 : out STD_LOGIC;
    LI : in STD_LOGIC;
    LO : in STD_LOGIC;
    lopt : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_XORCY_15 : entity is "MB_XORCY";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_XORCY_15;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_XORCY_15 is
  signal \^sum_a_0\ : STD_LOGIC;
begin
  \^sum_a_0\ <= lopt;
  sum_A_0 <= \^sum_a_0\;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f is
  port (
    ce_expnd_i_3 : out STD_LOGIC;
    \bus2ip_addr_i_reg[2]\ : in STD_LOGIC;
    Q : in STD_LOGIC;
    \bus2ip_addr_i_reg[3]\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f is
begin
CS: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[2]\,
      I1 => Q,
      I2 => \bus2ip_addr_i_reg[3]\,
      O => ce_expnd_i_3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized1\ is
  port (
    ce_expnd_i_1 : out STD_LOGIC;
    \bus2ip_addr_i_reg[3]\ : in STD_LOGIC;
    Q : in STD_LOGIC;
    \bus2ip_addr_i_reg[2]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized1\ : entity is "pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized1\ is
begin
CS: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[3]\,
      I1 => Q,
      I2 => \bus2ip_addr_i_reg[2]\,
      O => ce_expnd_i_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SRL_FIFO is
  port (
    \Using_FPGA.Native\ : out STD_LOGIC;
    RX_Data : out STD_LOGIC_VECTOR ( 0 to 7 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    p_0_in : out STD_LOGIC;
    \Use_Uart.reset_RX_FIFO_reg\ : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \Use_UART.tdo_reg_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \Use_BSCAN.PORT_Selector_reg[0]\ : in STD_LOGIC;
    \command_reg[0]\ : in STD_LOGIC;
    Data_Out : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \command_reg[0]_0\ : in STD_LOGIC;
    \Use_UART.fifo_Write_reg\ : in STD_LOGIC;
    bus2ip_rdce : in STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SRL_FIFO;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SRL_FIFO is
  signal Addr : STD_LOGIC_VECTOR ( 0 to 3 );
  signal \Addr_Counters[2].FDRE_I_n_5\ : STD_LOGIC;
  signal CI : STD_LOGIC;
  signal LI : STD_LOGIC;
  signal S : STD_LOGIC;
  signal S1_out : STD_LOGIC;
  signal S2_out : STD_LOGIC;
  signal \^using_fpga.native\ : STD_LOGIC;
  signal addr_cy_0 : STD_LOGIC;
  signal addr_cy_1 : STD_LOGIC;
  signal addr_cy_2 : STD_LOGIC;
  signal lopt : STD_LOGIC;
  signal lopt_1 : STD_LOGIC;
  signal lopt_2 : STD_LOGIC;
  signal lopt_3 : STD_LOGIC;
  signal lopt_4 : STD_LOGIC;
  signal sum_A_0 : STD_LOGIC;
  signal sum_A_1 : STD_LOGIC;
  signal sum_A_2 : STD_LOGIC;
  signal sum_A_3 : STD_LOGIC;
begin
  \Using_FPGA.Native\ <= \^using_fpga.native\;
\Addr_Counters[0].FDRE_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_8
     port map (
      Addr(0) => Addr(0),
      O => sum_A_3,
      S => S,
      S_AXI_ACLK => S_AXI_ACLK,
      \Use_UART.fifo_Write_reg\ => \Use_UART.fifo_Write_reg\,
      \Use_Uart.reset_RX_FIFO_reg\ => \Use_Uart.reset_RX_FIFO_reg\,
      \Using_FPGA.Native_0\(2) => Addr(1),
      \Using_FPGA.Native_0\(1) => Addr(2),
      \Using_FPGA.Native_0\(0) => Addr(3),
      bus2ip_rdce(0) => bus2ip_rdce(0),
      data_Exists_I_reg => \^using_fpga.native\
    );
\Addr_Counters[0].Used_MuxCY.MUXCY_L_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY_XORCY_9
     port map (
      Addr(0) => Addr(0),
      CI => CI,
      LO => addr_cy_2,
      O => sum_A_3,
      S => S,
      lopt => lopt,
      lopt_1 => Addr(1),
      lopt_2 => S2_out,
      lopt_3 => lopt_1,
      lopt_4 => Addr(2),
      lopt_5 => S1_out,
      lopt_6 => lopt_2,
      lopt_7 => lopt_3,
      lopt_8 => lopt_4,
      lopt_9 => LI
    );
\Addr_Counters[1].FDRE_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_10
     port map (
      Addr(2) => Addr(0),
      Addr(1) => Addr(2),
      Addr(0) => Addr(3),
      O => sum_A_2,
      S => S2_out,
      S_AXI_ACLK => S_AXI_ACLK,
      \Use_UART.fifo_Write_reg\ => \Use_UART.fifo_Write_reg\,
      \Use_Uart.reset_RX_FIFO_reg\ => \Use_Uart.reset_RX_FIFO_reg\,
      \Using_FPGA.Native_0\(0) => Addr(1),
      bus2ip_rdce(0) => bus2ip_rdce(0),
      data_Exists_I_reg => \^using_fpga.native\
    );
\Addr_Counters[1].Used_MuxCY.MUXCY_L_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY_XORCY_11
     port map (
      CI => addr_cy_2,
      LO => addr_cy_1,
      O => sum_A_2,
      S => S2_out,
      \Using_FPGA.Native\(0) => Addr(1),
      lopt => lopt,
      lopt_1 => lopt_2
    );
\Addr_Counters[2].FDRE_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_12
     port map (
      Addr(0) => Addr(2),
      Bus_RNW_reg => Bus_RNW_reg,
      CI => CI,
      D(0) => D(1),
      Data_Out(0) => Data_Out(1),
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      O => sum_A_1,
      S => S1_out,
      S_AXI_ACLK => S_AXI_ACLK,
      \Use_BSCAN.PORT_Selector_reg[0]\ => \Use_BSCAN.PORT_Selector_reg[0]\,
      \Use_UART.fifo_Write_reg\ => \Use_UART.fifo_Write_reg\,
      \Use_UART.tdo_reg_reg[3]\(0) => \Use_UART.tdo_reg_reg[3]\(1),
      \Use_Uart.reset_RX_FIFO_reg\ => \Use_Uart.reset_RX_FIFO_reg\,
      \Using_FPGA.Native_0\(2) => Addr(0),
      \Using_FPGA.Native_0\(1) => Addr(1),
      \Using_FPGA.Native_0\(0) => Addr(3),
      bus2ip_rdce(0) => bus2ip_rdce(0),
      \command_reg[0]\ => \command_reg[0]\,
      \command_reg[0]_0\ => \command_reg[0]_0\,
      data_Exists_I_reg => \Addr_Counters[2].FDRE_I_n_5\,
      data_Exists_I_reg_0 => \^using_fpga.native\,
      p_0_in => p_0_in
    );
\Addr_Counters[2].Used_MuxCY.MUXCY_L_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY_XORCY_13
     port map (
      Addr(0) => Addr(2),
      CI => addr_cy_1,
      LO => addr_cy_0,
      O => sum_A_1,
      S => S1_out,
      lopt => lopt_1,
      lopt_1 => lopt_3
    );
\Addr_Counters[3].FDRE_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_14
     port map (
      Addr(2) => Addr(0),
      Addr(1) => Addr(1),
      Addr(0) => Addr(2),
      LI => LI,
      S_AXI_ACLK => S_AXI_ACLK,
      \Use_UART.fifo_Write_reg\ => \Use_UART.fifo_Write_reg\,
      \Use_Uart.reset_RX_FIFO_reg\ => \Use_Uart.reset_RX_FIFO_reg\,
      \Using_FPGA.Native_0\(0) => Addr(3),
      bus2ip_rdce(0) => bus2ip_rdce(0),
      data_Exists_I_reg => \^using_fpga.native\,
      sum_A_0 => sum_A_0
    );
\Addr_Counters[3].No_MuxCY.XORCY_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_XORCY_15
     port map (
      LI => LI,
      LO => addr_cy_0,
      lopt => lopt_4,
      sum_A_0 => sum_A_0
    );
\FIFO_RAM[0].D16.SRL16E_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized7_16\
     port map (
      Addr(0 to 3) => Addr(0 to 3),
      CI => CI,
      Q(0) => Q(7),
      RX_Data(0) => RX_Data(0),
      S_AXI_ACLK => S_AXI_ACLK
    );
\FIFO_RAM[1].D16.SRL16E_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized9_17\
     port map (
      Addr(0 to 3) => Addr(0 to 3),
      CI => CI,
      Q(0) => Q(6),
      RX_Data(0) => RX_Data(1),
      S_AXI_ACLK => S_AXI_ACLK
    );
\FIFO_RAM[2].D16.SRL16E_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized11_18\
     port map (
      Addr(0 to 3) => Addr(0 to 3),
      CI => CI,
      Q(0) => Q(5),
      RX_Data(0) => RX_Data(2),
      S_AXI_ACLK => S_AXI_ACLK
    );
\FIFO_RAM[3].D16.SRL16E_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized13_19\
     port map (
      Addr(0 to 3) => Addr(0 to 3),
      CI => CI,
      Q(0) => Q(4),
      RX_Data(0) => RX_Data(3),
      S_AXI_ACLK => S_AXI_ACLK
    );
\FIFO_RAM[4].D16.SRL16E_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized15_20\
     port map (
      Addr(0 to 3) => Addr(0 to 3),
      CI => CI,
      Q(0) => Q(3),
      RX_Data(0) => RX_Data(4),
      S_AXI_ACLK => S_AXI_ACLK
    );
\FIFO_RAM[5].D16.SRL16E_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized17_21\
     port map (
      Addr(0 to 3) => Addr(0 to 3),
      CI => CI,
      Q(0) => Q(2),
      RX_Data(0) => RX_Data(5),
      S_AXI_ACLK => S_AXI_ACLK
    );
\FIFO_RAM[6].D16.SRL16E_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized19_22\
     port map (
      Addr(0 to 3) => Addr(0 to 3),
      CI => CI,
      Q(0) => Q(1),
      RX_Data(0) => RX_Data(6),
      S_AXI_ACLK => S_AXI_ACLK
    );
\FIFO_RAM[7].D16.SRL16E_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized21_23\
     port map (
      Addr(0 to 3) => Addr(0 to 3),
      CI => CI,
      Q(0) => Q(0),
      RX_Data(0) => RX_Data(7),
      S_AXI_ACLK => S_AXI_ACLK
    );
\Use_UART.tdo_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF22F222F222F2"
    )
        port map (
      I0 => \Use_UART.tdo_reg_reg[3]\(0),
      I1 => \Use_BSCAN.PORT_Selector_reg[0]\,
      I2 => \command_reg[0]\,
      I3 => \^using_fpga.native\,
      I4 => Data_Out(0),
      I5 => \command_reg[0]_0\,
      O => D(0)
    );
data_Exists_I_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \Addr_Counters[2].FDRE_I_n_5\,
      Q => \^using_fpga.native\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SRL_FIFO_0 is
  port (
    \Using_FPGA.Native\ : out STD_LOGIC;
    \Use_UART.tdo_reg_reg[4]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tx_Buffer_Full : out STD_LOGIC;
    tx_Buffer_Empty : out STD_LOGIC;
    Interrupt : out STD_LOGIC;
    \Use_Uart.reset_TX_FIFO_reg\ : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \Use_BSCAN.PORT_Selector_reg[0]\ : in STD_LOGIC;
    \command_reg[0]\ : in STD_LOGIC;
    \command_reg[0]_0\ : in STD_LOGIC;
    FIFO_Write : in STD_LOGIC;
    \Use_UART.fifo_Read_reg\ : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    Q_0 : in STD_LOGIC;
    data_Exists_I_reg_0 : in STD_LOGIC;
    enable_interrupts : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SRL_FIFO_0 : entity is "SRL_FIFO";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SRL_FIFO_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SRL_FIFO_0 is
  signal Addr : STD_LOGIC_VECTOR ( 0 to 3 );
  signal \Addr_Counters[2].FDRE_I_n_5\ : STD_LOGIC;
  signal CI : STD_LOGIC;
  signal Data_Out : STD_LOGIC_VECTOR ( 6 to 6 );
  signal LI : STD_LOGIC;
  signal S : STD_LOGIC;
  signal S1_out : STD_LOGIC;
  signal S2_out : STD_LOGIC;
  signal \^using_fpga.native\ : STD_LOGIC;
  signal addr_cy_0 : STD_LOGIC;
  signal addr_cy_1 : STD_LOGIC;
  signal addr_cy_2 : STD_LOGIC;
  signal lopt : STD_LOGIC;
  signal lopt_1 : STD_LOGIC;
  signal lopt_2 : STD_LOGIC;
  signal lopt_3 : STD_LOGIC;
  signal lopt_4 : STD_LOGIC;
  signal sum_A_0 : STD_LOGIC;
  signal sum_A_1 : STD_LOGIC;
  signal sum_A_2 : STD_LOGIC;
  signal sum_A_3 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Interrupt_INST_0 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \Using_FPGA.Native_i_2__0\ : label is "soft_lutpair10";
begin
  \Using_FPGA.Native\ <= \^using_fpga.native\;
\Addr_Counters[0].FDRE_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_2
     port map (
      Addr(0) => Addr(0),
      FIFO_Write => FIFO_Write,
      O => sum_A_3,
      S => S,
      S_AXI_ACLK => S_AXI_ACLK,
      \Use_UART.fifo_Read_reg\ => \Use_UART.fifo_Read_reg\,
      \Use_Uart.reset_TX_FIFO_reg\ => \Use_Uart.reset_TX_FIFO_reg\,
      \Using_FPGA.Native_0\(2) => Addr(1),
      \Using_FPGA.Native_0\(1) => Addr(2),
      \Using_FPGA.Native_0\(0) => Addr(3),
      data_Exists_I_reg => \^using_fpga.native\
    );
\Addr_Counters[0].Used_MuxCY.MUXCY_L_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY_XORCY
     port map (
      Addr(0) => Addr(0),
      CI => CI,
      LO => addr_cy_2,
      O => sum_A_3,
      S => S,
      lopt => lopt,
      lopt_1 => Addr(1),
      lopt_2 => S2_out,
      lopt_3 => lopt_1,
      lopt_4 => Addr(2),
      lopt_5 => S1_out,
      lopt_6 => lopt_2,
      lopt_7 => lopt_3,
      lopt_8 => lopt_4,
      lopt_9 => LI
    );
\Addr_Counters[1].FDRE_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_3
     port map (
      Addr(2) => Addr(0),
      Addr(1) => Addr(2),
      Addr(0) => Addr(3),
      FIFO_Write => FIFO_Write,
      O => sum_A_2,
      S => S2_out,
      S_AXI_ACLK => S_AXI_ACLK,
      \Use_UART.fifo_Read_reg\ => \Use_UART.fifo_Read_reg\,
      \Use_Uart.reset_TX_FIFO_reg\ => \Use_Uart.reset_TX_FIFO_reg\,
      \Using_FPGA.Native_0\(0) => Addr(1),
      data_Exists_I_reg => \^using_fpga.native\
    );
\Addr_Counters[1].Used_MuxCY.MUXCY_L_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY_XORCY_4
     port map (
      CI => addr_cy_2,
      LO => addr_cy_1,
      O => sum_A_2,
      S => S2_out,
      \Using_FPGA.Native\(0) => Addr(1),
      lopt => lopt,
      lopt_1 => lopt_2
    );
\Addr_Counters[2].FDRE_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_5
     port map (
      Addr(0) => Addr(2),
      Bus_RNW_reg => Bus_RNW_reg,
      CI => CI,
      D(0) => D(1),
      Data_Out(0) => Data_Out(6),
      FIFO_Write => FIFO_Write,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      O => sum_A_1,
      Q(0) => Q(1),
      S => S1_out,
      S_AXI_ACLK => S_AXI_ACLK,
      \Use_BSCAN.PORT_Selector_reg[0]\ => \Use_BSCAN.PORT_Selector_reg[0]\,
      \Use_UART.fifo_Read_reg\ => \Use_UART.fifo_Read_reg\,
      \Use_Uart.reset_TX_FIFO_reg\ => \Use_Uart.reset_TX_FIFO_reg\,
      \Using_FPGA.Native_0\(2) => Addr(0),
      \Using_FPGA.Native_0\(1) => Addr(1),
      \Using_FPGA.Native_0\(0) => Addr(3),
      \command_reg[0]\ => \command_reg[0]\,
      \command_reg[0]_0\ => \command_reg[0]_0\,
      data_Exists_I_reg => \Addr_Counters[2].FDRE_I_n_5\,
      data_Exists_I_reg_0 => \^using_fpga.native\,
      \out\ => \out\,
      tx_Buffer_Full => tx_Buffer_Full
    );
\Addr_Counters[2].Used_MuxCY.MUXCY_L_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY_XORCY_6
     port map (
      Addr(0) => Addr(2),
      CI => addr_cy_1,
      LO => addr_cy_0,
      O => sum_A_1,
      S => S1_out,
      lopt => lopt_1,
      lopt_1 => lopt_3
    );
\Addr_Counters[3].FDRE_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_7
     port map (
      Addr(2) => Addr(0),
      Addr(1) => Addr(1),
      Addr(0) => Addr(2),
      FIFO_Write => FIFO_Write,
      LI => LI,
      S_AXI_ACLK => S_AXI_ACLK,
      \Use_UART.fifo_Read_reg\ => \Use_UART.fifo_Read_reg\,
      \Use_Uart.reset_TX_FIFO_reg\ => \Use_Uart.reset_TX_FIFO_reg\,
      \Using_FPGA.Native_0\(0) => Addr(3),
      data_Exists_I_reg => \^using_fpga.native\,
      sum_A_0 => sum_A_0
    );
\Addr_Counters[3].No_MuxCY.XORCY_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_XORCY
     port map (
      LI => LI,
      LO => addr_cy_0,
      lopt => lopt_4,
      sum_A_0 => sum_A_0
    );
\FIFO_RAM[0].D16.SRL16E_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized7\
     port map (
      Addr(0 to 3) => Addr(0 to 3),
      CI => CI,
      D(0) => D(5),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_WDATA(0) => S_AXI_WDATA(7),
      \command_reg[0]\ => \command_reg[0]_0\
    );
\FIFO_RAM[1].D16.SRL16E_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized9\
     port map (
      Addr(0 to 3) => Addr(0 to 3),
      CI => CI,
      D(0) => D(4),
      Q(0) => Q(4),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_WDATA(0) => S_AXI_WDATA(6),
      \Use_BSCAN.PORT_Selector_reg[0]\ => \Use_BSCAN.PORT_Selector_reg[0]\,
      \command_reg[0]\ => \command_reg[0]_0\
    );
\FIFO_RAM[2].D16.SRL16E_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized11\
     port map (
      Addr(0 to 3) => Addr(0 to 3),
      CI => CI,
      D(0) => D(3),
      Q(0) => Q(3),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_WDATA(0) => S_AXI_WDATA(5),
      \Use_BSCAN.PORT_Selector_reg[0]\ => \Use_BSCAN.PORT_Selector_reg[0]\,
      \command_reg[0]\ => \command_reg[0]_0\
    );
\FIFO_RAM[3].D16.SRL16E_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized13\
     port map (
      Addr(0 to 3) => Addr(0 to 3),
      CI => CI,
      D(0) => D(2),
      Q(0) => Q(2),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_WDATA(0) => S_AXI_WDATA(4),
      \Use_BSCAN.PORT_Selector_reg[0]\ => \Use_BSCAN.PORT_Selector_reg[0]\,
      \command_reg[0]\ => \command_reg[0]_0\
    );
\FIFO_RAM[4].D16.SRL16E_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized15\
     port map (
      Addr(0 to 3) => Addr(0 to 3),
      CI => CI,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_WDATA(0) => S_AXI_WDATA(3),
      \Use_UART.tdo_reg_reg[4]\(0) => \Use_UART.tdo_reg_reg[4]\(1)
    );
\FIFO_RAM[5].D16.SRL16E_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized17\
     port map (
      Addr(0 to 3) => Addr(0 to 3),
      CI => CI,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_WDATA(0) => S_AXI_WDATA(2),
      \Use_UART.tdo_reg_reg[5]\(0) => \Use_UART.tdo_reg_reg[4]\(0)
    );
\FIFO_RAM[6].D16.SRL16E_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized19\
     port map (
      Addr(0 to 3) => Addr(0 to 3),
      CI => CI,
      Data_Out(0) => Data_Out(6),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_WDATA(0) => S_AXI_WDATA(1)
    );
\FIFO_RAM[7].D16.SRL16E_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized21\
     port map (
      Addr(0 to 3) => Addr(0 to 3),
      CI => CI,
      D(0) => D(0),
      Q(0) => Q(0),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_WDATA(0) => S_AXI_WDATA(0),
      \Use_BSCAN.PORT_Selector_reg[0]\ => \Use_BSCAN.PORT_Selector_reg[0]\,
      \command_reg[0]\ => \command_reg[0]\,
      \command_reg[0]_0\ => \command_reg[0]_0\,
      data_Exists_I_reg => \^using_fpga.native\
    );
Interrupt_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F100"
    )
        port map (
      I0 => Q_0,
      I1 => \^using_fpga.native\,
      I2 => data_Exists_I_reg_0,
      I3 => enable_interrupts,
      O => Interrupt
    );
\Using_FPGA.Native_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^using_fpga.native\,
      O => tx_Buffer_Empty
    );
data_Exists_I_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \Addr_Counters[2].FDRE_I_n_5\,
      Q => \^using_fpga.native\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder is
  port (
    \s_axi_rresp_i_reg[1]\ : out STD_LOGIC;
    \s_axi_rresp_i_reg[1]_0\ : out STD_LOGIC;
    \Use_Uart.enable_interrupts_reg\ : out STD_LOGIC;
    clear_Ext_BRK : out STD_LOGIC;
    reset_RX_FIFO : out STD_LOGIC;
    reset_TX_FIFO : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_AWREADY : out STD_LOGIC;
    FIFO_Write : out STD_LOGIC;
    ip2bus_error : out STD_LOGIC;
    bus2ip_wrce : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_ARREADY : out STD_LOGIC;
    bus2ip_rdce : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Use_Uart.enable_interrupts_reg_0\ : out STD_LOGIC;
    s_axi_rvalid_i_reg : out STD_LOGIC;
    s_axi_bvalid_i_reg : out STD_LOGIC;
    \s_axi_bresp_i_reg[1]\ : out STD_LOGIC;
    Q : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \state_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    s_axi_rvalid_i_reg_0 : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    tx_Buffer_Full : in STD_LOGIC;
    rx_Data_Present : in STD_LOGIC;
    RX_Data : in STD_LOGIC_VECTOR ( 0 to 7 );
    p_0_in : in STD_LOGIC;
    fifo_Data_Present : in STD_LOGIC;
    enable_interrupts : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_RVALID : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_BVALID : in STD_LOGIC;
    S_AXI_BRESP : in STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_rnw_i : in STD_LOGIC;
    \bus2ip_addr_i_reg[3]\ : in STD_LOGIC;
    \bus2ip_addr_i_reg[2]\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder is
  signal Bus_RNW_reg_i_1_n_0 : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^use_uart.enable_interrupts_reg\ : STD_LOGIC;
  signal ce_expnd_i_0 : STD_LOGIC;
  signal ce_expnd_i_1 : STD_LOGIC;
  signal ce_expnd_i_2 : STD_LOGIC;
  signal ce_expnd_i_3 : STD_LOGIC;
  signal cs_ce_clr : STD_LOGIC;
  signal \^ip2bus_error\ : STD_LOGIC;
  signal \^s_axi_rresp_i_reg[1]\ : STD_LOGIC;
  signal \^s_axi_rresp_i_reg[1]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Bus_RNW_reg_i_1 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of S_AXI_ARREADY_INST_0 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of S_AXI_WREADY_INST_0 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \Use_Uart.clear_Ext_BRK_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \Use_Uart.enable_interrupts_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \Use_Uart.reset_RX_FIFO_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \Use_Uart.reset_TX_FIFO_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \Using_FPGA.Native_I1_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \Using_FPGA.Native_I1_i_3__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \Using_FPGA.Native_i_1__1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[5]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[7]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s_axi_rresp_i[1]_i_1\ : label is "soft_lutpair21";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  \Use_Uart.enable_interrupts_reg\ <= \^use_uart.enable_interrupts_reg\;
  ip2bus_error <= \^ip2bus_error\;
  \s_axi_rresp_i_reg[1]\ <= \^s_axi_rresp_i_reg[1]\;
  \s_axi_rresp_i_reg[1]_0\ <= \^s_axi_rresp_i_reg[1]_0\;
Bus_RNW_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bus2ip_rnw_i,
      I1 => Q,
      I2 => \^use_uart.enable_interrupts_reg\,
      O => Bus_RNW_reg_i_1_n_0
    );
Bus_RNW_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => Bus_RNW_reg_i_1_n_0,
      Q => \^use_uart.enable_interrupts_reg\,
      R => '0'
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => Q,
      D => ce_expnd_i_3,
      Q => \^s_axi_rresp_i_reg[1]_0\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q,
      I1 => \bus2ip_addr_i_reg[2]\,
      I2 => \bus2ip_addr_i_reg[3]\,
      O => ce_expnd_i_2
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => Q,
      D => ce_expnd_i_2,
      Q => \^s_axi_rresp_i_reg[1]\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => Q,
      D => ce_expnd_i_1,
      Q => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \^s_axi_rresp_i_reg[1]_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I3 => \^s_axi_rresp_i_reg[1]\,
      I4 => S_AXI_ARESETN,
      O => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[3]\,
      I1 => Q,
      I2 => \bus2ip_addr_i_reg[2]\,
      O => ce_expnd_i_0
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => Q,
      D => ce_expnd_i_0,
      Q => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      R => cs_ce_clr
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f
     port map (
      Q => Q,
      \bus2ip_addr_i_reg[2]\ => \bus2ip_addr_i_reg[2]\,
      \bus2ip_addr_i_reg[3]\ => \bus2ip_addr_i_reg[3]\,
      ce_expnd_i_3 => ce_expnd_i_3
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized1\
     port map (
      Q => Q,
      \bus2ip_addr_i_reg[2]\ => \bus2ip_addr_i_reg[2]\,
      \bus2ip_addr_i_reg[3]\ => \bus2ip_addr_i_reg[3]\,
      ce_expnd_i_1 => ce_expnd_i_1
    );
S_AXI_ARREADY_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FE00"
    )
        port map (
      I0 => \^s_axi_rresp_i_reg[1]\,
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I3 => \^use_uart.enable_interrupts_reg\,
      I4 => \^s_axi_rresp_i_reg[1]_0\,
      O => \^s_axi_arready\
    );
S_AXI_WREADY_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00FE"
    )
        port map (
      I0 => \^s_axi_rresp_i_reg[1]_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I3 => \^use_uart.enable_interrupts_reg\,
      I4 => \^s_axi_rresp_i_reg[1]\,
      O => \^s_axi_awready\
    );
\Use_Uart.clear_Ext_BRK_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^use_uart.enable_interrupts_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I2 => S_AXI_WDATA(2),
      O => clear_Ext_BRK
    );
\Use_Uart.enable_interrupts_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => S_AXI_WDATA(3),
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I2 => \^use_uart.enable_interrupts_reg\,
      I3 => enable_interrupts,
      O => \Use_Uart.enable_interrupts_reg_0\
    );
\Use_Uart.reset_RX_FIFO_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^use_uart.enable_interrupts_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I2 => S_AXI_WDATA(1),
      O => reset_RX_FIFO
    );
\Use_Uart.reset_TX_FIFO_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^use_uart.enable_interrupts_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I2 => S_AXI_WDATA(0),
      O => reset_TX_FIFO
    );
\Using_FPGA.Native_I1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^use_uart.enable_interrupts_reg\,
      I1 => \^s_axi_rresp_i_reg[1]\,
      I2 => \out\,
      O => FIFO_Write
    );
\Using_FPGA.Native_I1_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s_axi_rresp_i_reg[1]_0\,
      I1 => \^use_uart.enable_interrupts_reg\,
      O => bus2ip_rdce(0)
    );
\Using_FPGA.Native_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^s_axi_rresp_i_reg[1]\,
      I1 => \^use_uart.enable_interrupts_reg\,
      O => bus2ip_wrce(0)
    );
\s_axi_bresp_i[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \^ip2bus_error\,
      I1 => \state_reg[1]\(1),
      I2 => \state_reg[1]\(0),
      I3 => S_AXI_BRESP(0),
      O => \s_axi_bresp_i_reg[1]\
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => \state_reg[1]\(1),
      I2 => \state_reg[1]\(0),
      I3 => S_AXI_BREADY,
      I4 => S_AXI_BVALID,
      O => s_axi_bvalid_i_reg
    );
\s_axi_rdata_i[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00C000"
    )
        port map (
      I0 => rx_Data_Present,
      I1 => RX_Data(7),
      I2 => \^s_axi_rresp_i_reg[1]_0\,
      I3 => \^use_uart.enable_interrupts_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      O => \s_axi_rdata_i_reg[7]\(0)
    );
\s_axi_rdata_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00C000"
    )
        port map (
      I0 => p_0_in,
      I1 => RX_Data(6),
      I2 => \^s_axi_rresp_i_reg[1]_0\,
      I3 => \^use_uart.enable_interrupts_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      O => \s_axi_rdata_i_reg[7]\(1)
    );
\s_axi_rdata_i[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5500C000"
    )
        port map (
      I0 => fifo_Data_Present,
      I1 => RX_Data(5),
      I2 => \^s_axi_rresp_i_reg[1]_0\,
      I3 => \^use_uart.enable_interrupts_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      O => \s_axi_rdata_i_reg[7]\(2)
    );
\s_axi_rdata_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00C000"
    )
        port map (
      I0 => tx_Buffer_Full,
      I1 => RX_Data(4),
      I2 => \^s_axi_rresp_i_reg[1]_0\,
      I3 => \^use_uart.enable_interrupts_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      O => \s_axi_rdata_i_reg[7]\(3)
    );
\s_axi_rdata_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00C000"
    )
        port map (
      I0 => enable_interrupts,
      I1 => RX_Data(3),
      I2 => \^s_axi_rresp_i_reg[1]_0\,
      I3 => \^use_uart.enable_interrupts_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      O => \s_axi_rdata_i_reg[7]\(4)
    );
\s_axi_rdata_i[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \^use_uart.enable_interrupts_reg\,
      I2 => \^s_axi_rresp_i_reg[1]_0\,
      I3 => RX_Data(2),
      O => \s_axi_rdata_i_reg[7]\(5)
    );
\s_axi_rdata_i[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \^use_uart.enable_interrupts_reg\,
      I2 => \^s_axi_rresp_i_reg[1]_0\,
      I3 => RX_Data(1),
      O => \s_axi_rdata_i_reg[7]\(6)
    );
\s_axi_rdata_i[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \^use_uart.enable_interrupts_reg\,
      I2 => \^s_axi_rresp_i_reg[1]_0\,
      I3 => RX_Data(0),
      O => \s_axi_rdata_i_reg[7]\(7)
    );
\s_axi_rresp_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F008888"
    )
        port map (
      I0 => tx_Buffer_Full,
      I1 => \^s_axi_rresp_i_reg[1]\,
      I2 => rx_Data_Present,
      I3 => \^s_axi_rresp_i_reg[1]_0\,
      I4 => \^use_uart.enable_interrupts_reg\,
      O => \^ip2bus_error\
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => \state_reg[1]\(0),
      I2 => \state_reg[1]\(1),
      I3 => S_AXI_RREADY,
      I4 => S_AXI_RVALID,
      O => s_axi_rvalid_i_reg
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55FFE4E4"
    )
        port map (
      I0 => \state_reg[1]\(1),
      I1 => S_AXI_ARVALID,
      I2 => \^s_axi_awready\,
      I3 => s_axi_rvalid_i_reg_0,
      I4 => \state_reg[1]\(0),
      O => D(0)
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AF03AFF3AF03AF0"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s_axi_rvalid_i_reg_0,
      I2 => \state_reg[1]\(1),
      I3 => \state_reg[1]\(0),
      I4 => S_AXI_ARVALID,
      I5 => S_AXI_WVALID,
      O => D(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JTAG_CONTROL is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Using_FPGA.Native\ : out STD_LOGIC;
    RX_Data : out STD_LOGIC_VECTOR ( 0 to 7 );
    \Using_FPGA.Native_0\ : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    Ext_NM_BRK : out STD_LOGIC;
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Debug_SYS_Rst : out STD_LOGIC;
    Dbg_Rst_0 : out STD_LOGIC;
    Ext_BRK : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    tdo : out STD_LOGIC;
    tx_Buffer_Full : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    \Use_Serial_Unified_Completion.completion_block_reg_0\ : out STD_LOGIC;
    \p_31_out__0\ : out STD_LOGIC;
    Dbg_Reg_En_0 : out STD_LOGIC_VECTOR ( 0 to 7 );
    \Use_Serial_Unified_Completion.count_reg[4]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    tx_Buffer_Empty : out STD_LOGIC;
    \Use_Serial_Unified_Completion.completion_status_reg[15]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Interrupt : out STD_LOGIC;
    CLK : in STD_LOGIC;
    \Use_BSCAN.PORT_Selector_reg[0]\ : in STD_LOGIC;
    \Use_Uart.reset_RX_FIFO_reg\ : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    \Use_Uart.reset_TX_FIFO_reg\ : in STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \Use_Uart.clear_Ext_BRK_reg\ : in STD_LOGIC;
    \Use_BSCAN.PORT_Selector_reg[0]_0\ : in STD_LOGIC;
    \Use_BSCAN.PORT_Selector_reg[2]\ : in STD_LOGIC;
    \Use_BSCAN.PORT_Selector_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Dbg_TDO_0 : in STD_LOGIC;
    \Use_BSCAN.PORT_Selector_reg[0]_1\ : in STD_LOGIC;
    sel : in STD_LOGIC;
    FIFO_Write : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ : in STD_LOGIC;
    bus2ip_rdce : in STD_LOGIC_VECTOR ( 0 to 0 );
    Scan_Reset : in STD_LOGIC;
    Scan_Reset_Sel : in STD_LOGIC;
    Q_0 : in STD_LOGIC;
    enable_interrupts : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : in STD_LOGIC;
    Dbg_TDI_31 : in STD_LOGIC;
    \Use_BSCAN.PORT_Selector_reg[0]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Using_FPGA.Native_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \command_reg[5]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Use_Serial_Unified_Completion.count_reg[5]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \shift_Count_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JTAG_CONTROL;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JTAG_CONTROL is
  signal A1 : STD_LOGIC;
  signal A2 : STD_LOGIC;
  signal A3 : STD_LOGIC;
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CE : STD_LOGIC;
  signal D_0 : STD_LOGIC;
  signal Data_Out : STD_LOGIC_VECTOR ( 4 to 5 );
  signal Dbg_Shift_31_INST_0_i_1_n_0 : STD_LOGIC;
  signal Dbg_Shift_31_INST_0_i_3_n_0 : STD_LOGIC;
  signal Debug_Rst_i0 : STD_LOGIC;
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal FDC_I_n_15 : STD_LOGIC;
  signal FDC_I_n_16 : STD_LOGIC;
  signal FDC_I_n_17 : STD_LOGIC;
  signal FDC_I_n_18 : STD_LOGIC;
  signal FDC_I_n_32 : STD_LOGIC;
  signal FDC_I_n_33 : STD_LOGIC;
  signal FDC_I_n_34 : STD_LOGIC;
  signal FDC_I_n_35 : STD_LOGIC;
  signal FDC_I_n_36 : STD_LOGIC;
  signal FDC_I_n_37 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Q0_out : STD_LOGIC;
  signal \Use_Config_SRL16E.SRL16E_1_n_0\ : STD_LOGIC;
  signal \Use_E2.BSCANE2_I_i_3_n_0\ : STD_LOGIC;
  signal \Use_E2.BSCANE2_I_i_4_n_0\ : STD_LOGIC;
  signal \Use_E2.BSCANE2_I_i_6_n_0\ : STD_LOGIC;
  signal \Use_E2.BSCANE2_I_i_7_n_0\ : STD_LOGIC;
  signal \Use_E2.BSCANE2_I_i_9_n_0\ : STD_LOGIC;
  signal \Use_Serial_Unified_Completion.completion_block_i_3_n_0\ : STD_LOGIC;
  signal \Use_Serial_Unified_Completion.completion_block_i_4_n_0\ : STD_LOGIC;
  signal \Use_Serial_Unified_Completion.completion_block_reg_n_0\ : STD_LOGIC;
  signal \Use_Serial_Unified_Completion.completion_status[3]_i_2_n_0\ : STD_LOGIC;
  signal \Use_Serial_Unified_Completion.completion_status[4]_i_2_n_0\ : STD_LOGIC;
  signal \Use_Serial_Unified_Completion.completion_status[5]_i_2_n_0\ : STD_LOGIC;
  signal \Use_Serial_Unified_Completion.completion_status[7]_i_2_n_0\ : STD_LOGIC;
  signal \Use_Serial_Unified_Completion.completion_status[9]_i_4_n_0\ : STD_LOGIC;
  signal \^use_serial_unified_completion.completion_status_reg[15]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \Use_Serial_Unified_Completion.count[0]__0_i_4_n_0\ : STD_LOGIC;
  signal \Use_Serial_Unified_Completion.count[0]_i_1_n_0\ : STD_LOGIC;
  signal \Use_Serial_Unified_Completion.count[1]_i_1_n_0\ : STD_LOGIC;
  signal \^use_serial_unified_completion.count_reg[4]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \Use_Serial_Unified_Completion.count_reg__1\ : STD_LOGIC_VECTOR ( 0 to 4 );
  signal \Use_Serial_Unified_Completion.count_reg_n_0_[0]\ : STD_LOGIC;
  signal \Use_Serial_Unified_Completion.count_reg_n_0_[1]\ : STD_LOGIC;
  signal \Use_Serial_Unified_Completion.mb_data_overrun_i_2_n_0\ : STD_LOGIC;
  signal \Use_Serial_Unified_Completion.mb_data_overrun_i_3_n_0\ : STD_LOGIC;
  signal \Use_Serial_Unified_Completion.mb_data_overrun_reg_n_0\ : STD_LOGIC;
  signal \Use_Serial_Unified_Completion.mb_instr_error_reg_n_0\ : STD_LOGIC;
  signal \Use_Serial_Unified_Completion.sample_1[15]_i_2_n_0\ : STD_LOGIC;
  signal \Use_Serial_Unified_Completion.sample_1_reg_n_0_[10]\ : STD_LOGIC;
  signal \Use_Serial_Unified_Completion.sample_1_reg_n_0_[11]\ : STD_LOGIC;
  signal \Use_Serial_Unified_Completion.sample_1_reg_n_0_[12]\ : STD_LOGIC;
  signal \Use_Serial_Unified_Completion.sample_1_reg_n_0_[13]\ : STD_LOGIC;
  signal \Use_Serial_Unified_Completion.sample_1_reg_n_0_[14]\ : STD_LOGIC;
  signal \Use_UART.RX_FIFO_I_n_10\ : STD_LOGIC;
  signal \Use_UART.RX_FIFO_I_n_9\ : STD_LOGIC;
  signal \Use_UART.TX_FIFO_I_n_3\ : STD_LOGIC;
  signal \Use_UART.TX_FIFO_I_n_4\ : STD_LOGIC;
  signal \Use_UART.TX_FIFO_I_n_5\ : STD_LOGIC;
  signal \Use_UART.TX_FIFO_I_n_6\ : STD_LOGIC;
  signal \Use_UART.TX_FIFO_I_n_7\ : STD_LOGIC;
  signal \Use_UART.TX_FIFO_I_n_8\ : STD_LOGIC;
  signal \Use_UART.execute_i_2_n_0\ : STD_LOGIC;
  signal \Use_UART.execute_i_3_n_0\ : STD_LOGIC;
  signal \Use_UART.fifo_Read_reg_n_0\ : STD_LOGIC;
  signal \Use_UART.fifo_Write_i_2_n_0\ : STD_LOGIC;
  signal \Use_UART.fifo_Write_reg_n_0\ : STD_LOGIC;
  signal \Use_UART.tdo_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \Use_UART.tdo_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \Use_UART.tdo_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \^using_fpga.native\ : STD_LOGIC;
  signal command : STD_LOGIC_VECTOR ( 0 to 7 );
  signal \command[0]_i_1_n_0\ : STD_LOGIC;
  signal command_1 : STD_LOGIC_VECTOR ( 0 to 7 );
  signal command_10 : STD_LOGIC;
  signal command_regn_0_0 : STD_LOGIC;
  signal completion_ctrl : STD_LOGIC;
  signal completion_status : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal config_TDO_2 : STD_LOGIC;
  signal data_cmd_noblock : STD_LOGIC;
  signal execute : STD_LOGIC;
  signal execute_1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of execute_1 : signal is "true";
  signal execute_2 : STD_LOGIC;
  attribute async_reg of execute_2 : signal is "true";
  signal execute_3 : STD_LOGIC;
  signal fifo_Din : STD_LOGIC_VECTOR ( 0 to 7 );
  signal fifo_Read1_out : STD_LOGIC;
  signal fifo_Write3_out : STD_LOGIC;
  signal mb_instr_overrun : STD_LOGIC;
  signal p_0_in_2 : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal p_1_in : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal p_1_in_1 : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal \p_3_out__10\ : STD_LOGIC;
  signal sample : STD_LOGIC_VECTOR ( 15 downto 13 );
  attribute async_reg of sample : signal is "true";
  signal sample_1 : STD_LOGIC;
  signal sel_n : STD_LOGIC;
  signal sel_n_i_1_n_0 : STD_LOGIC;
  signal set_Ext_BRK : STD_LOGIC;
  signal \shift_Count_reg__0\ : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \shifting_Data1__0\ : STD_LOGIC;
  signal sync : STD_LOGIC;
  signal tdi_shifter0 : STD_LOGIC;
  signal \tdi_shifter_reg_n_0_[1]\ : STD_LOGIC;
  signal \tdi_shifter_reg_n_0_[2]\ : STD_LOGIC;
  signal \tdi_shifter_reg_n_0_[4]\ : STD_LOGIC;
  signal \tdi_shifter_reg_n_0_[5]\ : STD_LOGIC;
  signal \tdi_shifter_reg_n_0_[6]\ : STD_LOGIC;
  signal \tdi_shifter_reg_n_0_[7]\ : STD_LOGIC;
  signal tdo_reg : STD_LOGIC_VECTOR ( 0 to 7 );
  signal tx_buffered : STD_LOGIC;
  signal tx_buffered_1 : STD_LOGIC;
  attribute async_reg of tx_buffered_1 : signal is "true";
  signal tx_buffered_2 : STD_LOGIC;
  attribute async_reg of tx_buffered_2 : signal is "true";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Dbg_Shift_31_INST_0_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of Dbg_Shift_31_INST_0_i_3 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \Use_Serial_Unified_Completion.completion_status[11]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \Use_Serial_Unified_Completion.completion_status[12]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \Use_Serial_Unified_Completion.completion_status[13]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \Use_Serial_Unified_Completion.completion_status[14]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \Use_Serial_Unified_Completion.completion_status[4]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \Use_Serial_Unified_Completion.completion_status[5]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \Use_Serial_Unified_Completion.count[0]__0_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Use_Serial_Unified_Completion.count[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Use_Serial_Unified_Completion.count[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \Use_Serial_Unified_Completion.mb_data_overrun_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \Use_Serial_Unified_Completion.sample_1[15]_i_2\ : label is "soft_lutpair12";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Use_Serial_Unified_Completion.sample_reg[13]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Use_Serial_Unified_Completion.sample_reg[13]\ : label is "yes";
  attribute ASYNC_REG_boolean of \Use_Serial_Unified_Completion.sample_reg[14]\ : label is std.standard.true;
  attribute KEEP of \Use_Serial_Unified_Completion.sample_reg[14]\ : label is "yes";
  attribute ASYNC_REG_boolean of \Use_Serial_Unified_Completion.sample_reg[15]\ : label is std.standard.true;
  attribute KEEP of \Use_Serial_Unified_Completion.sample_reg[15]\ : label is "yes";
  attribute ASYNC_REG_boolean of \Use_UART.execute_1_reg\ : label is std.standard.true;
  attribute KEEP of \Use_UART.execute_1_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \Use_UART.execute_2_reg\ : label is std.standard.true;
  attribute KEEP of \Use_UART.execute_2_reg\ : label is "yes";
  attribute SOFT_HLUTNM of \Use_UART.execute_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \Use_UART.fifo_Write_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \Use_UART.tdo_reg[0]_i_4\ : label is "soft_lutpair16";
  attribute ASYNC_REG_boolean of \Use_UART.tx_buffered_1_reg\ : label is std.standard.true;
  attribute KEEP of \Use_UART.tx_buffered_1_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \Use_UART.tx_buffered_2_reg\ : label is std.standard.true;
  attribute KEEP of \Use_UART.tx_buffered_2_reg\ : label is "yes";
  attribute SOFT_HLUTNM of \shift_Count[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \shift_Count[3]_i_1\ : label is "soft_lutpair14";
begin
  AR(0) <= \^ar\(0);
  E(0) <= \^e\(0);
  Q(0) <= \^q\(0);
  \Use_Serial_Unified_Completion.completion_status_reg[15]_0\(0) <= \^use_serial_unified_completion.completion_status_reg[15]_0\(0);
  \Use_Serial_Unified_Completion.count_reg[4]_0\(0) <= \^use_serial_unified_completion.count_reg[4]_0\(0);
  \Using_FPGA.Native\ <= \^using_fpga.native\;
  \out\ <= tx_buffered_2;
Dbg_Shift_31_INST_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => command(5),
      I1 => command(7),
      I2 => command(4),
      O => Dbg_Shift_31_INST_0_i_1_n_0
    );
Dbg_Shift_31_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => command(0),
      I1 => command(1),
      I2 => command(3),
      I3 => command(2),
      O => Dbg_Shift_31_INST_0_i_3_n_0
    );
Debug_Rst_i_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Debug_Rst_i0,
      CLR => \^ar\(0),
      D => p_1_in_1,
      Q => Dbg_Rst_0
    );
Debug_SYS_Rst_i_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Debug_Rst_i0,
      CLR => \^ar\(0),
      D => \tdi_shifter_reg_n_0_[1]\,
      Q => Debug_SYS_Rst
    );
Ext_NM_BRK_i_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Scan_Reset,
      I1 => Scan_Reset_Sel,
      O => \^ar\(0)
    );
Ext_NM_BRK_i_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Debug_Rst_i0,
      CLR => \^ar\(0),
      D => p_0_in_2,
      Q => Ext_NM_BRK
    );
FDC_I: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDC_1
     port map (
      CE => CE,
      CLK => CLK,
      D(9 downto 0) => p_1_in(9 downto 0),
      D_0 => D_0,
      Dbg_Reg_En_0(0 to 7) => Dbg_Reg_En_0(0 to 7),
      Dbg_TDO_0 => Dbg_TDO_0,
      Debug_Rst_i0 => Debug_Rst_i0,
      E(0) => \^e\(0),
      Q(7) => command(0),
      Q(6) => command(1),
      Q(5) => command(2),
      Q(4) => command(3),
      Q(3) => command(4),
      Q(2) => command(5),
      Q(1) => command(6),
      Q(0) => command(7),
      \Use_BSCAN.PORT_Selector_reg[0]\ => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      \Use_BSCAN.PORT_Selector_reg[0]_0\ => \Use_BSCAN.PORT_Selector_reg[0]_1\,
      \Use_BSCAN.PORT_Selector_reg[3]\(3 downto 0) => \Use_BSCAN.PORT_Selector_reg[3]\(3 downto 0),
      \Use_Serial_Unified_Completion.completion_block_reg\ => \Use_Serial_Unified_Completion.completion_block_reg_0\,
      \Use_Serial_Unified_Completion.completion_block_reg_0\ => FDC_I_n_36,
      \Use_Serial_Unified_Completion.completion_block_reg_1\ => \Use_Serial_Unified_Completion.completion_block_reg_n_0\,
      \Use_Serial_Unified_Completion.completion_status_reg[0]\(0) => FDC_I_n_15,
      \Use_Serial_Unified_Completion.completion_status_reg[10]\(10 downto 0) => completion_status(10 downto 0),
      \Use_Serial_Unified_Completion.completion_status_reg[2]\ => \Use_Serial_Unified_Completion.completion_status[3]_i_2_n_0\,
      \Use_Serial_Unified_Completion.completion_status_reg[3]\ => \Use_Serial_Unified_Completion.completion_status[4]_i_2_n_0\,
      \Use_Serial_Unified_Completion.completion_status_reg[4]\ => \Use_Serial_Unified_Completion.completion_status[5]_i_2_n_0\,
      \Use_Serial_Unified_Completion.completion_status_reg[5]\ => \Use_Serial_Unified_Completion.completion_status[7]_i_2_n_0\,
      \Use_Serial_Unified_Completion.completion_status_reg[7]\ => \Use_Serial_Unified_Completion.completion_status[9]_i_4_n_0\,
      \Use_Serial_Unified_Completion.count_reg[0]\ => \Use_Serial_Unified_Completion.count_reg_n_0_[0]\,
      \Use_Serial_Unified_Completion.count_reg[1]\ => \Use_Serial_Unified_Completion.count_reg_n_0_[1]\,
      \Use_Serial_Unified_Completion.count_reg[5]\ => \Use_Serial_Unified_Completion.mb_data_overrun_i_2_n_0\,
      \Use_Serial_Unified_Completion.mb_data_overrun_reg\ => FDC_I_n_34,
      \Use_Serial_Unified_Completion.mb_instr_error_reg\ => FDC_I_n_33,
      \Use_Serial_Unified_Completion.mb_instr_overrun_reg\ => FDC_I_n_32,
      \Use_Serial_Unified_Completion.sample_reg[15]\(2) => FDC_I_n_16,
      \Use_Serial_Unified_Completion.sample_reg[15]\(1) => FDC_I_n_17,
      \Use_Serial_Unified_Completion.sample_reg[15]\(0) => FDC_I_n_18,
      \Use_Serial_Unified_Completion.sample_reg[15]_0\(5 downto 3) => sample(15 downto 13),
      \Use_Serial_Unified_Completion.sample_reg[15]_0\(2) => \Use_Serial_Unified_Completion.mb_data_overrun_reg_n_0\,
      \Use_Serial_Unified_Completion.sample_reg[15]_0\(1) => \Use_Serial_Unified_Completion.mb_instr_error_reg_n_0\,
      \Use_Serial_Unified_Completion.sample_reg[15]_0\(0) => mb_instr_overrun,
      \Use_UART.tx_buffered_reg\ => FDC_I_n_37,
      \command_1_reg[7]\(0) => command_10,
      \command_reg[0]\ => Dbg_Shift_31_INST_0_i_3_n_0,
      \command_reg[2]\ => \Use_Serial_Unified_Completion.sample_1[15]_i_2_n_0\,
      \command_reg[5]\ => Dbg_Shift_31_INST_0_i_1_n_0,
      completion_ctrl => completion_ctrl,
      \completion_ctrl_reg[0]\ => FDC_I_n_35,
      data_cmd_noblock => data_cmd_noblock,
      in0 => tx_buffered,
      \p_31_out__0\ => \p_31_out__0\,
      \p_3_out__10\ => \p_3_out__10\,
      sample_1 => sample_1,
      sel => sel,
      sel_n => sel_n,
      \shifting_Data1__0\ => \shifting_Data1__0\,
      sync => sync,
      \tdi_shifter_reg[0]\(7) => p_1_in_1,
      \tdi_shifter_reg[0]\(6) => \tdi_shifter_reg_n_0_[1]\,
      \tdi_shifter_reg[0]\(5) => \tdi_shifter_reg_n_0_[2]\,
      \tdi_shifter_reg[0]\(4) => p_0_in_2,
      \tdi_shifter_reg[0]\(3) => \tdi_shifter_reg_n_0_[4]\,
      \tdi_shifter_reg[0]\(2) => \tdi_shifter_reg_n_0_[5]\,
      \tdi_shifter_reg[0]\(1) => \tdi_shifter_reg_n_0_[6]\,
      \tdi_shifter_reg[0]\(0) => \tdi_shifter_reg_n_0_[7]\
    );
SYNC_FDRE: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_1
     port map (
      CE => CE,
      D_0 => D_0,
      \Use_BSCAN.PORT_Selector_reg[0]\ => \Use_BSCAN.PORT_Selector_reg[0]\,
      sync => sync
    );
\Use_Config_SRL16E.SRL16E_1\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E
     port map (
      Q(3) => A3,
      Q(2) => A2,
      Q(1) => A1,
      Q(0) => \^q\(0),
      \Use_BSCAN.PORT_Selector_reg[0]\ => \Use_BSCAN.PORT_Selector_reg[0]\,
      \Use_UART.fifo_Din_reg[0]\ => \Use_Config_SRL16E.SRL16E_1_n_0\
    );
\Use_Config_SRL16E.SRL16E_2\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized1\
     port map (
      Q(3) => A3,
      Q(2) => A2,
      Q(1) => A1,
      Q(0) => \^q\(0),
      \Use_BSCAN.PORT_Selector_reg[0]\ => \Use_BSCAN.PORT_Selector_reg[0]\,
      config_TDO_2 => config_TDO_2
    );
\Use_E2.BSCANE2_I_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => command(0),
      I1 => Dbg_TDO_0,
      I2 => \Use_BSCAN.PORT_Selector_reg[3]\(1),
      O => \Use_E2.BSCANE2_I_i_3_n_0\
    );
\Use_E2.BSCANE2_I_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C000C00000008080"
    )
        port map (
      I0 => \Use_E2.BSCANE2_I_i_6_n_0\,
      I1 => command(6),
      I2 => \Use_E2.BSCANE2_I_i_7_n_0\,
      I3 => Dbg_TDO_0,
      I4 => command(1),
      I5 => command(5),
      O => \Use_E2.BSCANE2_I_i_4_n_0\
    );
\Use_E2.BSCANE2_I_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CA00CA"
    )
        port map (
      I0 => Dbg_TDO_0,
      I1 => tdo_reg(7),
      I2 => command(4),
      I3 => command(2),
      I4 => completion_status(0),
      O => \Use_E2.BSCANE2_I_i_6_n_0\
    );
\Use_E2.BSCANE2_I_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00001104AAAEBFBF"
    )
        port map (
      I0 => command(5),
      I1 => command(2),
      I2 => command(1),
      I3 => command(4),
      I4 => command(3),
      I5 => command(7),
      O => \Use_E2.BSCANE2_I_i_7_n_0\
    );
\Use_E2.BSCANE2_I_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF6"
    )
        port map (
      I0 => command(5),
      I1 => command(4),
      I2 => command(3),
      I3 => command(1),
      I4 => command(7),
      I5 => command(2),
      O => \Use_E2.BSCANE2_I_i_9_n_0\
    );
\Use_ID_SRL16E.SRL16E_ID_1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized3\
     port map (
      Q(3) => A3,
      Q(2) => A2,
      Q(1) => A1,
      Q(0) => \^q\(0),
      Q0_out => Q0_out,
      \Use_BSCAN.PORT_Selector_reg[0]\ => \Use_BSCAN.PORT_Selector_reg[0]\
    );
\Use_ID_SRL16E.SRL16E_ID_2\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_SRL16E__parameterized5\
     port map (
      Dbg_TDO_0 => Dbg_TDO_0,
      Q(4) => \shift_Count_reg__0\(4),
      Q(3) => A3,
      Q(2) => A2,
      Q(1) => A1,
      Q(0) => \^q\(0),
      Q0_out => Q0_out,
      \Use_BSCAN.PORT_Selector_reg[0]\ => \Use_BSCAN.PORT_Selector_reg[0]\,
      \Use_BSCAN.PORT_Selector_reg[0]_0\(0) => \Use_BSCAN.PORT_Selector_reg[3]\(0),
      \Use_BSCAN.PORT_Selector_reg[2]\ => \Use_BSCAN.PORT_Selector_reg[2]\,
      \command_reg[0]\ => \Use_E2.BSCANE2_I_i_3_n_0\,
      \command_reg[0]_0\(2) => command(0),
      \command_reg[0]_0\(1) => command(5),
      \command_reg[0]_0\(0) => command(6),
      \command_reg[5]\ => \Use_E2.BSCANE2_I_i_7_n_0\,
      \command_reg[5]_0\ => \Use_E2.BSCANE2_I_i_9_n_0\,
      \command_reg[6]\ => \Use_E2.BSCANE2_I_i_4_n_0\,
      config_TDO_2 => config_TDO_2,
      \shift_Count_reg[0]\ => \Use_Config_SRL16E.SRL16E_1_n_0\,
      tdo => tdo
    );
\Use_Serial_Unified_Completion.completion_block_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBAFFBABA"
    )
        port map (
      I0 => \Use_Serial_Unified_Completion.completion_block_i_3_n_0\,
      I1 => \^use_serial_unified_completion.completion_status_reg[15]_0\(0),
      I2 => sample(15),
      I3 => \Use_Serial_Unified_Completion.sample_1_reg_n_0_[10]\,
      I4 => mb_instr_overrun,
      I5 => \Use_Serial_Unified_Completion.completion_block_i_4_n_0\,
      O => \p_3_out__10\
    );
\Use_Serial_Unified_Completion.completion_block_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \Use_Serial_Unified_Completion.sample_1_reg_n_0_[11]\,
      I1 => \Use_Serial_Unified_Completion.mb_instr_error_reg_n_0\,
      I2 => \Use_Serial_Unified_Completion.sample_1_reg_n_0_[13]\,
      I3 => sample(13),
      O => \Use_Serial_Unified_Completion.completion_block_i_3_n_0\
    );
\Use_Serial_Unified_Completion.completion_block_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \Use_Serial_Unified_Completion.sample_1_reg_n_0_[12]\,
      I1 => \Use_Serial_Unified_Completion.mb_data_overrun_reg_n_0\,
      I2 => \Use_Serial_Unified_Completion.sample_1_reg_n_0_[14]\,
      I3 => sample(14),
      O => \Use_Serial_Unified_Completion.completion_block_i_4_n_0\
    );
\Use_Serial_Unified_Completion.completion_block_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => '1',
      CLR => \^ar\(0),
      D => FDC_I_n_36,
      Q => \Use_Serial_Unified_Completion.completion_block_reg_n_0\
    );
\Use_Serial_Unified_Completion.completion_status[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Use_Serial_Unified_Completion.sample_1_reg_n_0_[10]\,
      I1 => \Use_BSCAN.PORT_Selector_reg[0]_1\,
      I2 => completion_status(11),
      O => p_1_in(10)
    );
\Use_Serial_Unified_Completion.completion_status[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Use_Serial_Unified_Completion.sample_1_reg_n_0_[11]\,
      I1 => \Use_BSCAN.PORT_Selector_reg[0]_1\,
      I2 => completion_status(12),
      O => p_1_in(11)
    );
\Use_Serial_Unified_Completion.completion_status[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Use_Serial_Unified_Completion.sample_1_reg_n_0_[12]\,
      I1 => \Use_BSCAN.PORT_Selector_reg[0]_1\,
      I2 => completion_status(13),
      O => p_1_in(12)
    );
\Use_Serial_Unified_Completion.completion_status[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Use_Serial_Unified_Completion.sample_1_reg_n_0_[13]\,
      I1 => \Use_BSCAN.PORT_Selector_reg[0]_1\,
      I2 => completion_status(14),
      O => p_1_in(13)
    );
\Use_Serial_Unified_Completion.completion_status[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Use_Serial_Unified_Completion.sample_1_reg_n_0_[14]\,
      I1 => \Use_BSCAN.PORT_Selector_reg[0]_1\,
      I2 => completion_status(15),
      O => p_1_in(14)
    );
\Use_Serial_Unified_Completion.completion_status[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => completion_status(2),
      I1 => completion_status(0),
      I2 => completion_status(1),
      O => \Use_Serial_Unified_Completion.completion_status[3]_i_2_n_0\
    );
\Use_Serial_Unified_Completion.completion_status[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => completion_status(3),
      I1 => completion_status(1),
      I2 => completion_status(0),
      I3 => completion_status(2),
      O => \Use_Serial_Unified_Completion.completion_status[4]_i_2_n_0\
    );
\Use_Serial_Unified_Completion.completion_status[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => completion_status(4),
      I1 => completion_status(2),
      I2 => completion_status(0),
      I3 => completion_status(1),
      I4 => completion_status(3),
      O => \Use_Serial_Unified_Completion.completion_status[5]_i_2_n_0\
    );
\Use_Serial_Unified_Completion.completion_status[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => completion_status(5),
      I1 => completion_status(3),
      I2 => completion_status(1),
      I3 => completion_status(0),
      I4 => completion_status(2),
      I5 => completion_status(4),
      O => \Use_Serial_Unified_Completion.completion_status[7]_i_2_n_0\
    );
\Use_Serial_Unified_Completion.completion_status[9]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => completion_status(7),
      I1 => \Use_Serial_Unified_Completion.completion_status[7]_i_2_n_0\,
      I2 => completion_status(6),
      O => \Use_Serial_Unified_Completion.completion_status[9]_i_4_n_0\
    );
\Use_Serial_Unified_Completion.completion_status_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => FDC_I_n_15,
      CLR => \^ar\(0),
      D => p_1_in(0),
      Q => completion_status(0)
    );
\Use_Serial_Unified_Completion.completion_status_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => \Using_FPGA.Native_1\(0),
      CLR => \^ar\(0),
      D => p_1_in(10),
      Q => completion_status(10)
    );
\Use_Serial_Unified_Completion.completion_status_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => \Using_FPGA.Native_1\(0),
      CLR => \^ar\(0),
      D => p_1_in(11),
      Q => completion_status(11)
    );
\Use_Serial_Unified_Completion.completion_status_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => \Using_FPGA.Native_1\(0),
      CLR => \^ar\(0),
      D => p_1_in(12),
      Q => completion_status(12)
    );
\Use_Serial_Unified_Completion.completion_status_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => \Using_FPGA.Native_1\(0),
      CLR => \^ar\(0),
      D => p_1_in(13),
      Q => completion_status(13)
    );
\Use_Serial_Unified_Completion.completion_status_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => \Using_FPGA.Native_1\(0),
      CLR => \^ar\(0),
      D => p_1_in(14),
      Q => completion_status(14)
    );
\Use_Serial_Unified_Completion.completion_status_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => \Using_FPGA.Native_1\(0),
      CLR => \^ar\(0),
      D => D(0),
      Q => completion_status(15)
    );
\Use_Serial_Unified_Completion.completion_status_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => FDC_I_n_15,
      CLR => \^ar\(0),
      D => p_1_in(1),
      Q => completion_status(1)
    );
\Use_Serial_Unified_Completion.completion_status_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => FDC_I_n_15,
      CLR => \^ar\(0),
      D => p_1_in(2),
      Q => completion_status(2)
    );
\Use_Serial_Unified_Completion.completion_status_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => FDC_I_n_15,
      CLR => \^ar\(0),
      D => p_1_in(3),
      Q => completion_status(3)
    );
\Use_Serial_Unified_Completion.completion_status_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => FDC_I_n_15,
      CLR => \^ar\(0),
      D => p_1_in(4),
      Q => completion_status(4)
    );
\Use_Serial_Unified_Completion.completion_status_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => FDC_I_n_15,
      CLR => \^ar\(0),
      D => p_1_in(5),
      Q => completion_status(5)
    );
\Use_Serial_Unified_Completion.completion_status_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => FDC_I_n_15,
      CLR => \^ar\(0),
      D => p_1_in(6),
      Q => completion_status(6)
    );
\Use_Serial_Unified_Completion.completion_status_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => FDC_I_n_15,
      CLR => \^ar\(0),
      D => p_1_in(7),
      Q => completion_status(7)
    );
\Use_Serial_Unified_Completion.completion_status_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => FDC_I_n_15,
      CLR => \^ar\(0),
      D => p_1_in(8),
      Q => completion_status(8)
    );
\Use_Serial_Unified_Completion.completion_status_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => FDC_I_n_15,
      CLR => \^ar\(0),
      D => p_1_in(9),
      Q => completion_status(9)
    );
\Use_Serial_Unified_Completion.count[0]__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => \Use_Serial_Unified_Completion.count_reg__1\(1),
      I1 => \Use_Serial_Unified_Completion.count[0]__0_i_4_n_0\,
      I2 => \Use_Serial_Unified_Completion.count_reg__1\(0),
      I3 => \Use_BSCAN.PORT_Selector_reg[0]_1\,
      O => \p_0_in__0\(5)
    );
\Use_Serial_Unified_Completion.count[0]__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \Use_Serial_Unified_Completion.count_reg__1\(2),
      I1 => \Use_Serial_Unified_Completion.count_reg__1\(4),
      I2 => \^use_serial_unified_completion.count_reg[4]_0\(0),
      I3 => \Use_Serial_Unified_Completion.count_reg__1\(3),
      O => \Use_Serial_Unified_Completion.count[0]__0_i_4_n_0\
    );
\Use_Serial_Unified_Completion.count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF80FF00FF00"
    )
        port map (
      I0 => \Use_Serial_Unified_Completion.count_reg_n_0_[1]\,
      I1 => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      I2 => sync,
      I3 => \Use_Serial_Unified_Completion.count_reg_n_0_[0]\,
      I4 => \Use_BSCAN.PORT_Selector_reg[0]_1\,
      I5 => \shifting_Data1__0\,
      O => \Use_Serial_Unified_Completion.count[0]_i_1_n_0\
    );
\Use_Serial_Unified_Completion.count[1]__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF8000"
    )
        port map (
      I0 => \Use_Serial_Unified_Completion.count_reg__1\(2),
      I1 => \Use_Serial_Unified_Completion.count_reg__1\(4),
      I2 => \^use_serial_unified_completion.count_reg[4]_0\(0),
      I3 => \Use_Serial_Unified_Completion.count_reg__1\(3),
      I4 => \Use_Serial_Unified_Completion.count_reg__1\(1),
      I5 => \Use_BSCAN.PORT_Selector_reg[0]_1\,
      O => \p_0_in__0\(4)
    );
\Use_Serial_Unified_Completion.count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F7FFFF00080000"
    )
        port map (
      I0 => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      I1 => sync,
      I2 => \Use_Serial_Unified_Completion.count_reg_n_0_[0]\,
      I3 => \Use_BSCAN.PORT_Selector_reg[0]_1\,
      I4 => \shifting_Data1__0\,
      I5 => \Use_Serial_Unified_Completion.count_reg_n_0_[1]\,
      O => \Use_Serial_Unified_Completion.count[1]_i_1_n_0\
    );
\Use_Serial_Unified_Completion.count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => \Use_Serial_Unified_Completion.count_reg__1\(3),
      I1 => \^use_serial_unified_completion.count_reg[4]_0\(0),
      I2 => \Use_Serial_Unified_Completion.count_reg__1\(4),
      I3 => \Use_Serial_Unified_Completion.count_reg__1\(2),
      I4 => \Use_BSCAN.PORT_Selector_reg[0]_1\,
      O => \p_0_in__0\(3)
    );
\Use_Serial_Unified_Completion.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => \Use_Serial_Unified_Completion.count_reg__1\(4),
      I1 => \^use_serial_unified_completion.count_reg[4]_0\(0),
      I2 => \Use_Serial_Unified_Completion.count_reg__1\(3),
      I3 => \Use_BSCAN.PORT_Selector_reg[0]_1\,
      O => \p_0_in__0\(2)
    );
\Use_Serial_Unified_Completion.count[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \^use_serial_unified_completion.count_reg[4]_0\(0),
      I1 => \Use_Serial_Unified_Completion.count_reg__1\(4),
      I2 => \Use_BSCAN.PORT_Selector_reg[0]_1\,
      O => \p_0_in__0\(1)
    );
\Use_Serial_Unified_Completion.count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => '1',
      CLR => \^ar\(0),
      D => \Use_Serial_Unified_Completion.count[0]_i_1_n_0\,
      Q => \Use_Serial_Unified_Completion.count_reg_n_0_[0]\
    );
\Use_Serial_Unified_Completion.count_reg[0]__0\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => \command_reg[5]_0\(0),
      CLR => \^ar\(0),
      D => \p_0_in__0\(5),
      Q => \Use_Serial_Unified_Completion.count_reg__1\(0)
    );
\Use_Serial_Unified_Completion.count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => '1',
      CLR => \^ar\(0),
      D => \Use_Serial_Unified_Completion.count[1]_i_1_n_0\,
      Q => \Use_Serial_Unified_Completion.count_reg_n_0_[1]\
    );
\Use_Serial_Unified_Completion.count_reg[1]__0\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => \command_reg[5]_0\(0),
      CLR => \^ar\(0),
      D => \p_0_in__0\(4),
      Q => \Use_Serial_Unified_Completion.count_reg__1\(1)
    );
\Use_Serial_Unified_Completion.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => \command_reg[5]_0\(0),
      CLR => \^ar\(0),
      D => \p_0_in__0\(3),
      Q => \Use_Serial_Unified_Completion.count_reg__1\(2)
    );
\Use_Serial_Unified_Completion.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => \command_reg[5]_0\(0),
      CLR => \^ar\(0),
      D => \p_0_in__0\(2),
      Q => \Use_Serial_Unified_Completion.count_reg__1\(3)
    );
\Use_Serial_Unified_Completion.count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => \command_reg[5]_0\(0),
      CLR => \^ar\(0),
      D => \p_0_in__0\(1),
      Q => \Use_Serial_Unified_Completion.count_reg__1\(4)
    );
\Use_Serial_Unified_Completion.count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => \command_reg[5]_0\(0),
      CLR => \^ar\(0),
      D => \Use_Serial_Unified_Completion.count_reg[5]_0\(0),
      Q => \^use_serial_unified_completion.count_reg[4]_0\(0)
    );
\Use_Serial_Unified_Completion.mb_data_overrun_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \Use_Serial_Unified_Completion.mb_data_overrun_i_3_n_0\,
      I1 => \^use_serial_unified_completion.count_reg[4]_0\(0),
      I2 => \Use_Serial_Unified_Completion.count_reg__1\(4),
      I3 => \Use_Serial_Unified_Completion.count_reg__1\(3),
      O => \Use_Serial_Unified_Completion.mb_data_overrun_i_2_n_0\
    );
\Use_Serial_Unified_Completion.mb_data_overrun_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      I1 => \Use_Serial_Unified_Completion.count_reg__1\(0),
      I2 => \Use_Serial_Unified_Completion.count_reg__1\(1),
      I3 => \Use_Serial_Unified_Completion.count_reg__1\(2),
      O => \Use_Serial_Unified_Completion.mb_data_overrun_i_3_n_0\
    );
\Use_Serial_Unified_Completion.mb_data_overrun_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => '1',
      CLR => \^ar\(0),
      D => FDC_I_n_34,
      Q => \Use_Serial_Unified_Completion.mb_data_overrun_reg_n_0\
    );
\Use_Serial_Unified_Completion.mb_instr_error_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => '1',
      CLR => \^ar\(0),
      D => FDC_I_n_33,
      Q => \Use_Serial_Unified_Completion.mb_instr_error_reg_n_0\
    );
\Use_Serial_Unified_Completion.mb_instr_overrun_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => '1',
      CLR => \^ar\(0),
      D => FDC_I_n_32,
      Q => mb_instr_overrun
    );
\Use_Serial_Unified_Completion.sample_1[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => command(2),
      I1 => command(4),
      I2 => command(0),
      I3 => command(1),
      I4 => command(3),
      O => \Use_Serial_Unified_Completion.sample_1[15]_i_2_n_0\
    );
\Use_Serial_Unified_Completion.sample_1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => sample_1,
      CLR => \^ar\(0),
      D => mb_instr_overrun,
      Q => \Use_Serial_Unified_Completion.sample_1_reg_n_0_[10]\
    );
\Use_Serial_Unified_Completion.sample_1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => sample_1,
      CLR => \^ar\(0),
      D => \Use_Serial_Unified_Completion.mb_instr_error_reg_n_0\,
      Q => \Use_Serial_Unified_Completion.sample_1_reg_n_0_[11]\
    );
\Use_Serial_Unified_Completion.sample_1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => sample_1,
      CLR => \^ar\(0),
      D => \Use_Serial_Unified_Completion.mb_data_overrun_reg_n_0\,
      Q => \Use_Serial_Unified_Completion.sample_1_reg_n_0_[12]\
    );
\Use_Serial_Unified_Completion.sample_1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => sample_1,
      CLR => \^ar\(0),
      D => sample(13),
      Q => \Use_Serial_Unified_Completion.sample_1_reg_n_0_[13]\
    );
\Use_Serial_Unified_Completion.sample_1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => sample_1,
      CLR => \^ar\(0),
      D => sample(14),
      Q => \Use_Serial_Unified_Completion.sample_1_reg_n_0_[14]\
    );
\Use_Serial_Unified_Completion.sample_1_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => sample_1,
      CLR => \^ar\(0),
      D => sample(15),
      Q => \^use_serial_unified_completion.completion_status_reg[15]_0\(0)
    );
\Use_Serial_Unified_Completion.sample_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => '1',
      CLR => \^ar\(0),
      D => FDC_I_n_18,
      Q => sample(13)
    );
\Use_Serial_Unified_Completion.sample_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => '1',
      CLR => \^ar\(0),
      D => FDC_I_n_17,
      Q => sample(14)
    );
\Use_Serial_Unified_Completion.sample_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => '1',
      CLR => \^ar\(0),
      D => FDC_I_n_16,
      Q => sample(15)
    );
\Use_UART.Ext_BRK_FDRSE\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRSE
     port map (
      Ext_BRK => Ext_BRK,
      S_AXI_ACLK => S_AXI_ACLK,
      \Use_Uart.clear_Ext_BRK_reg\ => \Use_Uart.clear_Ext_BRK_reg\,
      set_Ext_BRK => set_Ext_BRK
    );
\Use_UART.RX_FIFO_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SRL_FIFO
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      D(1) => \Use_UART.RX_FIFO_I_n_9\,
      D(0) => \Use_UART.RX_FIFO_I_n_10\,
      Data_Out(1) => Data_Out(4),
      Data_Out(0) => Data_Out(5),
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      Q(7) => fifo_Din(0),
      Q(6) => fifo_Din(1),
      Q(5) => fifo_Din(2),
      Q(4) => fifo_Din(3),
      Q(3) => fifo_Din(4),
      Q(2) => fifo_Din(5),
      Q(1) => fifo_Din(6),
      Q(0) => fifo_Din(7),
      RX_Data(0 to 7) => RX_Data(0 to 7),
      S_AXI_ACLK => S_AXI_ACLK,
      \Use_BSCAN.PORT_Selector_reg[0]\ => \Use_BSCAN.PORT_Selector_reg[0]_1\,
      \Use_UART.fifo_Write_reg\ => \Use_UART.fifo_Write_reg_n_0\,
      \Use_UART.tdo_reg_reg[3]\(1) => tdo_reg(3),
      \Use_UART.tdo_reg_reg[3]\(0) => tdo_reg(4),
      \Use_Uart.reset_RX_FIFO_reg\ => \Use_Uart.reset_RX_FIFO_reg\,
      \Using_FPGA.Native\ => \^using_fpga.native\,
      bus2ip_rdce(0) => bus2ip_rdce(0),
      \command_reg[0]\ => \Use_UART.tdo_reg[4]_i_2_n_0\,
      \command_reg[0]_0\ => \Use_UART.tdo_reg[0]_i_3_n_0\,
      p_0_in => p_0_in
    );
\Use_UART.TX_FIFO_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SRL_FIFO_0
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      D(5) => \Use_UART.TX_FIFO_I_n_3\,
      D(4) => \Use_UART.TX_FIFO_I_n_4\,
      D(3) => \Use_UART.TX_FIFO_I_n_5\,
      D(2) => \Use_UART.TX_FIFO_I_n_6\,
      D(1) => \Use_UART.TX_FIFO_I_n_7\,
      D(0) => \Use_UART.TX_FIFO_I_n_8\,
      FIFO_Write => FIFO_Write,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      Interrupt => Interrupt,
      Q(4) => tdo_reg(0),
      Q(3) => tdo_reg(1),
      Q(2) => tdo_reg(2),
      Q(1) => tdo_reg(5),
      Q(0) => tdo_reg(6),
      Q_0 => Q_0,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_WDATA(7 downto 0) => S_AXI_WDATA(7 downto 0),
      \Use_BSCAN.PORT_Selector_reg[0]\ => \Use_BSCAN.PORT_Selector_reg[0]_1\,
      \Use_UART.fifo_Read_reg\ => \Use_UART.fifo_Read_reg_n_0\,
      \Use_UART.tdo_reg_reg[4]\(1) => Data_Out(4),
      \Use_UART.tdo_reg_reg[4]\(0) => Data_Out(5),
      \Use_Uart.reset_TX_FIFO_reg\ => \Use_Uart.reset_TX_FIFO_reg\,
      \Using_FPGA.Native\ => \Using_FPGA.Native_0\,
      \command_reg[0]\ => \Use_UART.tdo_reg[4]_i_2_n_0\,
      \command_reg[0]_0\ => \Use_UART.tdo_reg[0]_i_3_n_0\,
      data_Exists_I_reg_0 => \^using_fpga.native\,
      enable_interrupts => enable_interrupts,
      \out\ => tx_buffered_2,
      tx_Buffer_Empty => tx_Buffer_Empty,
      tx_Buffer_Full => tx_Buffer_Full
    );
\Use_UART.execute_1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => execute,
      Q => execute_1,
      R => '0'
    );
\Use_UART.execute_2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => execute_1,
      Q => execute_2,
      R => '0'
    );
\Use_UART.execute_3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => execute_2,
      Q => execute_3,
      R => '0'
    );
\Use_UART.execute_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => command(7),
      I1 => \Use_UART.execute_i_3_n_0\,
      I2 => command(0),
      I3 => command(1),
      I4 => command(3),
      I5 => command(2),
      O => p_2_out
    );
\Use_UART.execute_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB0B"
    )
        port map (
      I0 => \Use_Serial_Unified_Completion.completion_block_reg_n_0\,
      I1 => data_cmd_noblock,
      I2 => Scan_Reset_Sel,
      I3 => Scan_Reset,
      O => \Use_UART.execute_i_2_n_0\
    );
\Use_UART.execute_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => command(5),
      I1 => command(4),
      O => \Use_UART.execute_i_3_n_0\
    );
\Use_UART.execute_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \Use_UART.execute_i_2_n_0\,
      D => p_2_out,
      Q => execute
    );
\Use_UART.fifo_Din_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => \^e\(0),
      CLR => \^ar\(0),
      D => Dbg_TDI_31,
      Q => fifo_Din(0)
    );
\Use_UART.fifo_Din_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => \^e\(0),
      CLR => \^ar\(0),
      D => fifo_Din(0),
      Q => fifo_Din(1)
    );
\Use_UART.fifo_Din_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => \^e\(0),
      CLR => \^ar\(0),
      D => fifo_Din(1),
      Q => fifo_Din(2)
    );
\Use_UART.fifo_Din_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => \^e\(0),
      CLR => \^ar\(0),
      D => fifo_Din(2),
      Q => fifo_Din(3)
    );
\Use_UART.fifo_Din_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => \^e\(0),
      CLR => \^ar\(0),
      D => fifo_Din(3),
      Q => fifo_Din(4)
    );
\Use_UART.fifo_Din_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => \^e\(0),
      CLR => \^ar\(0),
      D => fifo_Din(4),
      Q => fifo_Din(5)
    );
\Use_UART.fifo_Din_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => \^e\(0),
      CLR => \^ar\(0),
      D => fifo_Din(5),
      Q => fifo_Din(6)
    );
\Use_UART.fifo_Din_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => \^e\(0),
      CLR => \^ar\(0),
      D => fifo_Din(6),
      Q => fifo_Din(7)
    );
\Use_UART.fifo_Read_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => \Use_UART.execute_i_3_n_0\,
      I1 => command(6),
      I2 => command(7),
      I3 => execute_3,
      I4 => execute_2,
      I5 => \Use_UART.fifo_Write_i_2_n_0\,
      O => fifo_Read1_out
    );
\Use_UART.fifo_Read_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => fifo_Read1_out,
      Q => \Use_UART.fifo_Read_reg_n_0\,
      R => '0'
    );
\Use_UART.fifo_Write_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \Use_UART.execute_i_3_n_0\,
      I1 => command(6),
      I2 => command(7),
      I3 => execute_3,
      I4 => execute_2,
      I5 => \Use_UART.fifo_Write_i_2_n_0\,
      O => fifo_Write3_out
    );
\Use_UART.fifo_Write_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => command(0),
      I1 => command(2),
      I2 => command(3),
      I3 => command(1),
      O => \Use_UART.fifo_Write_i_2_n_0\
    );
\Use_UART.fifo_Write_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => fifo_Write3_out,
      Q => \Use_UART.fifo_Write_reg_n_0\,
      R => '0'
    );
\Use_UART.tdo_reg[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000000"
    )
        port map (
      I0 => command(0),
      I1 => \Use_UART.execute_i_3_n_0\,
      I2 => command(6),
      I3 => command(2),
      I4 => \Use_UART.tdo_reg[0]_i_4_n_0\,
      I5 => \Use_BSCAN.PORT_Selector_reg[0]_1\,
      O => \Use_UART.tdo_reg[0]_i_3_n_0\
    );
\Use_UART.tdo_reg[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => command(3),
      I1 => command(1),
      I2 => command(7),
      O => \Use_UART.tdo_reg[0]_i_4_n_0\
    );
\Use_UART.tdo_reg[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \Use_BSCAN.PORT_Selector_reg[0]_1\,
      I1 => command(0),
      I2 => \Use_UART.execute_i_3_n_0\,
      I3 => command(6),
      I4 => command(2),
      I5 => \Use_UART.tdo_reg[0]_i_4_n_0\,
      O => \Use_UART.tdo_reg[4]_i_2_n_0\
    );
\Use_UART.tdo_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => \Use_BSCAN.PORT_Selector_reg[0]_2\(0),
      CLR => \^ar\(0),
      D => \Use_UART.TX_FIFO_I_n_3\,
      Q => tdo_reg(0)
    );
\Use_UART.tdo_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => \Use_BSCAN.PORT_Selector_reg[0]_2\(0),
      CLR => \^ar\(0),
      D => \Use_UART.TX_FIFO_I_n_4\,
      Q => tdo_reg(1)
    );
\Use_UART.tdo_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => \Use_BSCAN.PORT_Selector_reg[0]_2\(0),
      CLR => \^ar\(0),
      D => \Use_UART.TX_FIFO_I_n_5\,
      Q => tdo_reg(2)
    );
\Use_UART.tdo_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => \Use_BSCAN.PORT_Selector_reg[0]_2\(0),
      CLR => \^ar\(0),
      D => \Use_UART.TX_FIFO_I_n_6\,
      Q => tdo_reg(3)
    );
\Use_UART.tdo_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => \Use_BSCAN.PORT_Selector_reg[0]_2\(0),
      CLR => \^ar\(0),
      D => \Use_UART.RX_FIFO_I_n_9\,
      Q => tdo_reg(4)
    );
\Use_UART.tdo_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => \Use_BSCAN.PORT_Selector_reg[0]_2\(0),
      CLR => \^ar\(0),
      D => \Use_UART.RX_FIFO_I_n_10\,
      Q => tdo_reg(5)
    );
\Use_UART.tdo_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => \Use_BSCAN.PORT_Selector_reg[0]_2\(0),
      CLR => \^ar\(0),
      D => \Use_UART.TX_FIFO_I_n_7\,
      Q => tdo_reg(6)
    );
\Use_UART.tdo_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => \Use_BSCAN.PORT_Selector_reg[0]_2\(0),
      CLR => \^ar\(0),
      D => \Use_UART.TX_FIFO_I_n_8\,
      Q => tdo_reg(7)
    );
\Use_UART.tx_buffered_1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => tx_buffered,
      Q => tx_buffered_1,
      R => '0'
    );
\Use_UART.tx_buffered_2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => tx_buffered_1,
      Q => tx_buffered_2,
      R => '0'
    );
\Use_UART.tx_buffered_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^ar\(0),
      D => FDC_I_n_37,
      Q => tx_buffered
    );
\command[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => sel,
      I1 => \Use_BSCAN.PORT_Selector_reg[3]\(0),
      I2 => \Use_BSCAN.PORT_Selector_reg[3]\(1),
      I3 => \Use_BSCAN.PORT_Selector_reg[3]\(3),
      I4 => \Use_BSCAN.PORT_Selector_reg[3]\(2),
      O => \command[0]_i_1_n_0\
    );
\command_1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => command_10,
      CLR => \^ar\(0),
      D => p_1_in_1,
      Q => command_1(0)
    );
\command_1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => command_10,
      CLR => \^ar\(0),
      D => \tdi_shifter_reg_n_0_[1]\,
      Q => command_1(1)
    );
\command_1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => command_10,
      CLR => \^ar\(0),
      D => \tdi_shifter_reg_n_0_[2]\,
      Q => command_1(2)
    );
\command_1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => command_10,
      CLR => \^ar\(0),
      D => p_0_in_2,
      Q => command_1(3)
    );
\command_1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => command_10,
      CLR => \^ar\(0),
      D => \tdi_shifter_reg_n_0_[4]\,
      Q => command_1(4)
    );
\command_1_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => command_10,
      CLR => \^ar\(0),
      D => \tdi_shifter_reg_n_0_[5]\,
      Q => command_1(5)
    );
\command_1_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => command_10,
      CLR => \^ar\(0),
      D => \tdi_shifter_reg_n_0_[6]\,
      Q => command_1(6)
    );
\command_1_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => command_10,
      CLR => \^ar\(0),
      D => \tdi_shifter_reg_n_0_[7]\,
      Q => command_1(7)
    );
\command_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => command_regn_0_0,
      CE => \command[0]_i_1_n_0\,
      CLR => \^ar\(0),
      D => command_1(0),
      Q => command(0)
    );
\command_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => command_regn_0_0,
      CE => \command[0]_i_1_n_0\,
      CLR => \^ar\(0),
      D => command_1(1),
      Q => command(1)
    );
\command_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => command_regn_0_0,
      CE => \command[0]_i_1_n_0\,
      CLR => \^ar\(0),
      D => command_1(2),
      Q => command(2)
    );
\command_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => command_regn_0_0,
      CE => \command[0]_i_1_n_0\,
      CLR => \^ar\(0),
      D => command_1(3),
      Q => command(3)
    );
\command_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => command_regn_0_0,
      CE => \command[0]_i_1_n_0\,
      CLR => \^ar\(0),
      D => command_1(4),
      Q => command(4)
    );
\command_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => command_regn_0_0,
      CE => \command[0]_i_1_n_0\,
      CLR => \^ar\(0),
      D => command_1(5),
      Q => command(5)
    );
\command_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => command_regn_0_0,
      CE => \command[0]_i_1_n_0\,
      CLR => \^ar\(0),
      D => command_1(6),
      Q => command(6)
    );
\command_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => command_regn_0_0,
      CE => \command[0]_i_1_n_0\,
      CLR => \^ar\(0),
      D => command_1(7),
      Q => command(7)
    );
command_regi_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => CLK,
      O => command_regn_0_0
    );
\completion_ctrl_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^ar\(0),
      D => FDC_I_n_35,
      Q => completion_ctrl
    );
sel_n_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \command[0]_i_1_n_0\,
      I1 => \Use_BSCAN.PORT_Selector_reg[0]_1\,
      I2 => sel_n,
      O => sel_n_i_1_n_0
    );
sel_n_reg: unisim.vcomponents.FDPE
     port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => '1',
      D => sel_n_i_1_n_0,
      PRE => \^ar\(0),
      Q => sel_n
    );
set_Ext_BRK_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Debug_Rst_i0,
      CLR => \^ar\(0),
      D => \tdi_shifter_reg_n_0_[2]\,
      Q => set_Ext_BRK
    );
\shift_Count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \^q\(0),
      I1 => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      I2 => A1,
      O => \p_0_in__1\(1)
    );
\shift_Count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => A1,
      I1 => \^q\(0),
      I2 => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      I3 => A2,
      O => \p_0_in__1\(2)
    );
\shift_Count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => A2,
      I1 => \^q\(0),
      I2 => A1,
      I3 => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      I4 => A3,
      O => \p_0_in__1\(3)
    );
\shift_Count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => A3,
      I1 => A1,
      I2 => \^q\(0),
      I3 => A2,
      I4 => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      I5 => \shift_Count_reg__0\(4),
      O => \p_0_in__1\(4)
    );
\shift_Count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => '1',
      CLR => \^ar\(0),
      D => \shift_Count_reg[0]_0\(0),
      Q => \^q\(0)
    );
\shift_Count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => '1',
      CLR => \^ar\(0),
      D => \p_0_in__1\(1),
      Q => A1
    );
\shift_Count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => '1',
      CLR => \^ar\(0),
      D => \p_0_in__1\(2),
      Q => A2
    );
\shift_Count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => '1',
      CLR => \^ar\(0),
      D => \p_0_in__1\(3),
      Q => A3
    );
\shift_Count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => '1',
      CLR => \^ar\(0),
      D => \p_0_in__1\(4),
      Q => \shift_Count_reg__0\(4)
    );
\tdi_shifter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \Use_BSCAN.PORT_Selector_reg[3]\(2),
      I1 => \Use_BSCAN.PORT_Selector_reg[3]\(3),
      I2 => \Use_BSCAN.PORT_Selector_reg[3]\(1),
      I3 => \Use_BSCAN.PORT_Selector_reg[3]\(0),
      I4 => sel,
      I5 => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      O => tdi_shifter0
    );
\tdi_shifter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => tdi_shifter0,
      CLR => \^ar\(0),
      D => Dbg_TDI_31,
      Q => p_1_in_1
    );
\tdi_shifter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => tdi_shifter0,
      CLR => \^ar\(0),
      D => p_1_in_1,
      Q => \tdi_shifter_reg_n_0_[1]\
    );
\tdi_shifter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => tdi_shifter0,
      CLR => \^ar\(0),
      D => \tdi_shifter_reg_n_0_[1]\,
      Q => \tdi_shifter_reg_n_0_[2]\
    );
\tdi_shifter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => tdi_shifter0,
      CLR => \^ar\(0),
      D => \tdi_shifter_reg_n_0_[2]\,
      Q => p_0_in_2
    );
\tdi_shifter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => tdi_shifter0,
      CLR => \^ar\(0),
      D => p_0_in_2,
      Q => \tdi_shifter_reg_n_0_[4]\
    );
\tdi_shifter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => tdi_shifter0,
      CLR => \^ar\(0),
      D => \tdi_shifter_reg_n_0_[4]\,
      Q => \tdi_shifter_reg_n_0_[5]\
    );
\tdi_shifter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => tdi_shifter0,
      CLR => \^ar\(0),
      D => \tdi_shifter_reg_n_0_[5]\,
      Q => \tdi_shifter_reg_n_0_[6]\
    );
\tdi_shifter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]\,
      CE => tdi_shifter0,
      CLR => \^ar\(0),
      D => \tdi_shifter_reg_n_0_[6]\,
      Q => \tdi_shifter_reg_n_0_[7]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment is
  port (
    \s_axi_rresp_i_reg[1]_0\ : out STD_LOGIC;
    \s_axi_rresp_i_reg[1]_1\ : out STD_LOGIC;
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Use_Uart.enable_interrupts_reg\ : out STD_LOGIC;
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 0 to 0 );
    clear_Ext_BRK : out STD_LOGIC;
    reset_RX_FIFO : out STD_LOGIC;
    reset_TX_FIFO : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    FIFO_Write : out STD_LOGIC;
    bus2ip_wrce : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ARREADY : out STD_LOGIC;
    bus2ip_rdce : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Use_Uart.enable_interrupts_reg_0\ : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_ARESETN_0 : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    tx_Buffer_Full : in STD_LOGIC;
    rx_Data_Present : in STD_LOGIC;
    RX_Data : in STD_LOGIC_VECTOR ( 0 to 7 );
    p_0_in : in STD_LOGIC;
    fifo_Data_Present : in STD_LOGIC;
    enable_interrupts : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment is
  signal I_DECODER_n_23 : STD_LOGIC;
  signal I_DECODER_n_24 : STD_LOGIC;
  signal I_DECODER_n_25 : STD_LOGIC;
  signal I_DECODER_n_6 : STD_LOGIC;
  signal I_DECODER_n_7 : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \bus2ip_addr_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[3]_i_3_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[2]\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[3]\ : STD_LOGIC;
  signal bus2ip_rnw_i : STD_LOGIC;
  signal bus2ip_rnw_i03_out : STD_LOGIC;
  signal bus2ip_rnw_i_i_1_n_0 : STD_LOGIC;
  signal ip2bus_error : STD_LOGIC;
  signal rst : STD_LOGIC;
  signal s_axi_rdata_i : STD_LOGIC;
  signal start2 : STD_LOGIC;
  signal start2_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  signal uart_ip2bus_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bus2ip_addr_i[3]_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of start2_i_1 : label is "soft_lutpair28";
begin
  S_AXI_BRESP(0) <= \^s_axi_bresp\(0);
  S_AXI_BVALID <= \^s_axi_bvalid\;
  S_AXI_RVALID <= \^s_axi_rvalid\;
I_DECODER: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder
     port map (
      D(1) => I_DECODER_n_6,
      D(0) => I_DECODER_n_7,
      FIFO_Write => FIFO_Write,
      Q => start2,
      RX_Data(0 to 7) => RX_Data(0 to 7),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BRESP(0) => \^s_axi_bresp\(0),
      S_AXI_BVALID => \^s_axi_bvalid\,
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RVALID => \^s_axi_rvalid\,
      S_AXI_WDATA(3 downto 0) => S_AXI_WDATA(3 downto 0),
      S_AXI_WVALID => \state[1]_i_3_n_0\,
      \Use_Uart.enable_interrupts_reg\ => \Use_Uart.enable_interrupts_reg\,
      \Use_Uart.enable_interrupts_reg_0\ => \Use_Uart.enable_interrupts_reg_0\,
      \bus2ip_addr_i_reg[2]\ => \bus2ip_addr_i_reg_n_0_[2]\,
      \bus2ip_addr_i_reg[3]\ => \bus2ip_addr_i_reg_n_0_[3]\,
      bus2ip_rdce(0) => bus2ip_rdce(0),
      bus2ip_rnw_i => bus2ip_rnw_i,
      bus2ip_wrce(0) => bus2ip_wrce(0),
      clear_Ext_BRK => clear_Ext_BRK,
      enable_interrupts => enable_interrupts,
      fifo_Data_Present => fifo_Data_Present,
      ip2bus_error => ip2bus_error,
      \out\ => \out\,
      p_0_in => p_0_in,
      reset_RX_FIFO => reset_RX_FIFO,
      reset_TX_FIFO => reset_TX_FIFO,
      rx_Data_Present => rx_Data_Present,
      \s_axi_bresp_i_reg[1]\ => I_DECODER_n_25,
      s_axi_bvalid_i_reg => I_DECODER_n_24,
      \s_axi_rdata_i_reg[7]\(7 downto 0) => uart_ip2bus_data(7 downto 0),
      \s_axi_rresp_i_reg[1]\ => \s_axi_rresp_i_reg[1]_0\,
      \s_axi_rresp_i_reg[1]_0\ => \s_axi_rresp_i_reg[1]_1\,
      s_axi_rvalid_i_reg => I_DECODER_n_23,
      s_axi_rvalid_i_reg_0 => \state[1]_i_2_n_0\,
      \state_reg[1]\(1 downto 0) => state(1 downto 0),
      tx_Buffer_Full => tx_Buffer_Full
    );
\bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => S_AXI_ARADDR(0),
      I1 => bus2ip_rnw_i03_out,
      I2 => S_AXI_AWADDR(0),
      I3 => \bus2ip_addr_i[3]_i_3_n_0\,
      I4 => \bus2ip_addr_i_reg_n_0_[2]\,
      O => \bus2ip_addr_i[2]_i_1_n_0\
    );
\bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => S_AXI_ARADDR(1),
      I1 => bus2ip_rnw_i03_out,
      I2 => S_AXI_AWADDR(1),
      I3 => \bus2ip_addr_i[3]_i_3_n_0\,
      I4 => \bus2ip_addr_i_reg_n_0_[3]\,
      O => \bus2ip_addr_i[3]_i_1_n_0\
    );
\bus2ip_addr_i[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => state(0),
      I2 => state(1),
      O => bus2ip_rnw_i03_out
    );
\bus2ip_addr_i[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03020202"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => state(1),
      I2 => state(0),
      I3 => S_AXI_AWVALID,
      I4 => S_AXI_WVALID,
      O => \bus2ip_addr_i[3]_i_3_n_0\
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \bus2ip_addr_i[2]_i_1_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[2]\,
      R => rst
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \bus2ip_addr_i[3]_i_1_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[3]\,
      R => rst
    );
bus2ip_rnw_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02020202"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => state(1),
      I2 => state(0),
      I3 => S_AXI_AWVALID,
      I4 => S_AXI_WVALID,
      I5 => bus2ip_rnw_i,
      O => bus2ip_rnw_i_i_1_n_0
    );
bus2ip_rnw_i_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => bus2ip_rnw_i_i_1_n_0,
      Q => bus2ip_rnw_i,
      R => rst
    );
rst_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_ARESETN_0,
      Q => rst,
      R => '0'
    );
\s_axi_bresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => I_DECODER_n_25,
      Q => \^s_axi_bresp\(0),
      R => rst
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => I_DECODER_n_24,
      Q => \^s_axi_bvalid\,
      R => rst
    );
\s_axi_rdata_i[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => s_axi_rdata_i
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => uart_ip2bus_data(0),
      Q => S_AXI_RDATA(0),
      R => rst
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => uart_ip2bus_data(1),
      Q => S_AXI_RDATA(1),
      R => rst
    );
\s_axi_rdata_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => uart_ip2bus_data(2),
      Q => S_AXI_RDATA(2),
      R => rst
    );
\s_axi_rdata_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => uart_ip2bus_data(3),
      Q => S_AXI_RDATA(3),
      R => rst
    );
\s_axi_rdata_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => uart_ip2bus_data(4),
      Q => S_AXI_RDATA(4),
      R => rst
    );
\s_axi_rdata_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => uart_ip2bus_data(5),
      Q => S_AXI_RDATA(5),
      R => rst
    );
\s_axi_rdata_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => uart_ip2bus_data(6),
      Q => S_AXI_RDATA(6),
      R => rst
    );
\s_axi_rdata_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => uart_ip2bus_data(7),
      Q => S_AXI_RDATA(7),
      R => rst
    );
\s_axi_rresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => ip2bus_error,
      Q => S_AXI_RRESP(0),
      R => rst
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => I_DECODER_n_23,
      Q => \^s_axi_rvalid\,
      R => rst
    );
start2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000F0008"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => S_AXI_WVALID,
      I2 => state(1),
      I3 => state(0),
      I4 => S_AXI_ARVALID,
      O => start2_i_1_n_0
    );
start2_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => start2_i_1_n_0,
      Q => start2,
      R => rst
    );
\state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => S_AXI_RREADY,
      I1 => \^s_axi_rvalid\,
      I2 => S_AXI_BREADY,
      I3 => \^s_axi_bvalid\,
      O => \state[1]_i_2_n_0\
    );
\state[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => S_AXI_WVALID,
      O => \state[1]_i_3_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => I_DECODER_n_7,
      Q => state(0),
      R => rst
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => I_DECODER_n_6,
      Q => state(1),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MDM_Core is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    rx_Data_Present : out STD_LOGIC;
    RX_Data : out STD_LOGIC_VECTOR ( 0 to 7 );
    fifo_Data_Present : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    \Use_Uart.clear_Ext_BRK_reg_0\ : out STD_LOGIC;
    Ext_NM_BRK : out STD_LOGIC;
    Debug_SYS_Rst : out STD_LOGIC;
    Dbg_Rst_0 : out STD_LOGIC;
    Dbg_Disable_0 : out STD_LOGIC;
    Ext_BRK : out STD_LOGIC;
    enable_interrupts : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    tdo : out STD_LOGIC;
    tx_Buffer_Full : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    \p_54_out__0\ : out STD_LOGIC;
    \p_31_out__0\ : out STD_LOGIC;
    Dbg_Reg_En_0 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Ext_JTAG_SEL : out STD_LOGIC;
    \Use_Serial_Unified_Completion.count_reg[4]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Use_Serial_Unified_Completion.completion_status_reg[15]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Interrupt : out STD_LOGIC;
    CLK : in STD_LOGIC;
    \Use_BSCAN.PORT_Selector_reg[0]_0\ : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    bus2ip_wrce : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset_RX_FIFO : in STD_LOGIC;
    reset_TX_FIFO : in STD_LOGIC;
    clear_Ext_BRK : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\ : in STD_LOGIC;
    shift_n_reset : in STD_LOGIC;
    \Use_BSCAN.PORT_Selector_reg[0]_1\ : in STD_LOGIC;
    Dbg_TDO_0 : in STD_LOGIC;
    \Use_BSCAN.PORT_Selector_reg[0]_2\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    sel : in STD_LOGIC;
    Ext_JTAG_TDO : in STD_LOGIC;
    FIFO_Write : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ : in STD_LOGIC;
    bus2ip_rdce : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ARESETN : in STD_LOGIC;
    \Use_Serial_Unified_Completion.count_reg[5]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \shift_Count_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Scan_Reset : in STD_LOGIC;
    Scan_Reset_Sel : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Dbg_TDI_31 : in STD_LOGIC;
    \Use_BSCAN.PORT_Selector_reg[0]_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Using_FPGA.Native\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \command_reg[5]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MDM_Core;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MDM_Core is
  signal Config_Reg : STD_LOGIC_VECTOR ( 0 to 0 );
  signal MDM_SEL : STD_LOGIC;
  signal PORT_Selector : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal PORT_Selector_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Q_0 : STD_LOGIC;
  signal TDI_Shifter : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \Use_BSCAN.Config_Reg_reg[11]_MDM_Core_I1_Use_BSCAN.Config_Reg_reg_c_12_n_0\ : STD_LOGIC;
  signal \Use_BSCAN.Config_Reg_reg[12]_srl13_MDM_Core_I1_Use_BSCAN.Config_Reg_reg_c_11_n_0\ : STD_LOGIC;
  signal \Use_BSCAN.Config_Reg_reg[27]_MDM_Core_I1_Use_BSCAN.Config_Reg_reg_c_1_n_0\ : STD_LOGIC;
  signal \Use_BSCAN.Config_Reg_reg[28]_srl2_MDM_Core_I1_Use_BSCAN.Config_Reg_reg_c_0_n_0\ : STD_LOGIC;
  signal \Use_BSCAN.Config_Reg_reg[4]_MDM_Core_I1_Use_BSCAN.Config_Reg_reg_c_3_n_0\ : STD_LOGIC;
  signal \Use_BSCAN.Config_Reg_reg[5]_srl4_MDM_Core_I1_Use_BSCAN.Config_Reg_reg_c_2_n_0\ : STD_LOGIC;
  signal \Use_BSCAN.Config_Reg_reg_c_0_n_0\ : STD_LOGIC;
  signal \Use_BSCAN.Config_Reg_reg_c_10_n_0\ : STD_LOGIC;
  signal \Use_BSCAN.Config_Reg_reg_c_11_n_0\ : STD_LOGIC;
  signal \Use_BSCAN.Config_Reg_reg_c_12_n_0\ : STD_LOGIC;
  signal \Use_BSCAN.Config_Reg_reg_c_1_n_0\ : STD_LOGIC;
  signal \Use_BSCAN.Config_Reg_reg_c_2_n_0\ : STD_LOGIC;
  signal \Use_BSCAN.Config_Reg_reg_c_3_n_0\ : STD_LOGIC;
  signal \Use_BSCAN.Config_Reg_reg_c_4_n_0\ : STD_LOGIC;
  signal \Use_BSCAN.Config_Reg_reg_c_5_n_0\ : STD_LOGIC;
  signal \Use_BSCAN.Config_Reg_reg_c_6_n_0\ : STD_LOGIC;
  signal \Use_BSCAN.Config_Reg_reg_c_7_n_0\ : STD_LOGIC;
  signal \Use_BSCAN.Config_Reg_reg_c_8_n_0\ : STD_LOGIC;
  signal \Use_BSCAN.Config_Reg_reg_c_9_n_0\ : STD_LOGIC;
  signal \Use_BSCAN.Config_Reg_reg_c_n_0\ : STD_LOGIC;
  signal \Use_BSCAN.Config_Reg_reg_gate__0_n_0\ : STD_LOGIC;
  signal \Use_BSCAN.Config_Reg_reg_gate__1_n_0\ : STD_LOGIC;
  signal \Use_BSCAN.Config_Reg_reg_gate_n_0\ : STD_LOGIC;
  signal \Use_BSCAN.Config_Reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \Use_BSCAN.Config_Reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \Use_BSCAN.Config_Reg_reg_n_0_[25]\ : STD_LOGIC;
  signal \Use_BSCAN.Config_Reg_reg_n_0_[26]\ : STD_LOGIC;
  signal \Use_BSCAN.Config_Reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \Use_BSCAN.Config_Reg_reg_n_0_[30]\ : STD_LOGIC;
  signal \Use_BSCAN.Config_Reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \Use_BSCAN.Config_Reg_reg_n_0_[9]\ : STD_LOGIC;
  signal \Use_BSCAN.PORT_Selector_regn_0_0\ : STD_LOGIC;
  signal \Use_E2.BSCANE2_I_i_2_n_0\ : STD_LOGIC;
  signal \^use_uart.clear_ext_brk_reg_0\ : STD_LOGIC;
  signal \Use_Uart.clear_Ext_BRK_reg_n_0\ : STD_LOGIC;
  signal \Use_Uart.reset_RX_FIFO_reg_n_0\ : STD_LOGIC;
  signal \Use_Uart.reset_TX_FIFO_reg_n_0\ : STD_LOGIC;
  signal config_with_scan_reset : STD_LOGIC;
  signal \^enable_interrupts\ : STD_LOGIC;
  signal p_2_out_1 : STD_LOGIC;
  signal tx_Buffer_Empty : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \Use_BSCAN.Config_Reg_reg[12]_srl13_MDM_Core_I1_Use_BSCAN.Config_Reg_reg_c_11\ : label is "U0/\MDM_Core_I1/Use_BSCAN.Config_Reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \Use_BSCAN.Config_Reg_reg[12]_srl13_MDM_Core_I1_Use_BSCAN.Config_Reg_reg_c_11\ : label is "U0/\MDM_Core_I1/Use_BSCAN.Config_Reg_reg[12]_srl13_MDM_Core_I1_Use_BSCAN.Config_Reg_reg_c_11 ";
  attribute srl_bus_name of \Use_BSCAN.Config_Reg_reg[28]_srl2_MDM_Core_I1_Use_BSCAN.Config_Reg_reg_c_0\ : label is "U0/\MDM_Core_I1/Use_BSCAN.Config_Reg_reg ";
  attribute srl_name of \Use_BSCAN.Config_Reg_reg[28]_srl2_MDM_Core_I1_Use_BSCAN.Config_Reg_reg_c_0\ : label is "U0/\MDM_Core_I1/Use_BSCAN.Config_Reg_reg[28]_srl2_MDM_Core_I1_Use_BSCAN.Config_Reg_reg_c_0 ";
  attribute srl_bus_name of \Use_BSCAN.Config_Reg_reg[5]_srl4_MDM_Core_I1_Use_BSCAN.Config_Reg_reg_c_2\ : label is "U0/\MDM_Core_I1/Use_BSCAN.Config_Reg_reg ";
  attribute srl_name of \Use_BSCAN.Config_Reg_reg[5]_srl4_MDM_Core_I1_Use_BSCAN.Config_Reg_reg_c_2\ : label is "U0/\MDM_Core_I1/Use_BSCAN.Config_Reg_reg[5]_srl4_MDM_Core_I1_Use_BSCAN.Config_Reg_reg_c_2 ";
begin
  \Use_Uart.clear_Ext_BRK_reg_0\ <= \^use_uart.clear_ext_brk_reg_0\;
  enable_interrupts <= \^enable_interrupts\;
Ext_JTAG_SEL_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => sel,
      I1 => PORT_Selector(1),
      I2 => PORT_Selector(0),
      I3 => PORT_Selector(3),
      I4 => PORT_Selector(2),
      O => Ext_JTAG_SEL
    );
JTAG_CONTROL_I: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JTAG_CONTROL
     port map (
      AR(0) => config_with_scan_reset,
      Bus_RNW_reg => Bus_RNW_reg,
      CLK => CLK,
      D(0) => D(0),
      Dbg_Reg_En_0(0 to 7) => Dbg_Reg_En_0(0 to 7),
      Dbg_Rst_0 => Dbg_Rst_0,
      Dbg_TDI_31 => Dbg_TDI_31,
      Dbg_TDO_0 => Dbg_TDO_0,
      Debug_SYS_Rst => Debug_SYS_Rst,
      E(0) => E(0),
      Ext_BRK => Ext_BRK,
      Ext_NM_BRK => Ext_NM_BRK,
      FIFO_Write => FIFO_Write,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      Interrupt => Interrupt,
      Q(0) => Q(0),
      Q_0 => Q_0,
      RX_Data(0 to 7) => RX_Data(0 to 7),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_WDATA(7 downto 0) => S_AXI_WDATA(7 downto 0),
      Scan_Reset => Scan_Reset,
      Scan_Reset_Sel => Scan_Reset_Sel,
      \Use_BSCAN.PORT_Selector_reg[0]\ => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      \Use_BSCAN.PORT_Selector_reg[0]_0\ => \Use_BSCAN.PORT_Selector_reg[0]_1\,
      \Use_BSCAN.PORT_Selector_reg[0]_1\ => \Use_BSCAN.PORT_Selector_reg[0]_2\,
      \Use_BSCAN.PORT_Selector_reg[0]_2\(0) => \Use_BSCAN.PORT_Selector_reg[0]_3\(0),
      \Use_BSCAN.PORT_Selector_reg[2]\ => \Use_E2.BSCANE2_I_i_2_n_0\,
      \Use_BSCAN.PORT_Selector_reg[3]\(3 downto 0) => PORT_Selector(3 downto 0),
      \Use_Serial_Unified_Completion.completion_block_reg_0\ => \p_54_out__0\,
      \Use_Serial_Unified_Completion.completion_status_reg[15]_0\(0) => \Use_Serial_Unified_Completion.completion_status_reg[15]\(0),
      \Use_Serial_Unified_Completion.count_reg[4]_0\(0) => \Use_Serial_Unified_Completion.count_reg[4]\(0),
      \Use_Serial_Unified_Completion.count_reg[5]_0\(0) => \Use_Serial_Unified_Completion.count_reg[5]\(0),
      \Use_Uart.clear_Ext_BRK_reg\ => \Use_Uart.clear_Ext_BRK_reg_n_0\,
      \Use_Uart.reset_RX_FIFO_reg\ => \Use_Uart.reset_RX_FIFO_reg_n_0\,
      \Use_Uart.reset_TX_FIFO_reg\ => \Use_Uart.reset_TX_FIFO_reg_n_0\,
      \Using_FPGA.Native\ => rx_Data_Present,
      \Using_FPGA.Native_0\ => fifo_Data_Present,
      \Using_FPGA.Native_1\(0) => \Using_FPGA.Native\(0),
      bus2ip_rdce(0) => bus2ip_rdce(0),
      \command_reg[5]_0\(0) => \command_reg[5]\(0),
      enable_interrupts => \^enable_interrupts\,
      \out\ => \out\,
      p_0_in => p_0_in,
      \p_31_out__0\ => \p_31_out__0\,
      sel => sel,
      \shift_Count_reg[0]_0\(0) => \shift_Count_reg[0]\(0),
      tdo => tdo,
      tx_Buffer_Empty => tx_Buffer_Empty,
      tx_Buffer_Full => tx_Buffer_Full
    );
\Use_BSCAN.Config_Reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      CE => '1',
      CLR => shift_n_reset,
      D => \Use_BSCAN.Config_Reg_reg_n_0_[1]\,
      Q => Config_Reg(0)
    );
\Use_BSCAN.Config_Reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      CE => '1',
      CLR => shift_n_reset,
      D => \Use_BSCAN.Config_Reg_reg_gate__0_n_0\,
      Q => \Use_BSCAN.Config_Reg_reg_n_0_[10]\
    );
\Use_BSCAN.Config_Reg_reg[11]_MDM_Core_I1_Use_BSCAN.Config_Reg_reg_c_12\: unisim.vcomponents.FDRE
     port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      CE => '1',
      D => \Use_BSCAN.Config_Reg_reg[12]_srl13_MDM_Core_I1_Use_BSCAN.Config_Reg_reg_c_11_n_0\,
      Q => \Use_BSCAN.Config_Reg_reg[11]_MDM_Core_I1_Use_BSCAN.Config_Reg_reg_c_12_n_0\,
      R => '0'
    );
\Use_BSCAN.Config_Reg_reg[12]_srl13_MDM_Core_I1_Use_BSCAN.Config_Reg_reg_c_11\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      D => \Use_BSCAN.Config_Reg_reg_n_0_[25]\,
      Q => \Use_BSCAN.Config_Reg_reg[12]_srl13_MDM_Core_I1_Use_BSCAN.Config_Reg_reg_c_11_n_0\
    );
\Use_BSCAN.Config_Reg_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      CE => '1',
      D => \Use_BSCAN.Config_Reg_reg_n_0_[2]\,
      PRE => shift_n_reset,
      Q => \Use_BSCAN.Config_Reg_reg_n_0_[1]\
    );
\Use_BSCAN.Config_Reg_reg[25]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      CE => '1',
      D => \Use_BSCAN.Config_Reg_reg_n_0_[26]\,
      PRE => shift_n_reset,
      Q => \Use_BSCAN.Config_Reg_reg_n_0_[25]\
    );
\Use_BSCAN.Config_Reg_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      CE => '1',
      CLR => shift_n_reset,
      D => \Use_BSCAN.Config_Reg_reg_gate_n_0\,
      Q => \Use_BSCAN.Config_Reg_reg_n_0_[26]\
    );
\Use_BSCAN.Config_Reg_reg[27]_MDM_Core_I1_Use_BSCAN.Config_Reg_reg_c_1\: unisim.vcomponents.FDRE
     port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      CE => '1',
      D => \Use_BSCAN.Config_Reg_reg[28]_srl2_MDM_Core_I1_Use_BSCAN.Config_Reg_reg_c_0_n_0\,
      Q => \Use_BSCAN.Config_Reg_reg[27]_MDM_Core_I1_Use_BSCAN.Config_Reg_reg_c_1_n_0\,
      R => '0'
    );
\Use_BSCAN.Config_Reg_reg[28]_srl2_MDM_Core_I1_Use_BSCAN.Config_Reg_reg_c_0\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      D => \Use_BSCAN.Config_Reg_reg_n_0_[30]\,
      Q => \Use_BSCAN.Config_Reg_reg[28]_srl2_MDM_Core_I1_Use_BSCAN.Config_Reg_reg_c_0_n_0\
    );
\Use_BSCAN.Config_Reg_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      CE => '1',
      D => \Use_BSCAN.Config_Reg_reg_n_0_[3]\,
      PRE => shift_n_reset,
      Q => \Use_BSCAN.Config_Reg_reg_n_0_[2]\
    );
\Use_BSCAN.Config_Reg_reg[30]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      CE => '1',
      D => '0',
      PRE => shift_n_reset,
      Q => \Use_BSCAN.Config_Reg_reg_n_0_[30]\
    );
\Use_BSCAN.Config_Reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      CE => '1',
      CLR => shift_n_reset,
      D => \Use_BSCAN.Config_Reg_reg_gate__1_n_0\,
      Q => \Use_BSCAN.Config_Reg_reg_n_0_[3]\
    );
\Use_BSCAN.Config_Reg_reg[4]_MDM_Core_I1_Use_BSCAN.Config_Reg_reg_c_3\: unisim.vcomponents.FDRE
     port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      CE => '1',
      D => \Use_BSCAN.Config_Reg_reg[5]_srl4_MDM_Core_I1_Use_BSCAN.Config_Reg_reg_c_2_n_0\,
      Q => \Use_BSCAN.Config_Reg_reg[4]_MDM_Core_I1_Use_BSCAN.Config_Reg_reg_c_3_n_0\,
      R => '0'
    );
\Use_BSCAN.Config_Reg_reg[5]_srl4_MDM_Core_I1_Use_BSCAN.Config_Reg_reg_c_2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      D => \Use_BSCAN.Config_Reg_reg_n_0_[9]\,
      Q => \Use_BSCAN.Config_Reg_reg[5]_srl4_MDM_Core_I1_Use_BSCAN.Config_Reg_reg_c_2_n_0\
    );
\Use_BSCAN.Config_Reg_reg[9]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      CE => '1',
      D => \Use_BSCAN.Config_Reg_reg_n_0_[10]\,
      PRE => shift_n_reset,
      Q => \Use_BSCAN.Config_Reg_reg_n_0_[9]\
    );
\Use_BSCAN.Config_Reg_reg_c\: unisim.vcomponents.FDCE
     port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      CE => '1',
      CLR => shift_n_reset,
      D => '1',
      Q => \Use_BSCAN.Config_Reg_reg_c_n_0\
    );
\Use_BSCAN.Config_Reg_reg_c_0\: unisim.vcomponents.FDCE
     port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      CE => '1',
      CLR => shift_n_reset,
      D => \Use_BSCAN.Config_Reg_reg_c_n_0\,
      Q => \Use_BSCAN.Config_Reg_reg_c_0_n_0\
    );
\Use_BSCAN.Config_Reg_reg_c_1\: unisim.vcomponents.FDCE
     port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      CE => '1',
      CLR => shift_n_reset,
      D => \Use_BSCAN.Config_Reg_reg_c_0_n_0\,
      Q => \Use_BSCAN.Config_Reg_reg_c_1_n_0\
    );
\Use_BSCAN.Config_Reg_reg_c_10\: unisim.vcomponents.FDCE
     port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      CE => '1',
      CLR => shift_n_reset,
      D => \Use_BSCAN.Config_Reg_reg_c_9_n_0\,
      Q => \Use_BSCAN.Config_Reg_reg_c_10_n_0\
    );
\Use_BSCAN.Config_Reg_reg_c_11\: unisim.vcomponents.FDCE
     port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      CE => '1',
      CLR => shift_n_reset,
      D => \Use_BSCAN.Config_Reg_reg_c_10_n_0\,
      Q => \Use_BSCAN.Config_Reg_reg_c_11_n_0\
    );
\Use_BSCAN.Config_Reg_reg_c_12\: unisim.vcomponents.FDCE
     port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      CE => '1',
      CLR => shift_n_reset,
      D => \Use_BSCAN.Config_Reg_reg_c_11_n_0\,
      Q => \Use_BSCAN.Config_Reg_reg_c_12_n_0\
    );
\Use_BSCAN.Config_Reg_reg_c_2\: unisim.vcomponents.FDCE
     port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      CE => '1',
      CLR => shift_n_reset,
      D => \Use_BSCAN.Config_Reg_reg_c_1_n_0\,
      Q => \Use_BSCAN.Config_Reg_reg_c_2_n_0\
    );
\Use_BSCAN.Config_Reg_reg_c_3\: unisim.vcomponents.FDCE
     port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      CE => '1',
      CLR => shift_n_reset,
      D => \Use_BSCAN.Config_Reg_reg_c_2_n_0\,
      Q => \Use_BSCAN.Config_Reg_reg_c_3_n_0\
    );
\Use_BSCAN.Config_Reg_reg_c_4\: unisim.vcomponents.FDCE
     port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      CE => '1',
      CLR => shift_n_reset,
      D => \Use_BSCAN.Config_Reg_reg_c_3_n_0\,
      Q => \Use_BSCAN.Config_Reg_reg_c_4_n_0\
    );
\Use_BSCAN.Config_Reg_reg_c_5\: unisim.vcomponents.FDCE
     port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      CE => '1',
      CLR => shift_n_reset,
      D => \Use_BSCAN.Config_Reg_reg_c_4_n_0\,
      Q => \Use_BSCAN.Config_Reg_reg_c_5_n_0\
    );
\Use_BSCAN.Config_Reg_reg_c_6\: unisim.vcomponents.FDCE
     port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      CE => '1',
      CLR => shift_n_reset,
      D => \Use_BSCAN.Config_Reg_reg_c_5_n_0\,
      Q => \Use_BSCAN.Config_Reg_reg_c_6_n_0\
    );
\Use_BSCAN.Config_Reg_reg_c_7\: unisim.vcomponents.FDCE
     port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      CE => '1',
      CLR => shift_n_reset,
      D => \Use_BSCAN.Config_Reg_reg_c_6_n_0\,
      Q => \Use_BSCAN.Config_Reg_reg_c_7_n_0\
    );
\Use_BSCAN.Config_Reg_reg_c_8\: unisim.vcomponents.FDCE
     port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      CE => '1',
      CLR => shift_n_reset,
      D => \Use_BSCAN.Config_Reg_reg_c_7_n_0\,
      Q => \Use_BSCAN.Config_Reg_reg_c_8_n_0\
    );
\Use_BSCAN.Config_Reg_reg_c_9\: unisim.vcomponents.FDCE
     port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      CE => '1',
      CLR => shift_n_reset,
      D => \Use_BSCAN.Config_Reg_reg_c_8_n_0\,
      Q => \Use_BSCAN.Config_Reg_reg_c_9_n_0\
    );
\Use_BSCAN.Config_Reg_reg_gate\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Use_BSCAN.Config_Reg_reg[27]_MDM_Core_I1_Use_BSCAN.Config_Reg_reg_c_1_n_0\,
      I1 => \Use_BSCAN.Config_Reg_reg_c_1_n_0\,
      O => \Use_BSCAN.Config_Reg_reg_gate_n_0\
    );
\Use_BSCAN.Config_Reg_reg_gate__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Use_BSCAN.Config_Reg_reg[11]_MDM_Core_I1_Use_BSCAN.Config_Reg_reg_c_12_n_0\,
      I1 => \Use_BSCAN.Config_Reg_reg_c_12_n_0\,
      O => \Use_BSCAN.Config_Reg_reg_gate__0_n_0\
    );
\Use_BSCAN.Config_Reg_reg_gate__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Use_BSCAN.Config_Reg_reg[4]_MDM_Core_I1_Use_BSCAN.Config_Reg_reg_c_3_n_0\,
      I1 => \Use_BSCAN.Config_Reg_reg_c_3_n_0\,
      O => \Use_BSCAN.Config_Reg_reg_gate__1_n_0\
    );
\Use_BSCAN.PORT_Selector_1[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => sel,
      I1 => PORT_Selector(0),
      I2 => PORT_Selector(1),
      I3 => PORT_Selector(3),
      I4 => PORT_Selector(2),
      O => MDM_SEL
    );
\Use_BSCAN.PORT_Selector_1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => MDM_SEL,
      CLR => AR(0),
      D => TDI_Shifter(0),
      Q => PORT_Selector_1(0)
    );
\Use_BSCAN.PORT_Selector_1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => MDM_SEL,
      CLR => AR(0),
      D => TDI_Shifter(1),
      Q => PORT_Selector_1(1)
    );
\Use_BSCAN.PORT_Selector_1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => MDM_SEL,
      CLR => AR(0),
      D => TDI_Shifter(2),
      Q => PORT_Selector_1(2)
    );
\Use_BSCAN.PORT_Selector_1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => MDM_SEL,
      CLR => AR(0),
      D => TDI_Shifter(3),
      Q => PORT_Selector_1(3)
    );
\Use_BSCAN.PORT_Selector_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_regn_0_0\,
      CE => '1',
      CLR => AR(0),
      D => PORT_Selector_1(0),
      Q => PORT_Selector(0)
    );
\Use_BSCAN.PORT_Selector_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_regn_0_0\,
      CE => '1',
      CLR => AR(0),
      D => PORT_Selector_1(1),
      Q => PORT_Selector(1)
    );
\Use_BSCAN.PORT_Selector_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_regn_0_0\,
      CE => '1',
      CLR => AR(0),
      D => PORT_Selector_1(2),
      Q => PORT_Selector(2)
    );
\Use_BSCAN.PORT_Selector_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_regn_0_0\,
      CE => '1',
      CLR => AR(0),
      D => PORT_Selector_1(3),
      Q => PORT_Selector(3)
    );
\Use_BSCAN.PORT_Selector_regi_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => CLK,
      O => \Use_BSCAN.PORT_Selector_regn_0_0\
    );
\Use_BSCAN.TDI_Shifter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => PORT_Selector(2),
      I1 => PORT_Selector(3),
      I2 => PORT_Selector(1),
      I3 => PORT_Selector(0),
      I4 => sel,
      I5 => \Use_BSCAN.PORT_Selector_reg[0]_1\,
      O => p_2_out_1
    );
\Use_BSCAN.TDI_Shifter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      CE => p_2_out_1,
      CLR => AR(0),
      D => TDI_Shifter(1),
      Q => TDI_Shifter(0)
    );
\Use_BSCAN.TDI_Shifter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      CE => p_2_out_1,
      CLR => AR(0),
      D => TDI_Shifter(2),
      Q => TDI_Shifter(1)
    );
\Use_BSCAN.TDI_Shifter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      CE => p_2_out_1,
      CLR => AR(0),
      D => TDI_Shifter(3),
      Q => TDI_Shifter(2)
    );
\Use_BSCAN.TDI_Shifter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \Use_BSCAN.PORT_Selector_reg[0]_0\,
      CE => p_2_out_1,
      CLR => AR(0),
      D => Dbg_TDI_31,
      Q => TDI_Shifter(3)
    );
\Use_BSCAN.jtag_disable_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => '0',
      PRE => config_with_scan_reset,
      Q => Dbg_Disable_0
    );
\Use_E2.BSCANE2_I_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFEEEFFEEEE"
    )
        port map (
      I0 => PORT_Selector(2),
      I1 => PORT_Selector(3),
      I2 => Ext_JTAG_TDO,
      I3 => PORT_Selector(0),
      I4 => Config_Reg(0),
      I5 => PORT_Selector(1),
      O => \Use_E2.BSCANE2_I_i_2_n_0\
    );
\Use_Uart.TX_Buffer_Empty_FDRE\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE
     port map (
      Q_0 => Q_0,
      S_AXI_ACLK => S_AXI_ACLK,
      bus2ip_wrce(0) => bus2ip_wrce(0),
      tx_Buffer_Empty => tx_Buffer_Empty
    );
\Use_Uart.clear_Ext_BRK_reg\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => clear_Ext_BRK,
      Q => \Use_Uart.clear_Ext_BRK_reg_n_0\,
      R => \^use_uart.clear_ext_brk_reg_0\
    );
\Use_Uart.enable_interrupts_reg\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\,
      Q => \^enable_interrupts\,
      R => \^use_uart.clear_ext_brk_reg_0\
    );
\Use_Uart.reset_RX_FIFO_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_ARESETN,
      O => \^use_uart.clear_ext_brk_reg_0\
    );
\Use_Uart.reset_RX_FIFO_reg\: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => reset_RX_FIFO,
      Q => \Use_Uart.reset_RX_FIFO_reg_n_0\,
      S => \^use_uart.clear_ext_brk_reg_0\
    );
\Use_Uart.reset_TX_FIFO_reg\: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => reset_TX_FIFO,
      Q => \Use_Uart.reset_TX_FIFO_reg_n_0\,
      S => \^use_uart.clear_ext_brk_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif is
  port (
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : out STD_LOGIC;
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg : out STD_LOGIC;
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 0 to 0 );
    clear_Ext_BRK : out STD_LOGIC;
    reset_RX_FIFO : out STD_LOGIC;
    reset_TX_FIFO : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    FIFO_Write : out STD_LOGIC;
    bus2ip_wrce : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ARREADY : out STD_LOGIC;
    bus2ip_rdce : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Use_Uart.enable_interrupts_reg\ : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_ARESETN_0 : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    tx_Buffer_Full : in STD_LOGIC;
    rx_Data_Present : in STD_LOGIC;
    RX_Data : in STD_LOGIC_VECTOR ( 0 to 7 );
    p_0_in : in STD_LOGIC;
    fifo_Data_Present : in STD_LOGIC;
    enable_interrupts : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif is
begin
I_SLAVE_ATTACHMENT: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment
     port map (
      FIFO_Write => FIFO_Write,
      RX_Data(0 to 7) => RX_Data(0 to 7),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(1 downto 0) => S_AXI_ARADDR(1 downto 0),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARESETN_0 => S_AXI_ARESETN_0,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(1 downto 0) => S_AXI_AWADDR(1 downto 0),
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BRESP(0) => S_AXI_BRESP(0),
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(7 downto 0) => S_AXI_RDATA(7 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RRESP(0) => S_AXI_RRESP(0),
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WDATA(3 downto 0) => S_AXI_WDATA(3 downto 0),
      S_AXI_WVALID => S_AXI_WVALID,
      \Use_Uart.enable_interrupts_reg\ => Bus_RNW_reg,
      \Use_Uart.enable_interrupts_reg_0\ => \Use_Uart.enable_interrupts_reg\,
      bus2ip_rdce(0) => bus2ip_rdce(0),
      bus2ip_wrce(0) => bus2ip_wrce(0),
      clear_Ext_BRK => clear_Ext_BRK,
      enable_interrupts => enable_interrupts,
      fifo_Data_Present => fifo_Data_Present,
      \out\ => \out\,
      p_0_in => p_0_in,
      reset_RX_FIFO => reset_RX_FIFO,
      reset_TX_FIFO => reset_TX_FIFO,
      rx_Data_Present => rx_Data_Present,
      \s_axi_rresp_i_reg[1]_0\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      \s_axi_rresp_i_reg[1]_1\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      tx_Buffer_Full => tx_Buffer_Full
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MDM is
  port (
    Config_Reset : in STD_LOGIC;
    Scan_Reset_Sel : in STD_LOGIC;
    Scan_Reset : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    M_AXI_ACLK : in STD_LOGIC;
    M_AXI_ARESETN : in STD_LOGIC;
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    Interrupt : out STD_LOGIC;
    Ext_BRK : out STD_LOGIC;
    Ext_NM_BRK : out STD_LOGIC;
    Debug_SYS_Rst : out STD_LOGIC;
    Trig_In_0 : in STD_LOGIC;
    Trig_Ack_In_0 : out STD_LOGIC;
    Trig_Out_0 : out STD_LOGIC;
    Trig_Ack_Out_0 : in STD_LOGIC;
    Trig_In_1 : in STD_LOGIC;
    Trig_Ack_In_1 : out STD_LOGIC;
    Trig_Out_1 : out STD_LOGIC;
    Trig_Ack_Out_1 : in STD_LOGIC;
    Trig_In_2 : in STD_LOGIC;
    Trig_Ack_In_2 : out STD_LOGIC;
    Trig_Out_2 : out STD_LOGIC;
    Trig_Ack_Out_2 : in STD_LOGIC;
    Trig_In_3 : in STD_LOGIC;
    Trig_Ack_In_3 : out STD_LOGIC;
    Trig_Out_3 : out STD_LOGIC;
    Trig_Ack_Out_3 : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    M_AXI_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_AWLOCK : out STD_LOGIC;
    M_AXI_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_AWVALID : out STD_LOGIC;
    M_AXI_AWREADY : in STD_LOGIC;
    M_AXI_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_WLAST : out STD_LOGIC;
    M_AXI_WVALID : out STD_LOGIC;
    M_AXI_WREADY : in STD_LOGIC;
    M_AXI_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_BVALID : in STD_LOGIC;
    M_AXI_BREADY : out STD_LOGIC;
    M_AXI_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_ARLOCK : out STD_LOGIC;
    M_AXI_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_ARVALID : out STD_LOGIC;
    M_AXI_ARREADY : in STD_LOGIC;
    M_AXI_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_RLAST : in STD_LOGIC;
    M_AXI_RVALID : in STD_LOGIC;
    M_AXI_RREADY : out STD_LOGIC;
    LMB_Data_Addr_0 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Read_0 : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Write_0 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Addr_Strobe_0 : out STD_LOGIC;
    LMB_Read_Strobe_0 : out STD_LOGIC;
    LMB_Write_Strobe_0 : out STD_LOGIC;
    LMB_Ready_0 : in STD_LOGIC;
    LMB_Wait_0 : in STD_LOGIC;
    LMB_CE_0 : in STD_LOGIC;
    LMB_UE_0 : in STD_LOGIC;
    LMB_Byte_Enable_0 : out STD_LOGIC_VECTOR ( 0 to 3 );
    LMB_Data_Addr_1 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Read_1 : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Write_1 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Addr_Strobe_1 : out STD_LOGIC;
    LMB_Read_Strobe_1 : out STD_LOGIC;
    LMB_Write_Strobe_1 : out STD_LOGIC;
    LMB_Ready_1 : in STD_LOGIC;
    LMB_Wait_1 : in STD_LOGIC;
    LMB_CE_1 : in STD_LOGIC;
    LMB_UE_1 : in STD_LOGIC;
    LMB_Byte_Enable_1 : out STD_LOGIC_VECTOR ( 0 to 3 );
    LMB_Data_Addr_2 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Read_2 : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Write_2 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Addr_Strobe_2 : out STD_LOGIC;
    LMB_Read_Strobe_2 : out STD_LOGIC;
    LMB_Write_Strobe_2 : out STD_LOGIC;
    LMB_Ready_2 : in STD_LOGIC;
    LMB_Wait_2 : in STD_LOGIC;
    LMB_CE_2 : in STD_LOGIC;
    LMB_UE_2 : in STD_LOGIC;
    LMB_Byte_Enable_2 : out STD_LOGIC_VECTOR ( 0 to 3 );
    LMB_Data_Addr_3 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Read_3 : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Write_3 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Addr_Strobe_3 : out STD_LOGIC;
    LMB_Read_Strobe_3 : out STD_LOGIC;
    LMB_Write_Strobe_3 : out STD_LOGIC;
    LMB_Ready_3 : in STD_LOGIC;
    LMB_Wait_3 : in STD_LOGIC;
    LMB_CE_3 : in STD_LOGIC;
    LMB_UE_3 : in STD_LOGIC;
    LMB_Byte_Enable_3 : out STD_LOGIC_VECTOR ( 0 to 3 );
    LMB_Data_Addr_4 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Read_4 : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Write_4 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Addr_Strobe_4 : out STD_LOGIC;
    LMB_Read_Strobe_4 : out STD_LOGIC;
    LMB_Write_Strobe_4 : out STD_LOGIC;
    LMB_Ready_4 : in STD_LOGIC;
    LMB_Wait_4 : in STD_LOGIC;
    LMB_CE_4 : in STD_LOGIC;
    LMB_UE_4 : in STD_LOGIC;
    LMB_Byte_Enable_4 : out STD_LOGIC_VECTOR ( 0 to 3 );
    LMB_Data_Addr_5 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Read_5 : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Write_5 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Addr_Strobe_5 : out STD_LOGIC;
    LMB_Read_Strobe_5 : out STD_LOGIC;
    LMB_Write_Strobe_5 : out STD_LOGIC;
    LMB_Ready_5 : in STD_LOGIC;
    LMB_Wait_5 : in STD_LOGIC;
    LMB_CE_5 : in STD_LOGIC;
    LMB_UE_5 : in STD_LOGIC;
    LMB_Byte_Enable_5 : out STD_LOGIC_VECTOR ( 0 to 3 );
    LMB_Data_Addr_6 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Read_6 : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Write_6 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Addr_Strobe_6 : out STD_LOGIC;
    LMB_Read_Strobe_6 : out STD_LOGIC;
    LMB_Write_Strobe_6 : out STD_LOGIC;
    LMB_Ready_6 : in STD_LOGIC;
    LMB_Wait_6 : in STD_LOGIC;
    LMB_CE_6 : in STD_LOGIC;
    LMB_UE_6 : in STD_LOGIC;
    LMB_Byte_Enable_6 : out STD_LOGIC_VECTOR ( 0 to 3 );
    LMB_Data_Addr_7 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Read_7 : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Write_7 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Addr_Strobe_7 : out STD_LOGIC;
    LMB_Read_Strobe_7 : out STD_LOGIC;
    LMB_Write_Strobe_7 : out STD_LOGIC;
    LMB_Ready_7 : in STD_LOGIC;
    LMB_Wait_7 : in STD_LOGIC;
    LMB_CE_7 : in STD_LOGIC;
    LMB_UE_7 : in STD_LOGIC;
    LMB_Byte_Enable_7 : out STD_LOGIC_VECTOR ( 0 to 3 );
    LMB_Data_Addr_8 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Read_8 : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Write_8 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Addr_Strobe_8 : out STD_LOGIC;
    LMB_Read_Strobe_8 : out STD_LOGIC;
    LMB_Write_Strobe_8 : out STD_LOGIC;
    LMB_Ready_8 : in STD_LOGIC;
    LMB_Wait_8 : in STD_LOGIC;
    LMB_CE_8 : in STD_LOGIC;
    LMB_UE_8 : in STD_LOGIC;
    LMB_Byte_Enable_8 : out STD_LOGIC_VECTOR ( 0 to 3 );
    LMB_Data_Addr_9 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Read_9 : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Write_9 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Addr_Strobe_9 : out STD_LOGIC;
    LMB_Read_Strobe_9 : out STD_LOGIC;
    LMB_Write_Strobe_9 : out STD_LOGIC;
    LMB_Ready_9 : in STD_LOGIC;
    LMB_Wait_9 : in STD_LOGIC;
    LMB_CE_9 : in STD_LOGIC;
    LMB_UE_9 : in STD_LOGIC;
    LMB_Byte_Enable_9 : out STD_LOGIC_VECTOR ( 0 to 3 );
    LMB_Data_Addr_10 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Read_10 : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Write_10 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Addr_Strobe_10 : out STD_LOGIC;
    LMB_Read_Strobe_10 : out STD_LOGIC;
    LMB_Write_Strobe_10 : out STD_LOGIC;
    LMB_Ready_10 : in STD_LOGIC;
    LMB_Wait_10 : in STD_LOGIC;
    LMB_CE_10 : in STD_LOGIC;
    LMB_UE_10 : in STD_LOGIC;
    LMB_Byte_Enable_10 : out STD_LOGIC_VECTOR ( 0 to 3 );
    LMB_Data_Addr_11 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Read_11 : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Write_11 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Addr_Strobe_11 : out STD_LOGIC;
    LMB_Read_Strobe_11 : out STD_LOGIC;
    LMB_Write_Strobe_11 : out STD_LOGIC;
    LMB_Ready_11 : in STD_LOGIC;
    LMB_Wait_11 : in STD_LOGIC;
    LMB_CE_11 : in STD_LOGIC;
    LMB_UE_11 : in STD_LOGIC;
    LMB_Byte_Enable_11 : out STD_LOGIC_VECTOR ( 0 to 3 );
    LMB_Data_Addr_12 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Read_12 : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Write_12 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Addr_Strobe_12 : out STD_LOGIC;
    LMB_Read_Strobe_12 : out STD_LOGIC;
    LMB_Write_Strobe_12 : out STD_LOGIC;
    LMB_Ready_12 : in STD_LOGIC;
    LMB_Wait_12 : in STD_LOGIC;
    LMB_CE_12 : in STD_LOGIC;
    LMB_UE_12 : in STD_LOGIC;
    LMB_Byte_Enable_12 : out STD_LOGIC_VECTOR ( 0 to 3 );
    LMB_Data_Addr_13 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Read_13 : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Write_13 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Addr_Strobe_13 : out STD_LOGIC;
    LMB_Read_Strobe_13 : out STD_LOGIC;
    LMB_Write_Strobe_13 : out STD_LOGIC;
    LMB_Ready_13 : in STD_LOGIC;
    LMB_Wait_13 : in STD_LOGIC;
    LMB_CE_13 : in STD_LOGIC;
    LMB_UE_13 : in STD_LOGIC;
    LMB_Byte_Enable_13 : out STD_LOGIC_VECTOR ( 0 to 3 );
    LMB_Data_Addr_14 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Read_14 : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Write_14 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Addr_Strobe_14 : out STD_LOGIC;
    LMB_Read_Strobe_14 : out STD_LOGIC;
    LMB_Write_Strobe_14 : out STD_LOGIC;
    LMB_Ready_14 : in STD_LOGIC;
    LMB_Wait_14 : in STD_LOGIC;
    LMB_CE_14 : in STD_LOGIC;
    LMB_UE_14 : in STD_LOGIC;
    LMB_Byte_Enable_14 : out STD_LOGIC_VECTOR ( 0 to 3 );
    LMB_Data_Addr_15 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Read_15 : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Write_15 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Addr_Strobe_15 : out STD_LOGIC;
    LMB_Read_Strobe_15 : out STD_LOGIC;
    LMB_Write_Strobe_15 : out STD_LOGIC;
    LMB_Ready_15 : in STD_LOGIC;
    LMB_Wait_15 : in STD_LOGIC;
    LMB_CE_15 : in STD_LOGIC;
    LMB_UE_15 : in STD_LOGIC;
    LMB_Byte_Enable_15 : out STD_LOGIC_VECTOR ( 0 to 3 );
    LMB_Data_Addr_16 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Read_16 : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Write_16 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Addr_Strobe_16 : out STD_LOGIC;
    LMB_Read_Strobe_16 : out STD_LOGIC;
    LMB_Write_Strobe_16 : out STD_LOGIC;
    LMB_Ready_16 : in STD_LOGIC;
    LMB_Wait_16 : in STD_LOGIC;
    LMB_CE_16 : in STD_LOGIC;
    LMB_UE_16 : in STD_LOGIC;
    LMB_Byte_Enable_16 : out STD_LOGIC_VECTOR ( 0 to 3 );
    LMB_Data_Addr_17 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Read_17 : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Write_17 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Addr_Strobe_17 : out STD_LOGIC;
    LMB_Read_Strobe_17 : out STD_LOGIC;
    LMB_Write_Strobe_17 : out STD_LOGIC;
    LMB_Ready_17 : in STD_LOGIC;
    LMB_Wait_17 : in STD_LOGIC;
    LMB_CE_17 : in STD_LOGIC;
    LMB_UE_17 : in STD_LOGIC;
    LMB_Byte_Enable_17 : out STD_LOGIC_VECTOR ( 0 to 3 );
    LMB_Data_Addr_18 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Read_18 : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Write_18 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Addr_Strobe_18 : out STD_LOGIC;
    LMB_Read_Strobe_18 : out STD_LOGIC;
    LMB_Write_Strobe_18 : out STD_LOGIC;
    LMB_Ready_18 : in STD_LOGIC;
    LMB_Wait_18 : in STD_LOGIC;
    LMB_CE_18 : in STD_LOGIC;
    LMB_UE_18 : in STD_LOGIC;
    LMB_Byte_Enable_18 : out STD_LOGIC_VECTOR ( 0 to 3 );
    LMB_Data_Addr_19 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Read_19 : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Write_19 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Addr_Strobe_19 : out STD_LOGIC;
    LMB_Read_Strobe_19 : out STD_LOGIC;
    LMB_Write_Strobe_19 : out STD_LOGIC;
    LMB_Ready_19 : in STD_LOGIC;
    LMB_Wait_19 : in STD_LOGIC;
    LMB_CE_19 : in STD_LOGIC;
    LMB_UE_19 : in STD_LOGIC;
    LMB_Byte_Enable_19 : out STD_LOGIC_VECTOR ( 0 to 3 );
    LMB_Data_Addr_20 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Read_20 : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Write_20 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Addr_Strobe_20 : out STD_LOGIC;
    LMB_Read_Strobe_20 : out STD_LOGIC;
    LMB_Write_Strobe_20 : out STD_LOGIC;
    LMB_Ready_20 : in STD_LOGIC;
    LMB_Wait_20 : in STD_LOGIC;
    LMB_CE_20 : in STD_LOGIC;
    LMB_UE_20 : in STD_LOGIC;
    LMB_Byte_Enable_20 : out STD_LOGIC_VECTOR ( 0 to 3 );
    LMB_Data_Addr_21 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Read_21 : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Write_21 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Addr_Strobe_21 : out STD_LOGIC;
    LMB_Read_Strobe_21 : out STD_LOGIC;
    LMB_Write_Strobe_21 : out STD_LOGIC;
    LMB_Ready_21 : in STD_LOGIC;
    LMB_Wait_21 : in STD_LOGIC;
    LMB_CE_21 : in STD_LOGIC;
    LMB_UE_21 : in STD_LOGIC;
    LMB_Byte_Enable_21 : out STD_LOGIC_VECTOR ( 0 to 3 );
    LMB_Data_Addr_22 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Read_22 : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Write_22 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Addr_Strobe_22 : out STD_LOGIC;
    LMB_Read_Strobe_22 : out STD_LOGIC;
    LMB_Write_Strobe_22 : out STD_LOGIC;
    LMB_Ready_22 : in STD_LOGIC;
    LMB_Wait_22 : in STD_LOGIC;
    LMB_CE_22 : in STD_LOGIC;
    LMB_UE_22 : in STD_LOGIC;
    LMB_Byte_Enable_22 : out STD_LOGIC_VECTOR ( 0 to 3 );
    LMB_Data_Addr_23 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Read_23 : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Write_23 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Addr_Strobe_23 : out STD_LOGIC;
    LMB_Read_Strobe_23 : out STD_LOGIC;
    LMB_Write_Strobe_23 : out STD_LOGIC;
    LMB_Ready_23 : in STD_LOGIC;
    LMB_Wait_23 : in STD_LOGIC;
    LMB_CE_23 : in STD_LOGIC;
    LMB_UE_23 : in STD_LOGIC;
    LMB_Byte_Enable_23 : out STD_LOGIC_VECTOR ( 0 to 3 );
    LMB_Data_Addr_24 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Read_24 : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Write_24 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Addr_Strobe_24 : out STD_LOGIC;
    LMB_Read_Strobe_24 : out STD_LOGIC;
    LMB_Write_Strobe_24 : out STD_LOGIC;
    LMB_Ready_24 : in STD_LOGIC;
    LMB_Wait_24 : in STD_LOGIC;
    LMB_CE_24 : in STD_LOGIC;
    LMB_UE_24 : in STD_LOGIC;
    LMB_Byte_Enable_24 : out STD_LOGIC_VECTOR ( 0 to 3 );
    LMB_Data_Addr_25 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Read_25 : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Write_25 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Addr_Strobe_25 : out STD_LOGIC;
    LMB_Read_Strobe_25 : out STD_LOGIC;
    LMB_Write_Strobe_25 : out STD_LOGIC;
    LMB_Ready_25 : in STD_LOGIC;
    LMB_Wait_25 : in STD_LOGIC;
    LMB_CE_25 : in STD_LOGIC;
    LMB_UE_25 : in STD_LOGIC;
    LMB_Byte_Enable_25 : out STD_LOGIC_VECTOR ( 0 to 3 );
    LMB_Data_Addr_26 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Read_26 : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Write_26 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Addr_Strobe_26 : out STD_LOGIC;
    LMB_Read_Strobe_26 : out STD_LOGIC;
    LMB_Write_Strobe_26 : out STD_LOGIC;
    LMB_Ready_26 : in STD_LOGIC;
    LMB_Wait_26 : in STD_LOGIC;
    LMB_CE_26 : in STD_LOGIC;
    LMB_UE_26 : in STD_LOGIC;
    LMB_Byte_Enable_26 : out STD_LOGIC_VECTOR ( 0 to 3 );
    LMB_Data_Addr_27 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Read_27 : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Write_27 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Addr_Strobe_27 : out STD_LOGIC;
    LMB_Read_Strobe_27 : out STD_LOGIC;
    LMB_Write_Strobe_27 : out STD_LOGIC;
    LMB_Ready_27 : in STD_LOGIC;
    LMB_Wait_27 : in STD_LOGIC;
    LMB_CE_27 : in STD_LOGIC;
    LMB_UE_27 : in STD_LOGIC;
    LMB_Byte_Enable_27 : out STD_LOGIC_VECTOR ( 0 to 3 );
    LMB_Data_Addr_28 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Read_28 : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Write_28 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Addr_Strobe_28 : out STD_LOGIC;
    LMB_Read_Strobe_28 : out STD_LOGIC;
    LMB_Write_Strobe_28 : out STD_LOGIC;
    LMB_Ready_28 : in STD_LOGIC;
    LMB_Wait_28 : in STD_LOGIC;
    LMB_CE_28 : in STD_LOGIC;
    LMB_UE_28 : in STD_LOGIC;
    LMB_Byte_Enable_28 : out STD_LOGIC_VECTOR ( 0 to 3 );
    LMB_Data_Addr_29 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Read_29 : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Write_29 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Addr_Strobe_29 : out STD_LOGIC;
    LMB_Read_Strobe_29 : out STD_LOGIC;
    LMB_Write_Strobe_29 : out STD_LOGIC;
    LMB_Ready_29 : in STD_LOGIC;
    LMB_Wait_29 : in STD_LOGIC;
    LMB_CE_29 : in STD_LOGIC;
    LMB_UE_29 : in STD_LOGIC;
    LMB_Byte_Enable_29 : out STD_LOGIC_VECTOR ( 0 to 3 );
    LMB_Data_Addr_30 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Read_30 : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Write_30 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Addr_Strobe_30 : out STD_LOGIC;
    LMB_Read_Strobe_30 : out STD_LOGIC;
    LMB_Write_Strobe_30 : out STD_LOGIC;
    LMB_Ready_30 : in STD_LOGIC;
    LMB_Wait_30 : in STD_LOGIC;
    LMB_CE_30 : in STD_LOGIC;
    LMB_UE_30 : in STD_LOGIC;
    LMB_Byte_Enable_30 : out STD_LOGIC_VECTOR ( 0 to 3 );
    LMB_Data_Addr_31 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Read_31 : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Write_31 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Addr_Strobe_31 : out STD_LOGIC;
    LMB_Read_Strobe_31 : out STD_LOGIC;
    LMB_Write_Strobe_31 : out STD_LOGIC;
    LMB_Ready_31 : in STD_LOGIC;
    LMB_Wait_31 : in STD_LOGIC;
    LMB_CE_31 : in STD_LOGIC;
    LMB_UE_31 : in STD_LOGIC;
    LMB_Byte_Enable_31 : out STD_LOGIC_VECTOR ( 0 to 3 );
    M_AXIS_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_TID : out STD_LOGIC_VECTOR ( 6 downto 0 );
    M_AXIS_TREADY : in STD_LOGIC;
    M_AXIS_TVALID : out STD_LOGIC;
    TRACE_CLK_OUT : out STD_LOGIC;
    TRACE_CLK : in STD_LOGIC;
    TRACE_CTL : out STD_LOGIC;
    TRACE_DATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_Disable_0 : out STD_LOGIC;
    Dbg_Clk_0 : out STD_LOGIC;
    Dbg_TDI_0 : out STD_LOGIC;
    Dbg_TDO_0 : in STD_LOGIC;
    Dbg_Reg_En_0 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_0 : out STD_LOGIC;
    Dbg_Shift_0 : out STD_LOGIC;
    Dbg_Update_0 : out STD_LOGIC;
    Dbg_Rst_0 : out STD_LOGIC;
    Dbg_Trig_In_0 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_In_0 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Out_0 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_Out_0 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_TrClk_0 : out STD_LOGIC;
    Dbg_TrData_0 : in STD_LOGIC_VECTOR ( 0 to 35 );
    Dbg_TrReady_0 : out STD_LOGIC;
    Dbg_TrValid_0 : in STD_LOGIC;
    Dbg_AWADDR_0 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_AWVALID_0 : out STD_LOGIC;
    Dbg_AWREADY_0 : in STD_LOGIC;
    Dbg_WDATA_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_WVALID_0 : out STD_LOGIC;
    Dbg_WREADY_0 : in STD_LOGIC;
    Dbg_BRESP_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_BVALID_0 : in STD_LOGIC;
    Dbg_BREADY_0 : out STD_LOGIC;
    Dbg_ARADDR_0 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_ARVALID_0 : out STD_LOGIC;
    Dbg_ARREADY_0 : in STD_LOGIC;
    Dbg_RDATA_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_RRESP_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_RVALID_0 : in STD_LOGIC;
    Dbg_RREADY_0 : out STD_LOGIC;
    Dbg_Disable_1 : out STD_LOGIC;
    Dbg_Clk_1 : out STD_LOGIC;
    Dbg_TDI_1 : out STD_LOGIC;
    Dbg_TDO_1 : in STD_LOGIC;
    Dbg_Reg_En_1 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_1 : out STD_LOGIC;
    Dbg_Shift_1 : out STD_LOGIC;
    Dbg_Update_1 : out STD_LOGIC;
    Dbg_Rst_1 : out STD_LOGIC;
    Dbg_Trig_In_1 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_In_1 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Out_1 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_Out_1 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_TrClk_1 : out STD_LOGIC;
    Dbg_TrData_1 : in STD_LOGIC_VECTOR ( 0 to 35 );
    Dbg_TrReady_1 : out STD_LOGIC;
    Dbg_TrValid_1 : in STD_LOGIC;
    Dbg_AWADDR_1 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_AWVALID_1 : out STD_LOGIC;
    Dbg_AWREADY_1 : in STD_LOGIC;
    Dbg_WDATA_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_WVALID_1 : out STD_LOGIC;
    Dbg_WREADY_1 : in STD_LOGIC;
    Dbg_BRESP_1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_BVALID_1 : in STD_LOGIC;
    Dbg_BREADY_1 : out STD_LOGIC;
    Dbg_ARADDR_1 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_ARVALID_1 : out STD_LOGIC;
    Dbg_ARREADY_1 : in STD_LOGIC;
    Dbg_RDATA_1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_RRESP_1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_RVALID_1 : in STD_LOGIC;
    Dbg_RREADY_1 : out STD_LOGIC;
    Dbg_Disable_2 : out STD_LOGIC;
    Dbg_Clk_2 : out STD_LOGIC;
    Dbg_TDI_2 : out STD_LOGIC;
    Dbg_TDO_2 : in STD_LOGIC;
    Dbg_Reg_En_2 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_2 : out STD_LOGIC;
    Dbg_Shift_2 : out STD_LOGIC;
    Dbg_Update_2 : out STD_LOGIC;
    Dbg_Rst_2 : out STD_LOGIC;
    Dbg_Trig_In_2 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_In_2 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Out_2 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_Out_2 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_TrClk_2 : out STD_LOGIC;
    Dbg_TrData_2 : in STD_LOGIC_VECTOR ( 0 to 35 );
    Dbg_TrReady_2 : out STD_LOGIC;
    Dbg_TrValid_2 : in STD_LOGIC;
    Dbg_AWADDR_2 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_AWVALID_2 : out STD_LOGIC;
    Dbg_AWREADY_2 : in STD_LOGIC;
    Dbg_WDATA_2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_WVALID_2 : out STD_LOGIC;
    Dbg_WREADY_2 : in STD_LOGIC;
    Dbg_BRESP_2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_BVALID_2 : in STD_LOGIC;
    Dbg_BREADY_2 : out STD_LOGIC;
    Dbg_ARADDR_2 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_ARVALID_2 : out STD_LOGIC;
    Dbg_ARREADY_2 : in STD_LOGIC;
    Dbg_RDATA_2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_RRESP_2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_RVALID_2 : in STD_LOGIC;
    Dbg_RREADY_2 : out STD_LOGIC;
    Dbg_Disable_3 : out STD_LOGIC;
    Dbg_Clk_3 : out STD_LOGIC;
    Dbg_TDI_3 : out STD_LOGIC;
    Dbg_TDO_3 : in STD_LOGIC;
    Dbg_Reg_En_3 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_3 : out STD_LOGIC;
    Dbg_Shift_3 : out STD_LOGIC;
    Dbg_Update_3 : out STD_LOGIC;
    Dbg_Rst_3 : out STD_LOGIC;
    Dbg_Trig_In_3 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_In_3 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Out_3 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_Out_3 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_TrClk_3 : out STD_LOGIC;
    Dbg_TrData_3 : in STD_LOGIC_VECTOR ( 0 to 35 );
    Dbg_TrReady_3 : out STD_LOGIC;
    Dbg_TrValid_3 : in STD_LOGIC;
    Dbg_AWADDR_3 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_AWVALID_3 : out STD_LOGIC;
    Dbg_AWREADY_3 : in STD_LOGIC;
    Dbg_WDATA_3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_WVALID_3 : out STD_LOGIC;
    Dbg_WREADY_3 : in STD_LOGIC;
    Dbg_BRESP_3 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_BVALID_3 : in STD_LOGIC;
    Dbg_BREADY_3 : out STD_LOGIC;
    Dbg_ARADDR_3 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_ARVALID_3 : out STD_LOGIC;
    Dbg_ARREADY_3 : in STD_LOGIC;
    Dbg_RDATA_3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_RRESP_3 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_RVALID_3 : in STD_LOGIC;
    Dbg_RREADY_3 : out STD_LOGIC;
    Dbg_Disable_4 : out STD_LOGIC;
    Dbg_Clk_4 : out STD_LOGIC;
    Dbg_TDI_4 : out STD_LOGIC;
    Dbg_TDO_4 : in STD_LOGIC;
    Dbg_Reg_En_4 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_4 : out STD_LOGIC;
    Dbg_Shift_4 : out STD_LOGIC;
    Dbg_Update_4 : out STD_LOGIC;
    Dbg_Rst_4 : out STD_LOGIC;
    Dbg_Trig_In_4 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_In_4 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Out_4 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_Out_4 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_TrClk_4 : out STD_LOGIC;
    Dbg_TrData_4 : in STD_LOGIC_VECTOR ( 0 to 35 );
    Dbg_TrReady_4 : out STD_LOGIC;
    Dbg_TrValid_4 : in STD_LOGIC;
    Dbg_AWADDR_4 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_AWVALID_4 : out STD_LOGIC;
    Dbg_AWREADY_4 : in STD_LOGIC;
    Dbg_WDATA_4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_WVALID_4 : out STD_LOGIC;
    Dbg_WREADY_4 : in STD_LOGIC;
    Dbg_BRESP_4 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_BVALID_4 : in STD_LOGIC;
    Dbg_BREADY_4 : out STD_LOGIC;
    Dbg_ARADDR_4 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_ARVALID_4 : out STD_LOGIC;
    Dbg_ARREADY_4 : in STD_LOGIC;
    Dbg_RDATA_4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_RRESP_4 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_RVALID_4 : in STD_LOGIC;
    Dbg_RREADY_4 : out STD_LOGIC;
    Dbg_Disable_5 : out STD_LOGIC;
    Dbg_Clk_5 : out STD_LOGIC;
    Dbg_TDI_5 : out STD_LOGIC;
    Dbg_TDO_5 : in STD_LOGIC;
    Dbg_Reg_En_5 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_5 : out STD_LOGIC;
    Dbg_Shift_5 : out STD_LOGIC;
    Dbg_Update_5 : out STD_LOGIC;
    Dbg_Rst_5 : out STD_LOGIC;
    Dbg_Trig_In_5 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_In_5 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Out_5 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_Out_5 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_TrClk_5 : out STD_LOGIC;
    Dbg_TrData_5 : in STD_LOGIC_VECTOR ( 0 to 35 );
    Dbg_TrReady_5 : out STD_LOGIC;
    Dbg_TrValid_5 : in STD_LOGIC;
    Dbg_AWADDR_5 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_AWVALID_5 : out STD_LOGIC;
    Dbg_AWREADY_5 : in STD_LOGIC;
    Dbg_WDATA_5 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_WVALID_5 : out STD_LOGIC;
    Dbg_WREADY_5 : in STD_LOGIC;
    Dbg_BRESP_5 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_BVALID_5 : in STD_LOGIC;
    Dbg_BREADY_5 : out STD_LOGIC;
    Dbg_ARADDR_5 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_ARVALID_5 : out STD_LOGIC;
    Dbg_ARREADY_5 : in STD_LOGIC;
    Dbg_RDATA_5 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_RRESP_5 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_RVALID_5 : in STD_LOGIC;
    Dbg_RREADY_5 : out STD_LOGIC;
    Dbg_Disable_6 : out STD_LOGIC;
    Dbg_Clk_6 : out STD_LOGIC;
    Dbg_TDI_6 : out STD_LOGIC;
    Dbg_TDO_6 : in STD_LOGIC;
    Dbg_Reg_En_6 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_6 : out STD_LOGIC;
    Dbg_Shift_6 : out STD_LOGIC;
    Dbg_Update_6 : out STD_LOGIC;
    Dbg_Rst_6 : out STD_LOGIC;
    Dbg_Trig_In_6 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_In_6 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Out_6 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_Out_6 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_TrClk_6 : out STD_LOGIC;
    Dbg_TrData_6 : in STD_LOGIC_VECTOR ( 0 to 35 );
    Dbg_TrReady_6 : out STD_LOGIC;
    Dbg_TrValid_6 : in STD_LOGIC;
    Dbg_AWADDR_6 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_AWVALID_6 : out STD_LOGIC;
    Dbg_AWREADY_6 : in STD_LOGIC;
    Dbg_WDATA_6 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_WVALID_6 : out STD_LOGIC;
    Dbg_WREADY_6 : in STD_LOGIC;
    Dbg_BRESP_6 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_BVALID_6 : in STD_LOGIC;
    Dbg_BREADY_6 : out STD_LOGIC;
    Dbg_ARADDR_6 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_ARVALID_6 : out STD_LOGIC;
    Dbg_ARREADY_6 : in STD_LOGIC;
    Dbg_RDATA_6 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_RRESP_6 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_RVALID_6 : in STD_LOGIC;
    Dbg_RREADY_6 : out STD_LOGIC;
    Dbg_Disable_7 : out STD_LOGIC;
    Dbg_Clk_7 : out STD_LOGIC;
    Dbg_TDI_7 : out STD_LOGIC;
    Dbg_TDO_7 : in STD_LOGIC;
    Dbg_Reg_En_7 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_7 : out STD_LOGIC;
    Dbg_Shift_7 : out STD_LOGIC;
    Dbg_Update_7 : out STD_LOGIC;
    Dbg_Rst_7 : out STD_LOGIC;
    Dbg_Trig_In_7 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_In_7 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Out_7 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_Out_7 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_TrClk_7 : out STD_LOGIC;
    Dbg_TrData_7 : in STD_LOGIC_VECTOR ( 0 to 35 );
    Dbg_TrReady_7 : out STD_LOGIC;
    Dbg_TrValid_7 : in STD_LOGIC;
    Dbg_AWADDR_7 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_AWVALID_7 : out STD_LOGIC;
    Dbg_AWREADY_7 : in STD_LOGIC;
    Dbg_WDATA_7 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_WVALID_7 : out STD_LOGIC;
    Dbg_WREADY_7 : in STD_LOGIC;
    Dbg_BRESP_7 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_BVALID_7 : in STD_LOGIC;
    Dbg_BREADY_7 : out STD_LOGIC;
    Dbg_ARADDR_7 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_ARVALID_7 : out STD_LOGIC;
    Dbg_ARREADY_7 : in STD_LOGIC;
    Dbg_RDATA_7 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_RRESP_7 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_RVALID_7 : in STD_LOGIC;
    Dbg_RREADY_7 : out STD_LOGIC;
    Dbg_Disable_8 : out STD_LOGIC;
    Dbg_Clk_8 : out STD_LOGIC;
    Dbg_TDI_8 : out STD_LOGIC;
    Dbg_TDO_8 : in STD_LOGIC;
    Dbg_Reg_En_8 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_8 : out STD_LOGIC;
    Dbg_Shift_8 : out STD_LOGIC;
    Dbg_Update_8 : out STD_LOGIC;
    Dbg_Rst_8 : out STD_LOGIC;
    Dbg_Trig_In_8 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_In_8 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Out_8 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_Out_8 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_TrClk_8 : out STD_LOGIC;
    Dbg_TrData_8 : in STD_LOGIC_VECTOR ( 0 to 35 );
    Dbg_TrReady_8 : out STD_LOGIC;
    Dbg_TrValid_8 : in STD_LOGIC;
    Dbg_AWADDR_8 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_AWVALID_8 : out STD_LOGIC;
    Dbg_AWREADY_8 : in STD_LOGIC;
    Dbg_WDATA_8 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_WVALID_8 : out STD_LOGIC;
    Dbg_WREADY_8 : in STD_LOGIC;
    Dbg_BRESP_8 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_BVALID_8 : in STD_LOGIC;
    Dbg_BREADY_8 : out STD_LOGIC;
    Dbg_ARADDR_8 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_ARVALID_8 : out STD_LOGIC;
    Dbg_ARREADY_8 : in STD_LOGIC;
    Dbg_RDATA_8 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_RRESP_8 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_RVALID_8 : in STD_LOGIC;
    Dbg_RREADY_8 : out STD_LOGIC;
    Dbg_Disable_9 : out STD_LOGIC;
    Dbg_Clk_9 : out STD_LOGIC;
    Dbg_TDI_9 : out STD_LOGIC;
    Dbg_TDO_9 : in STD_LOGIC;
    Dbg_Reg_En_9 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_9 : out STD_LOGIC;
    Dbg_Shift_9 : out STD_LOGIC;
    Dbg_Update_9 : out STD_LOGIC;
    Dbg_Rst_9 : out STD_LOGIC;
    Dbg_Trig_In_9 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_In_9 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Out_9 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_Out_9 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_TrClk_9 : out STD_LOGIC;
    Dbg_TrData_9 : in STD_LOGIC_VECTOR ( 0 to 35 );
    Dbg_TrReady_9 : out STD_LOGIC;
    Dbg_TrValid_9 : in STD_LOGIC;
    Dbg_AWADDR_9 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_AWVALID_9 : out STD_LOGIC;
    Dbg_AWREADY_9 : in STD_LOGIC;
    Dbg_WDATA_9 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_WVALID_9 : out STD_LOGIC;
    Dbg_WREADY_9 : in STD_LOGIC;
    Dbg_BRESP_9 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_BVALID_9 : in STD_LOGIC;
    Dbg_BREADY_9 : out STD_LOGIC;
    Dbg_ARADDR_9 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_ARVALID_9 : out STD_LOGIC;
    Dbg_ARREADY_9 : in STD_LOGIC;
    Dbg_RDATA_9 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_RRESP_9 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_RVALID_9 : in STD_LOGIC;
    Dbg_RREADY_9 : out STD_LOGIC;
    Dbg_Disable_10 : out STD_LOGIC;
    Dbg_Clk_10 : out STD_LOGIC;
    Dbg_TDI_10 : out STD_LOGIC;
    Dbg_TDO_10 : in STD_LOGIC;
    Dbg_Reg_En_10 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_10 : out STD_LOGIC;
    Dbg_Shift_10 : out STD_LOGIC;
    Dbg_Update_10 : out STD_LOGIC;
    Dbg_Rst_10 : out STD_LOGIC;
    Dbg_Trig_In_10 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_In_10 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Out_10 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_Out_10 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_TrClk_10 : out STD_LOGIC;
    Dbg_TrData_10 : in STD_LOGIC_VECTOR ( 0 to 35 );
    Dbg_TrReady_10 : out STD_LOGIC;
    Dbg_TrValid_10 : in STD_LOGIC;
    Dbg_AWADDR_10 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_AWVALID_10 : out STD_LOGIC;
    Dbg_AWREADY_10 : in STD_LOGIC;
    Dbg_WDATA_10 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_WVALID_10 : out STD_LOGIC;
    Dbg_WREADY_10 : in STD_LOGIC;
    Dbg_BRESP_10 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_BVALID_10 : in STD_LOGIC;
    Dbg_BREADY_10 : out STD_LOGIC;
    Dbg_ARADDR_10 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_ARVALID_10 : out STD_LOGIC;
    Dbg_ARREADY_10 : in STD_LOGIC;
    Dbg_RDATA_10 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_RRESP_10 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_RVALID_10 : in STD_LOGIC;
    Dbg_RREADY_10 : out STD_LOGIC;
    Dbg_Disable_11 : out STD_LOGIC;
    Dbg_Clk_11 : out STD_LOGIC;
    Dbg_TDI_11 : out STD_LOGIC;
    Dbg_TDO_11 : in STD_LOGIC;
    Dbg_Reg_En_11 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_11 : out STD_LOGIC;
    Dbg_Shift_11 : out STD_LOGIC;
    Dbg_Update_11 : out STD_LOGIC;
    Dbg_Rst_11 : out STD_LOGIC;
    Dbg_Trig_In_11 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_In_11 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Out_11 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_Out_11 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_TrClk_11 : out STD_LOGIC;
    Dbg_TrData_11 : in STD_LOGIC_VECTOR ( 0 to 35 );
    Dbg_TrReady_11 : out STD_LOGIC;
    Dbg_TrValid_11 : in STD_LOGIC;
    Dbg_AWADDR_11 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_AWVALID_11 : out STD_LOGIC;
    Dbg_AWREADY_11 : in STD_LOGIC;
    Dbg_WDATA_11 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_WVALID_11 : out STD_LOGIC;
    Dbg_WREADY_11 : in STD_LOGIC;
    Dbg_BRESP_11 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_BVALID_11 : in STD_LOGIC;
    Dbg_BREADY_11 : out STD_LOGIC;
    Dbg_ARADDR_11 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_ARVALID_11 : out STD_LOGIC;
    Dbg_ARREADY_11 : in STD_LOGIC;
    Dbg_RDATA_11 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_RRESP_11 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_RVALID_11 : in STD_LOGIC;
    Dbg_RREADY_11 : out STD_LOGIC;
    Dbg_Disable_12 : out STD_LOGIC;
    Dbg_Clk_12 : out STD_LOGIC;
    Dbg_TDI_12 : out STD_LOGIC;
    Dbg_TDO_12 : in STD_LOGIC;
    Dbg_Reg_En_12 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_12 : out STD_LOGIC;
    Dbg_Shift_12 : out STD_LOGIC;
    Dbg_Update_12 : out STD_LOGIC;
    Dbg_Rst_12 : out STD_LOGIC;
    Dbg_Trig_In_12 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_In_12 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Out_12 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_Out_12 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_TrClk_12 : out STD_LOGIC;
    Dbg_TrData_12 : in STD_LOGIC_VECTOR ( 0 to 35 );
    Dbg_TrReady_12 : out STD_LOGIC;
    Dbg_TrValid_12 : in STD_LOGIC;
    Dbg_AWADDR_12 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_AWVALID_12 : out STD_LOGIC;
    Dbg_AWREADY_12 : in STD_LOGIC;
    Dbg_WDATA_12 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_WVALID_12 : out STD_LOGIC;
    Dbg_WREADY_12 : in STD_LOGIC;
    Dbg_BRESP_12 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_BVALID_12 : in STD_LOGIC;
    Dbg_BREADY_12 : out STD_LOGIC;
    Dbg_ARADDR_12 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_ARVALID_12 : out STD_LOGIC;
    Dbg_ARREADY_12 : in STD_LOGIC;
    Dbg_RDATA_12 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_RRESP_12 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_RVALID_12 : in STD_LOGIC;
    Dbg_RREADY_12 : out STD_LOGIC;
    Dbg_Disable_13 : out STD_LOGIC;
    Dbg_Clk_13 : out STD_LOGIC;
    Dbg_TDI_13 : out STD_LOGIC;
    Dbg_TDO_13 : in STD_LOGIC;
    Dbg_Reg_En_13 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_13 : out STD_LOGIC;
    Dbg_Shift_13 : out STD_LOGIC;
    Dbg_Update_13 : out STD_LOGIC;
    Dbg_Rst_13 : out STD_LOGIC;
    Dbg_Trig_In_13 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_In_13 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Out_13 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_Out_13 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_TrClk_13 : out STD_LOGIC;
    Dbg_TrData_13 : in STD_LOGIC_VECTOR ( 0 to 35 );
    Dbg_TrReady_13 : out STD_LOGIC;
    Dbg_TrValid_13 : in STD_LOGIC;
    Dbg_AWADDR_13 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_AWVALID_13 : out STD_LOGIC;
    Dbg_AWREADY_13 : in STD_LOGIC;
    Dbg_WDATA_13 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_WVALID_13 : out STD_LOGIC;
    Dbg_WREADY_13 : in STD_LOGIC;
    Dbg_BRESP_13 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_BVALID_13 : in STD_LOGIC;
    Dbg_BREADY_13 : out STD_LOGIC;
    Dbg_ARADDR_13 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_ARVALID_13 : out STD_LOGIC;
    Dbg_ARREADY_13 : in STD_LOGIC;
    Dbg_RDATA_13 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_RRESP_13 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_RVALID_13 : in STD_LOGIC;
    Dbg_RREADY_13 : out STD_LOGIC;
    Dbg_Disable_14 : out STD_LOGIC;
    Dbg_Clk_14 : out STD_LOGIC;
    Dbg_TDI_14 : out STD_LOGIC;
    Dbg_TDO_14 : in STD_LOGIC;
    Dbg_Reg_En_14 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_14 : out STD_LOGIC;
    Dbg_Shift_14 : out STD_LOGIC;
    Dbg_Update_14 : out STD_LOGIC;
    Dbg_Rst_14 : out STD_LOGIC;
    Dbg_Trig_In_14 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_In_14 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Out_14 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_Out_14 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_TrClk_14 : out STD_LOGIC;
    Dbg_TrData_14 : in STD_LOGIC_VECTOR ( 0 to 35 );
    Dbg_TrReady_14 : out STD_LOGIC;
    Dbg_TrValid_14 : in STD_LOGIC;
    Dbg_AWADDR_14 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_AWVALID_14 : out STD_LOGIC;
    Dbg_AWREADY_14 : in STD_LOGIC;
    Dbg_WDATA_14 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_WVALID_14 : out STD_LOGIC;
    Dbg_WREADY_14 : in STD_LOGIC;
    Dbg_BRESP_14 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_BVALID_14 : in STD_LOGIC;
    Dbg_BREADY_14 : out STD_LOGIC;
    Dbg_ARADDR_14 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_ARVALID_14 : out STD_LOGIC;
    Dbg_ARREADY_14 : in STD_LOGIC;
    Dbg_RDATA_14 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_RRESP_14 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_RVALID_14 : in STD_LOGIC;
    Dbg_RREADY_14 : out STD_LOGIC;
    Dbg_Disable_15 : out STD_LOGIC;
    Dbg_Clk_15 : out STD_LOGIC;
    Dbg_TDI_15 : out STD_LOGIC;
    Dbg_TDO_15 : in STD_LOGIC;
    Dbg_Reg_En_15 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_15 : out STD_LOGIC;
    Dbg_Shift_15 : out STD_LOGIC;
    Dbg_Update_15 : out STD_LOGIC;
    Dbg_Rst_15 : out STD_LOGIC;
    Dbg_Trig_In_15 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_In_15 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Out_15 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_Out_15 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_TrClk_15 : out STD_LOGIC;
    Dbg_TrData_15 : in STD_LOGIC_VECTOR ( 0 to 35 );
    Dbg_TrReady_15 : out STD_LOGIC;
    Dbg_TrValid_15 : in STD_LOGIC;
    Dbg_AWADDR_15 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_AWVALID_15 : out STD_LOGIC;
    Dbg_AWREADY_15 : in STD_LOGIC;
    Dbg_WDATA_15 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_WVALID_15 : out STD_LOGIC;
    Dbg_WREADY_15 : in STD_LOGIC;
    Dbg_BRESP_15 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_BVALID_15 : in STD_LOGIC;
    Dbg_BREADY_15 : out STD_LOGIC;
    Dbg_ARADDR_15 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_ARVALID_15 : out STD_LOGIC;
    Dbg_ARREADY_15 : in STD_LOGIC;
    Dbg_RDATA_15 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_RRESP_15 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_RVALID_15 : in STD_LOGIC;
    Dbg_RREADY_15 : out STD_LOGIC;
    Dbg_Disable_16 : out STD_LOGIC;
    Dbg_Clk_16 : out STD_LOGIC;
    Dbg_TDI_16 : out STD_LOGIC;
    Dbg_TDO_16 : in STD_LOGIC;
    Dbg_Reg_En_16 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_16 : out STD_LOGIC;
    Dbg_Shift_16 : out STD_LOGIC;
    Dbg_Update_16 : out STD_LOGIC;
    Dbg_Rst_16 : out STD_LOGIC;
    Dbg_Trig_In_16 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_In_16 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Out_16 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_Out_16 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_TrClk_16 : out STD_LOGIC;
    Dbg_TrData_16 : in STD_LOGIC_VECTOR ( 0 to 35 );
    Dbg_TrReady_16 : out STD_LOGIC;
    Dbg_TrValid_16 : in STD_LOGIC;
    Dbg_AWADDR_16 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_AWVALID_16 : out STD_LOGIC;
    Dbg_AWREADY_16 : in STD_LOGIC;
    Dbg_WDATA_16 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_WVALID_16 : out STD_LOGIC;
    Dbg_WREADY_16 : in STD_LOGIC;
    Dbg_BRESP_16 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_BVALID_16 : in STD_LOGIC;
    Dbg_BREADY_16 : out STD_LOGIC;
    Dbg_ARADDR_16 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_ARVALID_16 : out STD_LOGIC;
    Dbg_ARREADY_16 : in STD_LOGIC;
    Dbg_RDATA_16 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_RRESP_16 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_RVALID_16 : in STD_LOGIC;
    Dbg_RREADY_16 : out STD_LOGIC;
    Dbg_Disable_17 : out STD_LOGIC;
    Dbg_Clk_17 : out STD_LOGIC;
    Dbg_TDI_17 : out STD_LOGIC;
    Dbg_TDO_17 : in STD_LOGIC;
    Dbg_Reg_En_17 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_17 : out STD_LOGIC;
    Dbg_Shift_17 : out STD_LOGIC;
    Dbg_Update_17 : out STD_LOGIC;
    Dbg_Rst_17 : out STD_LOGIC;
    Dbg_Trig_In_17 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_In_17 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Out_17 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_Out_17 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_TrClk_17 : out STD_LOGIC;
    Dbg_TrData_17 : in STD_LOGIC_VECTOR ( 0 to 35 );
    Dbg_TrReady_17 : out STD_LOGIC;
    Dbg_TrValid_17 : in STD_LOGIC;
    Dbg_AWADDR_17 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_AWVALID_17 : out STD_LOGIC;
    Dbg_AWREADY_17 : in STD_LOGIC;
    Dbg_WDATA_17 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_WVALID_17 : out STD_LOGIC;
    Dbg_WREADY_17 : in STD_LOGIC;
    Dbg_BRESP_17 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_BVALID_17 : in STD_LOGIC;
    Dbg_BREADY_17 : out STD_LOGIC;
    Dbg_ARADDR_17 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_ARVALID_17 : out STD_LOGIC;
    Dbg_ARREADY_17 : in STD_LOGIC;
    Dbg_RDATA_17 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_RRESP_17 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_RVALID_17 : in STD_LOGIC;
    Dbg_RREADY_17 : out STD_LOGIC;
    Dbg_Disable_18 : out STD_LOGIC;
    Dbg_Clk_18 : out STD_LOGIC;
    Dbg_TDI_18 : out STD_LOGIC;
    Dbg_TDO_18 : in STD_LOGIC;
    Dbg_Reg_En_18 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_18 : out STD_LOGIC;
    Dbg_Shift_18 : out STD_LOGIC;
    Dbg_Update_18 : out STD_LOGIC;
    Dbg_Rst_18 : out STD_LOGIC;
    Dbg_Trig_In_18 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_In_18 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Out_18 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_Out_18 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_TrClk_18 : out STD_LOGIC;
    Dbg_TrData_18 : in STD_LOGIC_VECTOR ( 0 to 35 );
    Dbg_TrReady_18 : out STD_LOGIC;
    Dbg_TrValid_18 : in STD_LOGIC;
    Dbg_AWADDR_18 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_AWVALID_18 : out STD_LOGIC;
    Dbg_AWREADY_18 : in STD_LOGIC;
    Dbg_WDATA_18 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_WVALID_18 : out STD_LOGIC;
    Dbg_WREADY_18 : in STD_LOGIC;
    Dbg_BRESP_18 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_BVALID_18 : in STD_LOGIC;
    Dbg_BREADY_18 : out STD_LOGIC;
    Dbg_ARADDR_18 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_ARVALID_18 : out STD_LOGIC;
    Dbg_ARREADY_18 : in STD_LOGIC;
    Dbg_RDATA_18 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_RRESP_18 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_RVALID_18 : in STD_LOGIC;
    Dbg_RREADY_18 : out STD_LOGIC;
    Dbg_Disable_19 : out STD_LOGIC;
    Dbg_Clk_19 : out STD_LOGIC;
    Dbg_TDI_19 : out STD_LOGIC;
    Dbg_TDO_19 : in STD_LOGIC;
    Dbg_Reg_En_19 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_19 : out STD_LOGIC;
    Dbg_Shift_19 : out STD_LOGIC;
    Dbg_Update_19 : out STD_LOGIC;
    Dbg_Rst_19 : out STD_LOGIC;
    Dbg_Trig_In_19 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_In_19 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Out_19 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_Out_19 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_TrClk_19 : out STD_LOGIC;
    Dbg_TrData_19 : in STD_LOGIC_VECTOR ( 0 to 35 );
    Dbg_TrReady_19 : out STD_LOGIC;
    Dbg_TrValid_19 : in STD_LOGIC;
    Dbg_AWADDR_19 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_AWVALID_19 : out STD_LOGIC;
    Dbg_AWREADY_19 : in STD_LOGIC;
    Dbg_WDATA_19 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_WVALID_19 : out STD_LOGIC;
    Dbg_WREADY_19 : in STD_LOGIC;
    Dbg_BRESP_19 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_BVALID_19 : in STD_LOGIC;
    Dbg_BREADY_19 : out STD_LOGIC;
    Dbg_ARADDR_19 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_ARVALID_19 : out STD_LOGIC;
    Dbg_ARREADY_19 : in STD_LOGIC;
    Dbg_RDATA_19 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_RRESP_19 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_RVALID_19 : in STD_LOGIC;
    Dbg_RREADY_19 : out STD_LOGIC;
    Dbg_Disable_20 : out STD_LOGIC;
    Dbg_Clk_20 : out STD_LOGIC;
    Dbg_TDI_20 : out STD_LOGIC;
    Dbg_TDO_20 : in STD_LOGIC;
    Dbg_Reg_En_20 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_20 : out STD_LOGIC;
    Dbg_Shift_20 : out STD_LOGIC;
    Dbg_Update_20 : out STD_LOGIC;
    Dbg_Rst_20 : out STD_LOGIC;
    Dbg_Trig_In_20 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_In_20 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Out_20 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_Out_20 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_TrClk_20 : out STD_LOGIC;
    Dbg_TrData_20 : in STD_LOGIC_VECTOR ( 0 to 35 );
    Dbg_TrReady_20 : out STD_LOGIC;
    Dbg_TrValid_20 : in STD_LOGIC;
    Dbg_AWADDR_20 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_AWVALID_20 : out STD_LOGIC;
    Dbg_AWREADY_20 : in STD_LOGIC;
    Dbg_WDATA_20 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_WVALID_20 : out STD_LOGIC;
    Dbg_WREADY_20 : in STD_LOGIC;
    Dbg_BRESP_20 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_BVALID_20 : in STD_LOGIC;
    Dbg_BREADY_20 : out STD_LOGIC;
    Dbg_ARADDR_20 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_ARVALID_20 : out STD_LOGIC;
    Dbg_ARREADY_20 : in STD_LOGIC;
    Dbg_RDATA_20 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_RRESP_20 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_RVALID_20 : in STD_LOGIC;
    Dbg_RREADY_20 : out STD_LOGIC;
    Dbg_Disable_21 : out STD_LOGIC;
    Dbg_Clk_21 : out STD_LOGIC;
    Dbg_TDI_21 : out STD_LOGIC;
    Dbg_TDO_21 : in STD_LOGIC;
    Dbg_Reg_En_21 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_21 : out STD_LOGIC;
    Dbg_Shift_21 : out STD_LOGIC;
    Dbg_Update_21 : out STD_LOGIC;
    Dbg_Rst_21 : out STD_LOGIC;
    Dbg_Trig_In_21 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_In_21 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Out_21 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_Out_21 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_TrClk_21 : out STD_LOGIC;
    Dbg_TrData_21 : in STD_LOGIC_VECTOR ( 0 to 35 );
    Dbg_TrReady_21 : out STD_LOGIC;
    Dbg_TrValid_21 : in STD_LOGIC;
    Dbg_AWADDR_21 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_AWVALID_21 : out STD_LOGIC;
    Dbg_AWREADY_21 : in STD_LOGIC;
    Dbg_WDATA_21 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_WVALID_21 : out STD_LOGIC;
    Dbg_WREADY_21 : in STD_LOGIC;
    Dbg_BRESP_21 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_BVALID_21 : in STD_LOGIC;
    Dbg_BREADY_21 : out STD_LOGIC;
    Dbg_ARADDR_21 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_ARVALID_21 : out STD_LOGIC;
    Dbg_ARREADY_21 : in STD_LOGIC;
    Dbg_RDATA_21 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_RRESP_21 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_RVALID_21 : in STD_LOGIC;
    Dbg_RREADY_21 : out STD_LOGIC;
    Dbg_Disable_22 : out STD_LOGIC;
    Dbg_Clk_22 : out STD_LOGIC;
    Dbg_TDI_22 : out STD_LOGIC;
    Dbg_TDO_22 : in STD_LOGIC;
    Dbg_Reg_En_22 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_22 : out STD_LOGIC;
    Dbg_Shift_22 : out STD_LOGIC;
    Dbg_Update_22 : out STD_LOGIC;
    Dbg_Rst_22 : out STD_LOGIC;
    Dbg_Trig_In_22 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_In_22 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Out_22 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_Out_22 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_TrClk_22 : out STD_LOGIC;
    Dbg_TrData_22 : in STD_LOGIC_VECTOR ( 0 to 35 );
    Dbg_TrReady_22 : out STD_LOGIC;
    Dbg_TrValid_22 : in STD_LOGIC;
    Dbg_AWADDR_22 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_AWVALID_22 : out STD_LOGIC;
    Dbg_AWREADY_22 : in STD_LOGIC;
    Dbg_WDATA_22 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_WVALID_22 : out STD_LOGIC;
    Dbg_WREADY_22 : in STD_LOGIC;
    Dbg_BRESP_22 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_BVALID_22 : in STD_LOGIC;
    Dbg_BREADY_22 : out STD_LOGIC;
    Dbg_ARADDR_22 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_ARVALID_22 : out STD_LOGIC;
    Dbg_ARREADY_22 : in STD_LOGIC;
    Dbg_RDATA_22 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_RRESP_22 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_RVALID_22 : in STD_LOGIC;
    Dbg_RREADY_22 : out STD_LOGIC;
    Dbg_Disable_23 : out STD_LOGIC;
    Dbg_Clk_23 : out STD_LOGIC;
    Dbg_TDI_23 : out STD_LOGIC;
    Dbg_TDO_23 : in STD_LOGIC;
    Dbg_Reg_En_23 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_23 : out STD_LOGIC;
    Dbg_Shift_23 : out STD_LOGIC;
    Dbg_Update_23 : out STD_LOGIC;
    Dbg_Rst_23 : out STD_LOGIC;
    Dbg_Trig_In_23 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_In_23 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Out_23 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_Out_23 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_TrClk_23 : out STD_LOGIC;
    Dbg_TrData_23 : in STD_LOGIC_VECTOR ( 0 to 35 );
    Dbg_TrReady_23 : out STD_LOGIC;
    Dbg_TrValid_23 : in STD_LOGIC;
    Dbg_AWADDR_23 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_AWVALID_23 : out STD_LOGIC;
    Dbg_AWREADY_23 : in STD_LOGIC;
    Dbg_WDATA_23 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_WVALID_23 : out STD_LOGIC;
    Dbg_WREADY_23 : in STD_LOGIC;
    Dbg_BRESP_23 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_BVALID_23 : in STD_LOGIC;
    Dbg_BREADY_23 : out STD_LOGIC;
    Dbg_ARADDR_23 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_ARVALID_23 : out STD_LOGIC;
    Dbg_ARREADY_23 : in STD_LOGIC;
    Dbg_RDATA_23 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_RRESP_23 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_RVALID_23 : in STD_LOGIC;
    Dbg_RREADY_23 : out STD_LOGIC;
    Dbg_Disable_24 : out STD_LOGIC;
    Dbg_Clk_24 : out STD_LOGIC;
    Dbg_TDI_24 : out STD_LOGIC;
    Dbg_TDO_24 : in STD_LOGIC;
    Dbg_Reg_En_24 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_24 : out STD_LOGIC;
    Dbg_Shift_24 : out STD_LOGIC;
    Dbg_Update_24 : out STD_LOGIC;
    Dbg_Rst_24 : out STD_LOGIC;
    Dbg_Trig_In_24 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_In_24 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Out_24 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_Out_24 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_TrClk_24 : out STD_LOGIC;
    Dbg_TrData_24 : in STD_LOGIC_VECTOR ( 0 to 35 );
    Dbg_TrReady_24 : out STD_LOGIC;
    Dbg_TrValid_24 : in STD_LOGIC;
    Dbg_AWADDR_24 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_AWVALID_24 : out STD_LOGIC;
    Dbg_AWREADY_24 : in STD_LOGIC;
    Dbg_WDATA_24 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_WVALID_24 : out STD_LOGIC;
    Dbg_WREADY_24 : in STD_LOGIC;
    Dbg_BRESP_24 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_BVALID_24 : in STD_LOGIC;
    Dbg_BREADY_24 : out STD_LOGIC;
    Dbg_ARADDR_24 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_ARVALID_24 : out STD_LOGIC;
    Dbg_ARREADY_24 : in STD_LOGIC;
    Dbg_RDATA_24 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_RRESP_24 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_RVALID_24 : in STD_LOGIC;
    Dbg_RREADY_24 : out STD_LOGIC;
    Dbg_Disable_25 : out STD_LOGIC;
    Dbg_Clk_25 : out STD_LOGIC;
    Dbg_TDI_25 : out STD_LOGIC;
    Dbg_TDO_25 : in STD_LOGIC;
    Dbg_Reg_En_25 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_25 : out STD_LOGIC;
    Dbg_Shift_25 : out STD_LOGIC;
    Dbg_Update_25 : out STD_LOGIC;
    Dbg_Rst_25 : out STD_LOGIC;
    Dbg_Trig_In_25 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_In_25 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Out_25 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_Out_25 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_TrClk_25 : out STD_LOGIC;
    Dbg_TrData_25 : in STD_LOGIC_VECTOR ( 0 to 35 );
    Dbg_TrReady_25 : out STD_LOGIC;
    Dbg_TrValid_25 : in STD_LOGIC;
    Dbg_AWADDR_25 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_AWVALID_25 : out STD_LOGIC;
    Dbg_AWREADY_25 : in STD_LOGIC;
    Dbg_WDATA_25 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_WVALID_25 : out STD_LOGIC;
    Dbg_WREADY_25 : in STD_LOGIC;
    Dbg_BRESP_25 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_BVALID_25 : in STD_LOGIC;
    Dbg_BREADY_25 : out STD_LOGIC;
    Dbg_ARADDR_25 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_ARVALID_25 : out STD_LOGIC;
    Dbg_ARREADY_25 : in STD_LOGIC;
    Dbg_RDATA_25 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_RRESP_25 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_RVALID_25 : in STD_LOGIC;
    Dbg_RREADY_25 : out STD_LOGIC;
    Dbg_Disable_26 : out STD_LOGIC;
    Dbg_Clk_26 : out STD_LOGIC;
    Dbg_TDI_26 : out STD_LOGIC;
    Dbg_TDO_26 : in STD_LOGIC;
    Dbg_Reg_En_26 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_26 : out STD_LOGIC;
    Dbg_Shift_26 : out STD_LOGIC;
    Dbg_Update_26 : out STD_LOGIC;
    Dbg_Rst_26 : out STD_LOGIC;
    Dbg_Trig_In_26 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_In_26 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Out_26 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_Out_26 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_TrClk_26 : out STD_LOGIC;
    Dbg_TrData_26 : in STD_LOGIC_VECTOR ( 0 to 35 );
    Dbg_TrReady_26 : out STD_LOGIC;
    Dbg_TrValid_26 : in STD_LOGIC;
    Dbg_AWADDR_26 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_AWVALID_26 : out STD_LOGIC;
    Dbg_AWREADY_26 : in STD_LOGIC;
    Dbg_WDATA_26 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_WVALID_26 : out STD_LOGIC;
    Dbg_WREADY_26 : in STD_LOGIC;
    Dbg_BRESP_26 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_BVALID_26 : in STD_LOGIC;
    Dbg_BREADY_26 : out STD_LOGIC;
    Dbg_ARADDR_26 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_ARVALID_26 : out STD_LOGIC;
    Dbg_ARREADY_26 : in STD_LOGIC;
    Dbg_RDATA_26 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_RRESP_26 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_RVALID_26 : in STD_LOGIC;
    Dbg_RREADY_26 : out STD_LOGIC;
    Dbg_Disable_27 : out STD_LOGIC;
    Dbg_Clk_27 : out STD_LOGIC;
    Dbg_TDI_27 : out STD_LOGIC;
    Dbg_TDO_27 : in STD_LOGIC;
    Dbg_Reg_En_27 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_27 : out STD_LOGIC;
    Dbg_Shift_27 : out STD_LOGIC;
    Dbg_Update_27 : out STD_LOGIC;
    Dbg_Rst_27 : out STD_LOGIC;
    Dbg_Trig_In_27 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_In_27 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Out_27 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_Out_27 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_TrClk_27 : out STD_LOGIC;
    Dbg_TrData_27 : in STD_LOGIC_VECTOR ( 0 to 35 );
    Dbg_TrReady_27 : out STD_LOGIC;
    Dbg_TrValid_27 : in STD_LOGIC;
    Dbg_AWADDR_27 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_AWVALID_27 : out STD_LOGIC;
    Dbg_AWREADY_27 : in STD_LOGIC;
    Dbg_WDATA_27 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_WVALID_27 : out STD_LOGIC;
    Dbg_WREADY_27 : in STD_LOGIC;
    Dbg_BRESP_27 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_BVALID_27 : in STD_LOGIC;
    Dbg_BREADY_27 : out STD_LOGIC;
    Dbg_ARADDR_27 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_ARVALID_27 : out STD_LOGIC;
    Dbg_ARREADY_27 : in STD_LOGIC;
    Dbg_RDATA_27 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_RRESP_27 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_RVALID_27 : in STD_LOGIC;
    Dbg_RREADY_27 : out STD_LOGIC;
    Dbg_Disable_28 : out STD_LOGIC;
    Dbg_Clk_28 : out STD_LOGIC;
    Dbg_TDI_28 : out STD_LOGIC;
    Dbg_TDO_28 : in STD_LOGIC;
    Dbg_Reg_En_28 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_28 : out STD_LOGIC;
    Dbg_Shift_28 : out STD_LOGIC;
    Dbg_Update_28 : out STD_LOGIC;
    Dbg_Rst_28 : out STD_LOGIC;
    Dbg_Trig_In_28 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_In_28 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Out_28 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_Out_28 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_TrClk_28 : out STD_LOGIC;
    Dbg_TrData_28 : in STD_LOGIC_VECTOR ( 0 to 35 );
    Dbg_TrReady_28 : out STD_LOGIC;
    Dbg_TrValid_28 : in STD_LOGIC;
    Dbg_AWADDR_28 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_AWVALID_28 : out STD_LOGIC;
    Dbg_AWREADY_28 : in STD_LOGIC;
    Dbg_WDATA_28 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_WVALID_28 : out STD_LOGIC;
    Dbg_WREADY_28 : in STD_LOGIC;
    Dbg_BRESP_28 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_BVALID_28 : in STD_LOGIC;
    Dbg_BREADY_28 : out STD_LOGIC;
    Dbg_ARADDR_28 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_ARVALID_28 : out STD_LOGIC;
    Dbg_ARREADY_28 : in STD_LOGIC;
    Dbg_RDATA_28 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_RRESP_28 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_RVALID_28 : in STD_LOGIC;
    Dbg_RREADY_28 : out STD_LOGIC;
    Dbg_Disable_29 : out STD_LOGIC;
    Dbg_Clk_29 : out STD_LOGIC;
    Dbg_TDI_29 : out STD_LOGIC;
    Dbg_TDO_29 : in STD_LOGIC;
    Dbg_Reg_En_29 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_29 : out STD_LOGIC;
    Dbg_Shift_29 : out STD_LOGIC;
    Dbg_Update_29 : out STD_LOGIC;
    Dbg_Rst_29 : out STD_LOGIC;
    Dbg_Trig_In_29 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_In_29 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Out_29 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_Out_29 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_TrClk_29 : out STD_LOGIC;
    Dbg_TrData_29 : in STD_LOGIC_VECTOR ( 0 to 35 );
    Dbg_TrReady_29 : out STD_LOGIC;
    Dbg_TrValid_29 : in STD_LOGIC;
    Dbg_AWADDR_29 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_AWVALID_29 : out STD_LOGIC;
    Dbg_AWREADY_29 : in STD_LOGIC;
    Dbg_WDATA_29 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_WVALID_29 : out STD_LOGIC;
    Dbg_WREADY_29 : in STD_LOGIC;
    Dbg_BRESP_29 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_BVALID_29 : in STD_LOGIC;
    Dbg_BREADY_29 : out STD_LOGIC;
    Dbg_ARADDR_29 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_ARVALID_29 : out STD_LOGIC;
    Dbg_ARREADY_29 : in STD_LOGIC;
    Dbg_RDATA_29 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_RRESP_29 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_RVALID_29 : in STD_LOGIC;
    Dbg_RREADY_29 : out STD_LOGIC;
    Dbg_Disable_30 : out STD_LOGIC;
    Dbg_Clk_30 : out STD_LOGIC;
    Dbg_TDI_30 : out STD_LOGIC;
    Dbg_TDO_30 : in STD_LOGIC;
    Dbg_Reg_En_30 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_30 : out STD_LOGIC;
    Dbg_Shift_30 : out STD_LOGIC;
    Dbg_Update_30 : out STD_LOGIC;
    Dbg_Rst_30 : out STD_LOGIC;
    Dbg_Trig_In_30 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_In_30 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Out_30 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_Out_30 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_TrClk_30 : out STD_LOGIC;
    Dbg_TrData_30 : in STD_LOGIC_VECTOR ( 0 to 35 );
    Dbg_TrReady_30 : out STD_LOGIC;
    Dbg_TrValid_30 : in STD_LOGIC;
    Dbg_AWADDR_30 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_AWVALID_30 : out STD_LOGIC;
    Dbg_AWREADY_30 : in STD_LOGIC;
    Dbg_WDATA_30 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_WVALID_30 : out STD_LOGIC;
    Dbg_WREADY_30 : in STD_LOGIC;
    Dbg_BRESP_30 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_BVALID_30 : in STD_LOGIC;
    Dbg_BREADY_30 : out STD_LOGIC;
    Dbg_ARADDR_30 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_ARVALID_30 : out STD_LOGIC;
    Dbg_ARREADY_30 : in STD_LOGIC;
    Dbg_RDATA_30 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_RRESP_30 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_RVALID_30 : in STD_LOGIC;
    Dbg_RREADY_30 : out STD_LOGIC;
    Dbg_Disable_31 : out STD_LOGIC;
    Dbg_Clk_31 : out STD_LOGIC;
    Dbg_TDI_31 : out STD_LOGIC;
    Dbg_TDO_31 : in STD_LOGIC;
    Dbg_Reg_En_31 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_31 : out STD_LOGIC;
    Dbg_Shift_31 : out STD_LOGIC;
    Dbg_Update_31 : out STD_LOGIC;
    Dbg_Rst_31 : out STD_LOGIC;
    Dbg_Trig_In_31 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_In_31 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Out_31 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_Out_31 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_TrClk_31 : out STD_LOGIC;
    Dbg_TrData_31 : in STD_LOGIC_VECTOR ( 0 to 35 );
    Dbg_TrReady_31 : out STD_LOGIC;
    Dbg_TrValid_31 : in STD_LOGIC;
    Dbg_AWADDR_31 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_AWVALID_31 : out STD_LOGIC;
    Dbg_AWREADY_31 : in STD_LOGIC;
    Dbg_WDATA_31 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_WVALID_31 : out STD_LOGIC;
    Dbg_WREADY_31 : in STD_LOGIC;
    Dbg_BRESP_31 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_BVALID_31 : in STD_LOGIC;
    Dbg_BREADY_31 : out STD_LOGIC;
    Dbg_ARADDR_31 : out STD_LOGIC_VECTOR ( 14 downto 2 );
    Dbg_ARVALID_31 : out STD_LOGIC;
    Dbg_ARREADY_31 : in STD_LOGIC;
    Dbg_RDATA_31 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dbg_RRESP_31 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dbg_RVALID_31 : in STD_LOGIC;
    Dbg_RREADY_31 : out STD_LOGIC;
    bscan_ext_tdi : in STD_LOGIC;
    bscan_ext_reset : in STD_LOGIC;
    bscan_ext_shift : in STD_LOGIC;
    bscan_ext_update : in STD_LOGIC;
    bscan_ext_capture : in STD_LOGIC;
    bscan_ext_sel : in STD_LOGIC;
    bscan_ext_drck : in STD_LOGIC;
    bscan_ext_tdo : out STD_LOGIC;
    Ext_JTAG_DRCK : out STD_LOGIC;
    Ext_JTAG_RESET : out STD_LOGIC;
    Ext_JTAG_SEL : out STD_LOGIC;
    Ext_JTAG_CAPTURE : out STD_LOGIC;
    Ext_JTAG_SHIFT : out STD_LOGIC;
    Ext_JTAG_UPDATE : out STD_LOGIC;
    Ext_JTAG_TDI : out STD_LOGIC;
    Ext_JTAG_TDO : in STD_LOGIC
  );
  attribute C_DATA_SIZE : integer;
  attribute C_DATA_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MDM : entity is 32;
  attribute C_DBG_MEM_ACCESS : integer;
  attribute C_DBG_MEM_ACCESS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MDM : entity is 0;
  attribute C_DBG_REG_ACCESS : integer;
  attribute C_DBG_REG_ACCESS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MDM : entity is 0;
  attribute C_DEBUG_INTERFACE : integer;
  attribute C_DEBUG_INTERFACE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MDM : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MDM : entity is "virtex7";
  attribute C_INTERCONNECT : integer;
  attribute C_INTERCONNECT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MDM : entity is 2;
  attribute C_JTAG_CHAIN : integer;
  attribute C_JTAG_CHAIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MDM : entity is 2;
  attribute C_MB_DBG_PORTS : integer;
  attribute C_MB_DBG_PORTS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MDM : entity is 1;
  attribute C_M_AXIS_DATA_WIDTH : integer;
  attribute C_M_AXIS_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MDM : entity is 32;
  attribute C_M_AXIS_ID_WIDTH : integer;
  attribute C_M_AXIS_ID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MDM : entity is 7;
  attribute C_M_AXI_ADDR_WIDTH : integer;
  attribute C_M_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MDM : entity is 32;
  attribute C_M_AXI_DATA_WIDTH : integer;
  attribute C_M_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MDM : entity is 32;
  attribute C_M_AXI_THREAD_ID_WIDTH : integer;
  attribute C_M_AXI_THREAD_ID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MDM : entity is 1;
  attribute C_S_AXI_ACLK_FREQ_HZ : integer;
  attribute C_S_AXI_ACLK_FREQ_HZ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MDM : entity is 100000000;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MDM : entity is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MDM : entity is 32;
  attribute C_TRACE_CLK_FREQ_HZ : integer;
  attribute C_TRACE_CLK_FREQ_HZ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MDM : entity is 200000000;
  attribute C_TRACE_CLK_OUT_PHASE : integer;
  attribute C_TRACE_CLK_OUT_PHASE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MDM : entity is 90;
  attribute C_TRACE_DATA_WIDTH : integer;
  attribute C_TRACE_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MDM : entity is 32;
  attribute C_TRACE_OUTPUT : integer;
  attribute C_TRACE_OUTPUT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MDM : entity is 0;
  attribute C_USE_BSCAN : integer;
  attribute C_USE_BSCAN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MDM : entity is 0;
  attribute C_USE_CONFIG_RESET : integer;
  attribute C_USE_CONFIG_RESET of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MDM : entity is 0;
  attribute C_USE_CROSS_TRIGGER : integer;
  attribute C_USE_CROSS_TRIGGER of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MDM : entity is 0;
  attribute C_USE_UART : integer;
  attribute C_USE_UART of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MDM : entity is 1;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MDM;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MDM is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^dbg_clk_31\ : STD_LOGIC;
  signal \^dbg_shift_0\ : STD_LOGIC;
  signal \^dbg_tdi_31\ : STD_LOGIC;
  signal \^ext_jtag_capture\ : STD_LOGIC;
  signal \^ext_jtag_shift\ : STD_LOGIC;
  signal \^ext_jtag_update\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ : STD_LOGIC;
  signal \JTAG_CONTROL_I/FIFO_Write\ : STD_LOGIC;
  signal \JTAG_CONTROL_I/Use_Serial_Unified_Completion.count_reg\ : STD_LOGIC_VECTOR ( 5 to 5 );
  signal \JTAG_CONTROL_I/fifo_Data_Present\ : STD_LOGIC;
  signal \JTAG_CONTROL_I/p_0_in28_in\ : STD_LOGIC;
  signal \JTAG_CONTROL_I/p_31_out__0\ : STD_LOGIC;
  signal \JTAG_CONTROL_I/p_54_out__0\ : STD_LOGIC;
  signal MDM_Core_I1_n_0 : STD_LOGIC;
  signal MDM_Core_I1_n_12 : STD_LOGIC;
  signal MDM_Core_I1_n_35 : STD_LOGIC;
  signal RX_Data : STD_LOGIC_VECTOR ( 0 to 7 );
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \Use_AXI_IPIF.AXI_LITE_IPIF_I_n_15\ : STD_LOGIC;
  signal \Use_E2.BSCAN_I_n_13\ : STD_LOGIC;
  signal \Use_E2.BSCAN_I_n_14\ : STD_LOGIC;
  signal \Use_E2.BSCAN_I_n_7\ : STD_LOGIC;
  signal bus2ip_rdce : STD_LOGIC_VECTOR ( 3 to 3 );
  signal bus2ip_wrce : STD_LOGIC_VECTOR ( 2 to 2 );
  signal clear_Ext_BRK : STD_LOGIC;
  signal drck_i : STD_LOGIC;
  signal enable_interrupts : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_0_in_0 : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 15 to 15 );
  signal reset_RX_FIFO : STD_LOGIC;
  signal reset_TX_FIFO : STD_LOGIC;
  signal rx_Data_Present : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal sel_n_reset : STD_LOGIC;
  signal shift_n_reset : STD_LOGIC;
  signal tdo : STD_LOGIC;
  signal tx_Buffer_Full : STD_LOGIC;
begin
  Dbg_ARADDR_0(14) <= \<const0>\;
  Dbg_ARADDR_0(13) <= \<const0>\;
  Dbg_ARADDR_0(12) <= \<const0>\;
  Dbg_ARADDR_0(11) <= \<const0>\;
  Dbg_ARADDR_0(10) <= \<const0>\;
  Dbg_ARADDR_0(9) <= \<const0>\;
  Dbg_ARADDR_0(8) <= \<const0>\;
  Dbg_ARADDR_0(7) <= \<const0>\;
  Dbg_ARADDR_0(6) <= \<const0>\;
  Dbg_ARADDR_0(5) <= \<const0>\;
  Dbg_ARADDR_0(4) <= \<const0>\;
  Dbg_ARADDR_0(3) <= \<const0>\;
  Dbg_ARADDR_0(2) <= \<const0>\;
  Dbg_ARADDR_1(14) <= \<const0>\;
  Dbg_ARADDR_1(13) <= \<const0>\;
  Dbg_ARADDR_1(12) <= \<const0>\;
  Dbg_ARADDR_1(11) <= \<const0>\;
  Dbg_ARADDR_1(10) <= \<const0>\;
  Dbg_ARADDR_1(9) <= \<const0>\;
  Dbg_ARADDR_1(8) <= \<const0>\;
  Dbg_ARADDR_1(7) <= \<const0>\;
  Dbg_ARADDR_1(6) <= \<const0>\;
  Dbg_ARADDR_1(5) <= \<const0>\;
  Dbg_ARADDR_1(4) <= \<const0>\;
  Dbg_ARADDR_1(3) <= \<const0>\;
  Dbg_ARADDR_1(2) <= \<const0>\;
  Dbg_ARADDR_10(14) <= \<const0>\;
  Dbg_ARADDR_10(13) <= \<const0>\;
  Dbg_ARADDR_10(12) <= \<const0>\;
  Dbg_ARADDR_10(11) <= \<const0>\;
  Dbg_ARADDR_10(10) <= \<const0>\;
  Dbg_ARADDR_10(9) <= \<const0>\;
  Dbg_ARADDR_10(8) <= \<const0>\;
  Dbg_ARADDR_10(7) <= \<const0>\;
  Dbg_ARADDR_10(6) <= \<const0>\;
  Dbg_ARADDR_10(5) <= \<const0>\;
  Dbg_ARADDR_10(4) <= \<const0>\;
  Dbg_ARADDR_10(3) <= \<const0>\;
  Dbg_ARADDR_10(2) <= \<const0>\;
  Dbg_ARADDR_11(14) <= \<const0>\;
  Dbg_ARADDR_11(13) <= \<const0>\;
  Dbg_ARADDR_11(12) <= \<const0>\;
  Dbg_ARADDR_11(11) <= \<const0>\;
  Dbg_ARADDR_11(10) <= \<const0>\;
  Dbg_ARADDR_11(9) <= \<const0>\;
  Dbg_ARADDR_11(8) <= \<const0>\;
  Dbg_ARADDR_11(7) <= \<const0>\;
  Dbg_ARADDR_11(6) <= \<const0>\;
  Dbg_ARADDR_11(5) <= \<const0>\;
  Dbg_ARADDR_11(4) <= \<const0>\;
  Dbg_ARADDR_11(3) <= \<const0>\;
  Dbg_ARADDR_11(2) <= \<const0>\;
  Dbg_ARADDR_12(14) <= \<const0>\;
  Dbg_ARADDR_12(13) <= \<const0>\;
  Dbg_ARADDR_12(12) <= \<const0>\;
  Dbg_ARADDR_12(11) <= \<const0>\;
  Dbg_ARADDR_12(10) <= \<const0>\;
  Dbg_ARADDR_12(9) <= \<const0>\;
  Dbg_ARADDR_12(8) <= \<const0>\;
  Dbg_ARADDR_12(7) <= \<const0>\;
  Dbg_ARADDR_12(6) <= \<const0>\;
  Dbg_ARADDR_12(5) <= \<const0>\;
  Dbg_ARADDR_12(4) <= \<const0>\;
  Dbg_ARADDR_12(3) <= \<const0>\;
  Dbg_ARADDR_12(2) <= \<const0>\;
  Dbg_ARADDR_13(14) <= \<const0>\;
  Dbg_ARADDR_13(13) <= \<const0>\;
  Dbg_ARADDR_13(12) <= \<const0>\;
  Dbg_ARADDR_13(11) <= \<const0>\;
  Dbg_ARADDR_13(10) <= \<const0>\;
  Dbg_ARADDR_13(9) <= \<const0>\;
  Dbg_ARADDR_13(8) <= \<const0>\;
  Dbg_ARADDR_13(7) <= \<const0>\;
  Dbg_ARADDR_13(6) <= \<const0>\;
  Dbg_ARADDR_13(5) <= \<const0>\;
  Dbg_ARADDR_13(4) <= \<const0>\;
  Dbg_ARADDR_13(3) <= \<const0>\;
  Dbg_ARADDR_13(2) <= \<const0>\;
  Dbg_ARADDR_14(14) <= \<const0>\;
  Dbg_ARADDR_14(13) <= \<const0>\;
  Dbg_ARADDR_14(12) <= \<const0>\;
  Dbg_ARADDR_14(11) <= \<const0>\;
  Dbg_ARADDR_14(10) <= \<const0>\;
  Dbg_ARADDR_14(9) <= \<const0>\;
  Dbg_ARADDR_14(8) <= \<const0>\;
  Dbg_ARADDR_14(7) <= \<const0>\;
  Dbg_ARADDR_14(6) <= \<const0>\;
  Dbg_ARADDR_14(5) <= \<const0>\;
  Dbg_ARADDR_14(4) <= \<const0>\;
  Dbg_ARADDR_14(3) <= \<const0>\;
  Dbg_ARADDR_14(2) <= \<const0>\;
  Dbg_ARADDR_15(14) <= \<const0>\;
  Dbg_ARADDR_15(13) <= \<const0>\;
  Dbg_ARADDR_15(12) <= \<const0>\;
  Dbg_ARADDR_15(11) <= \<const0>\;
  Dbg_ARADDR_15(10) <= \<const0>\;
  Dbg_ARADDR_15(9) <= \<const0>\;
  Dbg_ARADDR_15(8) <= \<const0>\;
  Dbg_ARADDR_15(7) <= \<const0>\;
  Dbg_ARADDR_15(6) <= \<const0>\;
  Dbg_ARADDR_15(5) <= \<const0>\;
  Dbg_ARADDR_15(4) <= \<const0>\;
  Dbg_ARADDR_15(3) <= \<const0>\;
  Dbg_ARADDR_15(2) <= \<const0>\;
  Dbg_ARADDR_16(14) <= \<const0>\;
  Dbg_ARADDR_16(13) <= \<const0>\;
  Dbg_ARADDR_16(12) <= \<const0>\;
  Dbg_ARADDR_16(11) <= \<const0>\;
  Dbg_ARADDR_16(10) <= \<const0>\;
  Dbg_ARADDR_16(9) <= \<const0>\;
  Dbg_ARADDR_16(8) <= \<const0>\;
  Dbg_ARADDR_16(7) <= \<const0>\;
  Dbg_ARADDR_16(6) <= \<const0>\;
  Dbg_ARADDR_16(5) <= \<const0>\;
  Dbg_ARADDR_16(4) <= \<const0>\;
  Dbg_ARADDR_16(3) <= \<const0>\;
  Dbg_ARADDR_16(2) <= \<const0>\;
  Dbg_ARADDR_17(14) <= \<const0>\;
  Dbg_ARADDR_17(13) <= \<const0>\;
  Dbg_ARADDR_17(12) <= \<const0>\;
  Dbg_ARADDR_17(11) <= \<const0>\;
  Dbg_ARADDR_17(10) <= \<const0>\;
  Dbg_ARADDR_17(9) <= \<const0>\;
  Dbg_ARADDR_17(8) <= \<const0>\;
  Dbg_ARADDR_17(7) <= \<const0>\;
  Dbg_ARADDR_17(6) <= \<const0>\;
  Dbg_ARADDR_17(5) <= \<const0>\;
  Dbg_ARADDR_17(4) <= \<const0>\;
  Dbg_ARADDR_17(3) <= \<const0>\;
  Dbg_ARADDR_17(2) <= \<const0>\;
  Dbg_ARADDR_18(14) <= \<const0>\;
  Dbg_ARADDR_18(13) <= \<const0>\;
  Dbg_ARADDR_18(12) <= \<const0>\;
  Dbg_ARADDR_18(11) <= \<const0>\;
  Dbg_ARADDR_18(10) <= \<const0>\;
  Dbg_ARADDR_18(9) <= \<const0>\;
  Dbg_ARADDR_18(8) <= \<const0>\;
  Dbg_ARADDR_18(7) <= \<const0>\;
  Dbg_ARADDR_18(6) <= \<const0>\;
  Dbg_ARADDR_18(5) <= \<const0>\;
  Dbg_ARADDR_18(4) <= \<const0>\;
  Dbg_ARADDR_18(3) <= \<const0>\;
  Dbg_ARADDR_18(2) <= \<const0>\;
  Dbg_ARADDR_19(14) <= \<const0>\;
  Dbg_ARADDR_19(13) <= \<const0>\;
  Dbg_ARADDR_19(12) <= \<const0>\;
  Dbg_ARADDR_19(11) <= \<const0>\;
  Dbg_ARADDR_19(10) <= \<const0>\;
  Dbg_ARADDR_19(9) <= \<const0>\;
  Dbg_ARADDR_19(8) <= \<const0>\;
  Dbg_ARADDR_19(7) <= \<const0>\;
  Dbg_ARADDR_19(6) <= \<const0>\;
  Dbg_ARADDR_19(5) <= \<const0>\;
  Dbg_ARADDR_19(4) <= \<const0>\;
  Dbg_ARADDR_19(3) <= \<const0>\;
  Dbg_ARADDR_19(2) <= \<const0>\;
  Dbg_ARADDR_2(14) <= \<const0>\;
  Dbg_ARADDR_2(13) <= \<const0>\;
  Dbg_ARADDR_2(12) <= \<const0>\;
  Dbg_ARADDR_2(11) <= \<const0>\;
  Dbg_ARADDR_2(10) <= \<const0>\;
  Dbg_ARADDR_2(9) <= \<const0>\;
  Dbg_ARADDR_2(8) <= \<const0>\;
  Dbg_ARADDR_2(7) <= \<const0>\;
  Dbg_ARADDR_2(6) <= \<const0>\;
  Dbg_ARADDR_2(5) <= \<const0>\;
  Dbg_ARADDR_2(4) <= \<const0>\;
  Dbg_ARADDR_2(3) <= \<const0>\;
  Dbg_ARADDR_2(2) <= \<const0>\;
  Dbg_ARADDR_20(14) <= \<const0>\;
  Dbg_ARADDR_20(13) <= \<const0>\;
  Dbg_ARADDR_20(12) <= \<const0>\;
  Dbg_ARADDR_20(11) <= \<const0>\;
  Dbg_ARADDR_20(10) <= \<const0>\;
  Dbg_ARADDR_20(9) <= \<const0>\;
  Dbg_ARADDR_20(8) <= \<const0>\;
  Dbg_ARADDR_20(7) <= \<const0>\;
  Dbg_ARADDR_20(6) <= \<const0>\;
  Dbg_ARADDR_20(5) <= \<const0>\;
  Dbg_ARADDR_20(4) <= \<const0>\;
  Dbg_ARADDR_20(3) <= \<const0>\;
  Dbg_ARADDR_20(2) <= \<const0>\;
  Dbg_ARADDR_21(14) <= \<const0>\;
  Dbg_ARADDR_21(13) <= \<const0>\;
  Dbg_ARADDR_21(12) <= \<const0>\;
  Dbg_ARADDR_21(11) <= \<const0>\;
  Dbg_ARADDR_21(10) <= \<const0>\;
  Dbg_ARADDR_21(9) <= \<const0>\;
  Dbg_ARADDR_21(8) <= \<const0>\;
  Dbg_ARADDR_21(7) <= \<const0>\;
  Dbg_ARADDR_21(6) <= \<const0>\;
  Dbg_ARADDR_21(5) <= \<const0>\;
  Dbg_ARADDR_21(4) <= \<const0>\;
  Dbg_ARADDR_21(3) <= \<const0>\;
  Dbg_ARADDR_21(2) <= \<const0>\;
  Dbg_ARADDR_22(14) <= \<const0>\;
  Dbg_ARADDR_22(13) <= \<const0>\;
  Dbg_ARADDR_22(12) <= \<const0>\;
  Dbg_ARADDR_22(11) <= \<const0>\;
  Dbg_ARADDR_22(10) <= \<const0>\;
  Dbg_ARADDR_22(9) <= \<const0>\;
  Dbg_ARADDR_22(8) <= \<const0>\;
  Dbg_ARADDR_22(7) <= \<const0>\;
  Dbg_ARADDR_22(6) <= \<const0>\;
  Dbg_ARADDR_22(5) <= \<const0>\;
  Dbg_ARADDR_22(4) <= \<const0>\;
  Dbg_ARADDR_22(3) <= \<const0>\;
  Dbg_ARADDR_22(2) <= \<const0>\;
  Dbg_ARADDR_23(14) <= \<const0>\;
  Dbg_ARADDR_23(13) <= \<const0>\;
  Dbg_ARADDR_23(12) <= \<const0>\;
  Dbg_ARADDR_23(11) <= \<const0>\;
  Dbg_ARADDR_23(10) <= \<const0>\;
  Dbg_ARADDR_23(9) <= \<const0>\;
  Dbg_ARADDR_23(8) <= \<const0>\;
  Dbg_ARADDR_23(7) <= \<const0>\;
  Dbg_ARADDR_23(6) <= \<const0>\;
  Dbg_ARADDR_23(5) <= \<const0>\;
  Dbg_ARADDR_23(4) <= \<const0>\;
  Dbg_ARADDR_23(3) <= \<const0>\;
  Dbg_ARADDR_23(2) <= \<const0>\;
  Dbg_ARADDR_24(14) <= \<const0>\;
  Dbg_ARADDR_24(13) <= \<const0>\;
  Dbg_ARADDR_24(12) <= \<const0>\;
  Dbg_ARADDR_24(11) <= \<const0>\;
  Dbg_ARADDR_24(10) <= \<const0>\;
  Dbg_ARADDR_24(9) <= \<const0>\;
  Dbg_ARADDR_24(8) <= \<const0>\;
  Dbg_ARADDR_24(7) <= \<const0>\;
  Dbg_ARADDR_24(6) <= \<const0>\;
  Dbg_ARADDR_24(5) <= \<const0>\;
  Dbg_ARADDR_24(4) <= \<const0>\;
  Dbg_ARADDR_24(3) <= \<const0>\;
  Dbg_ARADDR_24(2) <= \<const0>\;
  Dbg_ARADDR_25(14) <= \<const0>\;
  Dbg_ARADDR_25(13) <= \<const0>\;
  Dbg_ARADDR_25(12) <= \<const0>\;
  Dbg_ARADDR_25(11) <= \<const0>\;
  Dbg_ARADDR_25(10) <= \<const0>\;
  Dbg_ARADDR_25(9) <= \<const0>\;
  Dbg_ARADDR_25(8) <= \<const0>\;
  Dbg_ARADDR_25(7) <= \<const0>\;
  Dbg_ARADDR_25(6) <= \<const0>\;
  Dbg_ARADDR_25(5) <= \<const0>\;
  Dbg_ARADDR_25(4) <= \<const0>\;
  Dbg_ARADDR_25(3) <= \<const0>\;
  Dbg_ARADDR_25(2) <= \<const0>\;
  Dbg_ARADDR_26(14) <= \<const0>\;
  Dbg_ARADDR_26(13) <= \<const0>\;
  Dbg_ARADDR_26(12) <= \<const0>\;
  Dbg_ARADDR_26(11) <= \<const0>\;
  Dbg_ARADDR_26(10) <= \<const0>\;
  Dbg_ARADDR_26(9) <= \<const0>\;
  Dbg_ARADDR_26(8) <= \<const0>\;
  Dbg_ARADDR_26(7) <= \<const0>\;
  Dbg_ARADDR_26(6) <= \<const0>\;
  Dbg_ARADDR_26(5) <= \<const0>\;
  Dbg_ARADDR_26(4) <= \<const0>\;
  Dbg_ARADDR_26(3) <= \<const0>\;
  Dbg_ARADDR_26(2) <= \<const0>\;
  Dbg_ARADDR_27(14) <= \<const0>\;
  Dbg_ARADDR_27(13) <= \<const0>\;
  Dbg_ARADDR_27(12) <= \<const0>\;
  Dbg_ARADDR_27(11) <= \<const0>\;
  Dbg_ARADDR_27(10) <= \<const0>\;
  Dbg_ARADDR_27(9) <= \<const0>\;
  Dbg_ARADDR_27(8) <= \<const0>\;
  Dbg_ARADDR_27(7) <= \<const0>\;
  Dbg_ARADDR_27(6) <= \<const0>\;
  Dbg_ARADDR_27(5) <= \<const0>\;
  Dbg_ARADDR_27(4) <= \<const0>\;
  Dbg_ARADDR_27(3) <= \<const0>\;
  Dbg_ARADDR_27(2) <= \<const0>\;
  Dbg_ARADDR_28(14) <= \<const0>\;
  Dbg_ARADDR_28(13) <= \<const0>\;
  Dbg_ARADDR_28(12) <= \<const0>\;
  Dbg_ARADDR_28(11) <= \<const0>\;
  Dbg_ARADDR_28(10) <= \<const0>\;
  Dbg_ARADDR_28(9) <= \<const0>\;
  Dbg_ARADDR_28(8) <= \<const0>\;
  Dbg_ARADDR_28(7) <= \<const0>\;
  Dbg_ARADDR_28(6) <= \<const0>\;
  Dbg_ARADDR_28(5) <= \<const0>\;
  Dbg_ARADDR_28(4) <= \<const0>\;
  Dbg_ARADDR_28(3) <= \<const0>\;
  Dbg_ARADDR_28(2) <= \<const0>\;
  Dbg_ARADDR_29(14) <= \<const0>\;
  Dbg_ARADDR_29(13) <= \<const0>\;
  Dbg_ARADDR_29(12) <= \<const0>\;
  Dbg_ARADDR_29(11) <= \<const0>\;
  Dbg_ARADDR_29(10) <= \<const0>\;
  Dbg_ARADDR_29(9) <= \<const0>\;
  Dbg_ARADDR_29(8) <= \<const0>\;
  Dbg_ARADDR_29(7) <= \<const0>\;
  Dbg_ARADDR_29(6) <= \<const0>\;
  Dbg_ARADDR_29(5) <= \<const0>\;
  Dbg_ARADDR_29(4) <= \<const0>\;
  Dbg_ARADDR_29(3) <= \<const0>\;
  Dbg_ARADDR_29(2) <= \<const0>\;
  Dbg_ARADDR_3(14) <= \<const0>\;
  Dbg_ARADDR_3(13) <= \<const0>\;
  Dbg_ARADDR_3(12) <= \<const0>\;
  Dbg_ARADDR_3(11) <= \<const0>\;
  Dbg_ARADDR_3(10) <= \<const0>\;
  Dbg_ARADDR_3(9) <= \<const0>\;
  Dbg_ARADDR_3(8) <= \<const0>\;
  Dbg_ARADDR_3(7) <= \<const0>\;
  Dbg_ARADDR_3(6) <= \<const0>\;
  Dbg_ARADDR_3(5) <= \<const0>\;
  Dbg_ARADDR_3(4) <= \<const0>\;
  Dbg_ARADDR_3(3) <= \<const0>\;
  Dbg_ARADDR_3(2) <= \<const0>\;
  Dbg_ARADDR_30(14) <= \<const0>\;
  Dbg_ARADDR_30(13) <= \<const0>\;
  Dbg_ARADDR_30(12) <= \<const0>\;
  Dbg_ARADDR_30(11) <= \<const0>\;
  Dbg_ARADDR_30(10) <= \<const0>\;
  Dbg_ARADDR_30(9) <= \<const0>\;
  Dbg_ARADDR_30(8) <= \<const0>\;
  Dbg_ARADDR_30(7) <= \<const0>\;
  Dbg_ARADDR_30(6) <= \<const0>\;
  Dbg_ARADDR_30(5) <= \<const0>\;
  Dbg_ARADDR_30(4) <= \<const0>\;
  Dbg_ARADDR_30(3) <= \<const0>\;
  Dbg_ARADDR_30(2) <= \<const0>\;
  Dbg_ARADDR_31(14) <= \<const0>\;
  Dbg_ARADDR_31(13) <= \<const0>\;
  Dbg_ARADDR_31(12) <= \<const0>\;
  Dbg_ARADDR_31(11) <= \<const0>\;
  Dbg_ARADDR_31(10) <= \<const0>\;
  Dbg_ARADDR_31(9) <= \<const0>\;
  Dbg_ARADDR_31(8) <= \<const0>\;
  Dbg_ARADDR_31(7) <= \<const0>\;
  Dbg_ARADDR_31(6) <= \<const0>\;
  Dbg_ARADDR_31(5) <= \<const0>\;
  Dbg_ARADDR_31(4) <= \<const0>\;
  Dbg_ARADDR_31(3) <= \<const0>\;
  Dbg_ARADDR_31(2) <= \<const0>\;
  Dbg_ARADDR_4(14) <= \<const0>\;
  Dbg_ARADDR_4(13) <= \<const0>\;
  Dbg_ARADDR_4(12) <= \<const0>\;
  Dbg_ARADDR_4(11) <= \<const0>\;
  Dbg_ARADDR_4(10) <= \<const0>\;
  Dbg_ARADDR_4(9) <= \<const0>\;
  Dbg_ARADDR_4(8) <= \<const0>\;
  Dbg_ARADDR_4(7) <= \<const0>\;
  Dbg_ARADDR_4(6) <= \<const0>\;
  Dbg_ARADDR_4(5) <= \<const0>\;
  Dbg_ARADDR_4(4) <= \<const0>\;
  Dbg_ARADDR_4(3) <= \<const0>\;
  Dbg_ARADDR_4(2) <= \<const0>\;
  Dbg_ARADDR_5(14) <= \<const0>\;
  Dbg_ARADDR_5(13) <= \<const0>\;
  Dbg_ARADDR_5(12) <= \<const0>\;
  Dbg_ARADDR_5(11) <= \<const0>\;
  Dbg_ARADDR_5(10) <= \<const0>\;
  Dbg_ARADDR_5(9) <= \<const0>\;
  Dbg_ARADDR_5(8) <= \<const0>\;
  Dbg_ARADDR_5(7) <= \<const0>\;
  Dbg_ARADDR_5(6) <= \<const0>\;
  Dbg_ARADDR_5(5) <= \<const0>\;
  Dbg_ARADDR_5(4) <= \<const0>\;
  Dbg_ARADDR_5(3) <= \<const0>\;
  Dbg_ARADDR_5(2) <= \<const0>\;
  Dbg_ARADDR_6(14) <= \<const0>\;
  Dbg_ARADDR_6(13) <= \<const0>\;
  Dbg_ARADDR_6(12) <= \<const0>\;
  Dbg_ARADDR_6(11) <= \<const0>\;
  Dbg_ARADDR_6(10) <= \<const0>\;
  Dbg_ARADDR_6(9) <= \<const0>\;
  Dbg_ARADDR_6(8) <= \<const0>\;
  Dbg_ARADDR_6(7) <= \<const0>\;
  Dbg_ARADDR_6(6) <= \<const0>\;
  Dbg_ARADDR_6(5) <= \<const0>\;
  Dbg_ARADDR_6(4) <= \<const0>\;
  Dbg_ARADDR_6(3) <= \<const0>\;
  Dbg_ARADDR_6(2) <= \<const0>\;
  Dbg_ARADDR_7(14) <= \<const0>\;
  Dbg_ARADDR_7(13) <= \<const0>\;
  Dbg_ARADDR_7(12) <= \<const0>\;
  Dbg_ARADDR_7(11) <= \<const0>\;
  Dbg_ARADDR_7(10) <= \<const0>\;
  Dbg_ARADDR_7(9) <= \<const0>\;
  Dbg_ARADDR_7(8) <= \<const0>\;
  Dbg_ARADDR_7(7) <= \<const0>\;
  Dbg_ARADDR_7(6) <= \<const0>\;
  Dbg_ARADDR_7(5) <= \<const0>\;
  Dbg_ARADDR_7(4) <= \<const0>\;
  Dbg_ARADDR_7(3) <= \<const0>\;
  Dbg_ARADDR_7(2) <= \<const0>\;
  Dbg_ARADDR_8(14) <= \<const0>\;
  Dbg_ARADDR_8(13) <= \<const0>\;
  Dbg_ARADDR_8(12) <= \<const0>\;
  Dbg_ARADDR_8(11) <= \<const0>\;
  Dbg_ARADDR_8(10) <= \<const0>\;
  Dbg_ARADDR_8(9) <= \<const0>\;
  Dbg_ARADDR_8(8) <= \<const0>\;
  Dbg_ARADDR_8(7) <= \<const0>\;
  Dbg_ARADDR_8(6) <= \<const0>\;
  Dbg_ARADDR_8(5) <= \<const0>\;
  Dbg_ARADDR_8(4) <= \<const0>\;
  Dbg_ARADDR_8(3) <= \<const0>\;
  Dbg_ARADDR_8(2) <= \<const0>\;
  Dbg_ARADDR_9(14) <= \<const0>\;
  Dbg_ARADDR_9(13) <= \<const0>\;
  Dbg_ARADDR_9(12) <= \<const0>\;
  Dbg_ARADDR_9(11) <= \<const0>\;
  Dbg_ARADDR_9(10) <= \<const0>\;
  Dbg_ARADDR_9(9) <= \<const0>\;
  Dbg_ARADDR_9(8) <= \<const0>\;
  Dbg_ARADDR_9(7) <= \<const0>\;
  Dbg_ARADDR_9(6) <= \<const0>\;
  Dbg_ARADDR_9(5) <= \<const0>\;
  Dbg_ARADDR_9(4) <= \<const0>\;
  Dbg_ARADDR_9(3) <= \<const0>\;
  Dbg_ARADDR_9(2) <= \<const0>\;
  Dbg_ARVALID_0 <= \<const0>\;
  Dbg_ARVALID_1 <= \<const0>\;
  Dbg_ARVALID_10 <= \<const0>\;
  Dbg_ARVALID_11 <= \<const0>\;
  Dbg_ARVALID_12 <= \<const0>\;
  Dbg_ARVALID_13 <= \<const0>\;
  Dbg_ARVALID_14 <= \<const0>\;
  Dbg_ARVALID_15 <= \<const0>\;
  Dbg_ARVALID_16 <= \<const0>\;
  Dbg_ARVALID_17 <= \<const0>\;
  Dbg_ARVALID_18 <= \<const0>\;
  Dbg_ARVALID_19 <= \<const0>\;
  Dbg_ARVALID_2 <= \<const0>\;
  Dbg_ARVALID_20 <= \<const0>\;
  Dbg_ARVALID_21 <= \<const0>\;
  Dbg_ARVALID_22 <= \<const0>\;
  Dbg_ARVALID_23 <= \<const0>\;
  Dbg_ARVALID_24 <= \<const0>\;
  Dbg_ARVALID_25 <= \<const0>\;
  Dbg_ARVALID_26 <= \<const0>\;
  Dbg_ARVALID_27 <= \<const0>\;
  Dbg_ARVALID_28 <= \<const0>\;
  Dbg_ARVALID_29 <= \<const0>\;
  Dbg_ARVALID_3 <= \<const0>\;
  Dbg_ARVALID_30 <= \<const0>\;
  Dbg_ARVALID_31 <= \<const0>\;
  Dbg_ARVALID_4 <= \<const0>\;
  Dbg_ARVALID_5 <= \<const0>\;
  Dbg_ARVALID_6 <= \<const0>\;
  Dbg_ARVALID_7 <= \<const0>\;
  Dbg_ARVALID_8 <= \<const0>\;
  Dbg_ARVALID_9 <= \<const0>\;
  Dbg_AWADDR_0(14) <= \<const0>\;
  Dbg_AWADDR_0(13) <= \<const0>\;
  Dbg_AWADDR_0(12) <= \<const0>\;
  Dbg_AWADDR_0(11) <= \<const0>\;
  Dbg_AWADDR_0(10) <= \<const0>\;
  Dbg_AWADDR_0(9) <= \<const0>\;
  Dbg_AWADDR_0(8) <= \<const0>\;
  Dbg_AWADDR_0(7) <= \<const0>\;
  Dbg_AWADDR_0(6) <= \<const0>\;
  Dbg_AWADDR_0(5) <= \<const0>\;
  Dbg_AWADDR_0(4) <= \<const0>\;
  Dbg_AWADDR_0(3) <= \<const0>\;
  Dbg_AWADDR_0(2) <= \<const0>\;
  Dbg_AWADDR_1(14) <= \<const0>\;
  Dbg_AWADDR_1(13) <= \<const0>\;
  Dbg_AWADDR_1(12) <= \<const0>\;
  Dbg_AWADDR_1(11) <= \<const0>\;
  Dbg_AWADDR_1(10) <= \<const0>\;
  Dbg_AWADDR_1(9) <= \<const0>\;
  Dbg_AWADDR_1(8) <= \<const0>\;
  Dbg_AWADDR_1(7) <= \<const0>\;
  Dbg_AWADDR_1(6) <= \<const0>\;
  Dbg_AWADDR_1(5) <= \<const0>\;
  Dbg_AWADDR_1(4) <= \<const0>\;
  Dbg_AWADDR_1(3) <= \<const0>\;
  Dbg_AWADDR_1(2) <= \<const0>\;
  Dbg_AWADDR_10(14) <= \<const0>\;
  Dbg_AWADDR_10(13) <= \<const0>\;
  Dbg_AWADDR_10(12) <= \<const0>\;
  Dbg_AWADDR_10(11) <= \<const0>\;
  Dbg_AWADDR_10(10) <= \<const0>\;
  Dbg_AWADDR_10(9) <= \<const0>\;
  Dbg_AWADDR_10(8) <= \<const0>\;
  Dbg_AWADDR_10(7) <= \<const0>\;
  Dbg_AWADDR_10(6) <= \<const0>\;
  Dbg_AWADDR_10(5) <= \<const0>\;
  Dbg_AWADDR_10(4) <= \<const0>\;
  Dbg_AWADDR_10(3) <= \<const0>\;
  Dbg_AWADDR_10(2) <= \<const0>\;
  Dbg_AWADDR_11(14) <= \<const0>\;
  Dbg_AWADDR_11(13) <= \<const0>\;
  Dbg_AWADDR_11(12) <= \<const0>\;
  Dbg_AWADDR_11(11) <= \<const0>\;
  Dbg_AWADDR_11(10) <= \<const0>\;
  Dbg_AWADDR_11(9) <= \<const0>\;
  Dbg_AWADDR_11(8) <= \<const0>\;
  Dbg_AWADDR_11(7) <= \<const0>\;
  Dbg_AWADDR_11(6) <= \<const0>\;
  Dbg_AWADDR_11(5) <= \<const0>\;
  Dbg_AWADDR_11(4) <= \<const0>\;
  Dbg_AWADDR_11(3) <= \<const0>\;
  Dbg_AWADDR_11(2) <= \<const0>\;
  Dbg_AWADDR_12(14) <= \<const0>\;
  Dbg_AWADDR_12(13) <= \<const0>\;
  Dbg_AWADDR_12(12) <= \<const0>\;
  Dbg_AWADDR_12(11) <= \<const0>\;
  Dbg_AWADDR_12(10) <= \<const0>\;
  Dbg_AWADDR_12(9) <= \<const0>\;
  Dbg_AWADDR_12(8) <= \<const0>\;
  Dbg_AWADDR_12(7) <= \<const0>\;
  Dbg_AWADDR_12(6) <= \<const0>\;
  Dbg_AWADDR_12(5) <= \<const0>\;
  Dbg_AWADDR_12(4) <= \<const0>\;
  Dbg_AWADDR_12(3) <= \<const0>\;
  Dbg_AWADDR_12(2) <= \<const0>\;
  Dbg_AWADDR_13(14) <= \<const0>\;
  Dbg_AWADDR_13(13) <= \<const0>\;
  Dbg_AWADDR_13(12) <= \<const0>\;
  Dbg_AWADDR_13(11) <= \<const0>\;
  Dbg_AWADDR_13(10) <= \<const0>\;
  Dbg_AWADDR_13(9) <= \<const0>\;
  Dbg_AWADDR_13(8) <= \<const0>\;
  Dbg_AWADDR_13(7) <= \<const0>\;
  Dbg_AWADDR_13(6) <= \<const0>\;
  Dbg_AWADDR_13(5) <= \<const0>\;
  Dbg_AWADDR_13(4) <= \<const0>\;
  Dbg_AWADDR_13(3) <= \<const0>\;
  Dbg_AWADDR_13(2) <= \<const0>\;
  Dbg_AWADDR_14(14) <= \<const0>\;
  Dbg_AWADDR_14(13) <= \<const0>\;
  Dbg_AWADDR_14(12) <= \<const0>\;
  Dbg_AWADDR_14(11) <= \<const0>\;
  Dbg_AWADDR_14(10) <= \<const0>\;
  Dbg_AWADDR_14(9) <= \<const0>\;
  Dbg_AWADDR_14(8) <= \<const0>\;
  Dbg_AWADDR_14(7) <= \<const0>\;
  Dbg_AWADDR_14(6) <= \<const0>\;
  Dbg_AWADDR_14(5) <= \<const0>\;
  Dbg_AWADDR_14(4) <= \<const0>\;
  Dbg_AWADDR_14(3) <= \<const0>\;
  Dbg_AWADDR_14(2) <= \<const0>\;
  Dbg_AWADDR_15(14) <= \<const0>\;
  Dbg_AWADDR_15(13) <= \<const0>\;
  Dbg_AWADDR_15(12) <= \<const0>\;
  Dbg_AWADDR_15(11) <= \<const0>\;
  Dbg_AWADDR_15(10) <= \<const0>\;
  Dbg_AWADDR_15(9) <= \<const0>\;
  Dbg_AWADDR_15(8) <= \<const0>\;
  Dbg_AWADDR_15(7) <= \<const0>\;
  Dbg_AWADDR_15(6) <= \<const0>\;
  Dbg_AWADDR_15(5) <= \<const0>\;
  Dbg_AWADDR_15(4) <= \<const0>\;
  Dbg_AWADDR_15(3) <= \<const0>\;
  Dbg_AWADDR_15(2) <= \<const0>\;
  Dbg_AWADDR_16(14) <= \<const0>\;
  Dbg_AWADDR_16(13) <= \<const0>\;
  Dbg_AWADDR_16(12) <= \<const0>\;
  Dbg_AWADDR_16(11) <= \<const0>\;
  Dbg_AWADDR_16(10) <= \<const0>\;
  Dbg_AWADDR_16(9) <= \<const0>\;
  Dbg_AWADDR_16(8) <= \<const0>\;
  Dbg_AWADDR_16(7) <= \<const0>\;
  Dbg_AWADDR_16(6) <= \<const0>\;
  Dbg_AWADDR_16(5) <= \<const0>\;
  Dbg_AWADDR_16(4) <= \<const0>\;
  Dbg_AWADDR_16(3) <= \<const0>\;
  Dbg_AWADDR_16(2) <= \<const0>\;
  Dbg_AWADDR_17(14) <= \<const0>\;
  Dbg_AWADDR_17(13) <= \<const0>\;
  Dbg_AWADDR_17(12) <= \<const0>\;
  Dbg_AWADDR_17(11) <= \<const0>\;
  Dbg_AWADDR_17(10) <= \<const0>\;
  Dbg_AWADDR_17(9) <= \<const0>\;
  Dbg_AWADDR_17(8) <= \<const0>\;
  Dbg_AWADDR_17(7) <= \<const0>\;
  Dbg_AWADDR_17(6) <= \<const0>\;
  Dbg_AWADDR_17(5) <= \<const0>\;
  Dbg_AWADDR_17(4) <= \<const0>\;
  Dbg_AWADDR_17(3) <= \<const0>\;
  Dbg_AWADDR_17(2) <= \<const0>\;
  Dbg_AWADDR_18(14) <= \<const0>\;
  Dbg_AWADDR_18(13) <= \<const0>\;
  Dbg_AWADDR_18(12) <= \<const0>\;
  Dbg_AWADDR_18(11) <= \<const0>\;
  Dbg_AWADDR_18(10) <= \<const0>\;
  Dbg_AWADDR_18(9) <= \<const0>\;
  Dbg_AWADDR_18(8) <= \<const0>\;
  Dbg_AWADDR_18(7) <= \<const0>\;
  Dbg_AWADDR_18(6) <= \<const0>\;
  Dbg_AWADDR_18(5) <= \<const0>\;
  Dbg_AWADDR_18(4) <= \<const0>\;
  Dbg_AWADDR_18(3) <= \<const0>\;
  Dbg_AWADDR_18(2) <= \<const0>\;
  Dbg_AWADDR_19(14) <= \<const0>\;
  Dbg_AWADDR_19(13) <= \<const0>\;
  Dbg_AWADDR_19(12) <= \<const0>\;
  Dbg_AWADDR_19(11) <= \<const0>\;
  Dbg_AWADDR_19(10) <= \<const0>\;
  Dbg_AWADDR_19(9) <= \<const0>\;
  Dbg_AWADDR_19(8) <= \<const0>\;
  Dbg_AWADDR_19(7) <= \<const0>\;
  Dbg_AWADDR_19(6) <= \<const0>\;
  Dbg_AWADDR_19(5) <= \<const0>\;
  Dbg_AWADDR_19(4) <= \<const0>\;
  Dbg_AWADDR_19(3) <= \<const0>\;
  Dbg_AWADDR_19(2) <= \<const0>\;
  Dbg_AWADDR_2(14) <= \<const0>\;
  Dbg_AWADDR_2(13) <= \<const0>\;
  Dbg_AWADDR_2(12) <= \<const0>\;
  Dbg_AWADDR_2(11) <= \<const0>\;
  Dbg_AWADDR_2(10) <= \<const0>\;
  Dbg_AWADDR_2(9) <= \<const0>\;
  Dbg_AWADDR_2(8) <= \<const0>\;
  Dbg_AWADDR_2(7) <= \<const0>\;
  Dbg_AWADDR_2(6) <= \<const0>\;
  Dbg_AWADDR_2(5) <= \<const0>\;
  Dbg_AWADDR_2(4) <= \<const0>\;
  Dbg_AWADDR_2(3) <= \<const0>\;
  Dbg_AWADDR_2(2) <= \<const0>\;
  Dbg_AWADDR_20(14) <= \<const0>\;
  Dbg_AWADDR_20(13) <= \<const0>\;
  Dbg_AWADDR_20(12) <= \<const0>\;
  Dbg_AWADDR_20(11) <= \<const0>\;
  Dbg_AWADDR_20(10) <= \<const0>\;
  Dbg_AWADDR_20(9) <= \<const0>\;
  Dbg_AWADDR_20(8) <= \<const0>\;
  Dbg_AWADDR_20(7) <= \<const0>\;
  Dbg_AWADDR_20(6) <= \<const0>\;
  Dbg_AWADDR_20(5) <= \<const0>\;
  Dbg_AWADDR_20(4) <= \<const0>\;
  Dbg_AWADDR_20(3) <= \<const0>\;
  Dbg_AWADDR_20(2) <= \<const0>\;
  Dbg_AWADDR_21(14) <= \<const0>\;
  Dbg_AWADDR_21(13) <= \<const0>\;
  Dbg_AWADDR_21(12) <= \<const0>\;
  Dbg_AWADDR_21(11) <= \<const0>\;
  Dbg_AWADDR_21(10) <= \<const0>\;
  Dbg_AWADDR_21(9) <= \<const0>\;
  Dbg_AWADDR_21(8) <= \<const0>\;
  Dbg_AWADDR_21(7) <= \<const0>\;
  Dbg_AWADDR_21(6) <= \<const0>\;
  Dbg_AWADDR_21(5) <= \<const0>\;
  Dbg_AWADDR_21(4) <= \<const0>\;
  Dbg_AWADDR_21(3) <= \<const0>\;
  Dbg_AWADDR_21(2) <= \<const0>\;
  Dbg_AWADDR_22(14) <= \<const0>\;
  Dbg_AWADDR_22(13) <= \<const0>\;
  Dbg_AWADDR_22(12) <= \<const0>\;
  Dbg_AWADDR_22(11) <= \<const0>\;
  Dbg_AWADDR_22(10) <= \<const0>\;
  Dbg_AWADDR_22(9) <= \<const0>\;
  Dbg_AWADDR_22(8) <= \<const0>\;
  Dbg_AWADDR_22(7) <= \<const0>\;
  Dbg_AWADDR_22(6) <= \<const0>\;
  Dbg_AWADDR_22(5) <= \<const0>\;
  Dbg_AWADDR_22(4) <= \<const0>\;
  Dbg_AWADDR_22(3) <= \<const0>\;
  Dbg_AWADDR_22(2) <= \<const0>\;
  Dbg_AWADDR_23(14) <= \<const0>\;
  Dbg_AWADDR_23(13) <= \<const0>\;
  Dbg_AWADDR_23(12) <= \<const0>\;
  Dbg_AWADDR_23(11) <= \<const0>\;
  Dbg_AWADDR_23(10) <= \<const0>\;
  Dbg_AWADDR_23(9) <= \<const0>\;
  Dbg_AWADDR_23(8) <= \<const0>\;
  Dbg_AWADDR_23(7) <= \<const0>\;
  Dbg_AWADDR_23(6) <= \<const0>\;
  Dbg_AWADDR_23(5) <= \<const0>\;
  Dbg_AWADDR_23(4) <= \<const0>\;
  Dbg_AWADDR_23(3) <= \<const0>\;
  Dbg_AWADDR_23(2) <= \<const0>\;
  Dbg_AWADDR_24(14) <= \<const0>\;
  Dbg_AWADDR_24(13) <= \<const0>\;
  Dbg_AWADDR_24(12) <= \<const0>\;
  Dbg_AWADDR_24(11) <= \<const0>\;
  Dbg_AWADDR_24(10) <= \<const0>\;
  Dbg_AWADDR_24(9) <= \<const0>\;
  Dbg_AWADDR_24(8) <= \<const0>\;
  Dbg_AWADDR_24(7) <= \<const0>\;
  Dbg_AWADDR_24(6) <= \<const0>\;
  Dbg_AWADDR_24(5) <= \<const0>\;
  Dbg_AWADDR_24(4) <= \<const0>\;
  Dbg_AWADDR_24(3) <= \<const0>\;
  Dbg_AWADDR_24(2) <= \<const0>\;
  Dbg_AWADDR_25(14) <= \<const0>\;
  Dbg_AWADDR_25(13) <= \<const0>\;
  Dbg_AWADDR_25(12) <= \<const0>\;
  Dbg_AWADDR_25(11) <= \<const0>\;
  Dbg_AWADDR_25(10) <= \<const0>\;
  Dbg_AWADDR_25(9) <= \<const0>\;
  Dbg_AWADDR_25(8) <= \<const0>\;
  Dbg_AWADDR_25(7) <= \<const0>\;
  Dbg_AWADDR_25(6) <= \<const0>\;
  Dbg_AWADDR_25(5) <= \<const0>\;
  Dbg_AWADDR_25(4) <= \<const0>\;
  Dbg_AWADDR_25(3) <= \<const0>\;
  Dbg_AWADDR_25(2) <= \<const0>\;
  Dbg_AWADDR_26(14) <= \<const0>\;
  Dbg_AWADDR_26(13) <= \<const0>\;
  Dbg_AWADDR_26(12) <= \<const0>\;
  Dbg_AWADDR_26(11) <= \<const0>\;
  Dbg_AWADDR_26(10) <= \<const0>\;
  Dbg_AWADDR_26(9) <= \<const0>\;
  Dbg_AWADDR_26(8) <= \<const0>\;
  Dbg_AWADDR_26(7) <= \<const0>\;
  Dbg_AWADDR_26(6) <= \<const0>\;
  Dbg_AWADDR_26(5) <= \<const0>\;
  Dbg_AWADDR_26(4) <= \<const0>\;
  Dbg_AWADDR_26(3) <= \<const0>\;
  Dbg_AWADDR_26(2) <= \<const0>\;
  Dbg_AWADDR_27(14) <= \<const0>\;
  Dbg_AWADDR_27(13) <= \<const0>\;
  Dbg_AWADDR_27(12) <= \<const0>\;
  Dbg_AWADDR_27(11) <= \<const0>\;
  Dbg_AWADDR_27(10) <= \<const0>\;
  Dbg_AWADDR_27(9) <= \<const0>\;
  Dbg_AWADDR_27(8) <= \<const0>\;
  Dbg_AWADDR_27(7) <= \<const0>\;
  Dbg_AWADDR_27(6) <= \<const0>\;
  Dbg_AWADDR_27(5) <= \<const0>\;
  Dbg_AWADDR_27(4) <= \<const0>\;
  Dbg_AWADDR_27(3) <= \<const0>\;
  Dbg_AWADDR_27(2) <= \<const0>\;
  Dbg_AWADDR_28(14) <= \<const0>\;
  Dbg_AWADDR_28(13) <= \<const0>\;
  Dbg_AWADDR_28(12) <= \<const0>\;
  Dbg_AWADDR_28(11) <= \<const0>\;
  Dbg_AWADDR_28(10) <= \<const0>\;
  Dbg_AWADDR_28(9) <= \<const0>\;
  Dbg_AWADDR_28(8) <= \<const0>\;
  Dbg_AWADDR_28(7) <= \<const0>\;
  Dbg_AWADDR_28(6) <= \<const0>\;
  Dbg_AWADDR_28(5) <= \<const0>\;
  Dbg_AWADDR_28(4) <= \<const0>\;
  Dbg_AWADDR_28(3) <= \<const0>\;
  Dbg_AWADDR_28(2) <= \<const0>\;
  Dbg_AWADDR_29(14) <= \<const0>\;
  Dbg_AWADDR_29(13) <= \<const0>\;
  Dbg_AWADDR_29(12) <= \<const0>\;
  Dbg_AWADDR_29(11) <= \<const0>\;
  Dbg_AWADDR_29(10) <= \<const0>\;
  Dbg_AWADDR_29(9) <= \<const0>\;
  Dbg_AWADDR_29(8) <= \<const0>\;
  Dbg_AWADDR_29(7) <= \<const0>\;
  Dbg_AWADDR_29(6) <= \<const0>\;
  Dbg_AWADDR_29(5) <= \<const0>\;
  Dbg_AWADDR_29(4) <= \<const0>\;
  Dbg_AWADDR_29(3) <= \<const0>\;
  Dbg_AWADDR_29(2) <= \<const0>\;
  Dbg_AWADDR_3(14) <= \<const0>\;
  Dbg_AWADDR_3(13) <= \<const0>\;
  Dbg_AWADDR_3(12) <= \<const0>\;
  Dbg_AWADDR_3(11) <= \<const0>\;
  Dbg_AWADDR_3(10) <= \<const0>\;
  Dbg_AWADDR_3(9) <= \<const0>\;
  Dbg_AWADDR_3(8) <= \<const0>\;
  Dbg_AWADDR_3(7) <= \<const0>\;
  Dbg_AWADDR_3(6) <= \<const0>\;
  Dbg_AWADDR_3(5) <= \<const0>\;
  Dbg_AWADDR_3(4) <= \<const0>\;
  Dbg_AWADDR_3(3) <= \<const0>\;
  Dbg_AWADDR_3(2) <= \<const0>\;
  Dbg_AWADDR_30(14) <= \<const0>\;
  Dbg_AWADDR_30(13) <= \<const0>\;
  Dbg_AWADDR_30(12) <= \<const0>\;
  Dbg_AWADDR_30(11) <= \<const0>\;
  Dbg_AWADDR_30(10) <= \<const0>\;
  Dbg_AWADDR_30(9) <= \<const0>\;
  Dbg_AWADDR_30(8) <= \<const0>\;
  Dbg_AWADDR_30(7) <= \<const0>\;
  Dbg_AWADDR_30(6) <= \<const0>\;
  Dbg_AWADDR_30(5) <= \<const0>\;
  Dbg_AWADDR_30(4) <= \<const0>\;
  Dbg_AWADDR_30(3) <= \<const0>\;
  Dbg_AWADDR_30(2) <= \<const0>\;
  Dbg_AWADDR_31(14) <= \<const0>\;
  Dbg_AWADDR_31(13) <= \<const0>\;
  Dbg_AWADDR_31(12) <= \<const0>\;
  Dbg_AWADDR_31(11) <= \<const0>\;
  Dbg_AWADDR_31(10) <= \<const0>\;
  Dbg_AWADDR_31(9) <= \<const0>\;
  Dbg_AWADDR_31(8) <= \<const0>\;
  Dbg_AWADDR_31(7) <= \<const0>\;
  Dbg_AWADDR_31(6) <= \<const0>\;
  Dbg_AWADDR_31(5) <= \<const0>\;
  Dbg_AWADDR_31(4) <= \<const0>\;
  Dbg_AWADDR_31(3) <= \<const0>\;
  Dbg_AWADDR_31(2) <= \<const0>\;
  Dbg_AWADDR_4(14) <= \<const0>\;
  Dbg_AWADDR_4(13) <= \<const0>\;
  Dbg_AWADDR_4(12) <= \<const0>\;
  Dbg_AWADDR_4(11) <= \<const0>\;
  Dbg_AWADDR_4(10) <= \<const0>\;
  Dbg_AWADDR_4(9) <= \<const0>\;
  Dbg_AWADDR_4(8) <= \<const0>\;
  Dbg_AWADDR_4(7) <= \<const0>\;
  Dbg_AWADDR_4(6) <= \<const0>\;
  Dbg_AWADDR_4(5) <= \<const0>\;
  Dbg_AWADDR_4(4) <= \<const0>\;
  Dbg_AWADDR_4(3) <= \<const0>\;
  Dbg_AWADDR_4(2) <= \<const0>\;
  Dbg_AWADDR_5(14) <= \<const0>\;
  Dbg_AWADDR_5(13) <= \<const0>\;
  Dbg_AWADDR_5(12) <= \<const0>\;
  Dbg_AWADDR_5(11) <= \<const0>\;
  Dbg_AWADDR_5(10) <= \<const0>\;
  Dbg_AWADDR_5(9) <= \<const0>\;
  Dbg_AWADDR_5(8) <= \<const0>\;
  Dbg_AWADDR_5(7) <= \<const0>\;
  Dbg_AWADDR_5(6) <= \<const0>\;
  Dbg_AWADDR_5(5) <= \<const0>\;
  Dbg_AWADDR_5(4) <= \<const0>\;
  Dbg_AWADDR_5(3) <= \<const0>\;
  Dbg_AWADDR_5(2) <= \<const0>\;
  Dbg_AWADDR_6(14) <= \<const0>\;
  Dbg_AWADDR_6(13) <= \<const0>\;
  Dbg_AWADDR_6(12) <= \<const0>\;
  Dbg_AWADDR_6(11) <= \<const0>\;
  Dbg_AWADDR_6(10) <= \<const0>\;
  Dbg_AWADDR_6(9) <= \<const0>\;
  Dbg_AWADDR_6(8) <= \<const0>\;
  Dbg_AWADDR_6(7) <= \<const0>\;
  Dbg_AWADDR_6(6) <= \<const0>\;
  Dbg_AWADDR_6(5) <= \<const0>\;
  Dbg_AWADDR_6(4) <= \<const0>\;
  Dbg_AWADDR_6(3) <= \<const0>\;
  Dbg_AWADDR_6(2) <= \<const0>\;
  Dbg_AWADDR_7(14) <= \<const0>\;
  Dbg_AWADDR_7(13) <= \<const0>\;
  Dbg_AWADDR_7(12) <= \<const0>\;
  Dbg_AWADDR_7(11) <= \<const0>\;
  Dbg_AWADDR_7(10) <= \<const0>\;
  Dbg_AWADDR_7(9) <= \<const0>\;
  Dbg_AWADDR_7(8) <= \<const0>\;
  Dbg_AWADDR_7(7) <= \<const0>\;
  Dbg_AWADDR_7(6) <= \<const0>\;
  Dbg_AWADDR_7(5) <= \<const0>\;
  Dbg_AWADDR_7(4) <= \<const0>\;
  Dbg_AWADDR_7(3) <= \<const0>\;
  Dbg_AWADDR_7(2) <= \<const0>\;
  Dbg_AWADDR_8(14) <= \<const0>\;
  Dbg_AWADDR_8(13) <= \<const0>\;
  Dbg_AWADDR_8(12) <= \<const0>\;
  Dbg_AWADDR_8(11) <= \<const0>\;
  Dbg_AWADDR_8(10) <= \<const0>\;
  Dbg_AWADDR_8(9) <= \<const0>\;
  Dbg_AWADDR_8(8) <= \<const0>\;
  Dbg_AWADDR_8(7) <= \<const0>\;
  Dbg_AWADDR_8(6) <= \<const0>\;
  Dbg_AWADDR_8(5) <= \<const0>\;
  Dbg_AWADDR_8(4) <= \<const0>\;
  Dbg_AWADDR_8(3) <= \<const0>\;
  Dbg_AWADDR_8(2) <= \<const0>\;
  Dbg_AWADDR_9(14) <= \<const0>\;
  Dbg_AWADDR_9(13) <= \<const0>\;
  Dbg_AWADDR_9(12) <= \<const0>\;
  Dbg_AWADDR_9(11) <= \<const0>\;
  Dbg_AWADDR_9(10) <= \<const0>\;
  Dbg_AWADDR_9(9) <= \<const0>\;
  Dbg_AWADDR_9(8) <= \<const0>\;
  Dbg_AWADDR_9(7) <= \<const0>\;
  Dbg_AWADDR_9(6) <= \<const0>\;
  Dbg_AWADDR_9(5) <= \<const0>\;
  Dbg_AWADDR_9(4) <= \<const0>\;
  Dbg_AWADDR_9(3) <= \<const0>\;
  Dbg_AWADDR_9(2) <= \<const0>\;
  Dbg_AWVALID_0 <= \<const0>\;
  Dbg_AWVALID_1 <= \<const0>\;
  Dbg_AWVALID_10 <= \<const0>\;
  Dbg_AWVALID_11 <= \<const0>\;
  Dbg_AWVALID_12 <= \<const0>\;
  Dbg_AWVALID_13 <= \<const0>\;
  Dbg_AWVALID_14 <= \<const0>\;
  Dbg_AWVALID_15 <= \<const0>\;
  Dbg_AWVALID_16 <= \<const0>\;
  Dbg_AWVALID_17 <= \<const0>\;
  Dbg_AWVALID_18 <= \<const0>\;
  Dbg_AWVALID_19 <= \<const0>\;
  Dbg_AWVALID_2 <= \<const0>\;
  Dbg_AWVALID_20 <= \<const0>\;
  Dbg_AWVALID_21 <= \<const0>\;
  Dbg_AWVALID_22 <= \<const0>\;
  Dbg_AWVALID_23 <= \<const0>\;
  Dbg_AWVALID_24 <= \<const0>\;
  Dbg_AWVALID_25 <= \<const0>\;
  Dbg_AWVALID_26 <= \<const0>\;
  Dbg_AWVALID_27 <= \<const0>\;
  Dbg_AWVALID_28 <= \<const0>\;
  Dbg_AWVALID_29 <= \<const0>\;
  Dbg_AWVALID_3 <= \<const0>\;
  Dbg_AWVALID_30 <= \<const0>\;
  Dbg_AWVALID_31 <= \<const0>\;
  Dbg_AWVALID_4 <= \<const0>\;
  Dbg_AWVALID_5 <= \<const0>\;
  Dbg_AWVALID_6 <= \<const0>\;
  Dbg_AWVALID_7 <= \<const0>\;
  Dbg_AWVALID_8 <= \<const0>\;
  Dbg_AWVALID_9 <= \<const0>\;
  Dbg_BREADY_0 <= \<const0>\;
  Dbg_BREADY_1 <= \<const0>\;
  Dbg_BREADY_10 <= \<const0>\;
  Dbg_BREADY_11 <= \<const0>\;
  Dbg_BREADY_12 <= \<const0>\;
  Dbg_BREADY_13 <= \<const0>\;
  Dbg_BREADY_14 <= \<const0>\;
  Dbg_BREADY_15 <= \<const0>\;
  Dbg_BREADY_16 <= \<const0>\;
  Dbg_BREADY_17 <= \<const0>\;
  Dbg_BREADY_18 <= \<const0>\;
  Dbg_BREADY_19 <= \<const0>\;
  Dbg_BREADY_2 <= \<const0>\;
  Dbg_BREADY_20 <= \<const0>\;
  Dbg_BREADY_21 <= \<const0>\;
  Dbg_BREADY_22 <= \<const0>\;
  Dbg_BREADY_23 <= \<const0>\;
  Dbg_BREADY_24 <= \<const0>\;
  Dbg_BREADY_25 <= \<const0>\;
  Dbg_BREADY_26 <= \<const0>\;
  Dbg_BREADY_27 <= \<const0>\;
  Dbg_BREADY_28 <= \<const0>\;
  Dbg_BREADY_29 <= \<const0>\;
  Dbg_BREADY_3 <= \<const0>\;
  Dbg_BREADY_30 <= \<const0>\;
  Dbg_BREADY_31 <= \<const0>\;
  Dbg_BREADY_4 <= \<const0>\;
  Dbg_BREADY_5 <= \<const0>\;
  Dbg_BREADY_6 <= \<const0>\;
  Dbg_BREADY_7 <= \<const0>\;
  Dbg_BREADY_8 <= \<const0>\;
  Dbg_BREADY_9 <= \<const0>\;
  Dbg_Capture_0 <= \^ext_jtag_capture\;
  Dbg_Capture_1 <= \^ext_jtag_capture\;
  Dbg_Capture_10 <= \^ext_jtag_capture\;
  Dbg_Capture_11 <= \^ext_jtag_capture\;
  Dbg_Capture_12 <= \^ext_jtag_capture\;
  Dbg_Capture_13 <= \^ext_jtag_capture\;
  Dbg_Capture_14 <= \^ext_jtag_capture\;
  Dbg_Capture_15 <= \^ext_jtag_capture\;
  Dbg_Capture_16 <= \^ext_jtag_capture\;
  Dbg_Capture_17 <= \^ext_jtag_capture\;
  Dbg_Capture_18 <= \^ext_jtag_capture\;
  Dbg_Capture_19 <= \^ext_jtag_capture\;
  Dbg_Capture_2 <= \^ext_jtag_capture\;
  Dbg_Capture_20 <= \^ext_jtag_capture\;
  Dbg_Capture_21 <= \^ext_jtag_capture\;
  Dbg_Capture_22 <= \^ext_jtag_capture\;
  Dbg_Capture_23 <= \^ext_jtag_capture\;
  Dbg_Capture_24 <= \^ext_jtag_capture\;
  Dbg_Capture_25 <= \^ext_jtag_capture\;
  Dbg_Capture_26 <= \^ext_jtag_capture\;
  Dbg_Capture_27 <= \^ext_jtag_capture\;
  Dbg_Capture_28 <= \^ext_jtag_capture\;
  Dbg_Capture_29 <= \^ext_jtag_capture\;
  Dbg_Capture_3 <= \^ext_jtag_capture\;
  Dbg_Capture_30 <= \^ext_jtag_capture\;
  Dbg_Capture_31 <= \^ext_jtag_capture\;
  Dbg_Capture_4 <= \^ext_jtag_capture\;
  Dbg_Capture_5 <= \^ext_jtag_capture\;
  Dbg_Capture_6 <= \^ext_jtag_capture\;
  Dbg_Capture_7 <= \^ext_jtag_capture\;
  Dbg_Capture_8 <= \^ext_jtag_capture\;
  Dbg_Capture_9 <= \^ext_jtag_capture\;
  Dbg_Clk_0 <= \^dbg_clk_31\;
  Dbg_Clk_1 <= \^dbg_clk_31\;
  Dbg_Clk_10 <= \^dbg_clk_31\;
  Dbg_Clk_11 <= \^dbg_clk_31\;
  Dbg_Clk_12 <= \^dbg_clk_31\;
  Dbg_Clk_13 <= \^dbg_clk_31\;
  Dbg_Clk_14 <= \^dbg_clk_31\;
  Dbg_Clk_15 <= \^dbg_clk_31\;
  Dbg_Clk_16 <= \^dbg_clk_31\;
  Dbg_Clk_17 <= \^dbg_clk_31\;
  Dbg_Clk_18 <= \^dbg_clk_31\;
  Dbg_Clk_19 <= \^dbg_clk_31\;
  Dbg_Clk_2 <= \^dbg_clk_31\;
  Dbg_Clk_20 <= \^dbg_clk_31\;
  Dbg_Clk_21 <= \^dbg_clk_31\;
  Dbg_Clk_22 <= \^dbg_clk_31\;
  Dbg_Clk_23 <= \^dbg_clk_31\;
  Dbg_Clk_24 <= \^dbg_clk_31\;
  Dbg_Clk_25 <= \^dbg_clk_31\;
  Dbg_Clk_26 <= \^dbg_clk_31\;
  Dbg_Clk_27 <= \^dbg_clk_31\;
  Dbg_Clk_28 <= \^dbg_clk_31\;
  Dbg_Clk_29 <= \^dbg_clk_31\;
  Dbg_Clk_3 <= \^dbg_clk_31\;
  Dbg_Clk_30 <= \^dbg_clk_31\;
  Dbg_Clk_31 <= \^dbg_clk_31\;
  Dbg_Clk_4 <= \^dbg_clk_31\;
  Dbg_Clk_5 <= \^dbg_clk_31\;
  Dbg_Clk_6 <= \^dbg_clk_31\;
  Dbg_Clk_7 <= \^dbg_clk_31\;
  Dbg_Clk_8 <= \^dbg_clk_31\;
  Dbg_Clk_9 <= \^dbg_clk_31\;
  Dbg_Disable_1 <= \<const1>\;
  Dbg_Disable_10 <= \<const1>\;
  Dbg_Disable_11 <= \<const1>\;
  Dbg_Disable_12 <= \<const1>\;
  Dbg_Disable_13 <= \<const1>\;
  Dbg_Disable_14 <= \<const1>\;
  Dbg_Disable_15 <= \<const1>\;
  Dbg_Disable_16 <= \<const1>\;
  Dbg_Disable_17 <= \<const1>\;
  Dbg_Disable_18 <= \<const1>\;
  Dbg_Disable_19 <= \<const1>\;
  Dbg_Disable_2 <= \<const1>\;
  Dbg_Disable_20 <= \<const1>\;
  Dbg_Disable_21 <= \<const1>\;
  Dbg_Disable_22 <= \<const1>\;
  Dbg_Disable_23 <= \<const1>\;
  Dbg_Disable_24 <= \<const1>\;
  Dbg_Disable_25 <= \<const1>\;
  Dbg_Disable_26 <= \<const1>\;
  Dbg_Disable_27 <= \<const1>\;
  Dbg_Disable_28 <= \<const1>\;
  Dbg_Disable_29 <= \<const1>\;
  Dbg_Disable_3 <= \<const1>\;
  Dbg_Disable_30 <= \<const1>\;
  Dbg_Disable_31 <= \<const1>\;
  Dbg_Disable_4 <= \<const1>\;
  Dbg_Disable_5 <= \<const1>\;
  Dbg_Disable_6 <= \<const1>\;
  Dbg_Disable_7 <= \<const1>\;
  Dbg_Disable_8 <= \<const1>\;
  Dbg_Disable_9 <= \<const1>\;
  Dbg_RREADY_0 <= \<const0>\;
  Dbg_RREADY_1 <= \<const0>\;
  Dbg_RREADY_10 <= \<const0>\;
  Dbg_RREADY_11 <= \<const0>\;
  Dbg_RREADY_12 <= \<const0>\;
  Dbg_RREADY_13 <= \<const0>\;
  Dbg_RREADY_14 <= \<const0>\;
  Dbg_RREADY_15 <= \<const0>\;
  Dbg_RREADY_16 <= \<const0>\;
  Dbg_RREADY_17 <= \<const0>\;
  Dbg_RREADY_18 <= \<const0>\;
  Dbg_RREADY_19 <= \<const0>\;
  Dbg_RREADY_2 <= \<const0>\;
  Dbg_RREADY_20 <= \<const0>\;
  Dbg_RREADY_21 <= \<const0>\;
  Dbg_RREADY_22 <= \<const0>\;
  Dbg_RREADY_23 <= \<const0>\;
  Dbg_RREADY_24 <= \<const0>\;
  Dbg_RREADY_25 <= \<const0>\;
  Dbg_RREADY_26 <= \<const0>\;
  Dbg_RREADY_27 <= \<const0>\;
  Dbg_RREADY_28 <= \<const0>\;
  Dbg_RREADY_29 <= \<const0>\;
  Dbg_RREADY_3 <= \<const0>\;
  Dbg_RREADY_30 <= \<const0>\;
  Dbg_RREADY_31 <= \<const0>\;
  Dbg_RREADY_4 <= \<const0>\;
  Dbg_RREADY_5 <= \<const0>\;
  Dbg_RREADY_6 <= \<const0>\;
  Dbg_RREADY_7 <= \<const0>\;
  Dbg_RREADY_8 <= \<const0>\;
  Dbg_RREADY_9 <= \<const0>\;
  Dbg_Reg_En_1(0) <= \<const0>\;
  Dbg_Reg_En_1(1) <= \<const0>\;
  Dbg_Reg_En_1(2) <= \<const0>\;
  Dbg_Reg_En_1(3) <= \<const0>\;
  Dbg_Reg_En_1(4) <= \<const0>\;
  Dbg_Reg_En_1(5) <= \<const0>\;
  Dbg_Reg_En_1(6) <= \<const0>\;
  Dbg_Reg_En_1(7) <= \<const0>\;
  Dbg_Reg_En_10(0) <= \<const0>\;
  Dbg_Reg_En_10(1) <= \<const0>\;
  Dbg_Reg_En_10(2) <= \<const0>\;
  Dbg_Reg_En_10(3) <= \<const0>\;
  Dbg_Reg_En_10(4) <= \<const0>\;
  Dbg_Reg_En_10(5) <= \<const0>\;
  Dbg_Reg_En_10(6) <= \<const0>\;
  Dbg_Reg_En_10(7) <= \<const0>\;
  Dbg_Reg_En_11(0) <= \<const0>\;
  Dbg_Reg_En_11(1) <= \<const0>\;
  Dbg_Reg_En_11(2) <= \<const0>\;
  Dbg_Reg_En_11(3) <= \<const0>\;
  Dbg_Reg_En_11(4) <= \<const0>\;
  Dbg_Reg_En_11(5) <= \<const0>\;
  Dbg_Reg_En_11(6) <= \<const0>\;
  Dbg_Reg_En_11(7) <= \<const0>\;
  Dbg_Reg_En_12(0) <= \<const0>\;
  Dbg_Reg_En_12(1) <= \<const0>\;
  Dbg_Reg_En_12(2) <= \<const0>\;
  Dbg_Reg_En_12(3) <= \<const0>\;
  Dbg_Reg_En_12(4) <= \<const0>\;
  Dbg_Reg_En_12(5) <= \<const0>\;
  Dbg_Reg_En_12(6) <= \<const0>\;
  Dbg_Reg_En_12(7) <= \<const0>\;
  Dbg_Reg_En_13(0) <= \<const0>\;
  Dbg_Reg_En_13(1) <= \<const0>\;
  Dbg_Reg_En_13(2) <= \<const0>\;
  Dbg_Reg_En_13(3) <= \<const0>\;
  Dbg_Reg_En_13(4) <= \<const0>\;
  Dbg_Reg_En_13(5) <= \<const0>\;
  Dbg_Reg_En_13(6) <= \<const0>\;
  Dbg_Reg_En_13(7) <= \<const0>\;
  Dbg_Reg_En_14(0) <= \<const0>\;
  Dbg_Reg_En_14(1) <= \<const0>\;
  Dbg_Reg_En_14(2) <= \<const0>\;
  Dbg_Reg_En_14(3) <= \<const0>\;
  Dbg_Reg_En_14(4) <= \<const0>\;
  Dbg_Reg_En_14(5) <= \<const0>\;
  Dbg_Reg_En_14(6) <= \<const0>\;
  Dbg_Reg_En_14(7) <= \<const0>\;
  Dbg_Reg_En_15(0) <= \<const0>\;
  Dbg_Reg_En_15(1) <= \<const0>\;
  Dbg_Reg_En_15(2) <= \<const0>\;
  Dbg_Reg_En_15(3) <= \<const0>\;
  Dbg_Reg_En_15(4) <= \<const0>\;
  Dbg_Reg_En_15(5) <= \<const0>\;
  Dbg_Reg_En_15(6) <= \<const0>\;
  Dbg_Reg_En_15(7) <= \<const0>\;
  Dbg_Reg_En_16(0) <= \<const0>\;
  Dbg_Reg_En_16(1) <= \<const0>\;
  Dbg_Reg_En_16(2) <= \<const0>\;
  Dbg_Reg_En_16(3) <= \<const0>\;
  Dbg_Reg_En_16(4) <= \<const0>\;
  Dbg_Reg_En_16(5) <= \<const0>\;
  Dbg_Reg_En_16(6) <= \<const0>\;
  Dbg_Reg_En_16(7) <= \<const0>\;
  Dbg_Reg_En_17(0) <= \<const0>\;
  Dbg_Reg_En_17(1) <= \<const0>\;
  Dbg_Reg_En_17(2) <= \<const0>\;
  Dbg_Reg_En_17(3) <= \<const0>\;
  Dbg_Reg_En_17(4) <= \<const0>\;
  Dbg_Reg_En_17(5) <= \<const0>\;
  Dbg_Reg_En_17(6) <= \<const0>\;
  Dbg_Reg_En_17(7) <= \<const0>\;
  Dbg_Reg_En_18(0) <= \<const0>\;
  Dbg_Reg_En_18(1) <= \<const0>\;
  Dbg_Reg_En_18(2) <= \<const0>\;
  Dbg_Reg_En_18(3) <= \<const0>\;
  Dbg_Reg_En_18(4) <= \<const0>\;
  Dbg_Reg_En_18(5) <= \<const0>\;
  Dbg_Reg_En_18(6) <= \<const0>\;
  Dbg_Reg_En_18(7) <= \<const0>\;
  Dbg_Reg_En_19(0) <= \<const0>\;
  Dbg_Reg_En_19(1) <= \<const0>\;
  Dbg_Reg_En_19(2) <= \<const0>\;
  Dbg_Reg_En_19(3) <= \<const0>\;
  Dbg_Reg_En_19(4) <= \<const0>\;
  Dbg_Reg_En_19(5) <= \<const0>\;
  Dbg_Reg_En_19(6) <= \<const0>\;
  Dbg_Reg_En_19(7) <= \<const0>\;
  Dbg_Reg_En_2(0) <= \<const0>\;
  Dbg_Reg_En_2(1) <= \<const0>\;
  Dbg_Reg_En_2(2) <= \<const0>\;
  Dbg_Reg_En_2(3) <= \<const0>\;
  Dbg_Reg_En_2(4) <= \<const0>\;
  Dbg_Reg_En_2(5) <= \<const0>\;
  Dbg_Reg_En_2(6) <= \<const0>\;
  Dbg_Reg_En_2(7) <= \<const0>\;
  Dbg_Reg_En_20(0) <= \<const0>\;
  Dbg_Reg_En_20(1) <= \<const0>\;
  Dbg_Reg_En_20(2) <= \<const0>\;
  Dbg_Reg_En_20(3) <= \<const0>\;
  Dbg_Reg_En_20(4) <= \<const0>\;
  Dbg_Reg_En_20(5) <= \<const0>\;
  Dbg_Reg_En_20(6) <= \<const0>\;
  Dbg_Reg_En_20(7) <= \<const0>\;
  Dbg_Reg_En_21(0) <= \<const0>\;
  Dbg_Reg_En_21(1) <= \<const0>\;
  Dbg_Reg_En_21(2) <= \<const0>\;
  Dbg_Reg_En_21(3) <= \<const0>\;
  Dbg_Reg_En_21(4) <= \<const0>\;
  Dbg_Reg_En_21(5) <= \<const0>\;
  Dbg_Reg_En_21(6) <= \<const0>\;
  Dbg_Reg_En_21(7) <= \<const0>\;
  Dbg_Reg_En_22(0) <= \<const0>\;
  Dbg_Reg_En_22(1) <= \<const0>\;
  Dbg_Reg_En_22(2) <= \<const0>\;
  Dbg_Reg_En_22(3) <= \<const0>\;
  Dbg_Reg_En_22(4) <= \<const0>\;
  Dbg_Reg_En_22(5) <= \<const0>\;
  Dbg_Reg_En_22(6) <= \<const0>\;
  Dbg_Reg_En_22(7) <= \<const0>\;
  Dbg_Reg_En_23(0) <= \<const0>\;
  Dbg_Reg_En_23(1) <= \<const0>\;
  Dbg_Reg_En_23(2) <= \<const0>\;
  Dbg_Reg_En_23(3) <= \<const0>\;
  Dbg_Reg_En_23(4) <= \<const0>\;
  Dbg_Reg_En_23(5) <= \<const0>\;
  Dbg_Reg_En_23(6) <= \<const0>\;
  Dbg_Reg_En_23(7) <= \<const0>\;
  Dbg_Reg_En_24(0) <= \<const0>\;
  Dbg_Reg_En_24(1) <= \<const0>\;
  Dbg_Reg_En_24(2) <= \<const0>\;
  Dbg_Reg_En_24(3) <= \<const0>\;
  Dbg_Reg_En_24(4) <= \<const0>\;
  Dbg_Reg_En_24(5) <= \<const0>\;
  Dbg_Reg_En_24(6) <= \<const0>\;
  Dbg_Reg_En_24(7) <= \<const0>\;
  Dbg_Reg_En_25(0) <= \<const0>\;
  Dbg_Reg_En_25(1) <= \<const0>\;
  Dbg_Reg_En_25(2) <= \<const0>\;
  Dbg_Reg_En_25(3) <= \<const0>\;
  Dbg_Reg_En_25(4) <= \<const0>\;
  Dbg_Reg_En_25(5) <= \<const0>\;
  Dbg_Reg_En_25(6) <= \<const0>\;
  Dbg_Reg_En_25(7) <= \<const0>\;
  Dbg_Reg_En_26(0) <= \<const0>\;
  Dbg_Reg_En_26(1) <= \<const0>\;
  Dbg_Reg_En_26(2) <= \<const0>\;
  Dbg_Reg_En_26(3) <= \<const0>\;
  Dbg_Reg_En_26(4) <= \<const0>\;
  Dbg_Reg_En_26(5) <= \<const0>\;
  Dbg_Reg_En_26(6) <= \<const0>\;
  Dbg_Reg_En_26(7) <= \<const0>\;
  Dbg_Reg_En_27(0) <= \<const0>\;
  Dbg_Reg_En_27(1) <= \<const0>\;
  Dbg_Reg_En_27(2) <= \<const0>\;
  Dbg_Reg_En_27(3) <= \<const0>\;
  Dbg_Reg_En_27(4) <= \<const0>\;
  Dbg_Reg_En_27(5) <= \<const0>\;
  Dbg_Reg_En_27(6) <= \<const0>\;
  Dbg_Reg_En_27(7) <= \<const0>\;
  Dbg_Reg_En_28(0) <= \<const0>\;
  Dbg_Reg_En_28(1) <= \<const0>\;
  Dbg_Reg_En_28(2) <= \<const0>\;
  Dbg_Reg_En_28(3) <= \<const0>\;
  Dbg_Reg_En_28(4) <= \<const0>\;
  Dbg_Reg_En_28(5) <= \<const0>\;
  Dbg_Reg_En_28(6) <= \<const0>\;
  Dbg_Reg_En_28(7) <= \<const0>\;
  Dbg_Reg_En_29(0) <= \<const0>\;
  Dbg_Reg_En_29(1) <= \<const0>\;
  Dbg_Reg_En_29(2) <= \<const0>\;
  Dbg_Reg_En_29(3) <= \<const0>\;
  Dbg_Reg_En_29(4) <= \<const0>\;
  Dbg_Reg_En_29(5) <= \<const0>\;
  Dbg_Reg_En_29(6) <= \<const0>\;
  Dbg_Reg_En_29(7) <= \<const0>\;
  Dbg_Reg_En_3(0) <= \<const0>\;
  Dbg_Reg_En_3(1) <= \<const0>\;
  Dbg_Reg_En_3(2) <= \<const0>\;
  Dbg_Reg_En_3(3) <= \<const0>\;
  Dbg_Reg_En_3(4) <= \<const0>\;
  Dbg_Reg_En_3(5) <= \<const0>\;
  Dbg_Reg_En_3(6) <= \<const0>\;
  Dbg_Reg_En_3(7) <= \<const0>\;
  Dbg_Reg_En_30(0) <= \<const0>\;
  Dbg_Reg_En_30(1) <= \<const0>\;
  Dbg_Reg_En_30(2) <= \<const0>\;
  Dbg_Reg_En_30(3) <= \<const0>\;
  Dbg_Reg_En_30(4) <= \<const0>\;
  Dbg_Reg_En_30(5) <= \<const0>\;
  Dbg_Reg_En_30(6) <= \<const0>\;
  Dbg_Reg_En_30(7) <= \<const0>\;
  Dbg_Reg_En_31(0) <= \<const0>\;
  Dbg_Reg_En_31(1) <= \<const0>\;
  Dbg_Reg_En_31(2) <= \<const0>\;
  Dbg_Reg_En_31(3) <= \<const0>\;
  Dbg_Reg_En_31(4) <= \<const0>\;
  Dbg_Reg_En_31(5) <= \<const0>\;
  Dbg_Reg_En_31(6) <= \<const0>\;
  Dbg_Reg_En_31(7) <= \<const0>\;
  Dbg_Reg_En_4(0) <= \<const0>\;
  Dbg_Reg_En_4(1) <= \<const0>\;
  Dbg_Reg_En_4(2) <= \<const0>\;
  Dbg_Reg_En_4(3) <= \<const0>\;
  Dbg_Reg_En_4(4) <= \<const0>\;
  Dbg_Reg_En_4(5) <= \<const0>\;
  Dbg_Reg_En_4(6) <= \<const0>\;
  Dbg_Reg_En_4(7) <= \<const0>\;
  Dbg_Reg_En_5(0) <= \<const0>\;
  Dbg_Reg_En_5(1) <= \<const0>\;
  Dbg_Reg_En_5(2) <= \<const0>\;
  Dbg_Reg_En_5(3) <= \<const0>\;
  Dbg_Reg_En_5(4) <= \<const0>\;
  Dbg_Reg_En_5(5) <= \<const0>\;
  Dbg_Reg_En_5(6) <= \<const0>\;
  Dbg_Reg_En_5(7) <= \<const0>\;
  Dbg_Reg_En_6(0) <= \<const0>\;
  Dbg_Reg_En_6(1) <= \<const0>\;
  Dbg_Reg_En_6(2) <= \<const0>\;
  Dbg_Reg_En_6(3) <= \<const0>\;
  Dbg_Reg_En_6(4) <= \<const0>\;
  Dbg_Reg_En_6(5) <= \<const0>\;
  Dbg_Reg_En_6(6) <= \<const0>\;
  Dbg_Reg_En_6(7) <= \<const0>\;
  Dbg_Reg_En_7(0) <= \<const0>\;
  Dbg_Reg_En_7(1) <= \<const0>\;
  Dbg_Reg_En_7(2) <= \<const0>\;
  Dbg_Reg_En_7(3) <= \<const0>\;
  Dbg_Reg_En_7(4) <= \<const0>\;
  Dbg_Reg_En_7(5) <= \<const0>\;
  Dbg_Reg_En_7(6) <= \<const0>\;
  Dbg_Reg_En_7(7) <= \<const0>\;
  Dbg_Reg_En_8(0) <= \<const0>\;
  Dbg_Reg_En_8(1) <= \<const0>\;
  Dbg_Reg_En_8(2) <= \<const0>\;
  Dbg_Reg_En_8(3) <= \<const0>\;
  Dbg_Reg_En_8(4) <= \<const0>\;
  Dbg_Reg_En_8(5) <= \<const0>\;
  Dbg_Reg_En_8(6) <= \<const0>\;
  Dbg_Reg_En_8(7) <= \<const0>\;
  Dbg_Reg_En_9(0) <= \<const0>\;
  Dbg_Reg_En_9(1) <= \<const0>\;
  Dbg_Reg_En_9(2) <= \<const0>\;
  Dbg_Reg_En_9(3) <= \<const0>\;
  Dbg_Reg_En_9(4) <= \<const0>\;
  Dbg_Reg_En_9(5) <= \<const0>\;
  Dbg_Reg_En_9(6) <= \<const0>\;
  Dbg_Reg_En_9(7) <= \<const0>\;
  Dbg_Rst_1 <= \<const0>\;
  Dbg_Rst_10 <= \<const0>\;
  Dbg_Rst_11 <= \<const0>\;
  Dbg_Rst_12 <= \<const0>\;
  Dbg_Rst_13 <= \<const0>\;
  Dbg_Rst_14 <= \<const0>\;
  Dbg_Rst_15 <= \<const0>\;
  Dbg_Rst_16 <= \<const0>\;
  Dbg_Rst_17 <= \<const0>\;
  Dbg_Rst_18 <= \<const0>\;
  Dbg_Rst_19 <= \<const0>\;
  Dbg_Rst_2 <= \<const0>\;
  Dbg_Rst_20 <= \<const0>\;
  Dbg_Rst_21 <= \<const0>\;
  Dbg_Rst_22 <= \<const0>\;
  Dbg_Rst_23 <= \<const0>\;
  Dbg_Rst_24 <= \<const0>\;
  Dbg_Rst_25 <= \<const0>\;
  Dbg_Rst_26 <= \<const0>\;
  Dbg_Rst_27 <= \<const0>\;
  Dbg_Rst_28 <= \<const0>\;
  Dbg_Rst_29 <= \<const0>\;
  Dbg_Rst_3 <= \<const0>\;
  Dbg_Rst_30 <= \<const0>\;
  Dbg_Rst_31 <= \<const0>\;
  Dbg_Rst_4 <= \<const0>\;
  Dbg_Rst_5 <= \<const0>\;
  Dbg_Rst_6 <= \<const0>\;
  Dbg_Rst_7 <= \<const0>\;
  Dbg_Rst_8 <= \<const0>\;
  Dbg_Rst_9 <= \<const0>\;
  Dbg_Shift_0 <= \^dbg_shift_0\;
  Dbg_Shift_1 <= \^dbg_shift_0\;
  Dbg_Shift_10 <= \^dbg_shift_0\;
  Dbg_Shift_11 <= \^dbg_shift_0\;
  Dbg_Shift_12 <= \^dbg_shift_0\;
  Dbg_Shift_13 <= \^dbg_shift_0\;
  Dbg_Shift_14 <= \^dbg_shift_0\;
  Dbg_Shift_15 <= \^dbg_shift_0\;
  Dbg_Shift_16 <= \^dbg_shift_0\;
  Dbg_Shift_17 <= \^dbg_shift_0\;
  Dbg_Shift_18 <= \^dbg_shift_0\;
  Dbg_Shift_19 <= \^dbg_shift_0\;
  Dbg_Shift_2 <= \^dbg_shift_0\;
  Dbg_Shift_20 <= \^dbg_shift_0\;
  Dbg_Shift_21 <= \^dbg_shift_0\;
  Dbg_Shift_22 <= \^dbg_shift_0\;
  Dbg_Shift_23 <= \^dbg_shift_0\;
  Dbg_Shift_24 <= \^dbg_shift_0\;
  Dbg_Shift_25 <= \^dbg_shift_0\;
  Dbg_Shift_26 <= \^dbg_shift_0\;
  Dbg_Shift_27 <= \^dbg_shift_0\;
  Dbg_Shift_28 <= \^dbg_shift_0\;
  Dbg_Shift_29 <= \^dbg_shift_0\;
  Dbg_Shift_3 <= \^dbg_shift_0\;
  Dbg_Shift_30 <= \^dbg_shift_0\;
  Dbg_Shift_31 <= \^dbg_shift_0\;
  Dbg_Shift_4 <= \^dbg_shift_0\;
  Dbg_Shift_5 <= \^dbg_shift_0\;
  Dbg_Shift_6 <= \^dbg_shift_0\;
  Dbg_Shift_7 <= \^dbg_shift_0\;
  Dbg_Shift_8 <= \^dbg_shift_0\;
  Dbg_Shift_9 <= \^dbg_shift_0\;
  Dbg_TDI_0 <= \^dbg_tdi_31\;
  Dbg_TDI_1 <= \^dbg_tdi_31\;
  Dbg_TDI_10 <= \^dbg_tdi_31\;
  Dbg_TDI_11 <= \^dbg_tdi_31\;
  Dbg_TDI_12 <= \^dbg_tdi_31\;
  Dbg_TDI_13 <= \^dbg_tdi_31\;
  Dbg_TDI_14 <= \^dbg_tdi_31\;
  Dbg_TDI_15 <= \^dbg_tdi_31\;
  Dbg_TDI_16 <= \^dbg_tdi_31\;
  Dbg_TDI_17 <= \^dbg_tdi_31\;
  Dbg_TDI_18 <= \^dbg_tdi_31\;
  Dbg_TDI_19 <= \^dbg_tdi_31\;
  Dbg_TDI_2 <= \^dbg_tdi_31\;
  Dbg_TDI_20 <= \^dbg_tdi_31\;
  Dbg_TDI_21 <= \^dbg_tdi_31\;
  Dbg_TDI_22 <= \^dbg_tdi_31\;
  Dbg_TDI_23 <= \^dbg_tdi_31\;
  Dbg_TDI_24 <= \^dbg_tdi_31\;
  Dbg_TDI_25 <= \^dbg_tdi_31\;
  Dbg_TDI_26 <= \^dbg_tdi_31\;
  Dbg_TDI_27 <= \^dbg_tdi_31\;
  Dbg_TDI_28 <= \^dbg_tdi_31\;
  Dbg_TDI_29 <= \^dbg_tdi_31\;
  Dbg_TDI_3 <= \^dbg_tdi_31\;
  Dbg_TDI_30 <= \^dbg_tdi_31\;
  Dbg_TDI_31 <= \^dbg_tdi_31\;
  Dbg_TDI_4 <= \^dbg_tdi_31\;
  Dbg_TDI_5 <= \^dbg_tdi_31\;
  Dbg_TDI_6 <= \^dbg_tdi_31\;
  Dbg_TDI_7 <= \^dbg_tdi_31\;
  Dbg_TDI_8 <= \^dbg_tdi_31\;
  Dbg_TDI_9 <= \^dbg_tdi_31\;
  Dbg_TrClk_0 <= \<const0>\;
  Dbg_TrClk_1 <= \<const0>\;
  Dbg_TrClk_10 <= \<const0>\;
  Dbg_TrClk_11 <= \<const0>\;
  Dbg_TrClk_12 <= \<const0>\;
  Dbg_TrClk_13 <= \<const0>\;
  Dbg_TrClk_14 <= \<const0>\;
  Dbg_TrClk_15 <= \<const0>\;
  Dbg_TrClk_16 <= \<const0>\;
  Dbg_TrClk_17 <= \<const0>\;
  Dbg_TrClk_18 <= \<const0>\;
  Dbg_TrClk_19 <= \<const0>\;
  Dbg_TrClk_2 <= \<const0>\;
  Dbg_TrClk_20 <= \<const0>\;
  Dbg_TrClk_21 <= \<const0>\;
  Dbg_TrClk_22 <= \<const0>\;
  Dbg_TrClk_23 <= \<const0>\;
  Dbg_TrClk_24 <= \<const0>\;
  Dbg_TrClk_25 <= \<const0>\;
  Dbg_TrClk_26 <= \<const0>\;
  Dbg_TrClk_27 <= \<const0>\;
  Dbg_TrClk_28 <= \<const0>\;
  Dbg_TrClk_29 <= \<const0>\;
  Dbg_TrClk_3 <= \<const0>\;
  Dbg_TrClk_30 <= \<const0>\;
  Dbg_TrClk_31 <= \<const0>\;
  Dbg_TrClk_4 <= \<const0>\;
  Dbg_TrClk_5 <= \<const0>\;
  Dbg_TrClk_6 <= \<const0>\;
  Dbg_TrClk_7 <= \<const0>\;
  Dbg_TrClk_8 <= \<const0>\;
  Dbg_TrClk_9 <= \<const0>\;
  Dbg_TrReady_0 <= \<const0>\;
  Dbg_TrReady_1 <= \<const0>\;
  Dbg_TrReady_10 <= \<const0>\;
  Dbg_TrReady_11 <= \<const0>\;
  Dbg_TrReady_12 <= \<const0>\;
  Dbg_TrReady_13 <= \<const0>\;
  Dbg_TrReady_14 <= \<const0>\;
  Dbg_TrReady_15 <= \<const0>\;
  Dbg_TrReady_16 <= \<const0>\;
  Dbg_TrReady_17 <= \<const0>\;
  Dbg_TrReady_18 <= \<const0>\;
  Dbg_TrReady_19 <= \<const0>\;
  Dbg_TrReady_2 <= \<const0>\;
  Dbg_TrReady_20 <= \<const0>\;
  Dbg_TrReady_21 <= \<const0>\;
  Dbg_TrReady_22 <= \<const0>\;
  Dbg_TrReady_23 <= \<const0>\;
  Dbg_TrReady_24 <= \<const0>\;
  Dbg_TrReady_25 <= \<const0>\;
  Dbg_TrReady_26 <= \<const0>\;
  Dbg_TrReady_27 <= \<const0>\;
  Dbg_TrReady_28 <= \<const0>\;
  Dbg_TrReady_29 <= \<const0>\;
  Dbg_TrReady_3 <= \<const0>\;
  Dbg_TrReady_30 <= \<const0>\;
  Dbg_TrReady_31 <= \<const0>\;
  Dbg_TrReady_4 <= \<const0>\;
  Dbg_TrReady_5 <= \<const0>\;
  Dbg_TrReady_6 <= \<const0>\;
  Dbg_TrReady_7 <= \<const0>\;
  Dbg_TrReady_8 <= \<const0>\;
  Dbg_TrReady_9 <= \<const0>\;
  Dbg_Trig_Ack_In_0(0) <= \<const0>\;
  Dbg_Trig_Ack_In_0(1) <= \<const0>\;
  Dbg_Trig_Ack_In_0(2) <= \<const0>\;
  Dbg_Trig_Ack_In_0(3) <= \<const0>\;
  Dbg_Trig_Ack_In_0(4) <= \<const0>\;
  Dbg_Trig_Ack_In_0(5) <= \<const0>\;
  Dbg_Trig_Ack_In_0(6) <= \<const0>\;
  Dbg_Trig_Ack_In_0(7) <= \<const0>\;
  Dbg_Trig_Ack_In_1(0) <= \<const0>\;
  Dbg_Trig_Ack_In_1(1) <= \<const0>\;
  Dbg_Trig_Ack_In_1(2) <= \<const0>\;
  Dbg_Trig_Ack_In_1(3) <= \<const0>\;
  Dbg_Trig_Ack_In_1(4) <= \<const0>\;
  Dbg_Trig_Ack_In_1(5) <= \<const0>\;
  Dbg_Trig_Ack_In_1(6) <= \<const0>\;
  Dbg_Trig_Ack_In_1(7) <= \<const0>\;
  Dbg_Trig_Ack_In_10(0) <= \<const0>\;
  Dbg_Trig_Ack_In_10(1) <= \<const0>\;
  Dbg_Trig_Ack_In_10(2) <= \<const0>\;
  Dbg_Trig_Ack_In_10(3) <= \<const0>\;
  Dbg_Trig_Ack_In_10(4) <= \<const0>\;
  Dbg_Trig_Ack_In_10(5) <= \<const0>\;
  Dbg_Trig_Ack_In_10(6) <= \<const0>\;
  Dbg_Trig_Ack_In_10(7) <= \<const0>\;
  Dbg_Trig_Ack_In_11(0) <= \<const0>\;
  Dbg_Trig_Ack_In_11(1) <= \<const0>\;
  Dbg_Trig_Ack_In_11(2) <= \<const0>\;
  Dbg_Trig_Ack_In_11(3) <= \<const0>\;
  Dbg_Trig_Ack_In_11(4) <= \<const0>\;
  Dbg_Trig_Ack_In_11(5) <= \<const0>\;
  Dbg_Trig_Ack_In_11(6) <= \<const0>\;
  Dbg_Trig_Ack_In_11(7) <= \<const0>\;
  Dbg_Trig_Ack_In_12(0) <= \<const0>\;
  Dbg_Trig_Ack_In_12(1) <= \<const0>\;
  Dbg_Trig_Ack_In_12(2) <= \<const0>\;
  Dbg_Trig_Ack_In_12(3) <= \<const0>\;
  Dbg_Trig_Ack_In_12(4) <= \<const0>\;
  Dbg_Trig_Ack_In_12(5) <= \<const0>\;
  Dbg_Trig_Ack_In_12(6) <= \<const0>\;
  Dbg_Trig_Ack_In_12(7) <= \<const0>\;
  Dbg_Trig_Ack_In_13(0) <= \<const0>\;
  Dbg_Trig_Ack_In_13(1) <= \<const0>\;
  Dbg_Trig_Ack_In_13(2) <= \<const0>\;
  Dbg_Trig_Ack_In_13(3) <= \<const0>\;
  Dbg_Trig_Ack_In_13(4) <= \<const0>\;
  Dbg_Trig_Ack_In_13(5) <= \<const0>\;
  Dbg_Trig_Ack_In_13(6) <= \<const0>\;
  Dbg_Trig_Ack_In_13(7) <= \<const0>\;
  Dbg_Trig_Ack_In_14(0) <= \<const0>\;
  Dbg_Trig_Ack_In_14(1) <= \<const0>\;
  Dbg_Trig_Ack_In_14(2) <= \<const0>\;
  Dbg_Trig_Ack_In_14(3) <= \<const0>\;
  Dbg_Trig_Ack_In_14(4) <= \<const0>\;
  Dbg_Trig_Ack_In_14(5) <= \<const0>\;
  Dbg_Trig_Ack_In_14(6) <= \<const0>\;
  Dbg_Trig_Ack_In_14(7) <= \<const0>\;
  Dbg_Trig_Ack_In_15(0) <= \<const0>\;
  Dbg_Trig_Ack_In_15(1) <= \<const0>\;
  Dbg_Trig_Ack_In_15(2) <= \<const0>\;
  Dbg_Trig_Ack_In_15(3) <= \<const0>\;
  Dbg_Trig_Ack_In_15(4) <= \<const0>\;
  Dbg_Trig_Ack_In_15(5) <= \<const0>\;
  Dbg_Trig_Ack_In_15(6) <= \<const0>\;
  Dbg_Trig_Ack_In_15(7) <= \<const0>\;
  Dbg_Trig_Ack_In_16(0) <= \<const0>\;
  Dbg_Trig_Ack_In_16(1) <= \<const0>\;
  Dbg_Trig_Ack_In_16(2) <= \<const0>\;
  Dbg_Trig_Ack_In_16(3) <= \<const0>\;
  Dbg_Trig_Ack_In_16(4) <= \<const0>\;
  Dbg_Trig_Ack_In_16(5) <= \<const0>\;
  Dbg_Trig_Ack_In_16(6) <= \<const0>\;
  Dbg_Trig_Ack_In_16(7) <= \<const0>\;
  Dbg_Trig_Ack_In_17(0) <= \<const0>\;
  Dbg_Trig_Ack_In_17(1) <= \<const0>\;
  Dbg_Trig_Ack_In_17(2) <= \<const0>\;
  Dbg_Trig_Ack_In_17(3) <= \<const0>\;
  Dbg_Trig_Ack_In_17(4) <= \<const0>\;
  Dbg_Trig_Ack_In_17(5) <= \<const0>\;
  Dbg_Trig_Ack_In_17(6) <= \<const0>\;
  Dbg_Trig_Ack_In_17(7) <= \<const0>\;
  Dbg_Trig_Ack_In_18(0) <= \<const0>\;
  Dbg_Trig_Ack_In_18(1) <= \<const0>\;
  Dbg_Trig_Ack_In_18(2) <= \<const0>\;
  Dbg_Trig_Ack_In_18(3) <= \<const0>\;
  Dbg_Trig_Ack_In_18(4) <= \<const0>\;
  Dbg_Trig_Ack_In_18(5) <= \<const0>\;
  Dbg_Trig_Ack_In_18(6) <= \<const0>\;
  Dbg_Trig_Ack_In_18(7) <= \<const0>\;
  Dbg_Trig_Ack_In_19(0) <= \<const0>\;
  Dbg_Trig_Ack_In_19(1) <= \<const0>\;
  Dbg_Trig_Ack_In_19(2) <= \<const0>\;
  Dbg_Trig_Ack_In_19(3) <= \<const0>\;
  Dbg_Trig_Ack_In_19(4) <= \<const0>\;
  Dbg_Trig_Ack_In_19(5) <= \<const0>\;
  Dbg_Trig_Ack_In_19(6) <= \<const0>\;
  Dbg_Trig_Ack_In_19(7) <= \<const0>\;
  Dbg_Trig_Ack_In_2(0) <= \<const0>\;
  Dbg_Trig_Ack_In_2(1) <= \<const0>\;
  Dbg_Trig_Ack_In_2(2) <= \<const0>\;
  Dbg_Trig_Ack_In_2(3) <= \<const0>\;
  Dbg_Trig_Ack_In_2(4) <= \<const0>\;
  Dbg_Trig_Ack_In_2(5) <= \<const0>\;
  Dbg_Trig_Ack_In_2(6) <= \<const0>\;
  Dbg_Trig_Ack_In_2(7) <= \<const0>\;
  Dbg_Trig_Ack_In_20(0) <= \<const0>\;
  Dbg_Trig_Ack_In_20(1) <= \<const0>\;
  Dbg_Trig_Ack_In_20(2) <= \<const0>\;
  Dbg_Trig_Ack_In_20(3) <= \<const0>\;
  Dbg_Trig_Ack_In_20(4) <= \<const0>\;
  Dbg_Trig_Ack_In_20(5) <= \<const0>\;
  Dbg_Trig_Ack_In_20(6) <= \<const0>\;
  Dbg_Trig_Ack_In_20(7) <= \<const0>\;
  Dbg_Trig_Ack_In_21(0) <= \<const0>\;
  Dbg_Trig_Ack_In_21(1) <= \<const0>\;
  Dbg_Trig_Ack_In_21(2) <= \<const0>\;
  Dbg_Trig_Ack_In_21(3) <= \<const0>\;
  Dbg_Trig_Ack_In_21(4) <= \<const0>\;
  Dbg_Trig_Ack_In_21(5) <= \<const0>\;
  Dbg_Trig_Ack_In_21(6) <= \<const0>\;
  Dbg_Trig_Ack_In_21(7) <= \<const0>\;
  Dbg_Trig_Ack_In_22(0) <= \<const0>\;
  Dbg_Trig_Ack_In_22(1) <= \<const0>\;
  Dbg_Trig_Ack_In_22(2) <= \<const0>\;
  Dbg_Trig_Ack_In_22(3) <= \<const0>\;
  Dbg_Trig_Ack_In_22(4) <= \<const0>\;
  Dbg_Trig_Ack_In_22(5) <= \<const0>\;
  Dbg_Trig_Ack_In_22(6) <= \<const0>\;
  Dbg_Trig_Ack_In_22(7) <= \<const0>\;
  Dbg_Trig_Ack_In_23(0) <= \<const0>\;
  Dbg_Trig_Ack_In_23(1) <= \<const0>\;
  Dbg_Trig_Ack_In_23(2) <= \<const0>\;
  Dbg_Trig_Ack_In_23(3) <= \<const0>\;
  Dbg_Trig_Ack_In_23(4) <= \<const0>\;
  Dbg_Trig_Ack_In_23(5) <= \<const0>\;
  Dbg_Trig_Ack_In_23(6) <= \<const0>\;
  Dbg_Trig_Ack_In_23(7) <= \<const0>\;
  Dbg_Trig_Ack_In_24(0) <= \<const0>\;
  Dbg_Trig_Ack_In_24(1) <= \<const0>\;
  Dbg_Trig_Ack_In_24(2) <= \<const0>\;
  Dbg_Trig_Ack_In_24(3) <= \<const0>\;
  Dbg_Trig_Ack_In_24(4) <= \<const0>\;
  Dbg_Trig_Ack_In_24(5) <= \<const0>\;
  Dbg_Trig_Ack_In_24(6) <= \<const0>\;
  Dbg_Trig_Ack_In_24(7) <= \<const0>\;
  Dbg_Trig_Ack_In_25(0) <= \<const0>\;
  Dbg_Trig_Ack_In_25(1) <= \<const0>\;
  Dbg_Trig_Ack_In_25(2) <= \<const0>\;
  Dbg_Trig_Ack_In_25(3) <= \<const0>\;
  Dbg_Trig_Ack_In_25(4) <= \<const0>\;
  Dbg_Trig_Ack_In_25(5) <= \<const0>\;
  Dbg_Trig_Ack_In_25(6) <= \<const0>\;
  Dbg_Trig_Ack_In_25(7) <= \<const0>\;
  Dbg_Trig_Ack_In_26(0) <= \<const0>\;
  Dbg_Trig_Ack_In_26(1) <= \<const0>\;
  Dbg_Trig_Ack_In_26(2) <= \<const0>\;
  Dbg_Trig_Ack_In_26(3) <= \<const0>\;
  Dbg_Trig_Ack_In_26(4) <= \<const0>\;
  Dbg_Trig_Ack_In_26(5) <= \<const0>\;
  Dbg_Trig_Ack_In_26(6) <= \<const0>\;
  Dbg_Trig_Ack_In_26(7) <= \<const0>\;
  Dbg_Trig_Ack_In_27(0) <= \<const0>\;
  Dbg_Trig_Ack_In_27(1) <= \<const0>\;
  Dbg_Trig_Ack_In_27(2) <= \<const0>\;
  Dbg_Trig_Ack_In_27(3) <= \<const0>\;
  Dbg_Trig_Ack_In_27(4) <= \<const0>\;
  Dbg_Trig_Ack_In_27(5) <= \<const0>\;
  Dbg_Trig_Ack_In_27(6) <= \<const0>\;
  Dbg_Trig_Ack_In_27(7) <= \<const0>\;
  Dbg_Trig_Ack_In_28(0) <= \<const0>\;
  Dbg_Trig_Ack_In_28(1) <= \<const0>\;
  Dbg_Trig_Ack_In_28(2) <= \<const0>\;
  Dbg_Trig_Ack_In_28(3) <= \<const0>\;
  Dbg_Trig_Ack_In_28(4) <= \<const0>\;
  Dbg_Trig_Ack_In_28(5) <= \<const0>\;
  Dbg_Trig_Ack_In_28(6) <= \<const0>\;
  Dbg_Trig_Ack_In_28(7) <= \<const0>\;
  Dbg_Trig_Ack_In_29(0) <= \<const0>\;
  Dbg_Trig_Ack_In_29(1) <= \<const0>\;
  Dbg_Trig_Ack_In_29(2) <= \<const0>\;
  Dbg_Trig_Ack_In_29(3) <= \<const0>\;
  Dbg_Trig_Ack_In_29(4) <= \<const0>\;
  Dbg_Trig_Ack_In_29(5) <= \<const0>\;
  Dbg_Trig_Ack_In_29(6) <= \<const0>\;
  Dbg_Trig_Ack_In_29(7) <= \<const0>\;
  Dbg_Trig_Ack_In_3(0) <= \<const0>\;
  Dbg_Trig_Ack_In_3(1) <= \<const0>\;
  Dbg_Trig_Ack_In_3(2) <= \<const0>\;
  Dbg_Trig_Ack_In_3(3) <= \<const0>\;
  Dbg_Trig_Ack_In_3(4) <= \<const0>\;
  Dbg_Trig_Ack_In_3(5) <= \<const0>\;
  Dbg_Trig_Ack_In_3(6) <= \<const0>\;
  Dbg_Trig_Ack_In_3(7) <= \<const0>\;
  Dbg_Trig_Ack_In_30(0) <= \<const0>\;
  Dbg_Trig_Ack_In_30(1) <= \<const0>\;
  Dbg_Trig_Ack_In_30(2) <= \<const0>\;
  Dbg_Trig_Ack_In_30(3) <= \<const0>\;
  Dbg_Trig_Ack_In_30(4) <= \<const0>\;
  Dbg_Trig_Ack_In_30(5) <= \<const0>\;
  Dbg_Trig_Ack_In_30(6) <= \<const0>\;
  Dbg_Trig_Ack_In_30(7) <= \<const0>\;
  Dbg_Trig_Ack_In_31(0) <= \<const0>\;
  Dbg_Trig_Ack_In_31(1) <= \<const0>\;
  Dbg_Trig_Ack_In_31(2) <= \<const0>\;
  Dbg_Trig_Ack_In_31(3) <= \<const0>\;
  Dbg_Trig_Ack_In_31(4) <= \<const0>\;
  Dbg_Trig_Ack_In_31(5) <= \<const0>\;
  Dbg_Trig_Ack_In_31(6) <= \<const0>\;
  Dbg_Trig_Ack_In_31(7) <= \<const0>\;
  Dbg_Trig_Ack_In_4(0) <= \<const0>\;
  Dbg_Trig_Ack_In_4(1) <= \<const0>\;
  Dbg_Trig_Ack_In_4(2) <= \<const0>\;
  Dbg_Trig_Ack_In_4(3) <= \<const0>\;
  Dbg_Trig_Ack_In_4(4) <= \<const0>\;
  Dbg_Trig_Ack_In_4(5) <= \<const0>\;
  Dbg_Trig_Ack_In_4(6) <= \<const0>\;
  Dbg_Trig_Ack_In_4(7) <= \<const0>\;
  Dbg_Trig_Ack_In_5(0) <= \<const0>\;
  Dbg_Trig_Ack_In_5(1) <= \<const0>\;
  Dbg_Trig_Ack_In_5(2) <= \<const0>\;
  Dbg_Trig_Ack_In_5(3) <= \<const0>\;
  Dbg_Trig_Ack_In_5(4) <= \<const0>\;
  Dbg_Trig_Ack_In_5(5) <= \<const0>\;
  Dbg_Trig_Ack_In_5(6) <= \<const0>\;
  Dbg_Trig_Ack_In_5(7) <= \<const0>\;
  Dbg_Trig_Ack_In_6(0) <= \<const0>\;
  Dbg_Trig_Ack_In_6(1) <= \<const0>\;
  Dbg_Trig_Ack_In_6(2) <= \<const0>\;
  Dbg_Trig_Ack_In_6(3) <= \<const0>\;
  Dbg_Trig_Ack_In_6(4) <= \<const0>\;
  Dbg_Trig_Ack_In_6(5) <= \<const0>\;
  Dbg_Trig_Ack_In_6(6) <= \<const0>\;
  Dbg_Trig_Ack_In_6(7) <= \<const0>\;
  Dbg_Trig_Ack_In_7(0) <= \<const0>\;
  Dbg_Trig_Ack_In_7(1) <= \<const0>\;
  Dbg_Trig_Ack_In_7(2) <= \<const0>\;
  Dbg_Trig_Ack_In_7(3) <= \<const0>\;
  Dbg_Trig_Ack_In_7(4) <= \<const0>\;
  Dbg_Trig_Ack_In_7(5) <= \<const0>\;
  Dbg_Trig_Ack_In_7(6) <= \<const0>\;
  Dbg_Trig_Ack_In_7(7) <= \<const0>\;
  Dbg_Trig_Ack_In_8(0) <= \<const0>\;
  Dbg_Trig_Ack_In_8(1) <= \<const0>\;
  Dbg_Trig_Ack_In_8(2) <= \<const0>\;
  Dbg_Trig_Ack_In_8(3) <= \<const0>\;
  Dbg_Trig_Ack_In_8(4) <= \<const0>\;
  Dbg_Trig_Ack_In_8(5) <= \<const0>\;
  Dbg_Trig_Ack_In_8(6) <= \<const0>\;
  Dbg_Trig_Ack_In_8(7) <= \<const0>\;
  Dbg_Trig_Ack_In_9(0) <= \<const0>\;
  Dbg_Trig_Ack_In_9(1) <= \<const0>\;
  Dbg_Trig_Ack_In_9(2) <= \<const0>\;
  Dbg_Trig_Ack_In_9(3) <= \<const0>\;
  Dbg_Trig_Ack_In_9(4) <= \<const0>\;
  Dbg_Trig_Ack_In_9(5) <= \<const0>\;
  Dbg_Trig_Ack_In_9(6) <= \<const0>\;
  Dbg_Trig_Ack_In_9(7) <= \<const0>\;
  Dbg_Trig_Out_0(0) <= \<const0>\;
  Dbg_Trig_Out_0(1) <= \<const0>\;
  Dbg_Trig_Out_0(2) <= \<const0>\;
  Dbg_Trig_Out_0(3) <= \<const0>\;
  Dbg_Trig_Out_0(4) <= \<const0>\;
  Dbg_Trig_Out_0(5) <= \<const0>\;
  Dbg_Trig_Out_0(6) <= \<const0>\;
  Dbg_Trig_Out_0(7) <= \<const0>\;
  Dbg_Trig_Out_1(0) <= \<const0>\;
  Dbg_Trig_Out_1(1) <= \<const0>\;
  Dbg_Trig_Out_1(2) <= \<const0>\;
  Dbg_Trig_Out_1(3) <= \<const0>\;
  Dbg_Trig_Out_1(4) <= \<const0>\;
  Dbg_Trig_Out_1(5) <= \<const0>\;
  Dbg_Trig_Out_1(6) <= \<const0>\;
  Dbg_Trig_Out_1(7) <= \<const0>\;
  Dbg_Trig_Out_10(0) <= \<const0>\;
  Dbg_Trig_Out_10(1) <= \<const0>\;
  Dbg_Trig_Out_10(2) <= \<const0>\;
  Dbg_Trig_Out_10(3) <= \<const0>\;
  Dbg_Trig_Out_10(4) <= \<const0>\;
  Dbg_Trig_Out_10(5) <= \<const0>\;
  Dbg_Trig_Out_10(6) <= \<const0>\;
  Dbg_Trig_Out_10(7) <= \<const0>\;
  Dbg_Trig_Out_11(0) <= \<const0>\;
  Dbg_Trig_Out_11(1) <= \<const0>\;
  Dbg_Trig_Out_11(2) <= \<const0>\;
  Dbg_Trig_Out_11(3) <= \<const0>\;
  Dbg_Trig_Out_11(4) <= \<const0>\;
  Dbg_Trig_Out_11(5) <= \<const0>\;
  Dbg_Trig_Out_11(6) <= \<const0>\;
  Dbg_Trig_Out_11(7) <= \<const0>\;
  Dbg_Trig_Out_12(0) <= \<const0>\;
  Dbg_Trig_Out_12(1) <= \<const0>\;
  Dbg_Trig_Out_12(2) <= \<const0>\;
  Dbg_Trig_Out_12(3) <= \<const0>\;
  Dbg_Trig_Out_12(4) <= \<const0>\;
  Dbg_Trig_Out_12(5) <= \<const0>\;
  Dbg_Trig_Out_12(6) <= \<const0>\;
  Dbg_Trig_Out_12(7) <= \<const0>\;
  Dbg_Trig_Out_13(0) <= \<const0>\;
  Dbg_Trig_Out_13(1) <= \<const0>\;
  Dbg_Trig_Out_13(2) <= \<const0>\;
  Dbg_Trig_Out_13(3) <= \<const0>\;
  Dbg_Trig_Out_13(4) <= \<const0>\;
  Dbg_Trig_Out_13(5) <= \<const0>\;
  Dbg_Trig_Out_13(6) <= \<const0>\;
  Dbg_Trig_Out_13(7) <= \<const0>\;
  Dbg_Trig_Out_14(0) <= \<const0>\;
  Dbg_Trig_Out_14(1) <= \<const0>\;
  Dbg_Trig_Out_14(2) <= \<const0>\;
  Dbg_Trig_Out_14(3) <= \<const0>\;
  Dbg_Trig_Out_14(4) <= \<const0>\;
  Dbg_Trig_Out_14(5) <= \<const0>\;
  Dbg_Trig_Out_14(6) <= \<const0>\;
  Dbg_Trig_Out_14(7) <= \<const0>\;
  Dbg_Trig_Out_15(0) <= \<const0>\;
  Dbg_Trig_Out_15(1) <= \<const0>\;
  Dbg_Trig_Out_15(2) <= \<const0>\;
  Dbg_Trig_Out_15(3) <= \<const0>\;
  Dbg_Trig_Out_15(4) <= \<const0>\;
  Dbg_Trig_Out_15(5) <= \<const0>\;
  Dbg_Trig_Out_15(6) <= \<const0>\;
  Dbg_Trig_Out_15(7) <= \<const0>\;
  Dbg_Trig_Out_16(0) <= \<const0>\;
  Dbg_Trig_Out_16(1) <= \<const0>\;
  Dbg_Trig_Out_16(2) <= \<const0>\;
  Dbg_Trig_Out_16(3) <= \<const0>\;
  Dbg_Trig_Out_16(4) <= \<const0>\;
  Dbg_Trig_Out_16(5) <= \<const0>\;
  Dbg_Trig_Out_16(6) <= \<const0>\;
  Dbg_Trig_Out_16(7) <= \<const0>\;
  Dbg_Trig_Out_17(0) <= \<const0>\;
  Dbg_Trig_Out_17(1) <= \<const0>\;
  Dbg_Trig_Out_17(2) <= \<const0>\;
  Dbg_Trig_Out_17(3) <= \<const0>\;
  Dbg_Trig_Out_17(4) <= \<const0>\;
  Dbg_Trig_Out_17(5) <= \<const0>\;
  Dbg_Trig_Out_17(6) <= \<const0>\;
  Dbg_Trig_Out_17(7) <= \<const0>\;
  Dbg_Trig_Out_18(0) <= \<const0>\;
  Dbg_Trig_Out_18(1) <= \<const0>\;
  Dbg_Trig_Out_18(2) <= \<const0>\;
  Dbg_Trig_Out_18(3) <= \<const0>\;
  Dbg_Trig_Out_18(4) <= \<const0>\;
  Dbg_Trig_Out_18(5) <= \<const0>\;
  Dbg_Trig_Out_18(6) <= \<const0>\;
  Dbg_Trig_Out_18(7) <= \<const0>\;
  Dbg_Trig_Out_19(0) <= \<const0>\;
  Dbg_Trig_Out_19(1) <= \<const0>\;
  Dbg_Trig_Out_19(2) <= \<const0>\;
  Dbg_Trig_Out_19(3) <= \<const0>\;
  Dbg_Trig_Out_19(4) <= \<const0>\;
  Dbg_Trig_Out_19(5) <= \<const0>\;
  Dbg_Trig_Out_19(6) <= \<const0>\;
  Dbg_Trig_Out_19(7) <= \<const0>\;
  Dbg_Trig_Out_2(0) <= \<const0>\;
  Dbg_Trig_Out_2(1) <= \<const0>\;
  Dbg_Trig_Out_2(2) <= \<const0>\;
  Dbg_Trig_Out_2(3) <= \<const0>\;
  Dbg_Trig_Out_2(4) <= \<const0>\;
  Dbg_Trig_Out_2(5) <= \<const0>\;
  Dbg_Trig_Out_2(6) <= \<const0>\;
  Dbg_Trig_Out_2(7) <= \<const0>\;
  Dbg_Trig_Out_20(0) <= \<const0>\;
  Dbg_Trig_Out_20(1) <= \<const0>\;
  Dbg_Trig_Out_20(2) <= \<const0>\;
  Dbg_Trig_Out_20(3) <= \<const0>\;
  Dbg_Trig_Out_20(4) <= \<const0>\;
  Dbg_Trig_Out_20(5) <= \<const0>\;
  Dbg_Trig_Out_20(6) <= \<const0>\;
  Dbg_Trig_Out_20(7) <= \<const0>\;
  Dbg_Trig_Out_21(0) <= \<const0>\;
  Dbg_Trig_Out_21(1) <= \<const0>\;
  Dbg_Trig_Out_21(2) <= \<const0>\;
  Dbg_Trig_Out_21(3) <= \<const0>\;
  Dbg_Trig_Out_21(4) <= \<const0>\;
  Dbg_Trig_Out_21(5) <= \<const0>\;
  Dbg_Trig_Out_21(6) <= \<const0>\;
  Dbg_Trig_Out_21(7) <= \<const0>\;
  Dbg_Trig_Out_22(0) <= \<const0>\;
  Dbg_Trig_Out_22(1) <= \<const0>\;
  Dbg_Trig_Out_22(2) <= \<const0>\;
  Dbg_Trig_Out_22(3) <= \<const0>\;
  Dbg_Trig_Out_22(4) <= \<const0>\;
  Dbg_Trig_Out_22(5) <= \<const0>\;
  Dbg_Trig_Out_22(6) <= \<const0>\;
  Dbg_Trig_Out_22(7) <= \<const0>\;
  Dbg_Trig_Out_23(0) <= \<const0>\;
  Dbg_Trig_Out_23(1) <= \<const0>\;
  Dbg_Trig_Out_23(2) <= \<const0>\;
  Dbg_Trig_Out_23(3) <= \<const0>\;
  Dbg_Trig_Out_23(4) <= \<const0>\;
  Dbg_Trig_Out_23(5) <= \<const0>\;
  Dbg_Trig_Out_23(6) <= \<const0>\;
  Dbg_Trig_Out_23(7) <= \<const0>\;
  Dbg_Trig_Out_24(0) <= \<const0>\;
  Dbg_Trig_Out_24(1) <= \<const0>\;
  Dbg_Trig_Out_24(2) <= \<const0>\;
  Dbg_Trig_Out_24(3) <= \<const0>\;
  Dbg_Trig_Out_24(4) <= \<const0>\;
  Dbg_Trig_Out_24(5) <= \<const0>\;
  Dbg_Trig_Out_24(6) <= \<const0>\;
  Dbg_Trig_Out_24(7) <= \<const0>\;
  Dbg_Trig_Out_25(0) <= \<const0>\;
  Dbg_Trig_Out_25(1) <= \<const0>\;
  Dbg_Trig_Out_25(2) <= \<const0>\;
  Dbg_Trig_Out_25(3) <= \<const0>\;
  Dbg_Trig_Out_25(4) <= \<const0>\;
  Dbg_Trig_Out_25(5) <= \<const0>\;
  Dbg_Trig_Out_25(6) <= \<const0>\;
  Dbg_Trig_Out_25(7) <= \<const0>\;
  Dbg_Trig_Out_26(0) <= \<const0>\;
  Dbg_Trig_Out_26(1) <= \<const0>\;
  Dbg_Trig_Out_26(2) <= \<const0>\;
  Dbg_Trig_Out_26(3) <= \<const0>\;
  Dbg_Trig_Out_26(4) <= \<const0>\;
  Dbg_Trig_Out_26(5) <= \<const0>\;
  Dbg_Trig_Out_26(6) <= \<const0>\;
  Dbg_Trig_Out_26(7) <= \<const0>\;
  Dbg_Trig_Out_27(0) <= \<const0>\;
  Dbg_Trig_Out_27(1) <= \<const0>\;
  Dbg_Trig_Out_27(2) <= \<const0>\;
  Dbg_Trig_Out_27(3) <= \<const0>\;
  Dbg_Trig_Out_27(4) <= \<const0>\;
  Dbg_Trig_Out_27(5) <= \<const0>\;
  Dbg_Trig_Out_27(6) <= \<const0>\;
  Dbg_Trig_Out_27(7) <= \<const0>\;
  Dbg_Trig_Out_28(0) <= \<const0>\;
  Dbg_Trig_Out_28(1) <= \<const0>\;
  Dbg_Trig_Out_28(2) <= \<const0>\;
  Dbg_Trig_Out_28(3) <= \<const0>\;
  Dbg_Trig_Out_28(4) <= \<const0>\;
  Dbg_Trig_Out_28(5) <= \<const0>\;
  Dbg_Trig_Out_28(6) <= \<const0>\;
  Dbg_Trig_Out_28(7) <= \<const0>\;
  Dbg_Trig_Out_29(0) <= \<const0>\;
  Dbg_Trig_Out_29(1) <= \<const0>\;
  Dbg_Trig_Out_29(2) <= \<const0>\;
  Dbg_Trig_Out_29(3) <= \<const0>\;
  Dbg_Trig_Out_29(4) <= \<const0>\;
  Dbg_Trig_Out_29(5) <= \<const0>\;
  Dbg_Trig_Out_29(6) <= \<const0>\;
  Dbg_Trig_Out_29(7) <= \<const0>\;
  Dbg_Trig_Out_3(0) <= \<const0>\;
  Dbg_Trig_Out_3(1) <= \<const0>\;
  Dbg_Trig_Out_3(2) <= \<const0>\;
  Dbg_Trig_Out_3(3) <= \<const0>\;
  Dbg_Trig_Out_3(4) <= \<const0>\;
  Dbg_Trig_Out_3(5) <= \<const0>\;
  Dbg_Trig_Out_3(6) <= \<const0>\;
  Dbg_Trig_Out_3(7) <= \<const0>\;
  Dbg_Trig_Out_30(0) <= \<const0>\;
  Dbg_Trig_Out_30(1) <= \<const0>\;
  Dbg_Trig_Out_30(2) <= \<const0>\;
  Dbg_Trig_Out_30(3) <= \<const0>\;
  Dbg_Trig_Out_30(4) <= \<const0>\;
  Dbg_Trig_Out_30(5) <= \<const0>\;
  Dbg_Trig_Out_30(6) <= \<const0>\;
  Dbg_Trig_Out_30(7) <= \<const0>\;
  Dbg_Trig_Out_31(0) <= \<const0>\;
  Dbg_Trig_Out_31(1) <= \<const0>\;
  Dbg_Trig_Out_31(2) <= \<const0>\;
  Dbg_Trig_Out_31(3) <= \<const0>\;
  Dbg_Trig_Out_31(4) <= \<const0>\;
  Dbg_Trig_Out_31(5) <= \<const0>\;
  Dbg_Trig_Out_31(6) <= \<const0>\;
  Dbg_Trig_Out_31(7) <= \<const0>\;
  Dbg_Trig_Out_4(0) <= \<const0>\;
  Dbg_Trig_Out_4(1) <= \<const0>\;
  Dbg_Trig_Out_4(2) <= \<const0>\;
  Dbg_Trig_Out_4(3) <= \<const0>\;
  Dbg_Trig_Out_4(4) <= \<const0>\;
  Dbg_Trig_Out_4(5) <= \<const0>\;
  Dbg_Trig_Out_4(6) <= \<const0>\;
  Dbg_Trig_Out_4(7) <= \<const0>\;
  Dbg_Trig_Out_5(0) <= \<const0>\;
  Dbg_Trig_Out_5(1) <= \<const0>\;
  Dbg_Trig_Out_5(2) <= \<const0>\;
  Dbg_Trig_Out_5(3) <= \<const0>\;
  Dbg_Trig_Out_5(4) <= \<const0>\;
  Dbg_Trig_Out_5(5) <= \<const0>\;
  Dbg_Trig_Out_5(6) <= \<const0>\;
  Dbg_Trig_Out_5(7) <= \<const0>\;
  Dbg_Trig_Out_6(0) <= \<const0>\;
  Dbg_Trig_Out_6(1) <= \<const0>\;
  Dbg_Trig_Out_6(2) <= \<const0>\;
  Dbg_Trig_Out_6(3) <= \<const0>\;
  Dbg_Trig_Out_6(4) <= \<const0>\;
  Dbg_Trig_Out_6(5) <= \<const0>\;
  Dbg_Trig_Out_6(6) <= \<const0>\;
  Dbg_Trig_Out_6(7) <= \<const0>\;
  Dbg_Trig_Out_7(0) <= \<const0>\;
  Dbg_Trig_Out_7(1) <= \<const0>\;
  Dbg_Trig_Out_7(2) <= \<const0>\;
  Dbg_Trig_Out_7(3) <= \<const0>\;
  Dbg_Trig_Out_7(4) <= \<const0>\;
  Dbg_Trig_Out_7(5) <= \<const0>\;
  Dbg_Trig_Out_7(6) <= \<const0>\;
  Dbg_Trig_Out_7(7) <= \<const0>\;
  Dbg_Trig_Out_8(0) <= \<const0>\;
  Dbg_Trig_Out_8(1) <= \<const0>\;
  Dbg_Trig_Out_8(2) <= \<const0>\;
  Dbg_Trig_Out_8(3) <= \<const0>\;
  Dbg_Trig_Out_8(4) <= \<const0>\;
  Dbg_Trig_Out_8(5) <= \<const0>\;
  Dbg_Trig_Out_8(6) <= \<const0>\;
  Dbg_Trig_Out_8(7) <= \<const0>\;
  Dbg_Trig_Out_9(0) <= \<const0>\;
  Dbg_Trig_Out_9(1) <= \<const0>\;
  Dbg_Trig_Out_9(2) <= \<const0>\;
  Dbg_Trig_Out_9(3) <= \<const0>\;
  Dbg_Trig_Out_9(4) <= \<const0>\;
  Dbg_Trig_Out_9(5) <= \<const0>\;
  Dbg_Trig_Out_9(6) <= \<const0>\;
  Dbg_Trig_Out_9(7) <= \<const0>\;
  Dbg_Update_0 <= \^ext_jtag_update\;
  Dbg_Update_1 <= \^ext_jtag_update\;
  Dbg_Update_10 <= \^ext_jtag_update\;
  Dbg_Update_11 <= \^ext_jtag_update\;
  Dbg_Update_12 <= \^ext_jtag_update\;
  Dbg_Update_13 <= \^ext_jtag_update\;
  Dbg_Update_14 <= \^ext_jtag_update\;
  Dbg_Update_15 <= \^ext_jtag_update\;
  Dbg_Update_16 <= \^ext_jtag_update\;
  Dbg_Update_17 <= \^ext_jtag_update\;
  Dbg_Update_18 <= \^ext_jtag_update\;
  Dbg_Update_19 <= \^ext_jtag_update\;
  Dbg_Update_2 <= \^ext_jtag_update\;
  Dbg_Update_20 <= \^ext_jtag_update\;
  Dbg_Update_21 <= \^ext_jtag_update\;
  Dbg_Update_22 <= \^ext_jtag_update\;
  Dbg_Update_23 <= \^ext_jtag_update\;
  Dbg_Update_24 <= \^ext_jtag_update\;
  Dbg_Update_25 <= \^ext_jtag_update\;
  Dbg_Update_26 <= \^ext_jtag_update\;
  Dbg_Update_27 <= \^ext_jtag_update\;
  Dbg_Update_28 <= \^ext_jtag_update\;
  Dbg_Update_29 <= \^ext_jtag_update\;
  Dbg_Update_3 <= \^ext_jtag_update\;
  Dbg_Update_30 <= \^ext_jtag_update\;
  Dbg_Update_31 <= \^ext_jtag_update\;
  Dbg_Update_4 <= \^ext_jtag_update\;
  Dbg_Update_5 <= \^ext_jtag_update\;
  Dbg_Update_6 <= \^ext_jtag_update\;
  Dbg_Update_7 <= \^ext_jtag_update\;
  Dbg_Update_8 <= \^ext_jtag_update\;
  Dbg_Update_9 <= \^ext_jtag_update\;
  Dbg_WDATA_0(31) <= \<const0>\;
  Dbg_WDATA_0(30) <= \<const0>\;
  Dbg_WDATA_0(29) <= \<const0>\;
  Dbg_WDATA_0(28) <= \<const0>\;
  Dbg_WDATA_0(27) <= \<const0>\;
  Dbg_WDATA_0(26) <= \<const0>\;
  Dbg_WDATA_0(25) <= \<const0>\;
  Dbg_WDATA_0(24) <= \<const0>\;
  Dbg_WDATA_0(23) <= \<const0>\;
  Dbg_WDATA_0(22) <= \<const0>\;
  Dbg_WDATA_0(21) <= \<const0>\;
  Dbg_WDATA_0(20) <= \<const0>\;
  Dbg_WDATA_0(19) <= \<const0>\;
  Dbg_WDATA_0(18) <= \<const0>\;
  Dbg_WDATA_0(17) <= \<const0>\;
  Dbg_WDATA_0(16) <= \<const0>\;
  Dbg_WDATA_0(15) <= \<const0>\;
  Dbg_WDATA_0(14) <= \<const0>\;
  Dbg_WDATA_0(13) <= \<const0>\;
  Dbg_WDATA_0(12) <= \<const0>\;
  Dbg_WDATA_0(11) <= \<const0>\;
  Dbg_WDATA_0(10) <= \<const0>\;
  Dbg_WDATA_0(9) <= \<const0>\;
  Dbg_WDATA_0(8) <= \<const0>\;
  Dbg_WDATA_0(7) <= \<const0>\;
  Dbg_WDATA_0(6) <= \<const0>\;
  Dbg_WDATA_0(5) <= \<const0>\;
  Dbg_WDATA_0(4) <= \<const0>\;
  Dbg_WDATA_0(3) <= \<const0>\;
  Dbg_WDATA_0(2) <= \<const0>\;
  Dbg_WDATA_0(1) <= \<const0>\;
  Dbg_WDATA_0(0) <= \<const0>\;
  Dbg_WDATA_1(31) <= \<const0>\;
  Dbg_WDATA_1(30) <= \<const0>\;
  Dbg_WDATA_1(29) <= \<const0>\;
  Dbg_WDATA_1(28) <= \<const0>\;
  Dbg_WDATA_1(27) <= \<const0>\;
  Dbg_WDATA_1(26) <= \<const0>\;
  Dbg_WDATA_1(25) <= \<const0>\;
  Dbg_WDATA_1(24) <= \<const0>\;
  Dbg_WDATA_1(23) <= \<const0>\;
  Dbg_WDATA_1(22) <= \<const0>\;
  Dbg_WDATA_1(21) <= \<const0>\;
  Dbg_WDATA_1(20) <= \<const0>\;
  Dbg_WDATA_1(19) <= \<const0>\;
  Dbg_WDATA_1(18) <= \<const0>\;
  Dbg_WDATA_1(17) <= \<const0>\;
  Dbg_WDATA_1(16) <= \<const0>\;
  Dbg_WDATA_1(15) <= \<const0>\;
  Dbg_WDATA_1(14) <= \<const0>\;
  Dbg_WDATA_1(13) <= \<const0>\;
  Dbg_WDATA_1(12) <= \<const0>\;
  Dbg_WDATA_1(11) <= \<const0>\;
  Dbg_WDATA_1(10) <= \<const0>\;
  Dbg_WDATA_1(9) <= \<const0>\;
  Dbg_WDATA_1(8) <= \<const0>\;
  Dbg_WDATA_1(7) <= \<const0>\;
  Dbg_WDATA_1(6) <= \<const0>\;
  Dbg_WDATA_1(5) <= \<const0>\;
  Dbg_WDATA_1(4) <= \<const0>\;
  Dbg_WDATA_1(3) <= \<const0>\;
  Dbg_WDATA_1(2) <= \<const0>\;
  Dbg_WDATA_1(1) <= \<const0>\;
  Dbg_WDATA_1(0) <= \<const0>\;
  Dbg_WDATA_10(31) <= \<const0>\;
  Dbg_WDATA_10(30) <= \<const0>\;
  Dbg_WDATA_10(29) <= \<const0>\;
  Dbg_WDATA_10(28) <= \<const0>\;
  Dbg_WDATA_10(27) <= \<const0>\;
  Dbg_WDATA_10(26) <= \<const0>\;
  Dbg_WDATA_10(25) <= \<const0>\;
  Dbg_WDATA_10(24) <= \<const0>\;
  Dbg_WDATA_10(23) <= \<const0>\;
  Dbg_WDATA_10(22) <= \<const0>\;
  Dbg_WDATA_10(21) <= \<const0>\;
  Dbg_WDATA_10(20) <= \<const0>\;
  Dbg_WDATA_10(19) <= \<const0>\;
  Dbg_WDATA_10(18) <= \<const0>\;
  Dbg_WDATA_10(17) <= \<const0>\;
  Dbg_WDATA_10(16) <= \<const0>\;
  Dbg_WDATA_10(15) <= \<const0>\;
  Dbg_WDATA_10(14) <= \<const0>\;
  Dbg_WDATA_10(13) <= \<const0>\;
  Dbg_WDATA_10(12) <= \<const0>\;
  Dbg_WDATA_10(11) <= \<const0>\;
  Dbg_WDATA_10(10) <= \<const0>\;
  Dbg_WDATA_10(9) <= \<const0>\;
  Dbg_WDATA_10(8) <= \<const0>\;
  Dbg_WDATA_10(7) <= \<const0>\;
  Dbg_WDATA_10(6) <= \<const0>\;
  Dbg_WDATA_10(5) <= \<const0>\;
  Dbg_WDATA_10(4) <= \<const0>\;
  Dbg_WDATA_10(3) <= \<const0>\;
  Dbg_WDATA_10(2) <= \<const0>\;
  Dbg_WDATA_10(1) <= \<const0>\;
  Dbg_WDATA_10(0) <= \<const0>\;
  Dbg_WDATA_11(31) <= \<const0>\;
  Dbg_WDATA_11(30) <= \<const0>\;
  Dbg_WDATA_11(29) <= \<const0>\;
  Dbg_WDATA_11(28) <= \<const0>\;
  Dbg_WDATA_11(27) <= \<const0>\;
  Dbg_WDATA_11(26) <= \<const0>\;
  Dbg_WDATA_11(25) <= \<const0>\;
  Dbg_WDATA_11(24) <= \<const0>\;
  Dbg_WDATA_11(23) <= \<const0>\;
  Dbg_WDATA_11(22) <= \<const0>\;
  Dbg_WDATA_11(21) <= \<const0>\;
  Dbg_WDATA_11(20) <= \<const0>\;
  Dbg_WDATA_11(19) <= \<const0>\;
  Dbg_WDATA_11(18) <= \<const0>\;
  Dbg_WDATA_11(17) <= \<const0>\;
  Dbg_WDATA_11(16) <= \<const0>\;
  Dbg_WDATA_11(15) <= \<const0>\;
  Dbg_WDATA_11(14) <= \<const0>\;
  Dbg_WDATA_11(13) <= \<const0>\;
  Dbg_WDATA_11(12) <= \<const0>\;
  Dbg_WDATA_11(11) <= \<const0>\;
  Dbg_WDATA_11(10) <= \<const0>\;
  Dbg_WDATA_11(9) <= \<const0>\;
  Dbg_WDATA_11(8) <= \<const0>\;
  Dbg_WDATA_11(7) <= \<const0>\;
  Dbg_WDATA_11(6) <= \<const0>\;
  Dbg_WDATA_11(5) <= \<const0>\;
  Dbg_WDATA_11(4) <= \<const0>\;
  Dbg_WDATA_11(3) <= \<const0>\;
  Dbg_WDATA_11(2) <= \<const0>\;
  Dbg_WDATA_11(1) <= \<const0>\;
  Dbg_WDATA_11(0) <= \<const0>\;
  Dbg_WDATA_12(31) <= \<const0>\;
  Dbg_WDATA_12(30) <= \<const0>\;
  Dbg_WDATA_12(29) <= \<const0>\;
  Dbg_WDATA_12(28) <= \<const0>\;
  Dbg_WDATA_12(27) <= \<const0>\;
  Dbg_WDATA_12(26) <= \<const0>\;
  Dbg_WDATA_12(25) <= \<const0>\;
  Dbg_WDATA_12(24) <= \<const0>\;
  Dbg_WDATA_12(23) <= \<const0>\;
  Dbg_WDATA_12(22) <= \<const0>\;
  Dbg_WDATA_12(21) <= \<const0>\;
  Dbg_WDATA_12(20) <= \<const0>\;
  Dbg_WDATA_12(19) <= \<const0>\;
  Dbg_WDATA_12(18) <= \<const0>\;
  Dbg_WDATA_12(17) <= \<const0>\;
  Dbg_WDATA_12(16) <= \<const0>\;
  Dbg_WDATA_12(15) <= \<const0>\;
  Dbg_WDATA_12(14) <= \<const0>\;
  Dbg_WDATA_12(13) <= \<const0>\;
  Dbg_WDATA_12(12) <= \<const0>\;
  Dbg_WDATA_12(11) <= \<const0>\;
  Dbg_WDATA_12(10) <= \<const0>\;
  Dbg_WDATA_12(9) <= \<const0>\;
  Dbg_WDATA_12(8) <= \<const0>\;
  Dbg_WDATA_12(7) <= \<const0>\;
  Dbg_WDATA_12(6) <= \<const0>\;
  Dbg_WDATA_12(5) <= \<const0>\;
  Dbg_WDATA_12(4) <= \<const0>\;
  Dbg_WDATA_12(3) <= \<const0>\;
  Dbg_WDATA_12(2) <= \<const0>\;
  Dbg_WDATA_12(1) <= \<const0>\;
  Dbg_WDATA_12(0) <= \<const0>\;
  Dbg_WDATA_13(31) <= \<const0>\;
  Dbg_WDATA_13(30) <= \<const0>\;
  Dbg_WDATA_13(29) <= \<const0>\;
  Dbg_WDATA_13(28) <= \<const0>\;
  Dbg_WDATA_13(27) <= \<const0>\;
  Dbg_WDATA_13(26) <= \<const0>\;
  Dbg_WDATA_13(25) <= \<const0>\;
  Dbg_WDATA_13(24) <= \<const0>\;
  Dbg_WDATA_13(23) <= \<const0>\;
  Dbg_WDATA_13(22) <= \<const0>\;
  Dbg_WDATA_13(21) <= \<const0>\;
  Dbg_WDATA_13(20) <= \<const0>\;
  Dbg_WDATA_13(19) <= \<const0>\;
  Dbg_WDATA_13(18) <= \<const0>\;
  Dbg_WDATA_13(17) <= \<const0>\;
  Dbg_WDATA_13(16) <= \<const0>\;
  Dbg_WDATA_13(15) <= \<const0>\;
  Dbg_WDATA_13(14) <= \<const0>\;
  Dbg_WDATA_13(13) <= \<const0>\;
  Dbg_WDATA_13(12) <= \<const0>\;
  Dbg_WDATA_13(11) <= \<const0>\;
  Dbg_WDATA_13(10) <= \<const0>\;
  Dbg_WDATA_13(9) <= \<const0>\;
  Dbg_WDATA_13(8) <= \<const0>\;
  Dbg_WDATA_13(7) <= \<const0>\;
  Dbg_WDATA_13(6) <= \<const0>\;
  Dbg_WDATA_13(5) <= \<const0>\;
  Dbg_WDATA_13(4) <= \<const0>\;
  Dbg_WDATA_13(3) <= \<const0>\;
  Dbg_WDATA_13(2) <= \<const0>\;
  Dbg_WDATA_13(1) <= \<const0>\;
  Dbg_WDATA_13(0) <= \<const0>\;
  Dbg_WDATA_14(31) <= \<const0>\;
  Dbg_WDATA_14(30) <= \<const0>\;
  Dbg_WDATA_14(29) <= \<const0>\;
  Dbg_WDATA_14(28) <= \<const0>\;
  Dbg_WDATA_14(27) <= \<const0>\;
  Dbg_WDATA_14(26) <= \<const0>\;
  Dbg_WDATA_14(25) <= \<const0>\;
  Dbg_WDATA_14(24) <= \<const0>\;
  Dbg_WDATA_14(23) <= \<const0>\;
  Dbg_WDATA_14(22) <= \<const0>\;
  Dbg_WDATA_14(21) <= \<const0>\;
  Dbg_WDATA_14(20) <= \<const0>\;
  Dbg_WDATA_14(19) <= \<const0>\;
  Dbg_WDATA_14(18) <= \<const0>\;
  Dbg_WDATA_14(17) <= \<const0>\;
  Dbg_WDATA_14(16) <= \<const0>\;
  Dbg_WDATA_14(15) <= \<const0>\;
  Dbg_WDATA_14(14) <= \<const0>\;
  Dbg_WDATA_14(13) <= \<const0>\;
  Dbg_WDATA_14(12) <= \<const0>\;
  Dbg_WDATA_14(11) <= \<const0>\;
  Dbg_WDATA_14(10) <= \<const0>\;
  Dbg_WDATA_14(9) <= \<const0>\;
  Dbg_WDATA_14(8) <= \<const0>\;
  Dbg_WDATA_14(7) <= \<const0>\;
  Dbg_WDATA_14(6) <= \<const0>\;
  Dbg_WDATA_14(5) <= \<const0>\;
  Dbg_WDATA_14(4) <= \<const0>\;
  Dbg_WDATA_14(3) <= \<const0>\;
  Dbg_WDATA_14(2) <= \<const0>\;
  Dbg_WDATA_14(1) <= \<const0>\;
  Dbg_WDATA_14(0) <= \<const0>\;
  Dbg_WDATA_15(31) <= \<const0>\;
  Dbg_WDATA_15(30) <= \<const0>\;
  Dbg_WDATA_15(29) <= \<const0>\;
  Dbg_WDATA_15(28) <= \<const0>\;
  Dbg_WDATA_15(27) <= \<const0>\;
  Dbg_WDATA_15(26) <= \<const0>\;
  Dbg_WDATA_15(25) <= \<const0>\;
  Dbg_WDATA_15(24) <= \<const0>\;
  Dbg_WDATA_15(23) <= \<const0>\;
  Dbg_WDATA_15(22) <= \<const0>\;
  Dbg_WDATA_15(21) <= \<const0>\;
  Dbg_WDATA_15(20) <= \<const0>\;
  Dbg_WDATA_15(19) <= \<const0>\;
  Dbg_WDATA_15(18) <= \<const0>\;
  Dbg_WDATA_15(17) <= \<const0>\;
  Dbg_WDATA_15(16) <= \<const0>\;
  Dbg_WDATA_15(15) <= \<const0>\;
  Dbg_WDATA_15(14) <= \<const0>\;
  Dbg_WDATA_15(13) <= \<const0>\;
  Dbg_WDATA_15(12) <= \<const0>\;
  Dbg_WDATA_15(11) <= \<const0>\;
  Dbg_WDATA_15(10) <= \<const0>\;
  Dbg_WDATA_15(9) <= \<const0>\;
  Dbg_WDATA_15(8) <= \<const0>\;
  Dbg_WDATA_15(7) <= \<const0>\;
  Dbg_WDATA_15(6) <= \<const0>\;
  Dbg_WDATA_15(5) <= \<const0>\;
  Dbg_WDATA_15(4) <= \<const0>\;
  Dbg_WDATA_15(3) <= \<const0>\;
  Dbg_WDATA_15(2) <= \<const0>\;
  Dbg_WDATA_15(1) <= \<const0>\;
  Dbg_WDATA_15(0) <= \<const0>\;
  Dbg_WDATA_16(31) <= \<const0>\;
  Dbg_WDATA_16(30) <= \<const0>\;
  Dbg_WDATA_16(29) <= \<const0>\;
  Dbg_WDATA_16(28) <= \<const0>\;
  Dbg_WDATA_16(27) <= \<const0>\;
  Dbg_WDATA_16(26) <= \<const0>\;
  Dbg_WDATA_16(25) <= \<const0>\;
  Dbg_WDATA_16(24) <= \<const0>\;
  Dbg_WDATA_16(23) <= \<const0>\;
  Dbg_WDATA_16(22) <= \<const0>\;
  Dbg_WDATA_16(21) <= \<const0>\;
  Dbg_WDATA_16(20) <= \<const0>\;
  Dbg_WDATA_16(19) <= \<const0>\;
  Dbg_WDATA_16(18) <= \<const0>\;
  Dbg_WDATA_16(17) <= \<const0>\;
  Dbg_WDATA_16(16) <= \<const0>\;
  Dbg_WDATA_16(15) <= \<const0>\;
  Dbg_WDATA_16(14) <= \<const0>\;
  Dbg_WDATA_16(13) <= \<const0>\;
  Dbg_WDATA_16(12) <= \<const0>\;
  Dbg_WDATA_16(11) <= \<const0>\;
  Dbg_WDATA_16(10) <= \<const0>\;
  Dbg_WDATA_16(9) <= \<const0>\;
  Dbg_WDATA_16(8) <= \<const0>\;
  Dbg_WDATA_16(7) <= \<const0>\;
  Dbg_WDATA_16(6) <= \<const0>\;
  Dbg_WDATA_16(5) <= \<const0>\;
  Dbg_WDATA_16(4) <= \<const0>\;
  Dbg_WDATA_16(3) <= \<const0>\;
  Dbg_WDATA_16(2) <= \<const0>\;
  Dbg_WDATA_16(1) <= \<const0>\;
  Dbg_WDATA_16(0) <= \<const0>\;
  Dbg_WDATA_17(31) <= \<const0>\;
  Dbg_WDATA_17(30) <= \<const0>\;
  Dbg_WDATA_17(29) <= \<const0>\;
  Dbg_WDATA_17(28) <= \<const0>\;
  Dbg_WDATA_17(27) <= \<const0>\;
  Dbg_WDATA_17(26) <= \<const0>\;
  Dbg_WDATA_17(25) <= \<const0>\;
  Dbg_WDATA_17(24) <= \<const0>\;
  Dbg_WDATA_17(23) <= \<const0>\;
  Dbg_WDATA_17(22) <= \<const0>\;
  Dbg_WDATA_17(21) <= \<const0>\;
  Dbg_WDATA_17(20) <= \<const0>\;
  Dbg_WDATA_17(19) <= \<const0>\;
  Dbg_WDATA_17(18) <= \<const0>\;
  Dbg_WDATA_17(17) <= \<const0>\;
  Dbg_WDATA_17(16) <= \<const0>\;
  Dbg_WDATA_17(15) <= \<const0>\;
  Dbg_WDATA_17(14) <= \<const0>\;
  Dbg_WDATA_17(13) <= \<const0>\;
  Dbg_WDATA_17(12) <= \<const0>\;
  Dbg_WDATA_17(11) <= \<const0>\;
  Dbg_WDATA_17(10) <= \<const0>\;
  Dbg_WDATA_17(9) <= \<const0>\;
  Dbg_WDATA_17(8) <= \<const0>\;
  Dbg_WDATA_17(7) <= \<const0>\;
  Dbg_WDATA_17(6) <= \<const0>\;
  Dbg_WDATA_17(5) <= \<const0>\;
  Dbg_WDATA_17(4) <= \<const0>\;
  Dbg_WDATA_17(3) <= \<const0>\;
  Dbg_WDATA_17(2) <= \<const0>\;
  Dbg_WDATA_17(1) <= \<const0>\;
  Dbg_WDATA_17(0) <= \<const0>\;
  Dbg_WDATA_18(31) <= \<const0>\;
  Dbg_WDATA_18(30) <= \<const0>\;
  Dbg_WDATA_18(29) <= \<const0>\;
  Dbg_WDATA_18(28) <= \<const0>\;
  Dbg_WDATA_18(27) <= \<const0>\;
  Dbg_WDATA_18(26) <= \<const0>\;
  Dbg_WDATA_18(25) <= \<const0>\;
  Dbg_WDATA_18(24) <= \<const0>\;
  Dbg_WDATA_18(23) <= \<const0>\;
  Dbg_WDATA_18(22) <= \<const0>\;
  Dbg_WDATA_18(21) <= \<const0>\;
  Dbg_WDATA_18(20) <= \<const0>\;
  Dbg_WDATA_18(19) <= \<const0>\;
  Dbg_WDATA_18(18) <= \<const0>\;
  Dbg_WDATA_18(17) <= \<const0>\;
  Dbg_WDATA_18(16) <= \<const0>\;
  Dbg_WDATA_18(15) <= \<const0>\;
  Dbg_WDATA_18(14) <= \<const0>\;
  Dbg_WDATA_18(13) <= \<const0>\;
  Dbg_WDATA_18(12) <= \<const0>\;
  Dbg_WDATA_18(11) <= \<const0>\;
  Dbg_WDATA_18(10) <= \<const0>\;
  Dbg_WDATA_18(9) <= \<const0>\;
  Dbg_WDATA_18(8) <= \<const0>\;
  Dbg_WDATA_18(7) <= \<const0>\;
  Dbg_WDATA_18(6) <= \<const0>\;
  Dbg_WDATA_18(5) <= \<const0>\;
  Dbg_WDATA_18(4) <= \<const0>\;
  Dbg_WDATA_18(3) <= \<const0>\;
  Dbg_WDATA_18(2) <= \<const0>\;
  Dbg_WDATA_18(1) <= \<const0>\;
  Dbg_WDATA_18(0) <= \<const0>\;
  Dbg_WDATA_19(31) <= \<const0>\;
  Dbg_WDATA_19(30) <= \<const0>\;
  Dbg_WDATA_19(29) <= \<const0>\;
  Dbg_WDATA_19(28) <= \<const0>\;
  Dbg_WDATA_19(27) <= \<const0>\;
  Dbg_WDATA_19(26) <= \<const0>\;
  Dbg_WDATA_19(25) <= \<const0>\;
  Dbg_WDATA_19(24) <= \<const0>\;
  Dbg_WDATA_19(23) <= \<const0>\;
  Dbg_WDATA_19(22) <= \<const0>\;
  Dbg_WDATA_19(21) <= \<const0>\;
  Dbg_WDATA_19(20) <= \<const0>\;
  Dbg_WDATA_19(19) <= \<const0>\;
  Dbg_WDATA_19(18) <= \<const0>\;
  Dbg_WDATA_19(17) <= \<const0>\;
  Dbg_WDATA_19(16) <= \<const0>\;
  Dbg_WDATA_19(15) <= \<const0>\;
  Dbg_WDATA_19(14) <= \<const0>\;
  Dbg_WDATA_19(13) <= \<const0>\;
  Dbg_WDATA_19(12) <= \<const0>\;
  Dbg_WDATA_19(11) <= \<const0>\;
  Dbg_WDATA_19(10) <= \<const0>\;
  Dbg_WDATA_19(9) <= \<const0>\;
  Dbg_WDATA_19(8) <= \<const0>\;
  Dbg_WDATA_19(7) <= \<const0>\;
  Dbg_WDATA_19(6) <= \<const0>\;
  Dbg_WDATA_19(5) <= \<const0>\;
  Dbg_WDATA_19(4) <= \<const0>\;
  Dbg_WDATA_19(3) <= \<const0>\;
  Dbg_WDATA_19(2) <= \<const0>\;
  Dbg_WDATA_19(1) <= \<const0>\;
  Dbg_WDATA_19(0) <= \<const0>\;
  Dbg_WDATA_2(31) <= \<const0>\;
  Dbg_WDATA_2(30) <= \<const0>\;
  Dbg_WDATA_2(29) <= \<const0>\;
  Dbg_WDATA_2(28) <= \<const0>\;
  Dbg_WDATA_2(27) <= \<const0>\;
  Dbg_WDATA_2(26) <= \<const0>\;
  Dbg_WDATA_2(25) <= \<const0>\;
  Dbg_WDATA_2(24) <= \<const0>\;
  Dbg_WDATA_2(23) <= \<const0>\;
  Dbg_WDATA_2(22) <= \<const0>\;
  Dbg_WDATA_2(21) <= \<const0>\;
  Dbg_WDATA_2(20) <= \<const0>\;
  Dbg_WDATA_2(19) <= \<const0>\;
  Dbg_WDATA_2(18) <= \<const0>\;
  Dbg_WDATA_2(17) <= \<const0>\;
  Dbg_WDATA_2(16) <= \<const0>\;
  Dbg_WDATA_2(15) <= \<const0>\;
  Dbg_WDATA_2(14) <= \<const0>\;
  Dbg_WDATA_2(13) <= \<const0>\;
  Dbg_WDATA_2(12) <= \<const0>\;
  Dbg_WDATA_2(11) <= \<const0>\;
  Dbg_WDATA_2(10) <= \<const0>\;
  Dbg_WDATA_2(9) <= \<const0>\;
  Dbg_WDATA_2(8) <= \<const0>\;
  Dbg_WDATA_2(7) <= \<const0>\;
  Dbg_WDATA_2(6) <= \<const0>\;
  Dbg_WDATA_2(5) <= \<const0>\;
  Dbg_WDATA_2(4) <= \<const0>\;
  Dbg_WDATA_2(3) <= \<const0>\;
  Dbg_WDATA_2(2) <= \<const0>\;
  Dbg_WDATA_2(1) <= \<const0>\;
  Dbg_WDATA_2(0) <= \<const0>\;
  Dbg_WDATA_20(31) <= \<const0>\;
  Dbg_WDATA_20(30) <= \<const0>\;
  Dbg_WDATA_20(29) <= \<const0>\;
  Dbg_WDATA_20(28) <= \<const0>\;
  Dbg_WDATA_20(27) <= \<const0>\;
  Dbg_WDATA_20(26) <= \<const0>\;
  Dbg_WDATA_20(25) <= \<const0>\;
  Dbg_WDATA_20(24) <= \<const0>\;
  Dbg_WDATA_20(23) <= \<const0>\;
  Dbg_WDATA_20(22) <= \<const0>\;
  Dbg_WDATA_20(21) <= \<const0>\;
  Dbg_WDATA_20(20) <= \<const0>\;
  Dbg_WDATA_20(19) <= \<const0>\;
  Dbg_WDATA_20(18) <= \<const0>\;
  Dbg_WDATA_20(17) <= \<const0>\;
  Dbg_WDATA_20(16) <= \<const0>\;
  Dbg_WDATA_20(15) <= \<const0>\;
  Dbg_WDATA_20(14) <= \<const0>\;
  Dbg_WDATA_20(13) <= \<const0>\;
  Dbg_WDATA_20(12) <= \<const0>\;
  Dbg_WDATA_20(11) <= \<const0>\;
  Dbg_WDATA_20(10) <= \<const0>\;
  Dbg_WDATA_20(9) <= \<const0>\;
  Dbg_WDATA_20(8) <= \<const0>\;
  Dbg_WDATA_20(7) <= \<const0>\;
  Dbg_WDATA_20(6) <= \<const0>\;
  Dbg_WDATA_20(5) <= \<const0>\;
  Dbg_WDATA_20(4) <= \<const0>\;
  Dbg_WDATA_20(3) <= \<const0>\;
  Dbg_WDATA_20(2) <= \<const0>\;
  Dbg_WDATA_20(1) <= \<const0>\;
  Dbg_WDATA_20(0) <= \<const0>\;
  Dbg_WDATA_21(31) <= \<const0>\;
  Dbg_WDATA_21(30) <= \<const0>\;
  Dbg_WDATA_21(29) <= \<const0>\;
  Dbg_WDATA_21(28) <= \<const0>\;
  Dbg_WDATA_21(27) <= \<const0>\;
  Dbg_WDATA_21(26) <= \<const0>\;
  Dbg_WDATA_21(25) <= \<const0>\;
  Dbg_WDATA_21(24) <= \<const0>\;
  Dbg_WDATA_21(23) <= \<const0>\;
  Dbg_WDATA_21(22) <= \<const0>\;
  Dbg_WDATA_21(21) <= \<const0>\;
  Dbg_WDATA_21(20) <= \<const0>\;
  Dbg_WDATA_21(19) <= \<const0>\;
  Dbg_WDATA_21(18) <= \<const0>\;
  Dbg_WDATA_21(17) <= \<const0>\;
  Dbg_WDATA_21(16) <= \<const0>\;
  Dbg_WDATA_21(15) <= \<const0>\;
  Dbg_WDATA_21(14) <= \<const0>\;
  Dbg_WDATA_21(13) <= \<const0>\;
  Dbg_WDATA_21(12) <= \<const0>\;
  Dbg_WDATA_21(11) <= \<const0>\;
  Dbg_WDATA_21(10) <= \<const0>\;
  Dbg_WDATA_21(9) <= \<const0>\;
  Dbg_WDATA_21(8) <= \<const0>\;
  Dbg_WDATA_21(7) <= \<const0>\;
  Dbg_WDATA_21(6) <= \<const0>\;
  Dbg_WDATA_21(5) <= \<const0>\;
  Dbg_WDATA_21(4) <= \<const0>\;
  Dbg_WDATA_21(3) <= \<const0>\;
  Dbg_WDATA_21(2) <= \<const0>\;
  Dbg_WDATA_21(1) <= \<const0>\;
  Dbg_WDATA_21(0) <= \<const0>\;
  Dbg_WDATA_22(31) <= \<const0>\;
  Dbg_WDATA_22(30) <= \<const0>\;
  Dbg_WDATA_22(29) <= \<const0>\;
  Dbg_WDATA_22(28) <= \<const0>\;
  Dbg_WDATA_22(27) <= \<const0>\;
  Dbg_WDATA_22(26) <= \<const0>\;
  Dbg_WDATA_22(25) <= \<const0>\;
  Dbg_WDATA_22(24) <= \<const0>\;
  Dbg_WDATA_22(23) <= \<const0>\;
  Dbg_WDATA_22(22) <= \<const0>\;
  Dbg_WDATA_22(21) <= \<const0>\;
  Dbg_WDATA_22(20) <= \<const0>\;
  Dbg_WDATA_22(19) <= \<const0>\;
  Dbg_WDATA_22(18) <= \<const0>\;
  Dbg_WDATA_22(17) <= \<const0>\;
  Dbg_WDATA_22(16) <= \<const0>\;
  Dbg_WDATA_22(15) <= \<const0>\;
  Dbg_WDATA_22(14) <= \<const0>\;
  Dbg_WDATA_22(13) <= \<const0>\;
  Dbg_WDATA_22(12) <= \<const0>\;
  Dbg_WDATA_22(11) <= \<const0>\;
  Dbg_WDATA_22(10) <= \<const0>\;
  Dbg_WDATA_22(9) <= \<const0>\;
  Dbg_WDATA_22(8) <= \<const0>\;
  Dbg_WDATA_22(7) <= \<const0>\;
  Dbg_WDATA_22(6) <= \<const0>\;
  Dbg_WDATA_22(5) <= \<const0>\;
  Dbg_WDATA_22(4) <= \<const0>\;
  Dbg_WDATA_22(3) <= \<const0>\;
  Dbg_WDATA_22(2) <= \<const0>\;
  Dbg_WDATA_22(1) <= \<const0>\;
  Dbg_WDATA_22(0) <= \<const0>\;
  Dbg_WDATA_23(31) <= \<const0>\;
  Dbg_WDATA_23(30) <= \<const0>\;
  Dbg_WDATA_23(29) <= \<const0>\;
  Dbg_WDATA_23(28) <= \<const0>\;
  Dbg_WDATA_23(27) <= \<const0>\;
  Dbg_WDATA_23(26) <= \<const0>\;
  Dbg_WDATA_23(25) <= \<const0>\;
  Dbg_WDATA_23(24) <= \<const0>\;
  Dbg_WDATA_23(23) <= \<const0>\;
  Dbg_WDATA_23(22) <= \<const0>\;
  Dbg_WDATA_23(21) <= \<const0>\;
  Dbg_WDATA_23(20) <= \<const0>\;
  Dbg_WDATA_23(19) <= \<const0>\;
  Dbg_WDATA_23(18) <= \<const0>\;
  Dbg_WDATA_23(17) <= \<const0>\;
  Dbg_WDATA_23(16) <= \<const0>\;
  Dbg_WDATA_23(15) <= \<const0>\;
  Dbg_WDATA_23(14) <= \<const0>\;
  Dbg_WDATA_23(13) <= \<const0>\;
  Dbg_WDATA_23(12) <= \<const0>\;
  Dbg_WDATA_23(11) <= \<const0>\;
  Dbg_WDATA_23(10) <= \<const0>\;
  Dbg_WDATA_23(9) <= \<const0>\;
  Dbg_WDATA_23(8) <= \<const0>\;
  Dbg_WDATA_23(7) <= \<const0>\;
  Dbg_WDATA_23(6) <= \<const0>\;
  Dbg_WDATA_23(5) <= \<const0>\;
  Dbg_WDATA_23(4) <= \<const0>\;
  Dbg_WDATA_23(3) <= \<const0>\;
  Dbg_WDATA_23(2) <= \<const0>\;
  Dbg_WDATA_23(1) <= \<const0>\;
  Dbg_WDATA_23(0) <= \<const0>\;
  Dbg_WDATA_24(31) <= \<const0>\;
  Dbg_WDATA_24(30) <= \<const0>\;
  Dbg_WDATA_24(29) <= \<const0>\;
  Dbg_WDATA_24(28) <= \<const0>\;
  Dbg_WDATA_24(27) <= \<const0>\;
  Dbg_WDATA_24(26) <= \<const0>\;
  Dbg_WDATA_24(25) <= \<const0>\;
  Dbg_WDATA_24(24) <= \<const0>\;
  Dbg_WDATA_24(23) <= \<const0>\;
  Dbg_WDATA_24(22) <= \<const0>\;
  Dbg_WDATA_24(21) <= \<const0>\;
  Dbg_WDATA_24(20) <= \<const0>\;
  Dbg_WDATA_24(19) <= \<const0>\;
  Dbg_WDATA_24(18) <= \<const0>\;
  Dbg_WDATA_24(17) <= \<const0>\;
  Dbg_WDATA_24(16) <= \<const0>\;
  Dbg_WDATA_24(15) <= \<const0>\;
  Dbg_WDATA_24(14) <= \<const0>\;
  Dbg_WDATA_24(13) <= \<const0>\;
  Dbg_WDATA_24(12) <= \<const0>\;
  Dbg_WDATA_24(11) <= \<const0>\;
  Dbg_WDATA_24(10) <= \<const0>\;
  Dbg_WDATA_24(9) <= \<const0>\;
  Dbg_WDATA_24(8) <= \<const0>\;
  Dbg_WDATA_24(7) <= \<const0>\;
  Dbg_WDATA_24(6) <= \<const0>\;
  Dbg_WDATA_24(5) <= \<const0>\;
  Dbg_WDATA_24(4) <= \<const0>\;
  Dbg_WDATA_24(3) <= \<const0>\;
  Dbg_WDATA_24(2) <= \<const0>\;
  Dbg_WDATA_24(1) <= \<const0>\;
  Dbg_WDATA_24(0) <= \<const0>\;
  Dbg_WDATA_25(31) <= \<const0>\;
  Dbg_WDATA_25(30) <= \<const0>\;
  Dbg_WDATA_25(29) <= \<const0>\;
  Dbg_WDATA_25(28) <= \<const0>\;
  Dbg_WDATA_25(27) <= \<const0>\;
  Dbg_WDATA_25(26) <= \<const0>\;
  Dbg_WDATA_25(25) <= \<const0>\;
  Dbg_WDATA_25(24) <= \<const0>\;
  Dbg_WDATA_25(23) <= \<const0>\;
  Dbg_WDATA_25(22) <= \<const0>\;
  Dbg_WDATA_25(21) <= \<const0>\;
  Dbg_WDATA_25(20) <= \<const0>\;
  Dbg_WDATA_25(19) <= \<const0>\;
  Dbg_WDATA_25(18) <= \<const0>\;
  Dbg_WDATA_25(17) <= \<const0>\;
  Dbg_WDATA_25(16) <= \<const0>\;
  Dbg_WDATA_25(15) <= \<const0>\;
  Dbg_WDATA_25(14) <= \<const0>\;
  Dbg_WDATA_25(13) <= \<const0>\;
  Dbg_WDATA_25(12) <= \<const0>\;
  Dbg_WDATA_25(11) <= \<const0>\;
  Dbg_WDATA_25(10) <= \<const0>\;
  Dbg_WDATA_25(9) <= \<const0>\;
  Dbg_WDATA_25(8) <= \<const0>\;
  Dbg_WDATA_25(7) <= \<const0>\;
  Dbg_WDATA_25(6) <= \<const0>\;
  Dbg_WDATA_25(5) <= \<const0>\;
  Dbg_WDATA_25(4) <= \<const0>\;
  Dbg_WDATA_25(3) <= \<const0>\;
  Dbg_WDATA_25(2) <= \<const0>\;
  Dbg_WDATA_25(1) <= \<const0>\;
  Dbg_WDATA_25(0) <= \<const0>\;
  Dbg_WDATA_26(31) <= \<const0>\;
  Dbg_WDATA_26(30) <= \<const0>\;
  Dbg_WDATA_26(29) <= \<const0>\;
  Dbg_WDATA_26(28) <= \<const0>\;
  Dbg_WDATA_26(27) <= \<const0>\;
  Dbg_WDATA_26(26) <= \<const0>\;
  Dbg_WDATA_26(25) <= \<const0>\;
  Dbg_WDATA_26(24) <= \<const0>\;
  Dbg_WDATA_26(23) <= \<const0>\;
  Dbg_WDATA_26(22) <= \<const0>\;
  Dbg_WDATA_26(21) <= \<const0>\;
  Dbg_WDATA_26(20) <= \<const0>\;
  Dbg_WDATA_26(19) <= \<const0>\;
  Dbg_WDATA_26(18) <= \<const0>\;
  Dbg_WDATA_26(17) <= \<const0>\;
  Dbg_WDATA_26(16) <= \<const0>\;
  Dbg_WDATA_26(15) <= \<const0>\;
  Dbg_WDATA_26(14) <= \<const0>\;
  Dbg_WDATA_26(13) <= \<const0>\;
  Dbg_WDATA_26(12) <= \<const0>\;
  Dbg_WDATA_26(11) <= \<const0>\;
  Dbg_WDATA_26(10) <= \<const0>\;
  Dbg_WDATA_26(9) <= \<const0>\;
  Dbg_WDATA_26(8) <= \<const0>\;
  Dbg_WDATA_26(7) <= \<const0>\;
  Dbg_WDATA_26(6) <= \<const0>\;
  Dbg_WDATA_26(5) <= \<const0>\;
  Dbg_WDATA_26(4) <= \<const0>\;
  Dbg_WDATA_26(3) <= \<const0>\;
  Dbg_WDATA_26(2) <= \<const0>\;
  Dbg_WDATA_26(1) <= \<const0>\;
  Dbg_WDATA_26(0) <= \<const0>\;
  Dbg_WDATA_27(31) <= \<const0>\;
  Dbg_WDATA_27(30) <= \<const0>\;
  Dbg_WDATA_27(29) <= \<const0>\;
  Dbg_WDATA_27(28) <= \<const0>\;
  Dbg_WDATA_27(27) <= \<const0>\;
  Dbg_WDATA_27(26) <= \<const0>\;
  Dbg_WDATA_27(25) <= \<const0>\;
  Dbg_WDATA_27(24) <= \<const0>\;
  Dbg_WDATA_27(23) <= \<const0>\;
  Dbg_WDATA_27(22) <= \<const0>\;
  Dbg_WDATA_27(21) <= \<const0>\;
  Dbg_WDATA_27(20) <= \<const0>\;
  Dbg_WDATA_27(19) <= \<const0>\;
  Dbg_WDATA_27(18) <= \<const0>\;
  Dbg_WDATA_27(17) <= \<const0>\;
  Dbg_WDATA_27(16) <= \<const0>\;
  Dbg_WDATA_27(15) <= \<const0>\;
  Dbg_WDATA_27(14) <= \<const0>\;
  Dbg_WDATA_27(13) <= \<const0>\;
  Dbg_WDATA_27(12) <= \<const0>\;
  Dbg_WDATA_27(11) <= \<const0>\;
  Dbg_WDATA_27(10) <= \<const0>\;
  Dbg_WDATA_27(9) <= \<const0>\;
  Dbg_WDATA_27(8) <= \<const0>\;
  Dbg_WDATA_27(7) <= \<const0>\;
  Dbg_WDATA_27(6) <= \<const0>\;
  Dbg_WDATA_27(5) <= \<const0>\;
  Dbg_WDATA_27(4) <= \<const0>\;
  Dbg_WDATA_27(3) <= \<const0>\;
  Dbg_WDATA_27(2) <= \<const0>\;
  Dbg_WDATA_27(1) <= \<const0>\;
  Dbg_WDATA_27(0) <= \<const0>\;
  Dbg_WDATA_28(31) <= \<const0>\;
  Dbg_WDATA_28(30) <= \<const0>\;
  Dbg_WDATA_28(29) <= \<const0>\;
  Dbg_WDATA_28(28) <= \<const0>\;
  Dbg_WDATA_28(27) <= \<const0>\;
  Dbg_WDATA_28(26) <= \<const0>\;
  Dbg_WDATA_28(25) <= \<const0>\;
  Dbg_WDATA_28(24) <= \<const0>\;
  Dbg_WDATA_28(23) <= \<const0>\;
  Dbg_WDATA_28(22) <= \<const0>\;
  Dbg_WDATA_28(21) <= \<const0>\;
  Dbg_WDATA_28(20) <= \<const0>\;
  Dbg_WDATA_28(19) <= \<const0>\;
  Dbg_WDATA_28(18) <= \<const0>\;
  Dbg_WDATA_28(17) <= \<const0>\;
  Dbg_WDATA_28(16) <= \<const0>\;
  Dbg_WDATA_28(15) <= \<const0>\;
  Dbg_WDATA_28(14) <= \<const0>\;
  Dbg_WDATA_28(13) <= \<const0>\;
  Dbg_WDATA_28(12) <= \<const0>\;
  Dbg_WDATA_28(11) <= \<const0>\;
  Dbg_WDATA_28(10) <= \<const0>\;
  Dbg_WDATA_28(9) <= \<const0>\;
  Dbg_WDATA_28(8) <= \<const0>\;
  Dbg_WDATA_28(7) <= \<const0>\;
  Dbg_WDATA_28(6) <= \<const0>\;
  Dbg_WDATA_28(5) <= \<const0>\;
  Dbg_WDATA_28(4) <= \<const0>\;
  Dbg_WDATA_28(3) <= \<const0>\;
  Dbg_WDATA_28(2) <= \<const0>\;
  Dbg_WDATA_28(1) <= \<const0>\;
  Dbg_WDATA_28(0) <= \<const0>\;
  Dbg_WDATA_29(31) <= \<const0>\;
  Dbg_WDATA_29(30) <= \<const0>\;
  Dbg_WDATA_29(29) <= \<const0>\;
  Dbg_WDATA_29(28) <= \<const0>\;
  Dbg_WDATA_29(27) <= \<const0>\;
  Dbg_WDATA_29(26) <= \<const0>\;
  Dbg_WDATA_29(25) <= \<const0>\;
  Dbg_WDATA_29(24) <= \<const0>\;
  Dbg_WDATA_29(23) <= \<const0>\;
  Dbg_WDATA_29(22) <= \<const0>\;
  Dbg_WDATA_29(21) <= \<const0>\;
  Dbg_WDATA_29(20) <= \<const0>\;
  Dbg_WDATA_29(19) <= \<const0>\;
  Dbg_WDATA_29(18) <= \<const0>\;
  Dbg_WDATA_29(17) <= \<const0>\;
  Dbg_WDATA_29(16) <= \<const0>\;
  Dbg_WDATA_29(15) <= \<const0>\;
  Dbg_WDATA_29(14) <= \<const0>\;
  Dbg_WDATA_29(13) <= \<const0>\;
  Dbg_WDATA_29(12) <= \<const0>\;
  Dbg_WDATA_29(11) <= \<const0>\;
  Dbg_WDATA_29(10) <= \<const0>\;
  Dbg_WDATA_29(9) <= \<const0>\;
  Dbg_WDATA_29(8) <= \<const0>\;
  Dbg_WDATA_29(7) <= \<const0>\;
  Dbg_WDATA_29(6) <= \<const0>\;
  Dbg_WDATA_29(5) <= \<const0>\;
  Dbg_WDATA_29(4) <= \<const0>\;
  Dbg_WDATA_29(3) <= \<const0>\;
  Dbg_WDATA_29(2) <= \<const0>\;
  Dbg_WDATA_29(1) <= \<const0>\;
  Dbg_WDATA_29(0) <= \<const0>\;
  Dbg_WDATA_3(31) <= \<const0>\;
  Dbg_WDATA_3(30) <= \<const0>\;
  Dbg_WDATA_3(29) <= \<const0>\;
  Dbg_WDATA_3(28) <= \<const0>\;
  Dbg_WDATA_3(27) <= \<const0>\;
  Dbg_WDATA_3(26) <= \<const0>\;
  Dbg_WDATA_3(25) <= \<const0>\;
  Dbg_WDATA_3(24) <= \<const0>\;
  Dbg_WDATA_3(23) <= \<const0>\;
  Dbg_WDATA_3(22) <= \<const0>\;
  Dbg_WDATA_3(21) <= \<const0>\;
  Dbg_WDATA_3(20) <= \<const0>\;
  Dbg_WDATA_3(19) <= \<const0>\;
  Dbg_WDATA_3(18) <= \<const0>\;
  Dbg_WDATA_3(17) <= \<const0>\;
  Dbg_WDATA_3(16) <= \<const0>\;
  Dbg_WDATA_3(15) <= \<const0>\;
  Dbg_WDATA_3(14) <= \<const0>\;
  Dbg_WDATA_3(13) <= \<const0>\;
  Dbg_WDATA_3(12) <= \<const0>\;
  Dbg_WDATA_3(11) <= \<const0>\;
  Dbg_WDATA_3(10) <= \<const0>\;
  Dbg_WDATA_3(9) <= \<const0>\;
  Dbg_WDATA_3(8) <= \<const0>\;
  Dbg_WDATA_3(7) <= \<const0>\;
  Dbg_WDATA_3(6) <= \<const0>\;
  Dbg_WDATA_3(5) <= \<const0>\;
  Dbg_WDATA_3(4) <= \<const0>\;
  Dbg_WDATA_3(3) <= \<const0>\;
  Dbg_WDATA_3(2) <= \<const0>\;
  Dbg_WDATA_3(1) <= \<const0>\;
  Dbg_WDATA_3(0) <= \<const0>\;
  Dbg_WDATA_30(31) <= \<const0>\;
  Dbg_WDATA_30(30) <= \<const0>\;
  Dbg_WDATA_30(29) <= \<const0>\;
  Dbg_WDATA_30(28) <= \<const0>\;
  Dbg_WDATA_30(27) <= \<const0>\;
  Dbg_WDATA_30(26) <= \<const0>\;
  Dbg_WDATA_30(25) <= \<const0>\;
  Dbg_WDATA_30(24) <= \<const0>\;
  Dbg_WDATA_30(23) <= \<const0>\;
  Dbg_WDATA_30(22) <= \<const0>\;
  Dbg_WDATA_30(21) <= \<const0>\;
  Dbg_WDATA_30(20) <= \<const0>\;
  Dbg_WDATA_30(19) <= \<const0>\;
  Dbg_WDATA_30(18) <= \<const0>\;
  Dbg_WDATA_30(17) <= \<const0>\;
  Dbg_WDATA_30(16) <= \<const0>\;
  Dbg_WDATA_30(15) <= \<const0>\;
  Dbg_WDATA_30(14) <= \<const0>\;
  Dbg_WDATA_30(13) <= \<const0>\;
  Dbg_WDATA_30(12) <= \<const0>\;
  Dbg_WDATA_30(11) <= \<const0>\;
  Dbg_WDATA_30(10) <= \<const0>\;
  Dbg_WDATA_30(9) <= \<const0>\;
  Dbg_WDATA_30(8) <= \<const0>\;
  Dbg_WDATA_30(7) <= \<const0>\;
  Dbg_WDATA_30(6) <= \<const0>\;
  Dbg_WDATA_30(5) <= \<const0>\;
  Dbg_WDATA_30(4) <= \<const0>\;
  Dbg_WDATA_30(3) <= \<const0>\;
  Dbg_WDATA_30(2) <= \<const0>\;
  Dbg_WDATA_30(1) <= \<const0>\;
  Dbg_WDATA_30(0) <= \<const0>\;
  Dbg_WDATA_31(31) <= \<const0>\;
  Dbg_WDATA_31(30) <= \<const0>\;
  Dbg_WDATA_31(29) <= \<const0>\;
  Dbg_WDATA_31(28) <= \<const0>\;
  Dbg_WDATA_31(27) <= \<const0>\;
  Dbg_WDATA_31(26) <= \<const0>\;
  Dbg_WDATA_31(25) <= \<const0>\;
  Dbg_WDATA_31(24) <= \<const0>\;
  Dbg_WDATA_31(23) <= \<const0>\;
  Dbg_WDATA_31(22) <= \<const0>\;
  Dbg_WDATA_31(21) <= \<const0>\;
  Dbg_WDATA_31(20) <= \<const0>\;
  Dbg_WDATA_31(19) <= \<const0>\;
  Dbg_WDATA_31(18) <= \<const0>\;
  Dbg_WDATA_31(17) <= \<const0>\;
  Dbg_WDATA_31(16) <= \<const0>\;
  Dbg_WDATA_31(15) <= \<const0>\;
  Dbg_WDATA_31(14) <= \<const0>\;
  Dbg_WDATA_31(13) <= \<const0>\;
  Dbg_WDATA_31(12) <= \<const0>\;
  Dbg_WDATA_31(11) <= \<const0>\;
  Dbg_WDATA_31(10) <= \<const0>\;
  Dbg_WDATA_31(9) <= \<const0>\;
  Dbg_WDATA_31(8) <= \<const0>\;
  Dbg_WDATA_31(7) <= \<const0>\;
  Dbg_WDATA_31(6) <= \<const0>\;
  Dbg_WDATA_31(5) <= \<const0>\;
  Dbg_WDATA_31(4) <= \<const0>\;
  Dbg_WDATA_31(3) <= \<const0>\;
  Dbg_WDATA_31(2) <= \<const0>\;
  Dbg_WDATA_31(1) <= \<const0>\;
  Dbg_WDATA_31(0) <= \<const0>\;
  Dbg_WDATA_4(31) <= \<const0>\;
  Dbg_WDATA_4(30) <= \<const0>\;
  Dbg_WDATA_4(29) <= \<const0>\;
  Dbg_WDATA_4(28) <= \<const0>\;
  Dbg_WDATA_4(27) <= \<const0>\;
  Dbg_WDATA_4(26) <= \<const0>\;
  Dbg_WDATA_4(25) <= \<const0>\;
  Dbg_WDATA_4(24) <= \<const0>\;
  Dbg_WDATA_4(23) <= \<const0>\;
  Dbg_WDATA_4(22) <= \<const0>\;
  Dbg_WDATA_4(21) <= \<const0>\;
  Dbg_WDATA_4(20) <= \<const0>\;
  Dbg_WDATA_4(19) <= \<const0>\;
  Dbg_WDATA_4(18) <= \<const0>\;
  Dbg_WDATA_4(17) <= \<const0>\;
  Dbg_WDATA_4(16) <= \<const0>\;
  Dbg_WDATA_4(15) <= \<const0>\;
  Dbg_WDATA_4(14) <= \<const0>\;
  Dbg_WDATA_4(13) <= \<const0>\;
  Dbg_WDATA_4(12) <= \<const0>\;
  Dbg_WDATA_4(11) <= \<const0>\;
  Dbg_WDATA_4(10) <= \<const0>\;
  Dbg_WDATA_4(9) <= \<const0>\;
  Dbg_WDATA_4(8) <= \<const0>\;
  Dbg_WDATA_4(7) <= \<const0>\;
  Dbg_WDATA_4(6) <= \<const0>\;
  Dbg_WDATA_4(5) <= \<const0>\;
  Dbg_WDATA_4(4) <= \<const0>\;
  Dbg_WDATA_4(3) <= \<const0>\;
  Dbg_WDATA_4(2) <= \<const0>\;
  Dbg_WDATA_4(1) <= \<const0>\;
  Dbg_WDATA_4(0) <= \<const0>\;
  Dbg_WDATA_5(31) <= \<const0>\;
  Dbg_WDATA_5(30) <= \<const0>\;
  Dbg_WDATA_5(29) <= \<const0>\;
  Dbg_WDATA_5(28) <= \<const0>\;
  Dbg_WDATA_5(27) <= \<const0>\;
  Dbg_WDATA_5(26) <= \<const0>\;
  Dbg_WDATA_5(25) <= \<const0>\;
  Dbg_WDATA_5(24) <= \<const0>\;
  Dbg_WDATA_5(23) <= \<const0>\;
  Dbg_WDATA_5(22) <= \<const0>\;
  Dbg_WDATA_5(21) <= \<const0>\;
  Dbg_WDATA_5(20) <= \<const0>\;
  Dbg_WDATA_5(19) <= \<const0>\;
  Dbg_WDATA_5(18) <= \<const0>\;
  Dbg_WDATA_5(17) <= \<const0>\;
  Dbg_WDATA_5(16) <= \<const0>\;
  Dbg_WDATA_5(15) <= \<const0>\;
  Dbg_WDATA_5(14) <= \<const0>\;
  Dbg_WDATA_5(13) <= \<const0>\;
  Dbg_WDATA_5(12) <= \<const0>\;
  Dbg_WDATA_5(11) <= \<const0>\;
  Dbg_WDATA_5(10) <= \<const0>\;
  Dbg_WDATA_5(9) <= \<const0>\;
  Dbg_WDATA_5(8) <= \<const0>\;
  Dbg_WDATA_5(7) <= \<const0>\;
  Dbg_WDATA_5(6) <= \<const0>\;
  Dbg_WDATA_5(5) <= \<const0>\;
  Dbg_WDATA_5(4) <= \<const0>\;
  Dbg_WDATA_5(3) <= \<const0>\;
  Dbg_WDATA_5(2) <= \<const0>\;
  Dbg_WDATA_5(1) <= \<const0>\;
  Dbg_WDATA_5(0) <= \<const0>\;
  Dbg_WDATA_6(31) <= \<const0>\;
  Dbg_WDATA_6(30) <= \<const0>\;
  Dbg_WDATA_6(29) <= \<const0>\;
  Dbg_WDATA_6(28) <= \<const0>\;
  Dbg_WDATA_6(27) <= \<const0>\;
  Dbg_WDATA_6(26) <= \<const0>\;
  Dbg_WDATA_6(25) <= \<const0>\;
  Dbg_WDATA_6(24) <= \<const0>\;
  Dbg_WDATA_6(23) <= \<const0>\;
  Dbg_WDATA_6(22) <= \<const0>\;
  Dbg_WDATA_6(21) <= \<const0>\;
  Dbg_WDATA_6(20) <= \<const0>\;
  Dbg_WDATA_6(19) <= \<const0>\;
  Dbg_WDATA_6(18) <= \<const0>\;
  Dbg_WDATA_6(17) <= \<const0>\;
  Dbg_WDATA_6(16) <= \<const0>\;
  Dbg_WDATA_6(15) <= \<const0>\;
  Dbg_WDATA_6(14) <= \<const0>\;
  Dbg_WDATA_6(13) <= \<const0>\;
  Dbg_WDATA_6(12) <= \<const0>\;
  Dbg_WDATA_6(11) <= \<const0>\;
  Dbg_WDATA_6(10) <= \<const0>\;
  Dbg_WDATA_6(9) <= \<const0>\;
  Dbg_WDATA_6(8) <= \<const0>\;
  Dbg_WDATA_6(7) <= \<const0>\;
  Dbg_WDATA_6(6) <= \<const0>\;
  Dbg_WDATA_6(5) <= \<const0>\;
  Dbg_WDATA_6(4) <= \<const0>\;
  Dbg_WDATA_6(3) <= \<const0>\;
  Dbg_WDATA_6(2) <= \<const0>\;
  Dbg_WDATA_6(1) <= \<const0>\;
  Dbg_WDATA_6(0) <= \<const0>\;
  Dbg_WDATA_7(31) <= \<const0>\;
  Dbg_WDATA_7(30) <= \<const0>\;
  Dbg_WDATA_7(29) <= \<const0>\;
  Dbg_WDATA_7(28) <= \<const0>\;
  Dbg_WDATA_7(27) <= \<const0>\;
  Dbg_WDATA_7(26) <= \<const0>\;
  Dbg_WDATA_7(25) <= \<const0>\;
  Dbg_WDATA_7(24) <= \<const0>\;
  Dbg_WDATA_7(23) <= \<const0>\;
  Dbg_WDATA_7(22) <= \<const0>\;
  Dbg_WDATA_7(21) <= \<const0>\;
  Dbg_WDATA_7(20) <= \<const0>\;
  Dbg_WDATA_7(19) <= \<const0>\;
  Dbg_WDATA_7(18) <= \<const0>\;
  Dbg_WDATA_7(17) <= \<const0>\;
  Dbg_WDATA_7(16) <= \<const0>\;
  Dbg_WDATA_7(15) <= \<const0>\;
  Dbg_WDATA_7(14) <= \<const0>\;
  Dbg_WDATA_7(13) <= \<const0>\;
  Dbg_WDATA_7(12) <= \<const0>\;
  Dbg_WDATA_7(11) <= \<const0>\;
  Dbg_WDATA_7(10) <= \<const0>\;
  Dbg_WDATA_7(9) <= \<const0>\;
  Dbg_WDATA_7(8) <= \<const0>\;
  Dbg_WDATA_7(7) <= \<const0>\;
  Dbg_WDATA_7(6) <= \<const0>\;
  Dbg_WDATA_7(5) <= \<const0>\;
  Dbg_WDATA_7(4) <= \<const0>\;
  Dbg_WDATA_7(3) <= \<const0>\;
  Dbg_WDATA_7(2) <= \<const0>\;
  Dbg_WDATA_7(1) <= \<const0>\;
  Dbg_WDATA_7(0) <= \<const0>\;
  Dbg_WDATA_8(31) <= \<const0>\;
  Dbg_WDATA_8(30) <= \<const0>\;
  Dbg_WDATA_8(29) <= \<const0>\;
  Dbg_WDATA_8(28) <= \<const0>\;
  Dbg_WDATA_8(27) <= \<const0>\;
  Dbg_WDATA_8(26) <= \<const0>\;
  Dbg_WDATA_8(25) <= \<const0>\;
  Dbg_WDATA_8(24) <= \<const0>\;
  Dbg_WDATA_8(23) <= \<const0>\;
  Dbg_WDATA_8(22) <= \<const0>\;
  Dbg_WDATA_8(21) <= \<const0>\;
  Dbg_WDATA_8(20) <= \<const0>\;
  Dbg_WDATA_8(19) <= \<const0>\;
  Dbg_WDATA_8(18) <= \<const0>\;
  Dbg_WDATA_8(17) <= \<const0>\;
  Dbg_WDATA_8(16) <= \<const0>\;
  Dbg_WDATA_8(15) <= \<const0>\;
  Dbg_WDATA_8(14) <= \<const0>\;
  Dbg_WDATA_8(13) <= \<const0>\;
  Dbg_WDATA_8(12) <= \<const0>\;
  Dbg_WDATA_8(11) <= \<const0>\;
  Dbg_WDATA_8(10) <= \<const0>\;
  Dbg_WDATA_8(9) <= \<const0>\;
  Dbg_WDATA_8(8) <= \<const0>\;
  Dbg_WDATA_8(7) <= \<const0>\;
  Dbg_WDATA_8(6) <= \<const0>\;
  Dbg_WDATA_8(5) <= \<const0>\;
  Dbg_WDATA_8(4) <= \<const0>\;
  Dbg_WDATA_8(3) <= \<const0>\;
  Dbg_WDATA_8(2) <= \<const0>\;
  Dbg_WDATA_8(1) <= \<const0>\;
  Dbg_WDATA_8(0) <= \<const0>\;
  Dbg_WDATA_9(31) <= \<const0>\;
  Dbg_WDATA_9(30) <= \<const0>\;
  Dbg_WDATA_9(29) <= \<const0>\;
  Dbg_WDATA_9(28) <= \<const0>\;
  Dbg_WDATA_9(27) <= \<const0>\;
  Dbg_WDATA_9(26) <= \<const0>\;
  Dbg_WDATA_9(25) <= \<const0>\;
  Dbg_WDATA_9(24) <= \<const0>\;
  Dbg_WDATA_9(23) <= \<const0>\;
  Dbg_WDATA_9(22) <= \<const0>\;
  Dbg_WDATA_9(21) <= \<const0>\;
  Dbg_WDATA_9(20) <= \<const0>\;
  Dbg_WDATA_9(19) <= \<const0>\;
  Dbg_WDATA_9(18) <= \<const0>\;
  Dbg_WDATA_9(17) <= \<const0>\;
  Dbg_WDATA_9(16) <= \<const0>\;
  Dbg_WDATA_9(15) <= \<const0>\;
  Dbg_WDATA_9(14) <= \<const0>\;
  Dbg_WDATA_9(13) <= \<const0>\;
  Dbg_WDATA_9(12) <= \<const0>\;
  Dbg_WDATA_9(11) <= \<const0>\;
  Dbg_WDATA_9(10) <= \<const0>\;
  Dbg_WDATA_9(9) <= \<const0>\;
  Dbg_WDATA_9(8) <= \<const0>\;
  Dbg_WDATA_9(7) <= \<const0>\;
  Dbg_WDATA_9(6) <= \<const0>\;
  Dbg_WDATA_9(5) <= \<const0>\;
  Dbg_WDATA_9(4) <= \<const0>\;
  Dbg_WDATA_9(3) <= \<const0>\;
  Dbg_WDATA_9(2) <= \<const0>\;
  Dbg_WDATA_9(1) <= \<const0>\;
  Dbg_WDATA_9(0) <= \<const0>\;
  Dbg_WVALID_0 <= \<const0>\;
  Dbg_WVALID_1 <= \<const0>\;
  Dbg_WVALID_10 <= \<const0>\;
  Dbg_WVALID_11 <= \<const0>\;
  Dbg_WVALID_12 <= \<const0>\;
  Dbg_WVALID_13 <= \<const0>\;
  Dbg_WVALID_14 <= \<const0>\;
  Dbg_WVALID_15 <= \<const0>\;
  Dbg_WVALID_16 <= \<const0>\;
  Dbg_WVALID_17 <= \<const0>\;
  Dbg_WVALID_18 <= \<const0>\;
  Dbg_WVALID_19 <= \<const0>\;
  Dbg_WVALID_2 <= \<const0>\;
  Dbg_WVALID_20 <= \<const0>\;
  Dbg_WVALID_21 <= \<const0>\;
  Dbg_WVALID_22 <= \<const0>\;
  Dbg_WVALID_23 <= \<const0>\;
  Dbg_WVALID_24 <= \<const0>\;
  Dbg_WVALID_25 <= \<const0>\;
  Dbg_WVALID_26 <= \<const0>\;
  Dbg_WVALID_27 <= \<const0>\;
  Dbg_WVALID_28 <= \<const0>\;
  Dbg_WVALID_29 <= \<const0>\;
  Dbg_WVALID_3 <= \<const0>\;
  Dbg_WVALID_30 <= \<const0>\;
  Dbg_WVALID_31 <= \<const0>\;
  Dbg_WVALID_4 <= \<const0>\;
  Dbg_WVALID_5 <= \<const0>\;
  Dbg_WVALID_6 <= \<const0>\;
  Dbg_WVALID_7 <= \<const0>\;
  Dbg_WVALID_8 <= \<const0>\;
  Dbg_WVALID_9 <= \<const0>\;
  Ext_JTAG_CAPTURE <= \^ext_jtag_capture\;
  Ext_JTAG_DRCK <= \^dbg_clk_31\;
  Ext_JTAG_SHIFT <= \^ext_jtag_shift\;
  Ext_JTAG_TDI <= \^dbg_tdi_31\;
  Ext_JTAG_UPDATE <= \^ext_jtag_update\;
  LMB_Addr_Strobe_0 <= \<const0>\;
  LMB_Addr_Strobe_1 <= \<const0>\;
  LMB_Addr_Strobe_10 <= \<const0>\;
  LMB_Addr_Strobe_11 <= \<const0>\;
  LMB_Addr_Strobe_12 <= \<const0>\;
  LMB_Addr_Strobe_13 <= \<const0>\;
  LMB_Addr_Strobe_14 <= \<const0>\;
  LMB_Addr_Strobe_15 <= \<const0>\;
  LMB_Addr_Strobe_16 <= \<const0>\;
  LMB_Addr_Strobe_17 <= \<const0>\;
  LMB_Addr_Strobe_18 <= \<const0>\;
  LMB_Addr_Strobe_19 <= \<const0>\;
  LMB_Addr_Strobe_2 <= \<const0>\;
  LMB_Addr_Strobe_20 <= \<const0>\;
  LMB_Addr_Strobe_21 <= \<const0>\;
  LMB_Addr_Strobe_22 <= \<const0>\;
  LMB_Addr_Strobe_23 <= \<const0>\;
  LMB_Addr_Strobe_24 <= \<const0>\;
  LMB_Addr_Strobe_25 <= \<const0>\;
  LMB_Addr_Strobe_26 <= \<const0>\;
  LMB_Addr_Strobe_27 <= \<const0>\;
  LMB_Addr_Strobe_28 <= \<const0>\;
  LMB_Addr_Strobe_29 <= \<const0>\;
  LMB_Addr_Strobe_3 <= \<const0>\;
  LMB_Addr_Strobe_30 <= \<const0>\;
  LMB_Addr_Strobe_31 <= \<const0>\;
  LMB_Addr_Strobe_4 <= \<const0>\;
  LMB_Addr_Strobe_5 <= \<const0>\;
  LMB_Addr_Strobe_6 <= \<const0>\;
  LMB_Addr_Strobe_7 <= \<const0>\;
  LMB_Addr_Strobe_8 <= \<const0>\;
  LMB_Addr_Strobe_9 <= \<const0>\;
  LMB_Byte_Enable_0(0) <= \<const0>\;
  LMB_Byte_Enable_0(1) <= \<const0>\;
  LMB_Byte_Enable_0(2) <= \<const0>\;
  LMB_Byte_Enable_0(3) <= \<const0>\;
  LMB_Byte_Enable_1(0) <= \<const0>\;
  LMB_Byte_Enable_1(1) <= \<const0>\;
  LMB_Byte_Enable_1(2) <= \<const0>\;
  LMB_Byte_Enable_1(3) <= \<const0>\;
  LMB_Byte_Enable_10(0) <= \<const0>\;
  LMB_Byte_Enable_10(1) <= \<const0>\;
  LMB_Byte_Enable_10(2) <= \<const0>\;
  LMB_Byte_Enable_10(3) <= \<const0>\;
  LMB_Byte_Enable_11(0) <= \<const0>\;
  LMB_Byte_Enable_11(1) <= \<const0>\;
  LMB_Byte_Enable_11(2) <= \<const0>\;
  LMB_Byte_Enable_11(3) <= \<const0>\;
  LMB_Byte_Enable_12(0) <= \<const0>\;
  LMB_Byte_Enable_12(1) <= \<const0>\;
  LMB_Byte_Enable_12(2) <= \<const0>\;
  LMB_Byte_Enable_12(3) <= \<const0>\;
  LMB_Byte_Enable_13(0) <= \<const0>\;
  LMB_Byte_Enable_13(1) <= \<const0>\;
  LMB_Byte_Enable_13(2) <= \<const0>\;
  LMB_Byte_Enable_13(3) <= \<const0>\;
  LMB_Byte_Enable_14(0) <= \<const0>\;
  LMB_Byte_Enable_14(1) <= \<const0>\;
  LMB_Byte_Enable_14(2) <= \<const0>\;
  LMB_Byte_Enable_14(3) <= \<const0>\;
  LMB_Byte_Enable_15(0) <= \<const0>\;
  LMB_Byte_Enable_15(1) <= \<const0>\;
  LMB_Byte_Enable_15(2) <= \<const0>\;
  LMB_Byte_Enable_15(3) <= \<const0>\;
  LMB_Byte_Enable_16(0) <= \<const0>\;
  LMB_Byte_Enable_16(1) <= \<const0>\;
  LMB_Byte_Enable_16(2) <= \<const0>\;
  LMB_Byte_Enable_16(3) <= \<const0>\;
  LMB_Byte_Enable_17(0) <= \<const0>\;
  LMB_Byte_Enable_17(1) <= \<const0>\;
  LMB_Byte_Enable_17(2) <= \<const0>\;
  LMB_Byte_Enable_17(3) <= \<const0>\;
  LMB_Byte_Enable_18(0) <= \<const0>\;
  LMB_Byte_Enable_18(1) <= \<const0>\;
  LMB_Byte_Enable_18(2) <= \<const0>\;
  LMB_Byte_Enable_18(3) <= \<const0>\;
  LMB_Byte_Enable_19(0) <= \<const0>\;
  LMB_Byte_Enable_19(1) <= \<const0>\;
  LMB_Byte_Enable_19(2) <= \<const0>\;
  LMB_Byte_Enable_19(3) <= \<const0>\;
  LMB_Byte_Enable_2(0) <= \<const0>\;
  LMB_Byte_Enable_2(1) <= \<const0>\;
  LMB_Byte_Enable_2(2) <= \<const0>\;
  LMB_Byte_Enable_2(3) <= \<const0>\;
  LMB_Byte_Enable_20(0) <= \<const0>\;
  LMB_Byte_Enable_20(1) <= \<const0>\;
  LMB_Byte_Enable_20(2) <= \<const0>\;
  LMB_Byte_Enable_20(3) <= \<const0>\;
  LMB_Byte_Enable_21(0) <= \<const0>\;
  LMB_Byte_Enable_21(1) <= \<const0>\;
  LMB_Byte_Enable_21(2) <= \<const0>\;
  LMB_Byte_Enable_21(3) <= \<const0>\;
  LMB_Byte_Enable_22(0) <= \<const0>\;
  LMB_Byte_Enable_22(1) <= \<const0>\;
  LMB_Byte_Enable_22(2) <= \<const0>\;
  LMB_Byte_Enable_22(3) <= \<const0>\;
  LMB_Byte_Enable_23(0) <= \<const0>\;
  LMB_Byte_Enable_23(1) <= \<const0>\;
  LMB_Byte_Enable_23(2) <= \<const0>\;
  LMB_Byte_Enable_23(3) <= \<const0>\;
  LMB_Byte_Enable_24(0) <= \<const0>\;
  LMB_Byte_Enable_24(1) <= \<const0>\;
  LMB_Byte_Enable_24(2) <= \<const0>\;
  LMB_Byte_Enable_24(3) <= \<const0>\;
  LMB_Byte_Enable_25(0) <= \<const0>\;
  LMB_Byte_Enable_25(1) <= \<const0>\;
  LMB_Byte_Enable_25(2) <= \<const0>\;
  LMB_Byte_Enable_25(3) <= \<const0>\;
  LMB_Byte_Enable_26(0) <= \<const0>\;
  LMB_Byte_Enable_26(1) <= \<const0>\;
  LMB_Byte_Enable_26(2) <= \<const0>\;
  LMB_Byte_Enable_26(3) <= \<const0>\;
  LMB_Byte_Enable_27(0) <= \<const0>\;
  LMB_Byte_Enable_27(1) <= \<const0>\;
  LMB_Byte_Enable_27(2) <= \<const0>\;
  LMB_Byte_Enable_27(3) <= \<const0>\;
  LMB_Byte_Enable_28(0) <= \<const0>\;
  LMB_Byte_Enable_28(1) <= \<const0>\;
  LMB_Byte_Enable_28(2) <= \<const0>\;
  LMB_Byte_Enable_28(3) <= \<const0>\;
  LMB_Byte_Enable_29(0) <= \<const0>\;
  LMB_Byte_Enable_29(1) <= \<const0>\;
  LMB_Byte_Enable_29(2) <= \<const0>\;
  LMB_Byte_Enable_29(3) <= \<const0>\;
  LMB_Byte_Enable_3(0) <= \<const0>\;
  LMB_Byte_Enable_3(1) <= \<const0>\;
  LMB_Byte_Enable_3(2) <= \<const0>\;
  LMB_Byte_Enable_3(3) <= \<const0>\;
  LMB_Byte_Enable_30(0) <= \<const0>\;
  LMB_Byte_Enable_30(1) <= \<const0>\;
  LMB_Byte_Enable_30(2) <= \<const0>\;
  LMB_Byte_Enable_30(3) <= \<const0>\;
  LMB_Byte_Enable_31(0) <= \<const0>\;
  LMB_Byte_Enable_31(1) <= \<const0>\;
  LMB_Byte_Enable_31(2) <= \<const0>\;
  LMB_Byte_Enable_31(3) <= \<const0>\;
  LMB_Byte_Enable_4(0) <= \<const0>\;
  LMB_Byte_Enable_4(1) <= \<const0>\;
  LMB_Byte_Enable_4(2) <= \<const0>\;
  LMB_Byte_Enable_4(3) <= \<const0>\;
  LMB_Byte_Enable_5(0) <= \<const0>\;
  LMB_Byte_Enable_5(1) <= \<const0>\;
  LMB_Byte_Enable_5(2) <= \<const0>\;
  LMB_Byte_Enable_5(3) <= \<const0>\;
  LMB_Byte_Enable_6(0) <= \<const0>\;
  LMB_Byte_Enable_6(1) <= \<const0>\;
  LMB_Byte_Enable_6(2) <= \<const0>\;
  LMB_Byte_Enable_6(3) <= \<const0>\;
  LMB_Byte_Enable_7(0) <= \<const0>\;
  LMB_Byte_Enable_7(1) <= \<const0>\;
  LMB_Byte_Enable_7(2) <= \<const0>\;
  LMB_Byte_Enable_7(3) <= \<const0>\;
  LMB_Byte_Enable_8(0) <= \<const0>\;
  LMB_Byte_Enable_8(1) <= \<const0>\;
  LMB_Byte_Enable_8(2) <= \<const0>\;
  LMB_Byte_Enable_8(3) <= \<const0>\;
  LMB_Byte_Enable_9(0) <= \<const0>\;
  LMB_Byte_Enable_9(1) <= \<const0>\;
  LMB_Byte_Enable_9(2) <= \<const0>\;
  LMB_Byte_Enable_9(3) <= \<const0>\;
  LMB_Data_Addr_0(0) <= \<const0>\;
  LMB_Data_Addr_0(1) <= \<const0>\;
  LMB_Data_Addr_0(2) <= \<const0>\;
  LMB_Data_Addr_0(3) <= \<const0>\;
  LMB_Data_Addr_0(4) <= \<const0>\;
  LMB_Data_Addr_0(5) <= \<const0>\;
  LMB_Data_Addr_0(6) <= \<const0>\;
  LMB_Data_Addr_0(7) <= \<const0>\;
  LMB_Data_Addr_0(8) <= \<const0>\;
  LMB_Data_Addr_0(9) <= \<const0>\;
  LMB_Data_Addr_0(10) <= \<const0>\;
  LMB_Data_Addr_0(11) <= \<const0>\;
  LMB_Data_Addr_0(12) <= \<const0>\;
  LMB_Data_Addr_0(13) <= \<const0>\;
  LMB_Data_Addr_0(14) <= \<const0>\;
  LMB_Data_Addr_0(15) <= \<const0>\;
  LMB_Data_Addr_0(16) <= \<const0>\;
  LMB_Data_Addr_0(17) <= \<const0>\;
  LMB_Data_Addr_0(18) <= \<const0>\;
  LMB_Data_Addr_0(19) <= \<const0>\;
  LMB_Data_Addr_0(20) <= \<const0>\;
  LMB_Data_Addr_0(21) <= \<const0>\;
  LMB_Data_Addr_0(22) <= \<const0>\;
  LMB_Data_Addr_0(23) <= \<const0>\;
  LMB_Data_Addr_0(24) <= \<const0>\;
  LMB_Data_Addr_0(25) <= \<const0>\;
  LMB_Data_Addr_0(26) <= \<const0>\;
  LMB_Data_Addr_0(27) <= \<const0>\;
  LMB_Data_Addr_0(28) <= \<const0>\;
  LMB_Data_Addr_0(29) <= \<const0>\;
  LMB_Data_Addr_0(30) <= \<const0>\;
  LMB_Data_Addr_0(31) <= \<const0>\;
  LMB_Data_Addr_1(0) <= \<const0>\;
  LMB_Data_Addr_1(1) <= \<const0>\;
  LMB_Data_Addr_1(2) <= \<const0>\;
  LMB_Data_Addr_1(3) <= \<const0>\;
  LMB_Data_Addr_1(4) <= \<const0>\;
  LMB_Data_Addr_1(5) <= \<const0>\;
  LMB_Data_Addr_1(6) <= \<const0>\;
  LMB_Data_Addr_1(7) <= \<const0>\;
  LMB_Data_Addr_1(8) <= \<const0>\;
  LMB_Data_Addr_1(9) <= \<const0>\;
  LMB_Data_Addr_1(10) <= \<const0>\;
  LMB_Data_Addr_1(11) <= \<const0>\;
  LMB_Data_Addr_1(12) <= \<const0>\;
  LMB_Data_Addr_1(13) <= \<const0>\;
  LMB_Data_Addr_1(14) <= \<const0>\;
  LMB_Data_Addr_1(15) <= \<const0>\;
  LMB_Data_Addr_1(16) <= \<const0>\;
  LMB_Data_Addr_1(17) <= \<const0>\;
  LMB_Data_Addr_1(18) <= \<const0>\;
  LMB_Data_Addr_1(19) <= \<const0>\;
  LMB_Data_Addr_1(20) <= \<const0>\;
  LMB_Data_Addr_1(21) <= \<const0>\;
  LMB_Data_Addr_1(22) <= \<const0>\;
  LMB_Data_Addr_1(23) <= \<const0>\;
  LMB_Data_Addr_1(24) <= \<const0>\;
  LMB_Data_Addr_1(25) <= \<const0>\;
  LMB_Data_Addr_1(26) <= \<const0>\;
  LMB_Data_Addr_1(27) <= \<const0>\;
  LMB_Data_Addr_1(28) <= \<const0>\;
  LMB_Data_Addr_1(29) <= \<const0>\;
  LMB_Data_Addr_1(30) <= \<const0>\;
  LMB_Data_Addr_1(31) <= \<const0>\;
  LMB_Data_Addr_10(0) <= \<const0>\;
  LMB_Data_Addr_10(1) <= \<const0>\;
  LMB_Data_Addr_10(2) <= \<const0>\;
  LMB_Data_Addr_10(3) <= \<const0>\;
  LMB_Data_Addr_10(4) <= \<const0>\;
  LMB_Data_Addr_10(5) <= \<const0>\;
  LMB_Data_Addr_10(6) <= \<const0>\;
  LMB_Data_Addr_10(7) <= \<const0>\;
  LMB_Data_Addr_10(8) <= \<const0>\;
  LMB_Data_Addr_10(9) <= \<const0>\;
  LMB_Data_Addr_10(10) <= \<const0>\;
  LMB_Data_Addr_10(11) <= \<const0>\;
  LMB_Data_Addr_10(12) <= \<const0>\;
  LMB_Data_Addr_10(13) <= \<const0>\;
  LMB_Data_Addr_10(14) <= \<const0>\;
  LMB_Data_Addr_10(15) <= \<const0>\;
  LMB_Data_Addr_10(16) <= \<const0>\;
  LMB_Data_Addr_10(17) <= \<const0>\;
  LMB_Data_Addr_10(18) <= \<const0>\;
  LMB_Data_Addr_10(19) <= \<const0>\;
  LMB_Data_Addr_10(20) <= \<const0>\;
  LMB_Data_Addr_10(21) <= \<const0>\;
  LMB_Data_Addr_10(22) <= \<const0>\;
  LMB_Data_Addr_10(23) <= \<const0>\;
  LMB_Data_Addr_10(24) <= \<const0>\;
  LMB_Data_Addr_10(25) <= \<const0>\;
  LMB_Data_Addr_10(26) <= \<const0>\;
  LMB_Data_Addr_10(27) <= \<const0>\;
  LMB_Data_Addr_10(28) <= \<const0>\;
  LMB_Data_Addr_10(29) <= \<const0>\;
  LMB_Data_Addr_10(30) <= \<const0>\;
  LMB_Data_Addr_10(31) <= \<const0>\;
  LMB_Data_Addr_11(0) <= \<const0>\;
  LMB_Data_Addr_11(1) <= \<const0>\;
  LMB_Data_Addr_11(2) <= \<const0>\;
  LMB_Data_Addr_11(3) <= \<const0>\;
  LMB_Data_Addr_11(4) <= \<const0>\;
  LMB_Data_Addr_11(5) <= \<const0>\;
  LMB_Data_Addr_11(6) <= \<const0>\;
  LMB_Data_Addr_11(7) <= \<const0>\;
  LMB_Data_Addr_11(8) <= \<const0>\;
  LMB_Data_Addr_11(9) <= \<const0>\;
  LMB_Data_Addr_11(10) <= \<const0>\;
  LMB_Data_Addr_11(11) <= \<const0>\;
  LMB_Data_Addr_11(12) <= \<const0>\;
  LMB_Data_Addr_11(13) <= \<const0>\;
  LMB_Data_Addr_11(14) <= \<const0>\;
  LMB_Data_Addr_11(15) <= \<const0>\;
  LMB_Data_Addr_11(16) <= \<const0>\;
  LMB_Data_Addr_11(17) <= \<const0>\;
  LMB_Data_Addr_11(18) <= \<const0>\;
  LMB_Data_Addr_11(19) <= \<const0>\;
  LMB_Data_Addr_11(20) <= \<const0>\;
  LMB_Data_Addr_11(21) <= \<const0>\;
  LMB_Data_Addr_11(22) <= \<const0>\;
  LMB_Data_Addr_11(23) <= \<const0>\;
  LMB_Data_Addr_11(24) <= \<const0>\;
  LMB_Data_Addr_11(25) <= \<const0>\;
  LMB_Data_Addr_11(26) <= \<const0>\;
  LMB_Data_Addr_11(27) <= \<const0>\;
  LMB_Data_Addr_11(28) <= \<const0>\;
  LMB_Data_Addr_11(29) <= \<const0>\;
  LMB_Data_Addr_11(30) <= \<const0>\;
  LMB_Data_Addr_11(31) <= \<const0>\;
  LMB_Data_Addr_12(0) <= \<const0>\;
  LMB_Data_Addr_12(1) <= \<const0>\;
  LMB_Data_Addr_12(2) <= \<const0>\;
  LMB_Data_Addr_12(3) <= \<const0>\;
  LMB_Data_Addr_12(4) <= \<const0>\;
  LMB_Data_Addr_12(5) <= \<const0>\;
  LMB_Data_Addr_12(6) <= \<const0>\;
  LMB_Data_Addr_12(7) <= \<const0>\;
  LMB_Data_Addr_12(8) <= \<const0>\;
  LMB_Data_Addr_12(9) <= \<const0>\;
  LMB_Data_Addr_12(10) <= \<const0>\;
  LMB_Data_Addr_12(11) <= \<const0>\;
  LMB_Data_Addr_12(12) <= \<const0>\;
  LMB_Data_Addr_12(13) <= \<const0>\;
  LMB_Data_Addr_12(14) <= \<const0>\;
  LMB_Data_Addr_12(15) <= \<const0>\;
  LMB_Data_Addr_12(16) <= \<const0>\;
  LMB_Data_Addr_12(17) <= \<const0>\;
  LMB_Data_Addr_12(18) <= \<const0>\;
  LMB_Data_Addr_12(19) <= \<const0>\;
  LMB_Data_Addr_12(20) <= \<const0>\;
  LMB_Data_Addr_12(21) <= \<const0>\;
  LMB_Data_Addr_12(22) <= \<const0>\;
  LMB_Data_Addr_12(23) <= \<const0>\;
  LMB_Data_Addr_12(24) <= \<const0>\;
  LMB_Data_Addr_12(25) <= \<const0>\;
  LMB_Data_Addr_12(26) <= \<const0>\;
  LMB_Data_Addr_12(27) <= \<const0>\;
  LMB_Data_Addr_12(28) <= \<const0>\;
  LMB_Data_Addr_12(29) <= \<const0>\;
  LMB_Data_Addr_12(30) <= \<const0>\;
  LMB_Data_Addr_12(31) <= \<const0>\;
  LMB_Data_Addr_13(0) <= \<const0>\;
  LMB_Data_Addr_13(1) <= \<const0>\;
  LMB_Data_Addr_13(2) <= \<const0>\;
  LMB_Data_Addr_13(3) <= \<const0>\;
  LMB_Data_Addr_13(4) <= \<const0>\;
  LMB_Data_Addr_13(5) <= \<const0>\;
  LMB_Data_Addr_13(6) <= \<const0>\;
  LMB_Data_Addr_13(7) <= \<const0>\;
  LMB_Data_Addr_13(8) <= \<const0>\;
  LMB_Data_Addr_13(9) <= \<const0>\;
  LMB_Data_Addr_13(10) <= \<const0>\;
  LMB_Data_Addr_13(11) <= \<const0>\;
  LMB_Data_Addr_13(12) <= \<const0>\;
  LMB_Data_Addr_13(13) <= \<const0>\;
  LMB_Data_Addr_13(14) <= \<const0>\;
  LMB_Data_Addr_13(15) <= \<const0>\;
  LMB_Data_Addr_13(16) <= \<const0>\;
  LMB_Data_Addr_13(17) <= \<const0>\;
  LMB_Data_Addr_13(18) <= \<const0>\;
  LMB_Data_Addr_13(19) <= \<const0>\;
  LMB_Data_Addr_13(20) <= \<const0>\;
  LMB_Data_Addr_13(21) <= \<const0>\;
  LMB_Data_Addr_13(22) <= \<const0>\;
  LMB_Data_Addr_13(23) <= \<const0>\;
  LMB_Data_Addr_13(24) <= \<const0>\;
  LMB_Data_Addr_13(25) <= \<const0>\;
  LMB_Data_Addr_13(26) <= \<const0>\;
  LMB_Data_Addr_13(27) <= \<const0>\;
  LMB_Data_Addr_13(28) <= \<const0>\;
  LMB_Data_Addr_13(29) <= \<const0>\;
  LMB_Data_Addr_13(30) <= \<const0>\;
  LMB_Data_Addr_13(31) <= \<const0>\;
  LMB_Data_Addr_14(0) <= \<const0>\;
  LMB_Data_Addr_14(1) <= \<const0>\;
  LMB_Data_Addr_14(2) <= \<const0>\;
  LMB_Data_Addr_14(3) <= \<const0>\;
  LMB_Data_Addr_14(4) <= \<const0>\;
  LMB_Data_Addr_14(5) <= \<const0>\;
  LMB_Data_Addr_14(6) <= \<const0>\;
  LMB_Data_Addr_14(7) <= \<const0>\;
  LMB_Data_Addr_14(8) <= \<const0>\;
  LMB_Data_Addr_14(9) <= \<const0>\;
  LMB_Data_Addr_14(10) <= \<const0>\;
  LMB_Data_Addr_14(11) <= \<const0>\;
  LMB_Data_Addr_14(12) <= \<const0>\;
  LMB_Data_Addr_14(13) <= \<const0>\;
  LMB_Data_Addr_14(14) <= \<const0>\;
  LMB_Data_Addr_14(15) <= \<const0>\;
  LMB_Data_Addr_14(16) <= \<const0>\;
  LMB_Data_Addr_14(17) <= \<const0>\;
  LMB_Data_Addr_14(18) <= \<const0>\;
  LMB_Data_Addr_14(19) <= \<const0>\;
  LMB_Data_Addr_14(20) <= \<const0>\;
  LMB_Data_Addr_14(21) <= \<const0>\;
  LMB_Data_Addr_14(22) <= \<const0>\;
  LMB_Data_Addr_14(23) <= \<const0>\;
  LMB_Data_Addr_14(24) <= \<const0>\;
  LMB_Data_Addr_14(25) <= \<const0>\;
  LMB_Data_Addr_14(26) <= \<const0>\;
  LMB_Data_Addr_14(27) <= \<const0>\;
  LMB_Data_Addr_14(28) <= \<const0>\;
  LMB_Data_Addr_14(29) <= \<const0>\;
  LMB_Data_Addr_14(30) <= \<const0>\;
  LMB_Data_Addr_14(31) <= \<const0>\;
  LMB_Data_Addr_15(0) <= \<const0>\;
  LMB_Data_Addr_15(1) <= \<const0>\;
  LMB_Data_Addr_15(2) <= \<const0>\;
  LMB_Data_Addr_15(3) <= \<const0>\;
  LMB_Data_Addr_15(4) <= \<const0>\;
  LMB_Data_Addr_15(5) <= \<const0>\;
  LMB_Data_Addr_15(6) <= \<const0>\;
  LMB_Data_Addr_15(7) <= \<const0>\;
  LMB_Data_Addr_15(8) <= \<const0>\;
  LMB_Data_Addr_15(9) <= \<const0>\;
  LMB_Data_Addr_15(10) <= \<const0>\;
  LMB_Data_Addr_15(11) <= \<const0>\;
  LMB_Data_Addr_15(12) <= \<const0>\;
  LMB_Data_Addr_15(13) <= \<const0>\;
  LMB_Data_Addr_15(14) <= \<const0>\;
  LMB_Data_Addr_15(15) <= \<const0>\;
  LMB_Data_Addr_15(16) <= \<const0>\;
  LMB_Data_Addr_15(17) <= \<const0>\;
  LMB_Data_Addr_15(18) <= \<const0>\;
  LMB_Data_Addr_15(19) <= \<const0>\;
  LMB_Data_Addr_15(20) <= \<const0>\;
  LMB_Data_Addr_15(21) <= \<const0>\;
  LMB_Data_Addr_15(22) <= \<const0>\;
  LMB_Data_Addr_15(23) <= \<const0>\;
  LMB_Data_Addr_15(24) <= \<const0>\;
  LMB_Data_Addr_15(25) <= \<const0>\;
  LMB_Data_Addr_15(26) <= \<const0>\;
  LMB_Data_Addr_15(27) <= \<const0>\;
  LMB_Data_Addr_15(28) <= \<const0>\;
  LMB_Data_Addr_15(29) <= \<const0>\;
  LMB_Data_Addr_15(30) <= \<const0>\;
  LMB_Data_Addr_15(31) <= \<const0>\;
  LMB_Data_Addr_16(0) <= \<const0>\;
  LMB_Data_Addr_16(1) <= \<const0>\;
  LMB_Data_Addr_16(2) <= \<const0>\;
  LMB_Data_Addr_16(3) <= \<const0>\;
  LMB_Data_Addr_16(4) <= \<const0>\;
  LMB_Data_Addr_16(5) <= \<const0>\;
  LMB_Data_Addr_16(6) <= \<const0>\;
  LMB_Data_Addr_16(7) <= \<const0>\;
  LMB_Data_Addr_16(8) <= \<const0>\;
  LMB_Data_Addr_16(9) <= \<const0>\;
  LMB_Data_Addr_16(10) <= \<const0>\;
  LMB_Data_Addr_16(11) <= \<const0>\;
  LMB_Data_Addr_16(12) <= \<const0>\;
  LMB_Data_Addr_16(13) <= \<const0>\;
  LMB_Data_Addr_16(14) <= \<const0>\;
  LMB_Data_Addr_16(15) <= \<const0>\;
  LMB_Data_Addr_16(16) <= \<const0>\;
  LMB_Data_Addr_16(17) <= \<const0>\;
  LMB_Data_Addr_16(18) <= \<const0>\;
  LMB_Data_Addr_16(19) <= \<const0>\;
  LMB_Data_Addr_16(20) <= \<const0>\;
  LMB_Data_Addr_16(21) <= \<const0>\;
  LMB_Data_Addr_16(22) <= \<const0>\;
  LMB_Data_Addr_16(23) <= \<const0>\;
  LMB_Data_Addr_16(24) <= \<const0>\;
  LMB_Data_Addr_16(25) <= \<const0>\;
  LMB_Data_Addr_16(26) <= \<const0>\;
  LMB_Data_Addr_16(27) <= \<const0>\;
  LMB_Data_Addr_16(28) <= \<const0>\;
  LMB_Data_Addr_16(29) <= \<const0>\;
  LMB_Data_Addr_16(30) <= \<const0>\;
  LMB_Data_Addr_16(31) <= \<const0>\;
  LMB_Data_Addr_17(0) <= \<const0>\;
  LMB_Data_Addr_17(1) <= \<const0>\;
  LMB_Data_Addr_17(2) <= \<const0>\;
  LMB_Data_Addr_17(3) <= \<const0>\;
  LMB_Data_Addr_17(4) <= \<const0>\;
  LMB_Data_Addr_17(5) <= \<const0>\;
  LMB_Data_Addr_17(6) <= \<const0>\;
  LMB_Data_Addr_17(7) <= \<const0>\;
  LMB_Data_Addr_17(8) <= \<const0>\;
  LMB_Data_Addr_17(9) <= \<const0>\;
  LMB_Data_Addr_17(10) <= \<const0>\;
  LMB_Data_Addr_17(11) <= \<const0>\;
  LMB_Data_Addr_17(12) <= \<const0>\;
  LMB_Data_Addr_17(13) <= \<const0>\;
  LMB_Data_Addr_17(14) <= \<const0>\;
  LMB_Data_Addr_17(15) <= \<const0>\;
  LMB_Data_Addr_17(16) <= \<const0>\;
  LMB_Data_Addr_17(17) <= \<const0>\;
  LMB_Data_Addr_17(18) <= \<const0>\;
  LMB_Data_Addr_17(19) <= \<const0>\;
  LMB_Data_Addr_17(20) <= \<const0>\;
  LMB_Data_Addr_17(21) <= \<const0>\;
  LMB_Data_Addr_17(22) <= \<const0>\;
  LMB_Data_Addr_17(23) <= \<const0>\;
  LMB_Data_Addr_17(24) <= \<const0>\;
  LMB_Data_Addr_17(25) <= \<const0>\;
  LMB_Data_Addr_17(26) <= \<const0>\;
  LMB_Data_Addr_17(27) <= \<const0>\;
  LMB_Data_Addr_17(28) <= \<const0>\;
  LMB_Data_Addr_17(29) <= \<const0>\;
  LMB_Data_Addr_17(30) <= \<const0>\;
  LMB_Data_Addr_17(31) <= \<const0>\;
  LMB_Data_Addr_18(0) <= \<const0>\;
  LMB_Data_Addr_18(1) <= \<const0>\;
  LMB_Data_Addr_18(2) <= \<const0>\;
  LMB_Data_Addr_18(3) <= \<const0>\;
  LMB_Data_Addr_18(4) <= \<const0>\;
  LMB_Data_Addr_18(5) <= \<const0>\;
  LMB_Data_Addr_18(6) <= \<const0>\;
  LMB_Data_Addr_18(7) <= \<const0>\;
  LMB_Data_Addr_18(8) <= \<const0>\;
  LMB_Data_Addr_18(9) <= \<const0>\;
  LMB_Data_Addr_18(10) <= \<const0>\;
  LMB_Data_Addr_18(11) <= \<const0>\;
  LMB_Data_Addr_18(12) <= \<const0>\;
  LMB_Data_Addr_18(13) <= \<const0>\;
  LMB_Data_Addr_18(14) <= \<const0>\;
  LMB_Data_Addr_18(15) <= \<const0>\;
  LMB_Data_Addr_18(16) <= \<const0>\;
  LMB_Data_Addr_18(17) <= \<const0>\;
  LMB_Data_Addr_18(18) <= \<const0>\;
  LMB_Data_Addr_18(19) <= \<const0>\;
  LMB_Data_Addr_18(20) <= \<const0>\;
  LMB_Data_Addr_18(21) <= \<const0>\;
  LMB_Data_Addr_18(22) <= \<const0>\;
  LMB_Data_Addr_18(23) <= \<const0>\;
  LMB_Data_Addr_18(24) <= \<const0>\;
  LMB_Data_Addr_18(25) <= \<const0>\;
  LMB_Data_Addr_18(26) <= \<const0>\;
  LMB_Data_Addr_18(27) <= \<const0>\;
  LMB_Data_Addr_18(28) <= \<const0>\;
  LMB_Data_Addr_18(29) <= \<const0>\;
  LMB_Data_Addr_18(30) <= \<const0>\;
  LMB_Data_Addr_18(31) <= \<const0>\;
  LMB_Data_Addr_19(0) <= \<const0>\;
  LMB_Data_Addr_19(1) <= \<const0>\;
  LMB_Data_Addr_19(2) <= \<const0>\;
  LMB_Data_Addr_19(3) <= \<const0>\;
  LMB_Data_Addr_19(4) <= \<const0>\;
  LMB_Data_Addr_19(5) <= \<const0>\;
  LMB_Data_Addr_19(6) <= \<const0>\;
  LMB_Data_Addr_19(7) <= \<const0>\;
  LMB_Data_Addr_19(8) <= \<const0>\;
  LMB_Data_Addr_19(9) <= \<const0>\;
  LMB_Data_Addr_19(10) <= \<const0>\;
  LMB_Data_Addr_19(11) <= \<const0>\;
  LMB_Data_Addr_19(12) <= \<const0>\;
  LMB_Data_Addr_19(13) <= \<const0>\;
  LMB_Data_Addr_19(14) <= \<const0>\;
  LMB_Data_Addr_19(15) <= \<const0>\;
  LMB_Data_Addr_19(16) <= \<const0>\;
  LMB_Data_Addr_19(17) <= \<const0>\;
  LMB_Data_Addr_19(18) <= \<const0>\;
  LMB_Data_Addr_19(19) <= \<const0>\;
  LMB_Data_Addr_19(20) <= \<const0>\;
  LMB_Data_Addr_19(21) <= \<const0>\;
  LMB_Data_Addr_19(22) <= \<const0>\;
  LMB_Data_Addr_19(23) <= \<const0>\;
  LMB_Data_Addr_19(24) <= \<const0>\;
  LMB_Data_Addr_19(25) <= \<const0>\;
  LMB_Data_Addr_19(26) <= \<const0>\;
  LMB_Data_Addr_19(27) <= \<const0>\;
  LMB_Data_Addr_19(28) <= \<const0>\;
  LMB_Data_Addr_19(29) <= \<const0>\;
  LMB_Data_Addr_19(30) <= \<const0>\;
  LMB_Data_Addr_19(31) <= \<const0>\;
  LMB_Data_Addr_2(0) <= \<const0>\;
  LMB_Data_Addr_2(1) <= \<const0>\;
  LMB_Data_Addr_2(2) <= \<const0>\;
  LMB_Data_Addr_2(3) <= \<const0>\;
  LMB_Data_Addr_2(4) <= \<const0>\;
  LMB_Data_Addr_2(5) <= \<const0>\;
  LMB_Data_Addr_2(6) <= \<const0>\;
  LMB_Data_Addr_2(7) <= \<const0>\;
  LMB_Data_Addr_2(8) <= \<const0>\;
  LMB_Data_Addr_2(9) <= \<const0>\;
  LMB_Data_Addr_2(10) <= \<const0>\;
  LMB_Data_Addr_2(11) <= \<const0>\;
  LMB_Data_Addr_2(12) <= \<const0>\;
  LMB_Data_Addr_2(13) <= \<const0>\;
  LMB_Data_Addr_2(14) <= \<const0>\;
  LMB_Data_Addr_2(15) <= \<const0>\;
  LMB_Data_Addr_2(16) <= \<const0>\;
  LMB_Data_Addr_2(17) <= \<const0>\;
  LMB_Data_Addr_2(18) <= \<const0>\;
  LMB_Data_Addr_2(19) <= \<const0>\;
  LMB_Data_Addr_2(20) <= \<const0>\;
  LMB_Data_Addr_2(21) <= \<const0>\;
  LMB_Data_Addr_2(22) <= \<const0>\;
  LMB_Data_Addr_2(23) <= \<const0>\;
  LMB_Data_Addr_2(24) <= \<const0>\;
  LMB_Data_Addr_2(25) <= \<const0>\;
  LMB_Data_Addr_2(26) <= \<const0>\;
  LMB_Data_Addr_2(27) <= \<const0>\;
  LMB_Data_Addr_2(28) <= \<const0>\;
  LMB_Data_Addr_2(29) <= \<const0>\;
  LMB_Data_Addr_2(30) <= \<const0>\;
  LMB_Data_Addr_2(31) <= \<const0>\;
  LMB_Data_Addr_20(0) <= \<const0>\;
  LMB_Data_Addr_20(1) <= \<const0>\;
  LMB_Data_Addr_20(2) <= \<const0>\;
  LMB_Data_Addr_20(3) <= \<const0>\;
  LMB_Data_Addr_20(4) <= \<const0>\;
  LMB_Data_Addr_20(5) <= \<const0>\;
  LMB_Data_Addr_20(6) <= \<const0>\;
  LMB_Data_Addr_20(7) <= \<const0>\;
  LMB_Data_Addr_20(8) <= \<const0>\;
  LMB_Data_Addr_20(9) <= \<const0>\;
  LMB_Data_Addr_20(10) <= \<const0>\;
  LMB_Data_Addr_20(11) <= \<const0>\;
  LMB_Data_Addr_20(12) <= \<const0>\;
  LMB_Data_Addr_20(13) <= \<const0>\;
  LMB_Data_Addr_20(14) <= \<const0>\;
  LMB_Data_Addr_20(15) <= \<const0>\;
  LMB_Data_Addr_20(16) <= \<const0>\;
  LMB_Data_Addr_20(17) <= \<const0>\;
  LMB_Data_Addr_20(18) <= \<const0>\;
  LMB_Data_Addr_20(19) <= \<const0>\;
  LMB_Data_Addr_20(20) <= \<const0>\;
  LMB_Data_Addr_20(21) <= \<const0>\;
  LMB_Data_Addr_20(22) <= \<const0>\;
  LMB_Data_Addr_20(23) <= \<const0>\;
  LMB_Data_Addr_20(24) <= \<const0>\;
  LMB_Data_Addr_20(25) <= \<const0>\;
  LMB_Data_Addr_20(26) <= \<const0>\;
  LMB_Data_Addr_20(27) <= \<const0>\;
  LMB_Data_Addr_20(28) <= \<const0>\;
  LMB_Data_Addr_20(29) <= \<const0>\;
  LMB_Data_Addr_20(30) <= \<const0>\;
  LMB_Data_Addr_20(31) <= \<const0>\;
  LMB_Data_Addr_21(0) <= \<const0>\;
  LMB_Data_Addr_21(1) <= \<const0>\;
  LMB_Data_Addr_21(2) <= \<const0>\;
  LMB_Data_Addr_21(3) <= \<const0>\;
  LMB_Data_Addr_21(4) <= \<const0>\;
  LMB_Data_Addr_21(5) <= \<const0>\;
  LMB_Data_Addr_21(6) <= \<const0>\;
  LMB_Data_Addr_21(7) <= \<const0>\;
  LMB_Data_Addr_21(8) <= \<const0>\;
  LMB_Data_Addr_21(9) <= \<const0>\;
  LMB_Data_Addr_21(10) <= \<const0>\;
  LMB_Data_Addr_21(11) <= \<const0>\;
  LMB_Data_Addr_21(12) <= \<const0>\;
  LMB_Data_Addr_21(13) <= \<const0>\;
  LMB_Data_Addr_21(14) <= \<const0>\;
  LMB_Data_Addr_21(15) <= \<const0>\;
  LMB_Data_Addr_21(16) <= \<const0>\;
  LMB_Data_Addr_21(17) <= \<const0>\;
  LMB_Data_Addr_21(18) <= \<const0>\;
  LMB_Data_Addr_21(19) <= \<const0>\;
  LMB_Data_Addr_21(20) <= \<const0>\;
  LMB_Data_Addr_21(21) <= \<const0>\;
  LMB_Data_Addr_21(22) <= \<const0>\;
  LMB_Data_Addr_21(23) <= \<const0>\;
  LMB_Data_Addr_21(24) <= \<const0>\;
  LMB_Data_Addr_21(25) <= \<const0>\;
  LMB_Data_Addr_21(26) <= \<const0>\;
  LMB_Data_Addr_21(27) <= \<const0>\;
  LMB_Data_Addr_21(28) <= \<const0>\;
  LMB_Data_Addr_21(29) <= \<const0>\;
  LMB_Data_Addr_21(30) <= \<const0>\;
  LMB_Data_Addr_21(31) <= \<const0>\;
  LMB_Data_Addr_22(0) <= \<const0>\;
  LMB_Data_Addr_22(1) <= \<const0>\;
  LMB_Data_Addr_22(2) <= \<const0>\;
  LMB_Data_Addr_22(3) <= \<const0>\;
  LMB_Data_Addr_22(4) <= \<const0>\;
  LMB_Data_Addr_22(5) <= \<const0>\;
  LMB_Data_Addr_22(6) <= \<const0>\;
  LMB_Data_Addr_22(7) <= \<const0>\;
  LMB_Data_Addr_22(8) <= \<const0>\;
  LMB_Data_Addr_22(9) <= \<const0>\;
  LMB_Data_Addr_22(10) <= \<const0>\;
  LMB_Data_Addr_22(11) <= \<const0>\;
  LMB_Data_Addr_22(12) <= \<const0>\;
  LMB_Data_Addr_22(13) <= \<const0>\;
  LMB_Data_Addr_22(14) <= \<const0>\;
  LMB_Data_Addr_22(15) <= \<const0>\;
  LMB_Data_Addr_22(16) <= \<const0>\;
  LMB_Data_Addr_22(17) <= \<const0>\;
  LMB_Data_Addr_22(18) <= \<const0>\;
  LMB_Data_Addr_22(19) <= \<const0>\;
  LMB_Data_Addr_22(20) <= \<const0>\;
  LMB_Data_Addr_22(21) <= \<const0>\;
  LMB_Data_Addr_22(22) <= \<const0>\;
  LMB_Data_Addr_22(23) <= \<const0>\;
  LMB_Data_Addr_22(24) <= \<const0>\;
  LMB_Data_Addr_22(25) <= \<const0>\;
  LMB_Data_Addr_22(26) <= \<const0>\;
  LMB_Data_Addr_22(27) <= \<const0>\;
  LMB_Data_Addr_22(28) <= \<const0>\;
  LMB_Data_Addr_22(29) <= \<const0>\;
  LMB_Data_Addr_22(30) <= \<const0>\;
  LMB_Data_Addr_22(31) <= \<const0>\;
  LMB_Data_Addr_23(0) <= \<const0>\;
  LMB_Data_Addr_23(1) <= \<const0>\;
  LMB_Data_Addr_23(2) <= \<const0>\;
  LMB_Data_Addr_23(3) <= \<const0>\;
  LMB_Data_Addr_23(4) <= \<const0>\;
  LMB_Data_Addr_23(5) <= \<const0>\;
  LMB_Data_Addr_23(6) <= \<const0>\;
  LMB_Data_Addr_23(7) <= \<const0>\;
  LMB_Data_Addr_23(8) <= \<const0>\;
  LMB_Data_Addr_23(9) <= \<const0>\;
  LMB_Data_Addr_23(10) <= \<const0>\;
  LMB_Data_Addr_23(11) <= \<const0>\;
  LMB_Data_Addr_23(12) <= \<const0>\;
  LMB_Data_Addr_23(13) <= \<const0>\;
  LMB_Data_Addr_23(14) <= \<const0>\;
  LMB_Data_Addr_23(15) <= \<const0>\;
  LMB_Data_Addr_23(16) <= \<const0>\;
  LMB_Data_Addr_23(17) <= \<const0>\;
  LMB_Data_Addr_23(18) <= \<const0>\;
  LMB_Data_Addr_23(19) <= \<const0>\;
  LMB_Data_Addr_23(20) <= \<const0>\;
  LMB_Data_Addr_23(21) <= \<const0>\;
  LMB_Data_Addr_23(22) <= \<const0>\;
  LMB_Data_Addr_23(23) <= \<const0>\;
  LMB_Data_Addr_23(24) <= \<const0>\;
  LMB_Data_Addr_23(25) <= \<const0>\;
  LMB_Data_Addr_23(26) <= \<const0>\;
  LMB_Data_Addr_23(27) <= \<const0>\;
  LMB_Data_Addr_23(28) <= \<const0>\;
  LMB_Data_Addr_23(29) <= \<const0>\;
  LMB_Data_Addr_23(30) <= \<const0>\;
  LMB_Data_Addr_23(31) <= \<const0>\;
  LMB_Data_Addr_24(0) <= \<const0>\;
  LMB_Data_Addr_24(1) <= \<const0>\;
  LMB_Data_Addr_24(2) <= \<const0>\;
  LMB_Data_Addr_24(3) <= \<const0>\;
  LMB_Data_Addr_24(4) <= \<const0>\;
  LMB_Data_Addr_24(5) <= \<const0>\;
  LMB_Data_Addr_24(6) <= \<const0>\;
  LMB_Data_Addr_24(7) <= \<const0>\;
  LMB_Data_Addr_24(8) <= \<const0>\;
  LMB_Data_Addr_24(9) <= \<const0>\;
  LMB_Data_Addr_24(10) <= \<const0>\;
  LMB_Data_Addr_24(11) <= \<const0>\;
  LMB_Data_Addr_24(12) <= \<const0>\;
  LMB_Data_Addr_24(13) <= \<const0>\;
  LMB_Data_Addr_24(14) <= \<const0>\;
  LMB_Data_Addr_24(15) <= \<const0>\;
  LMB_Data_Addr_24(16) <= \<const0>\;
  LMB_Data_Addr_24(17) <= \<const0>\;
  LMB_Data_Addr_24(18) <= \<const0>\;
  LMB_Data_Addr_24(19) <= \<const0>\;
  LMB_Data_Addr_24(20) <= \<const0>\;
  LMB_Data_Addr_24(21) <= \<const0>\;
  LMB_Data_Addr_24(22) <= \<const0>\;
  LMB_Data_Addr_24(23) <= \<const0>\;
  LMB_Data_Addr_24(24) <= \<const0>\;
  LMB_Data_Addr_24(25) <= \<const0>\;
  LMB_Data_Addr_24(26) <= \<const0>\;
  LMB_Data_Addr_24(27) <= \<const0>\;
  LMB_Data_Addr_24(28) <= \<const0>\;
  LMB_Data_Addr_24(29) <= \<const0>\;
  LMB_Data_Addr_24(30) <= \<const0>\;
  LMB_Data_Addr_24(31) <= \<const0>\;
  LMB_Data_Addr_25(0) <= \<const0>\;
  LMB_Data_Addr_25(1) <= \<const0>\;
  LMB_Data_Addr_25(2) <= \<const0>\;
  LMB_Data_Addr_25(3) <= \<const0>\;
  LMB_Data_Addr_25(4) <= \<const0>\;
  LMB_Data_Addr_25(5) <= \<const0>\;
  LMB_Data_Addr_25(6) <= \<const0>\;
  LMB_Data_Addr_25(7) <= \<const0>\;
  LMB_Data_Addr_25(8) <= \<const0>\;
  LMB_Data_Addr_25(9) <= \<const0>\;
  LMB_Data_Addr_25(10) <= \<const0>\;
  LMB_Data_Addr_25(11) <= \<const0>\;
  LMB_Data_Addr_25(12) <= \<const0>\;
  LMB_Data_Addr_25(13) <= \<const0>\;
  LMB_Data_Addr_25(14) <= \<const0>\;
  LMB_Data_Addr_25(15) <= \<const0>\;
  LMB_Data_Addr_25(16) <= \<const0>\;
  LMB_Data_Addr_25(17) <= \<const0>\;
  LMB_Data_Addr_25(18) <= \<const0>\;
  LMB_Data_Addr_25(19) <= \<const0>\;
  LMB_Data_Addr_25(20) <= \<const0>\;
  LMB_Data_Addr_25(21) <= \<const0>\;
  LMB_Data_Addr_25(22) <= \<const0>\;
  LMB_Data_Addr_25(23) <= \<const0>\;
  LMB_Data_Addr_25(24) <= \<const0>\;
  LMB_Data_Addr_25(25) <= \<const0>\;
  LMB_Data_Addr_25(26) <= \<const0>\;
  LMB_Data_Addr_25(27) <= \<const0>\;
  LMB_Data_Addr_25(28) <= \<const0>\;
  LMB_Data_Addr_25(29) <= \<const0>\;
  LMB_Data_Addr_25(30) <= \<const0>\;
  LMB_Data_Addr_25(31) <= \<const0>\;
  LMB_Data_Addr_26(0) <= \<const0>\;
  LMB_Data_Addr_26(1) <= \<const0>\;
  LMB_Data_Addr_26(2) <= \<const0>\;
  LMB_Data_Addr_26(3) <= \<const0>\;
  LMB_Data_Addr_26(4) <= \<const0>\;
  LMB_Data_Addr_26(5) <= \<const0>\;
  LMB_Data_Addr_26(6) <= \<const0>\;
  LMB_Data_Addr_26(7) <= \<const0>\;
  LMB_Data_Addr_26(8) <= \<const0>\;
  LMB_Data_Addr_26(9) <= \<const0>\;
  LMB_Data_Addr_26(10) <= \<const0>\;
  LMB_Data_Addr_26(11) <= \<const0>\;
  LMB_Data_Addr_26(12) <= \<const0>\;
  LMB_Data_Addr_26(13) <= \<const0>\;
  LMB_Data_Addr_26(14) <= \<const0>\;
  LMB_Data_Addr_26(15) <= \<const0>\;
  LMB_Data_Addr_26(16) <= \<const0>\;
  LMB_Data_Addr_26(17) <= \<const0>\;
  LMB_Data_Addr_26(18) <= \<const0>\;
  LMB_Data_Addr_26(19) <= \<const0>\;
  LMB_Data_Addr_26(20) <= \<const0>\;
  LMB_Data_Addr_26(21) <= \<const0>\;
  LMB_Data_Addr_26(22) <= \<const0>\;
  LMB_Data_Addr_26(23) <= \<const0>\;
  LMB_Data_Addr_26(24) <= \<const0>\;
  LMB_Data_Addr_26(25) <= \<const0>\;
  LMB_Data_Addr_26(26) <= \<const0>\;
  LMB_Data_Addr_26(27) <= \<const0>\;
  LMB_Data_Addr_26(28) <= \<const0>\;
  LMB_Data_Addr_26(29) <= \<const0>\;
  LMB_Data_Addr_26(30) <= \<const0>\;
  LMB_Data_Addr_26(31) <= \<const0>\;
  LMB_Data_Addr_27(0) <= \<const0>\;
  LMB_Data_Addr_27(1) <= \<const0>\;
  LMB_Data_Addr_27(2) <= \<const0>\;
  LMB_Data_Addr_27(3) <= \<const0>\;
  LMB_Data_Addr_27(4) <= \<const0>\;
  LMB_Data_Addr_27(5) <= \<const0>\;
  LMB_Data_Addr_27(6) <= \<const0>\;
  LMB_Data_Addr_27(7) <= \<const0>\;
  LMB_Data_Addr_27(8) <= \<const0>\;
  LMB_Data_Addr_27(9) <= \<const0>\;
  LMB_Data_Addr_27(10) <= \<const0>\;
  LMB_Data_Addr_27(11) <= \<const0>\;
  LMB_Data_Addr_27(12) <= \<const0>\;
  LMB_Data_Addr_27(13) <= \<const0>\;
  LMB_Data_Addr_27(14) <= \<const0>\;
  LMB_Data_Addr_27(15) <= \<const0>\;
  LMB_Data_Addr_27(16) <= \<const0>\;
  LMB_Data_Addr_27(17) <= \<const0>\;
  LMB_Data_Addr_27(18) <= \<const0>\;
  LMB_Data_Addr_27(19) <= \<const0>\;
  LMB_Data_Addr_27(20) <= \<const0>\;
  LMB_Data_Addr_27(21) <= \<const0>\;
  LMB_Data_Addr_27(22) <= \<const0>\;
  LMB_Data_Addr_27(23) <= \<const0>\;
  LMB_Data_Addr_27(24) <= \<const0>\;
  LMB_Data_Addr_27(25) <= \<const0>\;
  LMB_Data_Addr_27(26) <= \<const0>\;
  LMB_Data_Addr_27(27) <= \<const0>\;
  LMB_Data_Addr_27(28) <= \<const0>\;
  LMB_Data_Addr_27(29) <= \<const0>\;
  LMB_Data_Addr_27(30) <= \<const0>\;
  LMB_Data_Addr_27(31) <= \<const0>\;
  LMB_Data_Addr_28(0) <= \<const0>\;
  LMB_Data_Addr_28(1) <= \<const0>\;
  LMB_Data_Addr_28(2) <= \<const0>\;
  LMB_Data_Addr_28(3) <= \<const0>\;
  LMB_Data_Addr_28(4) <= \<const0>\;
  LMB_Data_Addr_28(5) <= \<const0>\;
  LMB_Data_Addr_28(6) <= \<const0>\;
  LMB_Data_Addr_28(7) <= \<const0>\;
  LMB_Data_Addr_28(8) <= \<const0>\;
  LMB_Data_Addr_28(9) <= \<const0>\;
  LMB_Data_Addr_28(10) <= \<const0>\;
  LMB_Data_Addr_28(11) <= \<const0>\;
  LMB_Data_Addr_28(12) <= \<const0>\;
  LMB_Data_Addr_28(13) <= \<const0>\;
  LMB_Data_Addr_28(14) <= \<const0>\;
  LMB_Data_Addr_28(15) <= \<const0>\;
  LMB_Data_Addr_28(16) <= \<const0>\;
  LMB_Data_Addr_28(17) <= \<const0>\;
  LMB_Data_Addr_28(18) <= \<const0>\;
  LMB_Data_Addr_28(19) <= \<const0>\;
  LMB_Data_Addr_28(20) <= \<const0>\;
  LMB_Data_Addr_28(21) <= \<const0>\;
  LMB_Data_Addr_28(22) <= \<const0>\;
  LMB_Data_Addr_28(23) <= \<const0>\;
  LMB_Data_Addr_28(24) <= \<const0>\;
  LMB_Data_Addr_28(25) <= \<const0>\;
  LMB_Data_Addr_28(26) <= \<const0>\;
  LMB_Data_Addr_28(27) <= \<const0>\;
  LMB_Data_Addr_28(28) <= \<const0>\;
  LMB_Data_Addr_28(29) <= \<const0>\;
  LMB_Data_Addr_28(30) <= \<const0>\;
  LMB_Data_Addr_28(31) <= \<const0>\;
  LMB_Data_Addr_29(0) <= \<const0>\;
  LMB_Data_Addr_29(1) <= \<const0>\;
  LMB_Data_Addr_29(2) <= \<const0>\;
  LMB_Data_Addr_29(3) <= \<const0>\;
  LMB_Data_Addr_29(4) <= \<const0>\;
  LMB_Data_Addr_29(5) <= \<const0>\;
  LMB_Data_Addr_29(6) <= \<const0>\;
  LMB_Data_Addr_29(7) <= \<const0>\;
  LMB_Data_Addr_29(8) <= \<const0>\;
  LMB_Data_Addr_29(9) <= \<const0>\;
  LMB_Data_Addr_29(10) <= \<const0>\;
  LMB_Data_Addr_29(11) <= \<const0>\;
  LMB_Data_Addr_29(12) <= \<const0>\;
  LMB_Data_Addr_29(13) <= \<const0>\;
  LMB_Data_Addr_29(14) <= \<const0>\;
  LMB_Data_Addr_29(15) <= \<const0>\;
  LMB_Data_Addr_29(16) <= \<const0>\;
  LMB_Data_Addr_29(17) <= \<const0>\;
  LMB_Data_Addr_29(18) <= \<const0>\;
  LMB_Data_Addr_29(19) <= \<const0>\;
  LMB_Data_Addr_29(20) <= \<const0>\;
  LMB_Data_Addr_29(21) <= \<const0>\;
  LMB_Data_Addr_29(22) <= \<const0>\;
  LMB_Data_Addr_29(23) <= \<const0>\;
  LMB_Data_Addr_29(24) <= \<const0>\;
  LMB_Data_Addr_29(25) <= \<const0>\;
  LMB_Data_Addr_29(26) <= \<const0>\;
  LMB_Data_Addr_29(27) <= \<const0>\;
  LMB_Data_Addr_29(28) <= \<const0>\;
  LMB_Data_Addr_29(29) <= \<const0>\;
  LMB_Data_Addr_29(30) <= \<const0>\;
  LMB_Data_Addr_29(31) <= \<const0>\;
  LMB_Data_Addr_3(0) <= \<const0>\;
  LMB_Data_Addr_3(1) <= \<const0>\;
  LMB_Data_Addr_3(2) <= \<const0>\;
  LMB_Data_Addr_3(3) <= \<const0>\;
  LMB_Data_Addr_3(4) <= \<const0>\;
  LMB_Data_Addr_3(5) <= \<const0>\;
  LMB_Data_Addr_3(6) <= \<const0>\;
  LMB_Data_Addr_3(7) <= \<const0>\;
  LMB_Data_Addr_3(8) <= \<const0>\;
  LMB_Data_Addr_3(9) <= \<const0>\;
  LMB_Data_Addr_3(10) <= \<const0>\;
  LMB_Data_Addr_3(11) <= \<const0>\;
  LMB_Data_Addr_3(12) <= \<const0>\;
  LMB_Data_Addr_3(13) <= \<const0>\;
  LMB_Data_Addr_3(14) <= \<const0>\;
  LMB_Data_Addr_3(15) <= \<const0>\;
  LMB_Data_Addr_3(16) <= \<const0>\;
  LMB_Data_Addr_3(17) <= \<const0>\;
  LMB_Data_Addr_3(18) <= \<const0>\;
  LMB_Data_Addr_3(19) <= \<const0>\;
  LMB_Data_Addr_3(20) <= \<const0>\;
  LMB_Data_Addr_3(21) <= \<const0>\;
  LMB_Data_Addr_3(22) <= \<const0>\;
  LMB_Data_Addr_3(23) <= \<const0>\;
  LMB_Data_Addr_3(24) <= \<const0>\;
  LMB_Data_Addr_3(25) <= \<const0>\;
  LMB_Data_Addr_3(26) <= \<const0>\;
  LMB_Data_Addr_3(27) <= \<const0>\;
  LMB_Data_Addr_3(28) <= \<const0>\;
  LMB_Data_Addr_3(29) <= \<const0>\;
  LMB_Data_Addr_3(30) <= \<const0>\;
  LMB_Data_Addr_3(31) <= \<const0>\;
  LMB_Data_Addr_30(0) <= \<const0>\;
  LMB_Data_Addr_30(1) <= \<const0>\;
  LMB_Data_Addr_30(2) <= \<const0>\;
  LMB_Data_Addr_30(3) <= \<const0>\;
  LMB_Data_Addr_30(4) <= \<const0>\;
  LMB_Data_Addr_30(5) <= \<const0>\;
  LMB_Data_Addr_30(6) <= \<const0>\;
  LMB_Data_Addr_30(7) <= \<const0>\;
  LMB_Data_Addr_30(8) <= \<const0>\;
  LMB_Data_Addr_30(9) <= \<const0>\;
  LMB_Data_Addr_30(10) <= \<const0>\;
  LMB_Data_Addr_30(11) <= \<const0>\;
  LMB_Data_Addr_30(12) <= \<const0>\;
  LMB_Data_Addr_30(13) <= \<const0>\;
  LMB_Data_Addr_30(14) <= \<const0>\;
  LMB_Data_Addr_30(15) <= \<const0>\;
  LMB_Data_Addr_30(16) <= \<const0>\;
  LMB_Data_Addr_30(17) <= \<const0>\;
  LMB_Data_Addr_30(18) <= \<const0>\;
  LMB_Data_Addr_30(19) <= \<const0>\;
  LMB_Data_Addr_30(20) <= \<const0>\;
  LMB_Data_Addr_30(21) <= \<const0>\;
  LMB_Data_Addr_30(22) <= \<const0>\;
  LMB_Data_Addr_30(23) <= \<const0>\;
  LMB_Data_Addr_30(24) <= \<const0>\;
  LMB_Data_Addr_30(25) <= \<const0>\;
  LMB_Data_Addr_30(26) <= \<const0>\;
  LMB_Data_Addr_30(27) <= \<const0>\;
  LMB_Data_Addr_30(28) <= \<const0>\;
  LMB_Data_Addr_30(29) <= \<const0>\;
  LMB_Data_Addr_30(30) <= \<const0>\;
  LMB_Data_Addr_30(31) <= \<const0>\;
  LMB_Data_Addr_31(0) <= \<const0>\;
  LMB_Data_Addr_31(1) <= \<const0>\;
  LMB_Data_Addr_31(2) <= \<const0>\;
  LMB_Data_Addr_31(3) <= \<const0>\;
  LMB_Data_Addr_31(4) <= \<const0>\;
  LMB_Data_Addr_31(5) <= \<const0>\;
  LMB_Data_Addr_31(6) <= \<const0>\;
  LMB_Data_Addr_31(7) <= \<const0>\;
  LMB_Data_Addr_31(8) <= \<const0>\;
  LMB_Data_Addr_31(9) <= \<const0>\;
  LMB_Data_Addr_31(10) <= \<const0>\;
  LMB_Data_Addr_31(11) <= \<const0>\;
  LMB_Data_Addr_31(12) <= \<const0>\;
  LMB_Data_Addr_31(13) <= \<const0>\;
  LMB_Data_Addr_31(14) <= \<const0>\;
  LMB_Data_Addr_31(15) <= \<const0>\;
  LMB_Data_Addr_31(16) <= \<const0>\;
  LMB_Data_Addr_31(17) <= \<const0>\;
  LMB_Data_Addr_31(18) <= \<const0>\;
  LMB_Data_Addr_31(19) <= \<const0>\;
  LMB_Data_Addr_31(20) <= \<const0>\;
  LMB_Data_Addr_31(21) <= \<const0>\;
  LMB_Data_Addr_31(22) <= \<const0>\;
  LMB_Data_Addr_31(23) <= \<const0>\;
  LMB_Data_Addr_31(24) <= \<const0>\;
  LMB_Data_Addr_31(25) <= \<const0>\;
  LMB_Data_Addr_31(26) <= \<const0>\;
  LMB_Data_Addr_31(27) <= \<const0>\;
  LMB_Data_Addr_31(28) <= \<const0>\;
  LMB_Data_Addr_31(29) <= \<const0>\;
  LMB_Data_Addr_31(30) <= \<const0>\;
  LMB_Data_Addr_31(31) <= \<const0>\;
  LMB_Data_Addr_4(0) <= \<const0>\;
  LMB_Data_Addr_4(1) <= \<const0>\;
  LMB_Data_Addr_4(2) <= \<const0>\;
  LMB_Data_Addr_4(3) <= \<const0>\;
  LMB_Data_Addr_4(4) <= \<const0>\;
  LMB_Data_Addr_4(5) <= \<const0>\;
  LMB_Data_Addr_4(6) <= \<const0>\;
  LMB_Data_Addr_4(7) <= \<const0>\;
  LMB_Data_Addr_4(8) <= \<const0>\;
  LMB_Data_Addr_4(9) <= \<const0>\;
  LMB_Data_Addr_4(10) <= \<const0>\;
  LMB_Data_Addr_4(11) <= \<const0>\;
  LMB_Data_Addr_4(12) <= \<const0>\;
  LMB_Data_Addr_4(13) <= \<const0>\;
  LMB_Data_Addr_4(14) <= \<const0>\;
  LMB_Data_Addr_4(15) <= \<const0>\;
  LMB_Data_Addr_4(16) <= \<const0>\;
  LMB_Data_Addr_4(17) <= \<const0>\;
  LMB_Data_Addr_4(18) <= \<const0>\;
  LMB_Data_Addr_4(19) <= \<const0>\;
  LMB_Data_Addr_4(20) <= \<const0>\;
  LMB_Data_Addr_4(21) <= \<const0>\;
  LMB_Data_Addr_4(22) <= \<const0>\;
  LMB_Data_Addr_4(23) <= \<const0>\;
  LMB_Data_Addr_4(24) <= \<const0>\;
  LMB_Data_Addr_4(25) <= \<const0>\;
  LMB_Data_Addr_4(26) <= \<const0>\;
  LMB_Data_Addr_4(27) <= \<const0>\;
  LMB_Data_Addr_4(28) <= \<const0>\;
  LMB_Data_Addr_4(29) <= \<const0>\;
  LMB_Data_Addr_4(30) <= \<const0>\;
  LMB_Data_Addr_4(31) <= \<const0>\;
  LMB_Data_Addr_5(0) <= \<const0>\;
  LMB_Data_Addr_5(1) <= \<const0>\;
  LMB_Data_Addr_5(2) <= \<const0>\;
  LMB_Data_Addr_5(3) <= \<const0>\;
  LMB_Data_Addr_5(4) <= \<const0>\;
  LMB_Data_Addr_5(5) <= \<const0>\;
  LMB_Data_Addr_5(6) <= \<const0>\;
  LMB_Data_Addr_5(7) <= \<const0>\;
  LMB_Data_Addr_5(8) <= \<const0>\;
  LMB_Data_Addr_5(9) <= \<const0>\;
  LMB_Data_Addr_5(10) <= \<const0>\;
  LMB_Data_Addr_5(11) <= \<const0>\;
  LMB_Data_Addr_5(12) <= \<const0>\;
  LMB_Data_Addr_5(13) <= \<const0>\;
  LMB_Data_Addr_5(14) <= \<const0>\;
  LMB_Data_Addr_5(15) <= \<const0>\;
  LMB_Data_Addr_5(16) <= \<const0>\;
  LMB_Data_Addr_5(17) <= \<const0>\;
  LMB_Data_Addr_5(18) <= \<const0>\;
  LMB_Data_Addr_5(19) <= \<const0>\;
  LMB_Data_Addr_5(20) <= \<const0>\;
  LMB_Data_Addr_5(21) <= \<const0>\;
  LMB_Data_Addr_5(22) <= \<const0>\;
  LMB_Data_Addr_5(23) <= \<const0>\;
  LMB_Data_Addr_5(24) <= \<const0>\;
  LMB_Data_Addr_5(25) <= \<const0>\;
  LMB_Data_Addr_5(26) <= \<const0>\;
  LMB_Data_Addr_5(27) <= \<const0>\;
  LMB_Data_Addr_5(28) <= \<const0>\;
  LMB_Data_Addr_5(29) <= \<const0>\;
  LMB_Data_Addr_5(30) <= \<const0>\;
  LMB_Data_Addr_5(31) <= \<const0>\;
  LMB_Data_Addr_6(0) <= \<const0>\;
  LMB_Data_Addr_6(1) <= \<const0>\;
  LMB_Data_Addr_6(2) <= \<const0>\;
  LMB_Data_Addr_6(3) <= \<const0>\;
  LMB_Data_Addr_6(4) <= \<const0>\;
  LMB_Data_Addr_6(5) <= \<const0>\;
  LMB_Data_Addr_6(6) <= \<const0>\;
  LMB_Data_Addr_6(7) <= \<const0>\;
  LMB_Data_Addr_6(8) <= \<const0>\;
  LMB_Data_Addr_6(9) <= \<const0>\;
  LMB_Data_Addr_6(10) <= \<const0>\;
  LMB_Data_Addr_6(11) <= \<const0>\;
  LMB_Data_Addr_6(12) <= \<const0>\;
  LMB_Data_Addr_6(13) <= \<const0>\;
  LMB_Data_Addr_6(14) <= \<const0>\;
  LMB_Data_Addr_6(15) <= \<const0>\;
  LMB_Data_Addr_6(16) <= \<const0>\;
  LMB_Data_Addr_6(17) <= \<const0>\;
  LMB_Data_Addr_6(18) <= \<const0>\;
  LMB_Data_Addr_6(19) <= \<const0>\;
  LMB_Data_Addr_6(20) <= \<const0>\;
  LMB_Data_Addr_6(21) <= \<const0>\;
  LMB_Data_Addr_6(22) <= \<const0>\;
  LMB_Data_Addr_6(23) <= \<const0>\;
  LMB_Data_Addr_6(24) <= \<const0>\;
  LMB_Data_Addr_6(25) <= \<const0>\;
  LMB_Data_Addr_6(26) <= \<const0>\;
  LMB_Data_Addr_6(27) <= \<const0>\;
  LMB_Data_Addr_6(28) <= \<const0>\;
  LMB_Data_Addr_6(29) <= \<const0>\;
  LMB_Data_Addr_6(30) <= \<const0>\;
  LMB_Data_Addr_6(31) <= \<const0>\;
  LMB_Data_Addr_7(0) <= \<const0>\;
  LMB_Data_Addr_7(1) <= \<const0>\;
  LMB_Data_Addr_7(2) <= \<const0>\;
  LMB_Data_Addr_7(3) <= \<const0>\;
  LMB_Data_Addr_7(4) <= \<const0>\;
  LMB_Data_Addr_7(5) <= \<const0>\;
  LMB_Data_Addr_7(6) <= \<const0>\;
  LMB_Data_Addr_7(7) <= \<const0>\;
  LMB_Data_Addr_7(8) <= \<const0>\;
  LMB_Data_Addr_7(9) <= \<const0>\;
  LMB_Data_Addr_7(10) <= \<const0>\;
  LMB_Data_Addr_7(11) <= \<const0>\;
  LMB_Data_Addr_7(12) <= \<const0>\;
  LMB_Data_Addr_7(13) <= \<const0>\;
  LMB_Data_Addr_7(14) <= \<const0>\;
  LMB_Data_Addr_7(15) <= \<const0>\;
  LMB_Data_Addr_7(16) <= \<const0>\;
  LMB_Data_Addr_7(17) <= \<const0>\;
  LMB_Data_Addr_7(18) <= \<const0>\;
  LMB_Data_Addr_7(19) <= \<const0>\;
  LMB_Data_Addr_7(20) <= \<const0>\;
  LMB_Data_Addr_7(21) <= \<const0>\;
  LMB_Data_Addr_7(22) <= \<const0>\;
  LMB_Data_Addr_7(23) <= \<const0>\;
  LMB_Data_Addr_7(24) <= \<const0>\;
  LMB_Data_Addr_7(25) <= \<const0>\;
  LMB_Data_Addr_7(26) <= \<const0>\;
  LMB_Data_Addr_7(27) <= \<const0>\;
  LMB_Data_Addr_7(28) <= \<const0>\;
  LMB_Data_Addr_7(29) <= \<const0>\;
  LMB_Data_Addr_7(30) <= \<const0>\;
  LMB_Data_Addr_7(31) <= \<const0>\;
  LMB_Data_Addr_8(0) <= \<const0>\;
  LMB_Data_Addr_8(1) <= \<const0>\;
  LMB_Data_Addr_8(2) <= \<const0>\;
  LMB_Data_Addr_8(3) <= \<const0>\;
  LMB_Data_Addr_8(4) <= \<const0>\;
  LMB_Data_Addr_8(5) <= \<const0>\;
  LMB_Data_Addr_8(6) <= \<const0>\;
  LMB_Data_Addr_8(7) <= \<const0>\;
  LMB_Data_Addr_8(8) <= \<const0>\;
  LMB_Data_Addr_8(9) <= \<const0>\;
  LMB_Data_Addr_8(10) <= \<const0>\;
  LMB_Data_Addr_8(11) <= \<const0>\;
  LMB_Data_Addr_8(12) <= \<const0>\;
  LMB_Data_Addr_8(13) <= \<const0>\;
  LMB_Data_Addr_8(14) <= \<const0>\;
  LMB_Data_Addr_8(15) <= \<const0>\;
  LMB_Data_Addr_8(16) <= \<const0>\;
  LMB_Data_Addr_8(17) <= \<const0>\;
  LMB_Data_Addr_8(18) <= \<const0>\;
  LMB_Data_Addr_8(19) <= \<const0>\;
  LMB_Data_Addr_8(20) <= \<const0>\;
  LMB_Data_Addr_8(21) <= \<const0>\;
  LMB_Data_Addr_8(22) <= \<const0>\;
  LMB_Data_Addr_8(23) <= \<const0>\;
  LMB_Data_Addr_8(24) <= \<const0>\;
  LMB_Data_Addr_8(25) <= \<const0>\;
  LMB_Data_Addr_8(26) <= \<const0>\;
  LMB_Data_Addr_8(27) <= \<const0>\;
  LMB_Data_Addr_8(28) <= \<const0>\;
  LMB_Data_Addr_8(29) <= \<const0>\;
  LMB_Data_Addr_8(30) <= \<const0>\;
  LMB_Data_Addr_8(31) <= \<const0>\;
  LMB_Data_Addr_9(0) <= \<const0>\;
  LMB_Data_Addr_9(1) <= \<const0>\;
  LMB_Data_Addr_9(2) <= \<const0>\;
  LMB_Data_Addr_9(3) <= \<const0>\;
  LMB_Data_Addr_9(4) <= \<const0>\;
  LMB_Data_Addr_9(5) <= \<const0>\;
  LMB_Data_Addr_9(6) <= \<const0>\;
  LMB_Data_Addr_9(7) <= \<const0>\;
  LMB_Data_Addr_9(8) <= \<const0>\;
  LMB_Data_Addr_9(9) <= \<const0>\;
  LMB_Data_Addr_9(10) <= \<const0>\;
  LMB_Data_Addr_9(11) <= \<const0>\;
  LMB_Data_Addr_9(12) <= \<const0>\;
  LMB_Data_Addr_9(13) <= \<const0>\;
  LMB_Data_Addr_9(14) <= \<const0>\;
  LMB_Data_Addr_9(15) <= \<const0>\;
  LMB_Data_Addr_9(16) <= \<const0>\;
  LMB_Data_Addr_9(17) <= \<const0>\;
  LMB_Data_Addr_9(18) <= \<const0>\;
  LMB_Data_Addr_9(19) <= \<const0>\;
  LMB_Data_Addr_9(20) <= \<const0>\;
  LMB_Data_Addr_9(21) <= \<const0>\;
  LMB_Data_Addr_9(22) <= \<const0>\;
  LMB_Data_Addr_9(23) <= \<const0>\;
  LMB_Data_Addr_9(24) <= \<const0>\;
  LMB_Data_Addr_9(25) <= \<const0>\;
  LMB_Data_Addr_9(26) <= \<const0>\;
  LMB_Data_Addr_9(27) <= \<const0>\;
  LMB_Data_Addr_9(28) <= \<const0>\;
  LMB_Data_Addr_9(29) <= \<const0>\;
  LMB_Data_Addr_9(30) <= \<const0>\;
  LMB_Data_Addr_9(31) <= \<const0>\;
  LMB_Data_Write_0(0) <= \<const0>\;
  LMB_Data_Write_0(1) <= \<const0>\;
  LMB_Data_Write_0(2) <= \<const0>\;
  LMB_Data_Write_0(3) <= \<const0>\;
  LMB_Data_Write_0(4) <= \<const0>\;
  LMB_Data_Write_0(5) <= \<const0>\;
  LMB_Data_Write_0(6) <= \<const0>\;
  LMB_Data_Write_0(7) <= \<const0>\;
  LMB_Data_Write_0(8) <= \<const0>\;
  LMB_Data_Write_0(9) <= \<const0>\;
  LMB_Data_Write_0(10) <= \<const0>\;
  LMB_Data_Write_0(11) <= \<const0>\;
  LMB_Data_Write_0(12) <= \<const0>\;
  LMB_Data_Write_0(13) <= \<const0>\;
  LMB_Data_Write_0(14) <= \<const0>\;
  LMB_Data_Write_0(15) <= \<const0>\;
  LMB_Data_Write_0(16) <= \<const0>\;
  LMB_Data_Write_0(17) <= \<const0>\;
  LMB_Data_Write_0(18) <= \<const0>\;
  LMB_Data_Write_0(19) <= \<const0>\;
  LMB_Data_Write_0(20) <= \<const0>\;
  LMB_Data_Write_0(21) <= \<const0>\;
  LMB_Data_Write_0(22) <= \<const0>\;
  LMB_Data_Write_0(23) <= \<const0>\;
  LMB_Data_Write_0(24) <= \<const0>\;
  LMB_Data_Write_0(25) <= \<const0>\;
  LMB_Data_Write_0(26) <= \<const0>\;
  LMB_Data_Write_0(27) <= \<const0>\;
  LMB_Data_Write_0(28) <= \<const0>\;
  LMB_Data_Write_0(29) <= \<const0>\;
  LMB_Data_Write_0(30) <= \<const0>\;
  LMB_Data_Write_0(31) <= \<const0>\;
  LMB_Data_Write_1(0) <= \<const0>\;
  LMB_Data_Write_1(1) <= \<const0>\;
  LMB_Data_Write_1(2) <= \<const0>\;
  LMB_Data_Write_1(3) <= \<const0>\;
  LMB_Data_Write_1(4) <= \<const0>\;
  LMB_Data_Write_1(5) <= \<const0>\;
  LMB_Data_Write_1(6) <= \<const0>\;
  LMB_Data_Write_1(7) <= \<const0>\;
  LMB_Data_Write_1(8) <= \<const0>\;
  LMB_Data_Write_1(9) <= \<const0>\;
  LMB_Data_Write_1(10) <= \<const0>\;
  LMB_Data_Write_1(11) <= \<const0>\;
  LMB_Data_Write_1(12) <= \<const0>\;
  LMB_Data_Write_1(13) <= \<const0>\;
  LMB_Data_Write_1(14) <= \<const0>\;
  LMB_Data_Write_1(15) <= \<const0>\;
  LMB_Data_Write_1(16) <= \<const0>\;
  LMB_Data_Write_1(17) <= \<const0>\;
  LMB_Data_Write_1(18) <= \<const0>\;
  LMB_Data_Write_1(19) <= \<const0>\;
  LMB_Data_Write_1(20) <= \<const0>\;
  LMB_Data_Write_1(21) <= \<const0>\;
  LMB_Data_Write_1(22) <= \<const0>\;
  LMB_Data_Write_1(23) <= \<const0>\;
  LMB_Data_Write_1(24) <= \<const0>\;
  LMB_Data_Write_1(25) <= \<const0>\;
  LMB_Data_Write_1(26) <= \<const0>\;
  LMB_Data_Write_1(27) <= \<const0>\;
  LMB_Data_Write_1(28) <= \<const0>\;
  LMB_Data_Write_1(29) <= \<const0>\;
  LMB_Data_Write_1(30) <= \<const0>\;
  LMB_Data_Write_1(31) <= \<const0>\;
  LMB_Data_Write_10(0) <= \<const0>\;
  LMB_Data_Write_10(1) <= \<const0>\;
  LMB_Data_Write_10(2) <= \<const0>\;
  LMB_Data_Write_10(3) <= \<const0>\;
  LMB_Data_Write_10(4) <= \<const0>\;
  LMB_Data_Write_10(5) <= \<const0>\;
  LMB_Data_Write_10(6) <= \<const0>\;
  LMB_Data_Write_10(7) <= \<const0>\;
  LMB_Data_Write_10(8) <= \<const0>\;
  LMB_Data_Write_10(9) <= \<const0>\;
  LMB_Data_Write_10(10) <= \<const0>\;
  LMB_Data_Write_10(11) <= \<const0>\;
  LMB_Data_Write_10(12) <= \<const0>\;
  LMB_Data_Write_10(13) <= \<const0>\;
  LMB_Data_Write_10(14) <= \<const0>\;
  LMB_Data_Write_10(15) <= \<const0>\;
  LMB_Data_Write_10(16) <= \<const0>\;
  LMB_Data_Write_10(17) <= \<const0>\;
  LMB_Data_Write_10(18) <= \<const0>\;
  LMB_Data_Write_10(19) <= \<const0>\;
  LMB_Data_Write_10(20) <= \<const0>\;
  LMB_Data_Write_10(21) <= \<const0>\;
  LMB_Data_Write_10(22) <= \<const0>\;
  LMB_Data_Write_10(23) <= \<const0>\;
  LMB_Data_Write_10(24) <= \<const0>\;
  LMB_Data_Write_10(25) <= \<const0>\;
  LMB_Data_Write_10(26) <= \<const0>\;
  LMB_Data_Write_10(27) <= \<const0>\;
  LMB_Data_Write_10(28) <= \<const0>\;
  LMB_Data_Write_10(29) <= \<const0>\;
  LMB_Data_Write_10(30) <= \<const0>\;
  LMB_Data_Write_10(31) <= \<const0>\;
  LMB_Data_Write_11(0) <= \<const0>\;
  LMB_Data_Write_11(1) <= \<const0>\;
  LMB_Data_Write_11(2) <= \<const0>\;
  LMB_Data_Write_11(3) <= \<const0>\;
  LMB_Data_Write_11(4) <= \<const0>\;
  LMB_Data_Write_11(5) <= \<const0>\;
  LMB_Data_Write_11(6) <= \<const0>\;
  LMB_Data_Write_11(7) <= \<const0>\;
  LMB_Data_Write_11(8) <= \<const0>\;
  LMB_Data_Write_11(9) <= \<const0>\;
  LMB_Data_Write_11(10) <= \<const0>\;
  LMB_Data_Write_11(11) <= \<const0>\;
  LMB_Data_Write_11(12) <= \<const0>\;
  LMB_Data_Write_11(13) <= \<const0>\;
  LMB_Data_Write_11(14) <= \<const0>\;
  LMB_Data_Write_11(15) <= \<const0>\;
  LMB_Data_Write_11(16) <= \<const0>\;
  LMB_Data_Write_11(17) <= \<const0>\;
  LMB_Data_Write_11(18) <= \<const0>\;
  LMB_Data_Write_11(19) <= \<const0>\;
  LMB_Data_Write_11(20) <= \<const0>\;
  LMB_Data_Write_11(21) <= \<const0>\;
  LMB_Data_Write_11(22) <= \<const0>\;
  LMB_Data_Write_11(23) <= \<const0>\;
  LMB_Data_Write_11(24) <= \<const0>\;
  LMB_Data_Write_11(25) <= \<const0>\;
  LMB_Data_Write_11(26) <= \<const0>\;
  LMB_Data_Write_11(27) <= \<const0>\;
  LMB_Data_Write_11(28) <= \<const0>\;
  LMB_Data_Write_11(29) <= \<const0>\;
  LMB_Data_Write_11(30) <= \<const0>\;
  LMB_Data_Write_11(31) <= \<const0>\;
  LMB_Data_Write_12(0) <= \<const0>\;
  LMB_Data_Write_12(1) <= \<const0>\;
  LMB_Data_Write_12(2) <= \<const0>\;
  LMB_Data_Write_12(3) <= \<const0>\;
  LMB_Data_Write_12(4) <= \<const0>\;
  LMB_Data_Write_12(5) <= \<const0>\;
  LMB_Data_Write_12(6) <= \<const0>\;
  LMB_Data_Write_12(7) <= \<const0>\;
  LMB_Data_Write_12(8) <= \<const0>\;
  LMB_Data_Write_12(9) <= \<const0>\;
  LMB_Data_Write_12(10) <= \<const0>\;
  LMB_Data_Write_12(11) <= \<const0>\;
  LMB_Data_Write_12(12) <= \<const0>\;
  LMB_Data_Write_12(13) <= \<const0>\;
  LMB_Data_Write_12(14) <= \<const0>\;
  LMB_Data_Write_12(15) <= \<const0>\;
  LMB_Data_Write_12(16) <= \<const0>\;
  LMB_Data_Write_12(17) <= \<const0>\;
  LMB_Data_Write_12(18) <= \<const0>\;
  LMB_Data_Write_12(19) <= \<const0>\;
  LMB_Data_Write_12(20) <= \<const0>\;
  LMB_Data_Write_12(21) <= \<const0>\;
  LMB_Data_Write_12(22) <= \<const0>\;
  LMB_Data_Write_12(23) <= \<const0>\;
  LMB_Data_Write_12(24) <= \<const0>\;
  LMB_Data_Write_12(25) <= \<const0>\;
  LMB_Data_Write_12(26) <= \<const0>\;
  LMB_Data_Write_12(27) <= \<const0>\;
  LMB_Data_Write_12(28) <= \<const0>\;
  LMB_Data_Write_12(29) <= \<const0>\;
  LMB_Data_Write_12(30) <= \<const0>\;
  LMB_Data_Write_12(31) <= \<const0>\;
  LMB_Data_Write_13(0) <= \<const0>\;
  LMB_Data_Write_13(1) <= \<const0>\;
  LMB_Data_Write_13(2) <= \<const0>\;
  LMB_Data_Write_13(3) <= \<const0>\;
  LMB_Data_Write_13(4) <= \<const0>\;
  LMB_Data_Write_13(5) <= \<const0>\;
  LMB_Data_Write_13(6) <= \<const0>\;
  LMB_Data_Write_13(7) <= \<const0>\;
  LMB_Data_Write_13(8) <= \<const0>\;
  LMB_Data_Write_13(9) <= \<const0>\;
  LMB_Data_Write_13(10) <= \<const0>\;
  LMB_Data_Write_13(11) <= \<const0>\;
  LMB_Data_Write_13(12) <= \<const0>\;
  LMB_Data_Write_13(13) <= \<const0>\;
  LMB_Data_Write_13(14) <= \<const0>\;
  LMB_Data_Write_13(15) <= \<const0>\;
  LMB_Data_Write_13(16) <= \<const0>\;
  LMB_Data_Write_13(17) <= \<const0>\;
  LMB_Data_Write_13(18) <= \<const0>\;
  LMB_Data_Write_13(19) <= \<const0>\;
  LMB_Data_Write_13(20) <= \<const0>\;
  LMB_Data_Write_13(21) <= \<const0>\;
  LMB_Data_Write_13(22) <= \<const0>\;
  LMB_Data_Write_13(23) <= \<const0>\;
  LMB_Data_Write_13(24) <= \<const0>\;
  LMB_Data_Write_13(25) <= \<const0>\;
  LMB_Data_Write_13(26) <= \<const0>\;
  LMB_Data_Write_13(27) <= \<const0>\;
  LMB_Data_Write_13(28) <= \<const0>\;
  LMB_Data_Write_13(29) <= \<const0>\;
  LMB_Data_Write_13(30) <= \<const0>\;
  LMB_Data_Write_13(31) <= \<const0>\;
  LMB_Data_Write_14(0) <= \<const0>\;
  LMB_Data_Write_14(1) <= \<const0>\;
  LMB_Data_Write_14(2) <= \<const0>\;
  LMB_Data_Write_14(3) <= \<const0>\;
  LMB_Data_Write_14(4) <= \<const0>\;
  LMB_Data_Write_14(5) <= \<const0>\;
  LMB_Data_Write_14(6) <= \<const0>\;
  LMB_Data_Write_14(7) <= \<const0>\;
  LMB_Data_Write_14(8) <= \<const0>\;
  LMB_Data_Write_14(9) <= \<const0>\;
  LMB_Data_Write_14(10) <= \<const0>\;
  LMB_Data_Write_14(11) <= \<const0>\;
  LMB_Data_Write_14(12) <= \<const0>\;
  LMB_Data_Write_14(13) <= \<const0>\;
  LMB_Data_Write_14(14) <= \<const0>\;
  LMB_Data_Write_14(15) <= \<const0>\;
  LMB_Data_Write_14(16) <= \<const0>\;
  LMB_Data_Write_14(17) <= \<const0>\;
  LMB_Data_Write_14(18) <= \<const0>\;
  LMB_Data_Write_14(19) <= \<const0>\;
  LMB_Data_Write_14(20) <= \<const0>\;
  LMB_Data_Write_14(21) <= \<const0>\;
  LMB_Data_Write_14(22) <= \<const0>\;
  LMB_Data_Write_14(23) <= \<const0>\;
  LMB_Data_Write_14(24) <= \<const0>\;
  LMB_Data_Write_14(25) <= \<const0>\;
  LMB_Data_Write_14(26) <= \<const0>\;
  LMB_Data_Write_14(27) <= \<const0>\;
  LMB_Data_Write_14(28) <= \<const0>\;
  LMB_Data_Write_14(29) <= \<const0>\;
  LMB_Data_Write_14(30) <= \<const0>\;
  LMB_Data_Write_14(31) <= \<const0>\;
  LMB_Data_Write_15(0) <= \<const0>\;
  LMB_Data_Write_15(1) <= \<const0>\;
  LMB_Data_Write_15(2) <= \<const0>\;
  LMB_Data_Write_15(3) <= \<const0>\;
  LMB_Data_Write_15(4) <= \<const0>\;
  LMB_Data_Write_15(5) <= \<const0>\;
  LMB_Data_Write_15(6) <= \<const0>\;
  LMB_Data_Write_15(7) <= \<const0>\;
  LMB_Data_Write_15(8) <= \<const0>\;
  LMB_Data_Write_15(9) <= \<const0>\;
  LMB_Data_Write_15(10) <= \<const0>\;
  LMB_Data_Write_15(11) <= \<const0>\;
  LMB_Data_Write_15(12) <= \<const0>\;
  LMB_Data_Write_15(13) <= \<const0>\;
  LMB_Data_Write_15(14) <= \<const0>\;
  LMB_Data_Write_15(15) <= \<const0>\;
  LMB_Data_Write_15(16) <= \<const0>\;
  LMB_Data_Write_15(17) <= \<const0>\;
  LMB_Data_Write_15(18) <= \<const0>\;
  LMB_Data_Write_15(19) <= \<const0>\;
  LMB_Data_Write_15(20) <= \<const0>\;
  LMB_Data_Write_15(21) <= \<const0>\;
  LMB_Data_Write_15(22) <= \<const0>\;
  LMB_Data_Write_15(23) <= \<const0>\;
  LMB_Data_Write_15(24) <= \<const0>\;
  LMB_Data_Write_15(25) <= \<const0>\;
  LMB_Data_Write_15(26) <= \<const0>\;
  LMB_Data_Write_15(27) <= \<const0>\;
  LMB_Data_Write_15(28) <= \<const0>\;
  LMB_Data_Write_15(29) <= \<const0>\;
  LMB_Data_Write_15(30) <= \<const0>\;
  LMB_Data_Write_15(31) <= \<const0>\;
  LMB_Data_Write_16(0) <= \<const0>\;
  LMB_Data_Write_16(1) <= \<const0>\;
  LMB_Data_Write_16(2) <= \<const0>\;
  LMB_Data_Write_16(3) <= \<const0>\;
  LMB_Data_Write_16(4) <= \<const0>\;
  LMB_Data_Write_16(5) <= \<const0>\;
  LMB_Data_Write_16(6) <= \<const0>\;
  LMB_Data_Write_16(7) <= \<const0>\;
  LMB_Data_Write_16(8) <= \<const0>\;
  LMB_Data_Write_16(9) <= \<const0>\;
  LMB_Data_Write_16(10) <= \<const0>\;
  LMB_Data_Write_16(11) <= \<const0>\;
  LMB_Data_Write_16(12) <= \<const0>\;
  LMB_Data_Write_16(13) <= \<const0>\;
  LMB_Data_Write_16(14) <= \<const0>\;
  LMB_Data_Write_16(15) <= \<const0>\;
  LMB_Data_Write_16(16) <= \<const0>\;
  LMB_Data_Write_16(17) <= \<const0>\;
  LMB_Data_Write_16(18) <= \<const0>\;
  LMB_Data_Write_16(19) <= \<const0>\;
  LMB_Data_Write_16(20) <= \<const0>\;
  LMB_Data_Write_16(21) <= \<const0>\;
  LMB_Data_Write_16(22) <= \<const0>\;
  LMB_Data_Write_16(23) <= \<const0>\;
  LMB_Data_Write_16(24) <= \<const0>\;
  LMB_Data_Write_16(25) <= \<const0>\;
  LMB_Data_Write_16(26) <= \<const0>\;
  LMB_Data_Write_16(27) <= \<const0>\;
  LMB_Data_Write_16(28) <= \<const0>\;
  LMB_Data_Write_16(29) <= \<const0>\;
  LMB_Data_Write_16(30) <= \<const0>\;
  LMB_Data_Write_16(31) <= \<const0>\;
  LMB_Data_Write_17(0) <= \<const0>\;
  LMB_Data_Write_17(1) <= \<const0>\;
  LMB_Data_Write_17(2) <= \<const0>\;
  LMB_Data_Write_17(3) <= \<const0>\;
  LMB_Data_Write_17(4) <= \<const0>\;
  LMB_Data_Write_17(5) <= \<const0>\;
  LMB_Data_Write_17(6) <= \<const0>\;
  LMB_Data_Write_17(7) <= \<const0>\;
  LMB_Data_Write_17(8) <= \<const0>\;
  LMB_Data_Write_17(9) <= \<const0>\;
  LMB_Data_Write_17(10) <= \<const0>\;
  LMB_Data_Write_17(11) <= \<const0>\;
  LMB_Data_Write_17(12) <= \<const0>\;
  LMB_Data_Write_17(13) <= \<const0>\;
  LMB_Data_Write_17(14) <= \<const0>\;
  LMB_Data_Write_17(15) <= \<const0>\;
  LMB_Data_Write_17(16) <= \<const0>\;
  LMB_Data_Write_17(17) <= \<const0>\;
  LMB_Data_Write_17(18) <= \<const0>\;
  LMB_Data_Write_17(19) <= \<const0>\;
  LMB_Data_Write_17(20) <= \<const0>\;
  LMB_Data_Write_17(21) <= \<const0>\;
  LMB_Data_Write_17(22) <= \<const0>\;
  LMB_Data_Write_17(23) <= \<const0>\;
  LMB_Data_Write_17(24) <= \<const0>\;
  LMB_Data_Write_17(25) <= \<const0>\;
  LMB_Data_Write_17(26) <= \<const0>\;
  LMB_Data_Write_17(27) <= \<const0>\;
  LMB_Data_Write_17(28) <= \<const0>\;
  LMB_Data_Write_17(29) <= \<const0>\;
  LMB_Data_Write_17(30) <= \<const0>\;
  LMB_Data_Write_17(31) <= \<const0>\;
  LMB_Data_Write_18(0) <= \<const0>\;
  LMB_Data_Write_18(1) <= \<const0>\;
  LMB_Data_Write_18(2) <= \<const0>\;
  LMB_Data_Write_18(3) <= \<const0>\;
  LMB_Data_Write_18(4) <= \<const0>\;
  LMB_Data_Write_18(5) <= \<const0>\;
  LMB_Data_Write_18(6) <= \<const0>\;
  LMB_Data_Write_18(7) <= \<const0>\;
  LMB_Data_Write_18(8) <= \<const0>\;
  LMB_Data_Write_18(9) <= \<const0>\;
  LMB_Data_Write_18(10) <= \<const0>\;
  LMB_Data_Write_18(11) <= \<const0>\;
  LMB_Data_Write_18(12) <= \<const0>\;
  LMB_Data_Write_18(13) <= \<const0>\;
  LMB_Data_Write_18(14) <= \<const0>\;
  LMB_Data_Write_18(15) <= \<const0>\;
  LMB_Data_Write_18(16) <= \<const0>\;
  LMB_Data_Write_18(17) <= \<const0>\;
  LMB_Data_Write_18(18) <= \<const0>\;
  LMB_Data_Write_18(19) <= \<const0>\;
  LMB_Data_Write_18(20) <= \<const0>\;
  LMB_Data_Write_18(21) <= \<const0>\;
  LMB_Data_Write_18(22) <= \<const0>\;
  LMB_Data_Write_18(23) <= \<const0>\;
  LMB_Data_Write_18(24) <= \<const0>\;
  LMB_Data_Write_18(25) <= \<const0>\;
  LMB_Data_Write_18(26) <= \<const0>\;
  LMB_Data_Write_18(27) <= \<const0>\;
  LMB_Data_Write_18(28) <= \<const0>\;
  LMB_Data_Write_18(29) <= \<const0>\;
  LMB_Data_Write_18(30) <= \<const0>\;
  LMB_Data_Write_18(31) <= \<const0>\;
  LMB_Data_Write_19(0) <= \<const0>\;
  LMB_Data_Write_19(1) <= \<const0>\;
  LMB_Data_Write_19(2) <= \<const0>\;
  LMB_Data_Write_19(3) <= \<const0>\;
  LMB_Data_Write_19(4) <= \<const0>\;
  LMB_Data_Write_19(5) <= \<const0>\;
  LMB_Data_Write_19(6) <= \<const0>\;
  LMB_Data_Write_19(7) <= \<const0>\;
  LMB_Data_Write_19(8) <= \<const0>\;
  LMB_Data_Write_19(9) <= \<const0>\;
  LMB_Data_Write_19(10) <= \<const0>\;
  LMB_Data_Write_19(11) <= \<const0>\;
  LMB_Data_Write_19(12) <= \<const0>\;
  LMB_Data_Write_19(13) <= \<const0>\;
  LMB_Data_Write_19(14) <= \<const0>\;
  LMB_Data_Write_19(15) <= \<const0>\;
  LMB_Data_Write_19(16) <= \<const0>\;
  LMB_Data_Write_19(17) <= \<const0>\;
  LMB_Data_Write_19(18) <= \<const0>\;
  LMB_Data_Write_19(19) <= \<const0>\;
  LMB_Data_Write_19(20) <= \<const0>\;
  LMB_Data_Write_19(21) <= \<const0>\;
  LMB_Data_Write_19(22) <= \<const0>\;
  LMB_Data_Write_19(23) <= \<const0>\;
  LMB_Data_Write_19(24) <= \<const0>\;
  LMB_Data_Write_19(25) <= \<const0>\;
  LMB_Data_Write_19(26) <= \<const0>\;
  LMB_Data_Write_19(27) <= \<const0>\;
  LMB_Data_Write_19(28) <= \<const0>\;
  LMB_Data_Write_19(29) <= \<const0>\;
  LMB_Data_Write_19(30) <= \<const0>\;
  LMB_Data_Write_19(31) <= \<const0>\;
  LMB_Data_Write_2(0) <= \<const0>\;
  LMB_Data_Write_2(1) <= \<const0>\;
  LMB_Data_Write_2(2) <= \<const0>\;
  LMB_Data_Write_2(3) <= \<const0>\;
  LMB_Data_Write_2(4) <= \<const0>\;
  LMB_Data_Write_2(5) <= \<const0>\;
  LMB_Data_Write_2(6) <= \<const0>\;
  LMB_Data_Write_2(7) <= \<const0>\;
  LMB_Data_Write_2(8) <= \<const0>\;
  LMB_Data_Write_2(9) <= \<const0>\;
  LMB_Data_Write_2(10) <= \<const0>\;
  LMB_Data_Write_2(11) <= \<const0>\;
  LMB_Data_Write_2(12) <= \<const0>\;
  LMB_Data_Write_2(13) <= \<const0>\;
  LMB_Data_Write_2(14) <= \<const0>\;
  LMB_Data_Write_2(15) <= \<const0>\;
  LMB_Data_Write_2(16) <= \<const0>\;
  LMB_Data_Write_2(17) <= \<const0>\;
  LMB_Data_Write_2(18) <= \<const0>\;
  LMB_Data_Write_2(19) <= \<const0>\;
  LMB_Data_Write_2(20) <= \<const0>\;
  LMB_Data_Write_2(21) <= \<const0>\;
  LMB_Data_Write_2(22) <= \<const0>\;
  LMB_Data_Write_2(23) <= \<const0>\;
  LMB_Data_Write_2(24) <= \<const0>\;
  LMB_Data_Write_2(25) <= \<const0>\;
  LMB_Data_Write_2(26) <= \<const0>\;
  LMB_Data_Write_2(27) <= \<const0>\;
  LMB_Data_Write_2(28) <= \<const0>\;
  LMB_Data_Write_2(29) <= \<const0>\;
  LMB_Data_Write_2(30) <= \<const0>\;
  LMB_Data_Write_2(31) <= \<const0>\;
  LMB_Data_Write_20(0) <= \<const0>\;
  LMB_Data_Write_20(1) <= \<const0>\;
  LMB_Data_Write_20(2) <= \<const0>\;
  LMB_Data_Write_20(3) <= \<const0>\;
  LMB_Data_Write_20(4) <= \<const0>\;
  LMB_Data_Write_20(5) <= \<const0>\;
  LMB_Data_Write_20(6) <= \<const0>\;
  LMB_Data_Write_20(7) <= \<const0>\;
  LMB_Data_Write_20(8) <= \<const0>\;
  LMB_Data_Write_20(9) <= \<const0>\;
  LMB_Data_Write_20(10) <= \<const0>\;
  LMB_Data_Write_20(11) <= \<const0>\;
  LMB_Data_Write_20(12) <= \<const0>\;
  LMB_Data_Write_20(13) <= \<const0>\;
  LMB_Data_Write_20(14) <= \<const0>\;
  LMB_Data_Write_20(15) <= \<const0>\;
  LMB_Data_Write_20(16) <= \<const0>\;
  LMB_Data_Write_20(17) <= \<const0>\;
  LMB_Data_Write_20(18) <= \<const0>\;
  LMB_Data_Write_20(19) <= \<const0>\;
  LMB_Data_Write_20(20) <= \<const0>\;
  LMB_Data_Write_20(21) <= \<const0>\;
  LMB_Data_Write_20(22) <= \<const0>\;
  LMB_Data_Write_20(23) <= \<const0>\;
  LMB_Data_Write_20(24) <= \<const0>\;
  LMB_Data_Write_20(25) <= \<const0>\;
  LMB_Data_Write_20(26) <= \<const0>\;
  LMB_Data_Write_20(27) <= \<const0>\;
  LMB_Data_Write_20(28) <= \<const0>\;
  LMB_Data_Write_20(29) <= \<const0>\;
  LMB_Data_Write_20(30) <= \<const0>\;
  LMB_Data_Write_20(31) <= \<const0>\;
  LMB_Data_Write_21(0) <= \<const0>\;
  LMB_Data_Write_21(1) <= \<const0>\;
  LMB_Data_Write_21(2) <= \<const0>\;
  LMB_Data_Write_21(3) <= \<const0>\;
  LMB_Data_Write_21(4) <= \<const0>\;
  LMB_Data_Write_21(5) <= \<const0>\;
  LMB_Data_Write_21(6) <= \<const0>\;
  LMB_Data_Write_21(7) <= \<const0>\;
  LMB_Data_Write_21(8) <= \<const0>\;
  LMB_Data_Write_21(9) <= \<const0>\;
  LMB_Data_Write_21(10) <= \<const0>\;
  LMB_Data_Write_21(11) <= \<const0>\;
  LMB_Data_Write_21(12) <= \<const0>\;
  LMB_Data_Write_21(13) <= \<const0>\;
  LMB_Data_Write_21(14) <= \<const0>\;
  LMB_Data_Write_21(15) <= \<const0>\;
  LMB_Data_Write_21(16) <= \<const0>\;
  LMB_Data_Write_21(17) <= \<const0>\;
  LMB_Data_Write_21(18) <= \<const0>\;
  LMB_Data_Write_21(19) <= \<const0>\;
  LMB_Data_Write_21(20) <= \<const0>\;
  LMB_Data_Write_21(21) <= \<const0>\;
  LMB_Data_Write_21(22) <= \<const0>\;
  LMB_Data_Write_21(23) <= \<const0>\;
  LMB_Data_Write_21(24) <= \<const0>\;
  LMB_Data_Write_21(25) <= \<const0>\;
  LMB_Data_Write_21(26) <= \<const0>\;
  LMB_Data_Write_21(27) <= \<const0>\;
  LMB_Data_Write_21(28) <= \<const0>\;
  LMB_Data_Write_21(29) <= \<const0>\;
  LMB_Data_Write_21(30) <= \<const0>\;
  LMB_Data_Write_21(31) <= \<const0>\;
  LMB_Data_Write_22(0) <= \<const0>\;
  LMB_Data_Write_22(1) <= \<const0>\;
  LMB_Data_Write_22(2) <= \<const0>\;
  LMB_Data_Write_22(3) <= \<const0>\;
  LMB_Data_Write_22(4) <= \<const0>\;
  LMB_Data_Write_22(5) <= \<const0>\;
  LMB_Data_Write_22(6) <= \<const0>\;
  LMB_Data_Write_22(7) <= \<const0>\;
  LMB_Data_Write_22(8) <= \<const0>\;
  LMB_Data_Write_22(9) <= \<const0>\;
  LMB_Data_Write_22(10) <= \<const0>\;
  LMB_Data_Write_22(11) <= \<const0>\;
  LMB_Data_Write_22(12) <= \<const0>\;
  LMB_Data_Write_22(13) <= \<const0>\;
  LMB_Data_Write_22(14) <= \<const0>\;
  LMB_Data_Write_22(15) <= \<const0>\;
  LMB_Data_Write_22(16) <= \<const0>\;
  LMB_Data_Write_22(17) <= \<const0>\;
  LMB_Data_Write_22(18) <= \<const0>\;
  LMB_Data_Write_22(19) <= \<const0>\;
  LMB_Data_Write_22(20) <= \<const0>\;
  LMB_Data_Write_22(21) <= \<const0>\;
  LMB_Data_Write_22(22) <= \<const0>\;
  LMB_Data_Write_22(23) <= \<const0>\;
  LMB_Data_Write_22(24) <= \<const0>\;
  LMB_Data_Write_22(25) <= \<const0>\;
  LMB_Data_Write_22(26) <= \<const0>\;
  LMB_Data_Write_22(27) <= \<const0>\;
  LMB_Data_Write_22(28) <= \<const0>\;
  LMB_Data_Write_22(29) <= \<const0>\;
  LMB_Data_Write_22(30) <= \<const0>\;
  LMB_Data_Write_22(31) <= \<const0>\;
  LMB_Data_Write_23(0) <= \<const0>\;
  LMB_Data_Write_23(1) <= \<const0>\;
  LMB_Data_Write_23(2) <= \<const0>\;
  LMB_Data_Write_23(3) <= \<const0>\;
  LMB_Data_Write_23(4) <= \<const0>\;
  LMB_Data_Write_23(5) <= \<const0>\;
  LMB_Data_Write_23(6) <= \<const0>\;
  LMB_Data_Write_23(7) <= \<const0>\;
  LMB_Data_Write_23(8) <= \<const0>\;
  LMB_Data_Write_23(9) <= \<const0>\;
  LMB_Data_Write_23(10) <= \<const0>\;
  LMB_Data_Write_23(11) <= \<const0>\;
  LMB_Data_Write_23(12) <= \<const0>\;
  LMB_Data_Write_23(13) <= \<const0>\;
  LMB_Data_Write_23(14) <= \<const0>\;
  LMB_Data_Write_23(15) <= \<const0>\;
  LMB_Data_Write_23(16) <= \<const0>\;
  LMB_Data_Write_23(17) <= \<const0>\;
  LMB_Data_Write_23(18) <= \<const0>\;
  LMB_Data_Write_23(19) <= \<const0>\;
  LMB_Data_Write_23(20) <= \<const0>\;
  LMB_Data_Write_23(21) <= \<const0>\;
  LMB_Data_Write_23(22) <= \<const0>\;
  LMB_Data_Write_23(23) <= \<const0>\;
  LMB_Data_Write_23(24) <= \<const0>\;
  LMB_Data_Write_23(25) <= \<const0>\;
  LMB_Data_Write_23(26) <= \<const0>\;
  LMB_Data_Write_23(27) <= \<const0>\;
  LMB_Data_Write_23(28) <= \<const0>\;
  LMB_Data_Write_23(29) <= \<const0>\;
  LMB_Data_Write_23(30) <= \<const0>\;
  LMB_Data_Write_23(31) <= \<const0>\;
  LMB_Data_Write_24(0) <= \<const0>\;
  LMB_Data_Write_24(1) <= \<const0>\;
  LMB_Data_Write_24(2) <= \<const0>\;
  LMB_Data_Write_24(3) <= \<const0>\;
  LMB_Data_Write_24(4) <= \<const0>\;
  LMB_Data_Write_24(5) <= \<const0>\;
  LMB_Data_Write_24(6) <= \<const0>\;
  LMB_Data_Write_24(7) <= \<const0>\;
  LMB_Data_Write_24(8) <= \<const0>\;
  LMB_Data_Write_24(9) <= \<const0>\;
  LMB_Data_Write_24(10) <= \<const0>\;
  LMB_Data_Write_24(11) <= \<const0>\;
  LMB_Data_Write_24(12) <= \<const0>\;
  LMB_Data_Write_24(13) <= \<const0>\;
  LMB_Data_Write_24(14) <= \<const0>\;
  LMB_Data_Write_24(15) <= \<const0>\;
  LMB_Data_Write_24(16) <= \<const0>\;
  LMB_Data_Write_24(17) <= \<const0>\;
  LMB_Data_Write_24(18) <= \<const0>\;
  LMB_Data_Write_24(19) <= \<const0>\;
  LMB_Data_Write_24(20) <= \<const0>\;
  LMB_Data_Write_24(21) <= \<const0>\;
  LMB_Data_Write_24(22) <= \<const0>\;
  LMB_Data_Write_24(23) <= \<const0>\;
  LMB_Data_Write_24(24) <= \<const0>\;
  LMB_Data_Write_24(25) <= \<const0>\;
  LMB_Data_Write_24(26) <= \<const0>\;
  LMB_Data_Write_24(27) <= \<const0>\;
  LMB_Data_Write_24(28) <= \<const0>\;
  LMB_Data_Write_24(29) <= \<const0>\;
  LMB_Data_Write_24(30) <= \<const0>\;
  LMB_Data_Write_24(31) <= \<const0>\;
  LMB_Data_Write_25(0) <= \<const0>\;
  LMB_Data_Write_25(1) <= \<const0>\;
  LMB_Data_Write_25(2) <= \<const0>\;
  LMB_Data_Write_25(3) <= \<const0>\;
  LMB_Data_Write_25(4) <= \<const0>\;
  LMB_Data_Write_25(5) <= \<const0>\;
  LMB_Data_Write_25(6) <= \<const0>\;
  LMB_Data_Write_25(7) <= \<const0>\;
  LMB_Data_Write_25(8) <= \<const0>\;
  LMB_Data_Write_25(9) <= \<const0>\;
  LMB_Data_Write_25(10) <= \<const0>\;
  LMB_Data_Write_25(11) <= \<const0>\;
  LMB_Data_Write_25(12) <= \<const0>\;
  LMB_Data_Write_25(13) <= \<const0>\;
  LMB_Data_Write_25(14) <= \<const0>\;
  LMB_Data_Write_25(15) <= \<const0>\;
  LMB_Data_Write_25(16) <= \<const0>\;
  LMB_Data_Write_25(17) <= \<const0>\;
  LMB_Data_Write_25(18) <= \<const0>\;
  LMB_Data_Write_25(19) <= \<const0>\;
  LMB_Data_Write_25(20) <= \<const0>\;
  LMB_Data_Write_25(21) <= \<const0>\;
  LMB_Data_Write_25(22) <= \<const0>\;
  LMB_Data_Write_25(23) <= \<const0>\;
  LMB_Data_Write_25(24) <= \<const0>\;
  LMB_Data_Write_25(25) <= \<const0>\;
  LMB_Data_Write_25(26) <= \<const0>\;
  LMB_Data_Write_25(27) <= \<const0>\;
  LMB_Data_Write_25(28) <= \<const0>\;
  LMB_Data_Write_25(29) <= \<const0>\;
  LMB_Data_Write_25(30) <= \<const0>\;
  LMB_Data_Write_25(31) <= \<const0>\;
  LMB_Data_Write_26(0) <= \<const0>\;
  LMB_Data_Write_26(1) <= \<const0>\;
  LMB_Data_Write_26(2) <= \<const0>\;
  LMB_Data_Write_26(3) <= \<const0>\;
  LMB_Data_Write_26(4) <= \<const0>\;
  LMB_Data_Write_26(5) <= \<const0>\;
  LMB_Data_Write_26(6) <= \<const0>\;
  LMB_Data_Write_26(7) <= \<const0>\;
  LMB_Data_Write_26(8) <= \<const0>\;
  LMB_Data_Write_26(9) <= \<const0>\;
  LMB_Data_Write_26(10) <= \<const0>\;
  LMB_Data_Write_26(11) <= \<const0>\;
  LMB_Data_Write_26(12) <= \<const0>\;
  LMB_Data_Write_26(13) <= \<const0>\;
  LMB_Data_Write_26(14) <= \<const0>\;
  LMB_Data_Write_26(15) <= \<const0>\;
  LMB_Data_Write_26(16) <= \<const0>\;
  LMB_Data_Write_26(17) <= \<const0>\;
  LMB_Data_Write_26(18) <= \<const0>\;
  LMB_Data_Write_26(19) <= \<const0>\;
  LMB_Data_Write_26(20) <= \<const0>\;
  LMB_Data_Write_26(21) <= \<const0>\;
  LMB_Data_Write_26(22) <= \<const0>\;
  LMB_Data_Write_26(23) <= \<const0>\;
  LMB_Data_Write_26(24) <= \<const0>\;
  LMB_Data_Write_26(25) <= \<const0>\;
  LMB_Data_Write_26(26) <= \<const0>\;
  LMB_Data_Write_26(27) <= \<const0>\;
  LMB_Data_Write_26(28) <= \<const0>\;
  LMB_Data_Write_26(29) <= \<const0>\;
  LMB_Data_Write_26(30) <= \<const0>\;
  LMB_Data_Write_26(31) <= \<const0>\;
  LMB_Data_Write_27(0) <= \<const0>\;
  LMB_Data_Write_27(1) <= \<const0>\;
  LMB_Data_Write_27(2) <= \<const0>\;
  LMB_Data_Write_27(3) <= \<const0>\;
  LMB_Data_Write_27(4) <= \<const0>\;
  LMB_Data_Write_27(5) <= \<const0>\;
  LMB_Data_Write_27(6) <= \<const0>\;
  LMB_Data_Write_27(7) <= \<const0>\;
  LMB_Data_Write_27(8) <= \<const0>\;
  LMB_Data_Write_27(9) <= \<const0>\;
  LMB_Data_Write_27(10) <= \<const0>\;
  LMB_Data_Write_27(11) <= \<const0>\;
  LMB_Data_Write_27(12) <= \<const0>\;
  LMB_Data_Write_27(13) <= \<const0>\;
  LMB_Data_Write_27(14) <= \<const0>\;
  LMB_Data_Write_27(15) <= \<const0>\;
  LMB_Data_Write_27(16) <= \<const0>\;
  LMB_Data_Write_27(17) <= \<const0>\;
  LMB_Data_Write_27(18) <= \<const0>\;
  LMB_Data_Write_27(19) <= \<const0>\;
  LMB_Data_Write_27(20) <= \<const0>\;
  LMB_Data_Write_27(21) <= \<const0>\;
  LMB_Data_Write_27(22) <= \<const0>\;
  LMB_Data_Write_27(23) <= \<const0>\;
  LMB_Data_Write_27(24) <= \<const0>\;
  LMB_Data_Write_27(25) <= \<const0>\;
  LMB_Data_Write_27(26) <= \<const0>\;
  LMB_Data_Write_27(27) <= \<const0>\;
  LMB_Data_Write_27(28) <= \<const0>\;
  LMB_Data_Write_27(29) <= \<const0>\;
  LMB_Data_Write_27(30) <= \<const0>\;
  LMB_Data_Write_27(31) <= \<const0>\;
  LMB_Data_Write_28(0) <= \<const0>\;
  LMB_Data_Write_28(1) <= \<const0>\;
  LMB_Data_Write_28(2) <= \<const0>\;
  LMB_Data_Write_28(3) <= \<const0>\;
  LMB_Data_Write_28(4) <= \<const0>\;
  LMB_Data_Write_28(5) <= \<const0>\;
  LMB_Data_Write_28(6) <= \<const0>\;
  LMB_Data_Write_28(7) <= \<const0>\;
  LMB_Data_Write_28(8) <= \<const0>\;
  LMB_Data_Write_28(9) <= \<const0>\;
  LMB_Data_Write_28(10) <= \<const0>\;
  LMB_Data_Write_28(11) <= \<const0>\;
  LMB_Data_Write_28(12) <= \<const0>\;
  LMB_Data_Write_28(13) <= \<const0>\;
  LMB_Data_Write_28(14) <= \<const0>\;
  LMB_Data_Write_28(15) <= \<const0>\;
  LMB_Data_Write_28(16) <= \<const0>\;
  LMB_Data_Write_28(17) <= \<const0>\;
  LMB_Data_Write_28(18) <= \<const0>\;
  LMB_Data_Write_28(19) <= \<const0>\;
  LMB_Data_Write_28(20) <= \<const0>\;
  LMB_Data_Write_28(21) <= \<const0>\;
  LMB_Data_Write_28(22) <= \<const0>\;
  LMB_Data_Write_28(23) <= \<const0>\;
  LMB_Data_Write_28(24) <= \<const0>\;
  LMB_Data_Write_28(25) <= \<const0>\;
  LMB_Data_Write_28(26) <= \<const0>\;
  LMB_Data_Write_28(27) <= \<const0>\;
  LMB_Data_Write_28(28) <= \<const0>\;
  LMB_Data_Write_28(29) <= \<const0>\;
  LMB_Data_Write_28(30) <= \<const0>\;
  LMB_Data_Write_28(31) <= \<const0>\;
  LMB_Data_Write_29(0) <= \<const0>\;
  LMB_Data_Write_29(1) <= \<const0>\;
  LMB_Data_Write_29(2) <= \<const0>\;
  LMB_Data_Write_29(3) <= \<const0>\;
  LMB_Data_Write_29(4) <= \<const0>\;
  LMB_Data_Write_29(5) <= \<const0>\;
  LMB_Data_Write_29(6) <= \<const0>\;
  LMB_Data_Write_29(7) <= \<const0>\;
  LMB_Data_Write_29(8) <= \<const0>\;
  LMB_Data_Write_29(9) <= \<const0>\;
  LMB_Data_Write_29(10) <= \<const0>\;
  LMB_Data_Write_29(11) <= \<const0>\;
  LMB_Data_Write_29(12) <= \<const0>\;
  LMB_Data_Write_29(13) <= \<const0>\;
  LMB_Data_Write_29(14) <= \<const0>\;
  LMB_Data_Write_29(15) <= \<const0>\;
  LMB_Data_Write_29(16) <= \<const0>\;
  LMB_Data_Write_29(17) <= \<const0>\;
  LMB_Data_Write_29(18) <= \<const0>\;
  LMB_Data_Write_29(19) <= \<const0>\;
  LMB_Data_Write_29(20) <= \<const0>\;
  LMB_Data_Write_29(21) <= \<const0>\;
  LMB_Data_Write_29(22) <= \<const0>\;
  LMB_Data_Write_29(23) <= \<const0>\;
  LMB_Data_Write_29(24) <= \<const0>\;
  LMB_Data_Write_29(25) <= \<const0>\;
  LMB_Data_Write_29(26) <= \<const0>\;
  LMB_Data_Write_29(27) <= \<const0>\;
  LMB_Data_Write_29(28) <= \<const0>\;
  LMB_Data_Write_29(29) <= \<const0>\;
  LMB_Data_Write_29(30) <= \<const0>\;
  LMB_Data_Write_29(31) <= \<const0>\;
  LMB_Data_Write_3(0) <= \<const0>\;
  LMB_Data_Write_3(1) <= \<const0>\;
  LMB_Data_Write_3(2) <= \<const0>\;
  LMB_Data_Write_3(3) <= \<const0>\;
  LMB_Data_Write_3(4) <= \<const0>\;
  LMB_Data_Write_3(5) <= \<const0>\;
  LMB_Data_Write_3(6) <= \<const0>\;
  LMB_Data_Write_3(7) <= \<const0>\;
  LMB_Data_Write_3(8) <= \<const0>\;
  LMB_Data_Write_3(9) <= \<const0>\;
  LMB_Data_Write_3(10) <= \<const0>\;
  LMB_Data_Write_3(11) <= \<const0>\;
  LMB_Data_Write_3(12) <= \<const0>\;
  LMB_Data_Write_3(13) <= \<const0>\;
  LMB_Data_Write_3(14) <= \<const0>\;
  LMB_Data_Write_3(15) <= \<const0>\;
  LMB_Data_Write_3(16) <= \<const0>\;
  LMB_Data_Write_3(17) <= \<const0>\;
  LMB_Data_Write_3(18) <= \<const0>\;
  LMB_Data_Write_3(19) <= \<const0>\;
  LMB_Data_Write_3(20) <= \<const0>\;
  LMB_Data_Write_3(21) <= \<const0>\;
  LMB_Data_Write_3(22) <= \<const0>\;
  LMB_Data_Write_3(23) <= \<const0>\;
  LMB_Data_Write_3(24) <= \<const0>\;
  LMB_Data_Write_3(25) <= \<const0>\;
  LMB_Data_Write_3(26) <= \<const0>\;
  LMB_Data_Write_3(27) <= \<const0>\;
  LMB_Data_Write_3(28) <= \<const0>\;
  LMB_Data_Write_3(29) <= \<const0>\;
  LMB_Data_Write_3(30) <= \<const0>\;
  LMB_Data_Write_3(31) <= \<const0>\;
  LMB_Data_Write_30(0) <= \<const0>\;
  LMB_Data_Write_30(1) <= \<const0>\;
  LMB_Data_Write_30(2) <= \<const0>\;
  LMB_Data_Write_30(3) <= \<const0>\;
  LMB_Data_Write_30(4) <= \<const0>\;
  LMB_Data_Write_30(5) <= \<const0>\;
  LMB_Data_Write_30(6) <= \<const0>\;
  LMB_Data_Write_30(7) <= \<const0>\;
  LMB_Data_Write_30(8) <= \<const0>\;
  LMB_Data_Write_30(9) <= \<const0>\;
  LMB_Data_Write_30(10) <= \<const0>\;
  LMB_Data_Write_30(11) <= \<const0>\;
  LMB_Data_Write_30(12) <= \<const0>\;
  LMB_Data_Write_30(13) <= \<const0>\;
  LMB_Data_Write_30(14) <= \<const0>\;
  LMB_Data_Write_30(15) <= \<const0>\;
  LMB_Data_Write_30(16) <= \<const0>\;
  LMB_Data_Write_30(17) <= \<const0>\;
  LMB_Data_Write_30(18) <= \<const0>\;
  LMB_Data_Write_30(19) <= \<const0>\;
  LMB_Data_Write_30(20) <= \<const0>\;
  LMB_Data_Write_30(21) <= \<const0>\;
  LMB_Data_Write_30(22) <= \<const0>\;
  LMB_Data_Write_30(23) <= \<const0>\;
  LMB_Data_Write_30(24) <= \<const0>\;
  LMB_Data_Write_30(25) <= \<const0>\;
  LMB_Data_Write_30(26) <= \<const0>\;
  LMB_Data_Write_30(27) <= \<const0>\;
  LMB_Data_Write_30(28) <= \<const0>\;
  LMB_Data_Write_30(29) <= \<const0>\;
  LMB_Data_Write_30(30) <= \<const0>\;
  LMB_Data_Write_30(31) <= \<const0>\;
  LMB_Data_Write_31(0) <= \<const0>\;
  LMB_Data_Write_31(1) <= \<const0>\;
  LMB_Data_Write_31(2) <= \<const0>\;
  LMB_Data_Write_31(3) <= \<const0>\;
  LMB_Data_Write_31(4) <= \<const0>\;
  LMB_Data_Write_31(5) <= \<const0>\;
  LMB_Data_Write_31(6) <= \<const0>\;
  LMB_Data_Write_31(7) <= \<const0>\;
  LMB_Data_Write_31(8) <= \<const0>\;
  LMB_Data_Write_31(9) <= \<const0>\;
  LMB_Data_Write_31(10) <= \<const0>\;
  LMB_Data_Write_31(11) <= \<const0>\;
  LMB_Data_Write_31(12) <= \<const0>\;
  LMB_Data_Write_31(13) <= \<const0>\;
  LMB_Data_Write_31(14) <= \<const0>\;
  LMB_Data_Write_31(15) <= \<const0>\;
  LMB_Data_Write_31(16) <= \<const0>\;
  LMB_Data_Write_31(17) <= \<const0>\;
  LMB_Data_Write_31(18) <= \<const0>\;
  LMB_Data_Write_31(19) <= \<const0>\;
  LMB_Data_Write_31(20) <= \<const0>\;
  LMB_Data_Write_31(21) <= \<const0>\;
  LMB_Data_Write_31(22) <= \<const0>\;
  LMB_Data_Write_31(23) <= \<const0>\;
  LMB_Data_Write_31(24) <= \<const0>\;
  LMB_Data_Write_31(25) <= \<const0>\;
  LMB_Data_Write_31(26) <= \<const0>\;
  LMB_Data_Write_31(27) <= \<const0>\;
  LMB_Data_Write_31(28) <= \<const0>\;
  LMB_Data_Write_31(29) <= \<const0>\;
  LMB_Data_Write_31(30) <= \<const0>\;
  LMB_Data_Write_31(31) <= \<const0>\;
  LMB_Data_Write_4(0) <= \<const0>\;
  LMB_Data_Write_4(1) <= \<const0>\;
  LMB_Data_Write_4(2) <= \<const0>\;
  LMB_Data_Write_4(3) <= \<const0>\;
  LMB_Data_Write_4(4) <= \<const0>\;
  LMB_Data_Write_4(5) <= \<const0>\;
  LMB_Data_Write_4(6) <= \<const0>\;
  LMB_Data_Write_4(7) <= \<const0>\;
  LMB_Data_Write_4(8) <= \<const0>\;
  LMB_Data_Write_4(9) <= \<const0>\;
  LMB_Data_Write_4(10) <= \<const0>\;
  LMB_Data_Write_4(11) <= \<const0>\;
  LMB_Data_Write_4(12) <= \<const0>\;
  LMB_Data_Write_4(13) <= \<const0>\;
  LMB_Data_Write_4(14) <= \<const0>\;
  LMB_Data_Write_4(15) <= \<const0>\;
  LMB_Data_Write_4(16) <= \<const0>\;
  LMB_Data_Write_4(17) <= \<const0>\;
  LMB_Data_Write_4(18) <= \<const0>\;
  LMB_Data_Write_4(19) <= \<const0>\;
  LMB_Data_Write_4(20) <= \<const0>\;
  LMB_Data_Write_4(21) <= \<const0>\;
  LMB_Data_Write_4(22) <= \<const0>\;
  LMB_Data_Write_4(23) <= \<const0>\;
  LMB_Data_Write_4(24) <= \<const0>\;
  LMB_Data_Write_4(25) <= \<const0>\;
  LMB_Data_Write_4(26) <= \<const0>\;
  LMB_Data_Write_4(27) <= \<const0>\;
  LMB_Data_Write_4(28) <= \<const0>\;
  LMB_Data_Write_4(29) <= \<const0>\;
  LMB_Data_Write_4(30) <= \<const0>\;
  LMB_Data_Write_4(31) <= \<const0>\;
  LMB_Data_Write_5(0) <= \<const0>\;
  LMB_Data_Write_5(1) <= \<const0>\;
  LMB_Data_Write_5(2) <= \<const0>\;
  LMB_Data_Write_5(3) <= \<const0>\;
  LMB_Data_Write_5(4) <= \<const0>\;
  LMB_Data_Write_5(5) <= \<const0>\;
  LMB_Data_Write_5(6) <= \<const0>\;
  LMB_Data_Write_5(7) <= \<const0>\;
  LMB_Data_Write_5(8) <= \<const0>\;
  LMB_Data_Write_5(9) <= \<const0>\;
  LMB_Data_Write_5(10) <= \<const0>\;
  LMB_Data_Write_5(11) <= \<const0>\;
  LMB_Data_Write_5(12) <= \<const0>\;
  LMB_Data_Write_5(13) <= \<const0>\;
  LMB_Data_Write_5(14) <= \<const0>\;
  LMB_Data_Write_5(15) <= \<const0>\;
  LMB_Data_Write_5(16) <= \<const0>\;
  LMB_Data_Write_5(17) <= \<const0>\;
  LMB_Data_Write_5(18) <= \<const0>\;
  LMB_Data_Write_5(19) <= \<const0>\;
  LMB_Data_Write_5(20) <= \<const0>\;
  LMB_Data_Write_5(21) <= \<const0>\;
  LMB_Data_Write_5(22) <= \<const0>\;
  LMB_Data_Write_5(23) <= \<const0>\;
  LMB_Data_Write_5(24) <= \<const0>\;
  LMB_Data_Write_5(25) <= \<const0>\;
  LMB_Data_Write_5(26) <= \<const0>\;
  LMB_Data_Write_5(27) <= \<const0>\;
  LMB_Data_Write_5(28) <= \<const0>\;
  LMB_Data_Write_5(29) <= \<const0>\;
  LMB_Data_Write_5(30) <= \<const0>\;
  LMB_Data_Write_5(31) <= \<const0>\;
  LMB_Data_Write_6(0) <= \<const0>\;
  LMB_Data_Write_6(1) <= \<const0>\;
  LMB_Data_Write_6(2) <= \<const0>\;
  LMB_Data_Write_6(3) <= \<const0>\;
  LMB_Data_Write_6(4) <= \<const0>\;
  LMB_Data_Write_6(5) <= \<const0>\;
  LMB_Data_Write_6(6) <= \<const0>\;
  LMB_Data_Write_6(7) <= \<const0>\;
  LMB_Data_Write_6(8) <= \<const0>\;
  LMB_Data_Write_6(9) <= \<const0>\;
  LMB_Data_Write_6(10) <= \<const0>\;
  LMB_Data_Write_6(11) <= \<const0>\;
  LMB_Data_Write_6(12) <= \<const0>\;
  LMB_Data_Write_6(13) <= \<const0>\;
  LMB_Data_Write_6(14) <= \<const0>\;
  LMB_Data_Write_6(15) <= \<const0>\;
  LMB_Data_Write_6(16) <= \<const0>\;
  LMB_Data_Write_6(17) <= \<const0>\;
  LMB_Data_Write_6(18) <= \<const0>\;
  LMB_Data_Write_6(19) <= \<const0>\;
  LMB_Data_Write_6(20) <= \<const0>\;
  LMB_Data_Write_6(21) <= \<const0>\;
  LMB_Data_Write_6(22) <= \<const0>\;
  LMB_Data_Write_6(23) <= \<const0>\;
  LMB_Data_Write_6(24) <= \<const0>\;
  LMB_Data_Write_6(25) <= \<const0>\;
  LMB_Data_Write_6(26) <= \<const0>\;
  LMB_Data_Write_6(27) <= \<const0>\;
  LMB_Data_Write_6(28) <= \<const0>\;
  LMB_Data_Write_6(29) <= \<const0>\;
  LMB_Data_Write_6(30) <= \<const0>\;
  LMB_Data_Write_6(31) <= \<const0>\;
  LMB_Data_Write_7(0) <= \<const0>\;
  LMB_Data_Write_7(1) <= \<const0>\;
  LMB_Data_Write_7(2) <= \<const0>\;
  LMB_Data_Write_7(3) <= \<const0>\;
  LMB_Data_Write_7(4) <= \<const0>\;
  LMB_Data_Write_7(5) <= \<const0>\;
  LMB_Data_Write_7(6) <= \<const0>\;
  LMB_Data_Write_7(7) <= \<const0>\;
  LMB_Data_Write_7(8) <= \<const0>\;
  LMB_Data_Write_7(9) <= \<const0>\;
  LMB_Data_Write_7(10) <= \<const0>\;
  LMB_Data_Write_7(11) <= \<const0>\;
  LMB_Data_Write_7(12) <= \<const0>\;
  LMB_Data_Write_7(13) <= \<const0>\;
  LMB_Data_Write_7(14) <= \<const0>\;
  LMB_Data_Write_7(15) <= \<const0>\;
  LMB_Data_Write_7(16) <= \<const0>\;
  LMB_Data_Write_7(17) <= \<const0>\;
  LMB_Data_Write_7(18) <= \<const0>\;
  LMB_Data_Write_7(19) <= \<const0>\;
  LMB_Data_Write_7(20) <= \<const0>\;
  LMB_Data_Write_7(21) <= \<const0>\;
  LMB_Data_Write_7(22) <= \<const0>\;
  LMB_Data_Write_7(23) <= \<const0>\;
  LMB_Data_Write_7(24) <= \<const0>\;
  LMB_Data_Write_7(25) <= \<const0>\;
  LMB_Data_Write_7(26) <= \<const0>\;
  LMB_Data_Write_7(27) <= \<const0>\;
  LMB_Data_Write_7(28) <= \<const0>\;
  LMB_Data_Write_7(29) <= \<const0>\;
  LMB_Data_Write_7(30) <= \<const0>\;
  LMB_Data_Write_7(31) <= \<const0>\;
  LMB_Data_Write_8(0) <= \<const0>\;
  LMB_Data_Write_8(1) <= \<const0>\;
  LMB_Data_Write_8(2) <= \<const0>\;
  LMB_Data_Write_8(3) <= \<const0>\;
  LMB_Data_Write_8(4) <= \<const0>\;
  LMB_Data_Write_8(5) <= \<const0>\;
  LMB_Data_Write_8(6) <= \<const0>\;
  LMB_Data_Write_8(7) <= \<const0>\;
  LMB_Data_Write_8(8) <= \<const0>\;
  LMB_Data_Write_8(9) <= \<const0>\;
  LMB_Data_Write_8(10) <= \<const0>\;
  LMB_Data_Write_8(11) <= \<const0>\;
  LMB_Data_Write_8(12) <= \<const0>\;
  LMB_Data_Write_8(13) <= \<const0>\;
  LMB_Data_Write_8(14) <= \<const0>\;
  LMB_Data_Write_8(15) <= \<const0>\;
  LMB_Data_Write_8(16) <= \<const0>\;
  LMB_Data_Write_8(17) <= \<const0>\;
  LMB_Data_Write_8(18) <= \<const0>\;
  LMB_Data_Write_8(19) <= \<const0>\;
  LMB_Data_Write_8(20) <= \<const0>\;
  LMB_Data_Write_8(21) <= \<const0>\;
  LMB_Data_Write_8(22) <= \<const0>\;
  LMB_Data_Write_8(23) <= \<const0>\;
  LMB_Data_Write_8(24) <= \<const0>\;
  LMB_Data_Write_8(25) <= \<const0>\;
  LMB_Data_Write_8(26) <= \<const0>\;
  LMB_Data_Write_8(27) <= \<const0>\;
  LMB_Data_Write_8(28) <= \<const0>\;
  LMB_Data_Write_8(29) <= \<const0>\;
  LMB_Data_Write_8(30) <= \<const0>\;
  LMB_Data_Write_8(31) <= \<const0>\;
  LMB_Data_Write_9(0) <= \<const0>\;
  LMB_Data_Write_9(1) <= \<const0>\;
  LMB_Data_Write_9(2) <= \<const0>\;
  LMB_Data_Write_9(3) <= \<const0>\;
  LMB_Data_Write_9(4) <= \<const0>\;
  LMB_Data_Write_9(5) <= \<const0>\;
  LMB_Data_Write_9(6) <= \<const0>\;
  LMB_Data_Write_9(7) <= \<const0>\;
  LMB_Data_Write_9(8) <= \<const0>\;
  LMB_Data_Write_9(9) <= \<const0>\;
  LMB_Data_Write_9(10) <= \<const0>\;
  LMB_Data_Write_9(11) <= \<const0>\;
  LMB_Data_Write_9(12) <= \<const0>\;
  LMB_Data_Write_9(13) <= \<const0>\;
  LMB_Data_Write_9(14) <= \<const0>\;
  LMB_Data_Write_9(15) <= \<const0>\;
  LMB_Data_Write_9(16) <= \<const0>\;
  LMB_Data_Write_9(17) <= \<const0>\;
  LMB_Data_Write_9(18) <= \<const0>\;
  LMB_Data_Write_9(19) <= \<const0>\;
  LMB_Data_Write_9(20) <= \<const0>\;
  LMB_Data_Write_9(21) <= \<const0>\;
  LMB_Data_Write_9(22) <= \<const0>\;
  LMB_Data_Write_9(23) <= \<const0>\;
  LMB_Data_Write_9(24) <= \<const0>\;
  LMB_Data_Write_9(25) <= \<const0>\;
  LMB_Data_Write_9(26) <= \<const0>\;
  LMB_Data_Write_9(27) <= \<const0>\;
  LMB_Data_Write_9(28) <= \<const0>\;
  LMB_Data_Write_9(29) <= \<const0>\;
  LMB_Data_Write_9(30) <= \<const0>\;
  LMB_Data_Write_9(31) <= \<const0>\;
  LMB_Read_Strobe_0 <= \<const0>\;
  LMB_Read_Strobe_1 <= \<const0>\;
  LMB_Read_Strobe_10 <= \<const0>\;
  LMB_Read_Strobe_11 <= \<const0>\;
  LMB_Read_Strobe_12 <= \<const0>\;
  LMB_Read_Strobe_13 <= \<const0>\;
  LMB_Read_Strobe_14 <= \<const0>\;
  LMB_Read_Strobe_15 <= \<const0>\;
  LMB_Read_Strobe_16 <= \<const0>\;
  LMB_Read_Strobe_17 <= \<const0>\;
  LMB_Read_Strobe_18 <= \<const0>\;
  LMB_Read_Strobe_19 <= \<const0>\;
  LMB_Read_Strobe_2 <= \<const0>\;
  LMB_Read_Strobe_20 <= \<const0>\;
  LMB_Read_Strobe_21 <= \<const0>\;
  LMB_Read_Strobe_22 <= \<const0>\;
  LMB_Read_Strobe_23 <= \<const0>\;
  LMB_Read_Strobe_24 <= \<const0>\;
  LMB_Read_Strobe_25 <= \<const0>\;
  LMB_Read_Strobe_26 <= \<const0>\;
  LMB_Read_Strobe_27 <= \<const0>\;
  LMB_Read_Strobe_28 <= \<const0>\;
  LMB_Read_Strobe_29 <= \<const0>\;
  LMB_Read_Strobe_3 <= \<const0>\;
  LMB_Read_Strobe_30 <= \<const0>\;
  LMB_Read_Strobe_31 <= \<const0>\;
  LMB_Read_Strobe_4 <= \<const0>\;
  LMB_Read_Strobe_5 <= \<const0>\;
  LMB_Read_Strobe_6 <= \<const0>\;
  LMB_Read_Strobe_7 <= \<const0>\;
  LMB_Read_Strobe_8 <= \<const0>\;
  LMB_Read_Strobe_9 <= \<const0>\;
  LMB_Write_Strobe_0 <= \<const0>\;
  LMB_Write_Strobe_1 <= \<const0>\;
  LMB_Write_Strobe_10 <= \<const0>\;
  LMB_Write_Strobe_11 <= \<const0>\;
  LMB_Write_Strobe_12 <= \<const0>\;
  LMB_Write_Strobe_13 <= \<const0>\;
  LMB_Write_Strobe_14 <= \<const0>\;
  LMB_Write_Strobe_15 <= \<const0>\;
  LMB_Write_Strobe_16 <= \<const0>\;
  LMB_Write_Strobe_17 <= \<const0>\;
  LMB_Write_Strobe_18 <= \<const0>\;
  LMB_Write_Strobe_19 <= \<const0>\;
  LMB_Write_Strobe_2 <= \<const0>\;
  LMB_Write_Strobe_20 <= \<const0>\;
  LMB_Write_Strobe_21 <= \<const0>\;
  LMB_Write_Strobe_22 <= \<const0>\;
  LMB_Write_Strobe_23 <= \<const0>\;
  LMB_Write_Strobe_24 <= \<const0>\;
  LMB_Write_Strobe_25 <= \<const0>\;
  LMB_Write_Strobe_26 <= \<const0>\;
  LMB_Write_Strobe_27 <= \<const0>\;
  LMB_Write_Strobe_28 <= \<const0>\;
  LMB_Write_Strobe_29 <= \<const0>\;
  LMB_Write_Strobe_3 <= \<const0>\;
  LMB_Write_Strobe_30 <= \<const0>\;
  LMB_Write_Strobe_31 <= \<const0>\;
  LMB_Write_Strobe_4 <= \<const0>\;
  LMB_Write_Strobe_5 <= \<const0>\;
  LMB_Write_Strobe_6 <= \<const0>\;
  LMB_Write_Strobe_7 <= \<const0>\;
  LMB_Write_Strobe_8 <= \<const0>\;
  LMB_Write_Strobe_9 <= \<const0>\;
  M_AXIS_TDATA(31) <= \<const0>\;
  M_AXIS_TDATA(30) <= \<const0>\;
  M_AXIS_TDATA(29) <= \<const0>\;
  M_AXIS_TDATA(28) <= \<const0>\;
  M_AXIS_TDATA(27) <= \<const0>\;
  M_AXIS_TDATA(26) <= \<const0>\;
  M_AXIS_TDATA(25) <= \<const0>\;
  M_AXIS_TDATA(24) <= \<const0>\;
  M_AXIS_TDATA(23) <= \<const0>\;
  M_AXIS_TDATA(22) <= \<const0>\;
  M_AXIS_TDATA(21) <= \<const0>\;
  M_AXIS_TDATA(20) <= \<const0>\;
  M_AXIS_TDATA(19) <= \<const0>\;
  M_AXIS_TDATA(18) <= \<const0>\;
  M_AXIS_TDATA(17) <= \<const0>\;
  M_AXIS_TDATA(16) <= \<const0>\;
  M_AXIS_TDATA(15) <= \<const0>\;
  M_AXIS_TDATA(14) <= \<const0>\;
  M_AXIS_TDATA(13) <= \<const0>\;
  M_AXIS_TDATA(12) <= \<const0>\;
  M_AXIS_TDATA(11) <= \<const0>\;
  M_AXIS_TDATA(10) <= \<const0>\;
  M_AXIS_TDATA(9) <= \<const0>\;
  M_AXIS_TDATA(8) <= \<const0>\;
  M_AXIS_TDATA(7) <= \<const0>\;
  M_AXIS_TDATA(6) <= \<const0>\;
  M_AXIS_TDATA(5) <= \<const0>\;
  M_AXIS_TDATA(4) <= \<const0>\;
  M_AXIS_TDATA(3) <= \<const0>\;
  M_AXIS_TDATA(2) <= \<const0>\;
  M_AXIS_TDATA(1) <= \<const0>\;
  M_AXIS_TDATA(0) <= \<const0>\;
  M_AXIS_TID(6) <= \<const0>\;
  M_AXIS_TID(5) <= \<const0>\;
  M_AXIS_TID(4) <= \<const0>\;
  M_AXIS_TID(3) <= \<const0>\;
  M_AXIS_TID(2) <= \<const0>\;
  M_AXIS_TID(1) <= \<const0>\;
  M_AXIS_TID(0) <= \<const0>\;
  M_AXIS_TVALID <= \<const0>\;
  M_AXI_ARADDR(31) <= \<const0>\;
  M_AXI_ARADDR(30) <= \<const0>\;
  M_AXI_ARADDR(29) <= \<const0>\;
  M_AXI_ARADDR(28) <= \<const0>\;
  M_AXI_ARADDR(27) <= \<const0>\;
  M_AXI_ARADDR(26) <= \<const0>\;
  M_AXI_ARADDR(25) <= \<const0>\;
  M_AXI_ARADDR(24) <= \<const0>\;
  M_AXI_ARADDR(23) <= \<const0>\;
  M_AXI_ARADDR(22) <= \<const0>\;
  M_AXI_ARADDR(21) <= \<const0>\;
  M_AXI_ARADDR(20) <= \<const0>\;
  M_AXI_ARADDR(19) <= \<const0>\;
  M_AXI_ARADDR(18) <= \<const0>\;
  M_AXI_ARADDR(17) <= \<const0>\;
  M_AXI_ARADDR(16) <= \<const0>\;
  M_AXI_ARADDR(15) <= \<const0>\;
  M_AXI_ARADDR(14) <= \<const0>\;
  M_AXI_ARADDR(13) <= \<const0>\;
  M_AXI_ARADDR(12) <= \<const0>\;
  M_AXI_ARADDR(11) <= \<const0>\;
  M_AXI_ARADDR(10) <= \<const0>\;
  M_AXI_ARADDR(9) <= \<const0>\;
  M_AXI_ARADDR(8) <= \<const0>\;
  M_AXI_ARADDR(7) <= \<const0>\;
  M_AXI_ARADDR(6) <= \<const0>\;
  M_AXI_ARADDR(5) <= \<const0>\;
  M_AXI_ARADDR(4) <= \<const0>\;
  M_AXI_ARADDR(3) <= \<const0>\;
  M_AXI_ARADDR(2) <= \<const0>\;
  M_AXI_ARADDR(1) <= \<const0>\;
  M_AXI_ARADDR(0) <= \<const0>\;
  M_AXI_ARBURST(1) <= \<const0>\;
  M_AXI_ARBURST(0) <= \<const0>\;
  M_AXI_ARCACHE(3) <= \<const0>\;
  M_AXI_ARCACHE(2) <= \<const0>\;
  M_AXI_ARCACHE(1) <= \<const0>\;
  M_AXI_ARCACHE(0) <= \<const0>\;
  M_AXI_ARID(0) <= \<const0>\;
  M_AXI_ARLEN(7) <= \<const0>\;
  M_AXI_ARLEN(6) <= \<const0>\;
  M_AXI_ARLEN(5) <= \<const0>\;
  M_AXI_ARLEN(4) <= \<const0>\;
  M_AXI_ARLEN(3) <= \<const0>\;
  M_AXI_ARLEN(2) <= \<const0>\;
  M_AXI_ARLEN(1) <= \<const0>\;
  M_AXI_ARLEN(0) <= \<const0>\;
  M_AXI_ARLOCK <= \<const0>\;
  M_AXI_ARPROT(2) <= \<const0>\;
  M_AXI_ARPROT(1) <= \<const0>\;
  M_AXI_ARPROT(0) <= \<const0>\;
  M_AXI_ARQOS(3) <= \<const0>\;
  M_AXI_ARQOS(2) <= \<const0>\;
  M_AXI_ARQOS(1) <= \<const0>\;
  M_AXI_ARQOS(0) <= \<const0>\;
  M_AXI_ARSIZE(2) <= \<const0>\;
  M_AXI_ARSIZE(1) <= \<const0>\;
  M_AXI_ARSIZE(0) <= \<const0>\;
  M_AXI_ARVALID <= \<const0>\;
  M_AXI_AWADDR(31) <= \<const0>\;
  M_AXI_AWADDR(30) <= \<const0>\;
  M_AXI_AWADDR(29) <= \<const0>\;
  M_AXI_AWADDR(28) <= \<const0>\;
  M_AXI_AWADDR(27) <= \<const0>\;
  M_AXI_AWADDR(26) <= \<const0>\;
  M_AXI_AWADDR(25) <= \<const0>\;
  M_AXI_AWADDR(24) <= \<const0>\;
  M_AXI_AWADDR(23) <= \<const0>\;
  M_AXI_AWADDR(22) <= \<const0>\;
  M_AXI_AWADDR(21) <= \<const0>\;
  M_AXI_AWADDR(20) <= \<const0>\;
  M_AXI_AWADDR(19) <= \<const0>\;
  M_AXI_AWADDR(18) <= \<const0>\;
  M_AXI_AWADDR(17) <= \<const0>\;
  M_AXI_AWADDR(16) <= \<const0>\;
  M_AXI_AWADDR(15) <= \<const0>\;
  M_AXI_AWADDR(14) <= \<const0>\;
  M_AXI_AWADDR(13) <= \<const0>\;
  M_AXI_AWADDR(12) <= \<const0>\;
  M_AXI_AWADDR(11) <= \<const0>\;
  M_AXI_AWADDR(10) <= \<const0>\;
  M_AXI_AWADDR(9) <= \<const0>\;
  M_AXI_AWADDR(8) <= \<const0>\;
  M_AXI_AWADDR(7) <= \<const0>\;
  M_AXI_AWADDR(6) <= \<const0>\;
  M_AXI_AWADDR(5) <= \<const0>\;
  M_AXI_AWADDR(4) <= \<const0>\;
  M_AXI_AWADDR(3) <= \<const0>\;
  M_AXI_AWADDR(2) <= \<const0>\;
  M_AXI_AWADDR(1) <= \<const0>\;
  M_AXI_AWADDR(0) <= \<const0>\;
  M_AXI_AWBURST(1) <= \<const0>\;
  M_AXI_AWBURST(0) <= \<const0>\;
  M_AXI_AWCACHE(3) <= \<const0>\;
  M_AXI_AWCACHE(2) <= \<const0>\;
  M_AXI_AWCACHE(1) <= \<const0>\;
  M_AXI_AWCACHE(0) <= \<const0>\;
  M_AXI_AWID(0) <= \<const0>\;
  M_AXI_AWLEN(7) <= \<const0>\;
  M_AXI_AWLEN(6) <= \<const0>\;
  M_AXI_AWLEN(5) <= \<const0>\;
  M_AXI_AWLEN(4) <= \<const0>\;
  M_AXI_AWLEN(3) <= \<const0>\;
  M_AXI_AWLEN(2) <= \<const0>\;
  M_AXI_AWLEN(1) <= \<const0>\;
  M_AXI_AWLEN(0) <= \<const0>\;
  M_AXI_AWLOCK <= \<const0>\;
  M_AXI_AWPROT(2) <= \<const0>\;
  M_AXI_AWPROT(1) <= \<const0>\;
  M_AXI_AWPROT(0) <= \<const0>\;
  M_AXI_AWQOS(3) <= \<const0>\;
  M_AXI_AWQOS(2) <= \<const0>\;
  M_AXI_AWQOS(1) <= \<const0>\;
  M_AXI_AWQOS(0) <= \<const0>\;
  M_AXI_AWSIZE(2) <= \<const0>\;
  M_AXI_AWSIZE(1) <= \<const0>\;
  M_AXI_AWSIZE(0) <= \<const0>\;
  M_AXI_AWVALID <= \<const0>\;
  M_AXI_BREADY <= \<const0>\;
  M_AXI_RREADY <= \<const0>\;
  M_AXI_WDATA(31) <= \<const0>\;
  M_AXI_WDATA(30) <= \<const0>\;
  M_AXI_WDATA(29) <= \<const0>\;
  M_AXI_WDATA(28) <= \<const0>\;
  M_AXI_WDATA(27) <= \<const0>\;
  M_AXI_WDATA(26) <= \<const0>\;
  M_AXI_WDATA(25) <= \<const0>\;
  M_AXI_WDATA(24) <= \<const0>\;
  M_AXI_WDATA(23) <= \<const0>\;
  M_AXI_WDATA(22) <= \<const0>\;
  M_AXI_WDATA(21) <= \<const0>\;
  M_AXI_WDATA(20) <= \<const0>\;
  M_AXI_WDATA(19) <= \<const0>\;
  M_AXI_WDATA(18) <= \<const0>\;
  M_AXI_WDATA(17) <= \<const0>\;
  M_AXI_WDATA(16) <= \<const0>\;
  M_AXI_WDATA(15) <= \<const0>\;
  M_AXI_WDATA(14) <= \<const0>\;
  M_AXI_WDATA(13) <= \<const0>\;
  M_AXI_WDATA(12) <= \<const0>\;
  M_AXI_WDATA(11) <= \<const0>\;
  M_AXI_WDATA(10) <= \<const0>\;
  M_AXI_WDATA(9) <= \<const0>\;
  M_AXI_WDATA(8) <= \<const0>\;
  M_AXI_WDATA(7) <= \<const0>\;
  M_AXI_WDATA(6) <= \<const0>\;
  M_AXI_WDATA(5) <= \<const0>\;
  M_AXI_WDATA(4) <= \<const0>\;
  M_AXI_WDATA(3) <= \<const0>\;
  M_AXI_WDATA(2) <= \<const0>\;
  M_AXI_WDATA(1) <= \<const0>\;
  M_AXI_WDATA(0) <= \<const0>\;
  M_AXI_WLAST <= \<const0>\;
  M_AXI_WSTRB(3) <= \<const0>\;
  M_AXI_WSTRB(2) <= \<const0>\;
  M_AXI_WSTRB(1) <= \<const0>\;
  M_AXI_WSTRB(0) <= \<const0>\;
  M_AXI_WVALID <= \<const0>\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_BRESP(1) <= \^s_axi_bresp\(1);
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_RDATA(31) <= \<const0>\;
  S_AXI_RDATA(30) <= \<const0>\;
  S_AXI_RDATA(29) <= \<const0>\;
  S_AXI_RDATA(28) <= \<const0>\;
  S_AXI_RDATA(27) <= \<const0>\;
  S_AXI_RDATA(26) <= \<const0>\;
  S_AXI_RDATA(25) <= \<const0>\;
  S_AXI_RDATA(24) <= \<const0>\;
  S_AXI_RDATA(23) <= \<const0>\;
  S_AXI_RDATA(22) <= \<const0>\;
  S_AXI_RDATA(21) <= \<const0>\;
  S_AXI_RDATA(20) <= \<const0>\;
  S_AXI_RDATA(19) <= \<const0>\;
  S_AXI_RDATA(18) <= \<const0>\;
  S_AXI_RDATA(17) <= \<const0>\;
  S_AXI_RDATA(16) <= \<const0>\;
  S_AXI_RDATA(15) <= \<const0>\;
  S_AXI_RDATA(14) <= \<const0>\;
  S_AXI_RDATA(13) <= \<const0>\;
  S_AXI_RDATA(12) <= \<const0>\;
  S_AXI_RDATA(11) <= \<const0>\;
  S_AXI_RDATA(10) <= \<const0>\;
  S_AXI_RDATA(9) <= \<const0>\;
  S_AXI_RDATA(8) <= \<const0>\;
  S_AXI_RDATA(7 downto 0) <= \^s_axi_rdata\(7 downto 0);
  S_AXI_RRESP(1) <= \^s_axi_rresp\(1);
  S_AXI_RRESP(0) <= \<const0>\;
  S_AXI_WREADY <= \^s_axi_awready\;
  TRACE_CLK_OUT <= \<const0>\;
  TRACE_CTL <= \<const1>\;
  TRACE_DATA(31) <= \<const0>\;
  TRACE_DATA(30) <= \<const0>\;
  TRACE_DATA(29) <= \<const0>\;
  TRACE_DATA(28) <= \<const0>\;
  TRACE_DATA(27) <= \<const0>\;
  TRACE_DATA(26) <= \<const0>\;
  TRACE_DATA(25) <= \<const0>\;
  TRACE_DATA(24) <= \<const0>\;
  TRACE_DATA(23) <= \<const0>\;
  TRACE_DATA(22) <= \<const0>\;
  TRACE_DATA(21) <= \<const0>\;
  TRACE_DATA(20) <= \<const0>\;
  TRACE_DATA(19) <= \<const0>\;
  TRACE_DATA(18) <= \<const0>\;
  TRACE_DATA(17) <= \<const0>\;
  TRACE_DATA(16) <= \<const0>\;
  TRACE_DATA(15) <= \<const0>\;
  TRACE_DATA(14) <= \<const0>\;
  TRACE_DATA(13) <= \<const0>\;
  TRACE_DATA(12) <= \<const0>\;
  TRACE_DATA(11) <= \<const0>\;
  TRACE_DATA(10) <= \<const0>\;
  TRACE_DATA(9) <= \<const0>\;
  TRACE_DATA(8) <= \<const0>\;
  TRACE_DATA(7) <= \<const0>\;
  TRACE_DATA(6) <= \<const0>\;
  TRACE_DATA(5) <= \<const0>\;
  TRACE_DATA(4) <= \<const0>\;
  TRACE_DATA(3) <= \<const0>\;
  TRACE_DATA(2) <= \<const0>\;
  TRACE_DATA(1) <= \<const0>\;
  TRACE_DATA(0) <= \<const0>\;
  Trig_Ack_In_0 <= \<const0>\;
  Trig_Ack_In_1 <= \<const0>\;
  Trig_Ack_In_2 <= \<const0>\;
  Trig_Ack_In_3 <= \<const0>\;
  Trig_Out_0 <= \<const0>\;
  Trig_Out_1 <= \<const0>\;
  Trig_Out_2 <= \<const0>\;
  Trig_Out_3 <= \<const0>\;
  bscan_ext_tdo <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
MDM_Core_I1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MDM_Core
     port map (
      AR(0) => sel_n_reset,
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      CLK => \^ext_jtag_update\,
      D(0) => p_1_in(15),
      Dbg_Disable_0 => Dbg_Disable_0,
      Dbg_Reg_En_0(0 to 7) => Dbg_Reg_En_0(0 to 7),
      Dbg_Rst_0 => Dbg_Rst_0,
      Dbg_TDI_31 => \^dbg_tdi_31\,
      Dbg_TDO_0 => Dbg_TDO_0,
      Debug_SYS_Rst => Debug_SYS_Rst,
      E(0) => \^dbg_shift_0\,
      Ext_BRK => Ext_BRK,
      Ext_JTAG_SEL => Ext_JTAG_SEL,
      Ext_JTAG_TDO => Ext_JTAG_TDO,
      Ext_NM_BRK => Ext_NM_BRK,
      FIFO_Write => \JTAG_CONTROL_I/FIFO_Write\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\ => \Use_AXI_IPIF.AXI_LITE_IPIF_I_n_15\,
      Interrupt => Interrupt,
      Q(0) => MDM_Core_I1_n_0,
      RX_Data(0 to 7) => RX_Data(0 to 7),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_WDATA(7 downto 0) => S_AXI_WDATA(7 downto 0),
      Scan_Reset => Scan_Reset,
      Scan_Reset_Sel => Scan_Reset_Sel,
      \Use_BSCAN.PORT_Selector_reg[0]_0\ => \^dbg_clk_31\,
      \Use_BSCAN.PORT_Selector_reg[0]_1\ => \^ext_jtag_shift\,
      \Use_BSCAN.PORT_Selector_reg[0]_2\ => \^ext_jtag_capture\,
      \Use_BSCAN.PORT_Selector_reg[0]_3\(0) => \Use_E2.BSCAN_I_n_7\,
      \Use_Serial_Unified_Completion.completion_status_reg[15]\(0) => MDM_Core_I1_n_35,
      \Use_Serial_Unified_Completion.count_reg[4]\(0) => \JTAG_CONTROL_I/Use_Serial_Unified_Completion.count_reg\(5),
      \Use_Serial_Unified_Completion.count_reg[5]\(0) => p_0_in(0),
      \Use_Uart.clear_Ext_BRK_reg_0\ => MDM_Core_I1_n_12,
      \Using_FPGA.Native\(0) => \Use_E2.BSCAN_I_n_13\,
      bus2ip_rdce(0) => bus2ip_rdce(3),
      bus2ip_wrce(0) => bus2ip_wrce(2),
      clear_Ext_BRK => clear_Ext_BRK,
      \command_reg[5]\(0) => \Use_E2.BSCAN_I_n_14\,
      enable_interrupts => enable_interrupts,
      fifo_Data_Present => \JTAG_CONTROL_I/fifo_Data_Present\,
      \out\ => \JTAG_CONTROL_I/p_0_in28_in\,
      p_0_in => p_0_in_0,
      \p_31_out__0\ => \JTAG_CONTROL_I/p_31_out__0\,
      \p_54_out__0\ => \JTAG_CONTROL_I/p_54_out__0\,
      reset_RX_FIFO => reset_RX_FIFO,
      reset_TX_FIFO => reset_TX_FIFO,
      rx_Data_Present => rx_Data_Present,
      sel => sel,
      \shift_Count_reg[0]\(0) => \p_0_in__0\(0),
      shift_n_reset => shift_n_reset,
      tdo => tdo,
      tx_Buffer_Full => tx_Buffer_Full
    );
\No_Dbg_Reg_Access.BUFG_DRCK\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_BUFG
     port map (
      Dbg_Clk_31 => \^dbg_clk_31\,
      drck_i => drck_i
    );
\Use_AXI_IPIF.AXI_LITE_IPIF_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif
     port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      FIFO_Write => \JTAG_CONTROL_I/FIFO_Write\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      RX_Data(0 to 7) => RX_Data(0 to 7),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(1 downto 0) => S_AXI_ARADDR(3 downto 2),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARESETN_0 => MDM_Core_I1_n_12,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(1 downto 0) => S_AXI_AWADDR(3 downto 2),
      S_AXI_AWREADY => \^s_axi_awready\,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BRESP(0) => \^s_axi_bresp\(1),
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(7 downto 0) => \^s_axi_rdata\(7 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RRESP(0) => \^s_axi_rresp\(1),
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WDATA(3) => S_AXI_WDATA(4),
      S_AXI_WDATA(2 downto 0) => S_AXI_WDATA(2 downto 0),
      S_AXI_WVALID => S_AXI_WVALID,
      \Use_Uart.enable_interrupts_reg\ => \Use_AXI_IPIF.AXI_LITE_IPIF_I_n_15\,
      bus2ip_rdce(0) => bus2ip_rdce(3),
      bus2ip_wrce(0) => bus2ip_wrce(2),
      clear_Ext_BRK => clear_Ext_BRK,
      enable_interrupts => enable_interrupts,
      fifo_Data_Present => \JTAG_CONTROL_I/fifo_Data_Present\,
      \out\ => \JTAG_CONTROL_I/p_0_in28_in\,
      p_0_in => p_0_in_0,
      reset_RX_FIFO => reset_RX_FIFO,
      reset_TX_FIFO => reset_TX_FIFO,
      rx_Data_Present => rx_Data_Present,
      tx_Buffer_Full => tx_Buffer_Full
    );
\Use_E2.BSCAN_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_BSCANE2
     port map (
      AR(0) => sel_n_reset,
      D(0) => p_1_in(15),
      Dbg_Capture_0 => \^ext_jtag_capture\,
      Dbg_TDI_31 => \^dbg_tdi_31\,
      Ext_JTAG_RESET => Ext_JTAG_RESET,
      Ext_JTAG_UPDATE => \^ext_jtag_update\,
      Q(0) => MDM_Core_I1_n_0,
      Scan_Reset => Scan_Reset,
      Scan_Reset_Sel => Scan_Reset_Sel,
      \Use_Serial_Unified_Completion.completion_status_reg[15]\ => \^ext_jtag_shift\,
      \Use_Serial_Unified_Completion.completion_status_reg[15]_0\(0) => \Use_E2.BSCAN_I_n_13\,
      \Use_Serial_Unified_Completion.count_reg[0]__0\(0) => \Use_E2.BSCAN_I_n_14\,
      \Use_Serial_Unified_Completion.count_reg[5]\(0) => p_0_in(0),
      \Use_Serial_Unified_Completion.count_reg[5]_0\(0) => \JTAG_CONTROL_I/Use_Serial_Unified_Completion.count_reg\(5),
      \Use_Serial_Unified_Completion.sample_1_reg[15]\(0) => MDM_Core_I1_n_35,
      \Use_UART.tdo_reg_reg[7]\(0) => \Use_E2.BSCAN_I_n_7\,
      drck_i => drck_i,
      \p_31_out__0\ => \JTAG_CONTROL_I/p_31_out__0\,
      \p_54_out__0\ => \JTAG_CONTROL_I/p_54_out__0\,
      sel => sel,
      \shift_Count_reg[0]\(0) => \p_0_in__0\(0),
      shift_n_reset => shift_n_reset,
      tdo => tdo
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    Interrupt : out STD_LOGIC;
    Debug_SYS_Rst : out STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    Dbg_Clk_0 : out STD_LOGIC;
    Dbg_TDI_0 : out STD_LOGIC;
    Dbg_TDO_0 : in STD_LOGIC;
    Dbg_Reg_En_0 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_0 : out STD_LOGIC;
    Dbg_Shift_0 : out STD_LOGIC;
    Dbg_Update_0 : out STD_LOGIC;
    Dbg_Rst_0 : out STD_LOGIC;
    Dbg_Disable_0 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_mdm_1_0,MDM,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "MDM,Vivado 2016.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_U0_Dbg_ARVALID_0_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_ARVALID_1_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_ARVALID_10_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_ARVALID_11_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_ARVALID_12_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_ARVALID_13_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_ARVALID_14_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_ARVALID_15_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_ARVALID_16_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_ARVALID_17_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_ARVALID_18_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_ARVALID_19_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_ARVALID_2_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_ARVALID_20_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_ARVALID_21_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_ARVALID_22_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_ARVALID_23_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_ARVALID_24_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_ARVALID_25_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_ARVALID_26_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_ARVALID_27_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_ARVALID_28_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_ARVALID_29_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_ARVALID_3_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_ARVALID_30_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_ARVALID_31_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_ARVALID_4_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_ARVALID_5_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_ARVALID_6_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_ARVALID_7_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_ARVALID_8_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_ARVALID_9_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_AWVALID_0_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_AWVALID_1_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_AWVALID_10_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_AWVALID_11_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_AWVALID_12_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_AWVALID_13_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_AWVALID_14_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_AWVALID_15_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_AWVALID_16_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_AWVALID_17_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_AWVALID_18_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_AWVALID_19_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_AWVALID_2_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_AWVALID_20_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_AWVALID_21_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_AWVALID_22_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_AWVALID_23_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_AWVALID_24_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_AWVALID_25_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_AWVALID_26_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_AWVALID_27_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_AWVALID_28_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_AWVALID_29_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_AWVALID_3_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_AWVALID_30_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_AWVALID_31_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_AWVALID_4_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_AWVALID_5_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_AWVALID_6_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_AWVALID_7_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_AWVALID_8_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_AWVALID_9_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_BREADY_0_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_BREADY_1_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_BREADY_10_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_BREADY_11_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_BREADY_12_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_BREADY_13_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_BREADY_14_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_BREADY_15_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_BREADY_16_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_BREADY_17_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_BREADY_18_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_BREADY_19_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_BREADY_2_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_BREADY_20_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_BREADY_21_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_BREADY_22_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_BREADY_23_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_BREADY_24_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_BREADY_25_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_BREADY_26_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_BREADY_27_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_BREADY_28_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_BREADY_29_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_BREADY_3_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_BREADY_30_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_BREADY_31_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_BREADY_4_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_BREADY_5_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_BREADY_6_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_BREADY_7_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_BREADY_8_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_BREADY_9_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Capture_1_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Capture_10_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Capture_11_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Capture_12_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Capture_13_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Capture_14_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Capture_15_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Capture_16_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Capture_17_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Capture_18_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Capture_19_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Capture_2_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Capture_20_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Capture_21_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Capture_22_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Capture_23_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Capture_24_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Capture_25_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Capture_26_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Capture_27_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Capture_28_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Capture_29_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Capture_3_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Capture_30_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Capture_31_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Capture_4_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Capture_5_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Capture_6_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Capture_7_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Capture_8_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Capture_9_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Clk_1_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Clk_10_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Clk_11_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Clk_12_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Clk_13_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Clk_14_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Clk_15_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Clk_16_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Clk_17_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Clk_18_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Clk_19_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Clk_2_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Clk_20_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Clk_21_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Clk_22_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Clk_23_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Clk_24_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Clk_25_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Clk_26_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Clk_27_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Clk_28_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Clk_29_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Clk_3_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Clk_30_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Clk_31_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Clk_4_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Clk_5_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Clk_6_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Clk_7_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Clk_8_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Clk_9_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Disable_1_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Disable_10_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Disable_11_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Disable_12_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Disable_13_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Disable_14_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Disable_15_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Disable_16_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Disable_17_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Disable_18_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Disable_19_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Disable_2_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Disable_20_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Disable_21_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Disable_22_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Disable_23_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Disable_24_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Disable_25_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Disable_26_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Disable_27_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Disable_28_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Disable_29_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Disable_3_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Disable_30_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Disable_31_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Disable_4_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Disable_5_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Disable_6_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Disable_7_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Disable_8_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Disable_9_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_RREADY_0_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_RREADY_1_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_RREADY_10_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_RREADY_11_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_RREADY_12_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_RREADY_13_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_RREADY_14_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_RREADY_15_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_RREADY_16_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_RREADY_17_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_RREADY_18_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_RREADY_19_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_RREADY_2_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_RREADY_20_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_RREADY_21_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_RREADY_22_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_RREADY_23_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_RREADY_24_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_RREADY_25_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_RREADY_26_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_RREADY_27_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_RREADY_28_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_RREADY_29_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_RREADY_3_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_RREADY_30_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_RREADY_31_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_RREADY_4_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_RREADY_5_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_RREADY_6_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_RREADY_7_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_RREADY_8_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_RREADY_9_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Rst_1_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Rst_10_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Rst_11_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Rst_12_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Rst_13_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Rst_14_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Rst_15_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Rst_16_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Rst_17_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Rst_18_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Rst_19_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Rst_2_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Rst_20_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Rst_21_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Rst_22_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Rst_23_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Rst_24_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Rst_25_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Rst_26_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Rst_27_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Rst_28_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Rst_29_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Rst_3_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Rst_30_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Rst_31_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Rst_4_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Rst_5_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Rst_6_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Rst_7_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Rst_8_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Rst_9_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Shift_1_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Shift_10_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Shift_11_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Shift_12_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Shift_13_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Shift_14_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Shift_15_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Shift_16_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Shift_17_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Shift_18_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Shift_19_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Shift_2_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Shift_20_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Shift_21_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Shift_22_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Shift_23_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Shift_24_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Shift_25_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Shift_26_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Shift_27_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Shift_28_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Shift_29_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Shift_3_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Shift_30_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Shift_31_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Shift_4_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Shift_5_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Shift_6_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Shift_7_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Shift_8_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Shift_9_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TDI_1_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TDI_10_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TDI_11_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TDI_12_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TDI_13_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TDI_14_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TDI_15_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TDI_16_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TDI_17_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TDI_18_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TDI_19_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TDI_2_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TDI_20_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TDI_21_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TDI_22_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TDI_23_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TDI_24_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TDI_25_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TDI_26_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TDI_27_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TDI_28_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TDI_29_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TDI_3_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TDI_30_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TDI_31_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TDI_4_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TDI_5_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TDI_6_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TDI_7_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TDI_8_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TDI_9_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrClk_0_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrClk_1_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrClk_10_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrClk_11_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrClk_12_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrClk_13_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrClk_14_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrClk_15_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrClk_16_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrClk_17_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrClk_18_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrClk_19_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrClk_2_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrClk_20_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrClk_21_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrClk_22_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrClk_23_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrClk_24_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrClk_25_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrClk_26_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrClk_27_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrClk_28_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrClk_29_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrClk_3_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrClk_30_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrClk_31_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrClk_4_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrClk_5_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrClk_6_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrClk_7_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrClk_8_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrClk_9_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrReady_0_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrReady_1_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrReady_10_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrReady_11_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrReady_12_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrReady_13_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrReady_14_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrReady_15_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrReady_16_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrReady_17_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrReady_18_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrReady_19_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrReady_2_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrReady_20_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrReady_21_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrReady_22_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrReady_23_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrReady_24_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrReady_25_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrReady_26_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrReady_27_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrReady_28_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrReady_29_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrReady_3_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrReady_30_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrReady_31_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrReady_4_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrReady_5_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrReady_6_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrReady_7_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrReady_8_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_TrReady_9_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Update_1_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Update_10_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Update_11_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Update_12_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Update_13_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Update_14_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Update_15_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Update_16_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Update_17_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Update_18_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Update_19_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Update_2_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Update_20_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Update_21_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Update_22_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Update_23_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Update_24_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Update_25_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Update_26_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Update_27_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Update_28_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Update_29_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Update_3_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Update_30_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Update_31_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Update_4_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Update_5_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Update_6_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Update_7_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Update_8_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_Update_9_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_WVALID_0_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_WVALID_1_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_WVALID_10_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_WVALID_11_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_WVALID_12_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_WVALID_13_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_WVALID_14_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_WVALID_15_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_WVALID_16_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_WVALID_17_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_WVALID_18_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_WVALID_19_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_WVALID_2_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_WVALID_20_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_WVALID_21_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_WVALID_22_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_WVALID_23_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_WVALID_24_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_WVALID_25_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_WVALID_26_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_WVALID_27_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_WVALID_28_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_WVALID_29_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_WVALID_3_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_WVALID_30_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_WVALID_31_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_WVALID_4_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_WVALID_5_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_WVALID_6_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_WVALID_7_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_WVALID_8_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_WVALID_9_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Ext_BRK_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Ext_JTAG_CAPTURE_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Ext_JTAG_DRCK_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Ext_JTAG_RESET_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Ext_JTAG_SEL_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Ext_JTAG_SHIFT_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Ext_JTAG_TDI_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Ext_JTAG_UPDATE_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Ext_NM_BRK_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Addr_Strobe_0_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Addr_Strobe_1_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Addr_Strobe_10_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Addr_Strobe_11_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Addr_Strobe_12_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Addr_Strobe_13_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Addr_Strobe_14_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Addr_Strobe_15_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Addr_Strobe_16_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Addr_Strobe_17_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Addr_Strobe_18_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Addr_Strobe_19_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Addr_Strobe_2_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Addr_Strobe_20_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Addr_Strobe_21_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Addr_Strobe_22_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Addr_Strobe_23_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Addr_Strobe_24_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Addr_Strobe_25_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Addr_Strobe_26_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Addr_Strobe_27_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Addr_Strobe_28_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Addr_Strobe_29_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Addr_Strobe_3_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Addr_Strobe_30_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Addr_Strobe_31_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Addr_Strobe_4_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Addr_Strobe_5_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Addr_Strobe_6_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Addr_Strobe_7_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Addr_Strobe_8_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Addr_Strobe_9_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Read_Strobe_0_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Read_Strobe_1_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Read_Strobe_10_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Read_Strobe_11_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Read_Strobe_12_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Read_Strobe_13_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Read_Strobe_14_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Read_Strobe_15_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Read_Strobe_16_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Read_Strobe_17_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Read_Strobe_18_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Read_Strobe_19_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Read_Strobe_2_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Read_Strobe_20_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Read_Strobe_21_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Read_Strobe_22_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Read_Strobe_23_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Read_Strobe_24_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Read_Strobe_25_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Read_Strobe_26_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Read_Strobe_27_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Read_Strobe_28_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Read_Strobe_29_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Read_Strobe_3_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Read_Strobe_30_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Read_Strobe_31_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Read_Strobe_4_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Read_Strobe_5_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Read_Strobe_6_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Read_Strobe_7_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Read_Strobe_8_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Read_Strobe_9_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Write_Strobe_0_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Write_Strobe_1_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Write_Strobe_10_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Write_Strobe_11_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Write_Strobe_12_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Write_Strobe_13_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Write_Strobe_14_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Write_Strobe_15_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Write_Strobe_16_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Write_Strobe_17_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Write_Strobe_18_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Write_Strobe_19_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Write_Strobe_2_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Write_Strobe_20_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Write_Strobe_21_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Write_Strobe_22_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Write_Strobe_23_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Write_Strobe_24_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Write_Strobe_25_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Write_Strobe_26_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Write_Strobe_27_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Write_Strobe_28_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Write_Strobe_29_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Write_Strobe_3_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Write_Strobe_30_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Write_Strobe_31_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Write_Strobe_4_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Write_Strobe_5_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Write_Strobe_6_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Write_Strobe_7_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Write_Strobe_8_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_Write_Strobe_9_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXIS_TVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI_ARLOCK_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI_ARVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI_AWLOCK_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI_AWVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI_BREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI_RREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI_WLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI_WVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_TRACE_CLK_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_TRACE_CTL_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Trig_Ack_In_0_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Trig_Ack_In_1_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Trig_Ack_In_2_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Trig_Ack_In_3_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Trig_Out_0_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Trig_Out_1_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Trig_Out_2_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Trig_Out_3_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_bscan_ext_tdo_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Dbg_ARADDR_0_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_ARADDR_1_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_ARADDR_10_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_ARADDR_11_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_ARADDR_12_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_ARADDR_13_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_ARADDR_14_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_ARADDR_15_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_ARADDR_16_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_ARADDR_17_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_ARADDR_18_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_ARADDR_19_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_ARADDR_2_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_ARADDR_20_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_ARADDR_21_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_ARADDR_22_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_ARADDR_23_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_ARADDR_24_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_ARADDR_25_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_ARADDR_26_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_ARADDR_27_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_ARADDR_28_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_ARADDR_29_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_ARADDR_3_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_ARADDR_30_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_ARADDR_31_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_ARADDR_4_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_ARADDR_5_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_ARADDR_6_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_ARADDR_7_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_ARADDR_8_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_ARADDR_9_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_AWADDR_0_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_AWADDR_1_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_AWADDR_10_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_AWADDR_11_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_AWADDR_12_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_AWADDR_13_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_AWADDR_14_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_AWADDR_15_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_AWADDR_16_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_AWADDR_17_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_AWADDR_18_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_AWADDR_19_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_AWADDR_2_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_AWADDR_20_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_AWADDR_21_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_AWADDR_22_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_AWADDR_23_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_AWADDR_24_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_AWADDR_25_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_AWADDR_26_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_AWADDR_27_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_AWADDR_28_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_AWADDR_29_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_AWADDR_3_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_AWADDR_30_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_AWADDR_31_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_AWADDR_4_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_AWADDR_5_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_AWADDR_6_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_AWADDR_7_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_AWADDR_8_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_AWADDR_9_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_U0_Dbg_Reg_En_1_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Reg_En_10_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Reg_En_11_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Reg_En_12_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Reg_En_13_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Reg_En_14_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Reg_En_15_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Reg_En_16_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Reg_En_17_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Reg_En_18_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Reg_En_19_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Reg_En_2_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Reg_En_20_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Reg_En_21_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Reg_En_22_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Reg_En_23_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Reg_En_24_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Reg_En_25_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Reg_En_26_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Reg_En_27_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Reg_En_28_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Reg_En_29_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Reg_En_3_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Reg_En_30_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Reg_En_31_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Reg_En_4_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Reg_En_5_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Reg_En_6_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Reg_En_7_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Reg_En_8_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Reg_En_9_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Ack_In_0_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Ack_In_1_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Ack_In_10_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Ack_In_11_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Ack_In_12_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Ack_In_13_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Ack_In_14_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Ack_In_15_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Ack_In_16_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Ack_In_17_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Ack_In_18_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Ack_In_19_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Ack_In_2_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Ack_In_20_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Ack_In_21_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Ack_In_22_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Ack_In_23_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Ack_In_24_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Ack_In_25_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Ack_In_26_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Ack_In_27_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Ack_In_28_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Ack_In_29_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Ack_In_3_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Ack_In_30_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Ack_In_31_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Ack_In_4_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Ack_In_5_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Ack_In_6_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Ack_In_7_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Ack_In_8_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Ack_In_9_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Out_0_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Out_1_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Out_10_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Out_11_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Out_12_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Out_13_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Out_14_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Out_15_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Out_16_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Out_17_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Out_18_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Out_19_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Out_2_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Out_20_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Out_21_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Out_22_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Out_23_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Out_24_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Out_25_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Out_26_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Out_27_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Out_28_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Out_29_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Out_3_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Out_30_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Out_31_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Out_4_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Out_5_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Out_6_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Out_7_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Out_8_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_Trig_Out_9_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Dbg_WDATA_0_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_Dbg_WDATA_1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_Dbg_WDATA_10_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_Dbg_WDATA_11_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_Dbg_WDATA_12_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_Dbg_WDATA_13_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_Dbg_WDATA_14_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_Dbg_WDATA_15_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_Dbg_WDATA_16_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_Dbg_WDATA_17_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_Dbg_WDATA_18_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_Dbg_WDATA_19_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_Dbg_WDATA_2_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_Dbg_WDATA_20_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_Dbg_WDATA_21_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_Dbg_WDATA_22_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_Dbg_WDATA_23_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_Dbg_WDATA_24_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_Dbg_WDATA_25_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_Dbg_WDATA_26_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_Dbg_WDATA_27_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_Dbg_WDATA_28_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_Dbg_WDATA_29_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_Dbg_WDATA_3_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_Dbg_WDATA_30_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_Dbg_WDATA_31_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_Dbg_WDATA_4_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_Dbg_WDATA_5_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_Dbg_WDATA_6_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_Dbg_WDATA_7_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_Dbg_WDATA_8_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_Dbg_WDATA_9_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_LMB_Byte_Enable_0_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_U0_LMB_Byte_Enable_1_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_U0_LMB_Byte_Enable_10_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_U0_LMB_Byte_Enable_11_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_U0_LMB_Byte_Enable_12_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_U0_LMB_Byte_Enable_13_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_U0_LMB_Byte_Enable_14_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_U0_LMB_Byte_Enable_15_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_U0_LMB_Byte_Enable_16_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_U0_LMB_Byte_Enable_17_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_U0_LMB_Byte_Enable_18_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_U0_LMB_Byte_Enable_19_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_U0_LMB_Byte_Enable_2_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_U0_LMB_Byte_Enable_20_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_U0_LMB_Byte_Enable_21_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_U0_LMB_Byte_Enable_22_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_U0_LMB_Byte_Enable_23_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_U0_LMB_Byte_Enable_24_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_U0_LMB_Byte_Enable_25_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_U0_LMB_Byte_Enable_26_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_U0_LMB_Byte_Enable_27_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_U0_LMB_Byte_Enable_28_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_U0_LMB_Byte_Enable_29_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_U0_LMB_Byte_Enable_3_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_U0_LMB_Byte_Enable_30_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_U0_LMB_Byte_Enable_31_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_U0_LMB_Byte_Enable_4_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_U0_LMB_Byte_Enable_5_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_U0_LMB_Byte_Enable_6_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_U0_LMB_Byte_Enable_7_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_U0_LMB_Byte_Enable_8_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_U0_LMB_Byte_Enable_9_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_U0_LMB_Data_Addr_0_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Addr_1_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Addr_10_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Addr_11_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Addr_12_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Addr_13_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Addr_14_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Addr_15_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Addr_16_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Addr_17_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Addr_18_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Addr_19_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Addr_2_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Addr_20_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Addr_21_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Addr_22_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Addr_23_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Addr_24_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Addr_25_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Addr_26_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Addr_27_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Addr_28_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Addr_29_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Addr_3_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Addr_30_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Addr_31_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Addr_4_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Addr_5_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Addr_6_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Addr_7_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Addr_8_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Addr_9_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Write_0_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Write_1_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Write_10_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Write_11_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Write_12_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Write_13_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Write_14_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Write_15_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Write_16_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Write_17_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Write_18_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Write_19_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Write_2_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Write_20_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Write_21_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Write_22_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Write_23_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Write_24_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Write_25_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Write_26_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Write_27_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Write_28_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Write_29_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Write_3_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Write_30_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Write_31_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Write_4_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Write_5_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Write_6_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Write_7_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Write_8_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_Data_Write_9_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_M_AXIS_TDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_M_AXIS_TID_UNCONNECTED : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_U0_M_AXI_ARADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_M_AXI_ARBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_M_AXI_ARCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_M_AXI_ARID_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_M_AXI_ARLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_M_AXI_ARPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_M_AXI_ARQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_M_AXI_ARSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_M_AXI_AWADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_M_AXI_AWBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_M_AXI_AWCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_M_AXI_AWID_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_M_AXI_AWLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_M_AXI_AWPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_M_AXI_AWQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_M_AXI_AWSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_M_AXI_WDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_M_AXI_WSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_TRACE_DATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute C_DATA_SIZE : integer;
  attribute C_DATA_SIZE of U0 : label is 32;
  attribute C_DBG_MEM_ACCESS : integer;
  attribute C_DBG_MEM_ACCESS of U0 : label is 0;
  attribute C_DBG_REG_ACCESS : integer;
  attribute C_DBG_REG_ACCESS of U0 : label is 0;
  attribute C_DEBUG_INTERFACE : integer;
  attribute C_DEBUG_INTERFACE of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "virtex7";
  attribute C_INTERCONNECT : integer;
  attribute C_INTERCONNECT of U0 : label is 2;
  attribute C_JTAG_CHAIN : integer;
  attribute C_JTAG_CHAIN of U0 : label is 2;
  attribute C_MB_DBG_PORTS : integer;
  attribute C_MB_DBG_PORTS of U0 : label is 1;
  attribute C_M_AXIS_DATA_WIDTH : integer;
  attribute C_M_AXIS_DATA_WIDTH of U0 : label is 32;
  attribute C_M_AXIS_ID_WIDTH : integer;
  attribute C_M_AXIS_ID_WIDTH of U0 : label is 7;
  attribute C_M_AXI_ADDR_WIDTH : integer;
  attribute C_M_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_M_AXI_DATA_WIDTH : integer;
  attribute C_M_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_M_AXI_THREAD_ID_WIDTH : integer;
  attribute C_M_AXI_THREAD_ID_WIDTH of U0 : label is 1;
  attribute C_S_AXI_ACLK_FREQ_HZ : integer;
  attribute C_S_AXI_ACLK_FREQ_HZ of U0 : label is 100000000;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_TRACE_CLK_FREQ_HZ : integer;
  attribute C_TRACE_CLK_FREQ_HZ of U0 : label is 200000000;
  attribute C_TRACE_CLK_OUT_PHASE : integer;
  attribute C_TRACE_CLK_OUT_PHASE of U0 : label is 90;
  attribute C_TRACE_DATA_WIDTH : integer;
  attribute C_TRACE_DATA_WIDTH of U0 : label is 32;
  attribute C_TRACE_OUTPUT : integer;
  attribute C_TRACE_OUTPUT of U0 : label is 0;
  attribute C_USE_BSCAN : integer;
  attribute C_USE_BSCAN of U0 : label is 0;
  attribute C_USE_CONFIG_RESET : integer;
  attribute C_USE_CONFIG_RESET of U0 : label is 0;
  attribute C_USE_CROSS_TRIGGER : integer;
  attribute C_USE_CROSS_TRIGGER of U0 : label is 0;
  attribute C_USE_UART : integer;
  attribute C_USE_UART of U0 : label is 1;
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MDM
     port map (
      Config_Reset => '0',
      Dbg_ARADDR_0(14 downto 2) => NLW_U0_Dbg_ARADDR_0_UNCONNECTED(14 downto 2),
      Dbg_ARADDR_1(14 downto 2) => NLW_U0_Dbg_ARADDR_1_UNCONNECTED(14 downto 2),
      Dbg_ARADDR_10(14 downto 2) => NLW_U0_Dbg_ARADDR_10_UNCONNECTED(14 downto 2),
      Dbg_ARADDR_11(14 downto 2) => NLW_U0_Dbg_ARADDR_11_UNCONNECTED(14 downto 2),
      Dbg_ARADDR_12(14 downto 2) => NLW_U0_Dbg_ARADDR_12_UNCONNECTED(14 downto 2),
      Dbg_ARADDR_13(14 downto 2) => NLW_U0_Dbg_ARADDR_13_UNCONNECTED(14 downto 2),
      Dbg_ARADDR_14(14 downto 2) => NLW_U0_Dbg_ARADDR_14_UNCONNECTED(14 downto 2),
      Dbg_ARADDR_15(14 downto 2) => NLW_U0_Dbg_ARADDR_15_UNCONNECTED(14 downto 2),
      Dbg_ARADDR_16(14 downto 2) => NLW_U0_Dbg_ARADDR_16_UNCONNECTED(14 downto 2),
      Dbg_ARADDR_17(14 downto 2) => NLW_U0_Dbg_ARADDR_17_UNCONNECTED(14 downto 2),
      Dbg_ARADDR_18(14 downto 2) => NLW_U0_Dbg_ARADDR_18_UNCONNECTED(14 downto 2),
      Dbg_ARADDR_19(14 downto 2) => NLW_U0_Dbg_ARADDR_19_UNCONNECTED(14 downto 2),
      Dbg_ARADDR_2(14 downto 2) => NLW_U0_Dbg_ARADDR_2_UNCONNECTED(14 downto 2),
      Dbg_ARADDR_20(14 downto 2) => NLW_U0_Dbg_ARADDR_20_UNCONNECTED(14 downto 2),
      Dbg_ARADDR_21(14 downto 2) => NLW_U0_Dbg_ARADDR_21_UNCONNECTED(14 downto 2),
      Dbg_ARADDR_22(14 downto 2) => NLW_U0_Dbg_ARADDR_22_UNCONNECTED(14 downto 2),
      Dbg_ARADDR_23(14 downto 2) => NLW_U0_Dbg_ARADDR_23_UNCONNECTED(14 downto 2),
      Dbg_ARADDR_24(14 downto 2) => NLW_U0_Dbg_ARADDR_24_UNCONNECTED(14 downto 2),
      Dbg_ARADDR_25(14 downto 2) => NLW_U0_Dbg_ARADDR_25_UNCONNECTED(14 downto 2),
      Dbg_ARADDR_26(14 downto 2) => NLW_U0_Dbg_ARADDR_26_UNCONNECTED(14 downto 2),
      Dbg_ARADDR_27(14 downto 2) => NLW_U0_Dbg_ARADDR_27_UNCONNECTED(14 downto 2),
      Dbg_ARADDR_28(14 downto 2) => NLW_U0_Dbg_ARADDR_28_UNCONNECTED(14 downto 2),
      Dbg_ARADDR_29(14 downto 2) => NLW_U0_Dbg_ARADDR_29_UNCONNECTED(14 downto 2),
      Dbg_ARADDR_3(14 downto 2) => NLW_U0_Dbg_ARADDR_3_UNCONNECTED(14 downto 2),
      Dbg_ARADDR_30(14 downto 2) => NLW_U0_Dbg_ARADDR_30_UNCONNECTED(14 downto 2),
      Dbg_ARADDR_31(14 downto 2) => NLW_U0_Dbg_ARADDR_31_UNCONNECTED(14 downto 2),
      Dbg_ARADDR_4(14 downto 2) => NLW_U0_Dbg_ARADDR_4_UNCONNECTED(14 downto 2),
      Dbg_ARADDR_5(14 downto 2) => NLW_U0_Dbg_ARADDR_5_UNCONNECTED(14 downto 2),
      Dbg_ARADDR_6(14 downto 2) => NLW_U0_Dbg_ARADDR_6_UNCONNECTED(14 downto 2),
      Dbg_ARADDR_7(14 downto 2) => NLW_U0_Dbg_ARADDR_7_UNCONNECTED(14 downto 2),
      Dbg_ARADDR_8(14 downto 2) => NLW_U0_Dbg_ARADDR_8_UNCONNECTED(14 downto 2),
      Dbg_ARADDR_9(14 downto 2) => NLW_U0_Dbg_ARADDR_9_UNCONNECTED(14 downto 2),
      Dbg_ARREADY_0 => '0',
      Dbg_ARREADY_1 => '0',
      Dbg_ARREADY_10 => '0',
      Dbg_ARREADY_11 => '0',
      Dbg_ARREADY_12 => '0',
      Dbg_ARREADY_13 => '0',
      Dbg_ARREADY_14 => '0',
      Dbg_ARREADY_15 => '0',
      Dbg_ARREADY_16 => '0',
      Dbg_ARREADY_17 => '0',
      Dbg_ARREADY_18 => '0',
      Dbg_ARREADY_19 => '0',
      Dbg_ARREADY_2 => '0',
      Dbg_ARREADY_20 => '0',
      Dbg_ARREADY_21 => '0',
      Dbg_ARREADY_22 => '0',
      Dbg_ARREADY_23 => '0',
      Dbg_ARREADY_24 => '0',
      Dbg_ARREADY_25 => '0',
      Dbg_ARREADY_26 => '0',
      Dbg_ARREADY_27 => '0',
      Dbg_ARREADY_28 => '0',
      Dbg_ARREADY_29 => '0',
      Dbg_ARREADY_3 => '0',
      Dbg_ARREADY_30 => '0',
      Dbg_ARREADY_31 => '0',
      Dbg_ARREADY_4 => '0',
      Dbg_ARREADY_5 => '0',
      Dbg_ARREADY_6 => '0',
      Dbg_ARREADY_7 => '0',
      Dbg_ARREADY_8 => '0',
      Dbg_ARREADY_9 => '0',
      Dbg_ARVALID_0 => NLW_U0_Dbg_ARVALID_0_UNCONNECTED,
      Dbg_ARVALID_1 => NLW_U0_Dbg_ARVALID_1_UNCONNECTED,
      Dbg_ARVALID_10 => NLW_U0_Dbg_ARVALID_10_UNCONNECTED,
      Dbg_ARVALID_11 => NLW_U0_Dbg_ARVALID_11_UNCONNECTED,
      Dbg_ARVALID_12 => NLW_U0_Dbg_ARVALID_12_UNCONNECTED,
      Dbg_ARVALID_13 => NLW_U0_Dbg_ARVALID_13_UNCONNECTED,
      Dbg_ARVALID_14 => NLW_U0_Dbg_ARVALID_14_UNCONNECTED,
      Dbg_ARVALID_15 => NLW_U0_Dbg_ARVALID_15_UNCONNECTED,
      Dbg_ARVALID_16 => NLW_U0_Dbg_ARVALID_16_UNCONNECTED,
      Dbg_ARVALID_17 => NLW_U0_Dbg_ARVALID_17_UNCONNECTED,
      Dbg_ARVALID_18 => NLW_U0_Dbg_ARVALID_18_UNCONNECTED,
      Dbg_ARVALID_19 => NLW_U0_Dbg_ARVALID_19_UNCONNECTED,
      Dbg_ARVALID_2 => NLW_U0_Dbg_ARVALID_2_UNCONNECTED,
      Dbg_ARVALID_20 => NLW_U0_Dbg_ARVALID_20_UNCONNECTED,
      Dbg_ARVALID_21 => NLW_U0_Dbg_ARVALID_21_UNCONNECTED,
      Dbg_ARVALID_22 => NLW_U0_Dbg_ARVALID_22_UNCONNECTED,
      Dbg_ARVALID_23 => NLW_U0_Dbg_ARVALID_23_UNCONNECTED,
      Dbg_ARVALID_24 => NLW_U0_Dbg_ARVALID_24_UNCONNECTED,
      Dbg_ARVALID_25 => NLW_U0_Dbg_ARVALID_25_UNCONNECTED,
      Dbg_ARVALID_26 => NLW_U0_Dbg_ARVALID_26_UNCONNECTED,
      Dbg_ARVALID_27 => NLW_U0_Dbg_ARVALID_27_UNCONNECTED,
      Dbg_ARVALID_28 => NLW_U0_Dbg_ARVALID_28_UNCONNECTED,
      Dbg_ARVALID_29 => NLW_U0_Dbg_ARVALID_29_UNCONNECTED,
      Dbg_ARVALID_3 => NLW_U0_Dbg_ARVALID_3_UNCONNECTED,
      Dbg_ARVALID_30 => NLW_U0_Dbg_ARVALID_30_UNCONNECTED,
      Dbg_ARVALID_31 => NLW_U0_Dbg_ARVALID_31_UNCONNECTED,
      Dbg_ARVALID_4 => NLW_U0_Dbg_ARVALID_4_UNCONNECTED,
      Dbg_ARVALID_5 => NLW_U0_Dbg_ARVALID_5_UNCONNECTED,
      Dbg_ARVALID_6 => NLW_U0_Dbg_ARVALID_6_UNCONNECTED,
      Dbg_ARVALID_7 => NLW_U0_Dbg_ARVALID_7_UNCONNECTED,
      Dbg_ARVALID_8 => NLW_U0_Dbg_ARVALID_8_UNCONNECTED,
      Dbg_ARVALID_9 => NLW_U0_Dbg_ARVALID_9_UNCONNECTED,
      Dbg_AWADDR_0(14 downto 2) => NLW_U0_Dbg_AWADDR_0_UNCONNECTED(14 downto 2),
      Dbg_AWADDR_1(14 downto 2) => NLW_U0_Dbg_AWADDR_1_UNCONNECTED(14 downto 2),
      Dbg_AWADDR_10(14 downto 2) => NLW_U0_Dbg_AWADDR_10_UNCONNECTED(14 downto 2),
      Dbg_AWADDR_11(14 downto 2) => NLW_U0_Dbg_AWADDR_11_UNCONNECTED(14 downto 2),
      Dbg_AWADDR_12(14 downto 2) => NLW_U0_Dbg_AWADDR_12_UNCONNECTED(14 downto 2),
      Dbg_AWADDR_13(14 downto 2) => NLW_U0_Dbg_AWADDR_13_UNCONNECTED(14 downto 2),
      Dbg_AWADDR_14(14 downto 2) => NLW_U0_Dbg_AWADDR_14_UNCONNECTED(14 downto 2),
      Dbg_AWADDR_15(14 downto 2) => NLW_U0_Dbg_AWADDR_15_UNCONNECTED(14 downto 2),
      Dbg_AWADDR_16(14 downto 2) => NLW_U0_Dbg_AWADDR_16_UNCONNECTED(14 downto 2),
      Dbg_AWADDR_17(14 downto 2) => NLW_U0_Dbg_AWADDR_17_UNCONNECTED(14 downto 2),
      Dbg_AWADDR_18(14 downto 2) => NLW_U0_Dbg_AWADDR_18_UNCONNECTED(14 downto 2),
      Dbg_AWADDR_19(14 downto 2) => NLW_U0_Dbg_AWADDR_19_UNCONNECTED(14 downto 2),
      Dbg_AWADDR_2(14 downto 2) => NLW_U0_Dbg_AWADDR_2_UNCONNECTED(14 downto 2),
      Dbg_AWADDR_20(14 downto 2) => NLW_U0_Dbg_AWADDR_20_UNCONNECTED(14 downto 2),
      Dbg_AWADDR_21(14 downto 2) => NLW_U0_Dbg_AWADDR_21_UNCONNECTED(14 downto 2),
      Dbg_AWADDR_22(14 downto 2) => NLW_U0_Dbg_AWADDR_22_UNCONNECTED(14 downto 2),
      Dbg_AWADDR_23(14 downto 2) => NLW_U0_Dbg_AWADDR_23_UNCONNECTED(14 downto 2),
      Dbg_AWADDR_24(14 downto 2) => NLW_U0_Dbg_AWADDR_24_UNCONNECTED(14 downto 2),
      Dbg_AWADDR_25(14 downto 2) => NLW_U0_Dbg_AWADDR_25_UNCONNECTED(14 downto 2),
      Dbg_AWADDR_26(14 downto 2) => NLW_U0_Dbg_AWADDR_26_UNCONNECTED(14 downto 2),
      Dbg_AWADDR_27(14 downto 2) => NLW_U0_Dbg_AWADDR_27_UNCONNECTED(14 downto 2),
      Dbg_AWADDR_28(14 downto 2) => NLW_U0_Dbg_AWADDR_28_UNCONNECTED(14 downto 2),
      Dbg_AWADDR_29(14 downto 2) => NLW_U0_Dbg_AWADDR_29_UNCONNECTED(14 downto 2),
      Dbg_AWADDR_3(14 downto 2) => NLW_U0_Dbg_AWADDR_3_UNCONNECTED(14 downto 2),
      Dbg_AWADDR_30(14 downto 2) => NLW_U0_Dbg_AWADDR_30_UNCONNECTED(14 downto 2),
      Dbg_AWADDR_31(14 downto 2) => NLW_U0_Dbg_AWADDR_31_UNCONNECTED(14 downto 2),
      Dbg_AWADDR_4(14 downto 2) => NLW_U0_Dbg_AWADDR_4_UNCONNECTED(14 downto 2),
      Dbg_AWADDR_5(14 downto 2) => NLW_U0_Dbg_AWADDR_5_UNCONNECTED(14 downto 2),
      Dbg_AWADDR_6(14 downto 2) => NLW_U0_Dbg_AWADDR_6_UNCONNECTED(14 downto 2),
      Dbg_AWADDR_7(14 downto 2) => NLW_U0_Dbg_AWADDR_7_UNCONNECTED(14 downto 2),
      Dbg_AWADDR_8(14 downto 2) => NLW_U0_Dbg_AWADDR_8_UNCONNECTED(14 downto 2),
      Dbg_AWADDR_9(14 downto 2) => NLW_U0_Dbg_AWADDR_9_UNCONNECTED(14 downto 2),
      Dbg_AWREADY_0 => '0',
      Dbg_AWREADY_1 => '0',
      Dbg_AWREADY_10 => '0',
      Dbg_AWREADY_11 => '0',
      Dbg_AWREADY_12 => '0',
      Dbg_AWREADY_13 => '0',
      Dbg_AWREADY_14 => '0',
      Dbg_AWREADY_15 => '0',
      Dbg_AWREADY_16 => '0',
      Dbg_AWREADY_17 => '0',
      Dbg_AWREADY_18 => '0',
      Dbg_AWREADY_19 => '0',
      Dbg_AWREADY_2 => '0',
      Dbg_AWREADY_20 => '0',
      Dbg_AWREADY_21 => '0',
      Dbg_AWREADY_22 => '0',
      Dbg_AWREADY_23 => '0',
      Dbg_AWREADY_24 => '0',
      Dbg_AWREADY_25 => '0',
      Dbg_AWREADY_26 => '0',
      Dbg_AWREADY_27 => '0',
      Dbg_AWREADY_28 => '0',
      Dbg_AWREADY_29 => '0',
      Dbg_AWREADY_3 => '0',
      Dbg_AWREADY_30 => '0',
      Dbg_AWREADY_31 => '0',
      Dbg_AWREADY_4 => '0',
      Dbg_AWREADY_5 => '0',
      Dbg_AWREADY_6 => '0',
      Dbg_AWREADY_7 => '0',
      Dbg_AWREADY_8 => '0',
      Dbg_AWREADY_9 => '0',
      Dbg_AWVALID_0 => NLW_U0_Dbg_AWVALID_0_UNCONNECTED,
      Dbg_AWVALID_1 => NLW_U0_Dbg_AWVALID_1_UNCONNECTED,
      Dbg_AWVALID_10 => NLW_U0_Dbg_AWVALID_10_UNCONNECTED,
      Dbg_AWVALID_11 => NLW_U0_Dbg_AWVALID_11_UNCONNECTED,
      Dbg_AWVALID_12 => NLW_U0_Dbg_AWVALID_12_UNCONNECTED,
      Dbg_AWVALID_13 => NLW_U0_Dbg_AWVALID_13_UNCONNECTED,
      Dbg_AWVALID_14 => NLW_U0_Dbg_AWVALID_14_UNCONNECTED,
      Dbg_AWVALID_15 => NLW_U0_Dbg_AWVALID_15_UNCONNECTED,
      Dbg_AWVALID_16 => NLW_U0_Dbg_AWVALID_16_UNCONNECTED,
      Dbg_AWVALID_17 => NLW_U0_Dbg_AWVALID_17_UNCONNECTED,
      Dbg_AWVALID_18 => NLW_U0_Dbg_AWVALID_18_UNCONNECTED,
      Dbg_AWVALID_19 => NLW_U0_Dbg_AWVALID_19_UNCONNECTED,
      Dbg_AWVALID_2 => NLW_U0_Dbg_AWVALID_2_UNCONNECTED,
      Dbg_AWVALID_20 => NLW_U0_Dbg_AWVALID_20_UNCONNECTED,
      Dbg_AWVALID_21 => NLW_U0_Dbg_AWVALID_21_UNCONNECTED,
      Dbg_AWVALID_22 => NLW_U0_Dbg_AWVALID_22_UNCONNECTED,
      Dbg_AWVALID_23 => NLW_U0_Dbg_AWVALID_23_UNCONNECTED,
      Dbg_AWVALID_24 => NLW_U0_Dbg_AWVALID_24_UNCONNECTED,
      Dbg_AWVALID_25 => NLW_U0_Dbg_AWVALID_25_UNCONNECTED,
      Dbg_AWVALID_26 => NLW_U0_Dbg_AWVALID_26_UNCONNECTED,
      Dbg_AWVALID_27 => NLW_U0_Dbg_AWVALID_27_UNCONNECTED,
      Dbg_AWVALID_28 => NLW_U0_Dbg_AWVALID_28_UNCONNECTED,
      Dbg_AWVALID_29 => NLW_U0_Dbg_AWVALID_29_UNCONNECTED,
      Dbg_AWVALID_3 => NLW_U0_Dbg_AWVALID_3_UNCONNECTED,
      Dbg_AWVALID_30 => NLW_U0_Dbg_AWVALID_30_UNCONNECTED,
      Dbg_AWVALID_31 => NLW_U0_Dbg_AWVALID_31_UNCONNECTED,
      Dbg_AWVALID_4 => NLW_U0_Dbg_AWVALID_4_UNCONNECTED,
      Dbg_AWVALID_5 => NLW_U0_Dbg_AWVALID_5_UNCONNECTED,
      Dbg_AWVALID_6 => NLW_U0_Dbg_AWVALID_6_UNCONNECTED,
      Dbg_AWVALID_7 => NLW_U0_Dbg_AWVALID_7_UNCONNECTED,
      Dbg_AWVALID_8 => NLW_U0_Dbg_AWVALID_8_UNCONNECTED,
      Dbg_AWVALID_9 => NLW_U0_Dbg_AWVALID_9_UNCONNECTED,
      Dbg_BREADY_0 => NLW_U0_Dbg_BREADY_0_UNCONNECTED,
      Dbg_BREADY_1 => NLW_U0_Dbg_BREADY_1_UNCONNECTED,
      Dbg_BREADY_10 => NLW_U0_Dbg_BREADY_10_UNCONNECTED,
      Dbg_BREADY_11 => NLW_U0_Dbg_BREADY_11_UNCONNECTED,
      Dbg_BREADY_12 => NLW_U0_Dbg_BREADY_12_UNCONNECTED,
      Dbg_BREADY_13 => NLW_U0_Dbg_BREADY_13_UNCONNECTED,
      Dbg_BREADY_14 => NLW_U0_Dbg_BREADY_14_UNCONNECTED,
      Dbg_BREADY_15 => NLW_U0_Dbg_BREADY_15_UNCONNECTED,
      Dbg_BREADY_16 => NLW_U0_Dbg_BREADY_16_UNCONNECTED,
      Dbg_BREADY_17 => NLW_U0_Dbg_BREADY_17_UNCONNECTED,
      Dbg_BREADY_18 => NLW_U0_Dbg_BREADY_18_UNCONNECTED,
      Dbg_BREADY_19 => NLW_U0_Dbg_BREADY_19_UNCONNECTED,
      Dbg_BREADY_2 => NLW_U0_Dbg_BREADY_2_UNCONNECTED,
      Dbg_BREADY_20 => NLW_U0_Dbg_BREADY_20_UNCONNECTED,
      Dbg_BREADY_21 => NLW_U0_Dbg_BREADY_21_UNCONNECTED,
      Dbg_BREADY_22 => NLW_U0_Dbg_BREADY_22_UNCONNECTED,
      Dbg_BREADY_23 => NLW_U0_Dbg_BREADY_23_UNCONNECTED,
      Dbg_BREADY_24 => NLW_U0_Dbg_BREADY_24_UNCONNECTED,
      Dbg_BREADY_25 => NLW_U0_Dbg_BREADY_25_UNCONNECTED,
      Dbg_BREADY_26 => NLW_U0_Dbg_BREADY_26_UNCONNECTED,
      Dbg_BREADY_27 => NLW_U0_Dbg_BREADY_27_UNCONNECTED,
      Dbg_BREADY_28 => NLW_U0_Dbg_BREADY_28_UNCONNECTED,
      Dbg_BREADY_29 => NLW_U0_Dbg_BREADY_29_UNCONNECTED,
      Dbg_BREADY_3 => NLW_U0_Dbg_BREADY_3_UNCONNECTED,
      Dbg_BREADY_30 => NLW_U0_Dbg_BREADY_30_UNCONNECTED,
      Dbg_BREADY_31 => NLW_U0_Dbg_BREADY_31_UNCONNECTED,
      Dbg_BREADY_4 => NLW_U0_Dbg_BREADY_4_UNCONNECTED,
      Dbg_BREADY_5 => NLW_U0_Dbg_BREADY_5_UNCONNECTED,
      Dbg_BREADY_6 => NLW_U0_Dbg_BREADY_6_UNCONNECTED,
      Dbg_BREADY_7 => NLW_U0_Dbg_BREADY_7_UNCONNECTED,
      Dbg_BREADY_8 => NLW_U0_Dbg_BREADY_8_UNCONNECTED,
      Dbg_BREADY_9 => NLW_U0_Dbg_BREADY_9_UNCONNECTED,
      Dbg_BRESP_0(1 downto 0) => B"00",
      Dbg_BRESP_1(1 downto 0) => B"00",
      Dbg_BRESP_10(1 downto 0) => B"00",
      Dbg_BRESP_11(1 downto 0) => B"00",
      Dbg_BRESP_12(1 downto 0) => B"00",
      Dbg_BRESP_13(1 downto 0) => B"00",
      Dbg_BRESP_14(1 downto 0) => B"00",
      Dbg_BRESP_15(1 downto 0) => B"00",
      Dbg_BRESP_16(1 downto 0) => B"00",
      Dbg_BRESP_17(1 downto 0) => B"00",
      Dbg_BRESP_18(1 downto 0) => B"00",
      Dbg_BRESP_19(1 downto 0) => B"00",
      Dbg_BRESP_2(1 downto 0) => B"00",
      Dbg_BRESP_20(1 downto 0) => B"00",
      Dbg_BRESP_21(1 downto 0) => B"00",
      Dbg_BRESP_22(1 downto 0) => B"00",
      Dbg_BRESP_23(1 downto 0) => B"00",
      Dbg_BRESP_24(1 downto 0) => B"00",
      Dbg_BRESP_25(1 downto 0) => B"00",
      Dbg_BRESP_26(1 downto 0) => B"00",
      Dbg_BRESP_27(1 downto 0) => B"00",
      Dbg_BRESP_28(1 downto 0) => B"00",
      Dbg_BRESP_29(1 downto 0) => B"00",
      Dbg_BRESP_3(1 downto 0) => B"00",
      Dbg_BRESP_30(1 downto 0) => B"00",
      Dbg_BRESP_31(1 downto 0) => B"00",
      Dbg_BRESP_4(1 downto 0) => B"00",
      Dbg_BRESP_5(1 downto 0) => B"00",
      Dbg_BRESP_6(1 downto 0) => B"00",
      Dbg_BRESP_7(1 downto 0) => B"00",
      Dbg_BRESP_8(1 downto 0) => B"00",
      Dbg_BRESP_9(1 downto 0) => B"00",
      Dbg_BVALID_0 => '0',
      Dbg_BVALID_1 => '0',
      Dbg_BVALID_10 => '0',
      Dbg_BVALID_11 => '0',
      Dbg_BVALID_12 => '0',
      Dbg_BVALID_13 => '0',
      Dbg_BVALID_14 => '0',
      Dbg_BVALID_15 => '0',
      Dbg_BVALID_16 => '0',
      Dbg_BVALID_17 => '0',
      Dbg_BVALID_18 => '0',
      Dbg_BVALID_19 => '0',
      Dbg_BVALID_2 => '0',
      Dbg_BVALID_20 => '0',
      Dbg_BVALID_21 => '0',
      Dbg_BVALID_22 => '0',
      Dbg_BVALID_23 => '0',
      Dbg_BVALID_24 => '0',
      Dbg_BVALID_25 => '0',
      Dbg_BVALID_26 => '0',
      Dbg_BVALID_27 => '0',
      Dbg_BVALID_28 => '0',
      Dbg_BVALID_29 => '0',
      Dbg_BVALID_3 => '0',
      Dbg_BVALID_30 => '0',
      Dbg_BVALID_31 => '0',
      Dbg_BVALID_4 => '0',
      Dbg_BVALID_5 => '0',
      Dbg_BVALID_6 => '0',
      Dbg_BVALID_7 => '0',
      Dbg_BVALID_8 => '0',
      Dbg_BVALID_9 => '0',
      Dbg_Capture_0 => Dbg_Capture_0,
      Dbg_Capture_1 => NLW_U0_Dbg_Capture_1_UNCONNECTED,
      Dbg_Capture_10 => NLW_U0_Dbg_Capture_10_UNCONNECTED,
      Dbg_Capture_11 => NLW_U0_Dbg_Capture_11_UNCONNECTED,
      Dbg_Capture_12 => NLW_U0_Dbg_Capture_12_UNCONNECTED,
      Dbg_Capture_13 => NLW_U0_Dbg_Capture_13_UNCONNECTED,
      Dbg_Capture_14 => NLW_U0_Dbg_Capture_14_UNCONNECTED,
      Dbg_Capture_15 => NLW_U0_Dbg_Capture_15_UNCONNECTED,
      Dbg_Capture_16 => NLW_U0_Dbg_Capture_16_UNCONNECTED,
      Dbg_Capture_17 => NLW_U0_Dbg_Capture_17_UNCONNECTED,
      Dbg_Capture_18 => NLW_U0_Dbg_Capture_18_UNCONNECTED,
      Dbg_Capture_19 => NLW_U0_Dbg_Capture_19_UNCONNECTED,
      Dbg_Capture_2 => NLW_U0_Dbg_Capture_2_UNCONNECTED,
      Dbg_Capture_20 => NLW_U0_Dbg_Capture_20_UNCONNECTED,
      Dbg_Capture_21 => NLW_U0_Dbg_Capture_21_UNCONNECTED,
      Dbg_Capture_22 => NLW_U0_Dbg_Capture_22_UNCONNECTED,
      Dbg_Capture_23 => NLW_U0_Dbg_Capture_23_UNCONNECTED,
      Dbg_Capture_24 => NLW_U0_Dbg_Capture_24_UNCONNECTED,
      Dbg_Capture_25 => NLW_U0_Dbg_Capture_25_UNCONNECTED,
      Dbg_Capture_26 => NLW_U0_Dbg_Capture_26_UNCONNECTED,
      Dbg_Capture_27 => NLW_U0_Dbg_Capture_27_UNCONNECTED,
      Dbg_Capture_28 => NLW_U0_Dbg_Capture_28_UNCONNECTED,
      Dbg_Capture_29 => NLW_U0_Dbg_Capture_29_UNCONNECTED,
      Dbg_Capture_3 => NLW_U0_Dbg_Capture_3_UNCONNECTED,
      Dbg_Capture_30 => NLW_U0_Dbg_Capture_30_UNCONNECTED,
      Dbg_Capture_31 => NLW_U0_Dbg_Capture_31_UNCONNECTED,
      Dbg_Capture_4 => NLW_U0_Dbg_Capture_4_UNCONNECTED,
      Dbg_Capture_5 => NLW_U0_Dbg_Capture_5_UNCONNECTED,
      Dbg_Capture_6 => NLW_U0_Dbg_Capture_6_UNCONNECTED,
      Dbg_Capture_7 => NLW_U0_Dbg_Capture_7_UNCONNECTED,
      Dbg_Capture_8 => NLW_U0_Dbg_Capture_8_UNCONNECTED,
      Dbg_Capture_9 => NLW_U0_Dbg_Capture_9_UNCONNECTED,
      Dbg_Clk_0 => Dbg_Clk_0,
      Dbg_Clk_1 => NLW_U0_Dbg_Clk_1_UNCONNECTED,
      Dbg_Clk_10 => NLW_U0_Dbg_Clk_10_UNCONNECTED,
      Dbg_Clk_11 => NLW_U0_Dbg_Clk_11_UNCONNECTED,
      Dbg_Clk_12 => NLW_U0_Dbg_Clk_12_UNCONNECTED,
      Dbg_Clk_13 => NLW_U0_Dbg_Clk_13_UNCONNECTED,
      Dbg_Clk_14 => NLW_U0_Dbg_Clk_14_UNCONNECTED,
      Dbg_Clk_15 => NLW_U0_Dbg_Clk_15_UNCONNECTED,
      Dbg_Clk_16 => NLW_U0_Dbg_Clk_16_UNCONNECTED,
      Dbg_Clk_17 => NLW_U0_Dbg_Clk_17_UNCONNECTED,
      Dbg_Clk_18 => NLW_U0_Dbg_Clk_18_UNCONNECTED,
      Dbg_Clk_19 => NLW_U0_Dbg_Clk_19_UNCONNECTED,
      Dbg_Clk_2 => NLW_U0_Dbg_Clk_2_UNCONNECTED,
      Dbg_Clk_20 => NLW_U0_Dbg_Clk_20_UNCONNECTED,
      Dbg_Clk_21 => NLW_U0_Dbg_Clk_21_UNCONNECTED,
      Dbg_Clk_22 => NLW_U0_Dbg_Clk_22_UNCONNECTED,
      Dbg_Clk_23 => NLW_U0_Dbg_Clk_23_UNCONNECTED,
      Dbg_Clk_24 => NLW_U0_Dbg_Clk_24_UNCONNECTED,
      Dbg_Clk_25 => NLW_U0_Dbg_Clk_25_UNCONNECTED,
      Dbg_Clk_26 => NLW_U0_Dbg_Clk_26_UNCONNECTED,
      Dbg_Clk_27 => NLW_U0_Dbg_Clk_27_UNCONNECTED,
      Dbg_Clk_28 => NLW_U0_Dbg_Clk_28_UNCONNECTED,
      Dbg_Clk_29 => NLW_U0_Dbg_Clk_29_UNCONNECTED,
      Dbg_Clk_3 => NLW_U0_Dbg_Clk_3_UNCONNECTED,
      Dbg_Clk_30 => NLW_U0_Dbg_Clk_30_UNCONNECTED,
      Dbg_Clk_31 => NLW_U0_Dbg_Clk_31_UNCONNECTED,
      Dbg_Clk_4 => NLW_U0_Dbg_Clk_4_UNCONNECTED,
      Dbg_Clk_5 => NLW_U0_Dbg_Clk_5_UNCONNECTED,
      Dbg_Clk_6 => NLW_U0_Dbg_Clk_6_UNCONNECTED,
      Dbg_Clk_7 => NLW_U0_Dbg_Clk_7_UNCONNECTED,
      Dbg_Clk_8 => NLW_U0_Dbg_Clk_8_UNCONNECTED,
      Dbg_Clk_9 => NLW_U0_Dbg_Clk_9_UNCONNECTED,
      Dbg_Disable_0 => Dbg_Disable_0,
      Dbg_Disable_1 => NLW_U0_Dbg_Disable_1_UNCONNECTED,
      Dbg_Disable_10 => NLW_U0_Dbg_Disable_10_UNCONNECTED,
      Dbg_Disable_11 => NLW_U0_Dbg_Disable_11_UNCONNECTED,
      Dbg_Disable_12 => NLW_U0_Dbg_Disable_12_UNCONNECTED,
      Dbg_Disable_13 => NLW_U0_Dbg_Disable_13_UNCONNECTED,
      Dbg_Disable_14 => NLW_U0_Dbg_Disable_14_UNCONNECTED,
      Dbg_Disable_15 => NLW_U0_Dbg_Disable_15_UNCONNECTED,
      Dbg_Disable_16 => NLW_U0_Dbg_Disable_16_UNCONNECTED,
      Dbg_Disable_17 => NLW_U0_Dbg_Disable_17_UNCONNECTED,
      Dbg_Disable_18 => NLW_U0_Dbg_Disable_18_UNCONNECTED,
      Dbg_Disable_19 => NLW_U0_Dbg_Disable_19_UNCONNECTED,
      Dbg_Disable_2 => NLW_U0_Dbg_Disable_2_UNCONNECTED,
      Dbg_Disable_20 => NLW_U0_Dbg_Disable_20_UNCONNECTED,
      Dbg_Disable_21 => NLW_U0_Dbg_Disable_21_UNCONNECTED,
      Dbg_Disable_22 => NLW_U0_Dbg_Disable_22_UNCONNECTED,
      Dbg_Disable_23 => NLW_U0_Dbg_Disable_23_UNCONNECTED,
      Dbg_Disable_24 => NLW_U0_Dbg_Disable_24_UNCONNECTED,
      Dbg_Disable_25 => NLW_U0_Dbg_Disable_25_UNCONNECTED,
      Dbg_Disable_26 => NLW_U0_Dbg_Disable_26_UNCONNECTED,
      Dbg_Disable_27 => NLW_U0_Dbg_Disable_27_UNCONNECTED,
      Dbg_Disable_28 => NLW_U0_Dbg_Disable_28_UNCONNECTED,
      Dbg_Disable_29 => NLW_U0_Dbg_Disable_29_UNCONNECTED,
      Dbg_Disable_3 => NLW_U0_Dbg_Disable_3_UNCONNECTED,
      Dbg_Disable_30 => NLW_U0_Dbg_Disable_30_UNCONNECTED,
      Dbg_Disable_31 => NLW_U0_Dbg_Disable_31_UNCONNECTED,
      Dbg_Disable_4 => NLW_U0_Dbg_Disable_4_UNCONNECTED,
      Dbg_Disable_5 => NLW_U0_Dbg_Disable_5_UNCONNECTED,
      Dbg_Disable_6 => NLW_U0_Dbg_Disable_6_UNCONNECTED,
      Dbg_Disable_7 => NLW_U0_Dbg_Disable_7_UNCONNECTED,
      Dbg_Disable_8 => NLW_U0_Dbg_Disable_8_UNCONNECTED,
      Dbg_Disable_9 => NLW_U0_Dbg_Disable_9_UNCONNECTED,
      Dbg_RDATA_0(31 downto 0) => B"00000000000000000000000000000000",
      Dbg_RDATA_1(31 downto 0) => B"00000000000000000000000000000000",
      Dbg_RDATA_10(31 downto 0) => B"00000000000000000000000000000000",
      Dbg_RDATA_11(31 downto 0) => B"00000000000000000000000000000000",
      Dbg_RDATA_12(31 downto 0) => B"00000000000000000000000000000000",
      Dbg_RDATA_13(31 downto 0) => B"00000000000000000000000000000000",
      Dbg_RDATA_14(31 downto 0) => B"00000000000000000000000000000000",
      Dbg_RDATA_15(31 downto 0) => B"00000000000000000000000000000000",
      Dbg_RDATA_16(31 downto 0) => B"00000000000000000000000000000000",
      Dbg_RDATA_17(31 downto 0) => B"00000000000000000000000000000000",
      Dbg_RDATA_18(31 downto 0) => B"00000000000000000000000000000000",
      Dbg_RDATA_19(31 downto 0) => B"00000000000000000000000000000000",
      Dbg_RDATA_2(31 downto 0) => B"00000000000000000000000000000000",
      Dbg_RDATA_20(31 downto 0) => B"00000000000000000000000000000000",
      Dbg_RDATA_21(31 downto 0) => B"00000000000000000000000000000000",
      Dbg_RDATA_22(31 downto 0) => B"00000000000000000000000000000000",
      Dbg_RDATA_23(31 downto 0) => B"00000000000000000000000000000000",
      Dbg_RDATA_24(31 downto 0) => B"00000000000000000000000000000000",
      Dbg_RDATA_25(31 downto 0) => B"00000000000000000000000000000000",
      Dbg_RDATA_26(31 downto 0) => B"00000000000000000000000000000000",
      Dbg_RDATA_27(31 downto 0) => B"00000000000000000000000000000000",
      Dbg_RDATA_28(31 downto 0) => B"00000000000000000000000000000000",
      Dbg_RDATA_29(31 downto 0) => B"00000000000000000000000000000000",
      Dbg_RDATA_3(31 downto 0) => B"00000000000000000000000000000000",
      Dbg_RDATA_30(31 downto 0) => B"00000000000000000000000000000000",
      Dbg_RDATA_31(31 downto 0) => B"00000000000000000000000000000000",
      Dbg_RDATA_4(31 downto 0) => B"00000000000000000000000000000000",
      Dbg_RDATA_5(31 downto 0) => B"00000000000000000000000000000000",
      Dbg_RDATA_6(31 downto 0) => B"00000000000000000000000000000000",
      Dbg_RDATA_7(31 downto 0) => B"00000000000000000000000000000000",
      Dbg_RDATA_8(31 downto 0) => B"00000000000000000000000000000000",
      Dbg_RDATA_9(31 downto 0) => B"00000000000000000000000000000000",
      Dbg_RREADY_0 => NLW_U0_Dbg_RREADY_0_UNCONNECTED,
      Dbg_RREADY_1 => NLW_U0_Dbg_RREADY_1_UNCONNECTED,
      Dbg_RREADY_10 => NLW_U0_Dbg_RREADY_10_UNCONNECTED,
      Dbg_RREADY_11 => NLW_U0_Dbg_RREADY_11_UNCONNECTED,
      Dbg_RREADY_12 => NLW_U0_Dbg_RREADY_12_UNCONNECTED,
      Dbg_RREADY_13 => NLW_U0_Dbg_RREADY_13_UNCONNECTED,
      Dbg_RREADY_14 => NLW_U0_Dbg_RREADY_14_UNCONNECTED,
      Dbg_RREADY_15 => NLW_U0_Dbg_RREADY_15_UNCONNECTED,
      Dbg_RREADY_16 => NLW_U0_Dbg_RREADY_16_UNCONNECTED,
      Dbg_RREADY_17 => NLW_U0_Dbg_RREADY_17_UNCONNECTED,
      Dbg_RREADY_18 => NLW_U0_Dbg_RREADY_18_UNCONNECTED,
      Dbg_RREADY_19 => NLW_U0_Dbg_RREADY_19_UNCONNECTED,
      Dbg_RREADY_2 => NLW_U0_Dbg_RREADY_2_UNCONNECTED,
      Dbg_RREADY_20 => NLW_U0_Dbg_RREADY_20_UNCONNECTED,
      Dbg_RREADY_21 => NLW_U0_Dbg_RREADY_21_UNCONNECTED,
      Dbg_RREADY_22 => NLW_U0_Dbg_RREADY_22_UNCONNECTED,
      Dbg_RREADY_23 => NLW_U0_Dbg_RREADY_23_UNCONNECTED,
      Dbg_RREADY_24 => NLW_U0_Dbg_RREADY_24_UNCONNECTED,
      Dbg_RREADY_25 => NLW_U0_Dbg_RREADY_25_UNCONNECTED,
      Dbg_RREADY_26 => NLW_U0_Dbg_RREADY_26_UNCONNECTED,
      Dbg_RREADY_27 => NLW_U0_Dbg_RREADY_27_UNCONNECTED,
      Dbg_RREADY_28 => NLW_U0_Dbg_RREADY_28_UNCONNECTED,
      Dbg_RREADY_29 => NLW_U0_Dbg_RREADY_29_UNCONNECTED,
      Dbg_RREADY_3 => NLW_U0_Dbg_RREADY_3_UNCONNECTED,
      Dbg_RREADY_30 => NLW_U0_Dbg_RREADY_30_UNCONNECTED,
      Dbg_RREADY_31 => NLW_U0_Dbg_RREADY_31_UNCONNECTED,
      Dbg_RREADY_4 => NLW_U0_Dbg_RREADY_4_UNCONNECTED,
      Dbg_RREADY_5 => NLW_U0_Dbg_RREADY_5_UNCONNECTED,
      Dbg_RREADY_6 => NLW_U0_Dbg_RREADY_6_UNCONNECTED,
      Dbg_RREADY_7 => NLW_U0_Dbg_RREADY_7_UNCONNECTED,
      Dbg_RREADY_8 => NLW_U0_Dbg_RREADY_8_UNCONNECTED,
      Dbg_RREADY_9 => NLW_U0_Dbg_RREADY_9_UNCONNECTED,
      Dbg_RRESP_0(1 downto 0) => B"00",
      Dbg_RRESP_1(1 downto 0) => B"00",
      Dbg_RRESP_10(1 downto 0) => B"00",
      Dbg_RRESP_11(1 downto 0) => B"00",
      Dbg_RRESP_12(1 downto 0) => B"00",
      Dbg_RRESP_13(1 downto 0) => B"00",
      Dbg_RRESP_14(1 downto 0) => B"00",
      Dbg_RRESP_15(1 downto 0) => B"00",
      Dbg_RRESP_16(1 downto 0) => B"00",
      Dbg_RRESP_17(1 downto 0) => B"00",
      Dbg_RRESP_18(1 downto 0) => B"00",
      Dbg_RRESP_19(1 downto 0) => B"00",
      Dbg_RRESP_2(1 downto 0) => B"00",
      Dbg_RRESP_20(1 downto 0) => B"00",
      Dbg_RRESP_21(1 downto 0) => B"00",
      Dbg_RRESP_22(1 downto 0) => B"00",
      Dbg_RRESP_23(1 downto 0) => B"00",
      Dbg_RRESP_24(1 downto 0) => B"00",
      Dbg_RRESP_25(1 downto 0) => B"00",
      Dbg_RRESP_26(1 downto 0) => B"00",
      Dbg_RRESP_27(1 downto 0) => B"00",
      Dbg_RRESP_28(1 downto 0) => B"00",
      Dbg_RRESP_29(1 downto 0) => B"00",
      Dbg_RRESP_3(1 downto 0) => B"00",
      Dbg_RRESP_30(1 downto 0) => B"00",
      Dbg_RRESP_31(1 downto 0) => B"00",
      Dbg_RRESP_4(1 downto 0) => B"00",
      Dbg_RRESP_5(1 downto 0) => B"00",
      Dbg_RRESP_6(1 downto 0) => B"00",
      Dbg_RRESP_7(1 downto 0) => B"00",
      Dbg_RRESP_8(1 downto 0) => B"00",
      Dbg_RRESP_9(1 downto 0) => B"00",
      Dbg_RVALID_0 => '0',
      Dbg_RVALID_1 => '0',
      Dbg_RVALID_10 => '0',
      Dbg_RVALID_11 => '0',
      Dbg_RVALID_12 => '0',
      Dbg_RVALID_13 => '0',
      Dbg_RVALID_14 => '0',
      Dbg_RVALID_15 => '0',
      Dbg_RVALID_16 => '0',
      Dbg_RVALID_17 => '0',
      Dbg_RVALID_18 => '0',
      Dbg_RVALID_19 => '0',
      Dbg_RVALID_2 => '0',
      Dbg_RVALID_20 => '0',
      Dbg_RVALID_21 => '0',
      Dbg_RVALID_22 => '0',
      Dbg_RVALID_23 => '0',
      Dbg_RVALID_24 => '0',
      Dbg_RVALID_25 => '0',
      Dbg_RVALID_26 => '0',
      Dbg_RVALID_27 => '0',
      Dbg_RVALID_28 => '0',
      Dbg_RVALID_29 => '0',
      Dbg_RVALID_3 => '0',
      Dbg_RVALID_30 => '0',
      Dbg_RVALID_31 => '0',
      Dbg_RVALID_4 => '0',
      Dbg_RVALID_5 => '0',
      Dbg_RVALID_6 => '0',
      Dbg_RVALID_7 => '0',
      Dbg_RVALID_8 => '0',
      Dbg_RVALID_9 => '0',
      Dbg_Reg_En_0(0 to 7) => Dbg_Reg_En_0(0 to 7),
      Dbg_Reg_En_1(0 to 7) => NLW_U0_Dbg_Reg_En_1_UNCONNECTED(0 to 7),
      Dbg_Reg_En_10(0 to 7) => NLW_U0_Dbg_Reg_En_10_UNCONNECTED(0 to 7),
      Dbg_Reg_En_11(0 to 7) => NLW_U0_Dbg_Reg_En_11_UNCONNECTED(0 to 7),
      Dbg_Reg_En_12(0 to 7) => NLW_U0_Dbg_Reg_En_12_UNCONNECTED(0 to 7),
      Dbg_Reg_En_13(0 to 7) => NLW_U0_Dbg_Reg_En_13_UNCONNECTED(0 to 7),
      Dbg_Reg_En_14(0 to 7) => NLW_U0_Dbg_Reg_En_14_UNCONNECTED(0 to 7),
      Dbg_Reg_En_15(0 to 7) => NLW_U0_Dbg_Reg_En_15_UNCONNECTED(0 to 7),
      Dbg_Reg_En_16(0 to 7) => NLW_U0_Dbg_Reg_En_16_UNCONNECTED(0 to 7),
      Dbg_Reg_En_17(0 to 7) => NLW_U0_Dbg_Reg_En_17_UNCONNECTED(0 to 7),
      Dbg_Reg_En_18(0 to 7) => NLW_U0_Dbg_Reg_En_18_UNCONNECTED(0 to 7),
      Dbg_Reg_En_19(0 to 7) => NLW_U0_Dbg_Reg_En_19_UNCONNECTED(0 to 7),
      Dbg_Reg_En_2(0 to 7) => NLW_U0_Dbg_Reg_En_2_UNCONNECTED(0 to 7),
      Dbg_Reg_En_20(0 to 7) => NLW_U0_Dbg_Reg_En_20_UNCONNECTED(0 to 7),
      Dbg_Reg_En_21(0 to 7) => NLW_U0_Dbg_Reg_En_21_UNCONNECTED(0 to 7),
      Dbg_Reg_En_22(0 to 7) => NLW_U0_Dbg_Reg_En_22_UNCONNECTED(0 to 7),
      Dbg_Reg_En_23(0 to 7) => NLW_U0_Dbg_Reg_En_23_UNCONNECTED(0 to 7),
      Dbg_Reg_En_24(0 to 7) => NLW_U0_Dbg_Reg_En_24_UNCONNECTED(0 to 7),
      Dbg_Reg_En_25(0 to 7) => NLW_U0_Dbg_Reg_En_25_UNCONNECTED(0 to 7),
      Dbg_Reg_En_26(0 to 7) => NLW_U0_Dbg_Reg_En_26_UNCONNECTED(0 to 7),
      Dbg_Reg_En_27(0 to 7) => NLW_U0_Dbg_Reg_En_27_UNCONNECTED(0 to 7),
      Dbg_Reg_En_28(0 to 7) => NLW_U0_Dbg_Reg_En_28_UNCONNECTED(0 to 7),
      Dbg_Reg_En_29(0 to 7) => NLW_U0_Dbg_Reg_En_29_UNCONNECTED(0 to 7),
      Dbg_Reg_En_3(0 to 7) => NLW_U0_Dbg_Reg_En_3_UNCONNECTED(0 to 7),
      Dbg_Reg_En_30(0 to 7) => NLW_U0_Dbg_Reg_En_30_UNCONNECTED(0 to 7),
      Dbg_Reg_En_31(0 to 7) => NLW_U0_Dbg_Reg_En_31_UNCONNECTED(0 to 7),
      Dbg_Reg_En_4(0 to 7) => NLW_U0_Dbg_Reg_En_4_UNCONNECTED(0 to 7),
      Dbg_Reg_En_5(0 to 7) => NLW_U0_Dbg_Reg_En_5_UNCONNECTED(0 to 7),
      Dbg_Reg_En_6(0 to 7) => NLW_U0_Dbg_Reg_En_6_UNCONNECTED(0 to 7),
      Dbg_Reg_En_7(0 to 7) => NLW_U0_Dbg_Reg_En_7_UNCONNECTED(0 to 7),
      Dbg_Reg_En_8(0 to 7) => NLW_U0_Dbg_Reg_En_8_UNCONNECTED(0 to 7),
      Dbg_Reg_En_9(0 to 7) => NLW_U0_Dbg_Reg_En_9_UNCONNECTED(0 to 7),
      Dbg_Rst_0 => Dbg_Rst_0,
      Dbg_Rst_1 => NLW_U0_Dbg_Rst_1_UNCONNECTED,
      Dbg_Rst_10 => NLW_U0_Dbg_Rst_10_UNCONNECTED,
      Dbg_Rst_11 => NLW_U0_Dbg_Rst_11_UNCONNECTED,
      Dbg_Rst_12 => NLW_U0_Dbg_Rst_12_UNCONNECTED,
      Dbg_Rst_13 => NLW_U0_Dbg_Rst_13_UNCONNECTED,
      Dbg_Rst_14 => NLW_U0_Dbg_Rst_14_UNCONNECTED,
      Dbg_Rst_15 => NLW_U0_Dbg_Rst_15_UNCONNECTED,
      Dbg_Rst_16 => NLW_U0_Dbg_Rst_16_UNCONNECTED,
      Dbg_Rst_17 => NLW_U0_Dbg_Rst_17_UNCONNECTED,
      Dbg_Rst_18 => NLW_U0_Dbg_Rst_18_UNCONNECTED,
      Dbg_Rst_19 => NLW_U0_Dbg_Rst_19_UNCONNECTED,
      Dbg_Rst_2 => NLW_U0_Dbg_Rst_2_UNCONNECTED,
      Dbg_Rst_20 => NLW_U0_Dbg_Rst_20_UNCONNECTED,
      Dbg_Rst_21 => NLW_U0_Dbg_Rst_21_UNCONNECTED,
      Dbg_Rst_22 => NLW_U0_Dbg_Rst_22_UNCONNECTED,
      Dbg_Rst_23 => NLW_U0_Dbg_Rst_23_UNCONNECTED,
      Dbg_Rst_24 => NLW_U0_Dbg_Rst_24_UNCONNECTED,
      Dbg_Rst_25 => NLW_U0_Dbg_Rst_25_UNCONNECTED,
      Dbg_Rst_26 => NLW_U0_Dbg_Rst_26_UNCONNECTED,
      Dbg_Rst_27 => NLW_U0_Dbg_Rst_27_UNCONNECTED,
      Dbg_Rst_28 => NLW_U0_Dbg_Rst_28_UNCONNECTED,
      Dbg_Rst_29 => NLW_U0_Dbg_Rst_29_UNCONNECTED,
      Dbg_Rst_3 => NLW_U0_Dbg_Rst_3_UNCONNECTED,
      Dbg_Rst_30 => NLW_U0_Dbg_Rst_30_UNCONNECTED,
      Dbg_Rst_31 => NLW_U0_Dbg_Rst_31_UNCONNECTED,
      Dbg_Rst_4 => NLW_U0_Dbg_Rst_4_UNCONNECTED,
      Dbg_Rst_5 => NLW_U0_Dbg_Rst_5_UNCONNECTED,
      Dbg_Rst_6 => NLW_U0_Dbg_Rst_6_UNCONNECTED,
      Dbg_Rst_7 => NLW_U0_Dbg_Rst_7_UNCONNECTED,
      Dbg_Rst_8 => NLW_U0_Dbg_Rst_8_UNCONNECTED,
      Dbg_Rst_9 => NLW_U0_Dbg_Rst_9_UNCONNECTED,
      Dbg_Shift_0 => Dbg_Shift_0,
      Dbg_Shift_1 => NLW_U0_Dbg_Shift_1_UNCONNECTED,
      Dbg_Shift_10 => NLW_U0_Dbg_Shift_10_UNCONNECTED,
      Dbg_Shift_11 => NLW_U0_Dbg_Shift_11_UNCONNECTED,
      Dbg_Shift_12 => NLW_U0_Dbg_Shift_12_UNCONNECTED,
      Dbg_Shift_13 => NLW_U0_Dbg_Shift_13_UNCONNECTED,
      Dbg_Shift_14 => NLW_U0_Dbg_Shift_14_UNCONNECTED,
      Dbg_Shift_15 => NLW_U0_Dbg_Shift_15_UNCONNECTED,
      Dbg_Shift_16 => NLW_U0_Dbg_Shift_16_UNCONNECTED,
      Dbg_Shift_17 => NLW_U0_Dbg_Shift_17_UNCONNECTED,
      Dbg_Shift_18 => NLW_U0_Dbg_Shift_18_UNCONNECTED,
      Dbg_Shift_19 => NLW_U0_Dbg_Shift_19_UNCONNECTED,
      Dbg_Shift_2 => NLW_U0_Dbg_Shift_2_UNCONNECTED,
      Dbg_Shift_20 => NLW_U0_Dbg_Shift_20_UNCONNECTED,
      Dbg_Shift_21 => NLW_U0_Dbg_Shift_21_UNCONNECTED,
      Dbg_Shift_22 => NLW_U0_Dbg_Shift_22_UNCONNECTED,
      Dbg_Shift_23 => NLW_U0_Dbg_Shift_23_UNCONNECTED,
      Dbg_Shift_24 => NLW_U0_Dbg_Shift_24_UNCONNECTED,
      Dbg_Shift_25 => NLW_U0_Dbg_Shift_25_UNCONNECTED,
      Dbg_Shift_26 => NLW_U0_Dbg_Shift_26_UNCONNECTED,
      Dbg_Shift_27 => NLW_U0_Dbg_Shift_27_UNCONNECTED,
      Dbg_Shift_28 => NLW_U0_Dbg_Shift_28_UNCONNECTED,
      Dbg_Shift_29 => NLW_U0_Dbg_Shift_29_UNCONNECTED,
      Dbg_Shift_3 => NLW_U0_Dbg_Shift_3_UNCONNECTED,
      Dbg_Shift_30 => NLW_U0_Dbg_Shift_30_UNCONNECTED,
      Dbg_Shift_31 => NLW_U0_Dbg_Shift_31_UNCONNECTED,
      Dbg_Shift_4 => NLW_U0_Dbg_Shift_4_UNCONNECTED,
      Dbg_Shift_5 => NLW_U0_Dbg_Shift_5_UNCONNECTED,
      Dbg_Shift_6 => NLW_U0_Dbg_Shift_6_UNCONNECTED,
      Dbg_Shift_7 => NLW_U0_Dbg_Shift_7_UNCONNECTED,
      Dbg_Shift_8 => NLW_U0_Dbg_Shift_8_UNCONNECTED,
      Dbg_Shift_9 => NLW_U0_Dbg_Shift_9_UNCONNECTED,
      Dbg_TDI_0 => Dbg_TDI_0,
      Dbg_TDI_1 => NLW_U0_Dbg_TDI_1_UNCONNECTED,
      Dbg_TDI_10 => NLW_U0_Dbg_TDI_10_UNCONNECTED,
      Dbg_TDI_11 => NLW_U0_Dbg_TDI_11_UNCONNECTED,
      Dbg_TDI_12 => NLW_U0_Dbg_TDI_12_UNCONNECTED,
      Dbg_TDI_13 => NLW_U0_Dbg_TDI_13_UNCONNECTED,
      Dbg_TDI_14 => NLW_U0_Dbg_TDI_14_UNCONNECTED,
      Dbg_TDI_15 => NLW_U0_Dbg_TDI_15_UNCONNECTED,
      Dbg_TDI_16 => NLW_U0_Dbg_TDI_16_UNCONNECTED,
      Dbg_TDI_17 => NLW_U0_Dbg_TDI_17_UNCONNECTED,
      Dbg_TDI_18 => NLW_U0_Dbg_TDI_18_UNCONNECTED,
      Dbg_TDI_19 => NLW_U0_Dbg_TDI_19_UNCONNECTED,
      Dbg_TDI_2 => NLW_U0_Dbg_TDI_2_UNCONNECTED,
      Dbg_TDI_20 => NLW_U0_Dbg_TDI_20_UNCONNECTED,
      Dbg_TDI_21 => NLW_U0_Dbg_TDI_21_UNCONNECTED,
      Dbg_TDI_22 => NLW_U0_Dbg_TDI_22_UNCONNECTED,
      Dbg_TDI_23 => NLW_U0_Dbg_TDI_23_UNCONNECTED,
      Dbg_TDI_24 => NLW_U0_Dbg_TDI_24_UNCONNECTED,
      Dbg_TDI_25 => NLW_U0_Dbg_TDI_25_UNCONNECTED,
      Dbg_TDI_26 => NLW_U0_Dbg_TDI_26_UNCONNECTED,
      Dbg_TDI_27 => NLW_U0_Dbg_TDI_27_UNCONNECTED,
      Dbg_TDI_28 => NLW_U0_Dbg_TDI_28_UNCONNECTED,
      Dbg_TDI_29 => NLW_U0_Dbg_TDI_29_UNCONNECTED,
      Dbg_TDI_3 => NLW_U0_Dbg_TDI_3_UNCONNECTED,
      Dbg_TDI_30 => NLW_U0_Dbg_TDI_30_UNCONNECTED,
      Dbg_TDI_31 => NLW_U0_Dbg_TDI_31_UNCONNECTED,
      Dbg_TDI_4 => NLW_U0_Dbg_TDI_4_UNCONNECTED,
      Dbg_TDI_5 => NLW_U0_Dbg_TDI_5_UNCONNECTED,
      Dbg_TDI_6 => NLW_U0_Dbg_TDI_6_UNCONNECTED,
      Dbg_TDI_7 => NLW_U0_Dbg_TDI_7_UNCONNECTED,
      Dbg_TDI_8 => NLW_U0_Dbg_TDI_8_UNCONNECTED,
      Dbg_TDI_9 => NLW_U0_Dbg_TDI_9_UNCONNECTED,
      Dbg_TDO_0 => Dbg_TDO_0,
      Dbg_TDO_1 => '0',
      Dbg_TDO_10 => '0',
      Dbg_TDO_11 => '0',
      Dbg_TDO_12 => '0',
      Dbg_TDO_13 => '0',
      Dbg_TDO_14 => '0',
      Dbg_TDO_15 => '0',
      Dbg_TDO_16 => '0',
      Dbg_TDO_17 => '0',
      Dbg_TDO_18 => '0',
      Dbg_TDO_19 => '0',
      Dbg_TDO_2 => '0',
      Dbg_TDO_20 => '0',
      Dbg_TDO_21 => '0',
      Dbg_TDO_22 => '0',
      Dbg_TDO_23 => '0',
      Dbg_TDO_24 => '0',
      Dbg_TDO_25 => '0',
      Dbg_TDO_26 => '0',
      Dbg_TDO_27 => '0',
      Dbg_TDO_28 => '0',
      Dbg_TDO_29 => '0',
      Dbg_TDO_3 => '0',
      Dbg_TDO_30 => '0',
      Dbg_TDO_31 => '0',
      Dbg_TDO_4 => '0',
      Dbg_TDO_5 => '0',
      Dbg_TDO_6 => '0',
      Dbg_TDO_7 => '0',
      Dbg_TDO_8 => '0',
      Dbg_TDO_9 => '0',
      Dbg_TrClk_0 => NLW_U0_Dbg_TrClk_0_UNCONNECTED,
      Dbg_TrClk_1 => NLW_U0_Dbg_TrClk_1_UNCONNECTED,
      Dbg_TrClk_10 => NLW_U0_Dbg_TrClk_10_UNCONNECTED,
      Dbg_TrClk_11 => NLW_U0_Dbg_TrClk_11_UNCONNECTED,
      Dbg_TrClk_12 => NLW_U0_Dbg_TrClk_12_UNCONNECTED,
      Dbg_TrClk_13 => NLW_U0_Dbg_TrClk_13_UNCONNECTED,
      Dbg_TrClk_14 => NLW_U0_Dbg_TrClk_14_UNCONNECTED,
      Dbg_TrClk_15 => NLW_U0_Dbg_TrClk_15_UNCONNECTED,
      Dbg_TrClk_16 => NLW_U0_Dbg_TrClk_16_UNCONNECTED,
      Dbg_TrClk_17 => NLW_U0_Dbg_TrClk_17_UNCONNECTED,
      Dbg_TrClk_18 => NLW_U0_Dbg_TrClk_18_UNCONNECTED,
      Dbg_TrClk_19 => NLW_U0_Dbg_TrClk_19_UNCONNECTED,
      Dbg_TrClk_2 => NLW_U0_Dbg_TrClk_2_UNCONNECTED,
      Dbg_TrClk_20 => NLW_U0_Dbg_TrClk_20_UNCONNECTED,
      Dbg_TrClk_21 => NLW_U0_Dbg_TrClk_21_UNCONNECTED,
      Dbg_TrClk_22 => NLW_U0_Dbg_TrClk_22_UNCONNECTED,
      Dbg_TrClk_23 => NLW_U0_Dbg_TrClk_23_UNCONNECTED,
      Dbg_TrClk_24 => NLW_U0_Dbg_TrClk_24_UNCONNECTED,
      Dbg_TrClk_25 => NLW_U0_Dbg_TrClk_25_UNCONNECTED,
      Dbg_TrClk_26 => NLW_U0_Dbg_TrClk_26_UNCONNECTED,
      Dbg_TrClk_27 => NLW_U0_Dbg_TrClk_27_UNCONNECTED,
      Dbg_TrClk_28 => NLW_U0_Dbg_TrClk_28_UNCONNECTED,
      Dbg_TrClk_29 => NLW_U0_Dbg_TrClk_29_UNCONNECTED,
      Dbg_TrClk_3 => NLW_U0_Dbg_TrClk_3_UNCONNECTED,
      Dbg_TrClk_30 => NLW_U0_Dbg_TrClk_30_UNCONNECTED,
      Dbg_TrClk_31 => NLW_U0_Dbg_TrClk_31_UNCONNECTED,
      Dbg_TrClk_4 => NLW_U0_Dbg_TrClk_4_UNCONNECTED,
      Dbg_TrClk_5 => NLW_U0_Dbg_TrClk_5_UNCONNECTED,
      Dbg_TrClk_6 => NLW_U0_Dbg_TrClk_6_UNCONNECTED,
      Dbg_TrClk_7 => NLW_U0_Dbg_TrClk_7_UNCONNECTED,
      Dbg_TrClk_8 => NLW_U0_Dbg_TrClk_8_UNCONNECTED,
      Dbg_TrClk_9 => NLW_U0_Dbg_TrClk_9_UNCONNECTED,
      Dbg_TrData_0(0 to 35) => B"000000000000000000000000000000000000",
      Dbg_TrData_1(0 to 35) => B"000000000000000000000000000000000000",
      Dbg_TrData_10(0 to 35) => B"000000000000000000000000000000000000",
      Dbg_TrData_11(0 to 35) => B"000000000000000000000000000000000000",
      Dbg_TrData_12(0 to 35) => B"000000000000000000000000000000000000",
      Dbg_TrData_13(0 to 35) => B"000000000000000000000000000000000000",
      Dbg_TrData_14(0 to 35) => B"000000000000000000000000000000000000",
      Dbg_TrData_15(0 to 35) => B"000000000000000000000000000000000000",
      Dbg_TrData_16(0 to 35) => B"000000000000000000000000000000000000",
      Dbg_TrData_17(0 to 35) => B"000000000000000000000000000000000000",
      Dbg_TrData_18(0 to 35) => B"000000000000000000000000000000000000",
      Dbg_TrData_19(0 to 35) => B"000000000000000000000000000000000000",
      Dbg_TrData_2(0 to 35) => B"000000000000000000000000000000000000",
      Dbg_TrData_20(0 to 35) => B"000000000000000000000000000000000000",
      Dbg_TrData_21(0 to 35) => B"000000000000000000000000000000000000",
      Dbg_TrData_22(0 to 35) => B"000000000000000000000000000000000000",
      Dbg_TrData_23(0 to 35) => B"000000000000000000000000000000000000",
      Dbg_TrData_24(0 to 35) => B"000000000000000000000000000000000000",
      Dbg_TrData_25(0 to 35) => B"000000000000000000000000000000000000",
      Dbg_TrData_26(0 to 35) => B"000000000000000000000000000000000000",
      Dbg_TrData_27(0 to 35) => B"000000000000000000000000000000000000",
      Dbg_TrData_28(0 to 35) => B"000000000000000000000000000000000000",
      Dbg_TrData_29(0 to 35) => B"000000000000000000000000000000000000",
      Dbg_TrData_3(0 to 35) => B"000000000000000000000000000000000000",
      Dbg_TrData_30(0 to 35) => B"000000000000000000000000000000000000",
      Dbg_TrData_31(0 to 35) => B"000000000000000000000000000000000000",
      Dbg_TrData_4(0 to 35) => B"000000000000000000000000000000000000",
      Dbg_TrData_5(0 to 35) => B"000000000000000000000000000000000000",
      Dbg_TrData_6(0 to 35) => B"000000000000000000000000000000000000",
      Dbg_TrData_7(0 to 35) => B"000000000000000000000000000000000000",
      Dbg_TrData_8(0 to 35) => B"000000000000000000000000000000000000",
      Dbg_TrData_9(0 to 35) => B"000000000000000000000000000000000000",
      Dbg_TrReady_0 => NLW_U0_Dbg_TrReady_0_UNCONNECTED,
      Dbg_TrReady_1 => NLW_U0_Dbg_TrReady_1_UNCONNECTED,
      Dbg_TrReady_10 => NLW_U0_Dbg_TrReady_10_UNCONNECTED,
      Dbg_TrReady_11 => NLW_U0_Dbg_TrReady_11_UNCONNECTED,
      Dbg_TrReady_12 => NLW_U0_Dbg_TrReady_12_UNCONNECTED,
      Dbg_TrReady_13 => NLW_U0_Dbg_TrReady_13_UNCONNECTED,
      Dbg_TrReady_14 => NLW_U0_Dbg_TrReady_14_UNCONNECTED,
      Dbg_TrReady_15 => NLW_U0_Dbg_TrReady_15_UNCONNECTED,
      Dbg_TrReady_16 => NLW_U0_Dbg_TrReady_16_UNCONNECTED,
      Dbg_TrReady_17 => NLW_U0_Dbg_TrReady_17_UNCONNECTED,
      Dbg_TrReady_18 => NLW_U0_Dbg_TrReady_18_UNCONNECTED,
      Dbg_TrReady_19 => NLW_U0_Dbg_TrReady_19_UNCONNECTED,
      Dbg_TrReady_2 => NLW_U0_Dbg_TrReady_2_UNCONNECTED,
      Dbg_TrReady_20 => NLW_U0_Dbg_TrReady_20_UNCONNECTED,
      Dbg_TrReady_21 => NLW_U0_Dbg_TrReady_21_UNCONNECTED,
      Dbg_TrReady_22 => NLW_U0_Dbg_TrReady_22_UNCONNECTED,
      Dbg_TrReady_23 => NLW_U0_Dbg_TrReady_23_UNCONNECTED,
      Dbg_TrReady_24 => NLW_U0_Dbg_TrReady_24_UNCONNECTED,
      Dbg_TrReady_25 => NLW_U0_Dbg_TrReady_25_UNCONNECTED,
      Dbg_TrReady_26 => NLW_U0_Dbg_TrReady_26_UNCONNECTED,
      Dbg_TrReady_27 => NLW_U0_Dbg_TrReady_27_UNCONNECTED,
      Dbg_TrReady_28 => NLW_U0_Dbg_TrReady_28_UNCONNECTED,
      Dbg_TrReady_29 => NLW_U0_Dbg_TrReady_29_UNCONNECTED,
      Dbg_TrReady_3 => NLW_U0_Dbg_TrReady_3_UNCONNECTED,
      Dbg_TrReady_30 => NLW_U0_Dbg_TrReady_30_UNCONNECTED,
      Dbg_TrReady_31 => NLW_U0_Dbg_TrReady_31_UNCONNECTED,
      Dbg_TrReady_4 => NLW_U0_Dbg_TrReady_4_UNCONNECTED,
      Dbg_TrReady_5 => NLW_U0_Dbg_TrReady_5_UNCONNECTED,
      Dbg_TrReady_6 => NLW_U0_Dbg_TrReady_6_UNCONNECTED,
      Dbg_TrReady_7 => NLW_U0_Dbg_TrReady_7_UNCONNECTED,
      Dbg_TrReady_8 => NLW_U0_Dbg_TrReady_8_UNCONNECTED,
      Dbg_TrReady_9 => NLW_U0_Dbg_TrReady_9_UNCONNECTED,
      Dbg_TrValid_0 => '0',
      Dbg_TrValid_1 => '0',
      Dbg_TrValid_10 => '0',
      Dbg_TrValid_11 => '0',
      Dbg_TrValid_12 => '0',
      Dbg_TrValid_13 => '0',
      Dbg_TrValid_14 => '0',
      Dbg_TrValid_15 => '0',
      Dbg_TrValid_16 => '0',
      Dbg_TrValid_17 => '0',
      Dbg_TrValid_18 => '0',
      Dbg_TrValid_19 => '0',
      Dbg_TrValid_2 => '0',
      Dbg_TrValid_20 => '0',
      Dbg_TrValid_21 => '0',
      Dbg_TrValid_22 => '0',
      Dbg_TrValid_23 => '0',
      Dbg_TrValid_24 => '0',
      Dbg_TrValid_25 => '0',
      Dbg_TrValid_26 => '0',
      Dbg_TrValid_27 => '0',
      Dbg_TrValid_28 => '0',
      Dbg_TrValid_29 => '0',
      Dbg_TrValid_3 => '0',
      Dbg_TrValid_30 => '0',
      Dbg_TrValid_31 => '0',
      Dbg_TrValid_4 => '0',
      Dbg_TrValid_5 => '0',
      Dbg_TrValid_6 => '0',
      Dbg_TrValid_7 => '0',
      Dbg_TrValid_8 => '0',
      Dbg_TrValid_9 => '0',
      Dbg_Trig_Ack_In_0(0 to 7) => NLW_U0_Dbg_Trig_Ack_In_0_UNCONNECTED(0 to 7),
      Dbg_Trig_Ack_In_1(0 to 7) => NLW_U0_Dbg_Trig_Ack_In_1_UNCONNECTED(0 to 7),
      Dbg_Trig_Ack_In_10(0 to 7) => NLW_U0_Dbg_Trig_Ack_In_10_UNCONNECTED(0 to 7),
      Dbg_Trig_Ack_In_11(0 to 7) => NLW_U0_Dbg_Trig_Ack_In_11_UNCONNECTED(0 to 7),
      Dbg_Trig_Ack_In_12(0 to 7) => NLW_U0_Dbg_Trig_Ack_In_12_UNCONNECTED(0 to 7),
      Dbg_Trig_Ack_In_13(0 to 7) => NLW_U0_Dbg_Trig_Ack_In_13_UNCONNECTED(0 to 7),
      Dbg_Trig_Ack_In_14(0 to 7) => NLW_U0_Dbg_Trig_Ack_In_14_UNCONNECTED(0 to 7),
      Dbg_Trig_Ack_In_15(0 to 7) => NLW_U0_Dbg_Trig_Ack_In_15_UNCONNECTED(0 to 7),
      Dbg_Trig_Ack_In_16(0 to 7) => NLW_U0_Dbg_Trig_Ack_In_16_UNCONNECTED(0 to 7),
      Dbg_Trig_Ack_In_17(0 to 7) => NLW_U0_Dbg_Trig_Ack_In_17_UNCONNECTED(0 to 7),
      Dbg_Trig_Ack_In_18(0 to 7) => NLW_U0_Dbg_Trig_Ack_In_18_UNCONNECTED(0 to 7),
      Dbg_Trig_Ack_In_19(0 to 7) => NLW_U0_Dbg_Trig_Ack_In_19_UNCONNECTED(0 to 7),
      Dbg_Trig_Ack_In_2(0 to 7) => NLW_U0_Dbg_Trig_Ack_In_2_UNCONNECTED(0 to 7),
      Dbg_Trig_Ack_In_20(0 to 7) => NLW_U0_Dbg_Trig_Ack_In_20_UNCONNECTED(0 to 7),
      Dbg_Trig_Ack_In_21(0 to 7) => NLW_U0_Dbg_Trig_Ack_In_21_UNCONNECTED(0 to 7),
      Dbg_Trig_Ack_In_22(0 to 7) => NLW_U0_Dbg_Trig_Ack_In_22_UNCONNECTED(0 to 7),
      Dbg_Trig_Ack_In_23(0 to 7) => NLW_U0_Dbg_Trig_Ack_In_23_UNCONNECTED(0 to 7),
      Dbg_Trig_Ack_In_24(0 to 7) => NLW_U0_Dbg_Trig_Ack_In_24_UNCONNECTED(0 to 7),
      Dbg_Trig_Ack_In_25(0 to 7) => NLW_U0_Dbg_Trig_Ack_In_25_UNCONNECTED(0 to 7),
      Dbg_Trig_Ack_In_26(0 to 7) => NLW_U0_Dbg_Trig_Ack_In_26_UNCONNECTED(0 to 7),
      Dbg_Trig_Ack_In_27(0 to 7) => NLW_U0_Dbg_Trig_Ack_In_27_UNCONNECTED(0 to 7),
      Dbg_Trig_Ack_In_28(0 to 7) => NLW_U0_Dbg_Trig_Ack_In_28_UNCONNECTED(0 to 7),
      Dbg_Trig_Ack_In_29(0 to 7) => NLW_U0_Dbg_Trig_Ack_In_29_UNCONNECTED(0 to 7),
      Dbg_Trig_Ack_In_3(0 to 7) => NLW_U0_Dbg_Trig_Ack_In_3_UNCONNECTED(0 to 7),
      Dbg_Trig_Ack_In_30(0 to 7) => NLW_U0_Dbg_Trig_Ack_In_30_UNCONNECTED(0 to 7),
      Dbg_Trig_Ack_In_31(0 to 7) => NLW_U0_Dbg_Trig_Ack_In_31_UNCONNECTED(0 to 7),
      Dbg_Trig_Ack_In_4(0 to 7) => NLW_U0_Dbg_Trig_Ack_In_4_UNCONNECTED(0 to 7),
      Dbg_Trig_Ack_In_5(0 to 7) => NLW_U0_Dbg_Trig_Ack_In_5_UNCONNECTED(0 to 7),
      Dbg_Trig_Ack_In_6(0 to 7) => NLW_U0_Dbg_Trig_Ack_In_6_UNCONNECTED(0 to 7),
      Dbg_Trig_Ack_In_7(0 to 7) => NLW_U0_Dbg_Trig_Ack_In_7_UNCONNECTED(0 to 7),
      Dbg_Trig_Ack_In_8(0 to 7) => NLW_U0_Dbg_Trig_Ack_In_8_UNCONNECTED(0 to 7),
      Dbg_Trig_Ack_In_9(0 to 7) => NLW_U0_Dbg_Trig_Ack_In_9_UNCONNECTED(0 to 7),
      Dbg_Trig_Ack_Out_0(0 to 7) => B"00000000",
      Dbg_Trig_Ack_Out_1(0 to 7) => B"00000000",
      Dbg_Trig_Ack_Out_10(0 to 7) => B"00000000",
      Dbg_Trig_Ack_Out_11(0 to 7) => B"00000000",
      Dbg_Trig_Ack_Out_12(0 to 7) => B"00000000",
      Dbg_Trig_Ack_Out_13(0 to 7) => B"00000000",
      Dbg_Trig_Ack_Out_14(0 to 7) => B"00000000",
      Dbg_Trig_Ack_Out_15(0 to 7) => B"00000000",
      Dbg_Trig_Ack_Out_16(0 to 7) => B"00000000",
      Dbg_Trig_Ack_Out_17(0 to 7) => B"00000000",
      Dbg_Trig_Ack_Out_18(0 to 7) => B"00000000",
      Dbg_Trig_Ack_Out_19(0 to 7) => B"00000000",
      Dbg_Trig_Ack_Out_2(0 to 7) => B"00000000",
      Dbg_Trig_Ack_Out_20(0 to 7) => B"00000000",
      Dbg_Trig_Ack_Out_21(0 to 7) => B"00000000",
      Dbg_Trig_Ack_Out_22(0 to 7) => B"00000000",
      Dbg_Trig_Ack_Out_23(0 to 7) => B"00000000",
      Dbg_Trig_Ack_Out_24(0 to 7) => B"00000000",
      Dbg_Trig_Ack_Out_25(0 to 7) => B"00000000",
      Dbg_Trig_Ack_Out_26(0 to 7) => B"00000000",
      Dbg_Trig_Ack_Out_27(0 to 7) => B"00000000",
      Dbg_Trig_Ack_Out_28(0 to 7) => B"00000000",
      Dbg_Trig_Ack_Out_29(0 to 7) => B"00000000",
      Dbg_Trig_Ack_Out_3(0 to 7) => B"00000000",
      Dbg_Trig_Ack_Out_30(0 to 7) => B"00000000",
      Dbg_Trig_Ack_Out_31(0 to 7) => B"00000000",
      Dbg_Trig_Ack_Out_4(0 to 7) => B"00000000",
      Dbg_Trig_Ack_Out_5(0 to 7) => B"00000000",
      Dbg_Trig_Ack_Out_6(0 to 7) => B"00000000",
      Dbg_Trig_Ack_Out_7(0 to 7) => B"00000000",
      Dbg_Trig_Ack_Out_8(0 to 7) => B"00000000",
      Dbg_Trig_Ack_Out_9(0 to 7) => B"00000000",
      Dbg_Trig_In_0(0 to 7) => B"00000000",
      Dbg_Trig_In_1(0 to 7) => B"00000000",
      Dbg_Trig_In_10(0 to 7) => B"00000000",
      Dbg_Trig_In_11(0 to 7) => B"00000000",
      Dbg_Trig_In_12(0 to 7) => B"00000000",
      Dbg_Trig_In_13(0 to 7) => B"00000000",
      Dbg_Trig_In_14(0 to 7) => B"00000000",
      Dbg_Trig_In_15(0 to 7) => B"00000000",
      Dbg_Trig_In_16(0 to 7) => B"00000000",
      Dbg_Trig_In_17(0 to 7) => B"00000000",
      Dbg_Trig_In_18(0 to 7) => B"00000000",
      Dbg_Trig_In_19(0 to 7) => B"00000000",
      Dbg_Trig_In_2(0 to 7) => B"00000000",
      Dbg_Trig_In_20(0 to 7) => B"00000000",
      Dbg_Trig_In_21(0 to 7) => B"00000000",
      Dbg_Trig_In_22(0 to 7) => B"00000000",
      Dbg_Trig_In_23(0 to 7) => B"00000000",
      Dbg_Trig_In_24(0 to 7) => B"00000000",
      Dbg_Trig_In_25(0 to 7) => B"00000000",
      Dbg_Trig_In_26(0 to 7) => B"00000000",
      Dbg_Trig_In_27(0 to 7) => B"00000000",
      Dbg_Trig_In_28(0 to 7) => B"00000000",
      Dbg_Trig_In_29(0 to 7) => B"00000000",
      Dbg_Trig_In_3(0 to 7) => B"00000000",
      Dbg_Trig_In_30(0 to 7) => B"00000000",
      Dbg_Trig_In_31(0 to 7) => B"00000000",
      Dbg_Trig_In_4(0 to 7) => B"00000000",
      Dbg_Trig_In_5(0 to 7) => B"00000000",
      Dbg_Trig_In_6(0 to 7) => B"00000000",
      Dbg_Trig_In_7(0 to 7) => B"00000000",
      Dbg_Trig_In_8(0 to 7) => B"00000000",
      Dbg_Trig_In_9(0 to 7) => B"00000000",
      Dbg_Trig_Out_0(0 to 7) => NLW_U0_Dbg_Trig_Out_0_UNCONNECTED(0 to 7),
      Dbg_Trig_Out_1(0 to 7) => NLW_U0_Dbg_Trig_Out_1_UNCONNECTED(0 to 7),
      Dbg_Trig_Out_10(0 to 7) => NLW_U0_Dbg_Trig_Out_10_UNCONNECTED(0 to 7),
      Dbg_Trig_Out_11(0 to 7) => NLW_U0_Dbg_Trig_Out_11_UNCONNECTED(0 to 7),
      Dbg_Trig_Out_12(0 to 7) => NLW_U0_Dbg_Trig_Out_12_UNCONNECTED(0 to 7),
      Dbg_Trig_Out_13(0 to 7) => NLW_U0_Dbg_Trig_Out_13_UNCONNECTED(0 to 7),
      Dbg_Trig_Out_14(0 to 7) => NLW_U0_Dbg_Trig_Out_14_UNCONNECTED(0 to 7),
      Dbg_Trig_Out_15(0 to 7) => NLW_U0_Dbg_Trig_Out_15_UNCONNECTED(0 to 7),
      Dbg_Trig_Out_16(0 to 7) => NLW_U0_Dbg_Trig_Out_16_UNCONNECTED(0 to 7),
      Dbg_Trig_Out_17(0 to 7) => NLW_U0_Dbg_Trig_Out_17_UNCONNECTED(0 to 7),
      Dbg_Trig_Out_18(0 to 7) => NLW_U0_Dbg_Trig_Out_18_UNCONNECTED(0 to 7),
      Dbg_Trig_Out_19(0 to 7) => NLW_U0_Dbg_Trig_Out_19_UNCONNECTED(0 to 7),
      Dbg_Trig_Out_2(0 to 7) => NLW_U0_Dbg_Trig_Out_2_UNCONNECTED(0 to 7),
      Dbg_Trig_Out_20(0 to 7) => NLW_U0_Dbg_Trig_Out_20_UNCONNECTED(0 to 7),
      Dbg_Trig_Out_21(0 to 7) => NLW_U0_Dbg_Trig_Out_21_UNCONNECTED(0 to 7),
      Dbg_Trig_Out_22(0 to 7) => NLW_U0_Dbg_Trig_Out_22_UNCONNECTED(0 to 7),
      Dbg_Trig_Out_23(0 to 7) => NLW_U0_Dbg_Trig_Out_23_UNCONNECTED(0 to 7),
      Dbg_Trig_Out_24(0 to 7) => NLW_U0_Dbg_Trig_Out_24_UNCONNECTED(0 to 7),
      Dbg_Trig_Out_25(0 to 7) => NLW_U0_Dbg_Trig_Out_25_UNCONNECTED(0 to 7),
      Dbg_Trig_Out_26(0 to 7) => NLW_U0_Dbg_Trig_Out_26_UNCONNECTED(0 to 7),
      Dbg_Trig_Out_27(0 to 7) => NLW_U0_Dbg_Trig_Out_27_UNCONNECTED(0 to 7),
      Dbg_Trig_Out_28(0 to 7) => NLW_U0_Dbg_Trig_Out_28_UNCONNECTED(0 to 7),
      Dbg_Trig_Out_29(0 to 7) => NLW_U0_Dbg_Trig_Out_29_UNCONNECTED(0 to 7),
      Dbg_Trig_Out_3(0 to 7) => NLW_U0_Dbg_Trig_Out_3_UNCONNECTED(0 to 7),
      Dbg_Trig_Out_30(0 to 7) => NLW_U0_Dbg_Trig_Out_30_UNCONNECTED(0 to 7),
      Dbg_Trig_Out_31(0 to 7) => NLW_U0_Dbg_Trig_Out_31_UNCONNECTED(0 to 7),
      Dbg_Trig_Out_4(0 to 7) => NLW_U0_Dbg_Trig_Out_4_UNCONNECTED(0 to 7),
      Dbg_Trig_Out_5(0 to 7) => NLW_U0_Dbg_Trig_Out_5_UNCONNECTED(0 to 7),
      Dbg_Trig_Out_6(0 to 7) => NLW_U0_Dbg_Trig_Out_6_UNCONNECTED(0 to 7),
      Dbg_Trig_Out_7(0 to 7) => NLW_U0_Dbg_Trig_Out_7_UNCONNECTED(0 to 7),
      Dbg_Trig_Out_8(0 to 7) => NLW_U0_Dbg_Trig_Out_8_UNCONNECTED(0 to 7),
      Dbg_Trig_Out_9(0 to 7) => NLW_U0_Dbg_Trig_Out_9_UNCONNECTED(0 to 7),
      Dbg_Update_0 => Dbg_Update_0,
      Dbg_Update_1 => NLW_U0_Dbg_Update_1_UNCONNECTED,
      Dbg_Update_10 => NLW_U0_Dbg_Update_10_UNCONNECTED,
      Dbg_Update_11 => NLW_U0_Dbg_Update_11_UNCONNECTED,
      Dbg_Update_12 => NLW_U0_Dbg_Update_12_UNCONNECTED,
      Dbg_Update_13 => NLW_U0_Dbg_Update_13_UNCONNECTED,
      Dbg_Update_14 => NLW_U0_Dbg_Update_14_UNCONNECTED,
      Dbg_Update_15 => NLW_U0_Dbg_Update_15_UNCONNECTED,
      Dbg_Update_16 => NLW_U0_Dbg_Update_16_UNCONNECTED,
      Dbg_Update_17 => NLW_U0_Dbg_Update_17_UNCONNECTED,
      Dbg_Update_18 => NLW_U0_Dbg_Update_18_UNCONNECTED,
      Dbg_Update_19 => NLW_U0_Dbg_Update_19_UNCONNECTED,
      Dbg_Update_2 => NLW_U0_Dbg_Update_2_UNCONNECTED,
      Dbg_Update_20 => NLW_U0_Dbg_Update_20_UNCONNECTED,
      Dbg_Update_21 => NLW_U0_Dbg_Update_21_UNCONNECTED,
      Dbg_Update_22 => NLW_U0_Dbg_Update_22_UNCONNECTED,
      Dbg_Update_23 => NLW_U0_Dbg_Update_23_UNCONNECTED,
      Dbg_Update_24 => NLW_U0_Dbg_Update_24_UNCONNECTED,
      Dbg_Update_25 => NLW_U0_Dbg_Update_25_UNCONNECTED,
      Dbg_Update_26 => NLW_U0_Dbg_Update_26_UNCONNECTED,
      Dbg_Update_27 => NLW_U0_Dbg_Update_27_UNCONNECTED,
      Dbg_Update_28 => NLW_U0_Dbg_Update_28_UNCONNECTED,
      Dbg_Update_29 => NLW_U0_Dbg_Update_29_UNCONNECTED,
      Dbg_Update_3 => NLW_U0_Dbg_Update_3_UNCONNECTED,
      Dbg_Update_30 => NLW_U0_Dbg_Update_30_UNCONNECTED,
      Dbg_Update_31 => NLW_U0_Dbg_Update_31_UNCONNECTED,
      Dbg_Update_4 => NLW_U0_Dbg_Update_4_UNCONNECTED,
      Dbg_Update_5 => NLW_U0_Dbg_Update_5_UNCONNECTED,
      Dbg_Update_6 => NLW_U0_Dbg_Update_6_UNCONNECTED,
      Dbg_Update_7 => NLW_U0_Dbg_Update_7_UNCONNECTED,
      Dbg_Update_8 => NLW_U0_Dbg_Update_8_UNCONNECTED,
      Dbg_Update_9 => NLW_U0_Dbg_Update_9_UNCONNECTED,
      Dbg_WDATA_0(31 downto 0) => NLW_U0_Dbg_WDATA_0_UNCONNECTED(31 downto 0),
      Dbg_WDATA_1(31 downto 0) => NLW_U0_Dbg_WDATA_1_UNCONNECTED(31 downto 0),
      Dbg_WDATA_10(31 downto 0) => NLW_U0_Dbg_WDATA_10_UNCONNECTED(31 downto 0),
      Dbg_WDATA_11(31 downto 0) => NLW_U0_Dbg_WDATA_11_UNCONNECTED(31 downto 0),
      Dbg_WDATA_12(31 downto 0) => NLW_U0_Dbg_WDATA_12_UNCONNECTED(31 downto 0),
      Dbg_WDATA_13(31 downto 0) => NLW_U0_Dbg_WDATA_13_UNCONNECTED(31 downto 0),
      Dbg_WDATA_14(31 downto 0) => NLW_U0_Dbg_WDATA_14_UNCONNECTED(31 downto 0),
      Dbg_WDATA_15(31 downto 0) => NLW_U0_Dbg_WDATA_15_UNCONNECTED(31 downto 0),
      Dbg_WDATA_16(31 downto 0) => NLW_U0_Dbg_WDATA_16_UNCONNECTED(31 downto 0),
      Dbg_WDATA_17(31 downto 0) => NLW_U0_Dbg_WDATA_17_UNCONNECTED(31 downto 0),
      Dbg_WDATA_18(31 downto 0) => NLW_U0_Dbg_WDATA_18_UNCONNECTED(31 downto 0),
      Dbg_WDATA_19(31 downto 0) => NLW_U0_Dbg_WDATA_19_UNCONNECTED(31 downto 0),
      Dbg_WDATA_2(31 downto 0) => NLW_U0_Dbg_WDATA_2_UNCONNECTED(31 downto 0),
      Dbg_WDATA_20(31 downto 0) => NLW_U0_Dbg_WDATA_20_UNCONNECTED(31 downto 0),
      Dbg_WDATA_21(31 downto 0) => NLW_U0_Dbg_WDATA_21_UNCONNECTED(31 downto 0),
      Dbg_WDATA_22(31 downto 0) => NLW_U0_Dbg_WDATA_22_UNCONNECTED(31 downto 0),
      Dbg_WDATA_23(31 downto 0) => NLW_U0_Dbg_WDATA_23_UNCONNECTED(31 downto 0),
      Dbg_WDATA_24(31 downto 0) => NLW_U0_Dbg_WDATA_24_UNCONNECTED(31 downto 0),
      Dbg_WDATA_25(31 downto 0) => NLW_U0_Dbg_WDATA_25_UNCONNECTED(31 downto 0),
      Dbg_WDATA_26(31 downto 0) => NLW_U0_Dbg_WDATA_26_UNCONNECTED(31 downto 0),
      Dbg_WDATA_27(31 downto 0) => NLW_U0_Dbg_WDATA_27_UNCONNECTED(31 downto 0),
      Dbg_WDATA_28(31 downto 0) => NLW_U0_Dbg_WDATA_28_UNCONNECTED(31 downto 0),
      Dbg_WDATA_29(31 downto 0) => NLW_U0_Dbg_WDATA_29_UNCONNECTED(31 downto 0),
      Dbg_WDATA_3(31 downto 0) => NLW_U0_Dbg_WDATA_3_UNCONNECTED(31 downto 0),
      Dbg_WDATA_30(31 downto 0) => NLW_U0_Dbg_WDATA_30_UNCONNECTED(31 downto 0),
      Dbg_WDATA_31(31 downto 0) => NLW_U0_Dbg_WDATA_31_UNCONNECTED(31 downto 0),
      Dbg_WDATA_4(31 downto 0) => NLW_U0_Dbg_WDATA_4_UNCONNECTED(31 downto 0),
      Dbg_WDATA_5(31 downto 0) => NLW_U0_Dbg_WDATA_5_UNCONNECTED(31 downto 0),
      Dbg_WDATA_6(31 downto 0) => NLW_U0_Dbg_WDATA_6_UNCONNECTED(31 downto 0),
      Dbg_WDATA_7(31 downto 0) => NLW_U0_Dbg_WDATA_7_UNCONNECTED(31 downto 0),
      Dbg_WDATA_8(31 downto 0) => NLW_U0_Dbg_WDATA_8_UNCONNECTED(31 downto 0),
      Dbg_WDATA_9(31 downto 0) => NLW_U0_Dbg_WDATA_9_UNCONNECTED(31 downto 0),
      Dbg_WREADY_0 => '0',
      Dbg_WREADY_1 => '0',
      Dbg_WREADY_10 => '0',
      Dbg_WREADY_11 => '0',
      Dbg_WREADY_12 => '0',
      Dbg_WREADY_13 => '0',
      Dbg_WREADY_14 => '0',
      Dbg_WREADY_15 => '0',
      Dbg_WREADY_16 => '0',
      Dbg_WREADY_17 => '0',
      Dbg_WREADY_18 => '0',
      Dbg_WREADY_19 => '0',
      Dbg_WREADY_2 => '0',
      Dbg_WREADY_20 => '0',
      Dbg_WREADY_21 => '0',
      Dbg_WREADY_22 => '0',
      Dbg_WREADY_23 => '0',
      Dbg_WREADY_24 => '0',
      Dbg_WREADY_25 => '0',
      Dbg_WREADY_26 => '0',
      Dbg_WREADY_27 => '0',
      Dbg_WREADY_28 => '0',
      Dbg_WREADY_29 => '0',
      Dbg_WREADY_3 => '0',
      Dbg_WREADY_30 => '0',
      Dbg_WREADY_31 => '0',
      Dbg_WREADY_4 => '0',
      Dbg_WREADY_5 => '0',
      Dbg_WREADY_6 => '0',
      Dbg_WREADY_7 => '0',
      Dbg_WREADY_8 => '0',
      Dbg_WREADY_9 => '0',
      Dbg_WVALID_0 => NLW_U0_Dbg_WVALID_0_UNCONNECTED,
      Dbg_WVALID_1 => NLW_U0_Dbg_WVALID_1_UNCONNECTED,
      Dbg_WVALID_10 => NLW_U0_Dbg_WVALID_10_UNCONNECTED,
      Dbg_WVALID_11 => NLW_U0_Dbg_WVALID_11_UNCONNECTED,
      Dbg_WVALID_12 => NLW_U0_Dbg_WVALID_12_UNCONNECTED,
      Dbg_WVALID_13 => NLW_U0_Dbg_WVALID_13_UNCONNECTED,
      Dbg_WVALID_14 => NLW_U0_Dbg_WVALID_14_UNCONNECTED,
      Dbg_WVALID_15 => NLW_U0_Dbg_WVALID_15_UNCONNECTED,
      Dbg_WVALID_16 => NLW_U0_Dbg_WVALID_16_UNCONNECTED,
      Dbg_WVALID_17 => NLW_U0_Dbg_WVALID_17_UNCONNECTED,
      Dbg_WVALID_18 => NLW_U0_Dbg_WVALID_18_UNCONNECTED,
      Dbg_WVALID_19 => NLW_U0_Dbg_WVALID_19_UNCONNECTED,
      Dbg_WVALID_2 => NLW_U0_Dbg_WVALID_2_UNCONNECTED,
      Dbg_WVALID_20 => NLW_U0_Dbg_WVALID_20_UNCONNECTED,
      Dbg_WVALID_21 => NLW_U0_Dbg_WVALID_21_UNCONNECTED,
      Dbg_WVALID_22 => NLW_U0_Dbg_WVALID_22_UNCONNECTED,
      Dbg_WVALID_23 => NLW_U0_Dbg_WVALID_23_UNCONNECTED,
      Dbg_WVALID_24 => NLW_U0_Dbg_WVALID_24_UNCONNECTED,
      Dbg_WVALID_25 => NLW_U0_Dbg_WVALID_25_UNCONNECTED,
      Dbg_WVALID_26 => NLW_U0_Dbg_WVALID_26_UNCONNECTED,
      Dbg_WVALID_27 => NLW_U0_Dbg_WVALID_27_UNCONNECTED,
      Dbg_WVALID_28 => NLW_U0_Dbg_WVALID_28_UNCONNECTED,
      Dbg_WVALID_29 => NLW_U0_Dbg_WVALID_29_UNCONNECTED,
      Dbg_WVALID_3 => NLW_U0_Dbg_WVALID_3_UNCONNECTED,
      Dbg_WVALID_30 => NLW_U0_Dbg_WVALID_30_UNCONNECTED,
      Dbg_WVALID_31 => NLW_U0_Dbg_WVALID_31_UNCONNECTED,
      Dbg_WVALID_4 => NLW_U0_Dbg_WVALID_4_UNCONNECTED,
      Dbg_WVALID_5 => NLW_U0_Dbg_WVALID_5_UNCONNECTED,
      Dbg_WVALID_6 => NLW_U0_Dbg_WVALID_6_UNCONNECTED,
      Dbg_WVALID_7 => NLW_U0_Dbg_WVALID_7_UNCONNECTED,
      Dbg_WVALID_8 => NLW_U0_Dbg_WVALID_8_UNCONNECTED,
      Dbg_WVALID_9 => NLW_U0_Dbg_WVALID_9_UNCONNECTED,
      Debug_SYS_Rst => Debug_SYS_Rst,
      Ext_BRK => NLW_U0_Ext_BRK_UNCONNECTED,
      Ext_JTAG_CAPTURE => NLW_U0_Ext_JTAG_CAPTURE_UNCONNECTED,
      Ext_JTAG_DRCK => NLW_U0_Ext_JTAG_DRCK_UNCONNECTED,
      Ext_JTAG_RESET => NLW_U0_Ext_JTAG_RESET_UNCONNECTED,
      Ext_JTAG_SEL => NLW_U0_Ext_JTAG_SEL_UNCONNECTED,
      Ext_JTAG_SHIFT => NLW_U0_Ext_JTAG_SHIFT_UNCONNECTED,
      Ext_JTAG_TDI => NLW_U0_Ext_JTAG_TDI_UNCONNECTED,
      Ext_JTAG_TDO => '0',
      Ext_JTAG_UPDATE => NLW_U0_Ext_JTAG_UPDATE_UNCONNECTED,
      Ext_NM_BRK => NLW_U0_Ext_NM_BRK_UNCONNECTED,
      Interrupt => Interrupt,
      LMB_Addr_Strobe_0 => NLW_U0_LMB_Addr_Strobe_0_UNCONNECTED,
      LMB_Addr_Strobe_1 => NLW_U0_LMB_Addr_Strobe_1_UNCONNECTED,
      LMB_Addr_Strobe_10 => NLW_U0_LMB_Addr_Strobe_10_UNCONNECTED,
      LMB_Addr_Strobe_11 => NLW_U0_LMB_Addr_Strobe_11_UNCONNECTED,
      LMB_Addr_Strobe_12 => NLW_U0_LMB_Addr_Strobe_12_UNCONNECTED,
      LMB_Addr_Strobe_13 => NLW_U0_LMB_Addr_Strobe_13_UNCONNECTED,
      LMB_Addr_Strobe_14 => NLW_U0_LMB_Addr_Strobe_14_UNCONNECTED,
      LMB_Addr_Strobe_15 => NLW_U0_LMB_Addr_Strobe_15_UNCONNECTED,
      LMB_Addr_Strobe_16 => NLW_U0_LMB_Addr_Strobe_16_UNCONNECTED,
      LMB_Addr_Strobe_17 => NLW_U0_LMB_Addr_Strobe_17_UNCONNECTED,
      LMB_Addr_Strobe_18 => NLW_U0_LMB_Addr_Strobe_18_UNCONNECTED,
      LMB_Addr_Strobe_19 => NLW_U0_LMB_Addr_Strobe_19_UNCONNECTED,
      LMB_Addr_Strobe_2 => NLW_U0_LMB_Addr_Strobe_2_UNCONNECTED,
      LMB_Addr_Strobe_20 => NLW_U0_LMB_Addr_Strobe_20_UNCONNECTED,
      LMB_Addr_Strobe_21 => NLW_U0_LMB_Addr_Strobe_21_UNCONNECTED,
      LMB_Addr_Strobe_22 => NLW_U0_LMB_Addr_Strobe_22_UNCONNECTED,
      LMB_Addr_Strobe_23 => NLW_U0_LMB_Addr_Strobe_23_UNCONNECTED,
      LMB_Addr_Strobe_24 => NLW_U0_LMB_Addr_Strobe_24_UNCONNECTED,
      LMB_Addr_Strobe_25 => NLW_U0_LMB_Addr_Strobe_25_UNCONNECTED,
      LMB_Addr_Strobe_26 => NLW_U0_LMB_Addr_Strobe_26_UNCONNECTED,
      LMB_Addr_Strobe_27 => NLW_U0_LMB_Addr_Strobe_27_UNCONNECTED,
      LMB_Addr_Strobe_28 => NLW_U0_LMB_Addr_Strobe_28_UNCONNECTED,
      LMB_Addr_Strobe_29 => NLW_U0_LMB_Addr_Strobe_29_UNCONNECTED,
      LMB_Addr_Strobe_3 => NLW_U0_LMB_Addr_Strobe_3_UNCONNECTED,
      LMB_Addr_Strobe_30 => NLW_U0_LMB_Addr_Strobe_30_UNCONNECTED,
      LMB_Addr_Strobe_31 => NLW_U0_LMB_Addr_Strobe_31_UNCONNECTED,
      LMB_Addr_Strobe_4 => NLW_U0_LMB_Addr_Strobe_4_UNCONNECTED,
      LMB_Addr_Strobe_5 => NLW_U0_LMB_Addr_Strobe_5_UNCONNECTED,
      LMB_Addr_Strobe_6 => NLW_U0_LMB_Addr_Strobe_6_UNCONNECTED,
      LMB_Addr_Strobe_7 => NLW_U0_LMB_Addr_Strobe_7_UNCONNECTED,
      LMB_Addr_Strobe_8 => NLW_U0_LMB_Addr_Strobe_8_UNCONNECTED,
      LMB_Addr_Strobe_9 => NLW_U0_LMB_Addr_Strobe_9_UNCONNECTED,
      LMB_Byte_Enable_0(0 to 3) => NLW_U0_LMB_Byte_Enable_0_UNCONNECTED(0 to 3),
      LMB_Byte_Enable_1(0 to 3) => NLW_U0_LMB_Byte_Enable_1_UNCONNECTED(0 to 3),
      LMB_Byte_Enable_10(0 to 3) => NLW_U0_LMB_Byte_Enable_10_UNCONNECTED(0 to 3),
      LMB_Byte_Enable_11(0 to 3) => NLW_U0_LMB_Byte_Enable_11_UNCONNECTED(0 to 3),
      LMB_Byte_Enable_12(0 to 3) => NLW_U0_LMB_Byte_Enable_12_UNCONNECTED(0 to 3),
      LMB_Byte_Enable_13(0 to 3) => NLW_U0_LMB_Byte_Enable_13_UNCONNECTED(0 to 3),
      LMB_Byte_Enable_14(0 to 3) => NLW_U0_LMB_Byte_Enable_14_UNCONNECTED(0 to 3),
      LMB_Byte_Enable_15(0 to 3) => NLW_U0_LMB_Byte_Enable_15_UNCONNECTED(0 to 3),
      LMB_Byte_Enable_16(0 to 3) => NLW_U0_LMB_Byte_Enable_16_UNCONNECTED(0 to 3),
      LMB_Byte_Enable_17(0 to 3) => NLW_U0_LMB_Byte_Enable_17_UNCONNECTED(0 to 3),
      LMB_Byte_Enable_18(0 to 3) => NLW_U0_LMB_Byte_Enable_18_UNCONNECTED(0 to 3),
      LMB_Byte_Enable_19(0 to 3) => NLW_U0_LMB_Byte_Enable_19_UNCONNECTED(0 to 3),
      LMB_Byte_Enable_2(0 to 3) => NLW_U0_LMB_Byte_Enable_2_UNCONNECTED(0 to 3),
      LMB_Byte_Enable_20(0 to 3) => NLW_U0_LMB_Byte_Enable_20_UNCONNECTED(0 to 3),
      LMB_Byte_Enable_21(0 to 3) => NLW_U0_LMB_Byte_Enable_21_UNCONNECTED(0 to 3),
      LMB_Byte_Enable_22(0 to 3) => NLW_U0_LMB_Byte_Enable_22_UNCONNECTED(0 to 3),
      LMB_Byte_Enable_23(0 to 3) => NLW_U0_LMB_Byte_Enable_23_UNCONNECTED(0 to 3),
      LMB_Byte_Enable_24(0 to 3) => NLW_U0_LMB_Byte_Enable_24_UNCONNECTED(0 to 3),
      LMB_Byte_Enable_25(0 to 3) => NLW_U0_LMB_Byte_Enable_25_UNCONNECTED(0 to 3),
      LMB_Byte_Enable_26(0 to 3) => NLW_U0_LMB_Byte_Enable_26_UNCONNECTED(0 to 3),
      LMB_Byte_Enable_27(0 to 3) => NLW_U0_LMB_Byte_Enable_27_UNCONNECTED(0 to 3),
      LMB_Byte_Enable_28(0 to 3) => NLW_U0_LMB_Byte_Enable_28_UNCONNECTED(0 to 3),
      LMB_Byte_Enable_29(0 to 3) => NLW_U0_LMB_Byte_Enable_29_UNCONNECTED(0 to 3),
      LMB_Byte_Enable_3(0 to 3) => NLW_U0_LMB_Byte_Enable_3_UNCONNECTED(0 to 3),
      LMB_Byte_Enable_30(0 to 3) => NLW_U0_LMB_Byte_Enable_30_UNCONNECTED(0 to 3),
      LMB_Byte_Enable_31(0 to 3) => NLW_U0_LMB_Byte_Enable_31_UNCONNECTED(0 to 3),
      LMB_Byte_Enable_4(0 to 3) => NLW_U0_LMB_Byte_Enable_4_UNCONNECTED(0 to 3),
      LMB_Byte_Enable_5(0 to 3) => NLW_U0_LMB_Byte_Enable_5_UNCONNECTED(0 to 3),
      LMB_Byte_Enable_6(0 to 3) => NLW_U0_LMB_Byte_Enable_6_UNCONNECTED(0 to 3),
      LMB_Byte_Enable_7(0 to 3) => NLW_U0_LMB_Byte_Enable_7_UNCONNECTED(0 to 3),
      LMB_Byte_Enable_8(0 to 3) => NLW_U0_LMB_Byte_Enable_8_UNCONNECTED(0 to 3),
      LMB_Byte_Enable_9(0 to 3) => NLW_U0_LMB_Byte_Enable_9_UNCONNECTED(0 to 3),
      LMB_CE_0 => '0',
      LMB_CE_1 => '0',
      LMB_CE_10 => '0',
      LMB_CE_11 => '0',
      LMB_CE_12 => '0',
      LMB_CE_13 => '0',
      LMB_CE_14 => '0',
      LMB_CE_15 => '0',
      LMB_CE_16 => '0',
      LMB_CE_17 => '0',
      LMB_CE_18 => '0',
      LMB_CE_19 => '0',
      LMB_CE_2 => '0',
      LMB_CE_20 => '0',
      LMB_CE_21 => '0',
      LMB_CE_22 => '0',
      LMB_CE_23 => '0',
      LMB_CE_24 => '0',
      LMB_CE_25 => '0',
      LMB_CE_26 => '0',
      LMB_CE_27 => '0',
      LMB_CE_28 => '0',
      LMB_CE_29 => '0',
      LMB_CE_3 => '0',
      LMB_CE_30 => '0',
      LMB_CE_31 => '0',
      LMB_CE_4 => '0',
      LMB_CE_5 => '0',
      LMB_CE_6 => '0',
      LMB_CE_7 => '0',
      LMB_CE_8 => '0',
      LMB_CE_9 => '0',
      LMB_Data_Addr_0(0 to 31) => NLW_U0_LMB_Data_Addr_0_UNCONNECTED(0 to 31),
      LMB_Data_Addr_1(0 to 31) => NLW_U0_LMB_Data_Addr_1_UNCONNECTED(0 to 31),
      LMB_Data_Addr_10(0 to 31) => NLW_U0_LMB_Data_Addr_10_UNCONNECTED(0 to 31),
      LMB_Data_Addr_11(0 to 31) => NLW_U0_LMB_Data_Addr_11_UNCONNECTED(0 to 31),
      LMB_Data_Addr_12(0 to 31) => NLW_U0_LMB_Data_Addr_12_UNCONNECTED(0 to 31),
      LMB_Data_Addr_13(0 to 31) => NLW_U0_LMB_Data_Addr_13_UNCONNECTED(0 to 31),
      LMB_Data_Addr_14(0 to 31) => NLW_U0_LMB_Data_Addr_14_UNCONNECTED(0 to 31),
      LMB_Data_Addr_15(0 to 31) => NLW_U0_LMB_Data_Addr_15_UNCONNECTED(0 to 31),
      LMB_Data_Addr_16(0 to 31) => NLW_U0_LMB_Data_Addr_16_UNCONNECTED(0 to 31),
      LMB_Data_Addr_17(0 to 31) => NLW_U0_LMB_Data_Addr_17_UNCONNECTED(0 to 31),
      LMB_Data_Addr_18(0 to 31) => NLW_U0_LMB_Data_Addr_18_UNCONNECTED(0 to 31),
      LMB_Data_Addr_19(0 to 31) => NLW_U0_LMB_Data_Addr_19_UNCONNECTED(0 to 31),
      LMB_Data_Addr_2(0 to 31) => NLW_U0_LMB_Data_Addr_2_UNCONNECTED(0 to 31),
      LMB_Data_Addr_20(0 to 31) => NLW_U0_LMB_Data_Addr_20_UNCONNECTED(0 to 31),
      LMB_Data_Addr_21(0 to 31) => NLW_U0_LMB_Data_Addr_21_UNCONNECTED(0 to 31),
      LMB_Data_Addr_22(0 to 31) => NLW_U0_LMB_Data_Addr_22_UNCONNECTED(0 to 31),
      LMB_Data_Addr_23(0 to 31) => NLW_U0_LMB_Data_Addr_23_UNCONNECTED(0 to 31),
      LMB_Data_Addr_24(0 to 31) => NLW_U0_LMB_Data_Addr_24_UNCONNECTED(0 to 31),
      LMB_Data_Addr_25(0 to 31) => NLW_U0_LMB_Data_Addr_25_UNCONNECTED(0 to 31),
      LMB_Data_Addr_26(0 to 31) => NLW_U0_LMB_Data_Addr_26_UNCONNECTED(0 to 31),
      LMB_Data_Addr_27(0 to 31) => NLW_U0_LMB_Data_Addr_27_UNCONNECTED(0 to 31),
      LMB_Data_Addr_28(0 to 31) => NLW_U0_LMB_Data_Addr_28_UNCONNECTED(0 to 31),
      LMB_Data_Addr_29(0 to 31) => NLW_U0_LMB_Data_Addr_29_UNCONNECTED(0 to 31),
      LMB_Data_Addr_3(0 to 31) => NLW_U0_LMB_Data_Addr_3_UNCONNECTED(0 to 31),
      LMB_Data_Addr_30(0 to 31) => NLW_U0_LMB_Data_Addr_30_UNCONNECTED(0 to 31),
      LMB_Data_Addr_31(0 to 31) => NLW_U0_LMB_Data_Addr_31_UNCONNECTED(0 to 31),
      LMB_Data_Addr_4(0 to 31) => NLW_U0_LMB_Data_Addr_4_UNCONNECTED(0 to 31),
      LMB_Data_Addr_5(0 to 31) => NLW_U0_LMB_Data_Addr_5_UNCONNECTED(0 to 31),
      LMB_Data_Addr_6(0 to 31) => NLW_U0_LMB_Data_Addr_6_UNCONNECTED(0 to 31),
      LMB_Data_Addr_7(0 to 31) => NLW_U0_LMB_Data_Addr_7_UNCONNECTED(0 to 31),
      LMB_Data_Addr_8(0 to 31) => NLW_U0_LMB_Data_Addr_8_UNCONNECTED(0 to 31),
      LMB_Data_Addr_9(0 to 31) => NLW_U0_LMB_Data_Addr_9_UNCONNECTED(0 to 31),
      LMB_Data_Read_0(0 to 31) => B"00000000000000000000000000000000",
      LMB_Data_Read_1(0 to 31) => B"00000000000000000000000000000000",
      LMB_Data_Read_10(0 to 31) => B"00000000000000000000000000000000",
      LMB_Data_Read_11(0 to 31) => B"00000000000000000000000000000000",
      LMB_Data_Read_12(0 to 31) => B"00000000000000000000000000000000",
      LMB_Data_Read_13(0 to 31) => B"00000000000000000000000000000000",
      LMB_Data_Read_14(0 to 31) => B"00000000000000000000000000000000",
      LMB_Data_Read_15(0 to 31) => B"00000000000000000000000000000000",
      LMB_Data_Read_16(0 to 31) => B"00000000000000000000000000000000",
      LMB_Data_Read_17(0 to 31) => B"00000000000000000000000000000000",
      LMB_Data_Read_18(0 to 31) => B"00000000000000000000000000000000",
      LMB_Data_Read_19(0 to 31) => B"00000000000000000000000000000000",
      LMB_Data_Read_2(0 to 31) => B"00000000000000000000000000000000",
      LMB_Data_Read_20(0 to 31) => B"00000000000000000000000000000000",
      LMB_Data_Read_21(0 to 31) => B"00000000000000000000000000000000",
      LMB_Data_Read_22(0 to 31) => B"00000000000000000000000000000000",
      LMB_Data_Read_23(0 to 31) => B"00000000000000000000000000000000",
      LMB_Data_Read_24(0 to 31) => B"00000000000000000000000000000000",
      LMB_Data_Read_25(0 to 31) => B"00000000000000000000000000000000",
      LMB_Data_Read_26(0 to 31) => B"00000000000000000000000000000000",
      LMB_Data_Read_27(0 to 31) => B"00000000000000000000000000000000",
      LMB_Data_Read_28(0 to 31) => B"00000000000000000000000000000000",
      LMB_Data_Read_29(0 to 31) => B"00000000000000000000000000000000",
      LMB_Data_Read_3(0 to 31) => B"00000000000000000000000000000000",
      LMB_Data_Read_30(0 to 31) => B"00000000000000000000000000000000",
      LMB_Data_Read_31(0 to 31) => B"00000000000000000000000000000000",
      LMB_Data_Read_4(0 to 31) => B"00000000000000000000000000000000",
      LMB_Data_Read_5(0 to 31) => B"00000000000000000000000000000000",
      LMB_Data_Read_6(0 to 31) => B"00000000000000000000000000000000",
      LMB_Data_Read_7(0 to 31) => B"00000000000000000000000000000000",
      LMB_Data_Read_8(0 to 31) => B"00000000000000000000000000000000",
      LMB_Data_Read_9(0 to 31) => B"00000000000000000000000000000000",
      LMB_Data_Write_0(0 to 31) => NLW_U0_LMB_Data_Write_0_UNCONNECTED(0 to 31),
      LMB_Data_Write_1(0 to 31) => NLW_U0_LMB_Data_Write_1_UNCONNECTED(0 to 31),
      LMB_Data_Write_10(0 to 31) => NLW_U0_LMB_Data_Write_10_UNCONNECTED(0 to 31),
      LMB_Data_Write_11(0 to 31) => NLW_U0_LMB_Data_Write_11_UNCONNECTED(0 to 31),
      LMB_Data_Write_12(0 to 31) => NLW_U0_LMB_Data_Write_12_UNCONNECTED(0 to 31),
      LMB_Data_Write_13(0 to 31) => NLW_U0_LMB_Data_Write_13_UNCONNECTED(0 to 31),
      LMB_Data_Write_14(0 to 31) => NLW_U0_LMB_Data_Write_14_UNCONNECTED(0 to 31),
      LMB_Data_Write_15(0 to 31) => NLW_U0_LMB_Data_Write_15_UNCONNECTED(0 to 31),
      LMB_Data_Write_16(0 to 31) => NLW_U0_LMB_Data_Write_16_UNCONNECTED(0 to 31),
      LMB_Data_Write_17(0 to 31) => NLW_U0_LMB_Data_Write_17_UNCONNECTED(0 to 31),
      LMB_Data_Write_18(0 to 31) => NLW_U0_LMB_Data_Write_18_UNCONNECTED(0 to 31),
      LMB_Data_Write_19(0 to 31) => NLW_U0_LMB_Data_Write_19_UNCONNECTED(0 to 31),
      LMB_Data_Write_2(0 to 31) => NLW_U0_LMB_Data_Write_2_UNCONNECTED(0 to 31),
      LMB_Data_Write_20(0 to 31) => NLW_U0_LMB_Data_Write_20_UNCONNECTED(0 to 31),
      LMB_Data_Write_21(0 to 31) => NLW_U0_LMB_Data_Write_21_UNCONNECTED(0 to 31),
      LMB_Data_Write_22(0 to 31) => NLW_U0_LMB_Data_Write_22_UNCONNECTED(0 to 31),
      LMB_Data_Write_23(0 to 31) => NLW_U0_LMB_Data_Write_23_UNCONNECTED(0 to 31),
      LMB_Data_Write_24(0 to 31) => NLW_U0_LMB_Data_Write_24_UNCONNECTED(0 to 31),
      LMB_Data_Write_25(0 to 31) => NLW_U0_LMB_Data_Write_25_UNCONNECTED(0 to 31),
      LMB_Data_Write_26(0 to 31) => NLW_U0_LMB_Data_Write_26_UNCONNECTED(0 to 31),
      LMB_Data_Write_27(0 to 31) => NLW_U0_LMB_Data_Write_27_UNCONNECTED(0 to 31),
      LMB_Data_Write_28(0 to 31) => NLW_U0_LMB_Data_Write_28_UNCONNECTED(0 to 31),
      LMB_Data_Write_29(0 to 31) => NLW_U0_LMB_Data_Write_29_UNCONNECTED(0 to 31),
      LMB_Data_Write_3(0 to 31) => NLW_U0_LMB_Data_Write_3_UNCONNECTED(0 to 31),
      LMB_Data_Write_30(0 to 31) => NLW_U0_LMB_Data_Write_30_UNCONNECTED(0 to 31),
      LMB_Data_Write_31(0 to 31) => NLW_U0_LMB_Data_Write_31_UNCONNECTED(0 to 31),
      LMB_Data_Write_4(0 to 31) => NLW_U0_LMB_Data_Write_4_UNCONNECTED(0 to 31),
      LMB_Data_Write_5(0 to 31) => NLW_U0_LMB_Data_Write_5_UNCONNECTED(0 to 31),
      LMB_Data_Write_6(0 to 31) => NLW_U0_LMB_Data_Write_6_UNCONNECTED(0 to 31),
      LMB_Data_Write_7(0 to 31) => NLW_U0_LMB_Data_Write_7_UNCONNECTED(0 to 31),
      LMB_Data_Write_8(0 to 31) => NLW_U0_LMB_Data_Write_8_UNCONNECTED(0 to 31),
      LMB_Data_Write_9(0 to 31) => NLW_U0_LMB_Data_Write_9_UNCONNECTED(0 to 31),
      LMB_Read_Strobe_0 => NLW_U0_LMB_Read_Strobe_0_UNCONNECTED,
      LMB_Read_Strobe_1 => NLW_U0_LMB_Read_Strobe_1_UNCONNECTED,
      LMB_Read_Strobe_10 => NLW_U0_LMB_Read_Strobe_10_UNCONNECTED,
      LMB_Read_Strobe_11 => NLW_U0_LMB_Read_Strobe_11_UNCONNECTED,
      LMB_Read_Strobe_12 => NLW_U0_LMB_Read_Strobe_12_UNCONNECTED,
      LMB_Read_Strobe_13 => NLW_U0_LMB_Read_Strobe_13_UNCONNECTED,
      LMB_Read_Strobe_14 => NLW_U0_LMB_Read_Strobe_14_UNCONNECTED,
      LMB_Read_Strobe_15 => NLW_U0_LMB_Read_Strobe_15_UNCONNECTED,
      LMB_Read_Strobe_16 => NLW_U0_LMB_Read_Strobe_16_UNCONNECTED,
      LMB_Read_Strobe_17 => NLW_U0_LMB_Read_Strobe_17_UNCONNECTED,
      LMB_Read_Strobe_18 => NLW_U0_LMB_Read_Strobe_18_UNCONNECTED,
      LMB_Read_Strobe_19 => NLW_U0_LMB_Read_Strobe_19_UNCONNECTED,
      LMB_Read_Strobe_2 => NLW_U0_LMB_Read_Strobe_2_UNCONNECTED,
      LMB_Read_Strobe_20 => NLW_U0_LMB_Read_Strobe_20_UNCONNECTED,
      LMB_Read_Strobe_21 => NLW_U0_LMB_Read_Strobe_21_UNCONNECTED,
      LMB_Read_Strobe_22 => NLW_U0_LMB_Read_Strobe_22_UNCONNECTED,
      LMB_Read_Strobe_23 => NLW_U0_LMB_Read_Strobe_23_UNCONNECTED,
      LMB_Read_Strobe_24 => NLW_U0_LMB_Read_Strobe_24_UNCONNECTED,
      LMB_Read_Strobe_25 => NLW_U0_LMB_Read_Strobe_25_UNCONNECTED,
      LMB_Read_Strobe_26 => NLW_U0_LMB_Read_Strobe_26_UNCONNECTED,
      LMB_Read_Strobe_27 => NLW_U0_LMB_Read_Strobe_27_UNCONNECTED,
      LMB_Read_Strobe_28 => NLW_U0_LMB_Read_Strobe_28_UNCONNECTED,
      LMB_Read_Strobe_29 => NLW_U0_LMB_Read_Strobe_29_UNCONNECTED,
      LMB_Read_Strobe_3 => NLW_U0_LMB_Read_Strobe_3_UNCONNECTED,
      LMB_Read_Strobe_30 => NLW_U0_LMB_Read_Strobe_30_UNCONNECTED,
      LMB_Read_Strobe_31 => NLW_U0_LMB_Read_Strobe_31_UNCONNECTED,
      LMB_Read_Strobe_4 => NLW_U0_LMB_Read_Strobe_4_UNCONNECTED,
      LMB_Read_Strobe_5 => NLW_U0_LMB_Read_Strobe_5_UNCONNECTED,
      LMB_Read_Strobe_6 => NLW_U0_LMB_Read_Strobe_6_UNCONNECTED,
      LMB_Read_Strobe_7 => NLW_U0_LMB_Read_Strobe_7_UNCONNECTED,
      LMB_Read_Strobe_8 => NLW_U0_LMB_Read_Strobe_8_UNCONNECTED,
      LMB_Read_Strobe_9 => NLW_U0_LMB_Read_Strobe_9_UNCONNECTED,
      LMB_Ready_0 => '0',
      LMB_Ready_1 => '0',
      LMB_Ready_10 => '0',
      LMB_Ready_11 => '0',
      LMB_Ready_12 => '0',
      LMB_Ready_13 => '0',
      LMB_Ready_14 => '0',
      LMB_Ready_15 => '0',
      LMB_Ready_16 => '0',
      LMB_Ready_17 => '0',
      LMB_Ready_18 => '0',
      LMB_Ready_19 => '0',
      LMB_Ready_2 => '0',
      LMB_Ready_20 => '0',
      LMB_Ready_21 => '0',
      LMB_Ready_22 => '0',
      LMB_Ready_23 => '0',
      LMB_Ready_24 => '0',
      LMB_Ready_25 => '0',
      LMB_Ready_26 => '0',
      LMB_Ready_27 => '0',
      LMB_Ready_28 => '0',
      LMB_Ready_29 => '0',
      LMB_Ready_3 => '0',
      LMB_Ready_30 => '0',
      LMB_Ready_31 => '0',
      LMB_Ready_4 => '0',
      LMB_Ready_5 => '0',
      LMB_Ready_6 => '0',
      LMB_Ready_7 => '0',
      LMB_Ready_8 => '0',
      LMB_Ready_9 => '0',
      LMB_UE_0 => '0',
      LMB_UE_1 => '0',
      LMB_UE_10 => '0',
      LMB_UE_11 => '0',
      LMB_UE_12 => '0',
      LMB_UE_13 => '0',
      LMB_UE_14 => '0',
      LMB_UE_15 => '0',
      LMB_UE_16 => '0',
      LMB_UE_17 => '0',
      LMB_UE_18 => '0',
      LMB_UE_19 => '0',
      LMB_UE_2 => '0',
      LMB_UE_20 => '0',
      LMB_UE_21 => '0',
      LMB_UE_22 => '0',
      LMB_UE_23 => '0',
      LMB_UE_24 => '0',
      LMB_UE_25 => '0',
      LMB_UE_26 => '0',
      LMB_UE_27 => '0',
      LMB_UE_28 => '0',
      LMB_UE_29 => '0',
      LMB_UE_3 => '0',
      LMB_UE_30 => '0',
      LMB_UE_31 => '0',
      LMB_UE_4 => '0',
      LMB_UE_5 => '0',
      LMB_UE_6 => '0',
      LMB_UE_7 => '0',
      LMB_UE_8 => '0',
      LMB_UE_9 => '0',
      LMB_Wait_0 => '0',
      LMB_Wait_1 => '0',
      LMB_Wait_10 => '0',
      LMB_Wait_11 => '0',
      LMB_Wait_12 => '0',
      LMB_Wait_13 => '0',
      LMB_Wait_14 => '0',
      LMB_Wait_15 => '0',
      LMB_Wait_16 => '0',
      LMB_Wait_17 => '0',
      LMB_Wait_18 => '0',
      LMB_Wait_19 => '0',
      LMB_Wait_2 => '0',
      LMB_Wait_20 => '0',
      LMB_Wait_21 => '0',
      LMB_Wait_22 => '0',
      LMB_Wait_23 => '0',
      LMB_Wait_24 => '0',
      LMB_Wait_25 => '0',
      LMB_Wait_26 => '0',
      LMB_Wait_27 => '0',
      LMB_Wait_28 => '0',
      LMB_Wait_29 => '0',
      LMB_Wait_3 => '0',
      LMB_Wait_30 => '0',
      LMB_Wait_31 => '0',
      LMB_Wait_4 => '0',
      LMB_Wait_5 => '0',
      LMB_Wait_6 => '0',
      LMB_Wait_7 => '0',
      LMB_Wait_8 => '0',
      LMB_Wait_9 => '0',
      LMB_Write_Strobe_0 => NLW_U0_LMB_Write_Strobe_0_UNCONNECTED,
      LMB_Write_Strobe_1 => NLW_U0_LMB_Write_Strobe_1_UNCONNECTED,
      LMB_Write_Strobe_10 => NLW_U0_LMB_Write_Strobe_10_UNCONNECTED,
      LMB_Write_Strobe_11 => NLW_U0_LMB_Write_Strobe_11_UNCONNECTED,
      LMB_Write_Strobe_12 => NLW_U0_LMB_Write_Strobe_12_UNCONNECTED,
      LMB_Write_Strobe_13 => NLW_U0_LMB_Write_Strobe_13_UNCONNECTED,
      LMB_Write_Strobe_14 => NLW_U0_LMB_Write_Strobe_14_UNCONNECTED,
      LMB_Write_Strobe_15 => NLW_U0_LMB_Write_Strobe_15_UNCONNECTED,
      LMB_Write_Strobe_16 => NLW_U0_LMB_Write_Strobe_16_UNCONNECTED,
      LMB_Write_Strobe_17 => NLW_U0_LMB_Write_Strobe_17_UNCONNECTED,
      LMB_Write_Strobe_18 => NLW_U0_LMB_Write_Strobe_18_UNCONNECTED,
      LMB_Write_Strobe_19 => NLW_U0_LMB_Write_Strobe_19_UNCONNECTED,
      LMB_Write_Strobe_2 => NLW_U0_LMB_Write_Strobe_2_UNCONNECTED,
      LMB_Write_Strobe_20 => NLW_U0_LMB_Write_Strobe_20_UNCONNECTED,
      LMB_Write_Strobe_21 => NLW_U0_LMB_Write_Strobe_21_UNCONNECTED,
      LMB_Write_Strobe_22 => NLW_U0_LMB_Write_Strobe_22_UNCONNECTED,
      LMB_Write_Strobe_23 => NLW_U0_LMB_Write_Strobe_23_UNCONNECTED,
      LMB_Write_Strobe_24 => NLW_U0_LMB_Write_Strobe_24_UNCONNECTED,
      LMB_Write_Strobe_25 => NLW_U0_LMB_Write_Strobe_25_UNCONNECTED,
      LMB_Write_Strobe_26 => NLW_U0_LMB_Write_Strobe_26_UNCONNECTED,
      LMB_Write_Strobe_27 => NLW_U0_LMB_Write_Strobe_27_UNCONNECTED,
      LMB_Write_Strobe_28 => NLW_U0_LMB_Write_Strobe_28_UNCONNECTED,
      LMB_Write_Strobe_29 => NLW_U0_LMB_Write_Strobe_29_UNCONNECTED,
      LMB_Write_Strobe_3 => NLW_U0_LMB_Write_Strobe_3_UNCONNECTED,
      LMB_Write_Strobe_30 => NLW_U0_LMB_Write_Strobe_30_UNCONNECTED,
      LMB_Write_Strobe_31 => NLW_U0_LMB_Write_Strobe_31_UNCONNECTED,
      LMB_Write_Strobe_4 => NLW_U0_LMB_Write_Strobe_4_UNCONNECTED,
      LMB_Write_Strobe_5 => NLW_U0_LMB_Write_Strobe_5_UNCONNECTED,
      LMB_Write_Strobe_6 => NLW_U0_LMB_Write_Strobe_6_UNCONNECTED,
      LMB_Write_Strobe_7 => NLW_U0_LMB_Write_Strobe_7_UNCONNECTED,
      LMB_Write_Strobe_8 => NLW_U0_LMB_Write_Strobe_8_UNCONNECTED,
      LMB_Write_Strobe_9 => NLW_U0_LMB_Write_Strobe_9_UNCONNECTED,
      M_AXIS_ACLK => '0',
      M_AXIS_ARESETN => '0',
      M_AXIS_TDATA(31 downto 0) => NLW_U0_M_AXIS_TDATA_UNCONNECTED(31 downto 0),
      M_AXIS_TID(6 downto 0) => NLW_U0_M_AXIS_TID_UNCONNECTED(6 downto 0),
      M_AXIS_TREADY => '1',
      M_AXIS_TVALID => NLW_U0_M_AXIS_TVALID_UNCONNECTED,
      M_AXI_ACLK => '0',
      M_AXI_ARADDR(31 downto 0) => NLW_U0_M_AXI_ARADDR_UNCONNECTED(31 downto 0),
      M_AXI_ARBURST(1 downto 0) => NLW_U0_M_AXI_ARBURST_UNCONNECTED(1 downto 0),
      M_AXI_ARCACHE(3 downto 0) => NLW_U0_M_AXI_ARCACHE_UNCONNECTED(3 downto 0),
      M_AXI_ARESETN => '0',
      M_AXI_ARID(0) => NLW_U0_M_AXI_ARID_UNCONNECTED(0),
      M_AXI_ARLEN(7 downto 0) => NLW_U0_M_AXI_ARLEN_UNCONNECTED(7 downto 0),
      M_AXI_ARLOCK => NLW_U0_M_AXI_ARLOCK_UNCONNECTED,
      M_AXI_ARPROT(2 downto 0) => NLW_U0_M_AXI_ARPROT_UNCONNECTED(2 downto 0),
      M_AXI_ARQOS(3 downto 0) => NLW_U0_M_AXI_ARQOS_UNCONNECTED(3 downto 0),
      M_AXI_ARREADY => '0',
      M_AXI_ARSIZE(2 downto 0) => NLW_U0_M_AXI_ARSIZE_UNCONNECTED(2 downto 0),
      M_AXI_ARVALID => NLW_U0_M_AXI_ARVALID_UNCONNECTED,
      M_AXI_AWADDR(31 downto 0) => NLW_U0_M_AXI_AWADDR_UNCONNECTED(31 downto 0),
      M_AXI_AWBURST(1 downto 0) => NLW_U0_M_AXI_AWBURST_UNCONNECTED(1 downto 0),
      M_AXI_AWCACHE(3 downto 0) => NLW_U0_M_AXI_AWCACHE_UNCONNECTED(3 downto 0),
      M_AXI_AWID(0) => NLW_U0_M_AXI_AWID_UNCONNECTED(0),
      M_AXI_AWLEN(7 downto 0) => NLW_U0_M_AXI_AWLEN_UNCONNECTED(7 downto 0),
      M_AXI_AWLOCK => NLW_U0_M_AXI_AWLOCK_UNCONNECTED,
      M_AXI_AWPROT(2 downto 0) => NLW_U0_M_AXI_AWPROT_UNCONNECTED(2 downto 0),
      M_AXI_AWQOS(3 downto 0) => NLW_U0_M_AXI_AWQOS_UNCONNECTED(3 downto 0),
      M_AXI_AWREADY => '0',
      M_AXI_AWSIZE(2 downto 0) => NLW_U0_M_AXI_AWSIZE_UNCONNECTED(2 downto 0),
      M_AXI_AWVALID => NLW_U0_M_AXI_AWVALID_UNCONNECTED,
      M_AXI_BID(0) => '0',
      M_AXI_BREADY => NLW_U0_M_AXI_BREADY_UNCONNECTED,
      M_AXI_BRESP(1 downto 0) => B"00",
      M_AXI_BVALID => '0',
      M_AXI_RDATA(31 downto 0) => B"00000000000000000000000000000000",
      M_AXI_RID(0) => '0',
      M_AXI_RLAST => '0',
      M_AXI_RREADY => NLW_U0_M_AXI_RREADY_UNCONNECTED,
      M_AXI_RRESP(1 downto 0) => B"00",
      M_AXI_RVALID => '0',
      M_AXI_WDATA(31 downto 0) => NLW_U0_M_AXI_WDATA_UNCONNECTED(31 downto 0),
      M_AXI_WLAST => NLW_U0_M_AXI_WLAST_UNCONNECTED,
      M_AXI_WREADY => '0',
      M_AXI_WSTRB(3 downto 0) => NLW_U0_M_AXI_WSTRB_UNCONNECTED(3 downto 0),
      M_AXI_WVALID => NLW_U0_M_AXI_WVALID_UNCONNECTED,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(3 downto 0) => S_AXI_ARADDR(3 downto 0),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(3 downto 0) => S_AXI_AWADDR(3 downto 0),
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BRESP(1 downto 0) => S_AXI_BRESP(1 downto 0),
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RRESP(1 downto 0) => S_AXI_RRESP(1 downto 0),
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => S_AXI_WSTRB(3 downto 0),
      S_AXI_WVALID => S_AXI_WVALID,
      Scan_Reset => '0',
      Scan_Reset_Sel => '0',
      TRACE_CLK => '0',
      TRACE_CLK_OUT => NLW_U0_TRACE_CLK_OUT_UNCONNECTED,
      TRACE_CTL => NLW_U0_TRACE_CTL_UNCONNECTED,
      TRACE_DATA(31 downto 0) => NLW_U0_TRACE_DATA_UNCONNECTED(31 downto 0),
      Trig_Ack_In_0 => NLW_U0_Trig_Ack_In_0_UNCONNECTED,
      Trig_Ack_In_1 => NLW_U0_Trig_Ack_In_1_UNCONNECTED,
      Trig_Ack_In_2 => NLW_U0_Trig_Ack_In_2_UNCONNECTED,
      Trig_Ack_In_3 => NLW_U0_Trig_Ack_In_3_UNCONNECTED,
      Trig_Ack_Out_0 => '0',
      Trig_Ack_Out_1 => '0',
      Trig_Ack_Out_2 => '0',
      Trig_Ack_Out_3 => '0',
      Trig_In_0 => '0',
      Trig_In_1 => '0',
      Trig_In_2 => '0',
      Trig_In_3 => '0',
      Trig_Out_0 => NLW_U0_Trig_Out_0_UNCONNECTED,
      Trig_Out_1 => NLW_U0_Trig_Out_1_UNCONNECTED,
      Trig_Out_2 => NLW_U0_Trig_Out_2_UNCONNECTED,
      Trig_Out_3 => NLW_U0_Trig_Out_3_UNCONNECTED,
      bscan_ext_capture => '0',
      bscan_ext_drck => '0',
      bscan_ext_reset => '0',
      bscan_ext_sel => '0',
      bscan_ext_shift => '0',
      bscan_ext_tdi => '0',
      bscan_ext_tdo => NLW_U0_bscan_ext_tdo_UNCONNECTED,
      bscan_ext_update => '0'
    );
end STRUCTURE;
