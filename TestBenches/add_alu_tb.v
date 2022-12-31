`timescale 1ns / 1ps
module add_alu_tb();
reg [31:0] PCout,ShiftOut;
wire [31:0]Add_ALU_2S_Pcout_Out;
initial begin
    PCout = 4;
    ShiftOut = 4;
    #50;
    PCout = 10;
    ShiftOut = 6;
    #50;
end
Add_ALU_2S_Pcout addalu (PCout,ShiftOut,Add_ALU_2S_Pcout_Out);
endmodule
