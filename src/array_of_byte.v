module array_of_byte(byte0,byte1,byte2,byte3,byte4,byte5,byte6,byte7,byte8,byte9,byte10,byte11,byte12,byte13,byte14,byte15,in,clk);
	input [127:0]in;
	input clk;
	output reg [7:0]byte0,byte1,byte2,byte3,byte4,byte5,byte6,byte7,byte8,byte9,byte10,byte11,byte12,byte13,byte14,byte15;
	//this means there are 16 byte each of 8 bit
	always@(posedge clk)begin//if we are using clk then use non blocking otherwise use"=" only in case of"*".
    byte0  <= in[127:120];
    byte1  <= in[119:112];
    byte2  <= in[111:104];
    byte3  <= in[103:96];
    byte4  <= in[95:88];
    byte5  <= in[87:80];
    byte6  <= in[79:72];
    byte7  <= in[71:64];
    byte8  <= in[63:56];
    byte9  <= in[55:48];
    byte10 <= in[47:40];
    byte11 <= in[39:32];
    byte12 <= in[31:24];
    byte13 <= in[23:16];
    byte14 <= in[15:8];
    byte15 <= in[7:0];
    end
endmodule 
//if the system is sytem verilo then we could have directly 
//declare array in the out put porti.e.,output reg "[7:0]in_byte[15:0];"
//another way of writing this is "in_byte[15:0][7:0];"
// Rule of thumb:
//The rightmost index is the array dimension.
//The leftmost index is the bit width per element.

    
