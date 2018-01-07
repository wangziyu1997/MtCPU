module MEM();
    input wmem;
    input [31:0]alu;
    input [31:0]di;
    output [31:0]do;
    output [31:0]malu;
    assign malu = alu;
    

    dmem maindatamem(a,di,we,do);

endmodule