`include "binaryAdder4b.v"
`include "binaryAdder8b.v"
`include "binaryAdder32b.v"
`include "binaryAdder_tester.v"

module binaryAdder_tb;

wire CLK;
wire EN;
wire [1:0] MODO;
wire [31:0] A;
wire [31:0] B;
wire [31:0] Q;
wire RCO;
wire Cin;

initial begin
    
    $dumpfile("test.vcd");
    $dumpvars(-1, DUT_binaryAdder_32b);
end

// instancias

binaryAdder32b DUT_binaryAdder_32b(
    .CLK    (CLK),
    .EN     (EN),
    .MODO   (MODO),
    .A      (A),
    .B      (B),
    .Q      (Q),
    .RCO    (RCO),
    .Cin    (Cin)
);

binaryAdder_tester DUT_tester0(
    .CLK    (CLK),
    .EN     (EN),
    .MODO   (MODO),
    .A      (A),
    .B      (B),
    .Q      (Q),
    .RCO    (RCO),
    .Cin    (Cin)    
);

endmodule