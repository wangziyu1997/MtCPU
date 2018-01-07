module pcreg(clk,wpclr,pcnext,pc);
    input clk;
    input wpclr;
    input[31:0] pcnext;
    output reg[31:0] pc;

    initial
    begin
        pc = 0;
    end

    always @ (posedge clk)
    begin
        if(wpclr != 0)
            pc = pcnext;
    end
endmodule