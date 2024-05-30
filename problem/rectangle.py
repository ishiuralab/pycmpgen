import json
from . import problem

class Rectangle(problem.Problem):
    def __init__(self, row, col, dstlimit, stagenum, gpclist=problem.default_gpclist):
        super().__init__(gpclist)
        self.stagenum = stagenum
        self.colnum = (((1 << col) - 1) * row).bit_length()
        self.src = [row] * col + [0] * (self.colnum - col)
        self.dst = [dstlimit] * self.colnum
        self.gpclimit = row
        self.rowlimit = row
        self.validate()
