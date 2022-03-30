`timescale 1ns / 1ps

/*
Truth table of T Flip Flop

  T     CLK     Q   Q`  Remarks
  =============================
  0   RISING    Q   Q`  retain
  1   RISING    Q`  Q   toggle
  x   FALLING   Q   Q`  retain

*/

module TFF(
  input T,      // Toggle input
  input clk, 	  // Clock Input
  input reset, 	// Reset (Active High)
  output reg Q, // Output of T Flip Flip
  output Qb		  // Complimented output of T Flip Flop
);
  // Initialize Q with 0
  initial Q = 0;
  
  // Assign Qb to always be compliment of Q.
  assign Qb = ~Q;
  
  // Whenever there is reset or rising edge in clock signal...
  always @(posedge clk or reset)
    // ... Update Q
    Q = reset ? 0 : (T ? ~Q : Q);
endmodule