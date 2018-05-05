/*---------------Jorge Munoz Taylor---------------*/
/*-----------University of Costa Rica-------------*/
/*--------------Digital Circuits 2----------------*/
/*-------------------I-2018-----------------------*/

`ifndef SHIFT
	`define SHIFT 		2'b00   
`endif

`ifndef CIRC_SHIFT
	`define CIRC_SHIFT 	2'b01
`endif

`ifndef PARA_LOAD
	`define PARA_LOAD 	2'b10
`endif

`ifndef AVOID_MODE
	`define AVOID_MODE 	2'b11
`endif

`ifndef LEFT
	`define LEFT		1'b0
`endif

`ifndef RIGHT
	`define RIGHT		1'b1
`endif

module register4(
	CLK, 	//Clock input
	ENB, 	//Counter enable, LOW active
	DIR, 	//0 left shifting, 1 right shifting
	S_IN, 	//Ripple carry input
	MODO, 	//Change operation modes
	D, 		//Parallel input
	Q, 		//Parallel output
	S_OUT 	//Ripple carry output
);
 
//***********************************************************
	input 	CLK;
	input 	ENB;
	input 	DIR;
	input 	S_IN;
	input 	[1:0] MODO;
	input 	[3:0] D;
	output reg [3:0] Q;
	output reg S_OUT;  

	always @*
		if      (DIR == `LEFT && MODO != `PARA_LOAD)
			S_OUT = Q[3];
		else if (DIR == `RIGHT && MODO != `PARA_LOAD)
			S_OUT = Q[0];
		else
			S_OUT = 0;

	always @(posedge CLK)
	begin
		if(ENB == 1)
			case(MODO) 
			    `SHIFT: 
					if(DIR == `LEFT) //Left
						Q[3:0] <= {Q[2:0], S_IN};
	
					else if(DIR == `RIGHT) //Right
						Q[3:0] <= {S_IN, Q[3:1]};							
						
				`CIRC_SHIFT: //Case 2
					if(DIR == `LEFT) //Left
						Q[3:0] <= {Q[2:0],Q[3]};		
			
					else if(DIR == `RIGHT) //Right
						Q[3:0] <= {Q[0],Q[3:1]};
					
				`PARA_LOAD: Q <= D;

				default: Q <= 4'b0; //Avoid this case
			endcase 
	end

endmodule
/*----------------------------------------------------*/