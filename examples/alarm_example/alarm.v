/*
    Este es un ejemplo representativo de un caso en donde se desarrolla
    una alarma de un automovil que se dispara cuando se dejan las luces
    encendidas y alguna puerta abierta y el motor apagado, caso contrario
    la alarma permanece en OFF cuando igualmente las luces estan encendidas
    y las puertas abiertas y el motor encendido, ya que se entiende que el
    carro esta en uso, y no tiene sentido disparar la alarma,

    este es un ejemplo muy simplista de un caso con la finalidad de
    poner en practica el lenguaje Verilog.

*/

module alarm (

    sLuz,   // signal luz encendida
    sPrta,  // signal Puerta abierta
    sIgn,   // signal ignicion encendida
    sAlarm  // signal de alarma
);
    
input sLuz, sPrta, sIgn;
output sAlarm;

reg sAlarm;

always @(sLuz or sPrta or sIgn) begin

    if (sLuz == 1 & sPrta == 1 & sIgn == 0) begin
        sAlarm = 1;
    end
    else begin
        sAlarm = 0;
    end
    
end

endmodule