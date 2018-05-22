/*---------------Jorge Munoz Taylor---------------*/
/*--------------------A53863----------------------*/
/*-----------University of Costa Rica-------------*/
/*--------------Digital circuits 2----------------*/
/*-------------------I-2018-----------------------*/

/*----------------Time hazards--------------------*/
`ifndef BUFF_DELAY
    `define buff_delay  0
`endif

`ifndef INV_DELAY
    `define inv_delay   55  
`endif

`ifndef NAND_DELAY    
    `define nand_delay  5.2
`endif

`ifndef NOR_DELAY    
    `define nor_delay   3.2 
`endif

`ifndef MUX_DELAY    
    `define mux_delay   11  
`endif

`ifndef T_SU    
    `define T_su        12 
`endif

`ifndef T_HO
    `define T_ho        3   
`endif

`ifndef T_CLK_Q
    `define T_clk_q     11 
`endif

/*--------------------Includes--------------------*/
`ifndef _BUFFER_V
    `define _BUFFER_V
    `include "./gates_library/_BUFFER.v"
`endif 

`ifndef _NOT_V
    `define _NOT_V
    `include "./gates_library/_NOT.v"
`endif

`ifndef _NAND_V
    `define _NAND_V
    `include "./gates_library/_NAND.v"
`endif

`ifndef _NOR_V
    `define _NOR_V
    `include "./gates_library/_NOR.v"
`endif

`ifndef _MUX_V
    `define _MUX_V
    `include "./gates_library/_MUX.v"
`endif

`ifndef _FFD_V
    `define _FFD_V
    `include "./gates_library/_FFD.v"
`endif