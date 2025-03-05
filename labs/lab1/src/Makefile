make run:
		iverilog -o output binaryAdder_tb.v
		vvp output
		gtkwave test.vcd

make clean:
		rm -fr output *.vcd