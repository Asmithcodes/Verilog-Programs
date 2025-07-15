# Parameterized N-bit Adder-Subtractor

This project implements a **parameterized N-bit Adder-Subtractor** in Verilog using:
- Behavioral Modeling for full adder logic
- A `generate` loop for scalability
- Conditional XOR logic for subtraction support

---

## 🧠 Project Description

An **Adder-Subtractor** circuit can perform both addition and subtraction based on a control input (`carryin`). This design supports variable bit-width using the `parameter` keyword.

The circuit works by XORing the second operand `y` with `carryin` to produce `y_eff`. When `carryin = 1`, `y_eff = ~y`, enabling 2's complement subtraction with the initial carryin acting as `+1`. A `generate` block links a chain of behavioral full adders for flexible and scalable logic.

In this case:
- **Inputs**
  - `x[N-1:0]` and `y[N-1:0]` → binary operands
  - `carryin` → control signal:  
    - `0` → addition  
    - `1` → subtraction  
- **Outputs**
  - `out[N-1:0]` → result of addition or subtraction
  - `carryout` → final carry or borrow

---

## 📦 Models Implemented

### 🔹 Full Adder – Behavioral Model

Used to construct the core adder logic inside the generate loop.

![Full adder Block](Images/Block.png)

---

## 🔁 Adder-Subtractor Circuit Diagram

The following image shows the full adder chain used for the arithmetic operation, parameterized to scale to any bit-width.

![Adder-Subtractor Circuit](Images/Circuit_diagram.png)

---

## 📊 Timing Diagram of N-bit Adder-Subtractor

The timing diagram shows the output transitions under various combinations of inputs for both addition and subtraction operations.

![Timing Diagram](Images/Timing_diagram.png)

---

## 🗂️ File Organization Note

To ensure the program runs correctly in **Vivado**:

- Place the following modules in separate Verilog files within the same project:
  - `Full_adder_Beh.v`
  - `Adder_subtractor.v`
- Add both files to **Design Sources**
- Set `Adder_subtractor.v` as the **Top Module**
- Create a testbench to validate both addition and subtraction modes with different bit-widths if desired.
