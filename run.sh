#!/bin/bash

for size in `seq 17 32`
do
    ./vld_experiment.py $size
done
