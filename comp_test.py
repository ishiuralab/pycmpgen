#!/usr/bin/env python3

from global_shift_register import ShiftRegister
from global_testbench import Testbench
from compressor2_1 import Compressor2_1

if __name__ == '__main__':
    import json
    from optimizer import InfeasibleProblemError
    import sys
    import random

    row, col = map(int,sys.argv[1:])
    seed_velue = 0
    random.seed(seed_velue)
    with open('gpclist/default.json', 'r') as f:
        gpclist = json.loads(f.read())
    comp2_1 = Compressor2_1(row, col, gpclist)
    dst_form = [1] * len(comp2_1.comp.stages[-1])
    src_form = comp2_1.comp.stages[0]
    # print(comp2_1.comp.stages,file=sys.stderr)
    with open(f'comp2_1_{row}_{col}.v', 'w') as f:
        print(ShiftRegister(src_form, dst_form, comp2_1.module_name).gen_module(), file=f)
        print(comp2_1.gen_module(), file=f)
        print(Testbench(src_form, dst_form, comp2_1.module_name).gen_module(), file=f)