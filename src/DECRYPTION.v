module DECRYPTION(decrypt_text,in,key_in,clk,clr);
    input clk,clr;
    input [127:0]in,key_in;
    output reg [127:0]decrypt_text;
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
    wire[127:0]r11_add_round;
    add_round_key n1 (r11_add_round,in,r10_key,clk,clr);
    
    //round10:
    //inerse row shifting:
    wire[127:0]r10_row_shift;
    inv_shift_row n2 (r10_row_shift,r11_add_round,clk,clr);
    //inverse sub byte:
    wire[127:0]r10_sub_byte;
     inv_sub_byte n3 (r10_sub_byte,r10_row_shift,clk,clr);
    //add round key:
   wire[127:0]r10_add_round;
    add_round_key n4 (r10_add_round,r10_sub_byte,r9_key,clk,clr);
    //inverse column mixing:
    wire[127:0]c10_mix;
    inv_column_mix n5 (c10_mix,r10_add_round,clk,clr);
    
    //round9:
    //inerse row shifting:
    wire[127:0]r9_row_shift;
    inv_shift_row n6 (r9_row_shift,c10_mix,clk,clr);
    //inverse sub byte:
    wire[127:0]r9_sub_byte;
     inv_sub_byte n7 (r9_sub_byte,r9_row_shift,clk,clr);
    //add round key:
   wire[127:0]r9_add_round;
    add_round_key n8 (r9_add_round,r9_sub_byte,r8_key,clk,clr);
    //inverse column mixing:
    wire[127:0]c9_mix;
    inv_column_mix n9 (c9_mix,r9_add_round,clk,clr);
    
    //round8:
    //inerse row shifting:
    wire[127:0]r8_row_shift;
    inv_shift_row n10 (r8_row_shift,c9_mix,clk,clr);
    //inverse sub byte:
    wire[127:0]r8_sub_byte;
     inv_sub_byte n11 (r8_sub_byte,r8_row_shift,clk,clr);
     //add round key:
   wire[127:0]r8_add_round;
    add_round_key n12 (r8_add_round,r8_sub_byte,r7_key,clk,clr);
    //inverse column mixing:
    wire[127:0]c8_mix;
    inv_column_mix n13 (c8_mix,r8_add_round,clk,clr);
    
    //round7:
    //inerse row shifting:
    wire[127:0]r7_row_shift;
    inv_shift_row n14 (r7_row_shift,c8_mix,clk,clr);
    //inverse sub byte:
    wire[127:0]r7_sub_byte;
     inv_sub_byte n15 (r7_sub_byte,r7_row_shift,clk,clr);
     //add round key:
   wire[127:0]r7_add_round;
    add_round_key n16 (r7_add_round,r7_sub_byte,r6_key,clk,clr);
    //inverse column mixing:
    wire[127:0]c7_mix;
    inv_column_mix n18 (c7_mix,r7_add_round,clk,clr);
    
    //round6:
    //inerse row shifting:
    wire[127:0]r6_row_shift;
    inv_shift_row n19 (r6_row_shift,c7_mix,clk,clr);
    //inverse sub byte:
    wire[127:0]r6_sub_byte;
     inv_sub_byte n20 (r6_sub_byte,r6_row_shift,clk,clr);
     //add round key:
   wire[127:0]r6_add_round;
    add_round_key n21 (r6_add_round,r6_sub_byte,r5_key,clk,clr);
    //inverse column mixing:
    wire[127:0]c6_mix;
    inv_column_mix n22 (c6_mix,r6_add_round,clk,clr);
    
    //round5:
    //inverse row shifting:
    wire[127:0]r5_row_shift;
    inv_shift_row n23 (r5_row_shift,c6_mix,clk,clr);
    //inverse sub byte:
    wire[127:0]r5_sub_byte;
     inv_sub_byte n24 (r5_sub_byte,r5_row_shift,clk,clr);
     //add round key:
   wire[127:0]r5_add_round;
    add_round_key n25 (r5_add_round,r5_sub_byte,r4_key,clk,clr);
    //inverse column mixing:
    wire[127:0]c5_mix;
    inv_column_mix n26 (c5_mix,r5_add_round,clk,clr);
    
    //round4:
    //inverse row shifting:
    wire[127:0]r4_row_shift;
    inv_shift_row n27 (r4_row_shift,c5_mix,clk,clr);
    //inverse sub byte:
    wire[127:0]r4_sub_byte;
     inv_sub_byte n28 (r4_sub_byte,r4_row_shift,clk,clr);
     //add round key:
   wire[127:0]r4_add_round;
    add_round_key n29 (r4_add_round,r4_sub_byte,r3_key,clk,clr);
    //inverse column mixing:
    wire[127:0]c4_mix;
    inv_column_mix n30 (c4_mix,r4_add_round,clk,clr);
    
    //round3:
    //inverse row shifting:
    wire[127:0]r3_row_shift;
    inv_shift_row n31 (r3_row_shift,c4_mix,clk,clr);
    //inverse sub byte:
    wire[127:0]r3_sub_byte;
     inv_sub_byte n32 (r3_sub_byte,r3_row_shift,clk,clr);
     //add round key:
   wire[127:0]r3_add_round;
    add_round_key n33 (r3_add_round,r3_sub_byte,r2_key,clk,clr);
    //inverse column mixing:
    wire[127:0]c3_mix;
    inv_column_mix n34 (c3_mix,r3_add_round,clk,clr);
    
    //round2:
     //inverse row shifting:
    wire[127:0]r2_row_shift;
    inv_shift_row n35 (r2_row_shift,c3_mix,clk,clr);
    //inverse sub byte:
    wire[127:0]r2_sub_byte;
     inv_sub_byte n36 (r2_sub_byte,r2_row_shift,clk,clr);
     //add round key:
   wire[127:0]r2_add_round;
    add_round_key n37 (r2_add_round,r2_sub_byte,r1_key,clk,clr);
    //inverse column mixing:
    wire[127:0]c2_mix;
    inv_column_mix n38 (c2_mix,r2_add_round,clk,clr);
    
    //round1:
     //inverse row shifting:
    wire[127:0]r1_row_shift;
    inv_shift_row n39 (r1_row_shift,c2_mix,clk,clr);
    //inverse sub byte:
    wire[127:0]r1_sub_byte;
     inv_sub_byte n40 (r1_sub_byte,r1_row_shift,clk,clr);
     //add round key:
   wire[127:0]r1_add_round;
    add_round_key n41 (r1_add_round,r1_sub_byte,key_in,clk,clr);
    always@(posedge clk or posedge clr)begin
        if(clr)
            decrypt_text <= 128'h00;
        else
            decrypt_text <= r1_add_round;
     end
endmodule
