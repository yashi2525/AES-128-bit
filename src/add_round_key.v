module add_round_key(out,in,key_in,clk,clr);
input clk,clr;
input [127:0]in,key_in;
output reg [127:0]out;
wire [7:0]ps0,ps1,ps2,ps3,ps4,ps5,ps6,ps7,ps8,ps9,ps10,ps11,ps12,ps13,ps14,ps15;
wire [7:0]state0,state1,state2,state3,state4,state5,state6,state7,state8,state9,state10,state11,state12,state13,state14,state15;
wire [7:0]key0,key1,key2,key3,key4,key5,key6,key7,key8,key9,key10,key11,key12,key13,key14,key15;
assign state0  = in[127:120];
assign state1  = in[119:112];
assign state2  = in[111:104];
assign state3  = in[103:96];
assign state4  = in[95:88];
assign state5  = in[87:80];
assign state6  = in[79:72];
assign state7  = in[71:64];
assign state8  = in[63:56];
assign state9  = in[55:48];
assign state10 = in[47:40];
assign state11 = in[39:32];
assign state12 = in[31:24];
assign state13 = in[23:16];
assign state14 = in[15:8];
assign state15 = in[7:0];

assign key0  = key_in[127:120];
assign key1  = key_in[119:112];
assign key2  = key_in[111:104];
assign key3  = key_in[103:96];
assign key4  = key_in[95:88];
assign key5  = key_in[87:80];
assign key6  = key_in[79:72];
assign key7  = key_in[71:64];
assign key8  = key_in[63:56];
assign key9  = key_in[55:48];
assign key10 = key_in[47:40];
assign key11 = key_in[39:32];
assign key12 = key_in[31:24];
assign key13 = key_in[23:16];
assign key14 = key_in[15:8];
assign key15 = key_in[7:0];

assign ps0  = state0  ^ key0;
assign ps1  = state1  ^ key1;
assign ps2  = state2  ^ key2;
assign ps3  = state3  ^ key3;
assign ps4  = state4  ^ key4;
assign ps5  = state5  ^ key5;
assign ps6  = state6  ^ key6;
assign ps7  = state7  ^ key7;
assign ps8  = state8  ^ key8;
assign ps9  = state9  ^ key9;
assign ps10 = state10 ^ key10;
assign ps11 = state11 ^ key11;
assign ps12 = state12 ^ key12;
assign ps13 = state13 ^ key13;
assign ps14 = state14 ^ key14;
assign ps15 = state15 ^ key15;

always@(posedge clk or posedge clr)begin
    if(clr)
        out <= 128'h00;
    else 
        out <= {ps0,ps1,ps2,ps3,ps4,ps5,ps6,ps7,ps8,ps9,ps10,ps11,ps12,ps13,ps14,ps15};
end

endmodule
