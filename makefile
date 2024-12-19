FILENAME ?= default.txt

src = ../xilinx-verilog-emulators/carry.v ../xilinx-verilog-emulators/lut.v ../gpccode/gpc1_1.v ../gpccode/gpc135_4.v ../gpccode/gpc1343_5.v ../gpccode/gpc2135_5.v ../gpccode/gpc1406_5.v ../gpccode/gpc1415_5.v ../gpccode/gpc1423_5.v ../gpccode/gpc15_3.v ../gpccode/gpc215_4.v ../gpccode/gpc117_4.v ../gpccode/gpc2116_5.v ../gpccode/gpc1163_5.v ../gpccode/gpc3_2.v ../gpccode/gpc23_3.v ../gpccode/gpc223_4.v ../gpccode/gpc2223_5.v ../gpccode/gpc7_3.v ../gpccode/gpc207_4.v ../gpccode/gpc606_5.v ../gpccode/gpc615_5.v ../gpccode/gpc623_5.v ../gpccode/gpc1325_5.v ../LCU/LCUs.v
all : testbench

testbench: $(src) $(FILENAME)
		iverilog -g2012 $(src) $(FILENAME) 
