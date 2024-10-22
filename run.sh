#!/bin/bash

for size in `seq 8 16`
do
    ./experiment_min_slice.py $size
done
