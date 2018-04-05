/*------Codigo verilog creado por Jorge Munoz Taylor----------*/
/*--------Verilog code create by Jorge Munoz Taylor-----------*/

module Test3( /*Circular left shifting*/
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

	initial CLK = 0; 
	
	initial
	begin
	
		ENB = 1;
		DIR = 0;
	  	MODO = 2'b10; 
		S_IN = 0; 
	  	D = 4'b0001;

	  	#1 CLK = 1; //Puts the 0 in the register
		#1 CLK = 0;

		MODO = 2'b01; 

		#1 CLK = 1;
		#1 CLK = 0;

		#1 CLK = 1;
		#1 CLK = 0;

		#1 CLK = 1;
		#1 CLK = 0;

		#1 CLK = 1;
		#1 CLK = 0;

		#1 CLK = 1;
		#1 CLK = 0;

		#1 CLK = 1;
		#1 CLK = 0;

		#1 CLK = 1;
		#1 CLK = 0;

		#1 CLK = 1;
		#1 CLK = 0;

		#1 CLK = 1;
		#1 CLK = 0;

		#1 CLK = 1;
		#1 CLK = 0;
	end

	initial
	begin
   	 $dumpvars(	0,CLK,ENB,DIR,S_IN,MODO,D,Q,S_OUT);
	end

	initial
	 #100 $finish; 

endmodule
/*------------------------------------------------------------------*/
