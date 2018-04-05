/*----Jorge Munoz Taylor A53863----*/
/*----Universidad de Costa Rica----*/
/*------------I-2018---------------*/
/*------------TAREA 1--------------*/

/*Definicion conductual del contador*/
module contador (count, enable, clk, reset);
   input clk, reset, enable;
   output [1:0] count;

   reg [1:0] count;

   always @(posedge clk) //Durante el flanco positivo
   if(reset == 1) begin
    count <= 0; //La variable count pasa a 0
   end else if (enable == 1) begin
    count <= count+1; //Se le suma 1 a count
   end
endmodule