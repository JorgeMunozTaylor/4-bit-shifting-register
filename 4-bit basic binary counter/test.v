/*----Jorge Munoz Taylor A53863----*/
/*----Universidad de Costa Rica----*/
/*------------I-2018---------------*/
/*------------TAREA 1--------------*/

/*Modulo probador, aqui se definiran las senales*/
/*de prueba y el monitor de las salidas y entradas*/
module test(count, enable, clk, reset);
  
    input [1:0] count;
    output reg enable;
    output reg clk;
    output reg reset;

    initial begin
    clk = 0;
    reset = 1;
    enable = 1;
    #10 reset = 0;
    #2000 reset = 1;
    #8 reset = 0;
    #20 enable = 0;
    #50 enable = 1;
    end

    always
    #5 clk = !clk; /*Un reloj con periodo de 5 tiempos*/
   
    initial begin
    $dumpfile("contador.vcd");
    $monitor(" Conteo --> %b", count);/*Imprime resultados en la terminal*/
    $dumpvars(0, count, enable, clk, reset);
    end
   
    initial
    #100 $finish;
endmodule