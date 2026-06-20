module inv_column_mix(out,in,clk,clr);
       input clk,clr;
       input [127:0]in;
       output reg[127:0]out;
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

wire [7:0]c0_0,c0_1,c0_2,c0_3,
          c1_0,c1_1,c1_2,c1_3,
          c2_0,c2_1,c2_2,c2_3,
          c3_0,c3_1,c3_2,c3_3;
//column0:
wire[7:0]r0_0_0e,r1_0_0b,r2_0_0d,r3_0_09,
         r0_0_09,r1_0_0e,r2_0_0b,r3_0_0d,
         r0_0_0d,r1_0_09,r2_0_0e,r3_0_0b,
         r0_0_0b,r1_0_0d,r2_0_09,r3_0_0e;
         
 mul_0e n1 (r0_0_0e,r0_0);
 mul_0b n2 (r1_0_0b,r1_0);
 mul_0d n3 (r2_0_0d,r2_0);
 mul_09 n4 (r3_0_09,r3_0);
 
 mul_09 n5 (r0_0_09,r0_0);
 mul_0e n6 (r1_0_0e,r1_0);
 mul_0b n7 (r2_0_0b,r2_0);
 mul_0d n8 (r3_0_0d,r3_0);
 
 mul_0d n9 (r0_0_0d,r0_0);
 mul_09 n10 (r1_0_09,r1_0);
 mul_0e n11 (r2_0_0e,r2_0);
  mul_0b n12 (r3_0_0b,r3_0);
  
 mul_0b n13 (r0_0_0b,r0_0);
 mul_0d n14 (r1_0_0d,r1_0);
 mul_09 n15 (r2_0_09,r2_0);
 mul_0e n16 (r3_0_0e,r3_0);
 
 assign c0_0 = r0_0_0e^r1_0_0b^r2_0_0d^r3_0_09;
 assign c1_0 = r0_0_09^r1_0_0e^r2_0_0b^r3_0_0d;
 assign c2_0 = r0_0_0d^r1_0_09^r2_0_0e^r3_0_0b;
 assign c3_0 = r0_0_0b^r1_0_0d^r2_0_09^r3_0_0e;
 
 //column1:
 wire[7:0]r0_1_0e,r1_1_0b,r2_1_0d,r3_1_09,
         r0_1_09,r1_1_0e,r2_1_0b,r3_1_0d,
         r0_1_0d,r1_1_09,r2_1_0e,r3_1_0b,
         r0_1_0b,r1_1_0d,r2_1_09,r3_1_0e;

mul_0e n17 (r0_1_0e, r0_1);
mul_0b n18 (r1_1_0b, r1_1);
mul_0d n19 (r2_1_0d, r2_1);
mul_09 n20 (r3_1_09, r3_1);

mul_09 n21 (r0_1_09, r0_1);
mul_0e n22 (r1_1_0e, r1_1);
mul_0b n23 (r2_1_0b, r2_1);
mul_0d n24 (r3_1_0d, r3_1);

mul_0d n25 (r0_1_0d, r0_1);
mul_09 n26 (r1_1_09, r1_1);
mul_0e n27 (r2_1_0e, r2_1);
mul_0b n28 (r3_1_0b, r3_1);

mul_0b n29 (r0_1_0b, r0_1);
mul_0d n30 (r1_1_0d, r1_1);
mul_09 n31 (r2_1_09, r2_1);
mul_0e n32 (r3_1_0e, r3_1);

assign c0_1 = r0_1_0e ^ r1_1_0b ^ r2_1_0d ^ r3_1_09;
assign c1_1 = r0_1_09 ^ r1_1_0e ^ r2_1_0b ^ r3_1_0d;
assign c2_1 = r0_1_0d ^ r1_1_09 ^ r2_1_0e ^ r3_1_0b;
assign c3_1 = r0_1_0b ^ r1_1_0d ^ r2_1_09 ^ r3_1_0e;

