`timescale 1ns / 1ps
module mux1tb();
reg [31:0] instruction;
reg dst;
wire [31:0] out;
initial begin
    dst = 1;
    #50;
    instruction = 32'b11111000111101001111001011110001;
    #100;
    dst = 0;
    #50;
    instruction = 32'b11111000111101001111001011110001;
    #100;
end
MUXforRF mx1(instruction[20:16],instruction[15:11],dst,out);
endmodule
