`timescale 1ns / 1ps
module InstructionMemory(clk,Adress,instruction);
input clk;
input [31:0]Adress;
output reg [31:0] instruction;
reg [31:0] Memory [0:127];
initial begin
        Memory[0] <= 32'h00221820;
        Memory[1] <= 32'hAC010000;
        Memory[2] <= 32'h8C240000;
        Memory[3] <= 32'h10210001;
        Memory[4] <= 32'h00001820;
        Memory[5] <= 32'h00411822;
//        Memory[6] = 32'h10a70008;
        end
//initial begin
//    $readmemh("YourInstruction.txt",Memory,0,5);
//end
    always@(posedge clk) begin
        instruction <= Memory[Adress];
    end
endmodule
