`timescale 1ns/1ps

module mealy_tb;
    reg clk, reset, in;
    wire out;

    mealy uut(clk, reset, in, out);

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(1);

        // S0 -> S2 -> S1 -> S0
        {reset, in, clk} = 3'b000; #20;
        {reset, in, clk} = 3'b001; #20;
        {reset, in, clk} = 3'b010; #20;
        {reset, in, clk} = 3'b011; #20;
        {reset, in, clk} = 3'b010; #20;
        {reset, in, clk} = 3'b111; #20;

        // S0 -> S2 -> S0
        {reset, in, clk} = 3'b000; #20;
        {reset, in, clk} = 3'b001; #20;
        {reset, in, clk} = 3'b100; #20;
        {reset, in, clk} = 3'b101; #20;
    end
endmodule
