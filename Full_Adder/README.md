# 1-bit Full Adder

This project implements a **1-bit full adder** in Verilog using both:  
- Behavioral Modeling  
- Structural (Gate-Level) Modeling  

---

## 🧠 Project Description

A **full adder** is a combinational circuit that adds three 1-bit binary numbers — two inputs and a carry-in — and produces a **sum** and a **carry-out**.

In this case:
- **Inputs** → `a`, `b`, `cin`  
- **Outputs** →  
  - `sum` → The sum bit of the addition  
  - `cout` → The carry-out bit  

---

## 📦 Models Implemented

### 🔹 1. Behavioral Model

This version uses high-level arithmetic logic (`a + b + cin`) to generate the output.

![Behavioral Model](Behavioral.png)

---

### 🔹 2. Structural Model (Gate-Level)

This version uses basic logic gates (`xor`, `and`, `or`) to construct the full adder circuit.

![Structural Model](Structural.png)

---

## 📊 Timing diagram of 1-bit Full Adder

This diagram showcases the output behavior for all combinations of `a`, `b`, and `cin`.

![Timing Diagram](Timing_diagram.png)
