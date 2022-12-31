`timescale 1ns / 1ps
module RegisterFile(clk,RegWrite,ReadReg1,ReadReg2,WriteReg,WriteData,ReadData1,ReadData2);
input clk , RegWrite;
input [4:0] ReadReg1,ReadReg2,WriteReg;
input [31:0] WriteData;
output [31:0] ReadData1,ReadData2;
reg [31:0] Register [0:31];
	initial begin
		Register[0] <= 0;
		Register[1] <= 65;
		Register[2] <= 20;
		Register[3] <= 3000;
		Register[4] <= 4000;
		Register[5] <= 5000;
		Register[6] <= 6000;
		Register[7] <= 7000;
		Register[8] <= 8000;
	end
	assign ReadData1 = Register[ReadReg1];
    assign ReadData2 = Register[ReadReg2];
    always@(posedge clk) begin
     Register[WriteReg]=WriteData;
    end
endmodule
