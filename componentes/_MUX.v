/*---------------Jorge Munoz Taylor---------------*/
/*--------------------A53863----------------------*/
/*-----------Universidad de Costa Rica------------*/
/*------------Circuitos Digitales 2---------------*/
/*-------------------I-2018-----------------------*/

/*quad 74HC257PW,118, 1->0.45 , 10->0.371 , 100->0.175 */
module MUX(
    in1,
    in2,
    enb,
    sel,
    out
);
    parameter  PwrC = 0;
    input      in1;
    input      in2;
    input      enb; //Activo en bajo
    input      sel;

    output reg out;

    always @(*)
        begin
        if(enb == 0)
        begin
            case(sel)
                0: #`mux_delay out = in1;
                1: #`mux_delay out = in2;
                //default: $write("\nError: valor de SEL incorrecto: %d", sel);
            endcase
        end
        else if(enb == 1)
        begin
            #`mux_delay out = "Z"; //Salida de alta impedancia
            //$write("\nWarning: MUX desconectado");
        end
        //else $write("ERROR:ENB solo puede ser 0 o 1.");
        end //Fin del always

    always @(posedge out) 
    testbench.m1.PwrCntr[PwrC] = testbench.m1.PwrCntr[PwrC] + 1;
endmodule
/*------------------------------------------------*/