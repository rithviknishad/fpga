`timescale 1ns / 1ps

/*
Truth table of JK Flip Flop

  J K     CLK     Q   Q`  Remarks
  ================================
  0 0   RISING    Q   Q`  retain
  0 1   RISING    0   1   Reset
  1 0   RISING    1   0   Set
  1 1   RISING    Q'  Q   Toggle
  x x   FALLING   Q   Q`  retain

*/

module JKFF(
  input J,        // Set
  input K,        // Reset
  input clk,      // Clock
  output reg Q,   // Output of JK Flip Flop
  output Qb       // Complimented output of JK Flip Flop
);
  // Initialize Q with 0
  initial Q = 0;
  
  // Assign Qb to always be compliment of Q.
  assign Qb = ~Q;
  
  // Whenever there is reset or rising edge in clock signal...
  always @(posedge clk) begin
    if (J & K)
      Q <= ~Q;
    else begin
      if (J) Q <= 1'b1;
      if (K) Q <= 1'b0;
    end
  end
endmodule