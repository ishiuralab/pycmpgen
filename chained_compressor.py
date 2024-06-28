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
        gpcs = self.build_gpc_chains(stg)
        print(gpcs)

    def build_gpc_chains(self, stg):
        gpcusage = copy.deepcopy(self.gpcusage[stg])
        chains = copy.deepcopy(self.chains[stg])

        def build_chain(start):
            dp = [(i, 0, None) for i in range(self.colnum)]
            que = deque([start])
            upmost = start
            while len(que):
                src = que.popleft()
                prev, plen, _ = dp[src]
                for idx, gpc in enumerate(self.gpclist):
                    if gpcusage[src][idx] > 0:
                        width = len(gpc['dst'])
                        dst = min(src + width - 1, self.colnum - 1)
                        _, nplen, _ = dp[dst]
                        if plen + 1 > nplen:
                            dp[dst] = src, plen + 1, idx
                            if chains[dst] > 0 and dst < self.colnum - 1:
                                que.append(dst)
                            else:
                                upmost = max(upmost, dst)
            if upmost == start:
                _, _, idx = dp[upmost]
                gpcusage[start][idx] -= 1
                return None
            upper = upmost
            path = []
            idx = None
            while upper != start:
                lower, _, idx = dp[upper]
                path.append(idx)
                gpcusage[lower][idx] -= 1
                chains[upper] -= 1
                upper = lower
            return start, path[::-1]

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
