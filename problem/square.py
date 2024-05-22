#!/usr/bin/env python3

import json
from . import problem


class Square(problem.Problem):
    def __init__(self, size, dstlimit, stagenum, gpclist=problem.default_gpclist):
        super().__init__(gpclist)
        self.stagenum = stagenum
        self.colnum = (((1 << size) - 1) * size).bit_length()
        self.src = [size] * size + [0] * (self.colnum - size)
        self.dst = [dstlimit] * self.colnum
        self.gpclimit = size
        self.rowlimit = size
        self.validate()


if __name__ == '__main__':
    sq = Square(32, 6, 4)
    print(json.dumps(sq.get_dict()))
