module AES(out,in,key_in,sel,clk,clr);
input clk,clr,sel;
input[127:0]in,key_in;
output reg [127:0]out;
//encryption:
wire [127:0]cipher_text;
ENCRYPTION_new n1 (cipher_text,in,key_in,clk,clr);
//decryption:
wire [127:0]decrypt_text;
DECRYPTION n2 (decrypt_text,cipher_text,key_in,clk,clr);

always @(posedge clk or posedge clr) begin
    if (clr)
        out <= 128'd0;
    else begin
        case (sel)
            1'b0: out <= cipher_text;
            1'b1: out <= decrypt_text;
        endcase
    end
end
endmodule
