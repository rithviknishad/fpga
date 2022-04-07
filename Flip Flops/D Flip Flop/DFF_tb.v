`timescale 1ns / 1ps

module DFF_tb;
  reg D, clk, reset;
  wire Q, Qb;
  
  integer i;
  
  DFF uut(D, clk, reset, Q, Qb);
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    
    for (i = 0; i < 8; i = i + 1) begin
      reset = i[2]; D = i[1]; clk = i[0]; #20;
    end
  end
endmodule