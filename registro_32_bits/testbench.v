/*---------------Jorge Munoz Taylor---------------*/
/*--------------------A53863----------------------*/
/*-----------Universidad de Costa Rica------------*/
/*------------Circuitos Digitales 2---------------*/
/*-------------------I-2018-----------------------*/

`ifndef INCLUDES_V
    `include "registro_32_bits/includes.v"
`endif

module testbench;

	wire [9:0]  CLK_32;
	wire [9:0]  ENB_32;
	wire [9:0]  DIR_32;
	wire [9:0]  S_IN_32;
	wire [1:0]  MODO_32  [9:0];
	wire [31:0] D_32     [9:0]; 
	wire [31:0] Q_32     [9:0];
	wire [7:0]  S_OUT_32 [9:0];

    Test1_reg_32 prueba_1_32bits(
	    CLK_32  [0],
	    ENB_32  [0],
	    DIR_32  [0],
	    S_IN_32 [0],
	    MODO_32 [0],
	    D_32    [0], 
	    Q_32    [0],
	    S_OUT_32[0]
    );

    reg_32_estructural registro_32_1(
        ENB_32  [0],
        CLK_32  [0],
        S_IN_32 [0],
        DIR_32  [0],
        MODO_32 [0],
        D_32    [0],

        Q_32    [0],
        S_OUT_32[0]
    );
/*-----------------------------------------------*/

    Test2_reg_32 prueba_2_32bits(
	    CLK_32  [1],
	    ENB_32  [1],
	    DIR_32  [1],
	    S_IN_32 [1],
	    MODO_32 [1],
	    D_32    [1], 
	    Q_32    [1],
	    S_OUT_32[1]
    );

    reg_32_estructural registro_32_2(
        ENB_32  [1],
        CLK_32  [1],
        S_IN_32 [1],
        DIR_32  [1],
        MODO_32 [1],
        D_32    [1],

        Q_32    [1],
        S_OUT_32[1]
    );
/*-----------------------------------------------*/

    Test3_reg_32 prueba_3_32bits(
	    CLK_32  [2],
	    ENB_32  [2],
	    DIR_32  [2],
	    S_IN_32 [2],
	    MODO_32 [2],
	    D_32    [2], 
	    Q_32    [2],
	    S_OUT_32[2]
    );

    reg_32_estructural registro_32_3(
        ENB_32  [2],
        CLK_32  [2],
        S_IN_32 [2],
        DIR_32  [2],
        MODO_32 [2],
        D_32    [2],

        Q_32    [2],
        S_OUT_32[2]
    );
/*-----------------------------------------------*/

    Test4_reg_32 prueba_4_32bits(
	    CLK_32  [3],
	    ENB_32  [3],
	    DIR_32  [3],
	    S_IN_32 [3],
	    MODO_32 [3],
	    D_32    [3], 
	    Q_32    [3],
	    S_OUT_32[3]
    );

    reg_32_estructural registro_32_4(
        ENB_32  [3],
        CLK_32  [3],
        S_IN_32 [3],
        DIR_32  [3],
        MODO_32 [3],
        D_32    [3],

        Q_32    [3],
        S_OUT_32[3]
    );
/*-----------------------------------------------*/

    Test5_reg_32 prueba_5_32bits(
	    CLK_32  [4],
	    ENB_32  [4],
	    DIR_32  [4],
	    S_IN_32 [4],
	    MODO_32 [4],
	    D_32    [4], 
	    Q_32    [4],
        S_OUT_32[4]
    );

    reg_32_estructural registro_32_5(
        ENB_32  [4],
        CLK_32  [4],
        S_IN_32 [4],
        DIR_32  [4],
        MODO_32 [4],
        D_32    [4],

        Q_32    [4],
        S_OUT_32[4]
    );
/*-----------------------------------------------*/
/*-----------------------------------------------*/

    Test1_reg_32 prueba_1_32bits_conductual(
	    CLK_32  [5],
	    ENB_32  [5],
	    DIR_32  [5],
	    S_IN_32 [5],
	    MODO_32 [5],
	    D_32    [5], 
	    Q_32    [5],
	    S_OUT_32[5]
    );

    reg_32_conductual registro_32_6(
        CLK_32  [5],
        ENB_32  [5],
        S_IN_32 [5],
        DIR_32  [5],
        MODO_32 [5],
        D_32    [5],

        Q_32    [5],
        S_OUT_32[5]
    );
/*-----------------------------------------------*/

    Test2_reg_32 prueba_2_32bits_conductual(
	    CLK_32  [6],
	    ENB_32  [6],
	    DIR_32  [6],
	    S_IN_32 [6],
	    MODO_32 [6],
	    D_32    [6], 
	    Q_32    [6],
	    S_OUT_32[6]
    );

    reg_32_conductual registro_32_7(
        CLK_32  [6],
        ENB_32  [6],
        S_IN_32 [6],
        DIR_32  [6],
        MODO_32 [6],
        D_32    [6],

        Q_32    [6],
        S_OUT_32[6]
    );
/*-----------------------------------------------*/

    Test3_reg_32 prueba_3_32bits_conductual(
	    CLK_32  [7],
	    ENB_32  [7],
	    DIR_32  [7],
	    S_IN_32 [7],
	    MODO_32 [7],
	    D_32    [7], 
	    Q_32    [7],
	    S_OUT_32[7]
    );

    reg_32_conductual registro_32_8(
        CLK_32  [7],
        ENB_32  [7],
        S_IN_32 [7],
        DIR_32  [7],
        MODO_32 [7],
        D_32    [7],

        Q_32    [7],
        S_OUT_32[7]
    );
/*-----------------------------------------------*/

    Test4_reg_32 prueba_4_32bits_conductual(
	    CLK_32  [8],
	    ENB_32  [8],
	    DIR_32  [8],
	    S_IN_32 [8],
	    MODO_32 [8],
	    D_32    [8], 
	    Q_32    [8],
	    S_OUT_32[8]
    );

    reg_32_conductual registro_32_9(
        CLK_32  [8],
        ENB_32  [8],
        S_IN_32 [8],
        DIR_32  [8],
        MODO_32 [8],
        D_32    [8],

        Q_32    [8],
        S_OUT_32[8]
    );
/*-----------------------------------------------*/

    Test5_reg_32 prueba_5_32bits_conductual(
	    CLK_32  [9],
	    ENB_32  [9],
	    DIR_32  [9],
	    S_IN_32 [9],
	    MODO_32 [9],
	    D_32    [9], 
	    Q_32    [9],
        S_OUT_32[9]
    );

    reg_32_conductual registro_32_10(
        CLK_32  [9],
        ENB_32  [9],
        S_IN_32 [9],
        DIR_32  [9],
        MODO_32 [9],
        D_32    [9],

        Q_32    [9],
        S_OUT_32[9]
    );



    wire [31:0] Contador;
    wire [31:0] dato;
    wire [`Ndir:0] dir;
    wire LE;

    memTrans m1 (dir, LE, dato);
    assign dato = (~LE)? Contador : 32'bz;
    instrumentacion inst1(dir,LE,dato,Contador);
/*-----------------------------------------------*/


    verificador veri(
        Q_32[0],
        Q_32[1],
        Q_32[2],
        Q_32[3],
        Q_32[4],
        Q_32[5],
        Q_32[6],
        Q_32[7],
        Q_32[8],
        Q_32[9],

        S_OUT_32[0],
        S_OUT_32[1],
        S_OUT_32[2],
        S_OUT_32[3],
        S_OUT_32[4],
        S_OUT_32[5],
        S_OUT_32[6],
        S_OUT_32[7],
        S_OUT_32[8],
        S_OUT_32[9]
    );


    initial  
    begin
   	    $dumpfile("pruebas32.vcd");
	    $dumpvars(
            0,
            prueba_1_32bits,
            prueba_2_32bits,
            prueba_3_32bits,
            prueba_4_32bits,
            prueba_5_32bits,

            prueba_1_32bits_conductual,
            prueba_2_32bits_conductual,
            prueba_3_32bits_conductual,
            prueba_4_32bits_conductual,
            prueba_5_32bits_conductual
        );
        #`t_final $finish;
    end
    
endmodule