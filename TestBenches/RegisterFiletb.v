`timescale 1ns / 1ps
module RegisterFiletb();
reg clk , RegWrite;
reg [4:0] ReadReg1,ReadReg2,WriteReg;
reg [31:0] WriteData;
wire [31:0] ReadData1,ReadData2;
always begin 
    clk = 0;
    #5;
    clk = 1;
    #5;
end
initial begin
    RegWrite = 1;
    ReadReg1 = 5;
    ReadReg2 = 2;
    WriteReg = 8;
    WriteData = 216;
    #100;
    RegWrite = 0;
    ReadReg1 = 5;
    ReadReg2 = 8;
    #10;
end
RegisterFile rf(clk,RegWrite,ReadReg1,ReadReg2,WriteReg,WriteData,ReadData1,ReadData2);
endmodule
