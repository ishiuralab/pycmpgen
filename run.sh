#!/bin/bash

for size in `seq 8 16`
do
    ./vld_experiment.py $size
done
