#!/usr/bin/env python3

import sys
import json
import time

from optimizer import Optimizer, InfeasibleProblemError
import problem

def presolve(probname, probclass):
    for size in range(8, 33):
        for name in ['noda_mt_2116', 'default']:
            with open(f'gpclist/{name}.json', 'r') as f:
                gpclist = json.loads(f.read())
            begin = time.time()
            for stage in range(10):
                prob = probclass(size, 2, stage, gpclist)
                try:
                    opt = Optimizer(prob.get_dict(), objective=None)
                    sol = opt.solve(timelimit=7200)
                    with open(f'results/2116/presolve_{name}_{probname}_{size:02}_{stage}.json', 'w') as f:
                        end = time.time()
                        print(f'size: {size}, stage: {stage}, time: {end - begin:.3f}', file=sys.stderr)
                        print(
                            json.dumps({'problem': prob.get_dict(), 'solution': sol, 'time': end - begin}),
                            file=f
                        )
                        break
                except InfeasibleProblemError:
                    print(f'size: {size}, stage: {stage}, time: {time.time() - begin:.3f}', file=sys.stderr)

if __name__ == '__main__':
    presolve(probname = 'multiplier', probclass = problem.multiplier.Multiplier)
    presolve(probname = 'square', probclass = problem.square.Square)
