CC1=iverilog
CC2=vvp
CC3=gtkwave
tb_reg_4=./registro_4_bits/testbench.v
tb_reg32=./registro_32_bits/testbench.v
OUT4=OUT4
OUT32=OUT32
gtkwave4=./pruebas4.vcd
gtkwave32=./pruebas32.vcd

registro4: transiciones4 simulacion4

transiciones4:
	if test -f $(td_reg_4);then $(CC1) -o $(OUT4) $(tb_reg_4)&&$(CC2) $(OUT4);\
	else echo Falta el archivo testbench.v; fi


simulacion4:
	if test -f $(gtkwave4);then $(CC3) $(gtkwave4);else echo Ejecute primero make transiciones4; fi

registro32: transiciones32 simulacion32

transiciones32:
	if test -f $(tb_reg32); then $(CC1) -o $(OUT32) $(tb_reg32)&&$(CC2) $(OUT32); \
	else Echo Falta el testbench del registro de 32 bits; fi

simulacion32:
	if test -f $(gtkwave32); then $(CC3) $(gtkwave32); else echo Ejecute primeto make transiciones32; fi

clean:
	rm -f *.o *.vcd OUT OUT4 OUT32 make