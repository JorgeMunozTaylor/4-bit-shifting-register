/*---------------Jorge Munoz Taylor---------------*/
/*-----------University of Costa Rica-------------*/
/*--------------Digital Circuits 2----------------*/
/*-------------------I-2018-----------------------*/

`ifndef INCLUDE_FILES_V
	`define INCLUDE_FILES_V
    `include "./register_4_bits/include_files.v"
`endif

module testbench;

	parameter	t_final = `t_final;

    wire [9:0] CLK;
    wire [9:0] ENB;
    wire [9:0] DIR;
    wire [9:0] S_IN;
    wire [1:0] MODO[9:0];
    wire [3:0] D   [9:0];

    wire [3:0] Q_0 [4:0];
    //wire [3:0] Q_1 [4:0];

    wire [4:0] S_OUT_0;   
    //wire [4:0] S_OUT_1;   

/*-------------------------------------------------*/
`ifdef TEST1_V
Test1 test_1_behavioral( 
	.CLK   (CLK[0]),
	.ENB   (ENB[0]),
	.DIR   (DIR[0]),
	.S_IN  (S_IN[0]),
	.MODO  (MODO[0]),
	.D     (D[0]), 

	.Q     (Q_0[0]),
	.S_OUT (S_OUT_0[0])
	);


register4 register_0(
    .CLK  (CLK [0]),
    .ENB  (ENB [0]),
    .DIR  (DIR [0]),
    .S_IN (S_IN[0]),
    .MODO (MODO[0]),
    .D    (D   [0]), 

    .Q    (Q_0     [0]),   
    .S_OUT(S_OUT_0 [0])
);
`endif
/*-----------------------------------------------*/

`ifdef TEST2_V
Test2 test_2_behavioral( 
	.CLK   (CLK [1]),
	.ENB   (ENB [1]),
	.DIR   (DIR [1]),
	.S_IN  (S_IN[1]),
	.MODO  (MODO[1]),
	.D     (D   [1]), 

	.Q     (Q_0    [1]),
	.S_OUT (S_OUT_0[1])
);

register4 register_1(
	.CLK   (CLK [1]),
	.ENB   (ENB [1]),
	.DIR   (DIR [1]),
	.S_IN  (S_IN[1]),
	.MODO  (MODO[1]),
	.D     (D   [1]), 

	.Q     (Q_0    [1]),
	.S_OUT (S_OUT_0[1])
);
`endif
/*-----------------------------------------------*/

`ifdef TEST3_V
Test3 test_3_behavioral(
	.CLK   (CLK [2]),
	.ENB   (ENB [2]),
	.DIR   (DIR [2]),
	.S_IN  (S_IN[2]),
	.MODO  (MODO[2]),
	.D     (D   [2]), 

	.Q     (Q_0    [2]),
	.S_OUT (S_OUT_0[2])
);

register4 register_2(
	.CLK   (CLK [2]),
	.ENB   (ENB [2]),
	.DIR   (DIR [2]),
	.S_IN  (S_IN[2]),
	.MODO  (MODO[2]),
	.D     (D   [2]), 

	.Q     (Q_0    [2]),
	.S_OUT (S_OUT_0[2])
);
`endif

/*-----------------------------------------------*/

`ifdef TEST4_V
Test4 test_4_behavioral( 
	.CLK   (CLK [3]),
	.ENB   (ENB [3]),
	.DIR   (DIR [3]),
	.S_IN  (S_IN[3]),
	.MODO  (MODO[3]),
	.D     (D   [3]), 

	.Q     (Q_0    [3]),
	.S_OUT (S_OUT_0[3])
);

register4 register_3(
	.CLK   (CLK [3]),
	.ENB   (ENB [3]),
	.DIR   (DIR [3]),
	.S_IN  (S_IN[3]),
	.MODO  (MODO[3]),
	.D     (D   [3]), 

	.Q     (Q_0    [3]),
	.S_OUT (S_OUT_0[3])
);
`endif

/*-----------------------------------------------*/

`ifdef TEST5_V
Test5 test_5_behavioral( 
	.CLK   (CLK [4]),
	.ENB   (ENB [4]),
	.DIR   (DIR [4]),
	.S_IN  (S_IN[4]),
	.MODO  (MODO[4]),
	.D     (D   [4]), 

	.Q     (Q_0    [4]),
	.S_OUT (S_OUT_0[4])
);

register4 register_4(
	.CLK   (CLK [4]),
	.ENB   (ENB [4]),
	.DIR   (DIR [4]),
	.S_IN  (S_IN[4]),
	.MODO  (MODO[4]),
	.D     (D   [4]), 

	.Q     (Q_0    [4]),
	.S_OUT (S_OUT_0[4])
);
`endif

/*-----------------------------------------------*/

`ifdef VERIFIER_V
	verifier Verificador(
    .Q0_0 (Q_0 [0]),
    .Q0_1 (Q_0 [1]),
    .Q0_2 (Q_0 [2]),
    .Q0_3 (Q_0 [3]),
    .Q0_4 (Q_0 [4]),

    .Q1_0 (Q_1 [0]),
    .Q1_1 (Q_1 [1]),
    .Q1_2 (Q_1 [2]),
    .Q1_3 (Q_1 [3]),
    .Q1_4 (Q_1 [4]),

    .S_OUT_0 (S_OUT_0),
    .S_OUT_1 (S_OUT_1)
	);
`endif

`ifdef TRANSITIONS_POWER_V
	parameter		Ndir = `Ndir;
    wire [31:0] 	Contador;
    wire [31:0] 	dato;
    wire [Ndir:0] 	dir;
    wire 			LE;
	/*Circuit output transitions*/
    memTrans m1 (dir, LE, dato);
    assign dato = (~LE)? Contador : 32'bz;
    instrumentacion inst1(dir,LE,dato,Contador);
`endif

initial  
$dumpfile("register_tests.vcd");

initial
begin	
	$dumpvars(
        0,
        test_1_behavioral,
        test_2_behavioral,
        test_3_behavioral,
        test_4_behavioral,
        test_5_behavioral
    );
end

initial
    #t_final $finish;

endmodule