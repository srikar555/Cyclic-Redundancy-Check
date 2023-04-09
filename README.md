This is a Verilog implementation of a Linear Feedback Shift Register (LFSR) used for generating CRC-16 checksums.

The code uses a 16-bit LFSR with the polynomial x^16 + x^15 + x^2 + 1 (CRC-16-IBM).

Checksum Generation Mode: In this mode, the LFSR is initialized with all zeros and the input message is fed to the LFSR. After processing the entire message, the LFSR output gives the 16-bit CRC remainder for the message.

The module CRC_16_serial contains the Verilog implementation of the CRC-16 LFSR. The module takes the following inputs:

clk: The clock input. reset: The reset input. When reset is high, the LFSR is reset to all zeros. crc_in: The input data to the LFSR. The module provides the following outputs:

crc_lfsr: The output remainder for generation mode The testbench directory contains a Verilog testbench for the CRC_16_serial module.

Getting Started To use this module, you can clone this repository and use the CRC_16_serial module in your Verilog project. You can also modify the module to use a different CRC polynomial or LFSR size.

To run the testbench, you can use any Verilog simulator (e.g., Icarus Verilog, ModelSim). Simply compile the CRC_16_serial.v and testbench files and run the simulation.

In the below example, remainder is generated after we exhaust all the input bits image

![image](https://user-images.githubusercontent.com/64193247/230792420-66ac6fa2-7d72-4b0d-b898-31097a4d1226.png)
