module ENCRYPTION_new(cipher_text,in,key_in,clk,clr);
    input clk,clr;
    input [127:0]in,key_in;
    output reg [127:0]cipher_text;
    //key expansion:
    wire [7:0] r1_k0,r1_k1,r1_k2,r1_k3,r1_k4,r1_k5,r1_k6,r1_k7,r1_k8,r1_k9,r1_k10,r1_k11,r1_k12,r1_k13,r1_k14,r1_k15,
                          r2_k0,r2_k1,r2_k2,r2_k3,r2_k4,r2_k5,r2_k6,r2_k7,r2_k8,r2_k9,r2_k10,r2_k11,r2_k12,r2_k13,r2_k14,r2_k15,
                          r3_k0,r3_k1,r3_k2,r3_k3,r3_k4,r3_k5,r3_k6,r3_k7,r3_k8,r3_k9,r3_k10,r3_k11,r3_k12,r3_k13,r3_k14,r3_k15,
                          r4_k0,r4_k1,r4_k2,r4_k3,r4_k4,r4_k5,r4_k6,r4_k7,r4_k8,r4_k9,r4_k10,r4_k11,r4_k12,r4_k13,r4_k14,r4_k15,
                          r5_k0,r5_k1,r5_k2,r5_k3,r5_k4,r5_k5,r5_k6,r5_k7,r5_k8,r5_k9,r5_k10,r5_k11,r5_k12,r5_k13,r5_k14,r5_k15,
                          r6_k0,r6_k1,r6_k2,r6_k3,r6_k4,r6_k5,r6_k6,r6_k7,r6_k8,r6_k9,r6_k10,r6_k11,r6_k12,r6_k13,r6_k14,r6_k15,
                          r7_k0,r7_k1,r7_k2,r7_k3,r7_k4,r7_k5,r7_k6,r7_k7,r7_k8,r7_k9,r7_k10,r7_k11,r7_k12,r7_k13,r7_k14,r7_k15,
                          r8_k0,r8_k1,r8_k2,r8_k3,r8_k4,r8_k5,r8_k6,r8_k7,r8_k8,r8_k9,r8_k10,r8_k11,r8_k12,r8_k13,r8_k14,r8_k15,
                          r9_k0,r9_k1,r9_k2,r9_k3,r9_k4,r9_k5,r9_k6,r9_k7,r9_k8,r9_k9,r9_k10,r9_k11,r9_k12,r9_k13,r9_k14,r9_k15,
                          r10_k0,r10_k1,r10_k2,r10_k3,r10_k4,r10_k5,r10_k6,r10_k7,r10_k8,r10_k9,r10_k10,r10_k11,r10_k12,r10_k13,
                          r10_k14,r10_k15;
      roun1_key r1(r1_k0,r1_k1,r1_k2,r1_k3,r1_k4,r1_k5,r1_k6,r1_k7,r1_k8,r1_k9,r1_k10,r1_k11,r1_k12,r1_k13,r1_k14,r1_k15,
                 r2_k0,r2_k1,r2_k2,r2_k3,r2_k4,r2_k5,r2_k6,r2_k7,r2_k8,r2_k9,r2_k10,r2_k11,r2_k12,r2_k13,r2_k14,r2_k15,
                 r3_k0,r3_k1,r3_k2,r3_k3,r3_k4,r3_k5,r3_k6,r3_k7,r3_k8,r3_k9,r3_k10,r3_k11,r3_k12,r3_k13,r3_k14,r3_k15,
                 r4_k0,r4_k1,r4_k2,r4_k3,r4_k4,r4_k5,r4_k6,r4_k7,r4_k8,r4_k9,r4_k10,r4_k11,r4_k12,r4_k13,r4_k14,r4_k15,
                 r5_k0,r5_k1,r5_k2,r5_k3,r5_k4,r5_k5,r5_k6,r5_k7,r5_k8,r5_k9,r5_k10,r5_k11,r5_k12,r5_k13,r5_k14,r5_k15,
                 r6_k0,r6_k1,r6_k2,r6_k3,r6_k4,r6_k5,r6_k6,r6_k7,r6_k8,r6_k9,r6_k10,r6_k11,r6_k12,r6_k13,r6_k14,r6_k15,
                 r7_k0,r7_k1,r7_k2,r7_k3,r7_k4,r7_k5,r7_k6,r7_k7,r7_k8,r7_k9,r7_k10,r7_k11,r7_k12,r7_k13,r7_k14,r7_k15,
                 r8_k0,r8_k1,r8_k2,r8_k3,r8_k4,r8_k5,r8_k6,r8_k7,r8_k8,r8_k9,r8_k10,r8_k11,r8_k12,r8_k13,r8_k14,r8_k15,
                 r9_k0,r9_k1,r9_k2,r9_k3,r9_k4,r9_k5,r9_k6,r9_k7,r9_k8,r9_k9,r9_k10,r9_k11,r9_k12,r9_k13,r9_k14,r9_k15,
                 r10_k0,r10_k1,r10_k2,r10_k3,r10_k4,r10_k5,r10_k6,r10_k7,r10_k8,r10_k9,r10_k10,r10_k11,r10_k12,r10_k13,
                 r10_k14,r10_k15,key_in,clr,clk);//w4,w5,w6,w7,...w43
       wire[127:0]r1_key, r2_key, r3_key, r4_key, r5_key, r6_key, r7_key, r8_key, r9_key, r10_key;
       assign r1_key ={r1_k0,r1_k1,r1_k2,r1_k3,r1_k4,r1_k5,r1_k6,r1_k7,r1_k8,r1_k9,r1_k10,r1_k11,r1_k12,r1_k13,r1_k14,r1_k15};
       assign r2_key ={r2_k0,r2_k1,r2_k2,r2_k3,r2_k4,r2_k5,r2_k6,r2_k7,r2_k8,r2_k9,r2_k10,r2_k11,r2_k12,r2_k13,r2_k14,r2_k15};
       assign r3_key ={r3_k0,r3_k1,r3_k2,r3_k3,r3_k4,r3_k5,r3_k6,r3_k7,r3_k8,r3_k9,r3_k10,r3_k11,r3_k12,r3_k13,r3_k14,r3_k15};
       assign r4_key ={r4_k0,r4_k1,r4_k2,r4_k3,r4_k4,r4_k5,r4_k6,r4_k7,r4_k8,r4_k9,r4_k10,r4_k11,r4_k12,r4_k13,r4_k14,r4_k15};
       assign r5_key ={r5_k0,r5_k1,r5_k2,r5_k3,r5_k4,r5_k5,r5_k6,r5_k7,r5_k8,r5_k9,r5_k10,r5_k11,r5_k12,r5_k13,r5_k14,r5_k15};
       assign r6_key ={r6_k0,r6_k1,r6_k2,r6_k3,r6_k4,r6_k5,r6_k6,r6_k7,r6_k8,r6_k9,r6_k10,r6_k11,r6_k12,r6_k13,r6_k14,r6_k15};
       assign r7_key ={r7_k0,r7_k1,r7_k2,r7_k3,r7_k4,r7_k5,r7_k6,r7_k7,r7_k8,r7_k9,r7_k10,r7_k11,r7_k12,r7_k13,r7_k14,r7_k15};
       assign r8_key ={r8_k0,r8_k1,r8_k2,r8_k3,r8_k4,r8_k5,r8_k6,r8_k7,r8_k8,r8_k9,r8_k10,r8_k11,r8_k12,r8_k13,r8_k14,r8_k15};
       assign r9_key ={r9_k0,r9_k1,r9_k2,r9_k3,r9_k4,r9_k5,r9_k6,r9_k7,r9_k8,r9_k9,r9_k10,r9_k11,r9_k12,r9_k13,r9_k14,r9_k15};
       assign r10_key ={r10_k0,r10_k1,r10_k2,r10_k3,r10_k4,r10_k5,r10_k6,r10_k7,r10_k8,r10_k9,r10_k10,r10_k11,r10_k12,r10_k13,
                        r10_k14,r10_k15};
                        
    //pre state matrix:
    wire[127:0]r1_add_round;
    add_round_key n1 (r1_add_round,in,key_in,clk,clr);
    //round1:
    //sub byte:
    wire[127:0]r1_sub_byte;
     test_sub_byte n2 (r1_sub_byte,r1_add_round,clk,clr);
    //row shifting:
    wire[127:0]r1_row_shift;
    test_shift_row n3 (r1_row_shift,r1_sub_byte,clk,clr);
    //column mixing:
    wire[127:0]r1_cmix;
    test_column_mixing n4 (r1_cmix,r1_row_shift,clk,clr);
    //add round key
    wire[127:0]r1_add_key;
     add_round_key n5 (r1_add_key,r1_cmix,r1_key,clk,clr);
    //round2:
     //sub byte:
    wire[127:0]r2_sub_byte;
     test_sub_byte n6 (r2_sub_byte,r1_add_key,clk,clr);
     //row shifting:
    wire[127:0]r2_row_shift;
    test_shift_row n7 (r2_row_shift,r2_sub_byte,clk,clr);
     //column mixing:
    wire[127:0]r2_cmix;
    test_column_mixing n8 (r2_cmix,r2_row_shift,clk,clr);
    //add round key
    wire[127:0]r2_add_key;
     add_round_key n9 (r2_add_key,r2_cmix,r2_key,clk,clr);
    //round3:
    //sub byte:
    wire[127:0]r3_sub_byte;
     test_sub_byte n10 (r3_sub_byte,r2_add_key,clk,clr);
     //row shifting:
    wire[127:0]r3_row_shift;
    test_shift_row n11 (r3_row_shift,r3_sub_byte,clk,clr);
    //column mixing:
    wire[127:0]r3_cmix;
    test_column_mixing n12 (r3_cmix,r3_row_shift,clk,clr);
    //add round key
    wire[127:0]r3_add_key;
     add_round_key n13 (r3_add_key,r3_cmix,r3_key,clk,clr);
    //round4:
    //sub byte:
    wire[127:0]r4_sub_byte;
     test_sub_byte n14 (r4_sub_byte,r3_add_key,clk,clr);
     //row shifting:
    wire[127:0]r4_row_shift;
    test_shift_row n15 (r4_row_shift,r4_sub_byte,clk,clr);
    //column mixing:
    wire[127:0]r4_cmix;
    test_column_mixing n16 (r4_cmix,r4_row_shift,clk,clr);
    //add round key
    wire[127:0]r4_add_key;
     add_round_key n17 (r4_add_key,r4_cmix,r4_key,clk,clr);
     //round5:
     //sub byte:
    wire[127:0]r5_sub_byte;
     test_sub_byte n18 (r5_sub_byte,r4_add_key,clk,clr);
     //row shifting:
    wire[127:0]r5_row_shift;
    test_shift_row n19 (r5_row_shift,r5_sub_byte,clk,clr);
    //column mixing:
    wire[127:0]r5_cmix;
    test_column_mixing n20 (r5_cmix,r5_row_shift,clk,clr);
    //add round key
    wire[127:0]r5_add_key;
     add_round_key n21 (r5_add_key,r5_cmix,r5_key,clk,clr);
    //round6:
     //sub byte:
    wire[127:0]r6_sub_byte;
     test_sub_byte n22 (r6_sub_byte,r5_add_key,clk,clr);
     //row shifting:
    wire[127:0]r6_row_shift;
    test_shift_row n23 (r6_row_shift,r6_sub_byte,clk,clr);
    //column mixing:
    wire[127:0]r6_cmix;
    test_column_mixing n24 (r6_cmix,r6_row_shift,clk,clr);
    //add round key
    wire[127:0]r6_add_key;
     add_round_key n25 (r6_add_key,r6_cmix,r6_key,clk,clr);
    //round7:
    //sub byte:
    wire[127:0]r7_sub_byte;
     test_sub_byte n26 (r7_sub_byte,r6_add_key,clk,clr);
     //row shifting:
    wire[127:0]r7_row_shift;
    test_shift_row n27 (r7_row_shift,r7_sub_byte,clk,clr);
    //column mixing:
    wire[127:0]r7_cmix;
    test_column_mixing n28 (r7_cmix,r7_row_shift,clk,clr);
    //add round key
    wire[127:0]r7_add_key;
     add_round_key n29 (r7_add_key,r7_cmix,r7_key,clk,clr);
     //round8:
    //sub byte:
    wire[127:0]r8_sub_byte;
     test_sub_byte n30 (r8_sub_byte,r7_add_key,clk,clr);
     //row shifting:
    wire[127:0]r8_row_shift;
    test_shift_row n31 (r8_row_shift,r8_sub_byte,clk,clr);
    //column mixing:
    wire[127:0]r8_cmix;
    test_column_mixing n32 (r8_cmix,r8_row_shift,clk,clr);
    //add round key
    wire[127:0]r8_add_key;
     add_round_key n33 (r8_add_key,r8_cmix,r8_key,clk,clr);
     //round9:
    //sub byte:
    wire[127:0]r9_sub_byte;
     test_sub_byte n34 (r9_sub_byte,r8_add_key,clk,clr);
     //row shifting:
    wire[127:0]r9_row_shift;
    test_shift_row n35 (r9_row_shift,r9_sub_byte,clk,clr);
    //column mixing:
    wire[127:0]r9_cmix;
    test_column_mixing n36 (r9_cmix,r9_row_shift,clk,clr);
    //add round key
    wire[127:0]r9_add_key;
     add_round_key n37 (r9_add_key,r9_cmix,r9_key,clk,clr);
     //round10:
    //sub byte:
    wire[127:0]r10_sub_byte;
     test_sub_byte n38 (r10_sub_byte,r9_add_key,clk,clr);
     //row shifting:
    wire[127:0]r10_row_shift;
    test_shift_row n39 (r10_row_shift,r10_sub_byte,clk,clr);
    //add round key
    wire[127:0]r10_add_key;
     add_round_key n41 (r10_add_key,r10_row_shift,r10_key,clk,clr);
     always@(posedge clk or posedge clr)begin
        if(clr)
            cipher_text <= 128'h00;
        else
            cipher_text <= r10_add_key;
     end
endmodule
