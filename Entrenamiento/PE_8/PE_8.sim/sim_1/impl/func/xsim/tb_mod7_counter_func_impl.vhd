-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Mon Apr 20 11:38:55 2020
-- Host        : fnavarro-HPEnvy-MjrXFCE running 64-bit Manjaro Linux
-- Command     : write_vhdl -mode funcsim -nolib -force -file {/run/media/fnavarro/Datos/fnavarro/6to/Tecnicas Digitales
--               IV/Practicos/Entrenamiento/PE_8/PE_8.sim/sim_1/impl/func/xsim/tb_mod7_counter_func_impl.vhd}
-- Design      : mod7_acounter
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bin2sseg is
  port (
    sseg_OBUF : out STD_LOGIC_VECTOR ( 5 downto 0 );
    sel0 : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end bin2sseg;

architecture STRUCTURE of bin2sseg is
begin
\sseg_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => sel0(1),
      O => sseg_OBUF(0)
    );
\sseg_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(1),
      I2 => sel0(0),
      O => sseg_OBUF(1)
    );
\sseg_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"86"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => sel0(1),
      O => sseg_OBUF(2)
    );
\sseg_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => sel0(0),
      O => sseg_OBUF(3)
    );
\sseg_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(1),
      I2 => sel0(0),
      O => sseg_OBUF(4)
    );
\sseg_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"83"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(2),
      I2 => sel0(1),
      O => sseg_OBUF(5)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jk_ff is
  port (
    sel0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    sseg_OBUF : out STD_LOGIC_VECTOR ( 0 to 0 );
    max_tick : in STD_LOGIC;
    reset_IBUF : in STD_LOGIC;
    \sseg[2]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end jk_ff;

architecture STRUCTURE of jk_ff is
  signal Q_i_1_n_0 : STD_LOGIC;
  signal \^sel0\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  sel0(0) <= \^sel0\(0);
Q_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => reset_IBUF,
      I1 => \^sel0\(0),
      O => Q_i_1_n_0
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => max_tick,
      CE => '1',
      CLR => reset_IBUF,
      D => Q_i_1_n_0,
      Q => \^sel0\(0)
    );
