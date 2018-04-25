/*---------------Jorge Munoz Taylor---------------*/
/*--------------------A53863----------------------*/
/*-----------Universidad de Costa Rica------------*/
/*------------Circuitos Digitales 2---------------*/
/*-------------------I-2018-----------------------*/

/*Prueba 1*/
module Test1_reg_32( //Desplazamiento a la izquierda
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

	input  [31:0] Q;
	input  [7:0]  S_OUT;
	
	initial CLK 		= `LOW;
	initial ENB 		= !(`ENABLE);
	initial DIR 		= `LOW;
	initial MODO 		= `MODO_10; 
	initial S_IN 		= `LOW;
	initial D 			= 32'b00000000000000000000000000000001;

	initial
	begin
	  	#`CLK_t1 CLK = `HIGH; //Pone 1 en el registro
		#`CLK_t1 CLK = `LOW;

		MODO 		 = `MODO_00;

        repeat(33)
        begin
		    #`CLK_t1 CLK = `HIGH;
		    #`CLK_t1 CLK = `LOW;
        end

	end
		
endmodule
/*------------------------------------------------------------------*/
