/*---------------Jorge Munoz Taylor---------------*/
/*--------------------A53863----------------------*/
/*-----------Universidad de Costa Rica------------*/
/*------------Circuitos Digitales 2---------------*/
/*-------------------I-2018-----------------------*/

/*Archivo dedicado a incluir todas las partes del 
proyecto con excepcion del testbench*/

`ifndef TIEMPOS_VARIABLES_CONSTANTES_V
    `include "./registro_32_bits/tiempos_variables_constantes.v"
`endif

`ifndef LIBRARY_V
    `include "./componentes/include_componentes.v"
`endif

/*-----------------------------------------------------*/
`ifndef REGISTRO_4_CONDUCTUAL_V
    `include "./registro_4_bits/registro_4_conductual.v"
`endif

/*-----------------------------------------------------*/
`ifndef MOD_SECUENCIAL_V
    `include "./registro_4_bits/mod_secuencial.v"
`endif

`ifndef MOD_MULTIPLEXADO_V
    `include "./registro_4_bits/mod_multiplexado.v"
`endif

`ifndef MOD_COMBINACIONAL_V
    `include "./registro_4_bits/mod_combinacional.v"
`endif

`ifndef MOD_SOUT_V
    `include "./registro_4_bits/mod_SOUT.v"
`endif

`ifndef REGISTRO_4_ESTRUCTURAL_V
    `include "./registro_4_bits/registro_4_estructural.v"
`endif
/*-------------------------------------------------------*/

`ifndef REGISTRO_32_ESTRUCTURAL_V
    `include "./registro_32_bits/registro_32_estructural.v"
`endif

`ifndef REGISTRO_32_CONDUCTUAL_V
    `include "./registro_32_bits/registro_32_conductual.v"
`endif

`ifndef TEST1_REG_32_V
    `include "./tests/test1_reg_32.v"
`endif

`ifndef TEST2_REG_32_V
    `include "./tests/test2_reg_32.v"
`endif

`ifndef TEST3_REG_32_V
    `include "./tests/test3_reg_32.v"
`endif

`ifndef TEST4_REG_32_V
    `include "./tests/test4_reg_32.v"
`endif

`ifndef TEST5_REG_32_V
    `include "./tests/test5_reg_32.v"
`endif
/*--------------------------------------------------------*/

`ifndef VERIFICADOR_32_V
    `include "verificador_32.v"
`endif

`ifndef TRANSICIONES_POTENCIA_V
    `include"transiciones_potencia.v"
`endif