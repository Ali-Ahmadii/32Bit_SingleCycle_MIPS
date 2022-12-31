`timescale 1ns / 1ps
module SignExtendtb();
reg [15:0]Instruction15_0;
wire [31:0] Extended_Number;
initial begin
        Instruction15_0 = 32;
        #100;
        Instruction15_0 = 100;
        #100
        Instruction15_0 = 4;
   end
SignExtend ss (Instruction15_0,Extended_Number);
endmodule
