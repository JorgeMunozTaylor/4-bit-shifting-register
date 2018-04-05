/*------Codigo verilog creado por Jorge Munoz Taylor----------*/
/*--------Verilog code create by Jorge Munoz Taylor-----------*/

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

	initial CLK = 0;
	
	initial
	begin
	
		ENB = 1;
		DIR = 0;
	  	MODO = 2'b10; 
		S_IN = 0; //In this mode this input is ignored
	  	D = 4'b0;

	  	#1 CLK = 1; //Puts the 0 in the register
		#1 CLK = 0;

		D = 4'b0000; 

		#1 CLK = 1;
		#1 CLK = 0;

		D = 4'b0010;

		#1 CLK = 1;
		#1 CLK = 0;

		D = 4'b0011;

		#1 CLK = 1;
		#1 CLK = 0;

		D = 4'b0100;

		#1 CLK = 1;
		#1 CLK = 0;

		D = 4'b0101;

		#1 CLK = 1;
		#1 CLK = 0;

		D = 4'b0110;

		#1 CLK = 1;
		#1 CLK = 0;

		D = 4'b0111;

		#1 CLK = 1;
		#1 CLK = 0;

		D = 4'b1000;

		#1 CLK = 1;
		#1 CLK = 0;

		D = 4'b1001;

		#1 CLK = 1;
		#1 CLK = 0;

		D = 4'b1010;

		#1 CLK = 1;
		#1 CLK = 0;

		D = 4'b1011;

		#1 CLK = 1;
		#1 CLK = 0;

		D = 4'b1100;

		#1 CLK = 1;
		#1 CLK = 0;

		D = 4'b1101;

		#1 CLK = 1;
		#1 CLK = 0;

		D = 4'b1110;

		#1 CLK = 1;
		#1 CLK = 0;

		D = 4'b1111;
	end

	initial 
	begin
   	 $dumpvars(	0,CLK,ENB,DIR,S_IN,MODO,D,Q,S_OUT);
	end

	initial
	 #100 $finish; 

endmodule
