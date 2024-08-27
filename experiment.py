#!/usr/bin/env python3

import json
import sys
import os
import time

from optimizer import Optimizer, InfeasibleProblemError
from compressor import Compressor
from chained_optimizer import ChainedOptimizerLsb7
from chained_compressor import ChainedCompressorLsb7
from rowadder import RowAdderGen
from shift_register import ShiftRegister
from testbench import Testbench
from problem.multiplier import Multiplier
from problem.square import Square

TIMELIMIT = 7200
OUTPUTDIR = 'results/0827'

def indent(level):
    return '    ' * level

try:
    os.makedirs(OUTPUTDIR)
except FileExistsError:
    pass

def is_optimum(time):
    try:
        return time < TIMELIMIT
    except TypeError:
        return all(tm < TIMELIMIT for tm in time)

def test_default(size, probclass, probname):
    with open('gpclist/maximum_nolsb7.json', 'r') as f:
        gpclist = json.loads(f.read())
    presolve_elapsed_times = []
    sol = None
    for stage in range(1, 10):
        prob = probclass(size, 2, stage, gpclist).get_dict()
        opt = Optimizer(prob, objective=None)
        try:
            begin = time.time()
            sol, _ = opt.solve(TIMELIMIT)
            break
        except InfeasibleProblemError:
            presolve_elapsed_times += [time.time() - begin]
        presolve_elapsed_times += [time.time() - begin]

    if not sol:
        with open(f'{OUTPUTDIR}/default_{probname}_digest.txt', 'a') as f:
            print(f'{size:2} solution not found', file=f)
        return

    opt = Optimizer(prob, objective='cost')
    opt.add_mip_start(sol)
    optimize_begin = time.time()
    sol, cost = opt.solve(TIMELIMIT)
    optimize_elapsed = time.time() - optimize_begin

    with open(f'{OUTPUTDIR}/default_{probname}_digest.txt', 'a') as f:
        print(f'{size:2}, stage: {"✔" if is_optimum(presolve_elapsed_times) else " "}{stage:2}, cost: {"✔" if is_optimum(optimize_elapsed) else " "}{cost:3}', file=f)

    comp = Compressor(prob, sol)

    outputdir = f'{OUTPUTDIR}/default/{probname}{size}'
    try:
        os.makedirs(outputdir)
    except FileExistsError:
        pass

    name = 'compressor'
    src = sol['stages'][0]
    dst = [num for num in sol['stages'][-1] if num > 0]

    code = f'module {name}'
    args = [f'input [{num - 1}:0] src{c}' for c, num in enumerate(src) if num > 0]
    args += [f'output dst{c}' for c in range(len(dst) + 1)]
    code += f'({", ".join(args)});\n'
    for c, num in enumerate(dst):
        if num > 0:
            code += indent(1) + f'wire [{num - 1}:0] compdst{c};\n'
    args = \
        [f'.src{c}(src{c})' for c, num in enumerate(src) if num > 0] + \
        [f'.dst{c}(compdst{c})' for c, num in enumerate(dst)]
    code += indent(1) + f'{name}_without_rowadder comp({", ".join(args)});\n'
    print(dst)
    assert 0 not in dst

    args = []
    for c, num in enumerate(dst):
        if num == 2:
            args += [f'.src{c}(compdst{c})']
        elif num == 1:
            args += [f'.src{c}({{1\'h0, compdst{c}}})']
        else:
            args += [f'.src{c}(2h\'0)']
    args += [f'.dst{c}(dst{c})' for c in range(len(dst) + 1)]
    code += indent(1) + f'rowadder ra({", ".join(args)});\n'
    code += f'endmodule\n'

    with open(f'{outputdir}/default_{probname}{size}_{stage}.v', 'w') as f:
        print(comp.gen_module(f'{name}_without_rowadder'), file=f)
        print(RowAdderGen(2, len(dst)).gen_module(colwise=True, name='rowadder'), file=f)
        print(code, file=f)
        

    with open(f'{outputdir}/default_{probname}{size}_{stage}_testbench.v', 'w') as f:
        print(Testbench(src, [1] * (len(dst) + 1), name, 1<<10).gen_module(), file=f)

    with open(f'{outputdir}/default_{probname}{size}_{stage}_shift_register.v', 'w') as f:
        print(ShiftRegister(src, [1] * (len(dst) + 1), name).gen_module(), file=f)

    with open(f'{outputdir}/elapsed.txt', 'w') as f:
        print(f'{presolve_elapsed_times=}', file=f)
        print(f'{optimize_elapsed=}', file=f)

    with open(f'{outputdir}/makefile', 'w') as f:
        print(f'testbench: default_{probname}{size}_{stage}_testbench.v default_{probname}{size}_{stage}.v', file=f)
        print(f'\tiverilog default_{probname}{size}_{stage}_testbench.v default_{probname}{size}_{stage}.v ../../../../gpclist/gpc/*.v ../../../../../xilinx-verilog-emulators/*.v -o testbench', file=f)
        print(f'clean:', file=f)
        print(f'\trm testbench', file=f)



