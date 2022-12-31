`timescale 1ns / 1ps
module PCtb();
reg clk,reset;
reg [31:0] PCin;
wire [31:0] PCout;
initial begin
    clk = 0;
    reset = 1;
    #5;
    clk=1;
    #20;
    reset = 0;
    forever begin
    #5 clk = ~clk;
    end
end
always begin
    PCin=0;
    forever begin
    #12 PCin = PCin+4;
    end
end
PC prc(clk,reset,PCin,PCout);
endmodule
