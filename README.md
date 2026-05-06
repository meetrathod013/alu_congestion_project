# alu_congestion_project
ALU Congestion Analysis and Fix (Physical Design)

# Project Overview

This project demonstrates a real physical design issue — routing congestion — and how it can be resolved using proper floorplanning and placement knob tuning.

The design used is a simple ALU, implemented using a standard physical design flow.

---

# Objective

- Create a congestion scenario intentionally
- Observe routing failure due to high congestion
- Fix the issue using physical design knobs
- Achieve successful routing with reduced congestion

---

# Run 1: Congestion High (Failure Case)

In the initial run, the design was configured with higher utilization and suboptimal placement settings.

Observations:

- High routing congestion observed
- Routing failed
- Logs indicate congestion overflow

Evidence:

- Logs available in: "Run1_congestion_high/"
- Screenshots show congestion heatmap and routing failure

---

# Analysis

The routing failure was caused due to:

- High cell density (high core utilization)
- Limited routing resources
- Poor placement distribution

This resulted in congestion hotspots and routing overflow.

---

# Run 2: Congestion Fixed (Success Case)

In the second run, physical design knobs were tuned to improve routability.

Changes Made:

- Reduced core utilization
- Improved placement density
- Enabled better routing-driven optimization

Results:

- Congestion reduced significantly (near zero overflow)
- Routing completed successfully

Evidence:

- Logs available in: "Run2_congestion_fixed/"
- Screenshots show improved placement and clean routing

---

# Result Comparison

Parameter| Run 1 (Before)| Run 2 (After)

Congestion| High| Low / Zero

Routing| Failed| Success

Utilization| High| Optimized

---

# Conclusion

This project shows that improper floorplanning and high utilization can lead to severe routing congestion and failure.
By tuning physical design parameters, routability can be significantly improved, leading to successful design closure.

---

# Key Learning

- Congestion is directly impacted by placement and utilization
- Proper knob tuning is critical in physical design
- Early detection of congestion avoids routing failures

---

# Repository Structure

Run1_congestion_high/   → Logs and screenshots showing congestion issue  
Run2_congestion_fixed/  → Logs and screenshots showing resolved design  
logic file/             → RTL (ALU design)  
config.tcl              → Design configuration  
