/*---------------Jorge Munoz Taylor---------------*/
/*-----------University of Costa Rica-------------*/
/*--------------Digital Circuits 2----------------*/
/*-------------------I-2018-----------------------*/

module Test5( /*Parallel load*/
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
	initial MODO 	= `PARA_LOAD;
	initial S_IN 	= `LOW;
	initial D 		= 4'b0000;
	
	always #`CLK_t5 CLK = !CLK; 

	initial	#(2*`CLK_t5)  D = 4'b0010;
	initial	#(4*`CLK_t5)  D = 4'b1111;
	initial	#(6*`CLK_t5)  D = 4'b0011;
	initial	#(8*`CLK_t5)  D = 4'b0100;
	initial	#(10*`CLK_t5) D = 4'b0101;
	initial	#(12*`CLK_t5) D = 4'b0110;
	initial	#(14*`CLK_t5) D = 4'b0111;
	initial	#(16*`CLK_t5) D = 4'b1000;
	initial	#(18*`CLK_t5) D = 4'b1001;
	initial	#(20*`CLK_t5) D = 4'b1010;
	initial	#(22*`CLK_t5) D = 4'b1011;
	initial	#(24*`CLK_t5) D = 4'b1100;
	initial	#(26*`CLK_t5) D = 4'b1101;
	initial	#(28*`CLK_t5) D = 4'b1110;
	initial	#(30*`CLK_t5) D = 4'b1111;

endmodule
