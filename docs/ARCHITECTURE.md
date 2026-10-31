# Architecture

The verified GCD example is an iterative datapath:

```text
inputs → register pair (x, y) → Euclidean remainder loop → result/done
```

When `start` is asserted while idle, operands are captured. Each subsequent
clock replaces `(x, y)` with `(y, x % y)` until `y` is zero. `result` then
holds the greatest common divisor and `done` pulses for one cycle.

The multiply experiment remains isolated until its module interfaces and
controller are repaired.
