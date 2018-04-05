/*------Codigo verilog creado por Jorge Munoz Taylor----------*/
/*--------Verilog code create by Jorge Munoz Taylor-----------*/

`ifndef INCLUDE_FILES_V
    `include "include_files.v"
`endif

module TestBench; 

	wire [4:0]  tbCLK;
	wire [4:0]  tbENB;
	wire [4:0]  tbDIR;
	wire [4:0] tbS_IN;

	wire [1:0] tbMODO0;
	wire [1:0] tbMODO1;
	wire [1:0] tbMODO2;
	wire [1:0] tbMODO3;
	wire [1:0] tbMODO4;

	wire [3:0]  tbD0;
	wire [3:0]  tbD1;
	wire [3:0]  tbD2;
	wire [3:0]  tbD3;
	wire [3:0]  tbD4;

	wire [3:0]  tbQ0;
	wire [3:0]  tbQ1;
	wire [3:0]  tbQ2;
	wire [3:0]  tbQ3;
	wire [3:0]  tbQ4;

	wire [4:0] tbS_OUT;

	register4 DUT_0(tbCLK[0],tbENB[0],tbDIR[0],tbS_IN[0],tbMODO0,tbD0,tbQ0,tbS_OUT[0]); 
	Test1 DUT_test_1(tbCLK[0],tbENB[0],tbDIR[0],tbS_IN[0],tbMODO0,tbD0,tbQ0,tbS_OUT[0]);

	register4 DUT_1(tbCLK[1],tbENB[1],tbDIR[1],tbS_IN[1],tbMODO1,tbD1,tbQ1,tbS_OUT[1]); 
	Test2 DUT_test_2(tbCLK[1],tbENB[1],tbDIR[1],tbS_IN[1],tbMODO1,tbD1,tbQ1,tbS_OUT[1]);

	register4 DUT_2(tbCLK[2],tbENB[2],tbDIR[2],tbS_IN[2],tbMODO2,tbD2,tbQ2,tbS_OUT[2]); 
	Test3 DUT_test_3(tbCLK[2],tbENB[2],tbDIR[2],tbS_IN[2],tbMODO2,tbD2,tbQ2,tbS_OUT[2]);

	register4 DUT_3(tbCLK[3],tbENB[3],tbDIR[3],tbS_IN[3],tbMODO3,tbD3,tbQ3,tbS_OUT[3]); 
	Test4 DUT_test_4(tbCLK[3],tbENB[3],tbDIR[3],tbS_IN[3],tbMODO3,tbD3,tbQ3,tbS_OUT[3]);

	register4 DUT_4(tbCLK[4],tbENB[4],tbDIR[4],tbS_IN[4],tbMODO4,tbD4,tbQ4,tbS_OUT[4]); 
	Test5 DUT_test_5(tbCLK[4],tbENB[4],tbDIR[4],tbS_IN[4],tbMODO4,tbD4,tbQ4,tbS_OUT[4]); 

endmodule
/*-------------------------------------------------------------*/