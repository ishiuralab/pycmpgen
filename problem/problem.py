#!/usr/bin/env python3

import json

default_gpclist = [
    {"src": [1], "dst": [1], "cost": 0, "module": 'gpc1_1'},
    {"src": [5, 2, 3, 1], "dst": [1, 1, 1, 1, 1], "cost": 1, "module": "gpc1325_5"},
    {"src": [3, 4, 3, 1], "dst": [1, 1, 1, 1, 1], "cost": 1, "module": "gpc1343_5"},
    {"src": [5, 3, 1], "dst": [1, 1, 1, 1], "cost": 1, "module": "gpc135_4"},
    {"src": [6, 0, 4, 1], "dst": [1, 1, 1, 1, 1], "cost": 1, "module": "gpc1406_5"},
    {"src": [5, 1, 4, 1], "dst": [1, 1, 1, 1, 1], "cost": 1, "module": "gpc1415_5"},
    {"src": [5, 1], "dst": [1, 1, 1], "cost": 1, "module": "gpc15_3"},
    {"src": [7, 0, 2], "dst": [1, 1, 1, 1], "cost": 1, "module": "gpc207_4"},
    #    {"src": [6,1,1,2], "dst": [1,1,1,1,1], "cost": 1, "module": "gpc2116_5"},
    {"src": [5, 3, 1, 2], "dst": [1, 1, 1, 1, 1], "cost": 1, "module": "gpc2135_5"},
    {"src": [5, 1, 2], "dst": [1, 1, 1, 1], "cost": 1, "module": "gpc215_4"},
    #    {"src": [3,2,2,2], "dst": [1,1,1,1,1], "cost": 1, "module": "gpc2223_5"},
    #    {"src": [3,2,2], "dst": [1,1,1,1], "cost": 1, "module": "gpc223_4"},
    {"src": [3, 2], "dst": [1, 1, 1], "cost": 1, "module": "gpc23_3"},
    {"src": [3], "dst": [1, 1], "cost": 1, "module": "gpc3_2"},
    {"src": [6, 0, 6], "dst": [1, 1, 1, 1, 1], "cost": 1, "module": "gpc606_5"},
    {"src": [5, 1, 6], "dst": [1, 1, 1, 1, 1], "cost": 1, "module": "gpc615_5"},
    {"src": [3, 2, 6], "dst": [1, 1, 1, 1, 1], "cost": 1, "module": "gpc623_5"},
    {"src": [7], "dst": [1, 1, 1], "cost": 1, "module": "gpc7_3"},
]


class Problem:
    def __init__(self, gpclist=default_gpclist):
        self.stagenum = 0
        self.gpclist = gpclist
        self.colnum = 0
        self.src = []
        self.dst = []
        self.gpclimit = 0
        self.rowlimit = 0

    def get_dict(self):
        return {
            'stagenum': self.stagenum,
            'gpclist': self.gpclist,
            'colnum': self.colnum,
            'src': self.src,
            'dst': self.dst,
            'gpclimit': self.gpclimit,
            'rowlimit': self.rowlimit,
        }

    def validate(self):
        assert len(self.src) == self.colnum
        assert len(self.dst) == self.colnum
        assert max(self.src) <= self.rowlimit
        assert max(self.dst) <= self.rowlimit
        assert max(self.src) <= self.gpclimit
        assert max(self.dst) <= self.gpclimit
