`timescale 1ns / 1ps
module instruction_memtb();
reg clk;
reg [31:0] Adress;
wire [31:0] instruction;
always begin 
    clk = 0;
    #5;
    clk = 1;
    #5;
end
initial begin
    Adress = 1;
    #50;
    Adress = 7;
    #50;
    Adress = 5;
    #50;
    Adress = 6;
    #50;
    Adress = 10;
    #50;
    Adress = 12;
    #50;
end
InstructionMemory im(clk,Adress,instruction);
endmodule
