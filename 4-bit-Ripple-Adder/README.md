# 4-bit Ripple Carry Adder

This project implements a **4-bit Ripple Carry Adder** in Verilog using a combination of:
- Behavioral Modeling (for some full adder instances)
- Structural (Gate-Level) Modeling (for other full adder instances)

---

## 🧠 Project Description

A **Ripple Carry Adder (RCA)** is a digital circuit that performs binary addition of multi-bit numbers by cascading multiple full adders. The carry output from each stage is passed to the next.

In this case:
- **4-bit inputs** → `x[3:0]` and `y[3:0]`  
- **1-bit input** → `carryin`  
- **4-bit output** → `out[3:0]` (sum)  
- **1-bit output** → `carryout` (final carry)

This implementation alternates between behavioral and gate-level full adder models.

---

## 📦 Models Implemented

### 🔹 1. Behavioral Full Adder

This version uses procedural blocks (`always @(*)`) and arithmetic operations.

![Behavioral Model](Images/Behavioral.png)

---

### 🔹 2. Structural Full Adder

This version uses basic logic gates (`xor`, `and`, `or`) to build the full adder using gate-level modeling.

![Structural Model](Images/Gate_level.png)

---

## 🔁 Ripple Carry Adder Circuit Diagram

The following image shows how all four full adders are cascaded to form a 4-bit Ripple Carry Adder.

![Ripple Carry Adder Circuit](Images/Circuit_diagram.png)

---

## 📊 Timing diagram of 4-bit Ripple Carry Adder

This waveform shows the propagation of carry and sum values for all input combinations in simulation.

![Timing Diagram](Images/Timing_diagram.png)

---

## 🗂️ File Organization Note

To ensure the program compiles and runs correctly in Vivado:

- Place the following modules in separate Verilog files within the same project:
  - `Full_adder_Beh.v`
  - `Full_adder_Struc.v`
  - `Ripple_Adder.v`
- Add all three files to **Design Sources** in Vivado.
- Set `Ripple_Adder.v` as the **Top Module** for simulation or synthesis.
