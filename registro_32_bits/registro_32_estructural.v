/*---------------Jorge Munoz Taylor---------------*/
/*--------------------A53863----------------------*/
/*-----------Universidad de Costa Rica------------*/
/*------------Circuitos Digitales 2---------------*/
/*-------------------I-2018-----------------------*/

/*Aqui esta el diseno correspondiente al registro desplazable de 32 bits*/
module sout_32(
   MODO,
    in_sout,
    out_sout 
);
    input  [1:0] MODO;
    input  in_sout;
    output out_sout;
    wire   [1:0] cable;

    NOR #(24) nor_0  ( MODO[0] , MODO[1] , o_nor_0);

    NOR #(25) nor_1 ( o_nor_0 , `GROUND , cable[0]);
    NOR #(26) nor_2 ( in_sout , `GROUND , cable[1]);

    NOR #(27) nor_3 ( cable[0] , cable[1] , out_sout);
endmodule
/*------------------------------------------------*/

module modos_32(
    in_MODO,
    out_MODO
);
    input  [1:0] in_MODO;
    output out_MODO;
    wire cable;

    NAND #(28) nand_0 ( in_MODO[0] , in_MODO[1] , cable);
    NAND #(29) nand_1 ( cable , `HIGH , out_MODO);
    
endmodule
/*------------------------------------------------*/

module sin_32(
    mux0_0,
    mux0_1,
    mux1_0,
    mux1_1,
    DIR,
    OUT0,
    OUT1
);
    input mux0_0;
    input mux0_1;
    input mux1_0;
    input mux1_1;
    input DIR;
    output OUT0;
    output OUT1;

    MUX #(30) mux_0( mux0_0 , mux0_1 , `ENABLE , DIR , OUT0 );
    MUX #(31) mux_1( mux1_0 , mux1_1 , `ENABLE , DIR , OUT1 );
        
endmodule
/*---------------------------------------------------*/

module reg_32_estructural(
    CLK,
    ENB,
    S_IN,
    DIR,
    MODO,
    D,
    Q,
    S_OUT
);
    input  CLK;
    input  ENB;
    input  S_IN;
    input  DIR;
    input  [1:0] MODO;
    input  [31:0] D;
    output [31:0] Q;
    output [7:0]  S_OUT;

    wire [3:0] cable_0;
    wire [3:0] cable_1;
    wire cable_out_sin32_0;
    wire cable_out_sin32_1;
    wire cable_out_sin32_2;
    wire cable_out_sin32_3;
    wire [7:0] O_MUX;

    sin_32 sin_32_0( S_IN, cable_sout[1], cable_sout[7] , cable_sout[1] , DIR, 
                    cable_out_sin32_0, cable_out_sin32_1 );
   
    sin_32 sin_32_1 (cable_sout[6], S_IN, cable_sout[6] , cable_sout[0] , DIR, 
                    cable_out_sin32_2, cable_out_sin32_3 );
    
    wire [1:0] cable_modo;
    wire [3:0] cable_Q [7:0];
    wire [7:0] cable_sout;
    wire [3:0] cable_D [7:0];

    assign cable_D [0] = D[3:0];
    assign cable_D [1] = D[7:4];
    assign cable_D [2] = D[11:8];
    assign cable_D [3] = D[15:12];
    assign cable_D [4] = D[19:16];
    assign cable_D [5] = D[23:20];
    assign cable_D [6] = D[27:24];
    assign cable_D [7] = D[31:28];

    assign Q [3:0]   = cable_Q[0];
    assign Q [7:4]   = cable_Q[1];
    assign Q [11:8]  = cable_Q[2];
    assign Q [15:12] = cable_Q[3];
    assign Q [19:16] = cable_Q[4];
    assign Q [23:20] = cable_Q[5];
    assign Q [27:24] = cable_Q[6];
    assign Q [31:28] = cable_Q[7];

    assign in_mux0[0] = cable_out_sin32_0;
    assign in_mux0[1] = cable_sout[0];
    assign in_mux0[2] = cable_sout[1];
    assign in_mux0[3] = cable_sout[2];
    assign in_mux0[4] = cable_sout[3];
    assign in_mux0[5] = cable_sout[4];
    assign in_mux0[6] = cable_sout[5];
    assign in_mux0[7] = cable_out_sin32_2;

    assign in_mux1[0] = cable_out_sin32_1;
    assign in_mux1[1] = cable_sout[2];
    assign in_mux1[2] = cable_sout[3];
    assign in_mux1[3] = cable_sout[4];
    assign in_mux1[4] = cable_sout[5];
    assign in_mux1[5] = cable_sout[6];
    assign in_mux1[6] = cable_sout[7];
    assign in_mux1[7] = cable_out_sin32_3;

    assign cable_dir[0] = MODO[0];
    assign cable_dir[1] = DIR;
    assign cable_dir[2] = DIR;
    assign cable_dir[3] = DIR;
    assign cable_dir[4] = DIR;
    assign cable_dir[5] = DIR;
    assign cable_dir[6] = DIR;
    assign cable_dir[7] = MODO[0];

    wire [7:0] in_mux0;
    wire [7:0] in_mux1;
    wire [7:0] cable_dir;
    wire [7:0] cable_mux;

    modos_32 modos_32_1( MODO , cable_modo[0] );
    assign cable_modo[1] = MODO[1];

    
    
    genvar i;
    generate //Se generan los 8 registros necesarios
        for (i=0 ; i<=7 ; i=i+1)
        begin

            MUX #(32) mux_ (in_mux0[i] , in_mux1[i] , `ENABLE , cable_dir[i] , cable_mux[i]);
          
            registro_4_estructural reg_32 (
                ENB,
                CLK,
                cable_mux[i],
                DIR,
                cable_modo, //MODOS
                cable_D[i],
                cable_Q[i], //salidas
                cable_sout[i]
            );

        end
    endgenerate
    
    genvar j;
    generate
        for(j=0; j<=7; j=j+1)
            sout_32 sout_32_0 ( MODO, cable_sout[j], S_OUT[j]);
    endgenerate

endmodule
