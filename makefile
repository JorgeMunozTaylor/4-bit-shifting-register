CC1=iverilog
CC2=vvp
CC3=gtkwave
tb_reg_4=./register_4_bits/testbench.v
OUT4=OUT4
gtkwave4=./register_tests.vcd

registro4: transitions simulation

transitions:
	if test -f $(td_reg_4);then $(CC1) -o $(OUT4) $(tb_reg_4)&&$(CC2) $(OUT4);\
	else echo ERROR: Theres no testbench.v; fi

simulation:
	if test -f $(gtkwave4);then $(CC3) $(gtkwave4);else echo First make transitions; fi

clean:
	rm -f *.o *.vcd OUT OUT4 make