#!/usr/bin/env python3

import json
import sys
import os
import time

from optimizer import Optimizer, InfeasibleProblemError
from compressor import Compressor
from problem.multiplier import Multiplier
from problem.square import Square

TIMELIMIT = 7200
OUTPUTDIR = 'results/1024'

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
        begin = time.time()
        sol, cost = opt.solve(TIMELIMIT)
        elapsed = time.time() - begin
        opt.end()
        costs += [cost]
        try:
            os.makedirs(f'{OUTPUTDIR}/default_{probname}{size}/')
        except FileExistsError:
            pass
        comp = Compressor(prob=prob, sol=sol)
        with open(f'{OUTPUTDIR}/default_{probname}{size}/default_{probname}{size}_{stage}.json', 'w') as f:
            print(json.dumps(comp.get_dict()), file=f)
        with open(f'{OUTPUTDIR}/default_{probname}{size}/default_{probname}{size}_{stage}.v', 'w') as f:
            print(f'// probclass: {probname}', file=f)
            print(f'// size:      {size}', file=f)
            print(f'// stage:     {stage}', file=f)
            print(f'// cost:      {cost}', file=f)
            print(f'// elapsed:   {elapsed}', file=f)
            print(comp.gen_module(), file=f)
        prob = probclass(size, 1, stage + 1, gpclist).get_dict()
        sol['stages'] += [[1 for _ in range(prob['colnum'])]]
        sol['gpcusage'] += [[[1 if i == 0 else 0 for i in range(len(gpclist))] for _ in range(prob['colnum'])]]

    minslice_stage = minstage + costs.index(min(costs))
    with open(f'results/1024/default_mul{size}/default_mul{size}_{minslice_stage}.json') as f:
        sol = json.loads(f.read())
        src = sol['solution']['stages'][0]
        dst = sol['solution']['stages'][-1]
    with open(f'results/1024/default_mul{size}/default_mul{size}_{minslice_stage}_shift_register.v', 'w') as f:
        print(ShiftRegister(src, dst, 'compressor').gen_module(), file=f)

    with open(f'{OUTPUTDIR}/default_{probname}_digest.txt', 'a') as f:
        print(f'{size:2}, minstage: {minstage}, costs: {costs}', file=f)
    print(f'{size:2}, minstage: {minstage}, costs: {costs}')


if __name__ == '__main__':
    size = int(sys.argv[1])
    main(size, Multiplier)
