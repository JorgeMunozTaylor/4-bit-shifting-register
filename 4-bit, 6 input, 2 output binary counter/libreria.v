/*------Codigo verilog creado por Jorge Munoz Taylor----------*/
/*--------Verilog code create by Jorge Munoz Taylor-----------*/

/*Conductual MUX, 2 inputs, selector, Enable and 1 output*/
module condmux(
	in1, 
	in2, 
	ENB, 
	SEL, 
	OUT);

	input in1;
	input in2;
	input [1:0] ENB;
	input SEL;

	output OUT;
	reg OUT;
	
	always @(in1 or in2 or SEL or ENB)
	begin
  		if(SEL == 0 && ENB == 00)
    	OUT <= in1;

  		if(SEL == 1 && ENB == 00)
    	OUT <= in2;
	end

endmodule
/*-------------------------------------------------*/

/*
module comba(
	in1, 
	in2, 
	in3, 
	DIR,
	OUT); 

	input in1;
	input in2;
	input [1:0] in3;
	input DIR;

	output OUT;
	reg OUT;

	always @(in1 or in2 or in3 or DIR)
	begin
		if(in3 == 00 && DIR == 0) 
		OUT = in1; 

		else
		OUT = in2;
	end

endmodule


module combb(
	in1, 
	in2, 
	in3, 
	DIR,
	OUT); 

	input in1;
	input in2;
	input [1:0] in3;
	input DIR;

	output OUT;
	reg OUT;

	always @(in1 or in2 or in3 or DIR)
	begin
		if(in3 == 00 && DIR == 1) 
		OUT = in1; 

		else
		OUT = in2;
	end

endmodule*/
