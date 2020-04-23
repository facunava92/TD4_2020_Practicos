-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Mon Apr 20 12:09:07 2020
-- Host        : fnavarro-HPEnvy-MjrXFCE running 64-bit Manjaro Linux
-- Command     : write_vhdl -mode funcsim -nolib -force -file {/run/media/fnavarro/Datos/fnavarro/6to/Tecnicas Digitales
--               IV/Practicos/Entrenamiento/PE_8/PE_8.sim/sim_1/synth/func/xsim/tb_mod7_counter_func_synth.vhd}
-- Design      : mod7_acounter
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jk_ff is
  port (
    Q : out STD_LOGIC;
    bin_OBUF : out STD_LOGIC_VECTOR ( 0 to 0 );
    r_reg : in STD_LOGIC;
    reset_IBUF : in STD_LOGIC
  );
end jk_ff;

architecture STRUCTURE of jk_ff is
  signal \^q\ : STD_LOGIC;
  signal Q_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Q_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bin_OBUF[0]_inst_i_1\ : label is "soft_lutpair0";
begin
  Q <= \^q\;
Q_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => reset_IBUF,
      I1 => \^q\,
      O => Q_i_1_n_0
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => r_reg,
      CE => '1',
      CLR => reset_IBUF,
      D => Q_i_1_n_0,
      Q => \^q\
    );
\bin_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\,
      O => bin_OBUF(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jk_ff_0 is
  port (
    Q_reg_0 : out STD_LOGIC;
    bin_OBUF : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC;
    reset_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jk_ff_0 : entity is "jk_ff";
end jk_ff_0;

architecture STRUCTURE of jk_ff_0 is
  signal \Q_i_1__0_n_0\ : STD_LOGIC;
  signal \^q_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bin_OBUF[1]_inst_i_1\ : label is "soft_lutpair1";
begin
  Q_reg_0 <= \^q_reg_0\;
\Q_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => reset_IBUF,
      I1 => \^q_reg_0\,
      O => \Q_i_1__0_n_0\
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Q,
      CE => '1',
      CLR => reset_IBUF,
      D => \Q_i_1__0_n_0\,
      Q => \^q_reg_0\
    );
\bin_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q_reg_0\,
      O => bin_OBUF(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jk_ff_1 is
  port (
    bin_OBUF : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_0 : in STD_LOGIC;
    reset_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jk_ff_1 : entity is "jk_ff";
end jk_ff_1;

architecture STRUCTURE of jk_ff_1 is
  signal \Q_i_1__1_n_0\ : STD_LOGIC;
  signal Q_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_i_1__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bin_OBUF[2]_inst_i_1\ : label is "soft_lutpair2";
begin
\Q_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => reset_IBUF,
      I1 => Q_reg_n_0,
      O => \Q_i_1__1_n_0\
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Q_reg_0,
      CE => '1',
      CLR => reset_IBUF,
      D => \Q_i_1__1_n_0\,
      Q => Q_reg_n_0
    );
\bin_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q_reg_n_0,
      O => bin_OBUF(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mod_m_counter is
  port (
    r_reg : out STD_LOGIC;
    clk : in STD_LOGIC;
    reset_IBUF : in STD_LOGIC
  );
end mod_m_counter;

architecture STRUCTURE of mod_m_counter is
  signal p_0_in : STD_LOGIC;
  signal \^r_reg\ : STD_LOGIC;
begin
  r_reg <= \^r_reg\;
\r_reg[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^r_reg\,
      O => p_0_in
    );
\r_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset_IBUF,
      D => p_0_in,
      Q => \^r_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mod7_acounter is
  port (
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    on_off : in STD_LOGIC;
    bin : out STD_LOGIC_VECTOR ( 3 downto 0 );
    an : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mod7_acounter : entity is true;
end mod7_acounter;

architecture STRUCTURE of mod7_acounter is
  signal Q : STD_LOGIC;
  signal bin_OBUF : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal ff1_n_0 : STD_LOGIC;
  signal r_reg : STD_LOGIC;
  signal reset_IBUF : STD_LOGIC;
begin
\an_OBUF[0]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => an(0),
      T => '1'
    );
\an_OBUF[1]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => an(1),
      T => '1'
    );
\an_OBUF[2]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => an(2),
      T => '1'
    );
\an_OBUF[3]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => an(3),
      T => '1'
    );
\bin_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => bin_OBUF(0),
      O => bin(0)
    );
\bin_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => bin_OBUF(1),
      O => bin(1)
    );
\bin_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => bin_OBUF(2),
      O => bin(2)
    );
\bin_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => bin(3)
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
ff0: entity work.jk_ff
     port map (
      Q => Q,
      bin_OBUF(0) => bin_OBUF(0),
      r_reg => r_reg,
      reset_IBUF => reset_IBUF
    );
ff1: entity work.jk_ff_0
     port map (
      Q => Q,
      Q_reg_0 => ff1_n_0,
      bin_OBUF(0) => bin_OBUF(1),
      reset_IBUF => reset_IBUF
    );
ff2: entity work.jk_ff_1
     port map (
      Q_reg_0 => ff1_n_0,
      bin_OBUF(0) => bin_OBUF(2),
      reset_IBUF => reset_IBUF
    );
one_seg_counter: entity work.mod_m_counter
     port map (
      clk => clk_IBUF_BUFG,
      r_reg => r_reg,
      reset_IBUF => reset_IBUF
    );
reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset,
      O => reset_IBUF
    );
end STRUCTURE;
