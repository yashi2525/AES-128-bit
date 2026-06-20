module multiply_3(mul_3,in);
    input [7:0]in;
    output [7:0]mul_3;
    wire [7:0]mul_2;
    multiply_2 n1(mul_2,in);
    assign mul_3=mul_2^in;
endmodule
