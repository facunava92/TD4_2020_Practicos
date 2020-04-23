-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Tue Apr  7 12:19:30 2020
-- Host        : fnavarro-HPEnvy-MjrXFCE running 64-bit Manjaro Linux
-- Command     : write_vhdl -mode funcsim -nolib -force -file {/run/media/fnavarro/Datos/fnavarro/6to/Tecnicas Digitales
--               IV/Practicos/Entrenamiento/PE_0/PE_0.sim/sim_1/synth/func/xsim/tb_eq2_func_synth.vhd}
-- Design      : eq2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity eq2 is
  port (
    a : in STD_LOGIC_VECTOR ( 1 downto 0 );
    b : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aeqb : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of eq2 : entity is true;
end eq2;

architecture STRUCTURE of eq2 is
  signal a_IBUF : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal aeqb_OBUF : STD_LOGIC;
  signal b_IBUF : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
\a_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(0),
      O => a_IBUF(0)
    );
\a_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(1),
      O => a_IBUF(1)
    );
aeqb_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => aeqb_OBUF,
      O => aeqb
    );
aeqb_OBUF_inst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => a_IBUF(0),
      I1 => b_IBUF(0),
      I2 => a_IBUF(1),
      I3 => b_IBUF(1),
      O => aeqb_OBUF
    );
\b_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(0),
      O => b_IBUF(0)
    );
\b_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(1),
      O => b_IBUF(1)
    );
end STRUCTURE;
