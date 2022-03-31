`timescale 1ns / 1ps

/*
          8 to 3 Encoder
            Truth Table
    in [7:0]         out [2:0]
    ==========================
    0 0 0 0 0 0 0 1      0 0 0
    0 0 0 0 0 0 1 0      0 0 1
    0 0 0 0 0 1 0 0      0 1 0
    0 0 0 0 1 0 0 0      0 1 1
    0 0 0 1 0 0 0 0      1 0 0
    0 0 1 0 0 0 0 0      1 0 1
    0 1 0 0 0 0 0 0      1 1 0
    1 0 0 0 0 0 0 0      1 1 1
*/

module Encoder(
  input [7:0] Data_in,      // 8-bit decoded input
  output reg [2:0] Data_out // 3-bit encoded output
);  
  // Whenever `Data_in` changes...
  always @(Data_in) begin
    case (Data_in)
      8'b00000001: Data_out <= 3'b000;
      8'b00000010: Data_out <= 3'b001;
      8'b00000100: Data_out <= 3'b010;
      8'b00001000: Data_out <= 3'b011;
      8'b00010000: Data_out <= 3'b100;
      8'b00100000: Data_out <= 3'b101;
      8'b01000000: Data_out <= 3'b110;
      8'b10000000: Data_out <= 3'b111;
      default: begin end
    endcase
  end
endmodule