`timescale 1ns / 1ps
module mipstb();
reg Globalclk , Globalreset;
wire [31:0] PCin,PCout,Instruction,ReadData1, ReadData2,ExtendedNum,Out_for_ALU,SL2_Out,aluout,Add_ALU_2S_Pcout_Out,ReadData,WriteDatato_Reg;
wire RegDst, RegWrite, ALUSrc, MemtoReg, MemRead, MemWrite, Branch;
wire [1:0] ALUOp;
wire [4:0]  WriteReg;
wire [3:0] aluctrl;
wire zero;
wire AndOut;
initial begin
    Globalclk = 0;
    Globalreset = 1;
    #5;
    Globalclk=1;
    #20;
    Globalreset = 0;
    forever begin
    #5 Globalclk = ~Globalclk;
    end
end
Mips cpu(.Globalclk(Globalclk),.Globalreset(Globalreset),.PCin(PCin),.PCout(PCout),.Instruction(Instruction),.RegDst(RegDst),.RegWrite(RegWrite),.ALUSrc(ALUSrc),.MemtoReg(MemtoReg),.MemRead(MemRead),.MemWrite(MemWrite),.Branch(Branch),.ALUOp(ALUOp),.WriteReg(WriteReg),.ReadData1(ReadData1),.ReadData2(ReadData2),.ExtendedNum(ExtendedNum),.Out_for_ALU(Out_for_ALU),.SL2_Out(SL2_Out),.aluctrl(aluctrl),.zero(zero),.aluout(aluout),.Add_ALU_2S_Pcout_Out(Add_ALU_2S_Pcout_Out),.AndOut(AndOut),.ReadData(ReadData),.WriteDatato_Reg(WriteDatato_Reg));
endmodule
