/*---------------Jorge Munoz Taylor---------------*/
/*-----------University of Costa Rica-------------*/
/*--------------Digital Circuits 2----------------*/
/*-------------------I-2018-----------------------*/

`ifndef TIMESCALE
    `timescale 1ns/100ps
`endif

`ifndef GROUND
    `define GROUND  1'b0 
`endif

`ifndef ENABLE
    `define ENABLE  1'b0 
`endif

`ifndef SET
    `define SET     1'b1 
`endif

`ifndef HIGH
    `define HIGH    1'b1
`endif

`ifndef LOW
    `define LOW     1'b0
`endif

`ifdef TRANSITIONS_POWER_V
    `define NumPwrCntr      23      //number of counters N: NumPwrCntr = N - 1    
    `define Ndir            4       //(2^(Ndir+1) - 1) > NumPwrCntr
`endif

`ifndef TIEMPO
    `define TIEMPO          1800    //Simulation time 
`endif

`ifndef SHIFT
    `define SHIFT 		2'b00
`endif

`ifndef CIRC_SHIFT   
    `define CIRC_SHIFT 	2'b01
`endif

`ifndef PARA_LOAD
    `define PARA_LOAD 	2'b10
`endif

`ifndef AVOID_MODE
    `define AVOID_MODE 	2'b11
`endif

`ifndef LEFT
    `define LEFT		1'b0
`endif

`ifndef RIGHT
    `define RIGHT		1'b1
`endif


`define t_final 1000    /*Final time mapping in GTKWAVE*/
`define CLK_t1  25.15   /*Pulse width in test 1*/
`define CLK_t2  25.15   /*Pulse width in test 2*/
`define CLK_t3  66.6    /*Pulse width in test 3*/
`define CLK_t4  66.6    /*Pulse width in test 4*/
`define CLK_t5  8.95    /*Pulse width in test 5*/