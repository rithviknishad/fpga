`timescale 1ns / 1ps

/*
  Excitation table

       P S           N S
    A   B   C  |  A+  B+  C+
  =============|============
    0   0   0  |  0   0   1
    0   0   1  |  0   1   0
    0   1   0  |  0   1   1
    0   1   1  |  1   0   0
    1   0   0  |  1   0   1
    1   0   1  |  1   1   0
    1   1   0  |  1   1   1
    1   1   1  |  0   0   0

*/

module UpDownCounter(
  input sel,            // sel (0: down, 1: up)
  input clk,            // Clock
  input reset,          // Reset
  output reg [2:0] out  // 3-bit output of up-counter
);
  // Initialize out with 0
  initial out = 3'b000;
  
  // Whenever there is reset or rising edge in clock signal...
  always @(posedge clk or reset) begin
    if (reset)
      out <= 3'b000;
    else
      out = out + (sel ? 1 : -1);
  end
endmodule