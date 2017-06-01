-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
-- Date        : Thu May 11 10:37:42 2017
-- Host        : DESKTOP-QFI1E31 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {D:/courses/University courses/Design
--               Automation/Homeworks/HW5/codes/codes.sim/sim_1/synth/func/arbiter_func_synth.vhd}
-- Design      : arbiter
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1157-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity arbiter is
  port (
    ack0 : inout STD_LOGIC;
    ack1 : inout STD_LOGIC;
    ack2 : inout STD_LOGIC;
    ack3 : inout STD_LOGIC;
    req0 : inout STD_LOGIC;
    req1 : inout STD_LOGIC;
    req2 : inout STD_LOGIC;
    req3 : inout STD_LOGIC;
    data0 : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    data1 : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    data2 : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    data3 : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    output : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of arbiter : entity is true;
end arbiter;

architecture STRUCTURE of arbiter is
  signal ack0_OBUF : STD_LOGIC;
  signal ack1_OBUF : STD_LOGIC;
  signal ack2_OBUF : STD_LOGIC;
  signal data0_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data1_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data2_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data3_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \output[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \output[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \output[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \output[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \output[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \output[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \output[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \output[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal output_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal req0_IBUF : STD_LOGIC;
  signal req1_IBUF : STD_LOGIC;
  signal req2_IBUF : STD_LOGIC;
  signal req3_OBUF : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ack0_OBUF_inst_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of ack1_OBUF_inst_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \output[0]_INST_0_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \output[1]_INST_0_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \output[2]_INST_0_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \output[3]_INST_0_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \output[4]_INST_0_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \output[5]_INST_0_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \output[6]_INST_0_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \output[7]_INST_0_i_1\ : label is "soft_lutpair2";
begin
ack0_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => ack0_OBUF,
      O => ack0
    );
ack0_OBUF_inst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => req2_IBUF,
      I1 => req0_IBUF,
      I2 => req3_OBUF,
      I3 => req1_IBUF,
      O => ack0_OBUF
    );
ack1_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => ack1_OBUF,
      O => ack1
    );
ack1_OBUF_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => req3_OBUF,
      I1 => req1_IBUF,
      I2 => req2_IBUF,
      O => ack1_OBUF
    );
ack2_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => ack2_OBUF,
      O => ack2
    );
ack2_OBUF_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => req2_IBUF,
      I1 => req3_OBUF,
      O => ack2_OBUF
    );
ack3_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => ack3,
      O => req3_OBUF
    );
\data0_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data0(0),
      O => data0_IBUF(0)
    );
\data0_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data0(1),
      O => data0_IBUF(1)
    );
\data0_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data0(2),
      O => data0_IBUF(2)
    );
\data0_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data0(3),
      O => data0_IBUF(3)
    );
\data0_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data0(4),
      O => data0_IBUF(4)
    );
\data0_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data0(5),
      O => data0_IBUF(5)
    );
\data0_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data0(6),
      O => data0_IBUF(6)
    );
\data0_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data0(7),
      O => data0_IBUF(7)
    );
\data1_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data1(0),
      O => data1_IBUF(0)
    );
\data1_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data1(1),
      O => data1_IBUF(1)
    );
\data1_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data1(2),
      O => data1_IBUF(2)
    );
\data1_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data1(3),
      O => data1_IBUF(3)
    );
\data1_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data1(4),
      O => data1_IBUF(4)
    );
\data1_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data1(5),
      O => data1_IBUF(5)
    );
\data1_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data1(6),
      O => data1_IBUF(6)
    );
\data1_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data1(7),
      O => data1_IBUF(7)
    );
\data2_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data2(0),
      O => data2_IBUF(0)
    );
\data2_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data2(1),
      O => data2_IBUF(1)
    );
\data2_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data2(2),
      O => data2_IBUF(2)
    );
\data2_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data2(3),
      O => data2_IBUF(3)
    );
\data2_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data2(4),
      O => data2_IBUF(4)
    );
\data2_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data2(5),
      O => data2_IBUF(5)
    );
\data2_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data2(6),
      O => data2_IBUF(6)
    );
\data2_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data2(7),
      O => data2_IBUF(7)
    );
\data3_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data3(0),
      O => data3_IBUF(0)
    );
\data3_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data3(1),
      O => data3_IBUF(1)
    );
\data3_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data3(2),
      O => data3_IBUF(2)
    );
\data3_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data3(3),
      O => data3_IBUF(3)
    );
\data3_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data3(4),
      O => data3_IBUF(4)
    );
\data3_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data3(5),
      O => data3_IBUF(5)
    );
