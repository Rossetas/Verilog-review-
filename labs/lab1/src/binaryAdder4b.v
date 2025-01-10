module binaryAdder4b ( // variables

    // outputs
    Q,
    RCO,
    // inputs
    CLK,
    EN,
    MODO,
    A,
    B, 
    Cin // external input
);

output reg [3:0] Q;
output reg RCO; // “Ripple-Carry Out”

input CLK, EN;
input [1:0] MODO;
input [3:0] A;
input [3:0] B;
input Cin;

always @(posedge CLK) begin

    if (EN == 0) begin
        Q[3:0] = Q[3:0];
    end

    else if (EN) begin

        if (MODO == 2'b00) begin
            Q[3:0] <= Q[3:0];
            RCO <= 0;
            // Q = Q;
        end

        else if (MODO == 2'b01) begin // A+B
            {RCO, Q[3:0]} <= A[3:0] + B[3:0] + Cin;
        end

        else if (MODO == 2'b10) begin // A+(-B)
            {RCO, Q[3:0]} <= A[3:0] + (~B[3:0] + 1) + Cin;
            //{RCO, Q[3:0]} <= A[3:0] + (~B[3:0] + 4'b0001) + Cin;
        end

        else if (MODO == 2'b11) begin
            Q[3:0] <= 0;
            RCO <= 0;
            //Q[3:0] <= 4'b0000;
            //Q <= 0;
            //Q <= 4'b0000;
        end
    end
end

endmodule