def test_cascading(size, probclass, probname):
    with open('gpclist/maximum.json', 'r') as f:
        gpclist = json.loads(f.read())
    presolve_elapsed_times = []
    sol = None
    for stage in range(1, 10):
        prob = probclass(size, 1, stage, gpclist).get_dict()
        opt = ChainedOptimizerLsb7(prob, objective=None)
        try:
            begin = time.time()
            sol, _ = opt.solve(TIMELIMIT)
            break
        except InfeasibleProblemError:
            presolve_elapsed_times += [time.time() - begin]
        presolve_elapsed_times += [time.time() - begin]

    if not sol:
        with open(f'{OUTPUTDIR}/cascade_{probname}_digest.txt', 'a') as f:
            print(f'{size:2} solution not found', file=f)
        return
    opt = ChainedOptimizerLsb7(prob, objective='cost')
    opt.add_mip_start(sol)

    optimize_begin = time.time()
    sol, cost = opt.solve(TIMELIMIT)
    optimize_elapsed = time.time() - optimize_begin

    with open(f'{OUTPUTDIR}/cascade_{probname}_digest.txt', 'a') as f:
        print(f'{size:2}, stage: {"✔" if is_optimum(presolve_elapsed_times) else " "}{stage:2}, cost: {"✔" if is_optimum(optimize_elapsed) else " "}{cost:3}', file=f)

    comp = ChainedCompressorLsb7(prob, sol)

    outputdir = f'{OUTPUTDIR}/cascade/{probname}{size}'
    try:
        os.makedirs(outputdir)
    except FileExistsError:
        pass

    name = 'compressor'
    with open(f'{outputdir}/cascade_{probname}{size}_{stage}.v', 'w') as f:
        print(comp.gen_module(name), file=f)

    src = sol['stages'][0]
    dst = sol['stages'][-1]
    with open(f'{outputdir}/cascade_{probname}{size}_{stage}_testbench.v', 'w') as f:
        print(Testbench(src, dst, name, 1<<10).gen_module(), file=f)

    with open(f'{outputdir}/cascade_{probname}{size}_{stage}_shift_register.v', 'w') as f:
        print(ShiftRegister(src, dst, name).gen_module(), file=f)

    with open(f'{outputdir}/elapsed.txt', 'w') as f:
        print(f'{presolve_elapsed_times=}', file=f)
        print(f'{optimize_elapsed=}', file=f)

    with open(f'{outputdir}/makefile', 'w') as f:
        print(f'testbench: cascade_{probname}{size}_{stage}_testbench.v cascade_{probname}{size}_{stage}.v', file=f)
        print(f'\tiverilog cascade_{probname}{size}_{stage}_testbench.v cascade_{probname}{size}_{stage}.v ../../../../../xilinx-verilog-emulators/*.v -o testbench', file=f)
        print(f'clean:', file=f)
        print(f'\trm testbench', file=f)

if __name__ == '__main__':
    size = int(sys.argv[1])
    test_default(size, Multiplier, 'mul')
    test_cascading(size, Multiplier, 'mul')
    test_default(size, Square, 'square')
    test_cascading(size, Square, 'square')
