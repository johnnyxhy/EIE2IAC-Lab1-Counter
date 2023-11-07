#!/bin/sh

#cleanup
rm -rf obj_dir
rm -f counter.vcd

verilator -Wall --cc --trace counter.sv --exe counter_tb_async.cpp

make -j -C obj_dir/ -f Vcounter.mk Vcounter

obj_dir/Vcounter