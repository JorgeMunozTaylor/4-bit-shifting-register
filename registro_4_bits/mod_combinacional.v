/*---------------Jorge Munoz Taylor---------------*/
/*--------------------A53863----------------------*/
/*-----------Universidad de Costa Rica------------*/
/*------------Circuitos Digitales 2---------------*/
/*-------------------I-2018-----------------------*/


/*Este modulo se encarga de discriminar las senales de la entrada MODO -00,01,10,11-
ademas de las senales de reloj alta y baja.*/
module modulo_combinacional(
    input ENB,
    input CLK,
    input [1:0] MODO,

    output MODO_00_01, /*Determina si se puso MODO=00 o 01 en la entrada*/
    output MODO_00,    /*Determina si se introdujo MODO=00*/
    output MODO_10,    /*Determina si se introdujo MODO=10*/
    output MODO_11,    /*Determina si se introdujo MODO=11*/
    output CLK_H,      /*CLK ALTO*/
    output CLK_L       /*CLK BAJO*/
);

    wire   [2:0] cable;

    assign CLK_L = cable[0];

    NAND #(0) nand_0 (ENB     , CLK      , cable[0]);
    NOR  #(1) nor_0  (cable[0], cable[0] , CLK_H);

    NOR  #(2) nor_1  (MODO[0] , MODO[1]  , MODO_00); //MODO 00

    NOR  #(3) nor_2  (MODO[1] , MODO[1]  , cable[1]);
    NOR  #(4) nor_3  (MODO[0] , cable[1] , MODO_10); //MODO 10

    NAND #(5) nand_1 (MODO[0] , MODO[1]  , MODO_11); //MODO 11

    NAND #(6) nand_2 (MODO[0] , cable[1] , cable[2]); 
    NOR  #(7) nor_4  (cable[2], cable[2] , MODO_00_01); // 00 o 01
   

endmodule
/*---------------------------------------------------*/
