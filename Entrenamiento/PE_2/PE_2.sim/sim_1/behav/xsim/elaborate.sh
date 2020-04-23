#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Mon Apr 13 17:04:56 -03 2020
# SW Build 2708876 on Wed Nov  6 21:39:14 MST 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xelab -wto 3255349b89844a26abd20f2803090f5d --incr --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot tb_PE2_behav xil_defaultlib.tb_PE2 -log elaborate.log"
xelab -wto 3255349b89844a26abd20f2803090f5d --incr --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot tb_PE2_behav xil_defaultlib.tb_PE2 -log elaborate.log

