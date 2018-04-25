/*---------------Jorge Munoz Taylor---------------*/
/*--------------------A53863----------------------*/
/*-----------Universidad de Costa Rica------------*/
/*------------Circuitos Digitales 2---------------*/
/*-------------------I-2018-----------------------*/

/*Modulo encargado de calcular el carry output*/
module modulo_SOUT(
    input Q_0,
    input Q_3,
    input MODO_00,
    input DIR,
    inout S_OUT
);    
    wire [4:0] cable;

    MUX #(19) mux_0 ( `GROUND, Q_0, `ENABLE, DIR, cable[0]);
    MUX #(20) mux_1 ( Q_3, `GROUND, `ENABLE, DIR, cable[1]);

    NOR #(21) nor_0 (cable[0], cable[1], cable[2]);
    NOR #(22) nor_  (cable[2], cable[2], cable[3]);

    MUX #(23) mux_3 (`GROUND, cable[3], `ENABLE, MODO_00, S_OUT);

endmodule
/*---------------------------------------------------*/