#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Fri Apr 17 18:49:04 -03 2020
# SW Build 2708876 on Wed Nov  6 21:39:14 MST 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xelab -wto e445eaaac1a94949abb3c6fec621c5ad --incr --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot tb_jk_ff_behav xil_defaultlib.tb_jk_ff -log elaborate.log"
xelab -wto e445eaaac1a94949abb3c6fec621c5ad --incr --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot tb_jk_ff_behav xil_defaultlib.tb_jk_ff -log elaborate.log

