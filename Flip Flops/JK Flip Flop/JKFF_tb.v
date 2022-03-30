`timescale 1ns / 1ps

module JKFF_tb;
  reg J, K, clk;
  wire Q, Qb;
  
  integer i;
  
  JKFF uut(J, K, clk, Q, Qb);
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    
    for (i = 0; i < 8; i = i + 1) begin
      J = i[2]; K = i[1]; clk = i[0]; #20;
    end
  end
endmodule