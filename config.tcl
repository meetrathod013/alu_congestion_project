# Design Name
set ::env(DESIGN_NAME) "alu"

# Verilog Files
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/simple_alu.v]

# Technology Library
set ::env(PDK) "sky130A"
set ::env(STD_CELL_LIBRARY) "sky130_fd_sc_hd"

set ::env(CLOCK_PORT) "clk"
set ::env(CLOCK_PERIOD) 10.0
# ---------- FLOORPLAN -----
set ::env(FP_CORE_UTIL) "65"
set ::env(FP_ASPECT_RATIO) 1.0
set ::env(CELL_PAD) 2
# ---------- PLACEMENT ----------
set ::env(PL_TARGET_DENSITY) 0.71
set ::env(PL_BASIC_PLACEMENT) 1
set ::env(PL_RESIZER_TIMING_OPTIMIZATIONS) 0
set ::env(PL_ROUTABILITY_DRIVEN) 1
# ---------- PDN (safe spacing) ----------
set ::env(FP_PDN_VPITCH) 7.00
set ::env(FP_PDN_HPITCH) 7.00

# ---------- ROUTING CONSTRAINT ----------
set ::env(RT_MAX_LAYRR) 5
set ::env(GRT_ADJUSTMENT) 0.50
set ::env(FP_IO_MODE) 2
# ---------- TIMING STRESS ----------
set ::env(CLOCK_PERIOD) 2.0   ;# aggressive clock → violation
set ::env(SYNTH_STRATEGY) "AREA 0"

# ---------- CTS 
set ::env(CTS_TARGET_SKEW) 0.1

# ---------- DONT OVER-OPTIMIZE ----------
set ::env(PL_RESIZER_BUFFER_INPUT_PORTS) 0
set ::env(PL_RESIZER_BUFFER_OUTPUT_PORTS) 0
