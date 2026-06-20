module test_sub_byte(out,in,clk,clr);
    input clk,clr;
    output reg[127:0]out;
    input [127:0]in;
    wire [7:0]submatrix0,submatrix1,submatrix2,submatrix3,submatrix4,submatrix5,submatrix6,submatrix7,
            submatrix8,submatrix9,submatrix10,submatrix11,submatrix12,submatrix13,submatrix14,submatrix15;
    wire [7:0]ps0,ps1,ps2,ps3,ps4,ps5,ps6,ps7,ps8,ps9,ps10,ps11,ps12,ps13,ps14,ps15;
    
assign ps0  = in[127:120];
assign ps1  = in[119:112];
assign ps2  = in[111:104];
assign ps3  = in[103:96];
assign ps4  = in[95:88];
assign ps5  = in[87:80];
assign ps6  = in[79:72];
assign ps7  = in[71:64];
assign ps8  = in[63:56];
assign ps9  = in[55:48];
assign ps10 = in[47:40];
assign ps11 = in[39:32];
assign ps12 = in[31:24];
assign ps13 = in[23:16];
assign ps14 = in[15:8];
assign ps15 = in[7:0];
    
    
    test_sbox n2(submatrix0,ps0);
    test_sbox n3(submatrix1,ps1);
    test_sbox n4(submatrix2,ps2);
    test_sbox n5(submatrix3,ps3);
    test_sbox n6(submatrix4,ps4);
    test_sbox n7(submatrix5,ps5);
    test_sbox n8(submatrix6,ps6);
    test_sbox n9(submatrix7,ps7);
    test_sbox n10(submatrix8,ps8);
    test_sbox n11(submatrix9,ps9);
    test_sbox n12(submatrix10,ps10);
    test_sbox n13(submatrix11,ps11);
    test_sbox n14(submatrix12,ps12);
    test_sbox n15(submatrix13,ps13);
    test_sbox n16(submatrix14,ps14);
    test_sbox n17(submatrix15,ps15);
 
 always@(posedge clk or posedge clr)begin
    if(clr)
        out <= 128'h00;
    else
        out <= {submatrix0,submatrix1,submatrix2,submatrix3,submatrix4,submatrix5,submatrix6,submatrix7,
            submatrix8,submatrix9,submatrix10,submatrix11,submatrix12,submatrix13,submatrix14,submatrix15};
 end
    
endmodule
