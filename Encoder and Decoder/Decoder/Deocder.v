`timescale 1ns / 1ps

/*
          8 to 3 Decoder
            Truth Table
    in [2:0]        out [7:0]
    ============================
     0 0 0       0 0 0 0 0 0 0 1
     0 0 1       0 0 0 0 0 0 1 0
     0 1 0       0 0 0 0 0 1 0 0
     0 1 1       0 0 0 0 1 0 0 0
     1 0 0       0 0 0 1 0 0 0 0
     1 0 1       0 0 1 0 0 0 0 0
     1 1 0       0 1 0 0 0 0 0 0
     1 1 1       1 0 0 0 0 0 0 0
*/

module Decoder(
  input [2:0] Data_in,      // 3-bit encoded input
  output reg [7:0] Data_out // 8-bit decoded output
);  
  // Whenever `Data_in` changes...
  always @(Data_in)
    Data_out <= (1 << Data_in);
endmodule