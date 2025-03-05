module tester (
    
    sLuz,
    sPrta,
    sIgn,
    sAlarm
);

output sLuz, sPrta, sIgn;
input sAlarm;

wire sAlarm;
reg sLuz, sPrta, sIgn;

initial begin
    
    sLuz = 0;
    sPrta = 0;
    sIgn = 0;

    #10 sLuz = 1;
        sPrta = 1;
        sIgn = 0;

    #10 sLuz = 0;
        sPrta = 0;
        sIgn = 0;

    #10 sLuz = 1;
        sPrta = 1;
        sIgn = 1;

    #10 sLuz = 0;
        sPrta = 0;
        sIgn = 0;
    
    #20 $finish;
end
    
endmodule