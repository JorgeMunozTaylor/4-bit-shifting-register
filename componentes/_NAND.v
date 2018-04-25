/*---------------Jorge Munoz Taylor---------------*/
/*--------------------A53863----------------------*/
/*-----------Universidad de Costa Rica------------*/
/*------------Circuitos Digitales 2---------------*/
/*-------------------I-2018-----------------------*/

/*quad SN74AHC00, 1-> 1.13 , 10-> 0.961, 100-> 0.738*/
module NAND(
    in1,
    in2,
    out
);
    parameter PwrC = 0;
    input     in1;
    input     in2;
    output    out;

    assign #`nand_delay out = ~(in1 & in2);

    always @(posedge out) 
    testbench.m1.PwrCntr[PwrC] = testbench.m1.PwrCntr[PwrC] + 1;

endmodule
/*------------------------------------------------*/
