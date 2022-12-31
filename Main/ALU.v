`timescale 1ns / 1ps
module ALU(aluctrl,a,b,aluout,zero);
input [3:0] aluctrl;
input [31:0] a,b;
output reg [31:0] aluout;
output zero;
assign zero =(aluout==0)?1:0;
always@(aluctrl,a,b)begin
    case(aluctrl)
    4'b0000 : aluout <= a&b; //and
    4'b0001 : aluout <= a|b; //or
    4'b0010 : aluout <= a+b; //add
    4'b0110 : aluout <= a-b; //subtract
    4'b0111 : aluout <= a<b?1:0; //slt
    default : aluout <=4'b0000;
    endcase
end
endmodule
