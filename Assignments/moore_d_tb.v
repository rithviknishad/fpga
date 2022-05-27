`timescale 1ns/1ps

module moore_d_tb;
    reg x, clk;
    wire z;

    moore_d uut(x, clk, z);

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(1);

        { x, clk } = 2'b00; #20;
        { x, clk } = 2'b01; #20;
        { x, clk } = 2'b10; #20;
        { x, clk } = 2'b11; #20;
        { x, clk } = 2'b00; #20;
        { x, clk } = 2'b01; #20;
        { x, clk } = 2'b10; #20;
        { x, clk } = 2'b11; #20;
        { x, clk } = 2'b00; #20;
        { x, clk } = 2'b01; #20;
        { x, clk } = 2'b10; #20;
        { x, clk } = 2'b11; #20;
        { x, clk } = 2'b00; #20;
        { x, clk } = 2'b01; #20;
        { x, clk } = 2'b10; #20;
        { x, clk } = 2'b11; #20;
    end

endmodule
