`timescale 1ns / 1ps
module mxtb4();
reg [31:0] readdata,aluout;
reg memtoreg;
wire [31:0] writedata;
initial begin
    memtoreg = 0;
    readdata = 45;
    aluout = 50;
    #50;
    memtoreg = 1;
    readdata = 30;
    aluout = 50;
    #50;
end
MUXafterDM mx4(readdata,aluout,memtoreg,writedata);
endmodule
