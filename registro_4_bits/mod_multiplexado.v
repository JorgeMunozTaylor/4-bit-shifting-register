/*---------------Jorge Munoz Taylor---------------*/
/*--------------------A53863----------------------*/
/*-----------Universidad de Costa Rica------------*/
/*------------Circuitos Digitales 2---------------*/
/*-------------------I-2018-----------------------*/

/*Este modulo se encarga de activar los distintos modos de funcionamiento*/
module modulo_multiplexado(
    MODO_00_01,
    DIR,
    S_IN,
    Q,
    O_MUX
);
    input   MODO_00_01;
    input   DIR;
    input   S_IN;
    input   [3:0] Q;
    output  [3:0] O_MUX;

    wire [3:0] cable;

            MUX #(8) mux_0(
                Q[3],
                Q[1],
                `ENABLE,
                DIR,
                cable[0]
            );

            MUX #(9) mux_1(
                S_IN,
                cable[0],
                `ENABLE,
                MODO_00_01,
                cable[1]
            );

            MUX #(10) mux_2(
                cable[1],
                Q[1],
                `ENABLE,
                DIR,
                O_MUX[0]
            );

            /*-------------------------*/
                MUX #(11) mux_4(
                    Q[0],
                    Q[2],
                    `ENABLE,
                    DIR,
                    O_MUX[1]
                );

                 MUX #(12) mux_6(
                    Q[1],
                    Q[3],
                    `ENABLE,
                    DIR,
                    O_MUX[2]
                );

            /*-------------------------*/  

            MUX #(13) mux_8(
                Q[2],
                Q[0],
                `ENABLE,
                DIR,
                cable[2]
            );

            MUX #(14) mux_9(
                S_IN,
                cable[2],
                `ENABLE,
                MODO_00_01,
                cable[3]
            );

            MUX #(15) mux_10(
                Q[2],
                cable[3],
                `ENABLE,
                DIR,
                O_MUX[3]
            );                     

endmodule
/*---------------------------------------------------*/
