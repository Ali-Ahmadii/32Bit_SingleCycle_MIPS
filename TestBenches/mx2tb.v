`timescale 1ns / 1ps
module mx2tb();
reg ALUsrc;
reg [31:0] read2,extended;
wire [31:0] aluout;
initial begin
    ALUsrc = 0;
    #50;
    read2 = 47;
    #50;
    ALUsrc = 1;
    #50;
    extended = 37;
    #50;
end
MUXforALU mx2(ALUsrc,read2,extended,aluout);
endmodule
