/*---------------Jorge Munoz Taylor---------------*/
/*--------------------A53863----------------------*/
/*-----------University of Costa Rica-------------*/
/*--------------Digital circuits 2----------------*/
/*-------------------I-2018-----------------------*/

module NOR(
    input     in1,
    input     in2,
    output    out
);
    parameter  PwrC      = 0;
    localparam nor_delay = `nor_delay;

    assign    #nor_delay out = ~(in1 | in2);

    //always @(posedge out) 
    //testbench.m1.PwrCntr[PwrC] = testbench.m1.PwrCntr[PwrC] + 1;

endmodule
/*------------------------------------------------*/