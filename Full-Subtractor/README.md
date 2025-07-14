# 1-bit Full Subtractor

This project implements a **1-bit full subtractor** in Verilog using both:  
- Behavioral Modeling  

---

## 🧠 Project Description

A **full subtractor** is a combinational circuit that performs subtraction of three binary bits: two inputs and a borrow-in. It produces a **difference** and a **borrow-out**.

In this case:
- **Inputs** → `a`, `b`, `bin`  
- **Outputs** →  
  - `diff` → The result of `a - b - bin`  
  - `bout` → The borrow-out bit  

---

## 📦 Models Implemented

### 🔹 Behavioral Model

This version uses high-level expressions to describe subtraction logic using conditional operators.

![Behavioral Model](Circuit.png)

---

## 📊 Timing diagram of 1-bit Full Subtractor

This diagram illustrates how the full subtractor responds to all input combinations of `a`, `b`, and `bin`.

![Timing Diagram](Timing_diagram.png)
