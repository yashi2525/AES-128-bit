module inv_shift_row(out,in,clk,clr);
input clk, clr;
output reg[127:0]out;
input[127:0]in;
//split input into 8 bit byte:
wire [7:0]byte0,byte1,byte2,byte3,byte4,byte5,byte6,byte7,byte8,byte9,byte10,byte11,byte12,byte13,byte14,byte15;
assign byte0  = in[127:120];//s0
assign byte1  = in[119:112];//s1
assign byte2  = in[111:104];//s2
assign byte3  = in[103:96];//s3
assign byte4  = in[95:88];//s4
assign byte5  = in[87:80];//s5
assign byte6  = in[79:72];//s6
assign byte7  = in[71:64];//s7
assign byte8  = in[63:56];//s8
assign byte9  = in[55:48];//s9
assign byte10 = in[47:40];//s10
assign byte11 = in[39:32];//s11
assign byte12 = in[31:24];//s12
assign byte13 = in[23:16];//s13
assign byte14 = in[15:8];//s14
assign byte15 = in[7:0];//s15
//inv shift row operation:
wire [7:0] is0, is1, is2, is3, is4, is5, is6, is7, is8, is9, is10, is11, is12, is13, is14, is15;
//row0:
assign is0 = byte0;
assign is4 = byte4;
assign is8 = byte8;
assign is12 = byte12;
//row1:
assign is1 =byte13;
assign is5 = byte1;
assign is9 = byte5;
assign is13 = byte9; 
//row2:
assign is2 = byte10;
assign is6 = byte14;
assign is10 = byte2;
assign is14 = byte6;
//row3:
assign is3 = byte7;
assign is7 = byte11;
assign is11 = byte15;
assign is15 = byte3;
always@(posedge clk or posedge clr)begin
    if(clr)
        out <=128'h00;
    else
        out <= {is0, is1, is2, is3, is4, is5, is6, is7, is8, is9, is10, is11, is12, is13, is14, is15};
end
endmodule
