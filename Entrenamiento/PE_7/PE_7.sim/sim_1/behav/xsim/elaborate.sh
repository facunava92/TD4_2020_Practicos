#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.2.1 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Thu Apr 23 00:21:43 -03 2020
# SW Build 2729669 on Thu Dec  5 04:48:12 MST 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xelab -wto 09f2711c3e374f4c92fce91812592578 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot tb_oe_counter_behav xil_defaultlib.tb_oe_counter -log elaborate.log"
xelab -wto 09f2711c3e374f4c92fce91812592578 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot tb_oe_counter_behav xil_defaultlib.tb_oe_counter -log elaborate.log

