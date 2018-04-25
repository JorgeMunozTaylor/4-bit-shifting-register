/*---------------Jorge Munoz Taylor---------------*/
/*--------------------A53863----------------------*/
/*-----------Universidad de Costa Rica------------*/
/*------------Circuitos Digitales 2---------------*/
/*-------------------I-2018-----------------------*/

/*Este modulo incluye los flip-flops*/
module modulo_secuencial(
    CLK,
    RESET,   /*Activo en BAJO, pone 0 en la salida*/
    in_MUX,  /*Entrada destinada a la salida del modulo de multiplexado*/
    MODO_10, 
    D,       /*Entrada D*/
    Q        /*Salida de los flip-flops*/
);

    input   [1:0] CLK;
    input   RESET; 
    input   [3:0] in_MUX; 
    input   MODO_10;
    input   [3:0] D;

    output  [3:0] Q;

    wire    [3:0] QQ;
    wire    [3:0] out_MUX;

    genvar i;
    generate    //Instanciacion multiple
    for (i = 0; i <= 3; i = i + 1) begin
    
        FLIPFLOP #(16) FF0(
            CLK[0],
            RESET,
            `SET,
            in_MUX[i],
            QQ[i],
            //NQ //No se usara
        );

        MUX #(17) MUX0(
            QQ[i],
            D[i],
            `ENABLE,
            MODO_10,
            out_MUX[i]
        );

        FLIPFLOP #(18) FF1(
            CLK[1],
            RESET,
            `SET,
            out_MUX[i],
            Q[i],
            //NQ //No se usara
        );

    end
    endgenerate

endmodule
/*---------------------------------------------------*/