`timescale 1ns / 1ps
module Add_ALU_2S_Pcout(PCout,ShiftOut,Add_ALU_2S_Pcout_Out);
input [31:0] PCout;
input [31:0] ShiftOut;
output reg [31:0] Add_ALU_2S_Pcout_Out;
    always@(*)begin
        Add_ALU_2S_Pcout_Out<=PCout+ShiftOut;
    end
endmodule
