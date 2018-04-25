/*---------------Jorge Munoz Taylor---------------*/
/*--------------------A53863----------------------*/
/*-----------Universidad de Costa Rica------------*/
/*------------Circuitos Digitales 2---------------*/
/*-------------------I-2018-----------------------*/

//Memoria con contadores de transicion
module memTrans (
    dir,
    LE, 
    dato
);
    input [`Ndir:0] dir;
    input LE;
    inout [31:0] dato;
    reg [31:0] PwrCntr [`NumPwrCntr:0];

    //Control de E/S del puerto de datos
    assign dato = (LE)? PwrCntr[dir] : 32'bz;
    //Ciclo de escritura para la memoria
    always @(dir or negedge LE or dato)
        begin
            if (~LE) //escritura
            PwrCntr[dir] = dato;
        end
endmodule

/*------------------------------------------------*/

/*Codigo de instrumentacion que se encarga de medir e */
/*imprimir el numero de transiciones de las compuertas*/

module instrumentacion(
    dir,
    LE,
    dato,
    Contador
);
    output reg [31:0] Contador;
    inout      [31:0] dato;
    output reg [`Ndir:0] dir;
    output reg LE;

    reg [31:0] SUMA; //Total de transiciones

    initial
    begin
        //Borre memoria con contadores de transicion
        LE       = 0;
        Contador = 0;
        SUMA     = 0;

        for (dir=0; dir<=`NumPwrCntr; dir=dir+1)
            #1 Contador = 0;

        //Lea y despliegue la memoria con contadores de transicion
        #(`TIEMPO/2) LE = 1;
        
        $write("\n\n********* TRANSICIONES ********\n");
        for (dir=0; dir<=`NumPwrCntr; dir=dir+1)
        begin
            #1 Contador = dato;
            SUMA        = SUMA + Contador;
            $display(,,"\tPwrCntr[%d]: %d", dir, Contador);
        end
        $write("*******************************\n");
        $write("\n\tTotal de transiciones -->%d \n", SUMA);
        $write("\n*******************************\n");
        #1 $finish;

    end

endmodule

/*-----------------------------------------------*/