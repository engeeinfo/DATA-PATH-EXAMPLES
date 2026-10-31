# Datapath Examples

Verilog examples of datapath and controller design.

## Examples

- `GCD/` - greatest-common-divisor datapath and testbench
- `MULTIPLY ALGORITHM/` - sequential multiplication datapath modules

## Simulate the GCD example

```bash
iverilog -o gcd_tb GCD/gcd.v GCD/gcd_tb.v
vvp gcd_tb
```

The multiplication example is provided as reusable RTL building blocks; connect
the modules in a top-level testbench for a complete simulation.