\sseg_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^sel0\(0),
      I1 => \sseg[2]\(0),
      I2 => \sseg[2]\(1),
      O => sseg_OBUF(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jk_ff_0 is
  port (
    Q_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    sel0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jk_ff_0 : entity is "jk_ff";
end jk_ff_0;

architecture STRUCTURE of jk_ff_0 is
  signal \Q_i_1__0_n_0\ : STD_LOGIC;
  signal \^q_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  Q_reg_0(0) <= \^q_reg_0\(0);
\Q_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => reset_IBUF,
      I1 => \^q_reg_0\(0),
      O => \Q_i_1__0_n_0\
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sel0(0),
      CE => '1',
      CLR => reset_IBUF,
      D => \Q_i_1__0_n_0\,
      Q => \^q_reg_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jk_ff_1 is
  port (
    Q_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jk_ff_1 : entity is "jk_ff";
end jk_ff_1;

architecture STRUCTURE of jk_ff_1 is
  signal \Q_i_1__1_n_0\ : STD_LOGIC;
  signal \^q_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  Q_reg_0(0) <= \^q_reg_0\(0);
\Q_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => reset_IBUF,
      I1 => \^q_reg_0\(0),
      O => \Q_i_1__1_n_0\
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Q_reg_1(0),
      CE => '1',
      CLR => reset_IBUF,
      D => \Q_i_1__1_n_0\,
      Q => \^q_reg_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mod_m_counter is
  port (
    max_tick : out STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    reset_IBUF : in STD_LOGIC
  );
end mod_m_counter;

architecture STRUCTURE of mod_m_counter is
  signal data0 : STD_LOGIC_VECTOR ( 26 downto 1 );
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__4_n_0\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal r_next : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal r_reg : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal \r_reg[26]_i_2_n_0\ : STD_LOGIC;
  signal \r_reg[26]_i_3_n_0\ : STD_LOGIC;
  signal \r_reg[26]_i_4_n_0\ : STD_LOGIC;
  signal \r_reg[26]_i_5_n_0\ : STD_LOGIC;
  signal \r_reg[26]_i_6_n_0\ : STD_LOGIC;
  signal \r_reg[26]_i_7_n_0\ : STD_LOGIC;
  signal \r_reg[26]_i_8_n_0\ : STD_LOGIC;
  signal NLW_plusOp_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_plusOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_plusOp_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_plusOp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_plusOp_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_plusOp_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_plusOp_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_plusOp_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of plusOp_carry : label is "SWEEP";
  attribute OPT_MODIFIED of \plusOp_carry__0\ : label is "SWEEP";
  attribute OPT_MODIFIED of \plusOp_carry__1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \plusOp_carry__2\ : label is "SWEEP";
  attribute OPT_MODIFIED of \plusOp_carry__3\ : label is "SWEEP";
  attribute OPT_MODIFIED of \plusOp_carry__4\ : label is "SWEEP";
  attribute OPT_MODIFIED of \plusOp_carry__5\ : label is "SWEEP";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r_reg[10]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \r_reg[11]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \r_reg[12]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \r_reg[13]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r_reg[14]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_reg[15]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r_reg[16]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_reg[17]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r_reg[18]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_reg[19]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r_reg[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \r_reg[20]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_reg[21]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_reg[22]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_reg[23]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_reg[24]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_reg[25]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_reg[26]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_reg[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \r_reg[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \r_reg[4]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \r_reg[5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \r_reg[6]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \r_reg[7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \r_reg[8]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \r_reg[9]_i_1\ : label is "soft_lutpair14";
begin
Q_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \r_reg[26]_i_2_n_0\,
      I1 => \r_reg[26]_i_3_n_0\,
      I2 => \r_reg[26]_i_4_n_0\,
      O => max_tick
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2 downto 0) => NLW_plusOp_carry_CO_UNCONNECTED(2 downto 0),
      CYINIT => r_reg(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => r_reg(4 downto 1)
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2 downto 0) => \NLW_plusOp_carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => r_reg(8 downto 5)
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \plusOp_carry__1_n_0\,
      CO(2 downto 0) => \NLW_plusOp_carry__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => r_reg(12 downto 9)
    );
\plusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__1_n_0\,
      CO(3) => \plusOp_carry__2_n_0\,
      CO(2 downto 0) => \NLW_plusOp_carry__2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => r_reg(16 downto 13)
    );
\plusOp_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__2_n_0\,
      CO(3) => \plusOp_carry__3_n_0\,
      CO(2 downto 0) => \NLW_plusOp_carry__3_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => r_reg(20 downto 17)
    );
\plusOp_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__3_n_0\,
      CO(3) => \plusOp_carry__4_n_0\,
      CO(2 downto 0) => \NLW_plusOp_carry__4_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3 downto 0) => r_reg(24 downto 21)
    );
\plusOp_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__4_n_0\,
      CO(3 downto 0) => \NLW_plusOp_carry__5_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_plusOp_carry__5_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => data0(26 downto 25),
      S(3 downto 2) => B"00",
      S(1 downto 0) => r_reg(26 downto 25)
    );
\r_reg[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_reg(0),
      O => r_next(0)
    );
\r_reg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \r_reg[26]_i_2_n_0\,
      I1 => \r_reg[26]_i_3_n_0\,
      I2 => \r_reg[26]_i_4_n_0\,
      I3 => data0(10),
      O => r_next(10)
    );
\r_reg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \r_reg[26]_i_2_n_0\,
      I1 => \r_reg[26]_i_3_n_0\,
      I2 => \r_reg[26]_i_4_n_0\,
      I3 => data0(11),
      O => r_next(11)
    );
\r_reg[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \r_reg[26]_i_2_n_0\,
      I1 => \r_reg[26]_i_3_n_0\,
      I2 => \r_reg[26]_i_4_n_0\,
      I3 => data0(12),
      O => r_next(12)
    );
