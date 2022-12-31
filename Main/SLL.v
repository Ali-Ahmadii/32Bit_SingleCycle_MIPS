`timescale 1ns / 1ps
module SL2(In,Out);
    input [31:0] In;
    output reg [31:0] Out;
    always@(In)begin
        Out <= In << 2;
    end
endmodule
