# Datapath Examples

Small Verilog datapath experiments, currently centered on a synthesizable
Euclidean greatest-common-divisor unit.

## Requirements

- Icarus Verilog 11 or newer
- `make`

Run the verified example:

```sh
make test
```

## Structure

- `GCD/gcd.v` contains `gcd_unit`, an iterative modulo-based GCD engine.
- `GCD/gcd_tb.v` verifies multiple input pairs and completion behavior.
- `MULTIPLY ALGORITHM/` contains an older, undocumented multiply datapath
  experiment that is not yet included in the default build.
- `docs/ARCHITECTURE.md` and `docs/MODERNIZATION.md` document boundaries and
  baseline findings.
