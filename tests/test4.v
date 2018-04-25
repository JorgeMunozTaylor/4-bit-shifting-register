/*---------------Jorge Munoz Taylor---------------*/
/*--------------------A53863----------------------*/
/*-----------Universidad de Costa Rica------------*/
/*------------Circuitos Digitales 2---------------*/
/*-------------------I-2018-----------------------*/

/*Prueba 4*/
module Test4( /*Desplazamiento circular a la derecha*/
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
	initial DIR 		= `HIGH; 
	initial MODO 		= `MODO_10;
	initial #96.35 MODO = `MODO_01; //El cambio ocurre en la mitad del ciclo positivo
	initial S_IN 		= `LOW;
	initial D 			= 4'b0001;	
	
	initial
	begin
	  	#`CLK_t4 CLK = `HIGH; 
		#`CLK_t4 CLK = `LOW;

	  	#`CLK_t4 CLK = `HIGH; 
		#`CLK_t4 CLK = `LOW;

	  	#`CLK_t4 CLK = `HIGH; 
		#`CLK_t4 CLK = `LOW;

	  	#`CLK_t4 CLK = `HIGH; 
		#`CLK_t4 CLK = `LOW;

	  	#`CLK_t4 CLK = `HIGH; 
		#`CLK_t4 CLK = `LOW;

	  	#`CLK_t4 CLK = `HIGH; 
		#`CLK_t4 CLK = `LOW;

	  	#`CLK_t4 CLK = `HIGH; 
		#`CLK_t4 CLK = `LOW;

	  	#`CLK_t4 CLK = `HIGH; 
		#`CLK_t4 CLK = `LOW;

	  	#`CLK_t4 CLK = `HIGH; 
		#`CLK_t4 CLK = `LOW;

	  	#`CLK_t4 CLK = `HIGH; 
		#`CLK_t4 CLK = `LOW;

	  	#`CLK_t4 CLK = `HIGH; 
		#`CLK_t4 CLK = `LOW;
	end

endmodule
/*------------------------------------------------------------------*/
