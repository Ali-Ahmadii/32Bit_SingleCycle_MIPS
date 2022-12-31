`timescale 1ns / 1ps
module andgatetb();
reg Branchctrl,zero;
wire AndOut;
And_For_Branch and0(.Branchctrl(Branchctrl),.Zero(zero),.AndOut(AndOut));
always begin
    Branchctrl = 1;
    #10;
    Branchctrl = 0;
    #10; 
end
always begin
    zero = 1;
    #5;
    zero = 0;
    #5;
end
endmodule
