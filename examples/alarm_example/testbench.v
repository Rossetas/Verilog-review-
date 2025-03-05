`include "alarm.v"
`include "tester.v"

module alarm_tb;

    wire sLuz, sPrta, sIgn;
    wire sAlarm;

    initial begin
        $dumpfile("results.vcd");
        $dumpvars(-1, U0);
    end

alarm U0 (
    .sLuz   (sLuz),
    .sPrta  (sPrta),
    .sIgn   (sIgn),
    .sAlarm (sAlarm)
);

tester T0 (
    .sLuz   (sLuz),
    .sPrta  (sPrta),
    .sIgn   (sIgn),
    .sAlarm (sAlarm)    
);

endmodule