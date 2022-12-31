`timescale 1ns / 1ps
module mxtb3();
reg [31:0] pcout,addalu;
reg andout;
wire [31:0] mux;
initial begin
    andout = 0;
    pcout = 33;
    addalu = 45;
    #50;
    andout = 1;
    pcout = 100;
    addalu = 200;
    #50;
end
MUXBranchorPC mx3(pcout,addalu,andout,mux);
endmodule
