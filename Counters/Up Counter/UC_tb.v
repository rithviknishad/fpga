`timescale 1ns / 1ps

module UpCounter_tb;
  reg T, reset, clk;
  wire [2:0] out;
  
  integer i;
  
  UpCounter uut(T, clk, reset, out);
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    
    for (i = 0; i < 64; i = i + 1) begin
      reset = i[5]; T = i[3]; clk = i[0]; #5;
    end
  end
endmodule