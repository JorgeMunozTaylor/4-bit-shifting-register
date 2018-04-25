/*---------------Jorge Munoz Taylor---------------*/
/*--------------------A53863----------------------*/
/*-----------Universidad de Costa Rica------------*/
/*------------Circuitos Digitales 2---------------*/
/*-------------------I-2018-----------------------*/

/*hex CD4069UB, 10->2.99*/
module inversor (
    in,
    out
);

    parameter PwrC = 0; //Constante que cuenta transiciones
    input     in;
    output    out;

    assign    #`inv_delay out = ~in;

    always @(posedge out) 
    testbench.m1.PwrCntr[PwrC] = testbench.m1.PwrCntr[PwrC] + 1;

endmodule
/*------------------------------------------------*/