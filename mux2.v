module mux4(input1,input2,select,result);
    input[31:0] input1;
    input[31:0] input2;

    output reg[31:0] result;
    input select;

    initial
    begin
        result = 0;
    end

    always @(input1 or input2 or select)
    begin
        case select:
        1'b0:
            output = input1;
        1'b1:
            output = input2;
    end
endmodule