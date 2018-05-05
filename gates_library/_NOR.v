/*---------------Jorge Munoz Taylor---------------*/
/*--------------------A53863----------------------*/
/*-----------University of Costa Rica-------------*/
/*--------------Digital circuits 2----------------*/
/*-------------------I-2018-----------------------*/

module NOR(
    in1,
    in2,
    out
);
    parameter PwrC = 0;
    input     in1;
    input     in2;
    output    out;

    assign    #`nor_delay out = ~(in1 | in2);

    //always @(posedge out) 
    //testbench.m1.PwrCntr[PwrC] = testbench.m1.PwrCntr[PwrC] + 1;

endmodule
/*------------------------------------------------*/