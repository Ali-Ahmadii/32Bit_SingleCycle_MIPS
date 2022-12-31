`timescale 1ns / 1ps
module MUXforALU(ALUSrc,ReadData_2,ExtendedData,Out_for_ALU);
input ALUSrc;
input [31:0] ReadData_2;
input [31:0] ExtendedData;
output [31:0] Out_for_ALU;
assign Out_for_ALU = ALUSrc?ExtendedData:ReadData_2;
//    always@(ALUSrc,ReadData_2,ExtendedData)begin
//        case(ALUSrc)
//            1'b0 : Out_for_ALU <= ReadData_2;
//            1'b1 : Out_for_ALU <= ExtendedData;
//        endcase
//    end
endmodule
