
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
# Auto-generated simulation script

# ----------------------------------------
# Initialize variables
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
}

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "DE1_SoC_QSYS_tb"
}

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
}

if ![info exists QUARTUS_INSTALL_DIR] { 
  set QUARTUS_INSTALL_DIR "C:/altera/14.1/quartus/"
}

# ----------------------------------------
# Initialize simulation properties - DO NOT MODIFY!
set ELAB_OPTIONS ""
set SIM_OPTIONS ""
if ![ string match "*-64 vsim*" [ vsim -version ] ] {
} else {
}

# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
  file copy -force $QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_bht_ram.dat ./
  file copy -force $QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_bht_ram.hex ./
  file copy -force $QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_bht_ram.mif ./
  file copy -force $QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_dc_tag_ram.dat ./
  file copy -force $QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_dc_tag_ram.hex ./
  file copy -force $QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_dc_tag_ram.mif ./
  file copy -force $QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_ic_tag_ram.dat ./
  file copy -force $QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_ic_tag_ram.hex ./
  file copy -force $QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_ic_tag_ram.mif ./
  file copy -force $QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_ociram_default_contents.dat ./
  file copy -force $QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_ociram_default_contents.hex ./
  file copy -force $QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_ociram_default_contents.mif ./
  file copy -force $QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_rf_ram_a.dat ./
  file copy -force $QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_rf_ram_a.hex ./
  file copy -force $QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_rf_ram_a.mif ./
  file copy -force $QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_rf_ram_b.dat ./
  file copy -force $QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_rf_ram_b.hex ./
  file copy -force $QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_rf_ram_b.mif ./
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib          ./libraries/     
ensure_lib          ./libraries/work/
vmap       work     ./libraries/work/
vmap       work_lib ./libraries/work/
if ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] {
  ensure_lib                       ./libraries/altera_ver/           
  vmap       altera_ver            ./libraries/altera_ver/           
  ensure_lib                       ./libraries/lpm_ver/              
  vmap       lpm_ver               ./libraries/lpm_ver/              
  ensure_lib                       ./libraries/sgate_ver/            
  vmap       sgate_ver             ./libraries/sgate_ver/            
  ensure_lib                       ./libraries/altera_mf_ver/        
  vmap       altera_mf_ver         ./libraries/altera_mf_ver/        
  ensure_lib                       ./libraries/altera_lnsim_ver/     
  vmap       altera_lnsim_ver      ./libraries/altera_lnsim_ver/     
  ensure_lib                       ./libraries/cyclonev_ver/         
  vmap       cyclonev_ver          ./libraries/cyclonev_ver/         
  ensure_lib                       ./libraries/cyclonev_hssi_ver/    
  vmap       cyclonev_hssi_ver     ./libraries/cyclonev_hssi_ver/    
  ensure_lib                       ./libraries/cyclonev_pcie_hip_ver/
  vmap       cyclonev_pcie_hip_ver ./libraries/cyclonev_pcie_hip_ver/
}
ensure_lib                                                       ./libraries/altera_common_sv_packages/                            
vmap       altera_common_sv_packages                             ./libraries/altera_common_sv_packages/                            
ensure_lib                                                       ./libraries/limiter_pipeline/                                     
vmap       limiter_pipeline                                      ./libraries/limiter_pipeline/                                     
ensure_lib                                                       ./libraries/crosser/                                              
vmap       crosser                                               ./libraries/crosser/                                              
ensure_lib                                                       ./libraries/sdram_s1_rsp_width_adapter/                           
vmap       sdram_s1_rsp_width_adapter                            ./libraries/sdram_s1_rsp_width_adapter/                           
ensure_lib                                                       ./libraries/rsp_mux_002/                                          
vmap       rsp_mux_002                                           ./libraries/rsp_mux_002/                                          
ensure_lib                                                       ./libraries/rsp_mux_001/                                          
vmap       rsp_mux_001                                           ./libraries/rsp_mux_001/                                          
ensure_lib                                                       ./libraries/rsp_mux/                                              
vmap       rsp_mux                                               ./libraries/rsp_mux/                                              
ensure_lib                                                       ./libraries/rsp_demux_016/                                        
vmap       rsp_demux_016                                         ./libraries/rsp_demux_016/                                        
ensure_lib                                                       ./libraries/rsp_demux_015/                                        
vmap       rsp_demux_015                                         ./libraries/rsp_demux_015/                                        
ensure_lib                                                       ./libraries/rsp_demux_010/                                        
vmap       rsp_demux_010                                         ./libraries/rsp_demux_010/                                        
ensure_lib                                                       ./libraries/rsp_demux/                                            
vmap       rsp_demux                                             ./libraries/rsp_demux/                                            
ensure_lib                                                       ./libraries/cmd_mux_010/                                          
vmap       cmd_mux_010                                           ./libraries/cmd_mux_010/                                          
ensure_lib                                                       ./libraries/cmd_mux_006/                                          
vmap       cmd_mux_006                                           ./libraries/cmd_mux_006/                                          
ensure_lib                                                       ./libraries/cmd_mux/                                              
vmap       cmd_mux                                               ./libraries/cmd_mux/                                              
ensure_lib                                                       ./libraries/cmd_demux_002/                                        
vmap       cmd_demux_002                                         ./libraries/cmd_demux_002/                                        
ensure_lib                                                       ./libraries/cmd_demux_001/                                        
vmap       cmd_demux_001                                         ./libraries/cmd_demux_001/                                        
ensure_lib                                                       ./libraries/cmd_demux/                                            
vmap       cmd_demux                                             ./libraries/cmd_demux/                                            
ensure_lib                                                       ./libraries/sdram_s1_burst_adapter/                               
vmap       sdram_s1_burst_adapter                                ./libraries/sdram_s1_burst_adapter/                               
ensure_lib                                                       ./libraries/cpu_data_master_limiter/                              
vmap       cpu_data_master_limiter                               ./libraries/cpu_data_master_limiter/                              
ensure_lib                                                       ./libraries/router_013/                                           
vmap       router_013                                            ./libraries/router_013/                                           
ensure_lib                                                       ./libraries/router_009/                                           
vmap       router_009                                            ./libraries/router_009/                                           
ensure_lib                                                       ./libraries/router_003/                                           
vmap       router_003                                            ./libraries/router_003/                                           
ensure_lib                                                       ./libraries/router_002/                                           
vmap       router_002                                            ./libraries/router_002/                                           
ensure_lib                                                       ./libraries/router_001/                                           
vmap       router_001                                            ./libraries/router_001/                                           
ensure_lib                                                       ./libraries/router/                                               
vmap       router                                                ./libraries/router/                                               
ensure_lib                                                       ./libraries/jtag_uart_avalon_jtag_slave_agent_rsp_fifo/           
vmap       jtag_uart_avalon_jtag_slave_agent_rsp_fifo            ./libraries/jtag_uart_avalon_jtag_slave_agent_rsp_fifo/           
ensure_lib                                                       ./libraries/jtag_uart_avalon_jtag_slave_agent/                    
vmap       jtag_uart_avalon_jtag_slave_agent                     ./libraries/jtag_uart_avalon_jtag_slave_agent/                    
ensure_lib                                                       ./libraries/cpu_data_master_agent/                                
vmap       cpu_data_master_agent                                 ./libraries/cpu_data_master_agent/                                
ensure_lib                                                       ./libraries/jtag_uart_avalon_jtag_slave_translator/               
vmap       jtag_uart_avalon_jtag_slave_translator                ./libraries/jtag_uart_avalon_jtag_slave_translator/               
ensure_lib                                                       ./libraries/cpu_data_master_translator/                           
vmap       cpu_data_master_translator                            ./libraries/cpu_data_master_translator/                           
ensure_lib                                                       ./libraries/vga_clk/                                              
vmap       vga_clk                                               ./libraries/vga_clk/                                              
ensure_lib                                                       ./libraries/alt_vip_vfr_0/                                        
vmap       alt_vip_vfr_0                                         ./libraries/alt_vip_vfr_0/                                        
ensure_lib                                                       ./libraries/alt_vip_itc_0/                                        
vmap       alt_vip_itc_0                                         ./libraries/alt_vip_itc_0/                                        
ensure_lib                                                       ./libraries/fifo_used/                                            
vmap       fifo_used                                             ./libraries/fifo_used/                                            
ensure_lib                                                       ./libraries/OUT_PAUSE/                                            
vmap       OUT_PAUSE                                             ./libraries/OUT_PAUSE/                                            
ensure_lib                                                       ./libraries/EMPTY/                                                
vmap       EMPTY                                                 ./libraries/EMPTY/                                                
ensure_lib                                                       ./libraries/DATA_FREGEN/                                          
vmap       DATA_FREGEN                                           ./libraries/DATA_FREGEN/                                          
ensure_lib                                                       ./libraries/rst_controller/                                       
vmap       rst_controller                                        ./libraries/rst_controller/                                       
ensure_lib                                                       ./libraries/irq_synchronizer/                                     
vmap       irq_synchronizer                                      ./libraries/irq_synchronizer/                                     
ensure_lib                                                       ./libraries/irq_mapper/                                           
vmap       irq_mapper                                            ./libraries/irq_mapper/                                           
ensure_lib                                                       ./libraries/mm_interconnect_0/                                    
vmap       mm_interconnect_0                                     ./libraries/mm_interconnect_0/                                    
ensure_lib                                                       ./libraries/vga/                                                  
vmap       vga                                                   ./libraries/vga/                                                  
ensure_lib                                                       ./libraries/timer/                                                
vmap       timer                                                 ./libraries/timer/                                                
ensure_lib                                                       ./libraries/sysid_qsys/                                           
vmap       sysid_qsys                                            ./libraries/sysid_qsys/                                           
ensure_lib                                                       ./libraries/signal_selector/                                      
vmap       signal_selector                                       ./libraries/signal_selector/                                      
ensure_lib                                                       ./libraries/sdram/                                                
vmap       sdram                                                 ./libraries/sdram/                                                
ensure_lib                                                       ./libraries/pll/                                                  
vmap       pll                                                   ./libraries/pll/                                                  
ensure_lib                                                       ./libraries/mouse_pos/                                            
vmap       mouse_pos                                             ./libraries/mouse_pos/                                            
ensure_lib                                                       ./libraries/modulation_selector/                                  
vmap       modulation_selector                                   ./libraries/modulation_selector/                                  
ensure_lib                                                       ./libraries/lfsr_val/                                             
vmap       lfsr_val                                              ./libraries/lfsr_val/                                             
ensure_lib                                                       ./libraries/lfsr_clk_interrupt_gen/                               
vmap       lfsr_clk_interrupt_gen                                ./libraries/lfsr_clk_interrupt_gen/                               
ensure_lib                                                       ./libraries/keyboard_keys/                                        
vmap       keyboard_keys                                         ./libraries/keyboard_keys/                                        
ensure_lib                                                       ./libraries/key/                                                  
vmap       key                                                   ./libraries/key/                                                  
ensure_lib                                                       ./libraries/jtag_uart/                                            
vmap       jtag_uart                                             ./libraries/jtag_uart/                                            
ensure_lib                                                       ./libraries/dds_increment/                                        
vmap       dds_increment                                         ./libraries/dds_increment/                                        
ensure_lib                                                       ./libraries/cpu/                                                  
vmap       cpu                                                   ./libraries/cpu/                                                  
ensure_lib                                                       ./libraries/audio_sel/                                            
vmap       audio_sel                                             ./libraries/audio_sel/                                            
ensure_lib                                                       ./libraries/audio/                                                
vmap       audio                                                 ./libraries/audio/                                                
ensure_lib                                                       ./libraries/sdram_my_partner/                                     
vmap       sdram_my_partner                                      ./libraries/sdram_my_partner/                                     
ensure_lib                                                       ./libraries/DE1_SoC_QSYS_inst_vga_alt_vip_itc_0_clocked_video_bfm/
vmap       DE1_SoC_QSYS_inst_vga_alt_vip_itc_0_clocked_video_bfm ./libraries/DE1_SoC_QSYS_inst_vga_alt_vip_itc_0_clocked_video_bfm/
ensure_lib                                                       ./libraries/DE1_SoC_QSYS_inst_signal_selector_bfm/                
vmap       DE1_SoC_QSYS_inst_signal_selector_bfm                 ./libraries/DE1_SoC_QSYS_inst_signal_selector_bfm/                
ensure_lib                                                       ./libraries/DE1_SoC_QSYS_inst_reset_bfm/                          
vmap       DE1_SoC_QSYS_inst_reset_bfm                           ./libraries/DE1_SoC_QSYS_inst_reset_bfm/                          
ensure_lib                                                       ./libraries/DE1_SoC_QSYS_inst_modulation_selector_bfm/            
vmap       DE1_SoC_QSYS_inst_modulation_selector_bfm             ./libraries/DE1_SoC_QSYS_inst_modulation_selector_bfm/            
ensure_lib                                                       ./libraries/DE1_SoC_QSYS_inst_keyboard_keys_bfm/                  
vmap       DE1_SoC_QSYS_inst_keyboard_keys_bfm                   ./libraries/DE1_SoC_QSYS_inst_keyboard_keys_bfm/                  
ensure_lib                                                       ./libraries/DE1_SoC_QSYS_inst_key_external_connection_bfm/        
vmap       DE1_SoC_QSYS_inst_key_external_connection_bfm         ./libraries/DE1_SoC_QSYS_inst_key_external_connection_bfm/        
ensure_lib                                                       ./libraries/DE1_SoC_QSYS_inst_clk_bfm/                            
vmap       DE1_SoC_QSYS_inst_clk_bfm                             ./libraries/DE1_SoC_QSYS_inst_clk_bfm/                            
ensure_lib                                                       ./libraries/DE1_SoC_QSYS_inst_audio2fifo_0_out_pause_bfm/         
vmap       DE1_SoC_QSYS_inst_audio2fifo_0_out_pause_bfm          ./libraries/DE1_SoC_QSYS_inst_audio2fifo_0_out_pause_bfm/         
ensure_lib                                                       ./libraries/DE1_SoC_QSYS_inst_audio2fifo_0_fifo_used_bfm/         
vmap       DE1_SoC_QSYS_inst_audio2fifo_0_fifo_used_bfm          ./libraries/DE1_SoC_QSYS_inst_audio2fifo_0_fifo_used_bfm/         
ensure_lib                                                       ./libraries/DE1_SoC_QSYS_inst_audio2fifo_0_empty_bfm/             
vmap       DE1_SoC_QSYS_inst_audio2fifo_0_empty_bfm              ./libraries/DE1_SoC_QSYS_inst_audio2fifo_0_empty_bfm/             
ensure_lib                                                       ./libraries/DE1_SoC_QSYS_inst_audio2fifo_0_data_divfrec_bfm/      
vmap       DE1_SoC_QSYS_inst_audio2fifo_0_data_divfrec_bfm       ./libraries/DE1_SoC_QSYS_inst_audio2fifo_0_data_divfrec_bfm/      
ensure_lib                                                       ./libraries/DE1_SoC_QSYS_inst/                                    
vmap       DE1_SoC_QSYS_inst                                     ./libraries/DE1_SoC_QSYS_inst/                                    

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  if ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] {
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                     -work altera_ver           
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                              -work lpm_ver              
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                                 -work sgate_ver            
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                             -work altera_mf_ver        
    vlog -sv "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                         -work altera_lnsim_ver     
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_atoms_ncrypt.v"          -work cyclonev_ver         
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_hmi_atoms_ncrypt.v"      -work cyclonev_ver         
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.v"                        -work cyclonev_ver         
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_hssi_atoms_ncrypt.v"     -work cyclonev_hssi_ver    
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_hssi_atoms.v"                   -work cyclonev_hssi_ver    
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_pcie_hip_atoms_ncrypt.v" -work cyclonev_pcie_hip_ver
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_pcie_hip_atoms.v"               -work cyclonev_pcie_hip_ver
  }
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/verbosity_pkg.sv"                                                             -work altera_common_sv_packages                            
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_avalon_st_pipeline_stage.sv"              -L altera_common_sv_packages -work limiter_pipeline                                     
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_avalon_st_pipeline_base.v"                -L altera_common_sv_packages -work limiter_pipeline                                     
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_avalon_st_handshake_clock_crosser.v"      -L altera_common_sv_packages -work crosser                                              
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_avalon_st_clock_crosser.v"                -L altera_common_sv_packages -work crosser                                              
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_avalon_st_pipeline_base.v"                -L altera_common_sv_packages -work crosser                                              
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_width_adapter.sv"                  -L altera_common_sv_packages -work sdram_s1_rsp_width_adapter                           
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_address_alignment.sv"              -L altera_common_sv_packages -work sdram_s1_rsp_width_adapter                           
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_burst_uncompressor.sv"             -L altera_common_sv_packages -work sdram_s1_rsp_width_adapter                           
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_arbitrator.sv"                     -L altera_common_sv_packages -work rsp_mux_002                                          
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0_rsp_mux_002.sv"   -L altera_common_sv_packages -work rsp_mux_002                                          
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_arbitrator.sv"                     -L altera_common_sv_packages -work rsp_mux_001                                          
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0_rsp_mux_001.sv"   -L altera_common_sv_packages -work rsp_mux_001                                          
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_arbitrator.sv"                     -L altera_common_sv_packages -work rsp_mux                                              
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0_rsp_mux.sv"       -L altera_common_sv_packages -work rsp_mux                                              
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0_rsp_demux_016.sv" -L altera_common_sv_packages -work rsp_demux_016                                        
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0_rsp_demux_015.sv" -L altera_common_sv_packages -work rsp_demux_015                                        
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0_rsp_demux_010.sv" -L altera_common_sv_packages -work rsp_demux_010                                        
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0_rsp_demux.sv"     -L altera_common_sv_packages -work rsp_demux                                            
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_arbitrator.sv"                     -L altera_common_sv_packages -work cmd_mux_010                                          
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0_cmd_mux_010.sv"   -L altera_common_sv_packages -work cmd_mux_010                                          
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_arbitrator.sv"                     -L altera_common_sv_packages -work cmd_mux_006                                          
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0_cmd_mux_006.sv"   -L altera_common_sv_packages -work cmd_mux_006                                          
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_arbitrator.sv"                     -L altera_common_sv_packages -work cmd_mux                                              
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0_cmd_mux.sv"       -L altera_common_sv_packages -work cmd_mux                                              
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0_cmd_demux_002.sv" -L altera_common_sv_packages -work cmd_demux_002                                        
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0_cmd_demux_001.sv" -L altera_common_sv_packages -work cmd_demux_001                                        
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0_cmd_demux.sv"     -L altera_common_sv_packages -work cmd_demux                                            
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_burst_adapter.sv"                  -L altera_common_sv_packages -work sdram_s1_burst_adapter                               
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_burst_adapter_uncmpr.sv"           -L altera_common_sv_packages -work sdram_s1_burst_adapter                               
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_burst_adapter_13_1.sv"             -L altera_common_sv_packages -work sdram_s1_burst_adapter                               
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_burst_adapter_new.sv"              -L altera_common_sv_packages -work sdram_s1_burst_adapter                               
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_incr_burst_converter.sv"                  -L altera_common_sv_packages -work sdram_s1_burst_adapter                               
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_wrap_burst_converter.sv"                  -L altera_common_sv_packages -work sdram_s1_burst_adapter                               
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_default_burst_converter.sv"               -L altera_common_sv_packages -work sdram_s1_burst_adapter                               
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_address_alignment.sv"              -L altera_common_sv_packages -work sdram_s1_burst_adapter                               
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_avalon_st_pipeline_stage.sv"              -L altera_common_sv_packages -work sdram_s1_burst_adapter                               
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_avalon_st_pipeline_base.v"                -L altera_common_sv_packages -work sdram_s1_burst_adapter                               
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_traffic_limiter.sv"                -L altera_common_sv_packages -work cpu_data_master_limiter                              
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_reorder_memory.sv"                 -L altera_common_sv_packages -work cpu_data_master_limiter                              
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_avalon_sc_fifo.v"                         -L altera_common_sv_packages -work cpu_data_master_limiter                              
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_avalon_st_pipeline_base.v"                -L altera_common_sv_packages -work cpu_data_master_limiter                              
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0_router_013.sv"    -L altera_common_sv_packages -work router_013                                           
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0_router_009.sv"    -L altera_common_sv_packages -work router_009                                           
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0_router_003.sv"    -L altera_common_sv_packages -work router_003                                           
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0_router_002.sv"    -L altera_common_sv_packages -work router_002                                           
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0_router_001.sv"    -L altera_common_sv_packages -work router_001                                           
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0_router.sv"        -L altera_common_sv_packages -work router                                               
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_avalon_sc_fifo.v"                                                      -work jtag_uart_avalon_jtag_slave_agent_rsp_fifo           
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_slave_agent.sv"                    -L altera_common_sv_packages -work jtag_uart_avalon_jtag_slave_agent                    
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_burst_uncompressor.sv"             -L altera_common_sv_packages -work jtag_uart_avalon_jtag_slave_agent                    
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_master_agent.sv"                   -L altera_common_sv_packages -work cpu_data_master_agent                                
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_slave_translator.sv"               -L altera_common_sv_packages -work jtag_uart_avalon_jtag_slave_translator               
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_merlin_master_translator.sv"              -L altera_common_sv_packages -work cpu_data_master_translator                           
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_vga_vga_clk.vo"                                                  -work vga_clk                                              
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_vga_alt_vip_vfr_0.vo"                                            -work alt_vip_vfr_0                                        
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/alt_vipitc131_IS2Vid.sv"                         -L altera_common_sv_packages -work alt_vip_itc_0                                        
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/alt_vipitc131_IS2Vid_sync_compare.v"                                          -work alt_vip_itc_0                                        
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/alt_vipitc131_IS2Vid_calculate_mode.v"                                        -work alt_vip_itc_0                                        
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/alt_vipitc131_IS2Vid_control.v"                                               -work alt_vip_itc_0                                        
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/alt_vipitc131_IS2Vid_mode_banks.sv"              -L altera_common_sv_packages -work alt_vip_itc_0                                        
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/alt_vipitc131_IS2Vid_statemachine.v"                                          -work alt_vip_itc_0                                        
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/alt_vipitc131_common_fifo.v"                                                  -work alt_vip_itc_0                                        
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/alt_vipitc131_common_generic_count.v"                                         -work alt_vip_itc_0                                        
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/alt_vipitc131_common_to_binary.v"                                             -work alt_vip_itc_0                                        
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/alt_vipitc131_common_sync.v"                                                  -work alt_vip_itc_0                                        
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/alt_vipitc131_common_trigger_sync.v"                                          -work alt_vip_itc_0                                        
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/alt_vipitc131_common_sync_generation.v"                                       -work alt_vip_itc_0                                        
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/alt_vipitc131_common_frame_counter.v"                                         -work alt_vip_itc_0                                        
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/alt_vipitc131_common_sample_counter.v"                                        -work alt_vip_itc_0                                        
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_audio_fifo_used.v"                                               -work fifo_used                                            
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_audio_OUT_PAUSE.v"                                               -work OUT_PAUSE                                            
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_audio_EMPTY.v"                                                   -work EMPTY                                                
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_audio_DATA_FREGEN.v"                                             -work DATA_FREGEN                                          
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_reset_controller.v"                                                    -work rst_controller                                       
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_reset_synchronizer.v"                                                  -work rst_controller                                       
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_irq_clock_crosser.sv"                     -L altera_common_sv_packages -work irq_synchronizer                                     
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_irq_mapper.sv"                      -L altera_common_sv_packages -work irq_mapper                                           
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mm_interconnect_0.v"                                             -work mm_interconnect_0                                    
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_vga.v"                                                           -work vga                                                  
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_timer.v"                                                         -work timer                                                
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_sysid_qsys.vo"                                                   -work sysid_qsys                                           
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_signal_selector.v"                                               -work signal_selector                                      
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_sdram.v"                                                         -work sdram                                                
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_sdram_test_component.v"                                          -work sdram                                                
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_pll.vo"                                                          -work pll                                                  
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_mouse_pos.v"                                                     -work mouse_pos                                            
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_modulation_selector.v"                                           -work modulation_selector                                  
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_lfsr_val.v"                                                      -work lfsr_val                                             
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_lfsr_clk_interrupt_gen.v"                                        -work lfsr_clk_interrupt_gen                               
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_keyboard_keys.v"                                                 -work keyboard_keys                                        
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_key.v"                                                           -work key                                                  
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_jtag_uart.v"                                                     -work jtag_uart                                            
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_dds_increment.v"                                                 -work dds_increment                                        
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu.vo"                                                          -work cpu                                                  
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_jtag_debug_module_sysclk.v"                                  -work cpu                                                  
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_jtag_debug_module_tck.v"                                     -work cpu                                                  
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_jtag_debug_module_wrapper.v"                                 -work cpu                                                  
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_mult_cell.v"                                                 -work cpu                                                  
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_oci_test_bench.v"                                            -work cpu                                                  
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_cpu_test_bench.v"                                                -work cpu                                                  
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_audio_sel.v"                                                     -work audio_sel                                            
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS_audio.v"                                                         -work audio                                                
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_sdram_partner_module.v"                                                -work sdram_my_partner                                     
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_conduit_bfm_0009.sv"                      -L altera_common_sv_packages -work DE1_SoC_QSYS_inst_vga_alt_vip_itc_0_clocked_video_bfm
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_conduit_bfm_0008.sv"                      -L altera_common_sv_packages -work DE1_SoC_QSYS_inst_signal_selector_bfm                
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_avalon_reset_source.sv"                   -L altera_common_sv_packages -work DE1_SoC_QSYS_inst_reset_bfm                          
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_conduit_bfm_0007.sv"                      -L altera_common_sv_packages -work DE1_SoC_QSYS_inst_modulation_selector_bfm            
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_conduit_bfm_0006.sv"                      -L altera_common_sv_packages -work DE1_SoC_QSYS_inst_keyboard_keys_bfm                  
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_conduit_bfm_0005.sv"                      -L altera_common_sv_packages -work DE1_SoC_QSYS_inst_key_external_connection_bfm        
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_avalon_clock_source.sv"                   -L altera_common_sv_packages -work DE1_SoC_QSYS_inst_clk_bfm                            
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_conduit_bfm_0004.sv"                      -L altera_common_sv_packages -work DE1_SoC_QSYS_inst_audio2fifo_0_out_pause_bfm         
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_conduit_bfm_0003.sv"                      -L altera_common_sv_packages -work DE1_SoC_QSYS_inst_audio2fifo_0_fifo_used_bfm         
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_conduit_bfm_0002.sv"                      -L altera_common_sv_packages -work DE1_SoC_QSYS_inst_audio2fifo_0_empty_bfm             
  vlog -sv "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/altera_conduit_bfm.sv"                           -L altera_common_sv_packages -work DE1_SoC_QSYS_inst_audio2fifo_0_data_divfrec_bfm      
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/submodules/DE1_SoC_QSYS.v"                                                               -work DE1_SoC_QSYS_inst                                    
  vlog     "$QSYS_SIMDIR/DE1_SoC_QSYS_tb/simulation/DE1_SoC_QSYS_tb.v"                                                                                                                                  
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  eval vsim -t ps $ELAB_OPTIONS -L work -L work_lib -L altera_common_sv_packages -L limiter_pipeline -L crosser -L sdram_s1_rsp_width_adapter -L rsp_mux_002 -L rsp_mux_001 -L rsp_mux -L rsp_demux_016 -L rsp_demux_015 -L rsp_demux_010 -L rsp_demux -L cmd_mux_010 -L cmd_mux_006 -L cmd_mux -L cmd_demux_002 -L cmd_demux_001 -L cmd_demux -L sdram_s1_burst_adapter -L cpu_data_master_limiter -L router_013 -L router_009 -L router_003 -L router_002 -L router_001 -L router -L jtag_uart_avalon_jtag_slave_agent_rsp_fifo -L jtag_uart_avalon_jtag_slave_agent -L cpu_data_master_agent -L jtag_uart_avalon_jtag_slave_translator -L cpu_data_master_translator -L vga_clk -L alt_vip_vfr_0 -L alt_vip_itc_0 -L fifo_used -L OUT_PAUSE -L EMPTY -L DATA_FREGEN -L rst_controller -L irq_synchronizer -L irq_mapper -L mm_interconnect_0 -L vga -L timer -L sysid_qsys -L signal_selector -L sdram -L pll -L mouse_pos -L modulation_selector -L lfsr_val -L lfsr_clk_interrupt_gen -L keyboard_keys -L key -L jtag_uart -L dds_increment -L cpu -L audio_sel -L audio -L sdram_my_partner -L DE1_SoC_QSYS_inst_vga_alt_vip_itc_0_clocked_video_bfm -L DE1_SoC_QSYS_inst_signal_selector_bfm -L DE1_SoC_QSYS_inst_reset_bfm -L DE1_SoC_QSYS_inst_modulation_selector_bfm -L DE1_SoC_QSYS_inst_keyboard_keys_bfm -L DE1_SoC_QSYS_inst_key_external_connection_bfm -L DE1_SoC_QSYS_inst_clk_bfm -L DE1_SoC_QSYS_inst_audio2fifo_0_out_pause_bfm -L DE1_SoC_QSYS_inst_audio2fifo_0_fifo_used_bfm -L DE1_SoC_QSYS_inst_audio2fifo_0_empty_bfm -L DE1_SoC_QSYS_inst_audio2fifo_0_data_divfrec_bfm -L DE1_SoC_QSYS_inst -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with novopt option
alias elab_debug {
  echo "\[exec\] elab_debug"
  eval vsim -novopt -t ps $ELAB_OPTIONS -L work -L work_lib -L altera_common_sv_packages -L limiter_pipeline -L crosser -L sdram_s1_rsp_width_adapter -L rsp_mux_002 -L rsp_mux_001 -L rsp_mux -L rsp_demux_016 -L rsp_demux_015 -L rsp_demux_010 -L rsp_demux -L cmd_mux_010 -L cmd_mux_006 -L cmd_mux -L cmd_demux_002 -L cmd_demux_001 -L cmd_demux -L sdram_s1_burst_adapter -L cpu_data_master_limiter -L router_013 -L router_009 -L router_003 -L router_002 -L router_001 -L router -L jtag_uart_avalon_jtag_slave_agent_rsp_fifo -L jtag_uart_avalon_jtag_slave_agent -L cpu_data_master_agent -L jtag_uart_avalon_jtag_slave_translator -L cpu_data_master_translator -L vga_clk -L alt_vip_vfr_0 -L alt_vip_itc_0 -L fifo_used -L OUT_PAUSE -L EMPTY -L DATA_FREGEN -L rst_controller -L irq_synchronizer -L irq_mapper -L mm_interconnect_0 -L vga -L timer -L sysid_qsys -L signal_selector -L sdram -L pll -L mouse_pos -L modulation_selector -L lfsr_val -L lfsr_clk_interrupt_gen -L keyboard_keys -L key -L jtag_uart -L dds_increment -L cpu -L audio_sel -L audio -L sdram_my_partner -L DE1_SoC_QSYS_inst_vga_alt_vip_itc_0_clocked_video_bfm -L DE1_SoC_QSYS_inst_signal_selector_bfm -L DE1_SoC_QSYS_inst_reset_bfm -L DE1_SoC_QSYS_inst_modulation_selector_bfm -L DE1_SoC_QSYS_inst_keyboard_keys_bfm -L DE1_SoC_QSYS_inst_key_external_connection_bfm -L DE1_SoC_QSYS_inst_clk_bfm -L DE1_SoC_QSYS_inst_audio2fifo_0_out_pause_bfm -L DE1_SoC_QSYS_inst_audio2fifo_0_fifo_used_bfm -L DE1_SoC_QSYS_inst_audio2fifo_0_empty_bfm -L DE1_SoC_QSYS_inst_audio2fifo_0_data_divfrec_bfm -L DE1_SoC_QSYS_inst -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -novopt
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "file_copy                     -- Copy ROM/RAM files to simulation directory"
  echo
  echo "dev_com                       -- Compile device library files"
  echo
  echo "com                           -- Compile the design files in correct order"
  echo
  echo "elab                          -- Elaborate top level design"
  echo
  echo "elab_debug                    -- Elaborate the top level design with novopt option"
  echo
  echo "ld                            -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                      -- Compile all the design files and elaborate the top level design with -novopt"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                -- Top level module name."
  echo
  echo "SYSTEM_INSTANCE_NAME          -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                   -- Qsys base simulation directory."
  echo
  echo "QUARTUS_INSTALL_DIR           -- Quartus installation directory."
}
file_copy
h
