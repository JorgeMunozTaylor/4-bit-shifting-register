/*----Jorge Munoz Taylor A53863----*/
/*----Universidad de Costa Rica----*/
/*------------I-2018---------------*/
/*------------TAREA 1--------------*/

`include "ContBin4.v"
`include "test.v"

`timescale 1ns/1ps

/*Modulo testbench, aqui se cableara el DUT*/
/*y el probador*/
module testbench;
 
    wire [1:0] count;
    wire clk;
    wire reset;
    wire enable;

    test prueba(count, enable, clk, reset);
    contador cont(count, enable, clk, reset);

endmodule