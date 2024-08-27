#!/bin/bash

for size in `seq 8 32`
do
    ./experiment.py $size
done
