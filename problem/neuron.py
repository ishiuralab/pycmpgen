#!/usr/bin/env pyhtno3

from problem import problem


class Neuron(problem.Problem):
    def __init__(self, size, dstlimit, stagenum, gpclist=problem.default_gpclist):
        super().__init__(gpclist)
        self.stagenum = stagenum
        self.colnum = size.bit_length()
        self.src = [0 for _ in range(self.colnum)]
        self.src[0] = (size // 2) + (size % 3 > 0)
        self.src[1] = self.src[0] - (size % 3 == 1)
        self.dst = [dstlimit] * self.colnum
        self.gpclimit = size
        self.rowlimit = size
        self.validate()
