`timescale 1ns/1ps

module mealey_sr_tb;
    reg x, clk;
    wire z;

    mealey_sr uut(x, clk, z);

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(1);

        { x, clk } = 2'b00; #20;
        { x, clk } = 2'b01; #20;
        { x, clk } = 2'b10; #20;
        { x, clk } = 2'b11; #20;

        x=0; clk=0; #20;
        x=0; clk=1; #20;
        x=1; clk=0; #20;
        x=1; clk=1; #20;
    end

endmodule
