#!/usr/bin/env python3

import sys
import math
import random
from functools import reduce
from collections import deque

from chained_optimizer import ChainedOptimizer
from compressor import int2bin, emulate_gpc, indent, Compressor


class ChainedCompressor(Compressor):
    def build(self):
        self.netlist = []
        self.wires = []
        dst_stage = self.stages[0][:]
        for stg in range(self.stagenum):
            dst_stage, netlist, wires = self.build_stage(stg, dst_stage)
            self.netlist.append(netlist)
            self.wires.append(wires)

    def randomtest(self, iteration=1000):
        for i in range(iteration):
            srcstage = [
                list(map(int,f'{random.randint(0, (1 << num) - 1):0{num}b}'))[::-1]
                for num in self.src
            ]
            exptotal = sum(sum(bits) << col for col, bits in enumerate(srcstage))
            dststage = self.simulate(srcstage)
            dsttotal = sum(sum(bits) << col for col, bits in enumerate(dststage))
            test = exptotal == exptotal
            print(
                f'i: {i + 1:{math.ceil(math.log10(iteration + 1))}} / {iteration}, exp: 0x{exptotal:0{(self.colnum + 3)//4}x}, dst: 0x{dsttotal:0{(self.colnum + 3)//4}x}',
                file=sys.stderr
            )
            assert(test)

    def simulate(self, srcstage):
        stagebits = [
            [
                [
                    0 for _ in range(column)
                ] for column in stage
            ] for stage in self.stages
        ]
        stagebits[0] = srcstage
        for stg in range(self.stagenum):
            for chain in self.netlist[stg]:
                col = chain['base']
                summation = 0
                for c, interval in enumerate(chain['src']):
                    if interval != None:
                        begin, end = interval
                        summation += sum(stagebits[stg][col + c][begin : end]) << c
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

    def get_chaingpc_shape(self, idxlist):
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

    def build_stage(self, stg, src_limit):
        chains = self.build_gpc_chains(stg)
        src_stage = [0 for _ in range(self.colnum)]
        dst_stage = [0 for _ in range(self.colnum)]
        netlist = []
        for lower, chain in chains:
            chaingpc = {'base': lower, 'idxlist': chain, 'src': [], 'dst': []}
            srcshape, dstshape = self.get_chaingpc_shape(chain)

            for col, num in enumerate(srcshape):
                if lower + col < self.colnum:
                    chaingpc['src'].append(
                        (
                            min(src_limit[lower + col], src_stage[lower + col]),
                            min(src_limit[lower + col], src_stage[lower + col] + num)
                        )
                    )
                    src_stage[lower + col] += num
                else:
                    chaingpc['src'].append(None)

            for col, num in enumerate(dstshape):
                if lower + col < self.colnum:
                    chaingpc['dst'].append(
                        (dst_stage[lower + col], dst_stage[lower + col] + num)
                    )
                    dst_stage[lower + col] += num
                else:
                    chaingpc['dst'].append(None)
            netlist.append(chaingpc)

        wires = []
        for col, (limit, used) in enumerate(zip(src_limit, src_stage)):
            if limit > used:
                wires.append({
                    'base': col,
                    'src': (used, limit),
                    'dst': (dst_stage[col], dst_stage[col] + limit - used)
                })
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

if __name__ == '__main__':
    import problem
    import json

    with open('gpclist/reduced.json', 'r') as f:
        gpclist = json.loads(f.read())

    # prob = problem.multiplier.Multiplier(32, 2, 3, gpclist).get_dict()
    prob = problem.square.Square(32, 2, 3, gpclist).get_dict()
    opt = ChainedOptimizer(prob, objective=None)
    sol = opt.solve()
    comp = ChainedCompressor(prob, sol)
    comp.randomtest()
