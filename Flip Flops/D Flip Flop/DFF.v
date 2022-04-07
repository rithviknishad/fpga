`timescale 1ns / 1ps

/*
Truth table of D Flip Flop

  D     CLK     Q   Q`  Remarks
  =============================
  0   RISING    0   1   reset
  1   RISING    1   0   set
  x   FALLING   Q   Q`  retain

*/

module DFF(
  input D,            // input
  input clk,          // Clock Input
  input reset,        // Reset (Active High)
  output reg Q,       // Output of D Flip Flip
  output Qb           // Complimented output of D Flip Flop
);
  initial Q = 0;      // Initialize Q with 0
  assign Qb = ~Q;     // Assign Qb to always be compliment of Q.
  
  always @(posedge clk or posedge reset)
    Q <= reset ? 0 : D;
endmodule