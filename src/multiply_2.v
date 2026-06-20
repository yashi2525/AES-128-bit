module multiply_2(mul_2,in);
    input[7:0]in;
    output reg [7:0]mul_2;
    always@(*)begin
         if (in[7] == 1'b1)
            mul_2 = (in << 1) ^ 8'h1B;  // Modular reduction
        else
            mul_2 = (in << 1);          // No reduction needed
    end
endmodule
