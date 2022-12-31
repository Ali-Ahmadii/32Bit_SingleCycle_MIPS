`timescale 1ns / 1ps
module ALUControl(ALUop,funccode,aluctrl);
input [1:0] ALUop;
input [5:0] funccode;
output reg [3:0] aluctrl;
    always@(ALUop,funccode) begin
        if(ALUop==0)
            aluctrl <=4'b0010;
        else if(ALUop==1)
            aluctrl <=4'b0110;
        else
            case(funccode)
                32 : aluctrl <= 2; //add
                34 : aluctrl <= 6; //sub
                36 : aluctrl <= 0; //and
                37 : aluctrl <= 1; //or
                42 : aluctrl <= 7; //slt
                default : aluctrl <=15; //not happens
             endcase
    end
endmodule
