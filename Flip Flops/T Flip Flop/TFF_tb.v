`timescale 1ns / 1ps

module TFF_tb;
  reg T, clk, reset;
  wire Q, Qb;
  
  integer i;
  
  TFF uut(T, clk, reset, Q, Qb);
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    
    for (i = 0; i < 8; i = i + 1) begin
      reset = i[2]; T = i[1]; clk = i[0]; #20;
    end
  end
endmodule