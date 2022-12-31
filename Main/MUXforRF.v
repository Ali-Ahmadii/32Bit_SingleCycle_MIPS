`timescale 1ns / 1ps
module MUXforRF(Instruction20_16,Instruction15_11,RegDst ,WriteReg);
input [20:16] Instruction20_16;
input [15:11] Instruction15_11;
input RegDst;
output [4:0] WriteReg;
assign WriteReg = RegDst?Instruction15_11:Instruction20_16;
//	always @ (RegDst, Instruction20_16, Instruction15_11) begin
//		case(RegDst) 
//			1'b0 : WriteReg <= Instruction20_16;
//			1'b1 : WriteReg <= Instruction15_11;
//		endcase
//	end
endmodule
