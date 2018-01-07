module mux4(input1,input2,input3,input4,select,result);
    input[31:0] input1;
    input[31:0] input2;
    input[31:0] input3;
    input[31:0] input4;
    output reg[31:0] result;
    input [1:0] select;

    initial
    begin
        result = 0;
    end

    always @(input1 or input2 or input3 or input4 or select)
    begin
        case select:
        2'b00:
            output = input1;
        2'b01:
            output = input2;
        2'b10:
            output = input3;
        2'b11:
            output = input4;
    end
endmodule