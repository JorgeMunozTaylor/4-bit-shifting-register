/*---------------Jorge Munoz Taylor---------------*/
/*--------------------A53863----------------------*/
/*-----------Universidad de Costa Rica------------*/
/*------------Circuitos Digitales 2---------------*/
/*-------------------I-2018-----------------------*/

/*Este modulo se encarga de comparar las salidas Q y S OUT,*/
/*en caso de que no sean iguales lo indica en la terminal*/
/*junto con el tiempo donde ocurre la diferencia y el numero de prueba*/
module verificador(
    Q0_0,
    Q0_1,
    Q0_2,
    Q0_3,
    Q0_4,

    Q1_0,
    Q1_1,
    Q1_2,
    Q1_3,
    Q1_4,

    S_OUT_0_0,
    S_OUT_0_1,
    S_OUT_0_2,
    S_OUT_0_3,
    S_OUT_0_4,

    S_OUT_1_0,
    S_OUT_1_1,
    S_OUT_1_2,
    S_OUT_1_3,
    S_OUT_1_4
);
    input [31:0] Q0_0;
    input [31:0] Q0_1;
    input [31:0] Q0_2;
    input [31:0] Q0_3;
    input [31:0] Q0_4;

    input [31:0] Q1_0;
    input [31:0] Q1_1;
    input [31:0] Q1_2;
    input [31:0] Q1_3;
    input [31:0] Q1_4;

    input [7:0] S_OUT_0_0;
    input [7:0] S_OUT_0_1;
    input [7:0] S_OUT_0_2;
    input [7:0] S_OUT_0_3;
    input [7:0] S_OUT_0_4;

    input [7:0] S_OUT_1_0;
    input [7:0] S_OUT_1_1;
    input [7:0] S_OUT_1_2;
    input [7:0] S_OUT_1_3;
    input [7:0] S_OUT_1_4;

    integer bandera = 0; /*Para detectar si ya ocurrio un error*/
    
    always @(*)
    begin
        if( Q0_0 != Q1_0 ) 
        begin
            $write("\n\t%d ERROR en la prueba 1: Q en t=%dns",bandera,$realtime);
            bandera = bandera+1;         
        end
    end

    always @(Q0_1 or Q1_1)
    begin
        if( Q0_1 != Q1_1 )
        begin
            $write("\n\t%d ERROR en la prueba 2: Q en t=%dns",bandera,$realtime);
            bandera = bandera+1;
        end
    end

    always @(Q0_2 or Q1_2)
    begin
        if( Q0_2 != Q1_2 )
        begin
            $write("\n\t%d ERROR en la prueba 3: Q en t=%dns",bandera,$realtime);
            bandera = bandera+1;         
        end
    end

    always @(Q0_3 or Q1_3)
    begin
        if( Q0_3 != Q1_3 )
        begin
            $write("\n\t%d ERROR en la prueba 4: Q en t=%dns",bandera,$realtime);
            bandera = bandera+1;          
        end
    end

    always @(Q0_4 or Q1_4)
    begin
        if( Q0_4 != Q1_4 )
        begin
            $write("\n\t%d ERROR en la prueba 5: Q en t=%dns",bandera,$realtime);
            bandera = bandera+1;        
        end
    end
/*------------------------------------------------------------------------------*/

    always @(S_OUT_0_0 or S_OUT_1_0)
    begin
        if( S_OUT_0_0 != S_OUT_1_0 )
        begin
            $write("\n\t%d ERROR en la prueba 1: S_OUT en t=%dns",bandera,$realtime);
            bandera = bandera+1;
        end
    end


    always @(S_OUT_0_1 or S_OUT_1_1)
    begin
        if( S_OUT_0_1 != S_OUT_1_1 )
        begin
            $write("\n\t%d ERROR en la prueba 2: S_OUT en t=%dns",bandera,$realtime);
            bandera = bandera+1;
        end
    end

    always @(S_OUT_0_2 or S_OUT_1_2)
    begin
        if( S_OUT_0_2 != S_OUT_1_2 )
        begin
            $write("\n\t%d ERROR en la prueba 3: S_OUT en t=%dns",bandera,$realtime);
            bandera = bandera+1;
        end
    end

    always @(S_OUT_0_3 or S_OUT_1_3)
    begin
        if( S_OUT_0_3 != S_OUT_1_3 )
        begin
            $write("\n\t%d ERROR en la prueba 4: S_OUT en t=%dns",bandera,$realtime);
            bandera = bandera+1;
        end
    end

    always @(S_OUT_0_4 or S_OUT_1_4)
    begin
        if( S_OUT_0_4 != S_OUT_1_4 )
        begin
            $write("\n\t%d ERROR en la prueba 5: S_OUT en t=%dns",bandera,$realtime);
            bandera = bandera+1;
        end
    end

endmodule