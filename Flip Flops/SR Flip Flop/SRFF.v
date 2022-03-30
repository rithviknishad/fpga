`timescale 1ns / 1ps

/*
Truth table of SR Flip Flop

  S R     CLK     Q   Q`  Remarks
  ================================
  0 0   RISING    Q   Q`  retain
  1 1   RISING    0   1   Reset
  1 1   RISING    1   0   Set
  1 1   RISING    ?   ?   INVALID
  x x   FALLING   Q   Q`  retain

*/

module SRFF(
  input S,        // Set
  input R,        // Reset
  input clk,      // Clock
  output reg Q,   // Output of SR Flip Flop
  output Qb       // Complimented output of SR Flip Flop
);
  // Initialize Q with 0
  initial Q = 0;
  
  // Assign Qb to always be compliment of Q.
  assign Qb = ~Q;
  
  // Whenever there is reset or rising edge in clock signal...
  always @(posedge clk) begin
    if (S) Q <= 1'b1;
    if (R) Q <= 1'b0;
  end
endmodule