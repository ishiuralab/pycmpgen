#!/usr/bin/env python3

import sys
import json
import time
import os
import re

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

def optimize(filename):
    with open(filename, 'r') as f:
        presolve = json.loads(f.read())
    prob = presolve['problem']
    feasible = presolve['solution']
    presolve_time = presolve['time']
    opt = Optimizer(prob, objective='cost')
    opt.add_mip_start(feasible)
    begin = time.time()
    optimized = opt.solve(timelimit=10)
    end = time.time()
    return {
        'problem': prob,
        'solution': optimized,
        'time': {
            'presolve': presolve_time,
            'optimize': end - begin
        },
        'objective': opt.objective_value
    }

def optimize_helper(src):
    if match := re.match(r'^results/2116/presolve_(.+\.json)$', src):
        optimized = optimize(src)
        basename = match.group(1)
        with open(f'results/optimized2116/optimized_{basename}', 'w') as f:
            print(json.dumps(optimized), file=f)

if __name__ == '__main__':
    optimize_helper(sys.argv[1])
