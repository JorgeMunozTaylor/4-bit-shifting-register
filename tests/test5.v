/*---------------Jorge Munoz Taylor---------------*/
/*--------------------A53863----------------------*/
/*-----------Universidad de Costa Rica------------*/
/*------------Circuitos Digitales 2---------------*/
/*-------------------I-2018-----------------------*/

/*Prueba 5*/
module Test5( /*Carga en paralelo*/
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

	initial CLK 	= `LOW;
	initial	ENB 	= !(`ENABLE);
	initial DIR 	= `LOW; 
	initial MODO 	= `MODO_10;
	initial S_IN 	= `LOW;
	initial D 		= 4'b0000;
	
	initial
	begin
	  	#`CLK_t5 CLK = `HIGH; 
		#`CLK_t5 CLK = `LOW;

		D = 4'b0010;

	  	#`CLK_t5 CLK = `HIGH; 
		#`CLK_t5 CLK = `LOW;

		D = 4'b1111;
		
	  	#`CLK_t5 CLK = `HIGH; 
		#`CLK_t5 CLK = `LOW;

		D = 4'b0011;

	  	#`CLK_t5 CLK = `HIGH; 
		#`CLK_t5 CLK = `LOW;

		D = 4'b0100;

	  	#`CLK_t5 CLK = `HIGH; 
		#`CLK_t5 CLK = `LOW;

		D = 4'b0101;

	  	#`CLK_t5 CLK = `HIGH; 
		#`CLK_t5 CLK = `LOW;

		D = 4'b0110;

	  	#`CLK_t5 CLK = `HIGH; 
		#`CLK_t5 CLK = `LOW;

		D = 4'b0111;

	  	#`CLK_t5 CLK = `HIGH; 
		#`CLK_t5 CLK = `LOW;

		D = 4'b1000;

	  	#`CLK_t5 CLK = `HIGH; 
		#`CLK_t5 CLK = `LOW;

		D = 4'b1001;

	  	#`CLK_t5 CLK = `HIGH; 
		#`CLK_t5 CLK = `LOW;

		D = 4'b1010;

	  	#`CLK_t5 CLK = `HIGH; 
		#`CLK_t5 CLK = `LOW;

		D = 4'b1011;

	  	#`CLK_t5 CLK = `HIGH; 
		#`CLK_t5 CLK = `LOW;

		D = 4'b1100;

	  	#`CLK_t5 CLK = `HIGH; 
		#`CLK_t5 CLK = `LOW;

		D = 4'b1101;

	  	#`CLK_t5 CLK = `HIGH; 
		#`CLK_t5 CLK = `LOW;

		D = 4'b1110;

	  	#`CLK_t5 CLK = `HIGH; 
		#`CLK_t5 CLK = `LOW;

		D = 4'b1111;

	  	#`CLK_t5 CLK = `HIGH; 
		#`CLK_t5 CLK = `LOW;
	end

endmodule
