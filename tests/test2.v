/*---------------Jorge Munoz Taylor---------------*/
/*-----------University of Costa Rica-------------*/
/*--------------Digital Circuits 2----------------*/
/*-------------------I-2018-----------------------*/

module Test2( //Right shifting
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
				CLK_t1  	= `CLK_t1;

	localparam	[1:0]	PARA_LOAD	= `PARA_LOAD,
						SHIFT		= `SHIFT;

	initial CLK 	= LOW;
	initial	ENB 	= !(ENABLE);
	initial DIR 	= HIGH; 
	initial MODO 	= PARA_LOAD;
	initial S_IN 	= LOW;
	initial D 		= 4'b1000;  
	
	always #CLK_t1 CLK = !CLK;

	initial #(2 *CLK_t1) MODO = SHIFT;
	initial #(16*CLK_t1) MODO = PARA_LOAD;
	initial #(16*CLK_t1) D    = 4'b1100;
	initial #(18*CLK_t1) MODO = SHIFT;
	
endmodule
/*------------------------------------------------------------------*/
