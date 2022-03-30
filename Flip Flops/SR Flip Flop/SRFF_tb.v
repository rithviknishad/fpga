`timescale 1ns / 1ps

module SRFF_tb;
  reg S, R, clk;
  wire Q, Qb;
  
  integer i;
  
  SRFF uut(S, R, clk, Q, Qb);
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    
    for (i = 0; i < 6; i = i + 1) begin
      R = i[2]; S = i[1]; clk = i[0]; #20;
    end
  end
endmodule