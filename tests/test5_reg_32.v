/*---------------Jorge Munoz Taylor---------------*/
/*--------------------A53863----------------------*/
/*-----------Universidad de Costa Rica------------*/
/*------------Circuitos Digitales 2---------------*/
/*-------------------I-2018-----------------------*/

/*Prueba 5*/
module Test5_reg_32( /*Carga en paralelo*/
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
	
	initial CLK 	= `LOW;
	initial	ENB 	= !(`ENABLE);
	initial DIR 	= `LOW; 
	initial MODO 	= `MODO_10;
	initial S_IN 	= `LOW;
	initial D 		= 32'b0;
	
	initial
	begin
		#`CLK_t4 CLK = `HIGH; 
		D = 32'b0010;
		#`CLK_t4 CLK = `LOW;
		#`CLK_t4 CLK = `HIGH; 
		D = 32'b1111;
		#`CLK_t4 CLK = `LOW;
		#`CLK_t4 CLK = `HIGH; 
		D = 32'b0011;
		#`CLK_t4 CLK = `LOW;
		#`CLK_t4 CLK = `HIGH; 
		D = 32'b0100;
		#`CLK_t4 CLK = `LOW;
		#`CLK_t4 CLK = `HIGH; 
		D = 32'b0101;
		#`CLK_t4 CLK = `LOW;
		#`CLK_t4 CLK = `HIGH; 
		D = 32'b0110;
		#`CLK_t4 CLK = `LOW;
		#`CLK_t4 CLK = `HIGH; 
		D = 32'b0111;
		#`CLK_t4 CLK = `LOW;
		#`CLK_t4 CLK = `HIGH; 
		D = 32'b1000;
		#`CLK_t4 CLK = `LOW;
		#`CLK_t4 CLK = `HIGH; 
		D = 32'b1001;
		#`CLK_t4 CLK = `LOW;
		#`CLK_t4 CLK = `HIGH; 
		D = 32'b1010;
		#`CLK_t4 CLK = `LOW;
		#`CLK_t4 CLK = `HIGH; 
		D = 32'b1011;
		#`CLK_t4 CLK = `LOW;
		#`CLK_t4 CLK = `HIGH; 
		D = 32'b1100;
		#`CLK_t4 CLK = `LOW;
		#`CLK_t4 CLK = `HIGH; 
		D = 32'b1101;
		#`CLK_t4 CLK = `LOW;
		#`CLK_t4 CLK = `HIGH;
		D = 32'b1110;
		#`CLK_t4 CLK = `LOW;
		#`CLK_t4 CLK = `HIGH;
		D = 32'b1111;
		#`CLK_t4 CLK = `LOW;
		#`CLK_t4 CLK = `HIGH;
		D = 32'b11110000000000000000000000000000;//
		#`CLK_t4 CLK = `LOW;
		#`CLK_t4 CLK = `HIGH;
		D = 32'b00001111000000000000000000000000;
		#`CLK_t4 CLK = `LOW;
		#`CLK_t4 CLK = `HIGH;		
		D = 32'b00000000111100000000000000000000;
		#`CLK_t4 CLK = `LOW;
		#`CLK_t4 CLK = `HIGH;
		D = 32'b00000000000011110000000000000000;
		#`CLK_t4 CLK = `LOW;
		#`CLK_t4 CLK = `HIGH;
		D = 32'b00000000000000001111000000000000;
		#`CLK_t4 CLK = `LOW;
		#`CLK_t4 CLK = `HIGH;
		D = 32'b00000000000000000000111100000000;
		#`CLK_t4 CLK = `LOW;
		#`CLK_t4 CLK = `HIGH;
		D = 32'b00000000000000000000000011110000;
		#`CLK_t4 CLK = `LOW;
		#`CLK_t4 CLK = `HIGH;
		D = 32'b11111111000000000000000000000000;
		#`CLK_t4 CLK = `LOW;
		#`CLK_t4 CLK = `HIGH;
		D = 32'b00000000111111110000000000000000;
		#`CLK_t4 CLK = `LOW;
		#`CLK_t4 CLK = `HIGH;
		D = 32'b00000000000000001111111100000000;
		#`CLK_t4 CLK = `LOW;
		#`CLK_t4 CLK = `HIGH;
		D = 32'b00000000000000000000000011111111;
		#`CLK_t4 CLK = `LOW;
		#`CLK_t4 CLK = `HIGH;
		D = 32'b10000000000000100000000000000001;
		#`CLK_t4 CLK = `LOW;
		#`CLK_t4 CLK = `HIGH;
		D = 32'b00000001000000000000000100000000;
		#`CLK_t4 CLK = `LOW;
		#`CLK_t4 CLK = `HIGH;
		D = 32'b11111111111111111111111111111111;
		#`CLK_t4 CLK = `LOW;
		#`CLK_t4 CLK = `HIGH;
		D = 32'b00000000000000000000000000000000;
		#`CLK_t4 CLK = `LOW;
		#`CLK_t4 CLK = `HIGH;
		D = 32'b10101010101010101010101010101010;
		#`CLK_t4 CLK = `LOW;
		#`CLK_t4 CLK = `HIGH;
		D = 32'b01010101010101010101010101010101;
	end

endmodule
