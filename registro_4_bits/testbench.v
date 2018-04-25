/*---------------Jorge Munoz Taylor---------------*/
/*--------------------A53863----------------------*/
/*-----------Universidad de Costa Rica------------*/
/*------------Circuitos Digitales 2---------------*/
/*-------------------I-2018-----------------------*/

`ifndef INCLUDE_FILES_V
    `include "./registro_4_bits/include_files.v"
`endif

/*Es el testbench, une todos los modulos escritos*/
module testbench;

    wire [9:0] CLK;
    wire [9:0] ENB;
    wire [9:0] DIR;
    wire [9:0] S_IN;
    wire [1:0] MODO[9:0]; //Arreglo unidimensional de 5 elementos de 2 bits
    wire [3:0] D   [9:0];
    wire [3:0] Q_0 [4:0]; //Q para la salida estructural
    wire [3:0] Q_1 [4:0];

    wire [4:0] S_OUT_0;   
    wire [4:0] S_OUT_1;   

    wire [31:0] Contador;
    wire [31:0] dato;
    wire [`Ndir:0] dir;
    wire LE;

Test1 prueba_1_estructural( 
	CLK     [0],
	ENB     [0],
	DIR     [0],
	S_IN    [0],
	MODO    [0],
	D       [0], 
	Q_0     [0],
	S_OUT_0 [0]
	);

registro_4_estructural registro_0(
    ENB     [0],
    CLK     [0],
    S_IN    [0],
    DIR     [0],
    MODO    [0],
    D       [0], 

    Q_0     [0],   
    S_OUT_0 [0]
);
/*-----------------------------------------------*/

Test2 prueba_2_estructural( 
	CLK     [1],
	ENB     [1],
	DIR     [1],
	S_IN    [1],
	MODO    [1],
	D       [1], 
	Q_0     [1],
	S_OUT_0 [1]
);

registro_4_estructural registro_1(
    ENB     [1],
    CLK     [1],
    S_IN    [1],
    DIR     [1],
    MODO    [1],
    D       [1],

    Q_0     [1],  
    S_OUT_0 [1]
);
/*-----------------------------------------------*/

Test3 prueba_3_estructural(
	CLK     [2],
	ENB     [2],
	DIR     [2],
	S_IN    [2],
	MODO    [2],
	D       [2], 
	Q_0     [2],
	S_OUT_0 [2]
);

registro_4_estructural registro_2(
    ENB     [2],
    CLK     [2],
    S_IN    [2],
    DIR     [2],
    MODO    [2],
    D       [2],

    Q_0     [2],  
    S_OUT_0 [2]
);
/*-----------------------------------------------*/

Test4 prueba_4_estructural(
	CLK     [3],
	ENB     [3],
	DIR     [3],
	S_IN    [3],
	MODO    [3],
	D       [3], 
	Q_0     [3],
	S_OUT_0 [3]
);

registro_4_estructural registro_3(
    ENB     [3],
    CLK     [3],
    S_IN    [3],
    DIR     [3],
    MODO    [3],
    D       [3],

    Q_0     [3],  
    S_OUT_0 [3]
);
/*-----------------------------------------------*/

Test5 prueba_5_estructural( 
	CLK     [4],
	ENB     [4],
	DIR     [4],
	S_IN    [4],
	MODO    [4],
	D       [4], 
	Q_0     [4],
	S_OUT_0 [4]
);

registro_4_estructural registro_4(
    ENB     [4],
    CLK     [4],
    S_IN    [4],
    DIR     [4],
    MODO    [4],
    D       [4],

    Q_0     [4],  
    S_OUT_0 [4]
);
/*-------------------------------------------------*/
/*-----------Parte conductual----------------------*/

Test1 prueba_1_conductual( 
	CLK     [5],
	ENB     [5],
	DIR     [5],
	S_IN    [5],
	MODO    [5],
	D       [5], 
	Q_1     [0],
	S_OUT_1 [0]
	);

register4 registro_5(
    CLK     [5],
    ENB     [5],
    DIR     [5],
    S_IN    [5],
    MODO    [5],
    D       [5], 

    Q_1     [0],   
    S_OUT_1 [0]
);
/*-----------------------------------------------*/

Test2 prueba_2_conductual( 
	CLK     [6],
	ENB     [6],
	DIR     [6],
	S_IN    [6],
	MODO    [6],
	D       [6], 
	Q_1     [1],
	S_OUT_1 [1]
);

register4 registro_6(
    CLK     [6],
    ENB     [6],
    DIR     [6],
    S_IN    [6],
    MODO    [6],
    D       [6],

    Q_1     [1],  
    S_OUT_1   [1]
);
/*-----------------------------------------------*/

Test3 prueba_3_conductual(
	CLK     [7],
	ENB     [7],
	DIR     [7],
	S_IN    [7],
	MODO    [7],
	D       [7], 
	Q_1     [2],
	S_OUT_1 [2]
);

register4 registro_7(
    CLK     [7],
    ENB     [7],
    DIR     [7],
    S_IN    [7],
    MODO    [7],
    D       [7],

    Q_1     [2],  
    S_OUT_1 [2]
);
/*-----------------------------------------------*/

Test4 prueba_4_conductual( 
	CLK     [8],
	ENB     [8],
	DIR     [8],
	S_IN    [8],
	MODO    [8],
	D       [8], 
	Q_1     [3],
	S_OUT_1 [3]
);

register4 registro_8(
    CLK     [8],
    ENB     [8],
    DIR     [8],
    S_IN    [8],
    MODO    [8],
    D       [8],

    Q_1     [3],  
    S_OUT_1 [3]
);
/*-----------------------------------------------*/

Test5 prueba_5_conductual( 
	CLK     [9],
	ENB     [9],
	DIR     [9],
	S_IN    [9],
	MODO    [9],
	D       [9], 
	Q_1     [4],
	S_OUT_1 [4]
);

register4 registro_9(
    CLK     [9],
    ENB     [9],
    DIR     [9],
    S_IN    [9],
    MODO    [9],
    D       [9],

    Q_1     [4],  
    S_OUT_1 [4]
);

verificador Verificador(
    Q_0 [0],
    Q_0 [1],
    Q_0 [2],
    Q_0 [3],
    Q_0 [4],

    Q_1 [0],
    Q_1 [1],
    Q_1 [2],
    Q_1 [3],
    Q_1 [4],

    S_OUT_0,
    S_OUT_1
);

/*Mide las transiciones del circuito*/
    memTrans m1 (dir, LE, dato);
    assign dato = (~LE)? Contador : 32'bz;
    instrumentacion inst1(dir,LE,dato,Contador);

initial  
begin
   	$dumpfile("pruebas4.vcd");
	$dumpvars(
        0,
        prueba_1_estructural,
        prueba_2_estructural,
        prueba_3_estructural,
        prueba_4_estructural,
        prueba_5_estructural,

        prueba_1_conductual,
        prueba_2_conductual,
        prueba_3_conductual,
        prueba_4_conductual,
        prueba_5_conductual
    );
end

initial
    #`t_final $finish;

endmodule