`timescale 1ns / 1ps
module DataMemory(clk,Adress,MemWrite,MemRead,WriteData,ReadData);
input clk , MemWrite , MemRead;
input [31:0] Adress;
input [31:0] WriteData;
output reg [31:0] ReadData;
reg [31:0] Memory [0:255];
	initial begin
		Memory[0] <= 0;
		Memory[1] <= 0;
		Memory[2] <= 0;
		Memory[3] <= 10;
		Memory[4] <= 5000;
		Memory[5] <= 100000;
	end
    always@(posedge clk)begin
        if(MemWrite == 1'b1)
            Memory[Adress] <= WriteData;
    end
    always@(posedge clk)begin
        if(MemRead==1'b1)
            ReadData <= Memory[Adress];
    end
endmodule
