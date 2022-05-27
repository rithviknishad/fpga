`timescale 1ns/1ps

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

module moore_d(
    input x,
    input clk,
    output z
);
    wire xb;
    not(xb, x);

    wire q0, q0b;
    DFF DFF0(x, clk, q0, q0b);

    wire d1, q0xb, xq1q0b;
    and(q0xb, q0, xb);
    and(xq1q0b, x, q1, q0b);
    or(d1, q0xb, xq1q0b);
    DFF DFF1(d1, clk, q1, q1b);

    and(z, q0, q1);
endmodule