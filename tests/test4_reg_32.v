/*---------------Jorge Munoz Taylor---------------*/
/*--------------------A53863----------------------*/
/*-----------Universidad de Costa Rica------------*/
/*------------Circuitos Digitales 2---------------*/
/*-------------------I-2018-----------------------*/

/*Prueba 4*/
module Test4_reg_32( /*Desplazamiento circular a la derecha*/
	CLK,
	ENB,
	DIR,
	S_IN,
	MODO,
	D, 
	Q,
	S_OUT
	);

	output reg CLK;
	output reg ENB;
	output reg DIR;
	output reg S_IN;
	output reg [1:0] MODO;
	output reg [31:0] D;

	input [31:0] Q;
	input [7:0]  S_OUT;
	
	initial CLK 		= `LOW;
	initial	ENB 		= !(`ENABLE);
	initial DIR 		= `HIGH; 
	initial MODO 		= `MODO_10;
	initial #96.35 MODO = `MODO_01; //El cambio ocurre en la mitad del ciclo positivo
	initial S_IN 		= `LOW;
	initial D 			= 32'b00000000000000000000000000000001;	
	
	initial
	begin
        repeat (33)
        begin
	  	    #`CLK_t4 CLK = `HIGH; 
		    #`CLK_t4 CLK = `LOW;
        end
	end

endmodule
/*------------------------------------------------------------------*/
