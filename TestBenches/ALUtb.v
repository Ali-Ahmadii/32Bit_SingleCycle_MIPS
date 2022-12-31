`timescale 1ns / 1ps
module ALUtb();
reg [31:0] a,b;
reg [3:0] aluctrl;
wire zero;
wire [31:0] aluout;
initial begin
    aluctrl = 0;
    a = 7;
    b = 3;
    #50;
    aluctrl = 5;
    a = 10;
    b = 10;
    #50;
    aluctrl = 1;
    a = 10;
    b = 20;
    #50;
    aluctrl = 2;
    a = 32;
    b = 32;
    #50;
    aluctrl = 6;
    a = 40;
    b = 44;
    #50;
    aluctrl = 7;
    a = 200;
    b = 300;
    #50;
    #150;
    $finish;
end
ALU aa (aluctrl,a,b,aluout,zero);
endmodule
