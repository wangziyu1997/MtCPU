module MEM(wmem,alu,di,do,malu);
    input wmem;
    input [31:0]alu;
    input [31:0]di;
    output [31:0]do;
    output [31:0]malu;
    assign malu = alu;
    dmem maindatamem(alu,di,wmem,do);
endmodule