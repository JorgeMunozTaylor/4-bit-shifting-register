/*---------------Jorge Munoz Taylor---------------*/
/*--------------------A53863----------------------*/
/*-----------Universidad de Costa Rica------------*/
/*------------Circuitos Digitales 2---------------*/
/*-------------------I-2018-----------------------*/

`timescale 1ns/100ps

`define GROUND  1'b0 //Valor binario de la tierra
`define ENABLE  1'b0 //Un 0 constante
`define SET     1'b1 //Es el SET de los F-F
`define HIGH    1'b1
`define LOW     1'b0

`define NumPwrCntr      32      //numero de contadores N, menos uno: NumPwrCntr = N - 1
`define Ndir            5       //(2^(Ndir+1) - 1) > NumPwrCntr
`define TIEMPO          11470    //Tiempo que dura la simulacion

/*Definicion de los tiempos para cada componente*/
`define inv_delay   55  //Tiempo de propagacion del inversor 
`define nand_delay  5.2 //Tiempo de propagacion del NAND
`define nor_delay   3.2 //Tiempo de propagacion del NOR
`define mux_delay   11  //Tiempo de propagacion del MUX
`define T_su        12  //Tiempo de setup del FF
`define T_ho        3   //Tiempo de sostenimiento del FF
`define T_clk_q     11  //Tiempo de propagacion del FF de CLK a Q

`define MODO_00 2'b00   //Se definen los bits de los modos de operacion
`define MODO_01 2'b01
`define MODO_10 2'b10
`define MODO_11 2'b11

`define t_final 10500 /*Indica cuando se dejan de mapear las senales en GTKWAVE*/
`define CLK_t1  86.55
`define CLK_t2  86.55
`define CLK_t3  86.55
`define CLK_t4  86.55 /*Ancho del pulso en la prueba 4*/
`define CLK_t5  16.15