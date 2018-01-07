module IDEXE(ewreg,ewregin,em2reg,em2regin,ewmem,ewmemin,
            ejal,ejalin,ealuc,ealucin,ealulmm,ealulmmin,
            eshift,eshiftin,epc4,epc4in,eimm,eimmin,ea,
            eain,ern,ernin,clk);
    input clk;
    input ewregin;
    output reg ewreg;
    input em2regin;
    output reg em2reg;
    input ewmemin;
    output reg ewmem;
    input ejalin;
    output reg ejal;
    input ealucin;
    output reg ealuc;
    input ealulmmin;
    output reg ealulmm;
    input eshiftin;
    output reg eshift;
    input epc4in[31:0];
    output reg epc4[31:0];
    input eimmin[31:0];
    output reg eimm[31:0];
    input eain[31:0];
    output reg ea[31:0];
    input ebin[31:0];
    output reg eb[31:0];
    input ernin[4:0];
    output reg ern[4:0];

    initial//the initial value may cause some problems
    begin
        ewreg   = 1'b0;
        em2reg  = 1'b0;
        ewmem   = 1'b0;
        ejal    = 1'b0;
        ealuc   = 1'b0;
        ealulmm = 1'b0;
        eshift  = 1'b0;
        epc4    = 32'b00000000000000000000000000000000;
        eimm    = 32'b00000000000000000000000000000000; 
        ea      = 32'b00000000000000000000000000000000;
        eb      = 32'b00000000000000000000000000000000;
        ern     = 5'b00000;
    end

    always @(posedge clk)//the edge needs to be write
    begin
        ewreg   = ewregin;
        em2reg  = em2regin;
        ewmem   = ewmemin;
        ejal    = ejalin;
        ealuc   = ealucin;
        ealulmm = ealulmmin;
        eshift  = eshiftin;
        epc4    = epc4in;
        eimm    = eimmin;
        ea      = eain;
        eb      = ebin;
        ern     = ernin;
    end
endmodule
