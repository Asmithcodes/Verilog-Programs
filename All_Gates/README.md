# All Logic Gates - Verilog

This project implements all the basic logic gates in Verilog using a single module. It demonstrates the behavior of the following gates:

- NOT
- BUF (Buffer)
- AND
- OR
- NAND
- NOR
- XOR
- XNOR

Each gate takes appropriate inputs and produces the corresponding logical output.

---

## 📂 Project Description

This module takes two inputs `a` and `b` and generates outputs for each logic gate operation. The goal is to understand how each gate behaves with the same inputs and how outputs differ.

---

## Inputs and Outputs

| *Name*   | *Type*   | *Description*                 |
|--------|--------|---------------------------------|
| `a`    | Input  | First binary input              |
| `b`    | Input  | Second binary input             |
| `yNota`| Output | Output of NOT gate on `a`       |
| `yBufb`| Output | Output of Buffer gate on `b`    |
| `yAnd` | Output | Output of AND gate              |
| `yOr`  | Output | Output of OR gate               |
| `yNand`| Output | Output of NAND gate             |
| `yNor` | Output | Output of NOR gate              |
| `yXor` | Output | Output of XOR gate              |
| `yXnor`| Output | Output of XNOR gate             |

---

## ⚙️ Gate Explanations and Truth Tables

### NOT Gate

- **Description**: Inverts the input bit.
- **Verilog Statement**: `not(yNota, a);`

| *A*| *NOT A*   |
|---|------------------|
| 0 |        1         |
| 1 |        0         |

---

### BUF (Buffer) Gate

- **Description**: Outputs the same value as input, used for signal stabilization.
- **Verilog Statement**: `buf(yBufb, b);`

| *B* | *BUF B*   |
|---|------------------|
| 0 |        0         |
| 1 |        1         |

---

### AND Gate

- **Description**: Returns `1` only if both inputs are `1`.
- **Verilog Statement**: `and(yAnd, a, b);`

| *A* | *B* | *A AND B*  |
|---|---|------------------|
| 0 | 0 |        0         |
| 0 | 1 |        0         |
| 1 | 0 |        0         |
| 1 | 1 |        1         |

---

### OR Gate

- **Description**: Returns `1` if at least one input is `1`.
- **Verilog Statement**: `or(yOr, a, b);`

| *A* | *B* | *A OR B*  |
|---|---|----------------|
| 0 | 0 |       0        |
| 0 | 1 |       1        |
| 1 | 0 |       1        |
| 1 | 1 |       1        |

---

### NAND Gate

- **Description**: Inverse of AND. Returns `0` only if both inputs are `1`.
- **Verilog Statement**: `nand(yNand, a, b);`

| *A* | *B* | *A NAND B*   |
|---|---|---------------------|
| 0 | 0 |         1           |
| 0 | 1 |         1           |
| 1 | 0 |         1           |
| 1 | 1 |         0           |

---

### NOR Gate

- **Description**: Inverse of OR. Returns `1` only if both inputs are `0`.
- **Verilog Statement**: `nor(yNor, a, b);`

| *A* | *B* | *A NOR B*  |
|---|---|-------------------|
| 0 | 0 |        1          |
| 0 | 1 |        0          |
| 1 | 0 |        0          |
| 1 | 1 |        0          |

---

### XOR Gate

- **Description**: Returns `1` if inputs are different.
- **Verilog Statement**: `xor(yXor, a, b);`

| *A* | *B* | *A XOR B*  |
|---|---|------------------|
| 0 | 0 |        0         |
| 0 | 1 |        1         |
| 1 | 0 |        1         |
| 1 | 1 |        0         |

---

### XNOR Gate

- **Description**: Inverse of XOR. Returns `1` if inputs are the same.
- **Verilog Statement**: `xnor(yXnor, a, b);`

| *A* | *B* | *A XNOR B*   |
|---|---|---------------------|
| 0 | 0 |         1           |
| 0 | 1 |         0           |
| 1 | 0 |         0           |
| 1 | 1 |         1           |

---

## 🧩 Circuit Diagram

![Circuit Diagram](Images/Circuit_diagram.png)

---

## ⏱️ Timing Diagram

The timing diagram below shows how the outputs of each logic gate respond to changing inputs `a` and `b`.

![Timing Diagram](Images/Timing_diagram.png)

---

## ✅ Conclusion

This module serves as a foundational reference for digital logic design. It is ideal for beginners to understand and simulate the basic logic gate behaviors in Verilog.

