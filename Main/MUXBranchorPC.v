`timescale 1ns / 1ps
module MUXBranchorPC(PCout,Add_ALU,AndOut,MUXOut_to_PC);
input [31:0] PCout;
input [31:0] Add_ALU;
input AndOut;
output [31:0] MUXOut_to_PC;
assign MUXOut_to_PC = AndOut?Add_ALU:PCout+4;
//        case(AndOut)
//            1'b0 : MUXOut_to_PC <= PCout +4;
//            1'b1 : MUXOut_to_PC <= Add_ALU;
//        endcase
//    end
endmodule
