module test_shift_row(out,in,clk,clr);
output reg[127:0]out;
input clk,clr;
input [127:0]in;

wire [7:0]r0_0,r0_1,r0_2,r0_3,r1_0,r1_1,r1_2,r1_3,r2_0,r2_1,r2_2,r2_3,r3_0,r3_1,r3_2,r3_3;
wire [7:0]submatrix0,submatrix1,submatrix2,submatrix3,submatrix4,submatrix5,submatrix6,submatrix7,
          submatrix8,submatrix9,submatrix10,submatrix11,submatrix12,submatrix13,submatrix14,submatrix15;
          
assign submatrix0  = in[127:120];
assign submatrix1  = in[119:112];
assign submatrix2  = in[111:104];
assign submatrix3  = in[103:96];
assign submatrix4  = in[95:88];
assign submatrix5  = in[87:80];
assign submatrix6  = in[79:72];
assign submatrix7  = in[71:64];
assign submatrix8  = in[63:56];
assign submatrix9  = in[55:48];
assign submatrix10 = in[47:40];
assign submatrix11 = in[39:32];
assign submatrix12 = in[31:24];
assign submatrix13 = in[23:16];
assign submatrix14 = in[15:8];
assign submatrix15 = in[7:0];
 
   //row1:         
  assign r0_0=submatrix0;
  assign r0_1=submatrix4;
  assign r0_2=submatrix8;
  assign r0_3=submatrix12;
  //row2:
  assign r1_0=submatrix5;
  assign r1_1=submatrix9;
  assign r1_2=submatrix13;
  assign r1_3=submatrix1;
  //row3:
  assign r2_0=submatrix10;
  assign r2_1=submatrix14;
  assign r2_2=submatrix2;
  assign r2_3=submatrix6;
  //row4:
  assign r3_0=submatrix15;
  assign r3_1=submatrix3;
  assign r3_2=submatrix7;
  assign r3_3=submatrix11;
  
  always@(posedge clk or posedge clr)begin
    if(clr)
        out <= 128'h00;
    else
        out <= {r0_0,r1_0,r2_0,r3_0,r0_1,r1_1,r2_1,r3_1,r0_2,r1_2,r2_2,r3_2,r0_3,r1_3,r2_3,r3_3};
  end
 endmodule



