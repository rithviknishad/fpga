`timescale 1ns/1ps

module mealy(
    input clk,
    input reset,
    input in,
    output reg out
);
    reg state, nextState;
    parameter S0 = 0, S1 = 1, S2 = 2;

    initial out = 0;
    
    always @(posedge clk, posedge reset)
        state <= reset ? S0 : nextState;

    always @(state or in) begin
        case (state):
            S0: begin out <= 0; nextState <= in ? S1 : S2; end
            S1: begin out <= 1; nextState <= in ? S1 : S2; end
            S2: begin out <= 0; nextState <= in ? S1 : S2; end
            default: nextState <= S0;
        endcase
    end
endmodule