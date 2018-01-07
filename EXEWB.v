module EXEWB(clk,mwregin,mwreg,mm2regin,mm2reg,
            mwmem,mwmemin,maluin,malu,mrnin,mrn);
    input clk;
    input mwregin;
    output reg mwreg;
    input mm2regin;
    output reg mm2reg;
    input mwmemin;
    output reg mwmem;
    input[31:0] maluin;
    output reg[31:0] malu;
    input[4:0] mrnin;
    output reg[4:0] mrn;

    initial
    begin
        mwreg  = 0;
        mm2reg = 0;
        mwmem  = 0;
        malu   = 0;
        mrn    = 0;
    end

    always @(posedge clk)
    begin
        mwreg  =mwregin;
        mm2reg =mm2regin;
        mwmem  =mwmemin;
        malu   =maluin;
        mrn    =mrnin;   
    end
endmodule