\r_reg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \r_reg[26]_i_2_n_0\,
      I1 => \r_reg[26]_i_3_n_0\,
      I2 => \r_reg[26]_i_4_n_0\,
      I3 => data0(13),
      O => r_next(13)
    );
\r_reg[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \r_reg[26]_i_2_n_0\,
      I1 => \r_reg[26]_i_3_n_0\,
      I2 => \r_reg[26]_i_4_n_0\,
      I3 => data0(14),
      O => r_next(14)
    );
\r_reg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \r_reg[26]_i_2_n_0\,
      I1 => \r_reg[26]_i_3_n_0\,
      I2 => \r_reg[26]_i_4_n_0\,
      I3 => data0(15),
      O => r_next(15)
    );
\r_reg[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \r_reg[26]_i_2_n_0\,
      I1 => \r_reg[26]_i_3_n_0\,
      I2 => \r_reg[26]_i_4_n_0\,
      I3 => data0(16),
      O => r_next(16)
    );
\r_reg[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \r_reg[26]_i_2_n_0\,
      I1 => \r_reg[26]_i_3_n_0\,
      I2 => \r_reg[26]_i_4_n_0\,
      I3 => data0(17),
      O => r_next(17)
    );
\r_reg[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \r_reg[26]_i_2_n_0\,
      I1 => \r_reg[26]_i_3_n_0\,
      I2 => \r_reg[26]_i_4_n_0\,
      I3 => data0(18),
      O => r_next(18)
    );
\r_reg[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \r_reg[26]_i_2_n_0\,
      I1 => \r_reg[26]_i_3_n_0\,
      I2 => \r_reg[26]_i_4_n_0\,
      I3 => data0(19),
      O => r_next(19)
    );
\r_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \r_reg[26]_i_2_n_0\,
      I1 => \r_reg[26]_i_3_n_0\,
      I2 => \r_reg[26]_i_4_n_0\,
      I3 => data0(1),
      O => r_next(1)
    );
\r_reg[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \r_reg[26]_i_2_n_0\,
      I1 => \r_reg[26]_i_3_n_0\,
      I2 => \r_reg[26]_i_4_n_0\,
      I3 => data0(20),
      O => r_next(20)
    );
\r_reg[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \r_reg[26]_i_2_n_0\,
      I1 => \r_reg[26]_i_3_n_0\,
      I2 => \r_reg[26]_i_4_n_0\,
      I3 => data0(21),
      O => r_next(21)
    );
\r_reg[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \r_reg[26]_i_2_n_0\,
      I1 => \r_reg[26]_i_3_n_0\,
      I2 => \r_reg[26]_i_4_n_0\,
      I3 => data0(22),
      O => r_next(22)
    );
\r_reg[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \r_reg[26]_i_2_n_0\,
      I1 => \r_reg[26]_i_3_n_0\,
      I2 => \r_reg[26]_i_4_n_0\,
      I3 => data0(23),
      O => r_next(23)
    );
\r_reg[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \r_reg[26]_i_2_n_0\,
      I1 => \r_reg[26]_i_3_n_0\,
      I2 => \r_reg[26]_i_4_n_0\,
      I3 => data0(24),
      O => r_next(24)
    );
\r_reg[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \r_reg[26]_i_2_n_0\,
      I1 => \r_reg[26]_i_3_n_0\,
      I2 => \r_reg[26]_i_4_n_0\,
      I3 => data0(25),
      O => r_next(25)
    );
\r_reg[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \r_reg[26]_i_2_n_0\,
      I1 => \r_reg[26]_i_3_n_0\,
      I2 => \r_reg[26]_i_4_n_0\,
      I3 => data0(26),
      O => r_next(26)
    );
\r_reg[26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFDF"
    )
        port map (
      I0 => r_reg(26),
      I1 => r_reg(25),
      I2 => r_reg(0),
      I3 => \r_reg[26]_i_5_n_0\,
      I4 => \r_reg[26]_i_6_n_0\,
      O => \r_reg[26]_i_2_n_0\
    );
