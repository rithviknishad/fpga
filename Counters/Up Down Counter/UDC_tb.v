`timescale 1ns / 1ps

module UpDownCounter_tb;
  reg sel, reset, clk;
  wire [2:0] out;
  
  integer i;
  
  UpDownCounter uut(sel, clk, reset, out);
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);

    for (i = 0; i < 32; i = i + 1) begin
      reset = i[5]; sel = i[4]; clk = i[0]; #5;
    end
  end
endmodule