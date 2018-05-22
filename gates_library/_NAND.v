/*---------------Jorge Munoz Taylor---------------*/
/*--------------------A53863----------------------*/
/*-----------University of Costa Rica-------------*/
/*--------------Digital circuits 2----------------*/
/*-------------------I-2018-----------------------*/

module NAND(
    input     in1,
    input     in2,
    output    out
);
    parameter  PwrC       = 0;
    localparam nand_delay = `nand_delay;

    assign #nand_delay out = ~(in1 & in2);

    //always @(posedge out) 
    //testbench.m1.PwrCntr[PwrC] = testbench.m1.PwrCntr[PwrC] + 1;

endmodule
/*------------------------------------------------*/