\r_reg[26]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBFFF"
    )
        port map (
      I0 => r_reg(8),
      I1 => r_reg(7),
      I2 => r_reg(5),
      I3 => r_reg(6),
      I4 => \r_reg[26]_i_7_n_0\,
      O => \r_reg[26]_i_3_n_0\
    );
\r_reg[26]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => r_reg(15),
      I1 => r_reg(16),
      I2 => r_reg(13),
      I3 => r_reg(14),
      I4 => \r_reg[26]_i_8_n_0\,
      O => \r_reg[26]_i_4_n_0\
    );
\r_reg[26]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => r_reg(22),
      I1 => r_reg(21),
      I2 => r_reg(24),
      I3 => r_reg(23),
      O => \r_reg[26]_i_5_n_0\
    );
\r_reg[26]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => r_reg(2),
      I1 => r_reg(1),
      I2 => r_reg(4),
      I3 => r_reg(3),
      O => \r_reg[26]_i_6_n_0\
    );
\r_reg[26]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => r_reg(10),
      I1 => r_reg(9),
      I2 => r_reg(12),
      I3 => r_reg(11),
      O => \r_reg[26]_i_7_n_0\
    );
\r_reg[26]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => r_reg(18),
      I1 => r_reg(17),
      I2 => r_reg(20),
      I3 => r_reg(19),
      O => \r_reg[26]_i_8_n_0\
    );
\r_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \r_reg[26]_i_2_n_0\,
      I1 => \r_reg[26]_i_3_n_0\,
      I2 => \r_reg[26]_i_4_n_0\,
      I3 => data0(2),
      O => r_next(2)
    );
\r_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \r_reg[26]_i_2_n_0\,
      I1 => \r_reg[26]_i_3_n_0\,
      I2 => \r_reg[26]_i_4_n_0\,
      I3 => data0(3),
      O => r_next(3)
    );
\r_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \r_reg[26]_i_2_n_0\,
      I1 => \r_reg[26]_i_3_n_0\,
      I2 => \r_reg[26]_i_4_n_0\,
      I3 => data0(4),
      O => r_next(4)
    );
\r_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \r_reg[26]_i_2_n_0\,
      I1 => \r_reg[26]_i_3_n_0\,
      I2 => \r_reg[26]_i_4_n_0\,
      I3 => data0(5),
      O => r_next(5)
    );
\r_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \r_reg[26]_i_2_n_0\,
      I1 => \r_reg[26]_i_3_n_0\,
      I2 => \r_reg[26]_i_4_n_0\,
      I3 => data0(6),
      O => r_next(6)
    );
\r_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \r_reg[26]_i_2_n_0\,
      I1 => \r_reg[26]_i_3_n_0\,
      I2 => \r_reg[26]_i_4_n_0\,
      I3 => data0(7),
      O => r_next(7)
    );
\r_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \r_reg[26]_i_2_n_0\,
      I1 => \r_reg[26]_i_3_n_0\,
      I2 => \r_reg[26]_i_4_n_0\,
      I3 => data0(8),
      O => r_next(8)
    );
\r_reg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \r_reg[26]_i_2_n_0\,
      I1 => \r_reg[26]_i_3_n_0\,
      I2 => \r_reg[26]_i_4_n_0\,
      I3 => data0(9),
      O => r_next(9)
    );
\r_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => r_next(0),
      Q => r_reg(0)
    );
\r_reg_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => r_next(10),
      Q => r_reg(10)
    );
\r_reg_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => r_next(11),
      Q => r_reg(11)
    );
\r_reg_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => r_next(12),
      Q => r_reg(12)
    );
\r_reg_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => r_next(13),
      Q => r_reg(13)
    );
\r_reg_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => r_next(14),
      Q => r_reg(14)
    );
\r_reg_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => r_next(15),
      Q => r_reg(15)
    );
