/*---------------Jorge Munoz Taylor---------------*/
/*--------------------A53863----------------------*/
/*-----------University of Costa Rica-------------*/
/*--------------Digital circuits 2----------------*/
/*-------------------I-2018-----------------------*/

module buffer (
    in,
    out
);
    parameter PwrC = 0;
    input     in;
    output    out;

    assign    #`buff_delay out = in;

    //always @(posedge out) 
    //testbench.m1.PwrCntr[PwrC] = testbench.m1.PwrCntr[PwrC] + 1;

endmodule
/*------------------------------------------------*/