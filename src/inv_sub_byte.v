module inv_sub_byte(inv_out,in,clk,clr);
input clk, clr;
input[127:0]in;
output reg [127:0]inv_out;
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

wire [7:0]submatrix0,submatrix1,submatrix2,submatrix3,submatrix4,submatrix5,submatrix6,submatrix7,
            submatrix8,submatrix9,submatrix10,submatrix11,submatrix12,submatrix13,submatrix14,submatrix15;

    inv_sbox n2(submatrix0, ps0);
    inv_sbox n3(submatrix1, ps1);
    inv_sbox n4(submatrix2, ps2);
    inv_sbox n5(submatrix3, ps3);
    inv_sbox n6(submatrix4, ps4);
    inv_sbox n7(submatrix5, ps5);
    inv_sbox n8(submatrix6, ps6);
    inv_sbox n9(submatrix7, ps7);
    inv_sbox n10(submatrix8, ps8);
    inv_sbox n11(submatrix9, ps9);
    inv_sbox n12(submatrix10, ps10);
    inv_sbox n13(submatrix11, ps11);
    inv_sbox n14(submatrix12, ps12);
    inv_sbox n15(submatrix13, ps13);
    inv_sbox n16(submatrix14, ps14);
    inv_sbox n17(submatrix15, ps15);
    
    always@(posedge clk or posedge clr)begin
        if(clr)
            inv_out <=128'h00;
        else 
            inv_out <= {submatrix0,submatrix1,submatrix2,submatrix3,submatrix4,submatrix5,submatrix6,submatrix7,
                       submatrix8,submatrix9,submatrix10,submatrix11,submatrix12,submatrix13,submatrix14,submatrix15};
    end
endmodule
