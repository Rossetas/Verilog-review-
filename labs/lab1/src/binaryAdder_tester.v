module binaryAdder_tester (
    
    Q,
    RCO,
    CLK,
    EN,
    MODO,
    A,
    B,
    Cin
);

input [31:0] Q;
input RCO;

output reg CLK, EN;
output reg [1:0] MODO;
output reg [31:0] A;
output reg [31:0] B;
output reg Cin;

initial begin

    // inicio
    CLK <= 0;
    EN <= 0;
    MODO <= 3; // Q = 0
    A <= 0;
    B <= 0;
    Cin <= 0;

    #5
        EN <= 1;

    /*
    // TEST-4b

    // *************
    // test-Addition
    // *************

    // add w/o RCO
    #10
        MODO <= 1;
        A <= 8;
        B <= 3;
    // add w RCO
    #10
        A <= 12;
        B <= 6;

    #10
        MODO <= 3;
        A <= 0;
        B <= 0;

    // *************
    // test-Substraction
    // *************

    // substraction w/o RCO
    #10
        MODO <= 2;
        A <= 8;
        B <= 5;
    // substraction w RCO
    #10
        A <= 7;
        B <= 9;

    // reset
    #10
        MODO <= 3;
        A <= 0;
        B <= 0;

    // test-MODE 0

    #10
        MODO <= 1;
        A <= 1;
        B <= 1;

    #10
        MODO <= 0;

    // test-EN=0
    #30
        EN <= 0;

    #10
        MODO <= 1;
        A <= 4;
        B <= 3;

    #10
        MODO <= 2;
        A <= 11;
        B <= 5;

    #10
        EN <= 1;
        MODO <= 11;

    // ************************************** END test 4b
    */

    /*
    // TEST-8b

    // *************
    // test-Addition
    // *************

    // add w/o RCO
    #10
        MODO <= 1;
        A <= 150;
        B <= 100;
    // add w RCO
    #10
        A <= 180;
        B <= 195;

    #10
        MODO <= 3;
        A <= 0;
        B <= 0;

    // *************
    // test-Substraction
    // *************
    
    // substraction w/o RCO
    #10
        MODO <= 2;
        A <= 192;
        B <= 64;
    // substraction w RCO
    #10
        A <= 78;
        B <= 132;

    // reset
    #10
        MODO <= 3;
        A <= 0;
        B <= 0;

    // ************************************** END test 8b
    */

    
    // TEST-32b

    // *************
    // test-Addition
    // *************

    // add w/o RCO
    #10
        MODO <= 1;
        A <= 173576958;
        B <= 215875696;
    // add w RCO
    #10
        A <= 4294967223;
        B <= 3257841125;

    #10
        MODO <= 3;
        A <= 0;
        B <= 0;

    // *************
    // test-Substraction
    // *************
    
    // substraction w/o RCO
    #10
        MODO <= 2;
        A <= 745329879;
        B <= 456781024;
    // substraction w RCO
    #10
        A <= 143567888;
        B <= 709321657;

    // reset
    #10
        MODO <= 3;
        A <= 0;
        B <= 0;

    // ************************************** END test 32b
    
        
    #50 $finish;
    
end

always begin
    #5 CLK = !CLK;
end
    
endmodule