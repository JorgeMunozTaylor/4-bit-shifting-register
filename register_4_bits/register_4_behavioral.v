/*---------------Jorge Munoz Taylor---------------*/
/*-----------University of Costa Rica-------------*/
/*--------------Digital Circuits 2----------------*/
/*-------------------I-2018-----------------------*/
module register4(
	input 				CLK, 	//Clock input
	input 				ENB, 	//Counter enable, LOW active
	input 				DIR, 	//0 left shifting, 1 right shifting
	input 				S_IN, 	//Ripple carry input
	input 		[1:0] 	MODO, 	//Change operation modes
	input 		[3:0]	D, 		//Parallel input
	output reg 	[3:0] 	Q, 		//Parallel output
	output reg 		 	S_OUT 	//Ripple carry output
);
//***********************************************************
	localparam [1:0] SHIFT 		= 2'b00,
					 CIRC_SHIFT = 2'b01,
					 PARA_LOAD 	= 2'b10,
					 AVOID_MODE = 2'b11;

	localparam	LEFT  = 1'b0,
				RIGHT = 1'b1;

	always @(*)	if 		(DIR == LEFT  && MODO != PARA_LOAD) S_OUT = Q[3];
				else if (DIR == RIGHT && MODO != PARA_LOAD) S_OUT = Q[0];
				else 	S_OUT = 0;

	always @(posedge CLK)	if(ENB == 1)
							case(MODO) 
			    				SHIFT: 	if		(DIR == LEFT) 	Q[3:0] <= {Q[2:0], S_IN};
										else if	(DIR == RIGHT) 	Q[3:0] <= {S_IN, Q[3:1]};							
						
								CIRC_SHIFT:	if		(DIR == LEFT) 	Q[3:0] <= {Q[2:0],Q[3]};		
											else if	(DIR == RIGHT)	Q[3:0] <= {Q[0],Q[3:1]};
					
								PARA_LOAD: 	Q <= D;

								AVOID_MODE: Q <= 4'b0; //Avoid this case
							endcase 
	
endmodule
/*----------------------------------------------------*/