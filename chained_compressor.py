#!/usr/bin/env python3

import sys
import math
import random
from functools import reduce
from collections import deque

from chained_optimizer import ChainedOptimizer, ChainedOptimizerLsb7
from compressor import int2bin, emulate_gpc, indent, Compressor
from gpcgen import GpcGenerator


class ChainedCompressor(Compressor):
    def build(self):
        self.netlist = []
        self.wires = []
        dst_stage = self.stages[0][:]
        for stg in range(self.stagenum):
            dst_stage, netlist, wires = self.build_stage(stg, dst_stage)
            self.stages[stg + 1] = dst_stage
            self.netlist.append(netlist)
            self.wires.append(wires)

    def randomtest(self, iteration=10000):
        for i in range(iteration):
            srcstage = [list(map(int, f'{random.randint(0, (1 << num) - 1):0{num}b}'))[::-1] for num in self.src]
            exptotal = sum(sum(bits) << col for col, bits in enumerate(srcstage))
            dststage = self.simulate(srcstage)
            dsttotal = sum(sum(bits) << col for col, bits in enumerate(dststage))
            test = exptotal == exptotal
            print(
                f'i: {i + 1:{math.ceil(math.log10(iteration + 1))}} / {iteration}, exp: 0x{exptotal:0{(self.colnum + 3)//4}x}, dst: 0x{dsttotal:0{(self.colnum + 3)//4}x}',
                file=sys.stderr,
            )
            assert test

    def simulate(self, srcstage):
        stagebits = [[[0 for _ in range(column)] for column in stage] for stage in self.stages]
        stagebits[0] = srcstage
        for stg in range(self.stagenum):
            for chain in self.netlist[stg]:
                col = chain['place']
                summation = 0
                for c, interval in enumerate(chain['src']):
                    if interval != None:
                        begin, end = interval
                        summation += sum(stagebits[stg][col + c][begin:end]) << c
                length = len(chain['dst'])
                sumbits = list(map(int, f'{summation:0{length}b}'))[::-1]
                for c, interval in enumerate(chain['dst']):
                    if interval != None:
                        begin, _end = interval
                        stagebits[stg + 1][col + c][begin] = sumbits[c]

            for wire in self.wires[stg]:
                col = wire['base']
                srcbegin, srcend = wire['src']
                dstbegin, dstend = wire['dst']
                for src, dst in zip(range(srcbegin, srcend), range(dstbegin, dstend)):
                    stagebits[stg + 1][col][dst] = stagebits[stg][col][src]
        return stagebits[-1]

    def get_gpcchain_shape(self, idxlist):
        srcshape = []
        dstshape = []
        for idx, gpcidx in enumerate(idxlist):
            partialsrc = [
                self.gpclist[gpcidx]['src'][c] if c < len(self.gpclist[gpcidx]['src']) else 0
                for c in range(len(self.gpclist[gpcidx]['dst']) - 1)
            ]
            partialsrc[0] -= 1
            srcshape += partialsrc
            dstshape += self.gpclist[gpcidx]['dst'][:-1]
        srcshape[0] += 1
        dstshape += [1]
        return srcshape, dstshape

    def get_gpcchain_name(self, srcshape, dstshape):
        stripped = srcshape[: next((len(srcshape) - i for i, x in enumerate(srcshape[::-1]) if x != 0), len(srcshape))]
        return 'gpc' + ''.join(map(str, stripped[::-1])) + f'_{len(dstshape)}'

    def get_gpcchain_spec(self, idxlist):
        srcshape, dstshape = self.get_gpcchain_shape(idxlist)
        spec = {'shape': srcshape, 'lut': [], 'cin': 0}
        offset = 0
        for gpcidx in idxlist:
            luts = []
            for symm, asymm, ttable in self.gpclist[gpcidx]['spec']['lut']:
                symm_ = [i + offset for i in symm]
                asymm_ = None if asymm == None else asymm + offset
                luts.append([symm_, asymm_, ttable])
            spec['lut'] += luts
            offset += sum(self.gpclist[gpcidx]['src']) - 1
        return spec

    def build_stage(self, stg, src_limit):
        chains = self.build_gpc_chains(stg)
        src_stage = [0 for _ in range(self.colnum)]
        dst_stage = [0 for _ in range(self.colnum)]
        netlist = []
        for lower, chain in chains:
            chaingpc = {'place': lower, 'idxlist': chain, 'src': [], 'dst': []}
            srcshape, dstshape = self.get_gpcchain_shape(chain)

            for col, num in enumerate(srcshape):
                if lower + col < self.colnum:
                    chaingpc['src'].append(
                        (
                            min(src_limit[lower + col], src_stage[lower + col]),
                            min(src_limit[lower + col], src_stage[lower + col] + num),
                        )
                    )
                    src_stage[lower + col] += num
                else:
                    chaingpc['src'].append(None)

            for col, num in enumerate(dstshape):
                if lower + col < self.colnum:
                    chaingpc['dst'].append((dst_stage[lower + col], dst_stage[lower + col] + num))
                    dst_stage[lower + col] += num
                else:
                    chaingpc['dst'].append(None)
            netlist.append(chaingpc)

        wires = []
        for col, (limit, used) in enumerate(zip(src_limit, src_stage)):
            if limit > used:
                wires.append(
                    {'place': col, 'src': (used, limit), 'dst': (dst_stage[col], dst_stage[col] + limit - used)}
                )
                dst_stage[col] += limit - used
        return dst_stage, netlist, wires

    def build_gpc_chains(self, stg):
        gpcusage = self.gpcusage[stg][:]
        chainusage = self.chainusage[stg][:]

        def build_chain(start):
            path = []
            que = deque([start])
            while que:
                src = que.popleft()
                for idx, num in enumerate(gpcusage[src]):
                    if num > 0:
                        path.append(idx)
                        gpcusage[src][idx] -= 1
                        width = len(self.gpclist[idx]['dst']) - 1
                        dst = min(self.colnum - 1, src + width)
                        if chainusage[dst] > 0:
                            chainusage[dst] -= 1
                            que.append(dst)
                        break
            return path

        chains = []
        for col in range(self.colnum):
            while sum(gpcusage[col]) > 0:
                if chain := build_chain(col):
                    chains.append((col, chain))
        return chains

    def gen_module(self, name='compressor'):
        code = ''
        specs = {}
        for chains in self.netlist:
            for chain in chains:
                srcshape, dstshape = self.get_gpcchain_shape(chain['idxlist'])
                chainname = self.get_gpcchain_name(srcshape, dstshape)
                spec = self.get_gpcchain_spec(chain['idxlist'])
                specs[chainname] = spec
        for chainname, spec in specs.items():
            code += GpcGenerator(spec).gen_module()
            code += '\n'
        inputs = [f'input [{num - 1}:0] src{col}' for col, num in enumerate(self.src) if num > 0]
        outputs = [f'output [{num - 1}:0] dst{col}' for col, num in enumerate(self.dst) if num > 0]
        args = '\n' + indent(2) + f',\n{indent(2)}'.join(inputs + outputs)
        code += f'module {name}({args});\n'
        code += self.gen_wire_declarations(1)
        code += self.gen_assignments(1)
        code += self.gen_gpcchain_instantiations(1)
        code += 'endmodule'
        return code

    def gen_wire_declarations(self, level=1):
        code = '\n'
        for stg, stage in enumerate(self.stages):
            for col in range(self.colnum):
                if stage[col] > 0:
                    code += f'{indent(level)}wire [{stage[col] - 1}:0] stage{stg}_{col};\n'
        return code

    def gen_assignments(self, level=1):
        code = '\n'
        for col, num in enumerate(self.stages[0]):
            if num > 0:
                code += indent(level) + f'assign stage{0}_{col} = src{col};\n'
        for col, num in enumerate(self.stages[-1]):
            if num > 0:
                code += indent(level) + f'assign dst{col} = stage{self.stagenum}_{col};\n'
        for stg in range(self.stagenum):
            for wire in self.wires[stg]:
                col = wire['place']
                srcbegin, srcend = wire['src']
                dstbegin, dstend = wire['dst']
                code += (
                    indent(level)
                    + f'assign stage{stg + 1}_{col}[{dstend - 1}:{dstbegin}] = stage{stg}_{col}[{srcend - 1}:{srcbegin}];\n'
                )
        return code

    def gen_gpcchain_instantiations(self, level=1):
        code = '\n'
        for stg in range(self.stagenum):
            for idx, chain in enumerate(self.netlist[stg]):
                col = chain['place']
                srcshape, dstshape = self.get_gpcchain_shape(chain['idxlist'])
                args = []
                for c, (limit, interval) in enumerate(zip(srcshape, chain['src'])):
                    if limit > 0:
                        if interval:
                            begin, end = interval
                            if end - begin == limit:
                                args.append(f'.src{c}(stage{stg}_{col + c}[{end - 1}:{begin}])')
                            elif end == begin:
                                args.append(f'.src{c}({limit}\'h0)')
                            else:
                                vacant = limit - (end - begin)
                                args.append(f'.src{c}({{stage{stg}_{col + c}[{end - 1}:{begin}], {vacant}\'h0}})')
                        else:
                            args.append(f'.src{c}({limit}\'h0)')
                dstpack = []
                for c, interval in enumerate(chain['dst']):
                    if interval:
                        begin, end = interval
                        dstpack.append(f'stage{stg + 1}_{col + c}[{begin}]')
                    else:
                        code += indent(level) + f'wire dummy{stg + 1}_{col + c}_{idx};\n'
                        dstpack.append(f'dummy{stg + 1}_{col + c}_{idx}')
                args.append(f'.dst({{{", ".join(dstpack[::-1])}}})')
                argstr = f',\n{indent(level + 2)}'.join(args)
                code += (
                    indent(level)
                    + f'{self.get_gpcchain_name(srcshape, dstshape)} chain{stg}_{idx}(\n{indent(level + 2)}{argstr}\n{indent(level)});\n'
                )
        return code

