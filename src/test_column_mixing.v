module test_column_mixing(out,in,clk,clr);
       input clk,clr;
       input [127:0]in;
       output reg[127:0]out;
       
       wire [7:0]c0_0,c0_1,c0_2,c0_3,
                   c1_0,c1_1,c1_2,c1_3,
                   c2_0,c2_1,c2_2,c2_3,
                   c3_0,c3_1,c3_2,c3_3;
        
                      
        wire [7:0]r0_0,r0_1,r0_2,r0_3,
                  r1_0,r1_1,r1_2,r1_3,
                  r2_0,r2_1,r2_2,r2_3,
                  r3_0,r3_1,r3_2,r3_3;
                  
assign r0_0 = in[127:120];
assign r1_0 = in[119:112];
assign r2_0 = in[111:104];
assign r3_0 = in[103:96];
assign r0_1 = in[95:88];
assign r1_1 = in[87:80];
assign r2_1 = in[79:72];
assign r3_1 = in[71:64];
assign r0_2 = in[63:56];
assign r1_2 = in[55:48];
assign r2_2 = in[47:40];
assign r3_2 = in[39:32];
assign r0_3 = in[31:24];
assign r1_3 = in[23:16];
assign r2_3 = in[15:8];
assign r3_3 = in[7:0];
                 
        
          
          //column0:       
         wire [7:0]r0_0_2, r1_0_3, 
                   r1_0_2, r2_0_3,
                   r2_0_2, r3_0_3,
                   r0_0_3, r3_0_2;
          
          multiply_2 n1(r0_0_2,r0_0);
          multiply_3 n2(r1_0_3, r1_0);
          multiply_2 n3(r1_0_2,r1_0);
          multiply_3 n4(r2_0_3,r2_0);
          multiply_2 n5(r2_0_2,r2_0);
          multiply_3 n6(r3_0_3,r3_0);
          multiply_3 n7(r0_0_3,r0_0);
          multiply_2 n8(r3_0_2,r3_0);
          
          assign c0_0 = r0_0_2 ^ r1_0_3 ^ r2_0 ^ r3_0;
          assign c1_0 = r1_0_2 ^ r2_0_3 ^ r0_0 ^ r3_0;
          assign c2_0 = r2_0_2 ^ r3_0_3 ^ r1_0 ^ r0_0;
          assign c3_0 = r0_0_3 ^ r3_0_2 ^ r1_0 ^ r2_0;
          
          //coulmn1:
          wire [7:0] r0_1_2, r1_1_3,
                     r1_1_2, r2_1_3,
                     r2_1_2, r3_1_3,
                     r0_1_3, r3_1_2;
                     
           multiply_2 n9(r0_1_2,r0_1);
           multiply_3 n10(r1_1_3,r1_1);
           multiply_2 n11(r1_1_2,r1_1);
           multiply_3 n12(r2_1_3,r2_1);
           multiply_2 n13(r2_1_2,r2_1);
           multiply_3 n14(r3_1_3,r3_1);
           multiply_2 n15(r3_1_2,r3_1);
           multiply_3 n16(r0_1_3,r0_1);
           
           assign c0_1 = r0_1_2 ^ r1_1_3 ^ r2_1 ^ r3_1;
           assign c1_1 = r1_1_2 ^ r2_1_3 ^ r0_1 ^ r3_1;
           assign c2_1 = r2_1_2 ^ r3_1_3 ^ r0_1 ^ r1_1;
           assign c3_1 = r0_1_3 ^ r3_1_2 ^ r1_1 ^ r2_1;
           
           //column2:
           
           wire [7:0] r0_2_2, r1_2_3,
                      r1_2_2, r2_2_3,
                      r2_2_2, r3_2_3,
                      r0_2_3, r3_2_2;
                     
           multiply_2 n17(r0_2_2,r0_2);
           multiply_3 n18(r1_2_3,r1_2);
           multiply_2 n19(r1_2_2,r1_2);
           multiply_3 n20(r2_2_3,r2_2);
           multiply_2 n21(r2_2_2,r2_2);
           multiply_3 n22(r3_2_3,r3_2);
           multiply_2 n23(r3_2_2,r3_2);
           multiply_3 n24(r0_2_3,r0_2);
           
           assign c0_2 = r0_2_2 ^ r1_2_3 ^ r2_2 ^ r3_2;
           assign c1_2 = r1_2_2 ^ r2_2_3 ^ r0_2 ^ r3_2;
           assign c2_2 = r2_2_2 ^ r3_2_3 ^ r0_2 ^ r1_2;
           assign c3_2 = r0_2_3 ^ r3_2_2 ^ r1_2 ^ r2_2;
           
           //column3:
           
           wire [7:0] r0_3_2, r1_3_3,
                     r1_3_2, r2_3_3,
                     r2_3_2, r3_3_3,
                     r0_3_3, r3_3_2;
                     
           multiply_2 n25(r0_3_2,r0_3);
           multiply_3 n26(r1_3_3,r1_3);
           multiply_2 n27(r1_3_2,r1_3);
           multiply_3 n28(r2_3_3,r2_3);
           multiply_2 n29(r2_3_2,r2_3);
           multiply_3 n30(r3_3_3,r3_3);
           multiply_2 n31(r3_3_2,r3_3);
           multiply_3 n32(r0_3_3,r0_3);
           
           assign c0_3 = r0_3_2 ^ r1_3_3 ^ r2_3 ^ r3_3;
           assign c1_3 = r1_3_2 ^ r2_3_3 ^ r0_3 ^ r3_3;
           assign c2_3 = r2_3_2 ^ r3_3_3 ^ r0_3 ^ r1_3;
           assign c3_3 = r0_3_3 ^ r3_3_2 ^ r1_3 ^ r2_3;
           
       always@(posedge clk or posedge clr)begin
        if(clr)
            out <= 128'h00;
        else
            out <= {c0_0,c1_0,c2_0,c3_0,c0_1,c1_1,c2_1,c3_1,c0_2,c1_2,c2_2,c3_2,c0_3,c1_3,c2_3,c3_3};
       end
endmodule
