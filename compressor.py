#!/usr/bin/env python3

import copy
import sys
import random


def int2bin(num, width):
    return [int(num & (1 << i) != 0) for i in range(width)]


def emulate_gpc(gpc, srcbits):
    total = sum([sum(colbits) << place for place, colbits in enumerate(srcbits)])
    return [[c] for c in int2bin(total, len(gpc['dst']))]


def indent(num):
    return '   ' * num


class Compressor:
    def __init__(self, prob, sol):
        for key, value in prob.items():
            setattr(self, key, value)
        for key, value in sol.items():
            setattr(self, key, value)
        self.build()

    def build(self):
        remainstage = copy.deepcopy(self.stages)
        self.netlist = []
        for stg in range(self.stagenum):
            netlist, src, dst = self.build_stage(stg)
            self.netlist += netlist
            self.netlist += self.build_stage_wire(stg, src, dst)

    def build_stage(self, stg):
        srcstage = [0 for _ in range(self.colnum)]
        dststage = [0 for _ in range(self.colnum)]
        netlist = []
        for col in range(self.colnum):
            for idx, gpc in enumerate(self.gpclist):
                if sum(gpc['src']) == 1 and sum(gpc['dst']) == 1:
                    continue
                for _ in range(self.gpcusage[stg][col][idx]):
                    src = [[None for _ in range(num)] for num in gpc['src']]
                    for place, num in enumerate(gpc['src']):
                        if col + place < self.colnum:
                            for i in range(num):
                                if srcstage[col + place] < self.stages[stg][col + place]:
                                    src[place][i] = (stg, col + place, srcstage[col + place])
                                    srcstage[col + place] += 1
                    dst = [[None for _ in range(num)] for num in gpc['dst']]
                    for place, num in enumerate(gpc['dst']):
                        if col + place < self.colnum:
                            for i in range(num):
                                if dststage[col + place] < self.stages[stg + 1][col + place]:
                                    dst[place][i] = (stg + 1, col + place, dststage[col + place])
                                    dststage[col + place] += 1
                    netlist.append({'src': src, 'dst': dst, 'idx': idx})
        return netlist, srcstage, dststage

    def build_stage_wire(self, stg, srcstage, dststage):
        netlist = []
        for i, gpc in enumerate(self.gpclist):
            if sum(gpc['src']) == 1 and sum(gpc['dst']) == 1:
                wireidx = i
                break
        for col in range(self.colnum):
            for i in range(srcstage[col], self.stages[stg][col]):
                src = [[(stg, col, i)]]
                dst = [[(stg + 1, col, dststage[col])]]
                dststage[col] += 1
                netlist.append({'src': src, 'dst': dst, 'idx': wireidx})
        self.stages[stg + 1] = dststage
        return netlist

    def simulate(self, srcbits):
        stagebits = [[[0 for _ in range(col)] for col in stage] for stage in self.stages]
        stagebits[0] = srcbits
        for instance in self.netlist:
            src = instance['src']
            dst = instance['dst']
            gpc = self.gpclist[instance['idx']]
            srcbits = [[0 for _ in range(num)] for num in gpc['src']]
            for gpccol in range(len(gpc['src'])):
                for pidx in range(gpc['src'][gpccol]):
                    if src[gpccol][pidx]:
                        stg, col, idx = src[gpccol][pidx]
                        srcbits[gpccol][pidx] = stagebits[stg][col][idx]
            dstbits = emulate_gpc(gpc, srcbits)
            for gpccol in range(len(gpc['dst'])):
                for pidx in range(gpc['dst'][gpccol]):
                    if dst[gpccol][pidx]:
                        stg, col, idx = dst[gpccol][pidx]
                        stagebits[stg][col][idx] = dstbits[gpccol][pidx]
        return stagebits[-1]

    def randomtest(self, iteration=1):
        for i in range(iteration):
            srcbits = [[random.randint(0, 1) for _ in range(col)] for col in self.src]
            dstbits = self.simulate(srcbits)
            srcsum = sum([sum(colbits) << place for place, colbits in enumerate(srcbits)])
            dstsum = sum([sum(colbits) << place for place, colbits in enumerate(dstbits)])
            print(f'{i} 0x{srcsum:0{self.colnum//4 + 1}x} 0x{dstsum:0{self.colnum//4 + 1}x}', file=sys.stderr)
            if srcsum != dstsum:
                return False
        return True

    def get_dict(self):
        return {
            'problem': {
                'stagenum': self.stagenum,
                'gpclist': self.gpclist,
                'colnum': self.colnum,
                'src': self.src,
                'dst': self.dst,
                'gpclimit': self.gpclimit,
                'rowlimit': self.rowlimit,
            },
            'solution': {
                'stages': self.stages,
                'gpcusage': self.gpcusage,
                'netlist': self.netlist,
            },
        }

    def gen_module(self, name='compressor'):
        code = f'module {name} ({self.get_module_arguments()});\n'
        code += self.gen_wire_decralations(1)
        code += self.gen_assignments(1)
        code += self.gen_gpc_instantiations(1)
        code += f'endmodule'
        return code

    def get_module_arguments(self):
        inputargs = []
        for col, rownum in enumerate(self.stages[0]):
            if rownum > 0:
                inputargs.append(f'input wire [{rownum-1}:0] src{col}')
        outputargs = []
        for col, rownum in enumerate(self.stages[-1]):
            if rownum > 0:
                outputargs.append(f'output wire [{rownum-1}:0] dst{col}')
        inputstr = f',\n{indent(2)}'.join(inputargs)
        outputstr = f',\n{indent(2)}'.join(outputargs)
        return f'\n{indent(2)}{inputstr},\n{indent(2)}{outputstr}'

    def gen_wire_decralations(self, indentlevel=1):
        code = '\n'
        for stg, stage in enumerate(self.stages):
            for col in range(self.colnum):
                if stage[col] > 0:
                    code += f'{indent(indentlevel)}wire [{stage[col]-1}:0] stage{stg}_{col};\n'
        return code

    def gen_assignments(self, indentlevel=1):
        code = '\n'
        for col, rownum in enumerate(self.stages[0]):
            if rownum > 0:
                code += f'{indent(indentlevel)}assign stage{0}_{col} = src{col};\n'
        for col, rownum in enumerate(self.stages[-1]):
            if rownum > 0:
                code += f'{indent(indentlevel)}assign dst{col} = stage{self.stagenum}_{col};\n'
        return code

    def gen_gpc_instantiations(self, indentlevel=1):
        code = '\n'
        for index, instance in enumerate(self.netlist):
            srcargs = []
            for col, columns in enumerate(instance['src']):
                if len(columns) > 0:
                    packed = []
                    for column in columns:
                        if column:
                            pstg, pcol, pidx = column
                            packed.append(f'stage{pstg}_{pcol}[{pidx}]')
                        else:
                            packed.append('1\'b0')
                    srcargs.append(f'{{{", ".join(packed)}}}')
            dstargs = []
            for col, columns in enumerate(instance['dst']):
                if len(columns) > 0:
                    for column in columns:
                        if column:
                            pstg, pcol, pidx = column
                            dstargs.append(f'stage{pstg}_{pcol}[{pidx}]')
            srcstr = f',\n{indent(indentlevel+1)}'.join(srcargs)
            dststr = f'{{{",".join(reversed(dstargs))}}}'
            code += indent(indentlevel) + f'{self.gpclist[instance["idx"]]["module"]} '
            code += f'gpc{index} (\n'
            code += indent(indentlevel + 1) + srcstr + ',\n'
            code += indent(indentlevel + 1) + dststr + '\n'
            code += indent(indentlevel) + ');\n'
        return code


if __name__ == '__main__':
    from problem.popcounter import Popcounter
    from problem.multiplier import Multiplier
    from problem.rectangle import Rectangle
    from optimizer import Optimizer
    import json


    # prob = Popcounter(1024, 6, 4)
    # prob = Multiplier(128, 6, 4)
    prob = Rectangle(16, 4, 2, 3)
    opt = Optimizer(prob.get_dict(), objective=None)
    sol = opt.solve()
    opt = Optimizer(prob.get_dict(), objective='cost')
    opt.add_mip_start(sol)
    sol = opt.solve(timelimit=120)
    comp = Compressor(prob.get_dict(), sol)
    print('PASS' if comp.randomtest(1 << 10) else 'FAIL', file=sys.stderr)
    print(comp.gen_module())
