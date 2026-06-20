module roun1_key(r1_k0,r1_k1,r1_k2,r1_k3,r1_k4,r1_k5,r1_k6,r1_k7,r1_k8,r1_k9,r1_k10,r1_k11,r1_k12,r1_k13,r1_k14,r1_k15,
                 r2_k0,r2_k1,r2_k2,r2_k3,r2_k4,r2_k5,r2_k6,r2_k7,r2_k8,r2_k9,r2_k10,r2_k11,r2_k12,r2_k13,r2_k14,r2_k15,
                 r3_k0,r3_k1,r3_k2,r3_k3,r3_k4,r3_k5,r3_k6,r3_k7,r3_k8,r3_k9,r3_k10,r3_k11,r3_k12,r3_k13,r3_k14,r3_k15,
                 r4_k0,r4_k1,r4_k2,r4_k3,r4_k4,r4_k5,r4_k6,r4_k7,r4_k8,r4_k9,r4_k10,r4_k11,r4_k12,r4_k13,r4_k14,r4_k15,
                 r5_k0,r5_k1,r5_k2,r5_k3,r5_k4,r5_k5,r5_k6,r5_k7,r5_k8,r5_k9,r5_k10,r5_k11,r5_k12,r5_k13,r5_k14,r5_k15,
                 r6_k0,r6_k1,r6_k2,r6_k3,r6_k4,r6_k5,r6_k6,r6_k7,r6_k8,r6_k9,r6_k10,r6_k11,r6_k12,r6_k13,r6_k14,r6_k15,
                 r7_k0,r7_k1,r7_k2,r7_k3,r7_k4,r7_k5,r7_k6,r7_k7,r7_k8,r7_k9,r7_k10,r7_k11,r7_k12,r7_k13,r7_k14,r7_k15,
                 r8_k0,r8_k1,r8_k2,r8_k3,r8_k4,r8_k5,r8_k6,r8_k7,r8_k8,r8_k9,r8_k10,r8_k11,r8_k12,r8_k13,r8_k14,r8_k15,
                 r9_k0,r9_k1,r9_k2,r9_k3,r9_k4,r9_k5,r9_k6,r9_k7,r9_k8,r9_k9,r9_k10,r9_k11,r9_k12,r9_k13,r9_k14,r9_k15,
                 r10_k0,r10_k1,r10_k2,r10_k3,r10_k4,r10_k5,r10_k6,r10_k7,r10_k8,r10_k9,r10_k10,r10_k11,r10_k12,r10_k13,
                 r10_k14,r10_k15,in_key,clr,clk);//w4,w5,w6,w7,...w43
         input clk,clr;
         input[127:0]in_key;
         output reg [7:0] r1_k0,r1_k1,r1_k2,r1_k3,r1_k4,r1_k5,r1_k6,r1_k7,r1_k8,r1_k9,r1_k10,r1_k11,r1_k12,r1_k13,r1_k14,r1_k15,
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
         // rcon:
         
         wire [7:0]rcon_1,rcon_2,rcon_3, rcon_4, rcon_5, rcon_6, rcon_7, rcon_8, rcon_9, rcon_10;
               
          assign rcon_1 = 8'h01;
          assign rcon_2  = 8'h02;
          assign rcon_3  = 8'h04;
          assign rcon_4  = 8'h08;
          assign rcon_5  = 8'h10;
          assign rcon_6  = 8'h20;
          assign rcon_7  = 8'h40;
          assign rcon_8  = 8'h80;
          assign rcon_9  = 8'h1B;
          assign rcon_10 = 8'h36;
          
          wire [7:0] key0,key1,key2,key3,key4,key5,key6,key7,key8,
                     key9,key10,key11,key12,key13,key14,key15;
          
          original_key n1(key0,key1,key2,key3,key4,key5,key6,key7,key8,
                    key9,key10,key11,key12,key13,key14,key15,in_key,clr,clk);
                    
          wire [7:0] l1_k0, l1_k1, l1_k2, l1_k3,
                     l2_k0, l2_k1, l2_k2, l2_k3,
                     l3_k0, l3_k1, l3_k2, l3_k3,
                     l4_k0, l4_k1, l4_k2, l4_k3,
                     l5_k0, l5_k1, l5_k2, l5_k3,
                     l6_k0, l6_k1, l6_k2, l6_k3,
                     l7_k0, l7_k1, l7_k2, l7_k3,
                     l8_k0, l8_k1, l8_k2, l8_k3,
                     l9_k0, l9_k1, l9_k2, l9_k3,
                     l10_k0, l10_k1, l10_k2, l10_k3,
                     s1_k0, s1_k1, s1_k2, s1_k3,
                     s2_k0, s2_k1, s2_k2, s2_k3,
                     s3_k0, s3_k1, s3_k2, s3_k3,
                     s4_k0, s4_k1, s4_k2, s4_k3,
                     s5_k0, s5_k1, s5_k2, s5_k3,
                     s6_k0, s6_k1, s6_k2, s6_k3,
                     s7_k0, s7_k1, s7_k2, s7_k3,
                     s8_k0, s8_k1, s8_k2, s8_k3,
                     s9_k0, s9_k1, s9_k2, s9_k3,
                     s10_k0, s10_k1, s10_k2, s10_k3,
                     r1_sboxk0, r1_sboxk1, r1_sboxk2, r1_sboxk3,
                     r2_sboxk0, r2_sboxk1, r2_sboxk2, r2_sboxk3,
                     r3_sboxk0, r3_sboxk1, r3_sboxk2, r3_sboxk3,
                     r4_sboxk0, r4_sboxk1, r4_sboxk2, r4_sboxk3,
                     r5_sboxk0, r5_sboxk1, r5_sboxk2, r5_sboxk3,
                     r6_sboxk0, r6_sboxk1, r6_sboxk2, r6_sboxk3,
                     r7_sboxk0, r7_sboxk1, r7_sboxk2, r7_sboxk3,
                     r8_sboxk0, r8_sboxk1, r8_sboxk2, r8_sboxk3,
                     r9_sboxk0, r9_sboxk1, r9_sboxk2, r9_sboxk3,
                     r10_sboxk0, r10_sboxk1, r10_sboxk2, r10_sboxk3,
                     rcon1_k0, rcon2_k0, rcon3_k0, rcon4_k0, rcon5_k0,
                     rcon6_k0, rcon7_k0, rcon8_k0, rcon9_k0, rcon10_k0;
                     
          wire [7:0] r1_k0_w0, r1_k1_w1, r1_k2_w2, r1_k3_w3, r1_k4_w4, r1_k5_w5, r1_k6_w6, r1_k7_w7, r1_k8_w8, 
                     r1_k9_w9, r1_k10_w10, r1_k11_w11, r1_k12_w12, r1_k13_w13, r1_k14_w14, r1_k15_w15,
                     r2_k0_w0, r2_k1_w1, r2_k2_w2, r2_k3_w3, r2_k4_w4, r2_k5_w5, r2_k6_w6, r2_k7_w7,
                     r2_k8_w8, r2_k9_w9, r2_k10_w10, r2_k11_w11, r2_k12_w12, r2_k13_w13, r2_k14_w14, r2_k15_w15,
                     r3_k0_w0, r3_k1_w1, r3_k2_w2, r3_k3_w3, r3_k4_w4, r3_k5_w5, r3_k6_w6, r3_k7_w7,
                     r3_k8_w8, r3_k9_w9, r3_k10_w10, r3_k11_w11, r3_k12_w12, r3_k13_w13, r3_k14_w14, r3_k15_w15,
                     r4_k0_w0, r4_k1_w1, r4_k2_w2, r4_k3_w3, r4_k4_w4, r4_k5_w5, r4_k6_w6, r4_k7_w7,
                     r4_k8_w8, r4_k9_w9, r4_k10_w10, r4_k11_w11, r4_k12_w12, r4_k13_w13, r4_k14_w14, r4_k15_w15,
                     r5_k0_w0, r5_k1_w1, r5_k2_w2, r5_k3_w3, r5_k4_w4, r5_k5_w5, r5_k6_w6, r5_k7_w7,
                     r5_k8_w8, r5_k9_w9, r5_k10_w10, r5_k11_w11, r5_k12_w12, r5_k13_w13, r5_k14_w14, r5_k15_w15,
                     r6_k0_w0, r6_k1_w1, r6_k2_w2, r6_k3_w3, r6_k4_w4, r6_k5_w5, r6_k6_w6, r6_k7_w7,
                     r6_k8_w8, r6_k9_w9, r6_k10_w10, r6_k11_w11, r6_k12_w12, r6_k13_w13, r6_k14_w14, r6_k15_w15,
                     r7_k0_w0, r7_k1_w1, r7_k2_w2, r7_k3_w3, r7_k4_w4, r7_k5_w5, r7_k6_w6, r7_k7_w7,
                     r7_k8_w8, r7_k9_w9, r7_k10_w10, r7_k11_w11, r7_k12_w12, r7_k13_w13, r7_k14_w14, r7_k15_w15,
                     r8_k0_w0, r8_k1_w1, r8_k2_w2, r8_k3_w3, r8_k4_w4, r8_k5_w5, r8_k6_w6, r8_k7_w7,
                     r8_k8_w8, r8_k9_w9, r8_k10_w10, r8_k11_w11, r8_k12_w12, r8_k13_w13, r8_k14_w14, r8_k15_w15,
                     r9_k0_w0, r9_k1_w1, r9_k2_w2, r9_k3_w3, r9_k4_w4, r9_k5_w5, r9_k6_w6, r9_k7_w7,
                     r9_k8_w8, r9_k9_w9, r9_k10_w10, r9_k11_w11, r9_k12_w12, r9_k13_w13, r9_k14_w14, r9_k15_w15,
                     r10_k0_w0, r10_k1_w1, r10_k2_w2, r10_k3_w3, r10_k4_w4, r10_k5_w5, r10_k6_w6, r10_k7_w7,
                     r10_k8_w8, r10_k9_w9, r10_k10_w10, r10_k11_w11, r10_k12_w12, r10_k13_w13, r10_k14_w14, r10_k15_w15;
              
          
            // left shift:
              assign  l1_k0 = key13;
              assign  l1_k1 = key14;
              assign  l1_k2 = key15;
              assign  l1_k3 = key12;
                
             //sbox:
                sbox s1(r1_sboxk0,l1_k0);
                sbox s2(r1_sboxk1,l1_k1);
                sbox s3(r1_sboxk2,l1_k2);
                sbox s4(r1_sboxk3,l1_k3);
                
                assign s1_k0 = r1_sboxk0;
                assign s1_k1 = r1_sboxk1;
                assign s1_k2 = r1_sboxk2;
                assign s1_k3 = r1_sboxk3;
                
              //rcon xor:
                 assign rcon1_k0 = s1_k0 ^ rcon_1;
                 
                     //w4:
                     assign  r1_k0_w0 = key0 ^ rcon1_k0;
                     assign  r1_k1_w1 = key1 ^ s1_k1;
                     assign  r1_k2_w2 = key2 ^ s1_k2;
                     assign  r1_k3_w3 = key3 ^ s1_k3;
                        
                     //w5:
                     assign  r1_k4_w4 = key4 ^ r1_k0_w0;
                     assign r1_k5_w5  = key5  ^ r1_k1_w1;
                     assign r1_k6_w6  = key6  ^ r1_k2_w2;
                     assign r1_k7_w7  = key7  ^ r1_k3_w3;
                     
                     //w6:
                     assign r1_k8_w8  = key8  ^ r1_k4_w4;
                     assign r1_k9_w9  = key9  ^ r1_k5_w5;
                     assign r1_k10_w10 = key10 ^ r1_k6_w6;
                     assign r1_k11_w11 = key11 ^ r1_k7_w7;
                     
                     //w7:
                     assign r1_k12_w12 = key12 ^ r1_k8_w8;
                     assign r1_k13_w13 = key13 ^ r1_k9_w9;
                     assign r1_k14_w14 = key14 ^ r1_k10_w10;
                     assign r1_k15_w15 = key15 ^ r1_k11_w11;
                     
                     
                     
                     
                     //w8:
                     // left shift:
                          assign  l2_k0 = r1_k13_w13;
                          assign  l2_k1 = r1_k14_w14;
                          assign  l2_k2 = r1_k15_w15;
                          assign  l2_k3 = r1_k12_w12;
                          
                       //sbox:
                        sbox s5(r2_sboxk0,l2_k0);
                        sbox s6(r2_sboxk1,l2_k1);
                        sbox s7(r2_sboxk2,l2_k2);
                        sbox s8(r2_sboxk3,l2_k3);
                        
                        assign s2_k0 = r2_sboxk0;
                        assign s2_k1 = r2_sboxk1;
                        assign s2_k2 = r2_sboxk2;
                        assign s2_k3 = r2_sboxk3;
                        
                         //rcon xor:
                       assign rcon2_k0 =  s2_k0 ^ rcon_2;
                       
                       assign  r2_k0_w0 = r1_k0_w0 ^ rcon2_k0;
                       assign  r2_k1_w1 = r1_k1_w1 ^ s2_k1;
                       assign  r2_k2_w2 = r1_k2_w2 ^ s2_k2;
                       assign  r2_k3_w3 = r1_k3_w3 ^ s2_k3;
                       
                        //w9:
                         assign  r2_k4_w4 = r2_k0_w0 ^ r1_k4_w4;
                         assign r2_k5_w5  = r2_k1_w1  ^ r1_k5_w5;
                         assign r2_k6_w6  = r2_k2_w2  ^ r1_k6_w6;
                         assign r2_k7_w7  = r2_k3_w3 ^ r1_k7_w7;
                         
                          //w10:
                         assign r2_k8_w8  =  r1_k8_w8 ^ r2_k4_w4;
                         assign r2_k9_w9  =  r1_k9_w9 ^ r2_k5_w5;
                         assign r2_k10_w10 = r1_k10_w10 ^ r2_k6_w6;
                         assign r2_k11_w11 =  r1_k11_w11^ r2_k7_w7;
                            
                          //w11:
                     assign r2_k12_w12 = r1_k12_w12 ^ r2_k8_w8;
                     assign r2_k13_w13 = r1_k13_w13 ^ r2_k9_w9;
                     assign r2_k14_w14 = r1_k14_w14 ^ r2_k10_w10;
                     assign r2_k15_w15 = r1_k15_w15 ^ r2_k11_w11;
                     
                     
                          //w12:
                            // left shift:
                          assign  l3_k0 = r2_k13_w13;
                          assign  l3_k1 = r2_k14_w14;
                          assign  l3_k2 = r2_k15_w15;
                          assign  l3_k3 = r2_k12_w12;
                          
                          //sbox:
                        sbox s9(r3_sboxk0,l3_k0);
                        sbox s10(r3_sboxk1,l3_k1);
                        sbox s11(r3_sboxk2,l3_k2);
                        sbox s12(r3_sboxk3,l3_k3);
                        
                         assign s3_k0 = r3_sboxk0;
                        assign s3_k1 = r3_sboxk1;
                        assign s3_k2 = r3_sboxk2;
                        assign s3_k3 = r3_sboxk3;
                        
                        //rcon xor:
                       assign rcon3_k0 =  s3_k0 ^ rcon_3;
                       
                       assign  r3_k0_w0 = r2_k0_w0 ^ rcon3_k0;
                       assign  r3_k1_w1 = r2_k1_w1 ^ s3_k1;
                       assign  r3_k2_w2 = r2_k2_w2 ^ s3_k2;
                       assign  r3_k3_w3 = r2_k3_w3 ^ s3_k3;
                       
                       
                       //w13:
                         assign  r3_k4_w4 = r3_k0_w0 ^ r2_k4_w4;
                         assign r3_k5_w5  = r3_k1_w1  ^ r2_k5_w5;
                         assign r3_k6_w6  = r3_k2_w2  ^ r2_k6_w6;
                         assign r3_k7_w7  = r3_k3_w3 ^ r2_k7_w7;
                         
                           //w14:
                         assign r3_k8_w8  =  r2_k8_w8 ^ r3_k4_w4;
                         assign r3_k9_w9  =  r2_k9_w9 ^ r3_k5_w5;
                         assign r3_k10_w10 = r2_k10_w10 ^ r3_k6_w6;
                         assign r3_k11_w11 =  r2_k11_w11^ r3_k7_w7;
                         
                          //w15:
                     assign r3_k12_w12 = r2_k12_w12 ^ r3_k8_w8;
                     assign r3_k13_w13 = r2_k13_w13 ^ r3_k9_w9;
                     assign r3_k14_w14 = r2_k14_w14 ^ r3_k10_w10;
                     assign r3_k15_w15 = r2_k15_w15 ^ r3_k11_w11;
                     
                     //round4:
                     //w16:
                            // left shift: of w15
                          assign  l4_k0 = r3_k13_w13;
                          assign  l4_k1 = r3_k14_w14;
                          assign  l4_k2 = r3_k15_w15;
                          assign  l4_k3 = r3_k12_w12;
                          
                          //sbox:
                        sbox s13(r4_sboxk0,l4_k0);
                        sbox s14(r4_sboxk1,l4_k1);
                        sbox s15(r4_sboxk2,l4_k2);
                        sbox s16(r4_sboxk3,l4_k3);
                        
                        assign s4_k0 = r4_sboxk0;
                        assign s4_k1 = r4_sboxk1;
                        assign s4_k2 = r4_sboxk2;
                        assign s4_k3 = r4_sboxk3;
                        
                        //rcon xor:
                       assign rcon4_k0 =  s4_k0 ^ rcon_4;
                       
                       assign  r4_k0_w0 = r3_k0_w0 ^ rcon4_k0;
                       assign  r4_k1_w1 = r3_k1_w1 ^ s4_k1;
                       assign  r4_k2_w2 = r3_k2_w2 ^ s4_k2;
                       assign  r4_k3_w3 = r3_k3_w3 ^ s4_k3;
                       
                       //w17:
                         assign  r4_k4_w4 = r4_k0_w0 ^ r3_k4_w4;
                         assign r4_k5_w5  = r4_k1_w1  ^ r3_k5_w5;
                         assign r4_k6_w6  = r4_k2_w2  ^ r3_k6_w6;
                         assign r4_k7_w7  = r4_k3_w3 ^ r3_k7_w7;
                         
                           //w18:
                         assign r4_k8_w8  =  r3_k8_w8 ^ r4_k4_w4;
                         assign r4_k9_w9  =  r3_k9_w9 ^ r4_k5_w5;
                         assign r4_k10_w10 = r3_k10_w10 ^ r4_k6_w6;
                         assign r4_k11_w11 =  r3_k11_w11^ r4_k7_w7;
                         
                          //w19:
                     assign r4_k12_w12 = r3_k12_w12 ^ r4_k8_w8;
                     assign r4_k13_w13 = r3_k13_w13 ^ r4_k9_w9;
                     assign r4_k14_w14 = r3_k14_w14 ^ r4_k10_w10;
                     assign r4_k15_w15 = r3_k15_w15 ^ r4_k11_w11;
                         
                         //round5:
                     //w20:
                            // left shift: of w19
                          assign  l5_k0 = r4_k13_w13;
                          assign  l5_k1 = r4_k14_w14;
                          assign  l5_k2 = r4_k15_w15;
                          assign  l5_k3 = r4_k12_w12;
                          //sbox:
                        sbox s17(r5_sboxk0,l5_k0);
                        sbox s18(r5_sboxk1,l5_k1);
                        sbox s19(r5_sboxk2,l5_k2);
                        sbox s20(r5_sboxk3,l5_k3);
                        
                        assign s5_k0 = r5_sboxk0;
                        assign s5_k1 = r5_sboxk1;
                        assign s5_k2 = r5_sboxk2;
                        assign s5_k3 = r5_sboxk3;
                        //rcon xor:
                       assign rcon5_k0 =  s5_k0 ^ rcon_5;
                       
                       assign  r5_k0_w0 = r4_k0_w0 ^ rcon5_k0;
                       assign  r5_k1_w1 = r4_k1_w1 ^ s5_k1;
                       assign  r5_k2_w2 = r4_k2_w2 ^ s5_k2;
                       assign  r5_k3_w3 = r4_k3_w3 ^ s5_k3;
                        
                        //w21:
                         assign  r5_k4_w4 = r5_k0_w0 ^ r4_k4_w4;
                         assign r5_k5_w5  = r5_k1_w1  ^ r4_k5_w5;
                         assign r5_k6_w6  = r5_k2_w2  ^ r4_k6_w6;
                         assign r5_k7_w7  = r5_k3_w3 ^ r4_k7_w7;
                         
                           //w22:
                         assign r5_k8_w8  =  r4_k8_w8 ^ r5_k4_w4;
                         assign r5_k9_w9  =  r4_k9_w9 ^ r5_k5_w5;
                         assign r5_k10_w10 = r4_k10_w10 ^ r5_k6_w6;
                         assign r5_k11_w11 =  r4_k11_w11^ r5_k7_w7;
                         
                          //w23:
                     assign r5_k12_w12 = r4_k12_w12 ^ r5_k8_w8;
                     assign r5_k13_w13 = r4_k13_w13 ^ r5_k9_w9;
                     assign r5_k14_w14 = r4_k14_w14 ^ r5_k10_w10;
                     assign r5_k15_w15 = r4_k15_w15 ^ r5_k11_w11;
                     
                     //round6:
                     //w24:
                            // left shift: of w23
                          assign  l6_k0 = r5_k13_w13;
                          assign  l6_k1 = r5_k14_w14;
                          assign  l6_k2 = r5_k15_w15;
                          assign  l6_k3 = r5_k12_w12;
                          //sbox:
                        sbox s21(r6_sboxk0,l6_k0);
                        sbox s22(r6_sboxk1,l6_k1);
                        sbox s23(r6_sboxk2,l6_k2);
                        sbox s24(r6_sboxk3,l6_k3);
                        
                        assign s6_k0 = r6_sboxk0;
                        assign s6_k1 = r6_sboxk1;
                        assign s6_k2 = r6_sboxk2;
                        assign s6_k3 = r6_sboxk3;
                        //rcon xor:
                       assign rcon6_k0 =  s6_k0 ^ rcon_6;
                       
                       assign  r6_k0_w0 = r5_k0_w0 ^ rcon6_k0;
                       assign  r6_k1_w1 = r5_k1_w1 ^ s6_k1;
                       assign  r6_k2_w2 = r5_k2_w2 ^ s6_k2;
                       assign  r6_k3_w3 = r5_k3_w3 ^ s6_k3;
                       
                       //w25:
                         assign  r6_k4_w4 = r6_k0_w0 ^ r5_k4_w4;
                         assign r6_k5_w5  = r6_k1_w1  ^ r5_k5_w5;
                         assign r6_k6_w6  = r6_k2_w2  ^ r5_k6_w6;
                         assign r6_k7_w7  = r6_k3_w3 ^ r5_k7_w7;
                         
                           //w26:
                         assign r6_k8_w8  =  r5_k8_w8 ^ r6_k4_w4;
                         assign r6_k9_w9  =  r5_k9_w9 ^ r6_k5_w5;
                         assign r6_k10_w10 = r5_k10_w10 ^ r6_k6_w6;
                         assign r6_k11_w11 =  r5_k11_w11^ r6_k7_w7;
                         
                          //w27:
                     assign r6_k12_w12 = r5_k12_w12 ^ r6_k8_w8;
                     assign r6_k13_w13 = r5_k13_w13 ^ r6_k9_w9;
                     assign r6_k14_w14 = r5_k14_w14 ^ r6_k10_w10;
                     assign r6_k15_w15 = r5_k15_w15 ^ r6_k11_w11;
                     //round7:
                     //w28:
                            // left shift: of w27
                          assign  l7_k0 = r6_k13_w13;
                          assign  l7_k1 = r6_k14_w14;
                          assign  l7_k2 = r6_k15_w15;
                          assign  l7_k3 = r6_k12_w12;
                          //sbox:
                        sbox s25(r7_sboxk0,l7_k0);
                        sbox s26(r7_sboxk1,l7_k1);
                        sbox s27(r7_sboxk2,l7_k2);
                        sbox s28(r7_sboxk3,l7_k3);
                        
                        assign s7_k0 = r7_sboxk0;
                        assign s7_k1 = r7_sboxk1;
                        assign s7_k2 = r7_sboxk2;
                        assign s7_k3 = r7_sboxk3;
                        //rcon xor:
                       assign rcon7_k0 =  s7_k0 ^ rcon_7;
                       //w28:
                       assign  r7_k0_w0 = r6_k0_w0 ^ rcon7_k0;
                       assign  r7_k1_w1 = r6_k1_w1 ^ s7_k1;
                       assign  r7_k2_w2 = r6_k2_w2 ^ s7_k2;
                       assign  r7_k3_w3 = r6_k3_w3 ^ s7_k3;
                       //w29:
                         assign r7_k4_w4  = r7_k0_w0 ^ r6_k4_w4;
                         assign r7_k5_w5  = r7_k1_w1  ^ r6_k5_w5;
                         assign r7_k6_w6  = r7_k2_w2  ^ r6_k6_w6;
                         assign r7_k7_w7  = r7_k3_w3 ^ r6_k7_w7;
                          //w30:
                         assign r7_k8_w8  =  r6_k8_w8 ^ r7_k4_w4;
                         assign r7_k9_w9  =  r6_k9_w9 ^ r7_k5_w5;
                         assign r7_k10_w10 = r6_k10_w10 ^ r7_k6_w6;
                         assign r7_k11_w11 =  r6_k11_w11^ r7_k7_w7;
                         //w31:
                     assign r7_k12_w12 = r6_k12_w12 ^ r7_k8_w8;
                     assign r7_k13_w13 = r6_k13_w13 ^ r7_k9_w9;
                     assign r7_k14_w14 = r6_k14_w14 ^ r7_k10_w10;
                     assign r7_k15_w15 = r6_k15_w15 ^ r7_k11_w11;
                     //round8:
                     //w31:
                            // left shift: of w31
                          assign  l8_k0 = r7_k13_w13;
                          assign  l8_k1 = r7_k14_w14;
                          assign  l8_k2 = r7_k15_w15;
                          assign  l8_k3 = r7_k12_w12;
                          //sbox:
                        sbox s29(r8_sboxk0,l8_k0);
                        sbox s30(r8_sboxk1,l8_k1);
                        sbox s31(r8_sboxk2,l8_k2);
                        sbox s32(r8_sboxk3,l8_k3);
                        
                        assign s8_k0 = r8_sboxk0;
                        assign s8_k1 = r8_sboxk1;
                        assign s8_k2 = r8_sboxk2;
                        assign s8_k3 = r8_sboxk3;
                        //rcon xor:
                       assign rcon8_k0 =  s8_k0 ^ rcon_8;
                       //w32:
                       assign  r8_k0_w0 = r7_k0_w0 ^ rcon8_k0;
                       assign  r8_k1_w1 = r7_k1_w1 ^ s8_k1;
                       assign  r8_k2_w2 = r7_k2_w2 ^ s8_k2;
                       assign  r8_k3_w3 = r7_k3_w3 ^ s8_k3;
                       //w33:
                         assign r8_k4_w4  = r8_k0_w0 ^ r7_k4_w4;
                         assign r8_k5_w5  = r8_k1_w1  ^ r7_k5_w5;
                         assign r8_k6_w6  = r8_k2_w2  ^ r7_k6_w6;
                         assign r8_k7_w7  = r8_k3_w3 ^ r7_k7_w7;
                          //w34:
                         assign r8_k8_w8  =  r7_k8_w8 ^ r8_k4_w4;
                         assign r8_k9_w9  =  r7_k9_w9 ^ r8_k5_w5;
                         assign r8_k10_w10 = r7_k10_w10 ^ r8_k6_w6;
                         assign r8_k11_w11 =  r7_k11_w11^ r8_k7_w7;
                         //w35:
                     assign r8_k12_w12 = r7_k12_w12 ^ r8_k8_w8;
                     assign r8_k13_w13 = r7_k13_w13 ^ r8_k9_w9;
                     assign r8_k14_w14 = r7_k14_w14 ^ r8_k10_w10;
                     assign r8_k15_w15 = r7_k15_w15 ^ r8_k11_w11;
                     //round9:
                     //w36:
                            // left shift: of w35
                          assign  l9_k0 = r8_k13_w13;
                          assign  l9_k1 = r8_k14_w14;
                          assign  l9_k2 = r8_k15_w15;
                          assign  l9_k3 = r8_k12_w12;
                          //sbox:
                        sbox s33(r9_sboxk0,l9_k0);
                        sbox s34(r9_sboxk1,l9_k1);
                        sbox s35(r9_sboxk2,l9_k2);
                        sbox s36(r9_sboxk3,l9_k3);
                        
                        assign s9_k0 = r9_sboxk0;
                        assign s9_k1 = r9_sboxk1;
                        assign s9_k2 = r9_sboxk2;
                        assign s9_k3 = r9_sboxk3;
                        //rcon xor:
                       assign rcon9_k0 =  s9_k0 ^ rcon_9;
                       //w36:
                       assign  r9_k0_w0 = r8_k0_w0 ^ rcon9_k0;
                       assign  r9_k1_w1 = r8_k1_w1 ^ s9_k1;
                       assign  r9_k2_w2 = r8_k2_w2 ^ s9_k2;
                       assign  r9_k3_w3 = r8_k3_w3 ^ s9_k3;
                       //w37:
                         assign r9_k4_w4  = r9_k0_w0 ^ r8_k4_w4;
                         assign r9_k5_w5  = r9_k1_w1  ^ r8_k5_w5;
                         assign r9_k6_w6  = r9_k2_w2  ^ r8_k6_w6;
                         assign r9_k7_w7  = r9_k3_w3 ^ r8_k7_w7;
                         //w38:
                         assign r9_k8_w8  =  r8_k8_w8 ^ r9_k4_w4;
                         assign r9_k9_w9  =  r8_k9_w9 ^ r9_k5_w5;
                         assign r9_k10_w10 = r8_k10_w10 ^ r9_k6_w6;
                         assign r9_k11_w11 =  r8_k11_w11^ r9_k7_w7;
                         //w39:
                     assign r9_k12_w12 = r8_k12_w12 ^ r9_k8_w8;
                     assign r9_k13_w13 = r8_k13_w13 ^ r9_k9_w9;
                     assign r9_k14_w14 = r8_k14_w14 ^ r9_k10_w10;
                     assign r9_k15_w15 = r8_k15_w15 ^ r9_k11_w11;
                     //round10:
                     //w40:
                            // left shift: of w39
                          assign  l10_k0 = r9_k13_w13;
                          assign  l10_k1 = r9_k14_w14;
                          assign  l10_k2 = r9_k15_w15;
                          assign  l10_k3 = r9_k12_w12;
                          //sbox:
                        sbox s37(r10_sboxk0,l10_k0);
                        sbox s38(r10_sboxk1,l10_k1);
                        sbox s39(r10_sboxk2,l10_k2);
                        sbox s40(r10_sboxk3,l10_k3);
                        
                        assign s10_k0 = r10_sboxk0;
                        assign s10_k1 = r10_sboxk1;
                        assign s10_k2 = r10_sboxk2;
                        assign s10_k3 = r10_sboxk3;
                        //rcon xor:
                       assign rcon10_k0 =  s10_k0 ^ rcon_10;
                       //w40:
                       assign  r10_k0_w0 = r9_k0_w0 ^ rcon10_k0;
                       assign  r10_k1_w1 = r9_k1_w1 ^ s10_k1;
                       assign  r10_k2_w2 = r9_k2_w2 ^ s10_k2;
                       assign  r10_k3_w3 = r9_k3_w3 ^ s10_k3;
                       //w41:
                         assign r10_k4_w4  = r10_k0_w0 ^ r9_k4_w4;
                         assign r10_k5_w5  = r10_k1_w1  ^ r9_k5_w5;
                         assign r10_k6_w6  = r10_k2_w2  ^ r9_k6_w6;
                         assign r10_k7_w7  = r10_k3_w3 ^ r9_k7_w7;
                         //w42:
                         assign r10_k8_w8  =  r9_k8_w8 ^ r10_k4_w4;
                         assign r10_k9_w9  =  r9_k9_w9 ^ r10_k5_w5;
                         assign r10_k10_w10 = r9_k10_w10 ^ r10_k6_w6;
                         assign r10_k11_w11 =  r9_k11_w11^ r10_k7_w7;
                         //w43:
                     assign r10_k12_w12 = r9_k12_w12 ^ r10_k8_w8;
                     assign r10_k13_w13 = r9_k13_w13 ^ r10_k9_w9;
                     assign r10_k14_w14 = r9_k14_w14 ^ r10_k10_w10;
                     assign r10_k15_w15 = r9_k15_w15 ^ r10_k11_w11;
                    
                         always@(posedge clk or posedge clr)begin
                        if(clr)begin
                            r1_k0  <= 8'h00;  r1_k1  <= 8'h00;  r1_k2  <= 8'h00;  r1_k3  <= 8'h00;
                            r1_k4  <= 8'h00;  r1_k5  <= 8'h00;  r1_k6  <= 8'h00;  r1_k7  <= 8'h00;
                            r1_k8  <= 8'h00;  r1_k9  <= 8'h00;  r1_k10 <= 8'h00;  r1_k11 <= 8'h00;
                            r1_k12 <= 8'h00;  r1_k13 <= 8'h00;  r1_k14 <= 8'h00;  r1_k15 <= 8'h00;

                            r2_k0  <= 8'h00;  r2_k1  <= 8'h00;  r2_k2  <= 8'h00;  r2_k3  <= 8'h00;
                            r2_k4  <= 8'h00;  r2_k5  <= 8'h00;  r2_k6  <= 8'h00;  r2_k7  <= 8'h00;
                            r2_k8  <= 8'h00;  r2_k9  <= 8'h00;  r2_k10 <= 8'h00;  r2_k11 <= 8'h00;
                            r2_k12 <= 8'h00;  r2_k13 <= 8'h00;  r2_k14 <= 8'h00;  r2_k15 <= 8'h00;

                            r3_k0  <= 8'h00;  r3_k1  <= 8'h00;  r3_k2  <= 8'h00;  r3_k3  <= 8'h00;
                            r3_k4  <= 8'h00;  r3_k5  <= 8'h00;  r3_k6  <= 8'h00;  r3_k7  <= 8'h00;
                            r3_k8  <= 8'h00;  r3_k9  <= 8'h00;  r3_k10 <= 8'h00;  r3_k11 <= 8'h00;
                            r3_k12 <= 8'h00;  r3_k13 <= 8'h00;  r3_k14 <= 8'h00;  r3_k15 <= 8'h00;
                    
                            r4_k0  <= 8'h00;  r4_k1  <= 8'h00;  r4_k2  <= 8'h00;  r4_k3  <= 8'h00;
                            r4_k4  <= 8'h00;  r4_k5  <= 8'h00;  r4_k6  <= 8'h00;  r4_k7  <= 8'h00;
                            r4_k8  <= 8'h00;  r4_k9  <= 8'h00;  r4_k10 <= 8'h00;  r4_k11 <= 8'h00;
                            r4_k12 <= 8'h00;  r4_k13 <= 8'h00;  r4_k14 <= 8'h00;  r4_k15 <= 8'h00;
                            
                            r5_k0  <= 8'h00;  r5_k1  <= 8'h00;  r5_k2  <= 8'h00;  r5_k3  <= 8'h00;
                            r5_k4  <= 8'h00;  r5_k5  <= 8'h00;  r5_k6  <= 8'h00;  r5_k7  <= 8'h00;
                            r5_k8  <= 8'h00;  r5_k9  <= 8'h00;  r5_k10 <= 8'h00;  r5_k11 <= 8'h00;
                            r5_k12 <= 8'h00;  r5_k13 <= 8'h00;  r5_k14 <= 8'h00;  r5_k15 <= 8'h00;
                            
                            r6_k0  <= 8'h00;  r6_k1  <= 8'h00;  r6_k2  <= 8'h00;  r6_k3  <= 8'h00;
                            r6_k4  <= 8'h00;  r6_k5  <= 8'h00;  r6_k6  <= 8'h00;  r6_k7  <= 8'h00;
                            r6_k8  <= 8'h00;  r6_k9  <= 8'h00;  r6_k10 <= 8'h00;  r6_k11 <= 8'h00;
                            r6_k12 <= 8'h00;  r6_k13 <= 8'h00;  r6_k14 <= 8'h00;  r6_k15 <= 8'h00;
                            
                            r7_k0  <= 8'h00;  r7_k1  <= 8'h00;  r7_k2  <= 8'h00;  r7_k3  <= 8'h00;
                            r7_k4  <= 8'h00;  r7_k5  <= 8'h00;  r7_k6  <= 8'h00;  r7_k7  <= 8'h00;
                            r7_k8  <= 8'h00;  r7_k9  <= 8'h00;  r7_k10 <= 8'h00;  r7_k11 <= 8'h00;
                            r7_k12 <= 8'h00;  r7_k13 <= 8'h00;  r7_k14 <= 8'h00;  r7_k15 <= 8'h00;
                            
                            r8_k0  <= 8'h00;  r8_k1  <= 8'h00;  r8_k2  <= 8'h00;  r8_k3  <= 8'h00;
                            r8_k4  <= 8'h00;  r8_k5  <= 8'h00;  r8_k6  <= 8'h00;  r8_k7  <= 8'h00;
                            r8_k8  <= 8'h00;  r8_k9  <= 8'h00;  r8_k10 <= 8'h00;  r8_k11 <= 8'h00;
                            r8_k12 <= 8'h00;  r8_k13 <= 8'h00;  r8_k14 <= 8'h00;  r8_k15 <= 8'h00;
                            
                            r9_k0  <= 8'h00;  r9_k1  <= 8'h00;  r9_k2  <= 8'h00;  r9_k3  <= 8'h00;
                            r9_k4  <= 8'h00;  r9_k5  <= 8'h00;  r9_k6  <= 8'h00;  r9_k7  <= 8'h00;
                            r9_k8  <= 8'h00;  r9_k9  <= 8'h00;  r9_k10 <= 8'h00;  r9_k11 <= 8'h00;
                            r9_k12 <= 8'h00;  r9_k13 <= 8'h00;  r9_k14 <= 8'h00;  r9_k15 <= 8'h00;
            
                            r10_k0  <= 8'h00;  r10_k1  <= 8'h00;  r10_k2  <= 8'h00;  r10_k3  <= 8'h00;
                            r10_k4  <= 8'h00;  r10_k5  <= 8'h00;  r10_k6  <= 8'h00;  r10_k7  <= 8'h00;
                            r10_k8  <= 8'h00;  r10_k9  <= 8'h00;  r10_k10 <= 8'h00;  r10_k11 <= 8'h00;
                            r10_k12 <= 8'h00;  r10_k13 <= 8'h00;  r10_k14 <= 8'h00;  r10_k15 <= 8'h00;
                            end
                        else begin
                            r1_k0  <= r1_k0_w0;   r1_k1  <= r1_k1_w1;   r1_k2  <= r1_k2_w2;   r1_k3  <= r1_k3_w3;
                            r1_k4  <= r1_k4_w4;   r1_k5  <= r1_k5_w5;   r1_k6  <= r1_k6_w6;   r1_k7  <= r1_k7_w7;
                            r1_k8  <= r1_k8_w8;   r1_k9  <= r1_k9_w9;   r1_k10 <= r1_k10_w10; r1_k11 <= r1_k11_w11;
                            r1_k12 <= r1_k12_w12; r1_k13 <= r1_k13_w13; r1_k14 <= r1_k14_w14; r1_k15 <= r1_k15_w15;
                            
                            r2_k0  <= r2_k0_w0;   r2_k1  <= r2_k1_w1;   r2_k2  <= r2_k2_w2;   r2_k3  <= r2_k3_w3;
                            r2_k4  <= r2_k4_w4;   r2_k5  <= r2_k5_w5;   r2_k6  <= r2_k6_w6;   r2_k7  <= r2_k7_w7;
                            r2_k8  <= r2_k8_w8;   r2_k9  <= r2_k9_w9;   r2_k10 <= r2_k10_w10; r2_k11 <= r2_k11_w11;
                            r2_k12 <= r2_k12_w12; r2_k13 <= r2_k13_w13; r2_k14 <= r2_k14_w14; r2_k15 <= r2_k15_w15;
                            
                            r3_k0  <= r3_k0_w0;   r3_k1  <= r3_k1_w1;   r3_k2  <= r3_k2_w2;   r3_k3  <= r3_k3_w3;
                            r3_k4  <= r3_k4_w4;   r3_k5  <= r3_k5_w5;   r3_k6  <= r3_k6_w6;   r3_k7  <= r3_k7_w7;
                            r3_k8  <= r3_k8_w8;   r3_k9  <= r3_k9_w9;   r3_k10 <= r3_k10_w10; r3_k11 <= r3_k11_w11;
                            r3_k12 <= r3_k12_w12; r3_k13 <= r3_k13_w13; r3_k14 <= r3_k14_w14; r3_k15 <= r3_k15_w15;
                            
                            r4_k0  <= r4_k0_w0;   r4_k1  <= r4_k1_w1;   r4_k2  <= r4_k2_w2;   r4_k3  <= r4_k3_w3;
                            r4_k4  <= r4_k4_w4;   r4_k5  <= r4_k5_w5;   r4_k6  <= r4_k6_w6;   r4_k7  <= r4_k7_w7;
                            r4_k8  <= r4_k8_w8;   r4_k9  <= r4_k9_w9;   r4_k10 <= r4_k10_w10; r4_k11 <= r4_k11_w11;
                            r4_k12 <= r4_k12_w12; r4_k13 <= r4_k13_w13; r4_k14 <= r4_k14_w14; r4_k15 <= r4_k15_w15;
                            
                            r5_k0  <= r5_k0_w0;   r5_k1  <= r5_k1_w1;   r5_k2  <= r5_k2_w2;   r5_k3  <= r5_k3_w3;
                            r5_k4  <= r5_k4_w4;   r5_k5  <= r5_k5_w5;   r5_k6  <= r5_k6_w6;   r5_k7  <= r5_k7_w7;
                            r5_k8  <= r5_k8_w8;   r5_k9  <= r5_k9_w9;   r5_k10 <= r5_k10_w10; r5_k11 <= r5_k11_w11;
                            r5_k12 <= r5_k12_w12; r5_k13 <= r5_k13_w13; r5_k14 <= r5_k14_w14; r5_k15 <= r5_k15_w15;
                            
                            r6_k0  <= r6_k0_w0;   r6_k1  <= r6_k1_w1;   r6_k2  <= r6_k2_w2;   r6_k3  <= r6_k3_w3;
                            r6_k4  <= r6_k4_w4;   r6_k5  <= r6_k5_w5;   r6_k6  <= r6_k6_w6;   r6_k7  <= r6_k7_w7;
                            r6_k8  <= r6_k8_w8;   r6_k9  <= r6_k9_w9;   r6_k10 <= r6_k10_w10; r6_k11 <= r6_k11_w11;
                            r6_k12 <= r6_k12_w12; r6_k13 <= r6_k13_w13; r6_k14 <= r6_k14_w14; r6_k15 <= r6_k15_w15;
                            
                            r7_k0  <= r7_k0_w0;   r7_k1  <= r7_k1_w1;   r7_k2  <= r7_k2_w2;   r7_k3  <= r7_k3_w3;
                            r7_k4  <= r7_k4_w4;   r7_k5  <= r7_k5_w5;   r7_k6  <= r7_k6_w6;   r7_k7  <= r7_k7_w7;
                            r7_k8  <= r7_k8_w8;   r7_k9  <= r7_k9_w9;   r7_k10 <= r7_k10_w10; r7_k11 <= r7_k11_w11;
                            r7_k12 <= r7_k12_w12; r7_k13 <= r7_k13_w13; r7_k14 <= r7_k14_w14; r7_k15 <= r7_k15_w15;
                            
                            r8_k0  <= r8_k0_w0;   r8_k1  <= r8_k1_w1;   r8_k2  <= r8_k2_w2;   r8_k3  <= r8_k3_w3;
                            r8_k4  <= r8_k4_w4;   r8_k5  <= r8_k5_w5;   r8_k6  <= r8_k6_w6;   r8_k7  <= r8_k7_w7;
                            r8_k8  <= r8_k8_w8;   r8_k9  <= r8_k9_w9;   r8_k10 <= r8_k10_w10; r8_k11 <= r8_k11_w11;
                            r8_k12 <= r8_k12_w12; r8_k13 <= r8_k13_w13; r8_k14 <= r8_k14_w14; r8_k15 <= r8_k15_w15;
                            
                            r9_k0  <= r9_k0_w0;   r9_k1  <= r9_k1_w1;   r9_k2  <= r9_k2_w2;   r9_k3  <= r9_k3_w3;
                            r9_k4  <= r9_k4_w4;   r9_k5  <= r9_k5_w5;   r9_k6  <= r9_k6_w6;   r9_k7  <= r9_k7_w7;
                            r9_k8  <= r9_k8_w8;   r9_k9  <= r9_k9_w9;   r9_k10 <= r9_k10_w10; r9_k11 <= r9_k11_w11;
                            r9_k12 <= r9_k12_w12; r9_k13 <= r9_k13_w13; r9_k14 <= r9_k14_w14; r9_k15 <= r9_k15_w15;
                    
                            r10_k0  <= r10_k0_w0;   r10_k1  <= r10_k1_w1;   r10_k2  <= r10_k2_w2;   r10_k3  <= r10_k3_w3;
                            r10_k4  <= r10_k4_w4;   r10_k5  <= r10_k5_w5;   r10_k6  <= r10_k6_w6;   r10_k7  <= r10_k7_w7;
                            r10_k8  <= r10_k8_w8;   r10_k9  <= r10_k9_w9;   r10_k10 <= r10_k10_w10; r10_k11 <= r10_k11_w11;
                            r10_k12 <= r10_k12_w12; r10_k13 <= r10_k13_w13; r10_k14 <= r10_k14_w14; r10_k15 <= r10_k15_w15;
                        end
                     end
endmodule
