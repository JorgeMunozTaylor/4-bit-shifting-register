/*---------------Jorge Munoz Taylor---------------*/
/*--------------------A53863----------------------*/
/*-----------Universidad de Costa Rica------------*/
/*------------Circuitos Digitales 2---------------*/
/*-------------------I-2018-----------------------*/

/*Prueba 3*/
module Test3( /*Desplazamiento circular a la izquierda*/
	CLK,
	ENB,
	DIR,
	S_IN,
	MODO,
	D, 
	Q,
	S_OUT
	);

	output CLK;
	output ENB;
	output DIR;
	output S_IN;
	output [1:0] MODO;
	output [3:0] D;

	input [3:0] Q;
	input S_OUT;
	
	reg CLK;
	reg ENB;
	reg DIR;
	reg S_IN;
	reg [1:0] MODO;
	reg [3:0] D;

	initial CLK 		= `LOW;
	initial	ENB 		= !(`ENABLE);
	initial DIR 		= `LOW; 
	initial MODO 		= `MODO_10;
	initial #96.35 MODO = `MODO_01;
	initial S_IN 		= `LOW;
	initial D 			= 4'b1000; 	

	initial
	begin
	  	#`CLK_t3 CLK = `HIGH; //Pone 1 en el registro
		#`CLK_t3 CLK = `LOW;

	  	#`CLK_t3 CLK = `HIGH;
		#`CLK_t3 CLK = `LOW;

	  	#`CLK_t3 CLK = `HIGH;
		#`CLK_t3 CLK = `LOW;

	  	#`CLK_t3 CLK = `HIGH;
		#`CLK_t3 CLK = `LOW;

	  	#`CLK_t3 CLK = `HIGH;
		#`CLK_t3 CLK = `LOW;

	  	#`CLK_t3 CLK = `HIGH;
		#`CLK_t3 CLK = `LOW;

	  	#`CLK_t3 CLK = `HIGH;
		#`CLK_t3 CLK = `LOW;

	  	#`CLK_t3 CLK = `HIGH;
		#`CLK_t3 CLK = `LOW;

	  	#`CLK_t3 CLK = `HIGH;
		#`CLK_t3 CLK = `LOW;

	  	#`CLK_t3 CLK = `HIGH;
		#`CLK_t3 CLK = `LOW;

	  	#`CLK_t3 CLK = `HIGH;
		#`CLK_t3 CLK = `LOW;
	end

endmodule
/*------------------------------------------------------------------*/
