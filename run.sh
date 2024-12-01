#!/bin/bash

for size in `seq 8 32`
do
    ./vld_experiment.py $size
done
