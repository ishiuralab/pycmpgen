#!/usr/bin/env python3

import copy
import sys
import random
from collections import deque

from chained_optimizer import ChainedOptimizer
from compressor import int2bin, emulate_gpc, indent, Compressor


class ChainedCompressor(Compressor):
    def build(self):
        self.netlist = []
        for stg in range(self.stagenum):
            self.build_stage(stg)

    def build_stage(self, stg):
        stage_chains = self.build_gpc_chains(stg)
        print(stage_chains)

    def build_gpc_chains(self, stg):
        gpcusage = copy.deepcopy(self.gpcusage[stg])
        chains = copy.deepcopy(self.chains[stg])

        def build_chain(start):
            path = []
            que = deque([start])
            while que:
                src = que.popleft()
                for idx, num in enumerate(gpcusage[src]):
                    if num > 0:
                        path.append((src, self.gpclist[idx]['module']))
                        gpcusage[src][idx] -= 1
                        width = len(self.gpclist[idx]['dst']) - 1
                        dst = min(self.colnum - 1, src + width)
                        if chains[dst] > 0:
                            chains[dst] -= 1
                            que.append(dst)
                        break
            return path
        gpcs = []
        for col in range(self.colnum):
            while sum(gpcusage[col]) > 0:
                if gpc_chain := build_chain(col):
                    gpcs.append(gpc_chain)
        return gpcs

if __name__ == '__main__':
    import problem
    import json

    with open('gpclist/reduced.json', 'r') as f:
        gpclist = json.loads(f.read())

    prob = problem.multiplier.Multiplier(6, 1, 2, gpclist).get_dict()
    opt = ChainedOptimizer(prob, objective=None)
    sol = opt.solve()
    print(sol)
    for stg, stage in enumerate(sol['stages']):
        print(stage[::-1])
    for stg, stage in enumerate(sol['gpcusage']):
        for col, column in enumerate(stage):
            for idx, num in enumerate(column):
                if num > 0:
                    print(f'{stg} {col} {gpclist[idx]["module"]} {num}')
    for stg, stage in enumerate(sol['chains']):
        for col, num in enumerate(stage):
            if num > 0:
                print(f'{stg} {col} chain {num}')
    for stg, stage in enumerate(sol['wireusage']):
        for col, num in enumerate(stage):
            if num > 0:
                print(f'{stg} {col} wire {num}')
    comp = ChainedCompressor(prob, sol)
