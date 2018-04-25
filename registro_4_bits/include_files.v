/*---------------Jorge Munoz Taylor---------------*/
/*--------------------A53863----------------------*/
/*-----------Universidad de Costa Rica------------*/
/*------------Circuitos Digitales 2---------------*/
/*-------------------I-2018-----------------------*/

/*Archivo dedicado a incluir todas las partes del 
proyecto con excepcion del testbench*/

`ifndef TIEMPOS_VARIABLES_CONSTANTES_V
    `include "./registro_4_bits/tiempos_variables_constantes.v"
`endif

`ifndef INCLUDE_COMPONENTES_V
    `include "./componentes/include_componentes.v"
`endif

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

`ifndef REGISTRO_4_CONDUCTUAL_V
    `include "./registro_4_bits/registro_4_conductual.v"
`endif

`ifndef TEST1_V
    `include "./tests/test1.v"
`endif

`ifndef TEST2_V
    `include "./tests/test2.v"
`endif

`ifndef TEST3_V
    `include "./tests/test3.v"
`endif

`ifndef TEST4_V
    `include "./tests/test4.v"
`endif

`ifndef TEST5_V
    `include "./tests/test5.v"
`endif

`ifndef VERIFICADOR_4_V
    `include "verificador_4.v"
`endif

`ifndef TRANSICIONES_POTENCIA_V
    `include "transiciones_potencia.v"
`endif


