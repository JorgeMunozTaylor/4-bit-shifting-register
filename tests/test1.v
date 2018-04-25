/*---------------Jorge Munoz Taylor---------------*/
/*--------------------A53863----------------------*/
/*-----------Universidad de Costa Rica------------*/
/*------------Circuitos Digitales 2---------------*/
/*-------------------I-2018-----------------------*/

/*Prueba 1*/
module Test1( //Desplazamiento a la izquierda
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

	input  [3:0] Q;
	input  S_OUT;
	
	reg CLK;
	reg ENB;
	reg DIR;
	reg S_IN;
	reg [1:0] MODO;
	reg [3:0] D;

	initial CLK 		= `LOW;
	initial ENB 		= !(`ENABLE);
	initial DIR 		= `LOW;
	initial MODO 		= `MODO_10; 
	initial S_IN 		= `LOW;
	initial D 			= 4'b0001;

	initial
	begin
	  	#`CLK_t1 CLK = `HIGH; //Pone 1 en el registro
		#`CLK_t1 CLK = `LOW;

		MODO 		 = `MODO_00;

		#`CLK_t1 CLK = `HIGH;
		#`CLK_t1 CLK = `LOW;

		#`CLK_t1 CLK = `HIGH;
		#`CLK_t1 CLK = `LOW;

		#`CLK_t1 CLK = `HIGH;
		#`CLK_t1 CLK = `LOW;

		#`CLK_t1 CLK = `HIGH;
		#`CLK_t1 CLK = `LOW;

		#`CLK_t1 CLK = `HIGH;
		#`CLK_t1 CLK = `LOW;
	end
		
endmodule
/*------------------------------------------------------------------*/
