# All Logic Gates in Verilog

This project demonstrates the implementation of all basic logic gates in Verilog. It provides a single module that showcases the behavior of each gate.

## Project Description

The module takes two binary inputs and generates outputs for the following gates:
- NOT
- BUF (Buffer)
- AND
- OR
- NAND
- NOR
- XOR
- XNOR

### Features
- **Inputs**: `a`, `b` (binary inputs).
- **Outputs**: Logical results for each gate.
- Includes truth tables and Verilog statements for each gate.

## Files Included

- `Logic_Gates.v`: Verilog module implementing all gates.
- `Tb.v`: Testbench for simulation.
- `Images/`: Contains truth tables and circuit diagrams.

## How to Simulate

1. Open Vivado and create a new project.
2. Add the Verilog files (`Logic_Gates.v`, `Tb.v`).
3. Set `Tb.v` as the top module.
4. Run the simulation to verify the outputs for each gate.

## Truth Table Example

### NOT Gate

| A | NOT A |
|---|-------|
| 0 |   1   |
| 1 |   0   |

---

Explore the behavior of all logic gates and understand their functionality!

