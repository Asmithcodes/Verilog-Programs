# Digital Logic: Flip-Flops

This directory contains the Verilog implementations and circuit diagrams for the four fundamental types of flip-flops used in sequential logic circuits. Flip-flops are basic storage elements that store a single bit (0 or 1) of data. Their outputs change only at specific moments, determined by a controlling clock signal.

---

## 1. SR (Set-Reset) Flip-Flop

The SR flip-flop is one of the simplest types of flip-flops. It has two inputs, S (Set) and R (Reset), which determine the next state of the output, Q.

- **Set (S=1, R=0):** Forces the output Q to 1.  
- **Reset (S=0, R=1):** Forces the output Q to 0.  
- **Hold (S=0, R=0):** The output Q retains its current value.  
- **Invalid (S=1, R=1):** This input combination is avoided as it leads to an unpredictable state where both Q and Q̅ could be the same value.

### Characteristic Table

| S | R | Q(t+1) | State   |
|---|---|--------|---------|
| 0 | 0 | Q(t)   | Hold    |
| 0 | 1 | 0      | Reset   |
| 1 | 0 | 1      | Set     |
| 1 | 1 | ?      | Invalid |

### Characteristic Equation  
**Q(t+1) = S + R' · Q(t)**  
*(with the condition S·R = 0)*

### Circuit Diagram  
![SR Flip-Flop Circuit](Images/SR%20flipflop%20circuit.png)

---

## 2. D (Data/Delay) Flip-Flop

The D flip-flop is designed to solve the invalid state problem of the SR flip-flop. It has a single data input, D. The output Q simply takes on the value of the D input at the active edge of the clock. It effectively "delays" the input by one clock cycle.

### Characteristic Table

| D | Q(t+1) | State  |
|---|--------|--------|
| 0 | 0      | Reset  |
| 1 | 1      | Set    |

### Characteristic Equation  
**Q(t+1) = D**

### Circuit Diagram  
![D Flip-Flop Circuit](Images/D%20flipflop%20circuit.png)

---

## 3. JK Flip-Flop

The JK flip-flop is an improvement on the SR flip-flop that eliminates the invalid state. It has two inputs, J (Set) and K (Reset). When both J and K are high, the output toggles.

- **Hold (J=0, K=0):** Q retains current value  
- **Reset (J=0, K=1):** Q becomes 0  
- **Set (J=1, K=0):** Q becomes 1  
- **Toggle (J=1, K=1):** Q inverts its current state  

### Characteristic Table

| J | K | Q(t+1) | State  |
|---|---|--------|--------|
| 0 | 0 | Q(t)   | Hold   |
| 0 | 1 | 0      | Reset  |
| 1 | 0 | 1      | Set    |
| 1 | 1 | Q'(t)  | Toggle |

### Characteristic Equation  
**Q(t+1) = J · Q'(t) + K' · Q(t)**

### Circuit Diagram  
![JK Flip-Flop Circuit](Images/JK%20flipflop%20circuit.png)

---

## 4. T (Toggle) Flip-Flop

The T flip-flop is a single-input version of the JK flip-flop, created by tying the J and K inputs together. It is primarily used for toggling an output.

- **Hold (T=0):** Q retains its current value  
- **Toggle (T=1):** Q inverts its current state  

This is very useful for creating counters and frequency dividers.

### Characteristic Table

| T | Q(t+1) | State  |
|---|--------|--------|
| 0 | Q(t)   | Hold   |
| 1 | Q'(t)  | Toggle |

### Characteristic Equation  
**Q(t+1) = T ⊕ Q(t) = T · Q'(t) + T' · Q(t)**

### Circuit Diagram  
![T Flip-Flop Circuit](Images/T%20flipflop%20circuit.png)

---

## Verilog Implementations

This folder contains behavioral Verilog code for each of the flip-flops described above, along with testbenches to simulate and verify their functionality.
