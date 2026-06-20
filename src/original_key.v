module original_key(key0,key1,key2,key3,key4,key5,key6,key7,key8,
                    key9,key10,key11,key12,key13,key14,key15,in_key,clr,clk);
    input clk,clr;
    input[127:0]in_key;
    output reg [7:0]key0,key1,key2,key3,key4,key5,key6,key7,key8,
                    key9,key10,key11,key12,key13,key14,key15;
    wire [7:0]byte0,byte1,byte2,byte3,byte4,byte5,byte6,byte7,byte8,byte9,byte10,byte11,byte12,byte13,byte14,byte15;
    array_of_byte n1(byte0,byte1,byte2,byte3,byte4,byte5,byte6,byte7,byte8,byte9,byte10,byte11,byte12,byte13,byte14,byte15,in_key,clk);
    always@(posedge clk or posedge clr)begin
        if(clr)begin
            key0  <= 8'h00;
            key1  <= 8'h00;
            key2  <= 8'h00;
            key3  <= 8'h00;
            key4  <= 8'h00;
            key5  <= 8'h00;
            key6  <= 8'h00;
            key7  <= 8'h00;
            key8  <= 8'h00;
            key9  <= 8'h00;
            key10 <= 8'h00;
            key11 <= 8'h00;
            key12 <= 8'h00;
            key13 <= 8'h00;
            key14 <= 8'h00;
            key15 <= 8'h00;
            key0  <= byte0;
            key1  <= byte1;
            key2  <= byte2;
            key3  <= byte3;
            key4  <= byte4;
            key5  <= byte5;
            key6  <= byte6;
            key7  <= byte7;
            key8  <= byte8;
            key9  <= byte9;
            key10 <= byte10;
            key11 <= byte11;
            key12 <= byte12;
            key13 <= byte13;
            key14 <= byte14;
            key15 <= byte15;
        end
        else begin
            key0  <= byte0;
            key1  <= byte1;
            key2  <= byte2;
            key3  <= byte3;
            key4  <= byte4;
            key5  <= byte5;
            key6  <= byte6;
            key7  <= byte7;
            key8  <= byte8;
            key9  <= byte9;
            key10 <= byte10;
            key11 <= byte11;
            key12 <= byte12;
            key13 <= byte13;
            key14 <= byte14;
            key15 <= byte15;
        end
    end
endmodule
