module binaryAdder32b (
    
    Q,
    RCO,
    CLK,
    EN,
    MODO,
    A,
    B,
    Cin
);

output [31:0] Q;
output RCO;

input CLK, EN;
input [1:0] MODO;
input [31:0] A;
input [31:0] B;
input Cin;

wire bus_a; // Acarreo entre DUT_8b_a y DUT_8b_b
wire bus_b; // Acarreo entre DUT_8b_b y DUT_8b_c
wire bus_c; // Acarreo entre DUT_8b_c y DUT_8b_d

// instancia del modulo de 8 bits

binaryAdder8b DUT_8b_a(
    .CLK    (CLK),
    .EN     (EN),
    .MODO   (MODO),
    .A      (A[7:0]),
    .B      (B[7:0]),
    .Q      (Q[7:0]),
    .RCO    (bus_a),
    .Cin    (Cin)
);

binaryAdder8b DUT_8b_b(
    .CLK    (CLK),
    .EN     (EN),
    .MODO   (MODO),
    .A      (A[15:8]),
    .B      (B[15:8]),
    .Q      (Q[15:8]),
    .RCO    (bus_b),
    .Cin    (bus_a)
); 

binaryAdder8b DUT_8b_c(
    .CLK    (CLK),
    .EN     (EN),
    .MODO   (MODO),
    .A      (A[23:16]),
    .B      (B[23:16]),
    .Q      (Q[23:16]),
    .RCO    (bus_c),
    .Cin    (bus_b)
); 

binaryAdder8b DUT_8b_d(
    .CLK    (CLK),
    .EN     (EN),
    .MODO   (MODO),
    .A      (A[31:24]),
    .B      (B[31:24]),
    .Q      (Q[31:24]),
    .RCO    (RCO),
    .Cin    (bus_c)
); 
    
endmodule