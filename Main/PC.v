`timescale 1ns / 1ps
module PC(clk,reset,PCin,PCOut);
input clk , reset;
input [31:0] PCin;
output reg [31:0] PCOut;
    always@(posedge clk) begin
        if(reset==1)begin
            PCOut <= 0;
            end
        else begin
            #1 PCOut <= PCin;
//              PCOut <= PCOut+4;
        end
    end
endmodule
