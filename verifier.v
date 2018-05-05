/*---------------Jorge Munoz Taylor---------------*/
/*-----------University of Costa Rica-------------*/
/*--------------Digital Circuits 2----------------*/
/*-------------------I-2018-----------------------*/

/*This module compare the outputs Q and S OUT,*/

module verificador(
    Q0_0,
    Q0_1,
    Q0_2,
    Q0_3,
    Q0_4,

    Q1_0,
    Q1_1,
    Q1_2,
    Q1_3,
    Q1_4,

    S_OUT_0,
    S_OUT_1
);
    input [3:0] Q0_0;
    input [3:0] Q0_1;
    input [3:0] Q0_2;
    input [3:0] Q0_3;
    input [3:0] Q0_4;

    input [3:0] Q1_0;
    input [3:0] Q1_1;
    input [3:0] Q1_2;
    input [3:0] Q1_3;
    input [3:0] Q1_4;

    input [4:0] S_OUT_0;
    input [4:0] S_OUT_1;

    //integer bandera = 0;
    
    always @(Q0_0 or Q1_0)
    begin
        if( Q0_0 != Q1_0 ) 
        begin
            $write("\n\t%d ERROR in test 1: Q  t=%dns",bandera,$realtime);
            //bandera = bandera+1;         
        end
    end

    always @(Q0_1 or Q1_1)
    begin
        if( Q0_1 != Q1_1 )
        begin
            $write("\n\t%d ERROR in test 2: Q  t=%dns",bandera,$realtime);
            //bandera = bandera+1;
        end
    end

    always @(Q0_2 or Q1_2)
    begin
        if( Q0_2 != Q1_2 )
        begin
            $write("\n\t%d ERROR in test 3: Q  t=%dns",bandera,$realtime);
            //bandera = bandera+1;         
        end
    end

    always @(Q0_3 or Q1_3)
    begin
        if( Q0_3 != Q1_3 )
        begin
            $write("\n\t%d ERROR in test 4: Q  t=%dns",bandera,$realtime);
            //bandera = bandera+1;          
        end
    end

    always @(Q0_4 or Q1_4)
    begin
        if( Q0_4 != Q1_4 )
        begin
            $write("\n\t%d ERROR in test 5: Q  t=%dns",bandera,$realtime);
            //bandera = bandera+1;        
        end
    end
/*----------------------------------------------------------------------------*/

    always @(S_OUT_0[0] or S_OUT_1[0])
    begin
        if( S_OUT_0[0] != S_OUT_1[0] )
        begin
            $write("\n\t%d ERROR in test 1: S_OUT  t=%dns",bandera,$realtime);
            //bandera = bandera+1;
        end
    end

    always @(S_OUT_0[1] or S_OUT_1[1])
    begin
        if( S_OUT_0[1] != S_OUT_1[1] )
        begin
            $write("\n\t%d ERROR in test 2: S_OUT  t=%dns",bandera,$realtime);
            //bandera = bandera+1;
        end
    end

    always @(S_OUT_0[2] or S_OUT_1[2])
    begin
        if( S_OUT_0[2] != S_OUT_1[2] )
        begin
            $write("\n\t%d ERROR in test 3: S_OUT  t=%dns",bandera,$realtime);
            //bandera = bandera+1;
        end
    end

    always @(S_OUT_0[3] or S_OUT_1[3])
    begin
        if( S_OUT_0[3] != S_OUT_1[3] )
        begin
            $write("\n\t%d ERROR in test 4: S_OUT  t=%dns",bandera,$realtime);
            //bandera = bandera+1;
        end
    end

    always @(S_OUT_0[4] or S_OUT_1[4])
    begin
        if( S_OUT_0[4] != S_OUT_1[4] )
        begin
            $write("\n\t%d ERROR in test 5: S_OUT  t=%dns",bandera,$realtime);
            //bandera = bandera+1;
        end
    end


endmodule