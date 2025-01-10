make run:
		iverilog -o output testbench.v
		vvp output
		gtkwave results.vcd

make clean:
		rm -fr output *.vcd