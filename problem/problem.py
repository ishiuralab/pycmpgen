#!/usr/bin/env python3

import json

default_gpclist = [
    {"src":[1],"dst":[1],"cost":0,"module":"gpc1_1"},
    {"src":[3],"dst":[1,1],"cost":1,"module":"gpc3_2"},
    {"src":[7],"dst":[1,1,1],"cost":1,"module":"gpc7_3"},
    {"src":[5,1],"dst":[1,1,1],"cost":1,"module":"gpc15_3"},
    {"src":[3,2],"dst":[1,1,1],"cost":1,"module":"gpc23_3"},
    {"src":[1,3],"dst":[1,1,1],"cost":1,"module":"gpc31_3"},
    {"src":[4,4],"dst":[1,1,1,1],"cost":1,"module":"gpc44_4"},
    {"src":[3,6],"dst":[1,1,1,1],"cost":1,"module":"gpc63_4"},
    {"src":[1,7],"dst":[1,1,1,1],"cost":1,"module":"gpc71_4"},
    {"src":[7,1,1],"dst":[1,1,1,1],"cost":1,"module":"gpc117_4"},
    {"src":[6,2,1],"dst":[1,1,1,1],"cost":1,"module":"gpc126_4"},
    {"src":[5,3,1],"dst":[1,1,1,1],"cost":1,"module":"gpc135_4"},
    {"src":[3,4,1],"dst":[1,1,1,1],"cost":1,"module":"gpc143_4"},
    {"src":[1,5,1],"dst":[1,1,1,1],"cost":1,"module":"gpc151_4"},
    {"src":[7,0,2],"dst":[1,1,1,1],"cost":1,"module":"gpc207_4"},
    {"src":[5,1,2],"dst":[1,1,1,1],"cost":1,"module":"gpc215_4"},
    {"src":[3,2,2],"dst":[1,1,1,1],"cost":1,"module":"gpc223_4"},
    {"src":[1,3,2],"dst":[1,1,1,1],"cost":1,"module":"gpc231_4"},
    {"src":[3,0,3],"dst":[1,1,1,1],"cost":1,"module":"gpc303_4"},
    {"src":[1,1,3],"dst":[1,1,1,1],"cost":1,"module":"gpc311_4"},
    {"src":[5,2,4],"dst":[1,1,1,1,1],"cost":1,"module":"gpc425_5"},
    {"src":[3,3,4],"dst":[1,1,1,1,1],"cost":1,"module":"gpc433_5"},
    {"src":[1,4,4],"dst":[1,1,1,1,1],"cost":1,"module":"gpc441_5"},
    {"src":[6,0,6],"dst":[1,1,1,1,1],"cost":1,"module":"gpc606_5"},
    {"src":[5,1,6],"dst":[1,1,1,1,1],"cost":1,"module":"gpc615_5"},
    {"src":[3,2,6],"dst":[1,1,1,1,1],"cost":1,"module":"gpc623_5"},
    {"src":[1,3,6],"dst":[1,1,1,1,1],"cost":1,"module":"gpc631_5"},
    {"src":[3,0,7],"dst":[1,1,1,1,1],"cost":1,"module":"gpc703_5"},
    {"src":[1,1,7],"dst":[1,1,1,1,1],"cost":1,"module":"gpc711_5"},
    {"src":[3,6,1,1],"dst":[1,1,1,1,1],"cost":1,"module":"gpc1163_5"},
    {"src":[1,7,1,1],"dst":[1,1,1,1,1],"cost":1,"module":"gpc1171_5"},
    {"src":[4,4,2,1],"dst":[1,1,1,1,1],"cost":1,"module":"gpc1244_5"},
    {"src":[3,5,2,1],"dst":[1,1,1,1,1],"cost":1,"module":"gpc1253_5"},
    {"src":[1,6,2,1],"dst":[1,1,1,1,1],"cost":1,"module":"gpc1261_5"},
    {"src":[6,1,3,1],"dst":[1,1,1,1,1],"cost":1,"module":"gpc1316_5"},
    {"src":[5,2,3,1],"dst":[1,1,1,1,1],"cost":1,"module":"gpc1325_5"},
    {"src":[4,3,3,1],"dst":[1,1,1,1,1],"cost":1,"module":"gpc1334_5"},
    {"src":[3,4,3,1],"dst":[1,1,1,1,1],"cost":1,"module":"gpc1343_5"},
    {"src":[1,5,3,1],"dst":[1,1,1,1,1],"cost":1,"module":"gpc1351_5"},
    {"src":[6,0,4,1],"dst":[1,1,1,1,1],"cost":1,"module":"gpc1406_5"},
    {"src":[5,1,4,1],"dst":[1,1,1,1,1],"cost":1,"module":"gpc1415_5"},
    {"src":[3,2,4,1],"dst":[1,1,1,1,1],"cost":1,"module":"gpc1423_5"},
    {"src":[1,3,4,1],"dst":[1,1,1,1,1],"cost":1,"module":"gpc1431_5"},
    {"src":[3,0,5,1],"dst":[1,1,1,1,1],"cost":1,"module":"gpc1503_5"},
    {"src":[1,1,5,1],"dst":[1,1,1,1,1],"cost":1,"module":"gpc1511_5"},
    {"src":[4,4,0,2],"dst":[1,1,1,1,1],"cost":1,"module":"gpc2044_5"},
    {"src":[3,6,0,2],"dst":[1,1,1,1,1],"cost":1,"module":"gpc2063_5"},
    {"src":[1,7,0,2],"dst":[1,1,1,1,1],"cost":1,"module":"gpc2071_5"},
    {"src":[6,1,1,2],"dst":[1,1,1,1,1],"cost":1,"module":"gpc2116_5"},
    {"src":[6,2,1,2],"dst":[1,1,1,1,1],"cost":1,"module":"gpc2126_5"},
    {"src":[5,3,1,2],"dst":[1,1,1,1,1],"cost":1,"module":"gpc2135_5"},
    {"src":[3,4,1,2],"dst":[1,1,1,1,1],"cost":1,"module":"gpc2143_5"},
    {"src":[1,5,1,2],"dst":[1,1,1,1,1],"cost":1,"module":"gpc2151_5"},
    {"src":[6,0,2,2],"dst":[1,1,1,1,1],"cost":1,"module":"gpc2206_5"},
    {"src":[5,1,2,2],"dst":[1,1,1,1,1],"cost":1,"module":"gpc2215_5"},
    {"src":[3,2,2,2],"dst":[1,1,1,1,1],"cost":1,"module":"gpc2223_5"},
    {"src":[1,3,2,2],"dst":[1,1,1,1,1],"cost":1,"module":"gpc2231_5"},
    {"src":[3,0,3,2],"dst":[1,1,1,1,1],"cost":1,"module":"gpc2303_5"},
    {"src":[1,1,3,2],"dst":[1,1,1,1,1],"cost":1,"module":"gpc2311_5"},
    {"src":[6,0,0,3],"dst":[1,1,1,1,1],"cost":1,"module":"gpc3006_5"},
    {"src":[5,1,0,3],"dst":[1,1,1,1,1],"cost":1,"module":"gpc3015_5"},
    {"src":[3,2,0,3],"dst":[1,1,1,1,1],"cost":1,"module":"gpc3023_5"},
    {"src":[1,3,0,3],"dst":[1,1,1,1,1],"cost":1,"module":"gpc3031_5"},
    {"src":[3,0,1,3],"dst":[1,1,1,1,1],"cost":1,"module":"gpc3103_5"},
    {"src":[1,1,1,3],"dst":[1,1,1,1,1],"cost":1,"module":"gpc3111_5"}
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
