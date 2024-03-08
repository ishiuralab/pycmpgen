#!/usr/bin/env python3

import json
from . import problem

class Multiplier(problem.Problem):
    def __init__(self, size, dstlimit, stagenum):
        super().__init__()
        self.stagenum = stagenum
        self.colnum = (((1 << size) - 1) ** 2).bit_length()
        self.src = list(range(1, size + 1)) + list(range(size - 1, 0, -1)) + \
            [0] * (self.colnum - (size * 2 - 1))
        self.dst = [dstlimit] * self.colnum
        self.gpclimit = size
        self.rowlimit = size
        self.validate()

if __name__ == '__main__':
    mul = Multiplier(32, 6, 4)
    print(json.dumps(mul.get_dict()))
