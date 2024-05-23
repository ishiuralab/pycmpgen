#!/usr/bin/env python3

import sys
import json
import time

from optimizer import Optimizer, InfeasibleProblemError
import problem

def presolve(probname, probclass):
    for name in ['default', 'noda_mt']:
        with open(f'gpclist/{name}.json', 'r') as f:
            gpclist = json.loads(f.read())
        for size in range(16, 33):
            begin = time.time()
            for stage in range(10):
                prob = probclass(size, 2, stage, gpclist)
                try:
                    opt = Optimizer(prob.get_dict(), objective=None)
                    sol = opt.solve(timelimit=7200)
                    end = time.time()
                    with open(f'results/7200/presolve_{name}_{probname}_{size}_{stage}.json', 'w') as f:
                        print(
                            json.dumps({'problem': prob.get_dict(), 'solution': sol, 'time': end - begin}),
                            file=f
                        )
                        break
                except InfeasibleProblemError:
                    pass

if __name__ == '__main__':
    presolve(probname = 'multiplier', probclass = problem.multiplier.Multiplier)
    presolve(probname = 'square', probclass = problem.square.Square)
