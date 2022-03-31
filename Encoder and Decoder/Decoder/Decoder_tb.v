`timescale 1ns / 1ps

module Decoder_tb;
  reg [2:0] in;
  wire [7:0] out;
  
  integer i;
  
  Decoder uut(in, out);
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);

    for (i = 0; i < 8; i = i + 1) begin
      in = i; #20;
    end
  end
endmodule