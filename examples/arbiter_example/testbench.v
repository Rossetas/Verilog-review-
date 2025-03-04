`include "arbiter.v"
`include "tester.v"

// Testbench Code Goes here

module arbiter_tb;

wire clock, reset, req0, req1;
wire gnt0, gnt1;

initial begin
    $dumpfile("results.vcd");
    $dumpvars(-1, U0);
    $monitor ("req0=%b, req1=%b, gnt0=%b, gnt1=%b", req0, req1, gnt0, gnt1);
end

arbiter U0 (
    .clock  (clock),
    .reset  (reset),
    .req_0  (req0),
    .req_1  (req1),
    .gnt_0  (gnt0),
    .gnt_1  (gnt1)
);

tester T0 (
    .clock  (clock),
    .reset  (reset),
    .req0   (req0),
    .req1   (req1),
    .gnt0   (gnt0),
    .gnt1   (gnt1)
);

endmodule