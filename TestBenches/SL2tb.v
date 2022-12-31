`timescale 1ns / 1ps
module SL2tb();
reg [31:0] in;
wire [31:0] out;
initial begin
    in = 32;
    #100;
    in = 4;
    #100;
end
SL2 sl(in,out);
endmodule