//column2:
wire[7:0]r0_2_0e, r1_2_0b, r2_2_0d, r3_2_09,
         r0_2_09, r1_2_0e, r2_2_0b, r3_2_0d,
         r0_2_0d, r1_2_09, r2_2_0e, r3_2_0b,
         r0_2_0b, r1_2_0d, r2_2_09, r3_2_0e;

mul_0e n33 (r0_2_0e, r0_2);
mul_0b n34 (r1_2_0b, r1_2);
mul_0d n35 (r2_2_0d, r2_2);
mul_09 n36 (r3_2_09, r3_2);

mul_09 n37 (r0_2_09, r0_2);
mul_0e n38 (r1_2_0e, r1_2);
mul_0b n39 (r2_2_0b, r2_2);
mul_0d n40 (r3_2_0d, r3_2);

mul_0d n41 (r0_2_0d, r0_2);
mul_09 n42 (r1_2_09, r1_2);
mul_0e n43 (r2_2_0e, r2_2);
mul_0b n44 (r3_2_0b, r3_2);

mul_0b n45 (r0_2_0b, r0_2);
mul_0d n46 (r1_2_0d, r1_2);
mul_09 n47 (r2_2_09, r2_2);
mul_0e n48 (r3_2_0e, r3_2);

assign c0_2 = r0_2_0e ^ r1_2_0b ^ r2_2_0d ^ r3_2_09;
assign c1_2 = r0_2_09 ^ r1_2_0e ^ r2_2_0b ^ r3_2_0d;
assign c2_2 = r0_2_0d ^ r1_2_09 ^ r2_2_0e ^ r3_2_0b;
assign c3_2 = r0_2_0b ^ r1_2_0d ^ r2_2_09 ^ r3_2_0e;

//column3:
wire[7:0]r0_3_0e, r1_3_0b, r2_3_0d, r3_3_09,
         r0_3_09, r1_3_0e, r2_3_0b, r3_3_0d,
         r0_3_0d, r1_3_09, r2_3_0e, r3_3_0b,
         r0_3_0b, r1_3_0d, r2_3_09, r3_3_0e;

mul_0e n49 (r0_3_0e, r0_3);
mul_0b n50 (r1_3_0b, r1_3);
mul_0d n51 (r2_3_0d, r2_3);
mul_09 n52 (r3_3_09, r3_3);

mul_09 n53 (r0_3_09, r0_3);
mul_0e n54 (r1_3_0e, r1_3);
mul_0b n55 (r2_3_0b, r2_3);
mul_0d n56 (r3_3_0d, r3_3);

mul_0d n57 (r0_3_0d, r0_3);
mul_09 n58 (r1_3_09, r1_3);
mul_0e n59 (r2_3_0e, r2_3);
mul_0b n60 (r3_3_0b, r3_3);

mul_0b n61 (r0_3_0b, r0_3);
mul_0d n62 (r1_3_0d, r1_3);
mul_09 n63 (r2_3_09, r2_3);
mul_0e n64 (r3_3_0e, r3_3);

assign c0_3 = r0_3_0e ^ r1_3_0b ^ r2_3_0d ^ r3_3_09;
assign c1_3 = r0_3_09 ^ r1_3_0e ^ r2_3_0b ^ r3_3_0d;
assign c2_3 = r0_3_0d ^ r1_3_09 ^ r2_3_0e ^ r3_3_0b;
assign c3_3 = r0_3_0b ^ r1_3_0d ^ r2_3_09 ^ r3_3_0e;

always@(posedge clk or posedge clr)begin
    if(clr)
        out <= 128'h00;
     else
        out <= {c0_0,c1_0,c2_0,c3_0,c0_1,c1_1,c2_1,c3_1,c0_2,c1_2,c2_2,c3_2,c0_3,c1_3,c2_3,c3_3};
end
 
   
endmodule
