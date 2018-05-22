/*---------------Jorge Munoz Taylor---------------*/
/*-----------University of Costa Rica-------------*/
/*--------------Digital Circuits 2----------------*/
/*-------------------I-2018-----------------------*/

module Test4( /*Circular right shifting*/
	output reg 			CLK,
	output reg 			ENB,
	output reg 			DIR,
	output reg 			S_IN,
	output reg 	[1:0] 	MODO,
	output reg 	[3:0] 	D,
	input 		[3:0] 	Q,
	input 				S_OUT
);
	localparam	LOW 		= `LOW,
				HIGH		= `HIGH,
				ENABLE 		= `ENABLE,
				CLK_t4  	= `CLK_t4;

	localparam	[1:0]	PARA_LOAD	= `PARA_LOAD,
						CIRC_SHIFT	= `CIRC_SHIFT;

	initial CLK 		= LOW;
	initial	ENB 		= !(ENABLE);
	initial DIR 		= HIGH; 
	initial MODO 		= PARA_LOAD;
	initial #96.35 MODO = CIRC_SHIFT; 
	initial S_IN 		= LOW;
	initial D 			= 4'b0001;	
	
	always  #CLK_t4 CLK = !CLK; 
	
endmodule
/*------------------------------------------------------------------*/
