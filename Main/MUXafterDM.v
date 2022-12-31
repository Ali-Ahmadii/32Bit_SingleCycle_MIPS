`timescale 1ns / 1ps
module MUXafterDM(ReadData,ALUOut,MemtoReg,WriteDataOut);
input [31:0] ReadData;
input [31:0] ALUOut;
input MemtoReg;
output [31:0] WriteDataOut;
//    always @(*)begin
//        case(MemtoReg)
//            1'b0 : WriteDataOut <= ALUOut;
//            1'b1 : WriteDataOut <= ReadData;
//        endcase
//    end
assign WriteDataOut = MemtoReg?ReadData:ALUOut;
endmodule
