#!/usr/bin/env python3

import sys
import os
import json
import time

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))
from compressor import Compressor
from problem.rectangle import Rectangle
from optimizer import Optimizer, InfeasibleProblemError
from rowadder2_1gen import Rowadder2_1Gen


class Compressor2_1:
    def __init__(self, row, col, gpclist=None):
        self.row = row
        self.col = col
        self.dst_length = (row - 1).bit_length() + col
        self.module_name = f'compressor2_1_{self.row}_{self.col}'
        self.indent = '    '
        begin = time.time()
        for stage in range(1, 10):
            try:
                prob = Rectangle(row, col, 2, stage, gpclist)
                opt = Optimizer(prob.get_dict(), objective=None)
                sol = opt.solve(timelimit=10)
                break
            except InfeasibleProblemError:
                pass
        presolve_elapsed = time.time() - begin
        begin = time.time()
        opt = Optimizer(prob.get_dict(), objective='cost')
        opt.add_mip_start(sol)
        sol = opt.solve(timelimit=10)
        optimize_elapsed = time.time() - begin
        with open(f'comp2_1_{row}_{col}_{stage}.json', 'w') as f:
            print(json.dumps({'problem': prob.get_dict(), 'solution': sol, 
                              'presolve':presolve_elapsed, 'optimize' : optimize_elapsed}),file=f)
        self.comp = Compressor(prob.get_dict(), sol)
        self.comp_outs = []
        for i, size in enumerate(self.comp.stages[-1]):
            if size > 0:
                self.comp_outs.append(f'comp_out{i}')
        self.r2_1 = Rowadder2_1Gen(len(self.comp_outs))
        if self.comp.randomtest(1 << 10):
            print('PASS', file=sys.stderr)
        else:
            print('FAIL', file=sys.stderr)
            exit(0)

    def gen_module(self):
        code = ''
        code += f'module {self.module_name}(\n'
        code += f'{self.get_module_arguments()});\n\n'
        code += self.gen_wire_declarations(1)
        code += self.gen_compressor_instantiation(1)
        code += self.gen_rowadder2_1_instantiation(1)
        # code += self.gen_assignment(1)
        code += 'endmodule\n'
        code += f'{self.comp.gen_module()}\n'
        code += f'{self.r2_1.gen_module()}\n'
        return code

    def get_module_arguments(self):
        args = []
        for src in [f'src{i}' for i in range(self.col)]:
            args.append(f'{self.indent}input [{self.row - 1}:0]{src}')
        for i in range(self.dst_length):
            args.append(f'{self.indent}output dst{i}')
        return ',\n'.join(args)

    def gen_wire_declarations(self, level):
        code = ''
        for i, size in enumerate(self.comp.stages[-1]):
            if size > 0:
                code += f'{self.indent * level}wire [{size - 1}:0] comp_out{i};\n'
        return code

    def gen_compressor_instantiation(self, level):
        code = ''
        code += f'{self.indent * level}compressor compressor_inst(\n'
        code += f'{self.get_compressor_arguments(level + 1)}\n'
        code += f'{self.indent * level});\n'
        return code

    def get_compressor_arguments(self, level):
        args = []
        for i in range(self.col):
            args.append(f'{self.indent * level}.src{i}(src{i})')
        for i, comp_out in enumerate(self.comp_outs):
            args.append(f'{self.indent * level}.dst{i}({comp_out})')
        return ',\n'.join(args)

    # def get_compressor_sorces(self, src_col):
    #     args = []
    #     for i in range(self.row)[::-1]:
    #         args.append(f'src{i}[{src_col}]')
    #     return ', '.join(args)

    def gen_rowadder2_1_instantiation(self, level):
        code = ''
        code += f'{self.indent * level}{self.r2_1.module_name} rowadder2_1inst(\n'
        code += f'{self.get_rowadder2_1_arguments(level + 1)}\n'
        code += f'{self.indent * level});\n'
        return code

    def get_rowadder2_1_arguments(self, level):
        args = []
        args.append(f'{self.indent * level}.src0({{{self.get_rowadder2_1_sorces(0)}}})')
        args.append(f'{self.indent * level}.src1({{{self.get_rowadder2_1_sorces(1)}}})')
        args.append(f'{self.indent * level}.dst0({{{self.get_rowadder2_1_dsts()}}})')
        return ',\n'.join(args)

    def get_rowadder2_1_sorces(self, rownum):
        args = []
        for i, size in enumerate(self.comp.stages[-1][::-1]):
            if size == 2:
                args.append(f'comp_out{len(self.comp.stages[-1]) - i - 1}[{rownum}]')
            elif size == 1:
                if rownum == 1:
                    args.append('1\'h0')
                elif rownum == 0:
                    args.append(f'comp_out{len(self.comp.stages[-1]) - i - 1}[{rownum}]')
        return ', '.join(args)

    def get_rowadder2_1_dsts(self):
        args = []
        for i in range(self.dst_length):
            args.append(f'dst{self.dst_length-1-i}')
        return ', '.join(args)

    # def gen_assignment(self, level):
    #     code = ''
    #     code += f'{self.indent * level}assign dst = out[{self.dst_length - 1}:0];\n'
    #     return code

if __name__ == '__main__':
    row, col, stage = map(int, sys.argv[1:4])
    with open(f'gpclist/comp2_1_{row}_{col}_{stage}.json', 'r') as f:
        gpclist = json.loads(f.read())
    comp2_1 = Compressor2_1(row, col, stage, gpclist)
    print(comp2_1.gen_module())
    print(comp2_1.comp.colnum, comp2_1.comp.stages, file=sys.stderr)
    a = 15
    print(a.bit_length(), file=sys.stderr)
