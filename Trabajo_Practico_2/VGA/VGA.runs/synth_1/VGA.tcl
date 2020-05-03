# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param chipscope.maxJobs 2
set_param xicom.use_bs_reader 1
set_msg_config -id {Common 17-41} -limit 10000000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /run/media/fnavarro/DATA/Git/6to/Tecnicas_Digitales_IV/Practicos/Trabajo_Practico_2/VGA/VGA.cache/wt [current_project]
set_property parent.project_path /run/media/fnavarro/DATA/Git/6to/Tecnicas_Digitales_IV/Practicos/Trabajo_Practico_2/VGA/VGA.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part_repo_paths {/home/fnavarro/.Xilinx/Vivado/2019.2/xhub/board_store} [current_project]
set_property board_part digilentinc.com:basys3:part0:1.1 [current_project]
set_property ip_output_repo /run/media/fnavarro/DATA/Git/6to/Tecnicas_Digitales_IV/Practicos/Trabajo_Practico_2/VGA/VGA.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  /run/media/fnavarro/DATA/Git/6to/Tecnicas_Digitales_IV/Practicos/Trabajo_Practico_2/VGA/VGA.srcs/sources_1/new/clk_wiz_0.vhd
  /run/media/fnavarro/DATA/Git/6to/Tecnicas_Digitales_IV/Practicos/Trabajo_Practico_2/VGA/VGA.srcs/sources_1/new/vga_sync.vhd
  /run/media/fnavarro/DATA/Git/6to/Tecnicas_Digitales_IV/Practicos/Trabajo_Practico_2/VGA/VGA.srcs/sources_1/new/graphic_unit.vhd
  /run/media/fnavarro/DATA/Git/6to/Tecnicas_Digitales_IV/Practicos/Trabajo_Practico_2/VGA/VGA.srcs/sources_1/new/clk_wiz_0_clk_wiz.vhd
  /run/media/fnavarro/DATA/Git/6to/Tecnicas_Digitales_IV/Practicos/Trabajo_Practico_2/VGA/VGA.srcs/sources_1/new/VGA.vhd
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /run/media/fnavarro/DATA/Git/6to/Tecnicas_Digitales_IV/Practicos/Trabajo_Practico_2/VGA/VGA.srcs/constrs_1/new/basys3.xdc
set_property used_in_implementation false [get_files /run/media/fnavarro/DATA/Git/6to/Tecnicas_Digitales_IV/Practicos/Trabajo_Practico_2/VGA/VGA.srcs/constrs_1/new/basys3.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top VGA -part xc7a35tcpg236-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef VGA.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file VGA_utilization_synth.rpt -pb VGA_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]