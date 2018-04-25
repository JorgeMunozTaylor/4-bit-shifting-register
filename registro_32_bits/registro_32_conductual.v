/*---------------Jorge Munoz Taylor---------------*/
/*--------------------A53863----------------------*/
/*-----------Universidad de Costa Rica------------*/
/*------------Circuitos Digitales 2---------------*/
/*-------------------I-2018-----------------------*/

/*Aqui esta el diseno correspondiente al registro desplazable de 32 bits conductual*/
module sout_32_conductual(
    MODO,
    in_sout,
    out_sout 
);
    input  [1:0] MODO;
    input  in_sout;
    output reg out_sout;

    always @(*) 
    begin
        if ( MODO[0]==0 && MODO[1]==0 && in_sout==1)
            out_sout = 1;
        else
            out_sout = 0;
    end

endmodule
/*------------------------------------------------*/

module modos_32_conductual(
    in_MODO,
    out_MODO
);
    input  [1:0] in_MODO;
    output reg out_MODO;

    always @(*)
    begin
        case (in_MODO)
          2'b00: out_MODO = 0;
          2'b01: out_MODO = 0;
          2'b10: out_MODO = 0;
          2'b11: out_MODO = 1; 
        endcase
    end

endmodule
/*------------------------------------------------*/

module sin_32_conductual(
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
    output reg OUT0;
    output reg OUT1;

    always @(*)
    begin
        if(DIR == 0) OUT0 = mux0_0;
        if(DIR == 1) OUT0 = mux0_1;
    end

    always @(*)
    begin
        if(DIR == 0) OUT1 = mux1_0;
        if(DIR == 1) OUT1 = mux1_1;
    end
        
endmodule
/*---------------------------------------------------*/

module mux_conductual (
    in_0, 
    in_1, 
    DIR, 
    OUT
);
    input in_0;
    input in_1;
    input DIR;
    output reg OUT;

    always @(*)
        begin
        if( DIR == 0) OUT = in_0;
        if( DIR == 1) OUT = in_1;
    end
endmodule
/*----------------------------------------------------*/

module reg_32_conductual(
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

    wire cable_out_sin32_0;
    wire cable_out_sin32_1;
    wire cable_out_sin32_2;
    wire cable_out_sin32_3;

    sin_32_conductual sin_32_0_conductual( S_IN, cable_sout[1], cable_sout[7] , cable_sout[1] , DIR, 
                    cable_out_sin32_0, cable_out_sin32_1 );
   
    sin_32_conductual sin_32_1_conductual (cable_sout[6], S_IN, cable_sout[6] , cable_sout[0] , DIR, 
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

    modos_32_conductual modos_32_1_conductual( MODO , cable_modo[0] );
    assign cable_modo[1] = MODO[1];

    genvar i;
    generate //Se generan los 8 registros necesarios
        for (i=0 ; i<=7 ; i=i+1)
        begin

            mux_conductual MUX_(
                in_mux0[i], 
                in_mux1[i], 
                cable_dir[i], 
                cable_mux[i]
            );
                                 
            register4 reg_4_conductual (
                CLK,
                ENB,
                DIR,
                cable_mux[i],
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
            sout_32_conductual sout_32_0_conductual ( MODO, cable_sout[j], S_OUT[j]);
    endgenerate

endmodule
