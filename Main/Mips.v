`timescale 1ns / 1ps
module Mips (Globalclk,Globalreset,PCin,PCout,Instruction,RegDst,RegWrite,ALUSrc,MemtoReg,MemRead,MemWrite,Branch,ALUOp,WriteReg,ReadData1,ReadData2,ExtendedNum,Out_for_ALU,SL2_Out,aluctrl,zero,aluout,Add_ALU_2S_Pcout_Out,AndOut,ReadData,WriteDatato_Reg);
input Globalclk , Globalreset;
output wire [31:0] PCin,PCout,Instruction,ReadData1, ReadData2,ExtendedNum,Out_for_ALU,SL2_Out,aluout,Add_ALU_2S_Pcout_Out,ReadData,WriteDatato_Reg;
output wire RegDst, RegWrite, ALUSrc, MemtoReg, MemRead, MemWrite, Branch;
output wire [1:0] ALUOp;
output wire [4:0]  WriteReg;
output wire [3:0] aluctrl;
output wire zero;
output wire AndOut;
PC program_counter(.clk(Globalclk),.reset(Globalreset),.PCin(PCin),.PCOut(PCout));
//InstructionMemory im(.clk(Globalclk),.Adress(PCin),.instruction(Instruction));
InstructionMemory im(.clk(Globalclk),.Adress(PCout),.instruction(Instruction));
Control main_ctrl (.OpCode(Instruction[31:26]),.RegDst(RegDst),.Branch(Branch),.MemRead(MemRead),.MemtoReg(MemtoReg),.ALUOp(ALUOp),.MemWrite(MemWrite),.ALUSrc(ALUSrc),.RegWrite(RegWrite));
MUXforRF mx1(.Instruction20_16(Instruction[20:16]),.Instruction15_11(Instruction[15:11]),.RegDst(RegDst),.WriteReg(WriteReg));
RegisterFile rf(.clk(Globalclk),.RegWrite(RegWrite),.ReadReg1(Instruction[25:21]),.ReadReg2(Instruction[20:16]),.WriteReg(WriteReg),.WriteData(WriteDatato_Reg),.ReadData1(ReadData1),.ReadData2(ReadData2));
SignExtend se (.Instruction15_0(Instruction[15:0]),.ExtendedNum(ExtendedNum));
MUXforALU mx2(.ALUSrc(ALUSrc),.ReadData_2(ReadData2),.ExtendedData(ExtendedNum),.Out_for_ALU(Out_for_ALU));
SL2 shifter(.In(ExtendedNum),.Out(SL2_Out));
ALUControl alucontroler(.ALUop(ALUOp),.funccode(Instruction[5:0]),.aluctrl(aluctrl));
ALU mainalu(.aluctrl(aluctrl),.a(ReadData1),.b(Out_for_ALU),.aluout(aluout),.zero(zero));
Add_ALU_2S_Pcout add_alu(.PCout(PCout),.ShiftOut(SL2_Out),.Add_ALU_2S_Pcout_Out(Add_ALU_2S_Pcout_Out));
And_For_Branch andgate(.Branchctrl(Branch),.Zero(zero),.AndOut(AndOut));
MUXafterDM mx4(.ReadData(ReadData),.ALUOut(aluout),.MemtoReg(MemtoReg),.WriteDataOut(WriteDatato_Reg));
//MUXafterDM mx4(.ReadData(ReadData),.ALUOut(aluout),.WriteDataOut(WriteDatato_Reg));
DataMemory dm(.clk(Globalclk),.Adress(aluout),.MemWrite(MemWrite),.MemRead(MemRead),.WriteData(ReadData2),.ReadData(ReadData));
MUXBranchorPC mx3(.PCout(PCout),.Add_ALU(Add_ALU_2S_Pcout_Out),.AndOut(AndOut),.MUXOut_to_PC(PCin));

endmodule
