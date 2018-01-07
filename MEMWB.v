module MEMWB(clk,wwregin,wwreg,wm2regin,wm2reg,
            waluin,walu,wmoin,wmo,wrnin,wrn);
    input clk;
    input wwregin;
    output reg wwreg;
    input wm2reg;
    output reg wm2reg;
    input [31:0] waluin;
    output reg[31:0] walu;
    input [31:0] wmoin;
    output reg[31:0] wmo;
    input [4:0] wrnin;
    output reg [4:0] wrn;

    initial
    begin
        wwreg = 0;
        wm2reg = 0;
        walu = 0;
        wmo = 0;
        wrn = 0;
    end

    always @(posedge clk)
    begin
        wwreg = wwregin;
        wm2reg = wm2regin;
        walu = waluin;
        wmo = wmoin;
        wrn = wrnin;
    end
endmodule;
