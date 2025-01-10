module binaryAdder8b (
    
    Q,
    RCO,
    CLK,
    EN,
    MODO,
    A,
    B,
    Cin
);

output [7:0] Q;
output RCO;

input CLK, EN;
input [1:0] MODO;
input [7:0] A;
input [7:0] B;
input Cin;

wire bus;

// instancia del modulo de 4 bits

binaryAdder4b DUT_4b_a(
    .CLK    (CLK),
    .EN     (EN),
    .MODO   (MODO),
    .A      (A[3:0]),
    .B      (B[3:0]),
    .Q      (Q[3:0]),
    .RCO    (bus),
    .Cin    (Cin)
);

binaryAdder4b DUT_4b_b(
    .CLK    (CLK),
    .EN     (EN),
    .MODO   (MODO),
    .A      (A[7:4]),
    .B      (B[7:4]),
    .Q      (Q[7:4]),
    .RCO    (RCO),
    .Cin    (bus)
);
  
endmodule