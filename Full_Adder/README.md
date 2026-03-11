# 1-bit Full Adder

This project implements a **1-bit full adder** in Verilog, showcasing both behavioral and structural modeling techniques.

## Project Description

A full adder is a combinational circuit that adds three 1-bit binary numbers (two inputs and a carry-in) and produces a sum and a carry-out.

### Features
- **Inputs**: `a`, `b`, `cin` (1-bit binary numbers).
- **Outputs**:
  - `sum`: The sum bit of the addition.
  - `cout`: The carry-out bit.
- Includes both behavioral and gate-level implementations.

## Files Included

- `Full_adder_Beh.v`: Behavioral model of the full adder.
- `Full_adder_Struc.v`: Structural model of the full adder.
- `Tb.v`: Testbench for simulation.
- `Images/`: Contains circuit and timing diagrams.

## How to Simulate

1. Open Vivado and create a new project.
2. Add the Verilog files (`Full_adder_Beh.v`, `Full_adder_Struc.v`, `Tb.v`).
3. Set `Tb.v` as the top module.
4. Run the simulation to verify the full adder's functionality.

## Circuit Diagram

![Full Adder Circuit](Images/Full_Adder_Circuit.png)

## Timing Diagram

![Timing Diagram](Images/Timing_diagram.png)

---

Understand the design and functionality of full adders!