\data3_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data3(6),
      O => data3_IBUF(6)
    );
\data3_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data3(7),
      O => data3_IBUF(7)
    );
\output[0]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => output_OBUF(0),
      O => output(0)
    );
\output[0]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data3_IBUF(0),
      I1 => \output[0]_INST_0_i_2_n_0\,
      I2 => req3_OBUF,
      O => output_OBUF(0)
    );
\output[0]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => ack1_OBUF,
      I1 => data0_IBUF(0),
      I2 => data1_IBUF(0),
      I3 => ack2_OBUF,
      I4 => data2_IBUF(0),
      O => \output[0]_INST_0_i_2_n_0\
    );
\output[1]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => output_OBUF(1),
      O => output(1)
    );
\output[1]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data3_IBUF(1),
      I1 => \output[1]_INST_0_i_2_n_0\,
      I2 => req3_OBUF,
      O => output_OBUF(1)
    );
\output[1]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => ack1_OBUF,
      I1 => data0_IBUF(1),
      I2 => data1_IBUF(1),
      I3 => ack2_OBUF,
      I4 => data2_IBUF(1),
      O => \output[1]_INST_0_i_2_n_0\
    );
\output[2]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => output_OBUF(2),
      O => output(2)
    );
\output[2]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data3_IBUF(2),
      I1 => \output[2]_INST_0_i_2_n_0\,
      I2 => req3_OBUF,
      O => output_OBUF(2)
    );
\output[2]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => ack1_OBUF,
      I1 => data0_IBUF(2),
      I2 => data1_IBUF(2),
      I3 => ack2_OBUF,
      I4 => data2_IBUF(2),
      O => \output[2]_INST_0_i_2_n_0\
    );
\output[3]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => output_OBUF(3),
      O => output(3)
    );
\output[3]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data3_IBUF(3),
      I1 => \output[3]_INST_0_i_2_n_0\,
      I2 => req3_OBUF,
      O => output_OBUF(3)
    );
\output[3]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => ack1_OBUF,
      I1 => data0_IBUF(3),
      I2 => data1_IBUF(3),
      I3 => ack2_OBUF,
      I4 => data2_IBUF(3),
      O => \output[3]_INST_0_i_2_n_0\
    );
\output[4]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => output_OBUF(4),
      O => output(4)
    );
\output[4]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data3_IBUF(4),
      I1 => \output[4]_INST_0_i_2_n_0\,
      I2 => req3_OBUF,
      O => output_OBUF(4)
    );
\output[4]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => ack1_OBUF,
      I1 => data0_IBUF(4),
      I2 => data1_IBUF(4),
      I3 => ack2_OBUF,
      I4 => data2_IBUF(4),
      O => \output[4]_INST_0_i_2_n_0\
    );
\output[5]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => output_OBUF(5),
      O => output(5)
    );
\output[5]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data3_IBUF(5),
      I1 => \output[5]_INST_0_i_2_n_0\,
      I2 => req3_OBUF,
      O => output_OBUF(5)
    );
\output[5]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => ack1_OBUF,
      I1 => data0_IBUF(5),
      I2 => data1_IBUF(5),
      I3 => ack2_OBUF,
      I4 => data2_IBUF(5),
      O => \output[5]_INST_0_i_2_n_0\
    );
\output[6]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => output_OBUF(6),
      O => output(6)
    );
\output[6]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data3_IBUF(6),
      I1 => \output[6]_INST_0_i_2_n_0\,
      I2 => req3_OBUF,
      O => output_OBUF(6)
    );
\output[6]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => ack1_OBUF,
      I1 => data0_IBUF(6),
      I2 => data1_IBUF(6),
      I3 => ack2_OBUF,
      I4 => data2_IBUF(6),
      O => \output[6]_INST_0_i_2_n_0\
    );
\output[7]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => output_OBUF(7),
      O => output(7)
    );
\output[7]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data3_IBUF(7),
      I1 => \output[7]_INST_0_i_2_n_0\,
      I2 => req3_OBUF,
      O => output_OBUF(7)
    );
\output[7]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => ack1_OBUF,
      I1 => data0_IBUF(7),
      I2 => data1_IBUF(7),
      I3 => ack2_OBUF,
      I4 => data2_IBUF(7),
      O => \output[7]_INST_0_i_2_n_0\
    );
req0_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => req0,
      O => req0_IBUF
    );
req1_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => req1,
      O => req1_IBUF
    );
req2_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => req2,
      O => req2_IBUF
    );
req3_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => req3_OBUF,
      O => req3
    );
end STRUCTURE;
