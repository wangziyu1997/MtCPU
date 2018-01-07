module ControlUnit();
    input [4:0] mrn,ern,rs,rt;
    input mm2reg;
    input mwreg;
    input em2reg;
    input ewreg;
    input [5:0] op,func;
    input rsrtequ;
    output wpcir,wreg,regrt,jal,m2reg,shift,aluimm,sext,wmem;
    output [1:0] pcsource,fwda,fwdb;
    fwda = 2'b00;
    if(ewreg & (ern != 0) & (ern == rs) & ~em2reg) begin
      fwda = 2'b01;
    end else begin 
        if (mwreg & (mrn != 0) & (mrn == rs) & ~mm2reg) begin
            fwda = 2'b10;
        end else begin
            if (mwreg & (mrn != 0) & (mrn == rs) & mm2reg) begin
                    fwda = 2'b11;
            end
        end 
    end

    fwdb = 2'b00;
    if(ewreg & (ern != 0) & (ern == rt) & ~em2reg) begin
      fwdb = 2'b01;
    end else begin 
        if (mwreg & (mrn != 0) & (mrn == rt) & ~mm2reg) begin
            fwdb = 2'b10;
        end else begin
            if (mwreg & (mrn != 0) & (mrn == rt) & mm2reg) begin
                    fwdb = 2'b11;
            end
        end 
    end

    
endmodule