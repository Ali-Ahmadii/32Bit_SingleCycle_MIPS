`timescale 1ns / 1ps
module SignExtend(Instruction15_0,ExtendedNum);
input [15:0] Instruction15_0;
output reg [31:0] ExtendedNum;
    always@(Instruction15_0)begin
        ExtendedNum <= {{16{Instruction15_0[15]}},Instruction15_0};
    end
    
endmodule
