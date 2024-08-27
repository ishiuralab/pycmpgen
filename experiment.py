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

TIMELIMIT = 10
OUTPUTDIR = 'results/0827'

def indent(level):
    return '    ' * level

def test_default(size, probclass, probname):
    with open('gpclist/maximum_nolsb7.json', 'r') as f:
        gpclist = json.loads(f.read())
    for stage in range(1, 10):
        prob = probclass(size, 2, stage, gpclist).get_dict()
        opt = Optimizer(prob, objective=None)
        presolve_elapsed_times = []
        try:
            begin = time.time()
            sol = opt.solve(TIMELIMIT)
        except InfeasibleProblemError:
            presolve_elapsed_times += [time.time() - begin]
            continue
        presolve_elapsed_times += [time.time() - begin]

        opt = Optimizer(prob, objective='cost')
        optimize_begin = time.time()
        sol = opt.solve(TIMELIMIT)
        optimize_elapsed = time.time() - optimize_begin
        break

    comp = Compressor(prob, sol)

    outputdir = f'{OUTPUTDIR}/default/{probname}{size}'
    try:
        os.makedirs(outputdir)
    except FileExistsError:
        pass

    name = 'compressor'
    src = sol['stages'][0]
    dst = sol['stages'][-1]

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
    for stage in range(1, 10):
        prob = probclass(size, 1, stage, gpclist).get_dict()
        opt = ChainedOptimizerLsb7(prob, objective=None)
        presolve_elapsed_times = []
        try:
            begin = time.time()
            sol = opt.solve(TIMELIMIT)
        except InfeasibleProblemError:
            presolve_elapsed_times += [time.time() - begin]
            continue
        presolve_elapsed_times += [time.time() - begin]

        opt = ChainedOptimizerLsb7(prob, objective='cost')

        optimize_begin = time.time()
        sol = opt.solve(TIMELIMIT)
        optimize_elapsed = time.time() - optimize_begin
        break

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
