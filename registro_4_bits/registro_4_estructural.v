/*---------------Jorge Munoz Taylor---------------*/
/*--------------------A53863----------------------*/
/*-----------Universidad de Costa Rica------------*/
/*------------Circuitos Digitales 2---------------*/
/*-------------------I-2018-----------------------*/

/*Definicion estructural del registro de 4 bits*/
module registro_4_estructural(
    input ENB,
    input CLK,
    input S_IN,
    input DIR,
    input [1:0] MODO,
    input [3:0] D,

    output [3:0] Q,
    output S_OUT
);

    wire [1:0] cable_clk;
    wire MODO_00_01;
    wire MODO_00;
    wire MODO_10;
    wire MODO_11;
    wire [3:0] O_MUX;
    wire [3:0] cable_Q;

    assign Q = cable_Q;

    modulo_combinacional parte_comb    (
        ENB,
        CLK,
        MODO,

        MODO_00_01, //salidas
        MODO_00,
        MODO_10,
        MODO_11,
        cable_clk[1], //CLK ALTO
        cable_clk[0] //CLK BAJO
    );

    modulo_multiplexado multiplexado   (
        MODO_00_01,
        DIR,
        S_IN,
        cable_Q,
        O_MUX
    );

    modulo_secuencial parte_secuencial (    
        cable_clk,
        MODO_11,
        O_MUX,
        MODO_10,
        D,
        cable_Q
    );

    modulo_SOUT comb_s_out             (
        cable_Q[0],
        cable_Q[3],
        MODO_00,
        DIR,
        S_OUT
    );

endmodule