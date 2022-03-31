`timescale 1ns / 1ps

module Encoder_tb;
  reg [7:0] in;
  wire [2:0] out;
  
  integer i;
  
  Encoder uut(in, out);
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);

    for (i = 0; i < 8; i = i + 1) begin
      in = 1 << i; #20;
    end
  end
endmodule