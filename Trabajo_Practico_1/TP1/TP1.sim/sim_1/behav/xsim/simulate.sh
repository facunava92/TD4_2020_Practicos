#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.2.1 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Thu May 14 16:00:55 -03 2020
# SW Build 2729669 on Thu Dec  5 04:48:12 MST 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xsim tb_mux_behav -key {Behavioral:sim_1:Functional:tb_mux} -tclbatch tb_mux.tcl -view /run/media/fnavarro/DATA/Git/6to/Tecnicas_Digitales_IV/Practicos/Trabajo_Practico_1/TP1/tb_1a_behav.wcfg -log simulate.log"
xsim tb_mux_behav -key {Behavioral:sim_1:Functional:tb_mux} -tclbatch tb_mux.tcl -view /run/media/fnavarro/DATA/Git/6to/Tecnicas_Digitales_IV/Practicos/Trabajo_Practico_1/TP1/tb_1a_behav.wcfg -log simulate.log

