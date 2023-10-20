#!/bin/sh

#cleanup
rm -rf obj_dir
rm -f counter.vcd

verilator -Wall --cc --trace counter.sv --exe top_tb.cpp
verilator -Wall --cc --trace bin2bcd.sv --exe top_tb.cpp
verilator -Wall --cc --trace top.sv --exe top_tb.cpp

make -j -C obj_dir/ -f Vtop.mk Vtop

obj_dir/Vtop