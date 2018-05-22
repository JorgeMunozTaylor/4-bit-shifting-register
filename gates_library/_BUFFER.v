/*---------------Jorge Munoz Taylor---------------*/
/*--------------------A53863----------------------*/
/*-----------University of Costa Rica-------------*/
/*--------------Digital circuits 2----------------*/
/*-------------------I-2018-----------------------*/

module buffer (
    input     in,
    output    out
);
    parameter PwrC        = 0;
    localparam buff_delay = `buff_delay;

    assign    #buff_delay out = in;

    //always @(posedge out) 
    //testbench.m1.PwrCntr[PwrC] = testbench.m1.PwrCntr[PwrC] + 1;

endmodule
/*------------------------------------------------*/