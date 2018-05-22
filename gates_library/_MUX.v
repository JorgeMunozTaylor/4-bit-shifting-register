/*---------------Jorge Munoz Taylor---------------*/
/*--------------------A53863----------------------*/
/*-----------University of Costa Rica-------------*/
/*--------------Digital circuits 2----------------*/
/*-------------------I-2018-----------------------*/

module MUX(
    input      in1,
    input      in2,
    input      enb, //LOW active
    input      sel, //Selection input
    output reg out
);
    parameter  PwrC      = 0;
    localparam mux_delay = `mux_delay;

    always @(*) if      (enb == 0) #mux_delay out = (sel==0)? in1:in2;
                else if (enb == 1) #mux_delay out = "Z";  //HIGH Z output
       
    //always @(posedge out) 
    //testbench.m1.PwrCntr[PwrC] = testbench.m1.PwrCntr[PwrC] + 1;
    
endmodule
/*------------------------------------------------*/