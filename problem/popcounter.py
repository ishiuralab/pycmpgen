#!/usr/bin/env python3

import json
from . import problem

class Popcounter(problem.Problem):
    def __init__(self, size, dstlimit, stagenum):
        super().__init__()
        self.stagenum = stagenum
        self.colnum = size.bit_length()
        self.src = [size] + [0] * (self.colnum - 1)
        self.dst = [dstlimit] * self.colnum
        self.gpclimit = size
        self.rowlimit = size
        self.validate()

if __name__ == '__main__':
    sq = Popcounter(1024, 6, 4)
    print(json.dumps(sq.get_dict()))
