module IFID();
    input wpclr;//whether it is wpclr or wpcir needs to be verified
    input clk;
    input[31:0] pcin;
    output reg[31:0] pc;
    input [31:0] instin;
    output reg [31:0] inst;

    initial
    begin
        pc = 0;
        inst = 0;
    end

    always @ (posedge clk)
    begin
        pc = pcin;
        inst = instin;
    end
endmodule