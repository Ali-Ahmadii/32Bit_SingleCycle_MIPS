`timescale 1ns / 1ps
module And_For_Branch(Branchctrl,Zero,AndOut);
input Branchctrl , Zero;
output reg AndOut;
    always@(*)begin
        AndOut <= Zero && Branchctrl;
    end
endmodule
