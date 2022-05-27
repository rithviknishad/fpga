`timescale 1ns/1ps

module sr(
    input s,
    input r,
    input clk,
    output reg q,
    output qb
);
    initial q = 0;
    assign qb = ~q;

    always @(posedge clk) begin
        if (s) q <= 1'b1;
        if (r) q <= 1'b0;
    end
endmodule

module mealey_sr(
    input x,
    input clk,
    output z
);
    wire xb;
    not(xb, x);

    wire q0, q0b;
    sr sr0(x, xb, clk, q0, q0b);

    wire s1, q1, q1b;
    and(s1, q0, xb);
    sr sr1(s1, q0b, clk, q1, q1b);

    and(z, x, q1);
endmodule