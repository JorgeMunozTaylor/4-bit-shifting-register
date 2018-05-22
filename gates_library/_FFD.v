/*---------------Jorge Munoz Taylor---------------*/
/*--------------------A53863----------------------*/
/*-----------University of Costa Rica-------------*/
/*--------------Digital circuits 2----------------*/
/*-------------------I-2018-----------------------*/

/*Asynchronous SET and RESET*/
module D_FLIPFLOP(
    input      CLK,
    input      RESET,   //LOW active
    input      SET,     //LOW active
    input      D,       //Input
    output reg Q,       //Output, follow D input
    output     NQ      //Inverted Q 
);
    parameter  PwrC = 0; //Counts output transitions
    localparam T_clk_q = `T_clk_q;

    assign     NQ = ~Q;     

    always @(*) if      ( SET==0 && RESET==0 ) #T_clk_q Q <= 1; //Avoid this situation          
                else if ( SET==0 && RESET==1 ) #T_clk_q Q <= 1;
                else if ( SET==1 && RESET==0 ) #T_clk_q Q <= 0;
    

    always @(posedge CLK)   if      ( SET==1 && RESET==1 && D==1 ) #T_clk_q Q <= 1;
                            else if ( SET==1 && RESET==1 && D==0 ) #T_clk_q Q <= 0;
    
    //always @(posedge Q) 
    //testbench.m1.PwrCntr[PwrC] = testbench.m1.PwrCntr[PwrC] + 1;

endmodule
/*------------------------------------------------*/