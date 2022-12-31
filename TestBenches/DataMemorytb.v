`timescale 1ns / 1ps
module DataMemorytb();
reg clk,MemWrite , MemRead;
reg [31:0] WriteData , Adress;
wire [31:0] readdata;
    always begin
        clk = 1;
        #10;
        clk = 0;
        #10;
        end
    initial begin
        MemWrite = 1;
        Adress = 6;
        WriteData = 151;
        #50;
        MemWrite = 0;
        #50;
        MemRead = 1;
        Adress = 4;
        #50;
        MemRead = 0;
        #50;
    end
    DataMemory dm(clk,Adress,MemWrite,MemRead,WriteData,readdata);
endmodule
