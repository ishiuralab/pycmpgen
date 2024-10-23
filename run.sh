#!/bin/bash

for size in `seq 8 16`
do
    ./experiment_slice_prioritized.py $size
done
