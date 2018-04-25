/*---------------Jorge Munoz Taylor---------------*/
/*--------------------A53863----------------------*/
/*-----------Universidad de Costa Rica------------*/
/*------------Circuitos Digitales 2---------------*/
/*-------------------I-2018-----------------------*/

module register4(
	CLK, //Clock input
	ENB, //Counter enable, si es 1 trabaja normalmente, si es 0 se mantiene 
	DIR, //Si es 0 se desplaza a la izquierda, 0 a la derecha
	S_IN, //Ripple carry input
	MODO, //Cambia los modos de operacion
	D, //Entrada paralela
	Q, //Salida en paralelo
	S_OUT //Ripple carry output
);
 
//***********************************************************
	input CLK;
	input ENB;
	input DIR;
	input S_IN;
	input [1:0] MODO;
	input [3:0] D;

	output [3:0] Q;
	output S_OUT;  

	reg S_OUT;
	reg [3:0] Q;

	always @(MODO or DIR or Q)
	begin
		if(MODO == 00)
		begin
			if(DIR == 0) S_OUT = Q[3];
			if(DIR == 1) S_OUT = Q[0];
		end
		else
			S_OUT = 0;
	end

	always @(posedge CLK) /*Los cambios ocurren en el flanco positivo*/
	begin
		if(ENB == 1)
		begin
			case(MODO) 
			    2'b00: //Case 1
				begin
					if(DIR == 0) //Left
					Q[3:0]<= {Q[2:0], S_IN};
	
					if(DIR == 1) //Right
					Q[3:0]<= {S_IN, Q[3:1]};							
				end
				
				2'b01: //Case 2
				begin 
					if(DIR == 0) //Left
					begin
						Q[3:0] <= {Q[2:0],Q[3]};		
					end

					if(DIR == 1) //Right
					begin
						Q[3:0] <= {Q[0],Q[3:1]};
					end

					S_OUT <= 0;
				end

				2'b10: //Case 3
				begin
					Q <= D;
					S_OUT <= 0;
				end

			endcase 
		  
		end 
		
	end

endmodule
/*----------------------------------------------------*/