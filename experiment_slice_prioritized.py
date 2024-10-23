#!/usr/bin/env python3

import json
import sys
import os
import time

from optimizer import Optimizer, InfeasibleProblemError
from problem.multiplier import Multiplier
from problem.square import Square

TIMELIMIT = 60
OUTPUTDIR = 'results/1023'

try:
    os.makedirs(OUTPUTDIR)
except FileExistsError:
    pass

def main(size, probclass):
    probname = {
        Multiplier: 'mul',
        Square: 'square',
    }[probclass]

    with open('gpclist/maximum_lsb7.json', 'r') as f:
        gpclist = json.loads(f.read())

    for stage in range(1, 100):
        prob = probclass(size, 1, stage, gpclist).get_dict()
        opt = Optimizer(prob, objective = None)
        try:
            sol, cost = opt.solve(TIMELIMIT)
            opt.end()
            minstage = stage
            break
        except InfeasibleProblemError:
            opt.end()

    if not sol:
        with open(f'{OUTPUTDIR}/default_{probname}_digest.txt', 'a') as f:
            print(f'{size:2} solution not found', file=f)
        return

    costs = []
    for stage in range(minstage, minstage + 5):
        opt = Optimizer(prob, objective='cost')
        opt.add_mip_start(sol)
        sol, cost = opt.solve(TIMELIMIT)
        opt.end()
        costs += [cost]
        prob = probclass(size, 1, stage + 1, gpclist).get_dict()
        sol['stages'] += [[1 for _ in range(prob['colnum'])]]
        sol['gpcusage'] += [[[0 for _ in gpclist] for _ in range(prob['colnum'])]]

    outputdir = f'{OUTPUTDIR}/cascade/{probname}{size}'

    with open(f'{OUTPUTDIR}/default_{probname}_digest.txt', 'a') as f:
        print(f'{size:2}, minstage: {minstage}, costs: {costs}', file=f)
    print(f'{size:2}, minstage: {minstage}, costs: {costs}')


if __name__ == '__main__':
    size = int(sys.argv[1])
    main(size, Multiplier)
