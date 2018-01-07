module EXE(jal,aluc,aluimm,pc4,a,b,imm,rn,
            ealu,ern,eb);
    input jal;
    input [3:0]aluc;
    input aluimm;
    input shift;
    input [31:0] pc4;
    input [31:0] a;
    input [31:0] b;
    input [31:0] imm;
    input [4:0] rn;
    output [31:0] ealu
    output [4:0] ern;
    output [31:0] eb;
    assign eb = b;
    wire [31:0] alures;
    wire [31:0] alua;
    wire [31:0] alub;
    wire [31:0] pc4p4;
    //pc = pc + 4
    assign pc4p4 = pc4 + 4;
    //output ern needs to be determined
    mux2 aluamux(a,imm,shift,alua);
    mux2 alubmux(b,imm,aluimm,alub);
    mux2 aluresmux(alures,pc4p4,jal,ealu);
    //pay attention that the order of select is defferent in this mux PPT lec11 p73
    alu mainalu(alua,alub,aluc,alures);
endmodule