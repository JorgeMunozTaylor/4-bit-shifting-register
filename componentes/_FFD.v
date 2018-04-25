/*---------------Jorge Munoz Taylor---------------*/
/*--------------------A53863----------------------*/
/*-----------Universidad de Costa Rica------------*/
/*------------Circuitos Digitales 2---------------*/
/*-------------------I-2018-----------------------*/

/*texas instruments CD74HC74-1->0.30, 10->0.20, 100->0.084 */
/*Asynchronous SET and RESET*/
module FLIPFLOP(
    CLK,
    RESET,
    SET,
    D,
    Q,
    NQ //Entrada Q invertida
);
    parameter  PwrC = 0;
    input      CLK;
    input      RESET;
    input      SET;
    input      D;
    output reg Q;
    output reg NQ;

    always @(*)
    begin
        case(SET)
            0:  begin 
                    if(RESET == 1) 
                        begin
                        NQ <= ~Q;
                        #`T_clk_q Q <= 1;
                        
                        end
                    else if(RESET == 0) 
                        begin
                        NQ <= ~Q;
                        #`T_clk_q Q  <= 1;
                        //$write("\nWarning:SET=RESET=0 es un estado inestable.");
                        end
                    //else $write("\nERROR: RESET solo puede ser 0 o 1.");
                end

            1:  begin
                    if(RESET == 0)
                        begin 
                        NQ <= ~Q;
                        #`T_clk_q Q <= 0;
                        end
 
                    else if(RESET==1 && CLK==0)
                        begin
                        NQ <= ~Q;
                        #`T_clk_q Q  <= Q;
                        end
                end

            //default: $write("\nERROR: SET solo puede ser 0 o 1.");

        endcase

    end //Fin de always

    always @(posedge CLK)
    begin

        if(SET==1 && RESET==1 && D==1)
            begin
                NQ <= ~Q;
                #`T_clk_q Q <= 1;
            end
        else if(SET==1 && RESET==1 && D==0)
            begin
                NQ <= ~Q;
                #`T_clk_q Q <= 0;
            end

    end //Fin de always

    always @(posedge Q) 
    testbench.m1.PwrCntr[PwrC] = testbench.m1.PwrCntr[PwrC] + 1;

endmodule
/*------------------------------------------------*/