
# (C) 2001-2021 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 14.1 186 win32 2021.04.04.17:57:20

# ----------------------------------------
# vcsmx - auto-generated simulation script

# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="DE1_SoC_QSYS_tb"
QSYS_SIMDIR="./../../"
QUARTUS_INSTALL_DIR="C:/altera/14.1/quartus/"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="+vcs+finish+100"

# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_ELAB=1 SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# initialize simulation properties - DO NOT MODIFY!
ELAB_OPTIONS=""
SIM_OPTIONS=""
if [[ `vcs -platform` != *"amd64"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# create compilation libraries
mkdir -p ./libraries/work/
mkdir -p ./libraries/altera_common_sv_packages/
mkdir -p ./libraries/limiter_pipeline/
mkdir -p ./libraries/crosser/
mkdir -p ./libraries/sdram_s1_rsp_width_adapter/
mkdir -p ./libraries/rsp_mux_002/
mkdir -p ./libraries/rsp_mux_001/
mkdir -p ./libraries/rsp_mux/
mkdir -p ./libraries/rsp_demux_016/
mkdir -p ./libraries/rsp_demux_015/
mkdir -p ./libraries/rsp_demux_010/
mkdir -p ./libraries/rsp_demux/
mkdir -p ./libraries/cmd_mux_010/
mkdir -p ./libraries/cmd_mux_006/
mkdir -p ./libraries/cmd_mux/
mkdir -p ./libraries/cmd_demux_002/
mkdir -p ./libraries/cmd_demux_001/
mkdir -p ./libraries/cmd_demux/
mkdir -p ./libraries/sdram_s1_burst_adapter/
mkdir -p ./libraries/cpu_data_master_limiter/
mkdir -p ./libraries/router_013/
mkdir -p ./libraries/router_009/
mkdir -p ./libraries/router_003/
mkdir -p ./libraries/router_002/
mkdir -p ./libraries/router_001/
mkdir -p ./libraries/router/
mkdir -p ./libraries/jtag_uart_avalon_jtag_slave_agent_rsp_fifo/
mkdir -p ./libraries/jtag_uart_avalon_jtag_slave_agent/
mkdir -p ./libraries/cpu_data_master_agent/
mkdir -p ./libraries/jtag_uart_avalon_jtag_slave_translator/
mkdir -p ./libraries/cpu_data_master_translator/
mkdir -p ./libraries/vga_clk/
mkdir -p ./libraries/alt_vip_vfr_0/
mkdir -p ./libraries/alt_vip_itc_0/
mkdir -p ./libraries/fifo_used/
mkdir -p ./libraries/OUT_PAUSE/
mkdir -p ./libraries/EMPTY/
mkdir -p ./libraries/DATA_FREGEN/
mkdir -p ./libraries/rst_controller/
mkdir -p ./libraries/irq_synchronizer/
mkdir -p ./libraries/irq_mapper/
mkdir -p ./libraries/mm_interconnect_0/
mkdir -p ./libraries/vga/
mkdir -p ./libraries/timer/
mkdir -p ./libraries/sysid_qsys/
mkdir -p ./libraries/signal_selector/
mkdir -p ./libraries/sdram/
mkdir -p ./libraries/pll/
mkdir -p ./libraries/mouse_pos/
mkdir -p ./libraries/modulation_selector/
mkdir -p ./libraries/lfsr_val/
mkdir -p ./libraries/lfsr_clk_interrupt_gen/
mkdir -p ./libraries/keyboard_keys/
mkdir -p ./libraries/key/
mkdir -p ./libraries/jtag_uart/
mkdir -p ./libraries/dds_increment/
mkdir -p ./libraries/cpu/
mkdir -p ./libraries/audio_sel/
mkdir -p ./libraries/audio/
mkdir -p ./libraries/sdram_my_partner/
mkdir -p ./libraries/DE1_SoC_QSYS_inst_vga_alt_vip_itc_0_clocked_video_bfm/
mkdir -p ./libraries/DE1_SoC_QSYS_inst_signal_selector_bfm/
mkdir -p ./libraries/DE1_SoC_QSYS_inst_reset_bfm/
mkdir -p ./libraries/DE1_SoC_QSYS_inst_modulation_selector_bfm/
mkdir -p ./libraries/DE1_SoC_QSYS_inst_keyboard_keys_bfm/
mkdir -p ./libraries/DE1_SoC_QSYS_inst_key_external_connection_bfm/
mkdir -p ./libraries/DE1_SoC_QSYS_inst_clk_bfm/
mkdir -p ./libraries/DE1_SoC_QSYS_inst_audio2fifo_0_out_pause_bfm/
mkdir -p ./libraries/DE1_SoC_QSYS_inst_audio2fifo_0_fifo_used_bfm/
mkdir -p ./libraries/DE1_SoC_QSYS_inst_audio2fifo_0_empty_bfm/
mkdir -p ./libraries/DE1_SoC_QSYS_inst_audio2fifo_0_data_divfrec_bfm/
mkdir -p ./libraries/DE1_SoC_QSYS_inst/
mkdir -p ./libraries/altera_ver/
mkdir -p ./libraries/lpm_ver/
mkdir -p ./libraries/sgate_ver/
mkdir -p ./libraries/altera_mf_ver/
mkdir -p ./libraries/altera_lnsim_ver/
mkdir -p ./libraries/cyclonev_ver/
mkdir -p ./libraries/cyclonev_hssi_ver/
mkdir -p ./libraries/cyclonev_pcie_hip_ver/

# ----------------------------------------
# copy RAM/ROM files to simulation directory
if [ $SKIP_FILE_COPY -eq 0 ]; then
  cp -f $QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_bht_ram.dat ./
  cp -f $QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_bht_ram.hex ./
  cp -f $QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_bht_ram.mif ./
  cp -f $QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_dc_tag_ram.dat ./
  cp -f $QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_dc_tag_ram.hex ./
  cp -f $QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_dc_tag_ram.mif ./
  cp -f $QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_ic_tag_ram.dat ./
  cp -f $QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_ic_tag_ram.hex ./
  cp -f $QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_ic_tag_ram.mif ./
  cp -f $QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_ociram_default_contents.dat ./
  cp -f $QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_ociram_default_contents.hex ./
  cp -f $QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_ociram_default_contents.mif ./
  cp -f $QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_rf_ram_a.dat ./
  cp -f $QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_rf_ram_a.hex ./
  cp -f $QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_rf_ram_a.mif ./
  cp -f $QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_rf_ram_b.dat ./
  cp -f $QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_rf_ram_b.hex ./
  cp -f $QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_rf_ram_b.mif ./
fi

# ----------------------------------------
# compile device library files
if [ $SKIP_DEV_COM -eq 0 ]; then
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                       -work altera_ver           
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                                -work lpm_ver              
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                                   -work sgate_ver            
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                               -work altera_mf_ver        
  vlogan +v2k -sverilog "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                           -work altera_lnsim_ver     
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_atoms_ncrypt.v"          -work cyclonev_ver         
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_hmi_atoms_ncrypt.v"      -work cyclonev_ver         
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.v"                          -work cyclonev_ver         
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_hssi_atoms_ncrypt.v"     -work cyclonev_hssi_ver    
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_hssi_atoms.v"                     -work cyclonev_hssi_ver    
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_pcie_hip_atoms_ncrypt.v" -work cyclonev_pcie_hip_ver
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_pcie_hip_atoms.v"                 -work cyclonev_pcie_hip_ver
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/verbosity_pkg.sv"                                -work altera_common_sv_packages                            
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_avalon_st_pipeline_stage.sv"              -work limiter_pipeline                                     
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_avalon_st_pipeline_base.v"                -work limiter_pipeline                                     
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_avalon_st_handshake_clock_crosser.v"      -work crosser                                              
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_avalon_st_clock_crosser.v"                -work crosser                                              
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_avalon_st_pipeline_base.v"                -work crosser                                              
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_width_adapter.sv"                  -work sdram_s1_rsp_width_adapter                           
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_address_alignment.sv"              -work sdram_s1_rsp_width_adapter                           
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_burst_uncompressor.sv"             -work sdram_s1_rsp_width_adapter                           
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_arbitrator.sv"                     -work rsp_mux_002                                          
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0_rsp_mux_002.sv"   -work rsp_mux_002                                          
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_arbitrator.sv"                     -work rsp_mux_001                                          
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0_rsp_mux_001.sv"   -work rsp_mux_001                                          
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_arbitrator.sv"                     -work rsp_mux                                              
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0_rsp_mux.sv"       -work rsp_mux                                              
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0_rsp_demux_016.sv" -work rsp_demux_016                                        
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0_rsp_demux_015.sv" -work rsp_demux_015                                        
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0_rsp_demux_010.sv" -work rsp_demux_010                                        
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0_rsp_demux.sv"     -work rsp_demux                                            
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_arbitrator.sv"                     -work cmd_mux_010                                          
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0_cmd_mux_010.sv"   -work cmd_mux_010                                          
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_arbitrator.sv"                     -work cmd_mux_006                                          
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0_cmd_mux_006.sv"   -work cmd_mux_006                                          
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_arbitrator.sv"                     -work cmd_mux                                              
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0_cmd_mux.sv"       -work cmd_mux                                              
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0_cmd_demux_002.sv" -work cmd_demux_002                                        
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0_cmd_demux_001.sv" -work cmd_demux_001                                        
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0_cmd_demux.sv"     -work cmd_demux                                            
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_burst_adapter.sv"                  -work sdram_s1_burst_adapter                               
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_burst_adapter_uncmpr.sv"           -work sdram_s1_burst_adapter                               
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_burst_adapter_13_1.sv"             -work sdram_s1_burst_adapter                               
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_burst_adapter_new.sv"              -work sdram_s1_burst_adapter                               
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_incr_burst_converter.sv"                  -work sdram_s1_burst_adapter                               
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_wrap_burst_converter.sv"                  -work sdram_s1_burst_adapter                               
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_default_burst_converter.sv"               -work sdram_s1_burst_adapter                               
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_address_alignment.sv"              -work sdram_s1_burst_adapter                               
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_avalon_st_pipeline_stage.sv"              -work sdram_s1_burst_adapter                               
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_avalon_st_pipeline_base.v"                -work sdram_s1_burst_adapter                               
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_traffic_limiter.sv"                -work cpu_data_master_limiter                              
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_reorder_memory.sv"                 -work cpu_data_master_limiter                              
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_avalon_sc_fifo.v"                         -work cpu_data_master_limiter                              
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_avalon_st_pipeline_base.v"                -work cpu_data_master_limiter                              
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0_router_013.sv"    -work router_013                                           
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0_router_009.sv"    -work router_009                                           
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0_router_003.sv"    -work router_003                                           
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0_router_002.sv"    -work router_002                                           
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0_router_001.sv"    -work router_001                                           
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0_router.sv"        -work router                                               
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_avalon_sc_fifo.v"                         -work jtag_uart_avalon_jtag_slave_agent_rsp_fifo           
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_slave_agent.sv"                    -work jtag_uart_avalon_jtag_slave_agent                    
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_burst_uncompressor.sv"             -work jtag_uart_avalon_jtag_slave_agent                    
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_master_agent.sv"                   -work cpu_data_master_agent                                
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_slave_translator.sv"               -work jtag_uart_avalon_jtag_slave_translator               
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_master_translator.sv"              -work cpu_data_master_translator                           
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_vga_vga_clk.vo"                     -work vga_clk                                              
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_vga_alt_vip_vfr_0.vo"               -work alt_vip_vfr_0                                        
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/alt_vipitc131_IS2Vid.sv"                         -work alt_vip_itc_0                                        
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/alt_vipitc131_IS2Vid_sync_compare.v"             -work alt_vip_itc_0                                        
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/alt_vipitc131_IS2Vid_calculate_mode.v"           -work alt_vip_itc_0                                        
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/alt_vipitc131_IS2Vid_control.v"                  -work alt_vip_itc_0                                        
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/alt_vipitc131_IS2Vid_mode_banks.sv"              -work alt_vip_itc_0                                        
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/alt_vipitc131_IS2Vid_statemachine.v"             -work alt_vip_itc_0                                        
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/alt_vipitc131_common_fifo.v"                     -work alt_vip_itc_0                                        
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/alt_vipitc131_common_generic_count.v"            -work alt_vip_itc_0                                        
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/alt_vipitc131_common_to_binary.v"                -work alt_vip_itc_0                                        
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/alt_vipitc131_common_sync.v"                     -work alt_vip_itc_0                                        
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/alt_vipitc131_common_trigger_sync.v"             -work alt_vip_itc_0                                        
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/alt_vipitc131_common_sync_generation.v"          -work alt_vip_itc_0                                        
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/alt_vipitc131_common_frame_counter.v"            -work alt_vip_itc_0                                        
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/alt_vipitc131_common_sample_counter.v"           -work alt_vip_itc_0                                        
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_audio_fifo_used.v"                  -work fifo_used                                            
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_audio_OUT_PAUSE.v"                  -work OUT_PAUSE                                            
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_audio_EMPTY.v"                      -work EMPTY                                                
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_audio_DATA_FREGEN.v"                -work DATA_FREGEN                                          
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_reset_controller.v"                       -work rst_controller                                       
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_reset_synchronizer.v"                     -work rst_controller                                       
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_irq_clock_crosser.sv"                     -work irq_synchronizer                                     
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_irq_mapper.sv"                      -work irq_mapper                                           
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0.v"                -work mm_interconnect_0                                    
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_vga.v"                              -work vga                                                  
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_timer.v"                            -work timer                                                
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_sysid_qsys.vo"                      -work sysid_qsys                                           
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_signal_selector.v"                  -work signal_selector                                      
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_sdram.v"                            -work sdram                                                
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_sdram_test_component.v"             -work sdram                                                
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_pll.vo"                             -work pll                                                  
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mouse_pos.v"                        -work mouse_pos                                            
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_modulation_selector.v"              -work modulation_selector                                  
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_lfsr_val.v"                         -work lfsr_val                                             
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_lfsr_clk_interrupt_gen.v"           -work lfsr_clk_interrupt_gen                               
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_keyboard_keys.v"                    -work keyboard_keys                                        
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_key.v"                              -work key                                                  
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_jtag_uart.v"                        -work jtag_uart                                            
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_dds_increment.v"                    -work dds_increment                                        
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu.vo"                             -work cpu                                                  
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_jtag_debug_module_sysclk.v"     -work cpu                                                  
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_jtag_debug_module_tck.v"        -work cpu                                                  
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_jtag_debug_module_wrapper.v"    -work cpu                                                  
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_mult_cell.v"                    -work cpu                                                  
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_oci_test_bench.v"               -work cpu                                                  
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_test_bench.v"                   -work cpu                                                  
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_audio_sel.v"                        -work audio_sel                                            
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_audio.v"                            -work audio                                                
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_sdram_partner_module.v"                   -work sdram_my_partner                                     
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_conduit_bfm_0009.sv"                      -work DE1_SoC_QSYS_inst_vga_alt_vip_itc_0_clocked_video_bfm
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_conduit_bfm_0008.sv"                      -work DE1_SoC_QSYS_inst_signal_selector_bfm                
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_avalon_reset_source.sv"                   -work DE1_SoC_QSYS_inst_reset_bfm                          
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_conduit_bfm_0007.sv"                      -work DE1_SoC_QSYS_inst_modulation_selector_bfm            
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_conduit_bfm_0006.sv"                      -work DE1_SoC_QSYS_inst_keyboard_keys_bfm                  
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_conduit_bfm_0005.sv"                      -work DE1_SoC_QSYS_inst_key_external_connection_bfm        
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_avalon_clock_source.sv"                   -work DE1_SoC_QSYS_inst_clk_bfm                            
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_conduit_bfm_0004.sv"                      -work DE1_SoC_QSYS_inst_audio2fifo_0_out_pause_bfm         
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_conduit_bfm_0003.sv"                      -work DE1_SoC_QSYS_inst_audio2fifo_0_fifo_used_bfm         
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_conduit_bfm_0002.sv"                      -work DE1_SoC_QSYS_inst_audio2fifo_0_empty_bfm             
  vlogan +v2k -sverilog "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_conduit_bfm.sv"                           -work DE1_SoC_QSYS_inst_audio2fifo_0_data_divfrec_bfm      
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS.v"                                  -work DE1_SoC_QSYS_inst                                    
  vlogan +v2k           "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/DE1_SoC_QSYS_tb.v"                                                                                                     
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  vcs -lca -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS
fi
