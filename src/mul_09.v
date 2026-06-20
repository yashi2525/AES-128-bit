module mul_09(out,in);
input [7:0]in;
output [7:0]out;
wire [7:0]b2,b4,b8;
     multiply_2 n1 (b2,in);
     multiply_2 n2 (b4,b2);
     multiply_2 n3 (b8,b4);
 assign out = b8 ^ in;
       
endmodule
