# Simple Verilog Wire Simulation

A basic structural Verilog project implementing a bypass wire, simulated using Icarus Verilog (`iverilog`) and visualized via GTKWave on Ubuntu.

## Repository Structure
* `/rtl` - Primary Verilog source design files (Register-Transfer Level).
* `/sim` - Testbench environments and validation suites.

## How to Run & Verify Locally
Ensure you have `iverilog` and `gtkwave` installed on your Linux system. Run the following from the root directory:

```bash
# Compile the design and testbench
iverilog -o design_simple_wire rtl/simple_wire.v sim/tb_simple_wire.v

# Execute the simulation framework
vvp design_simple_wire

# Launch visual waveform window
gtkwave sim_output.vcd
```
