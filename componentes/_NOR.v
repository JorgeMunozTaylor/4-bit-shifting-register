/*---------------Jorge Munoz Taylor---------------*/
/*--------------------A53863----------------------*/
/*-----------Universidad de Costa Rica------------*/
/*------------Circuitos Digitales 2---------------*/
/*-------------------I-2018-----------------------*/

/*nexperia quad 74AHCT1G02GW,125  1->0.30, 10->0.20, 100->0.084*/
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

    always @(posedge out) 
    testbench.m1.PwrCntr[PwrC] = testbench.m1.PwrCntr[PwrC] + 1;

endmodule
/*------------------------------------------------*/