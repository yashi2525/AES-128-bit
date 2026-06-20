module test(state0,state1,state2,state3,state4,state5,state6,state7,state8,
                   state9,state10,state11,state12,state13,state14,state15,in,clk);
    input clk;
    input [127:0]in;
    output reg [7:0]state0,state1,state2,state3,state4,state5,state6,state7,state8,state9,state10,state11,state12,state13,state14,state15;
    wire [7:0]byte0,byte1,byte2,byte3,byte4,byte5,byte6,byte7,byte8,byte9,byte10,byte11,byte12,byte13,byte14,byte15;
    array_of_byte n1(byte0,byte1,byte2,byte3,byte4,byte5,byte6,byte7,byte8,byte9,byte10,byte11,byte12,byte13,byte14,byte15,in,clk);
    always@(posedge clk)begin
        state0<=byte0;
        state1<=byte1;
        state2<=byte2;
        state3<=byte3;
        state4<=byte4;
        state5<=byte5;
        state6<=byte6;
        state7<=byte7;
        state8<=byte8;
        state9<=byte9;
        state10<=byte10;
        state11<=byte11;
        state12<=byte12;
        state13<=byte13;
        state14<=byte14;
        state15<=byte15;
        end
endmodule