\r_reg_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => r_next(16),
      Q => r_reg(16)
    );
\r_reg_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => r_next(17),
      Q => r_reg(17)
    );
\r_reg_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => r_next(18),
      Q => r_reg(18)
    );
\r_reg_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => r_next(19),
      Q => r_reg(19)
    );
\r_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => r_next(1),
      Q => r_reg(1)
    );
\r_reg_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => r_next(20),
      Q => r_reg(20)
    );
\r_reg_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => r_next(21),
      Q => r_reg(21)
    );
\r_reg_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => r_next(22),
      Q => r_reg(22)
    );
\r_reg_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => r_next(23),
      Q => r_reg(23)
    );
\r_reg_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => r_next(24),
      Q => r_reg(24)
    );
\r_reg_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => r_next(25),
      Q => r_reg(25)
    );
\r_reg_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => r_next(26),
      Q => r_reg(26)
    );
\r_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => r_next(2),
      Q => r_reg(2)
    );
\r_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => r_next(3),
      Q => r_reg(3)
    );
\r_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => r_next(4),
      Q => r_reg(4)
    );
\r_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => r_next(5),
      Q => r_reg(5)
    );
\r_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => r_next(6),
      Q => r_reg(6)
    );
\r_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => r_next(7),
      Q => r_reg(7)
    );
\r_reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => r_next(8),
      Q => r_reg(8)
    );
\r_reg_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => r_next(9),
      Q => r_reg(9)
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
    sseg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    an : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mod7_acounter : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of mod7_acounter : entity is "2d07af2d";
end mod7_acounter;

architecture STRUCTURE of mod7_acounter is
  signal an_OBUF : STD_LOGIC_VECTOR ( 0 to 0 );
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal max_tick : STD_LOGIC;
  signal on_off_IBUF : STD_LOGIC;
  signal reset_IBUF : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal sseg_OBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
begin
\an_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => an_OBUF(0),
      O => an(0)
    );
\an_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => on_off_IBUF,
      O => an_OBUF(0)
    );
\an_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => an(1)
    );
\an_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => an(2)
    );
\an_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => an(3)
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
display: entity work.bin2sseg
     port map (
      sel0(2 downto 0) => sel0(2 downto 0),
      sseg_OBUF(5 downto 2) => sseg_OBUF(6 downto 3),
      sseg_OBUF(1 downto 0) => sseg_OBUF(1 downto 0)
    );
ff0: entity work.jk_ff
     port map (
      max_tick => max_tick,
      reset_IBUF => reset_IBUF,
      sel0(0) => sel0(0),
      \sseg[2]\(1 downto 0) => sel0(2 downto 1),
      sseg_OBUF(0) => sseg_OBUF(2)
    );
ff1: entity work.jk_ff_0
     port map (
      Q_reg_0(0) => sel0(1),
      reset_IBUF => reset_IBUF,
      sel0(0) => sel0(0)
    );
ff2: entity work.jk_ff_1
     port map (
      Q_reg_0(0) => sel0(2),
      Q_reg_1(0) => sel0(1),
      reset_IBUF => reset_IBUF
    );
on_off_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => on_off,
      O => on_off_IBUF
    );
one_seg_counter: entity work.mod_m_counter
     port map (
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      max_tick => max_tick,
      reset_IBUF => reset_IBUF
    );
reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset,
      O => reset_IBUF
    );
\sseg_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => sseg_OBUF(0),
      O => sseg(0)
    );
\sseg_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => sseg_OBUF(1),
      O => sseg(1)
    );
\sseg_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => sseg_OBUF(2),
      O => sseg(2)
    );
\sseg_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => sseg_OBUF(3),
      O => sseg(3)
    );
\sseg_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => sseg_OBUF(4),
      O => sseg(4)
    );
\sseg_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => sseg_OBUF(5),
      O => sseg(5)
    );
\sseg_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => sseg_OBUF(6),
      O => sseg(6)
    );
end STRUCTURE;
