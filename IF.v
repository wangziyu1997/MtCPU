module IF(pc1,pc2,pc3,pcnext,pcsource,pcnow,inst);
    input[31:0] pc1;
    input[31:0] pc2;
    input[31:0] pc3;
    wire[31:0] pc4;//it's wire because it's derived in this module.
    output[31:0] pcnext;//the result of next pc
    input[1:0] pcsource;
    input[31:0] pcnow;
    output [31:0] inst;

    mux4(pc1,pc2,pc3,pc4,pcsource,pcnext);
    instmem(pcnow,inst);//the name should feed the name of the instruction memory module
    
    always @(pcnow)
    begin
        pc4 = pcnow + 4;
    end

endmodule