# Systolic Array Multiplier using VHDL
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>


<p>This repository contains Verilog files for an array multiplier module and a testbench for simulating its functionality. The array multiplier is designed to perform multiple multiplications concurrently using MAC (Multiply-Accumulate) units.</p>

<h2>Files</h2>

<ul>
  <li><code>SystolicArrayMultiplier.v</code>: This Verilog module implements the array multiplier. It takes multiple pairs of 32-bit input data values and calculates their multiplications concurrently, producing multiple 64-bit output values.</li>
  
  <li><code>SystolicArrayMultiplier_tb.v</code>: This is the testbench for the <code>SystolicArrayMultiplier</code> module. It provides input values and simulates the behavior of the multiplier, capturing the output results for verification.</li>
  
  <li><code>mac1.v</code>: This Verilog module represents a Multiply-Accumulate (MAC) unit. It takes two 32-bit input data values, multiplies them, and accumulates the result.</li>
</ul>
</body>
</html>