class ChainedCompressorLsb7(Compressor):
    def build(self):
        for stg in range(self.stagenum):
            for col in range(self.colnum):
                lsb7, non7 = [], []
                for idx, gpc in enumerate(self.gpclist):
                    if gpc['src'][0] == 7 and len(gpc['dst']) == 5:
                        lsb7 += [self.gpcusage[stg][col][idx]]
                    else:
                        non7 += [self.gpcusage[stg][col][idx]]
                self.gpcusage[stg][col] = lsb7 + non7
        self.lsb7gpcs = []
        self.non7gpcs = []
        for gpc in self.gpclist:
            if gpc['src'][0] == 7 and len(gpc['dst']) == 5:
                self.lsb7gpcs.append(gpc)
            else:
                self.non7gpcs.append(gpc)
        self.gpclist = self.lsb7gpcs + self.non7gpcs
        self.netlist = []
        self.wires = []
        dst_stage = self.stages[0][:]
        for stg in range(self.stagenum):
            dst_stage, netlist, wires = self.build_stage(stg, dst_stage)
            self.stages[stg + 1] = dst_stage
            self.netlist.append(netlist)
            self.wires.append(wires)

    def build_stage(self, stg, src_limit):
        chains = self.build_gpc_chains(stg)
        src_stage = [0 for _ in range(self.colnum)]
        dst_stage = [0 for _ in range(self.colnum)]
        netlist = []
        for place, idxlist in chains:
            chaingpc = {'place': place, 'idxlist': idxlist, 'src': [], 'dst': []}
            srcshape, dstshape = self.get_gpcchain_shape(idxlist)
            for col, num in enumerate(srcshape):
                if place + col < self.colnum:
                    chaingpc['src'].append(
                        (
                            min(src_limit[place + col], src_stage[place + col]),
                            min(src_limit[place + col], src_stage[place + col] + num),
                        )
                    )
                    src_stage[place + col] += num
                else:
                    chaingpc['src'].append(None)
            for col, num in enumerate(dstshape):
                if place + col < self.colnum:
                    chaingpc['dst'].append((dst_stage[place + col], dst_stage[place + col] + num))
                    dst_stage[place + col] += num
                else:
                    chaingpc['dst'].append(None)
            netlist.append(chaingpc)
        wires = []
        for col, (limit, used) in enumerate(zip(src_limit, src_stage)):
            if limit > used:
                wires.append(
                    {'place': col, 'src': (used, limit), 'dst': (dst_stage[col], dst_stage[col] + limit - used)}
                )
                dst_stage[col] += limit - used
        return dst_stage, netlist, wires


    def get_gpcchain_shape(self, idxlist):
        srcshape = []
        dstshape = []
        for idx, gpcidx in enumerate(idxlist):
            partialsrc = [
                self.gpclist[gpcidx]['src'][c] if c < len(self.gpclist[gpcidx]['src']) else 0
                for c in range(len(self.gpclist[gpcidx]['dst']) - 1)
            ]
            partialsrc[0] -= 1
            srcshape += partialsrc
            dstshape += self.gpclist[gpcidx]['dst'][:-1]
        if not(self.gpclist[idxlist[0]]['src'][0] == 7 and len(self.gpclist[idxlist[0]]['dst']) == 5):
            srcshape[0] += 1
        dstshape += [1]
        return srcshape, dstshape


    def build_gpc_chains(self, stg):
        gpcusage = self.gpcusage[stg][:]
        chainusage = self.chainusage[stg][:]

        def build_chain(place):
            path = []
            que = deque([place])
            while que:
                src = que.popleft()
                for idx, num in enumerate(gpcusage[src]):
                    if num > 0:
                        path.append(idx)
                        gpcusage[src][idx] -= 1
                        width = len(self.gpclist[idx]['dst']) - 1
                        dst = min(self.colnum - 1, src + width)
                        if chainusage[dst] > 0:
                            chainusage[dst] -= 1
                            que.append(dst)
                        break
            return path

        chains = []
        for col in range(self.colnum):
            while sum(gpcusage[col]) > 0:
                if chain := build_chain(col):
                    chains.append((col, chain))
        return chains

    def randomtest(self, iteration=10000):
        for i in range(iteration):
            srcstage = [list(map(int, f'{random.randint(0, (1 << num) - 1):0{num}b}'))[::-1] for num in self.src]
            exptotal = sum(sum(bits) << col for col, bits in enumerate(srcstage))
            dststage = self.simulate(srcstage)
            dsttotal = sum(sum(bits) << col for col, bits in enumerate(dststage))
            test = exptotal == exptotal
            print(
                f'i: {i + 1:{math.ceil(math.log10(iteration + 1))}} / {iteration}, exp: 0x{exptotal:0{(self.colnum + 3)//4}x}, dst: 0x{dsttotal:0{(self.colnum + 3)//4}x}',
                file=sys.stderr,
            )
            assert test

    def simulate(self, srcstage):
        stagebits = [[[0 for _ in range(column)] for column in stage] for stage in self.stages]
        stagebits[0] = srcstage
        for stg in range(self.stagenum):
            for chain in self.netlist[stg]:
                col = chain['place']
                summation = 0
                for c, interval in enumerate(chain['src']):
                    if interval != None:
                        begin, end = interval
                        summation += sum(stagebits[stg][col + c][begin:end]) << c
                length = len(chain['dst'])
                sumbits = list(map(int, f'{summation:0{length}b}'))[::-1]
                for c, interval in enumerate(chain['dst']):
                    if interval != None:
                        begin, _end = interval
                        stagebits[stg + 1][col + c][begin] = sumbits[c]

            for wire in self.wires[stg]:
                col = wire['place']
                srcbegin, srcend = wire['src']
                dstbegin, dstend = wire['dst']
                for src, dst in zip(range(srcbegin, srcend), range(dstbegin, dstend)):
                    stagebits[stg + 1][col][dst] = stagebits[stg][col][src]
        return stagebits[-1]

    def gen_module(self, name='compressor'):
        code = ''
        specs = {}
        for chains in self.netlist:
            for chain in chains:
                srcshape, dstshape = self.get_gpcchain_shape(chain['idxlist'])
                name = self.get_gpcchain_name(srcshape, dstshape)
                spec = self.get_gpcchain_spec(chain['idxlist'])
                specs[name] = spec
        for name, spec in specs.items():
            code += GpcGenerator(spec).gen_module()
            code += '\n'
        inputs = [f'input [{num - 1}:0] src{col}' for col, num in enumerate(self.src) if num > 0]
        outputs = [f'output [{num - 1}:0] dst{col}' for col, num in enumerate(self.dst) if num > 0]
        args = '\n' + indent(2) + f',\n{indent(2)}'.join(inputs + outputs)
        code += f'module compressor({args});\n'
        code += self.gen_wire_declarations(1)
        code += self.gen_assignments(1)
        code += self.gen_gpcchain_instantiations(1)
        code += 'endmodule'
        return code

    def get_gpcchain_name(self, srcshape, dstshape):
        stripped = srcshape[: next((len(srcshape) - i for i, x in enumerate(srcshape[::-1]) if x != 0), len(srcshape))]
        return 'gpc' + ''.join(map(str, stripped[::-1])) + f'_{len(dstshape)}'

    def get_gpcchain_spec(self, idxlist):
        srcshape, dstshape = self.get_gpcchain_shape(idxlist)

        if self.gpclist[idxlist[0]]['src'][0] == 7:
            if len(self.gpclist[idxlist[0]]['dst']) == 5:
                spec = {'shape': srcshape, 'lut': [], 'cin': None, 'base': 0}
                offset = -1
            else:
                spec = {'shape': [1] + srcshape, 'lut': [[[1],None,2]], 'cin': None, 'base': 1}
                offset = 1
        else:
            spec = {'shape': srcshape, 'lut': [], 'cin': 0, 'base': 0}
            offset = 0
        for gpcidx in idxlist:
            luts = []
            for symm, asymm, ttable in self.gpclist[gpcidx]['spec']['lut']:
                symm_ = [i + offset for i in symm]
                asymm_ = None if asymm == None else asymm + offset
                luts.append([symm_, asymm_, ttable])
            spec['lut'] += luts
            offset += sum(self.gpclist[gpcidx]['src']) - 1
        return spec

    def gen_wire_declarations(self, level=1):
        code = '\n'
        for stg, stage in enumerate(self.stages):
            for col in range(self.colnum):
                if stage[col] > 0:
                    code += f'{indent(level)}wire [{stage[col] - 1}:0] stage{stg}_{col};\n'
        return code

    def gen_assignments(self, level=1):
        code = '\n'
        for col, num in enumerate(self.stages[0]):
            if num > 0:
                code += indent(level) + f'assign stage{0}_{col} = src{col};\n'
        for col, num in enumerate(self.stages[-1]):
            if num > 0:
                code += indent(level) + f'assign dst{col} = stage{self.stagenum}_{col};\n'
        for stg in range(self.stagenum):
            for wire in self.wires[stg]:
                col = wire['place']
                srcbegin, srcend = wire['src']
                dstbegin, dstend = wire['dst']
                code += (
                    indent(level)
                    + f'assign stage{stg + 1}_{col}[{dstend - 1}:{dstbegin}] = stage{stg}_{col}[{srcend - 1}:{srcbegin}];\n'
                )
        return code

    def gen_gpcchain_instantiations(self, level=1):
        code = '\n'
        for stg in range(self.stagenum):
            for idx, chain in enumerate(self.netlist[stg]):
                col = chain['place']
                srcshape, dstshape = self.get_gpcchain_shape(chain['idxlist'])
                args = []
                for c, (limit, interval) in enumerate(zip(srcshape, chain['src'])):
                    if limit > 0:
                        if interval:
                            begin, end = interval
                            if end - begin == limit:
                                args.append(f'.src{c}(stage{stg}_{col + c}[{end - 1}:{begin}])')
                            elif end == begin:
                                args.append(f'.src{c}({limit}\'h0)')
                            else:
                                vacant = limit - (end - begin)
                                args.append(f'.src{c}({{stage{stg}_{col + c}[{end - 1}:{begin}], {vacant}\'h0}})')
                        else:
                            args.append(f'.src{c}({limit}\'h0)')
                dstpack = []
                for c, interval in enumerate(chain['dst']):
                    if interval:
                        begin, end = interval
                        dstpack.append(f'stage{stg + 1}_{col + c}[{begin}]')
                    else:
                        code += indent(level) + f'wire dummy{stg + 1}_{col + c}_{idx};\n'
                        dstpack.append(f'dummy{stg + 1}_{col + c}_{idx}')
                args.append(f'.dst({{{", ".join(dstpack[::-1])}}})')
                argstr = f',\n{indent(level + 2)}'.join(args)
                code += (
                    indent(level)
                    + f'{self.get_gpcchain_name(srcshape, dstshape)} chain{stg}_{idx}(\n{indent(level + 2)}{argstr}\n{indent(level)});\n'
                )
        return code


if __name__ == '__main__':
    import problem
    import json

    with open('gpclist/maximum.json', 'r') as f:
        gpclist = json.loads(f.read())

    prob = problem.popcounter.Popcounter(1024, 1, 10, gpclist).get_dict()
    # prob = problem.multiplier.Multiplier(32, 2, 3, gpclist).get_dict()
    # prob = problem.square.Square(54, 1, 4, gpclist).get_dict()
    opt = ChainedOptimizerLsb7(prob, objective='cost')
    sol = opt.solve(timelimit=120)
    comp = ChainedCompressorLsb7(prob, sol)
    comp.randomtest()
    #print(comp.gen_module())
