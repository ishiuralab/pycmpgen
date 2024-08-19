#!/usr/bin/env python3

import json
import random
from collections import deque
from gpcgen import GpcGenerator


def indent(level):
    return '    ' * level


class RowAdderGen:
    def __init__(self, row, col):
        assert row > 0
        assert col > 0
        self.row = row
        self.col = col
        self.build_tree()
        self.build_modules()

    def build_tree(self):
        self.tree = []
        for i in range(self.row):
            if i == 0:
                self.tree += ['root']
            elif i == 1:
                self.tree += [f'internal{2}', f'internal{2}']
            else:
                for j in range([1, 1, 2, 2][i % 4]):
                    self.tree += [f'internal{len(self.tree)}']
        # leaf
        for i, idx in enumerate(range(len(self.tree) - self.row, len(self.tree))):
            self.tree[idx] = ('src', i, None, 1)
        remain = 0 if self.row < 2 else (len(self.tree) - 3) % 6
        # internal
        for i, idx in enumerate(range(len(self.tree) - self.row)):
            self.tree[idx] = ('6-2', i, None, 0)
        if self.row > 2:
            if remain == 2:
                name, idx, children, count = self.tree[-self.row - 1]
                self.tree[-self.row - 1] = '2-1', idx, children, count
            elif remain == 4:
                name, idx, children, count = self.tree[-self.row - 1]
                self.tree[-self.row - 1] = '2-1', idx, children, count
                name, idx, children, count = self.tree[-self.row - 2]
                self.tree[-self.row - 2] = '2-1', idx, children, count
            elif remain == 5:
                name, idx, children, count = self.tree[-self.row - 1]
                self.tree[-self.row - 1] = '5-2', idx, children, count
                name, idx, children, count = self.tree[-self.row - 2]
                self.tree[-self.row - 2] = '5-2', idx, children, count
        if self.row > 1:
            name, idx, children, count = self.tree[0]
            self.tree[0] = '2-1', idx, children, count
        for idx in range(len(self.tree)):
            name, i, children, count = self.tree[idx]
            if name != 'src':
                begin, end = self.children(idx)
                self.tree[idx] = name, i, (begin, end), count

        def rec(idx):
            name, idx, children, count = self.tree[idx]
            if name == 'src':
                return count
            if name in ['5-2', '6-2'] and idx % 2 == 0:
                self.tree[idx] = name, idx, children, self.tree[idx - 1][3]
                return 0
            begin, end = children
            total = 0
            for child in range(begin, end):
                total += rec(child)
            self.tree[idx] = name, idx, children, total
            return total

        rec(0)

    def children(self, idx):
        if idx == 0:
            return [1, 3]
        else:
            floored = idx if idx % 2 else idx - 1
            begin, end = floored * 3, floored * 3 + 6
            if self.tree[idx][0] == '2-1':
                if idx % 2:
                    return idx * 3, idx * 3 + 2
                else:
                    return idx * 3 - 1, idx * 3 + 1
            elif self.tree[idx][0] == '5-2':
                return begin, begin + 5
            else:
                return begin, end

    def build_modules(self):
        self.modules = []
        for i, (name, idx, children, count) in enumerate(self.tree):
            if name in ['2-1', '5-2', '6-2']:
                begin, end = children
                dst_count = count
                src_count = max(child[3] for child in self.tree[begin:end])
                dst_width = (((1 << self.col) - 1) * dst_count).bit_length()
                src_width = (((1 << self.col) - 1) * src_count).bit_length()
                if name == '2-1':
                    width = max(src_width, dst_width - 1)
                    self.modules += [
                        {
                            'name': f'rowadder2_1_{width}',
                            'src_width': width,
                            'dst_width': width + 1,
                            'src': [
                                f'src{child[1]}' if child[0] == 'src' else f'internal{child[1]}'
                                for child in self.tree[begin:end]
                            ],
                            'dst': [f'internal{idx}'],
                        }
                    ]
                else:
                    if i % 2:
                        width = max(src_width, dst_width - 2)
                        self.modules += [
                            {
                                'name': f'rowadder6_2_{width}',
                                'src_width': width,
                                'dst_width': width + 2,
                                'src': [
                                    f'src{child[1]}' if child[0] == 'src' else f'internal{child[1]}'
                                    for child in self.tree[begin:end]
                                ],
                                'dst': [f'internal{idx}', f'internal{idx + 1}'],
                            }
                        ]
        self.wires = {}
        for module in self.modules:
            for wire in module['src']:
                if 'src' in wire:
                    self.wires[wire] = self.col
                else:
                    self.wires[wire] = module['src_width']
            for wire in module['dst']:
                self.wires[wire] = module['dst_width']

        # for module in self.modules:
        #     print(module)

        # for wire, width in sorted(self.wires.items(), key=lambda x: x[0]):
        #     print(wire, width)

    def gen_rowadders(self):
        module_set = set()
        for module in self.modules:
            name = module['name']
            width = module['src_width']
            module_set.add((name, width))
        code = ''
        for name, width in module_set:
            if 'rowadder2_1' in name:
                code += RowAdder2_1Gen(width).gen_module(vinput=False, name=name) + '\n'
            else:
                code += RowAdder6_2Gen(width).gen_module(vinput=False, name=name) + '\n'
        return code

    def gen_module(self, name=None):
        code = self.gen_rowadders() + '\n'
        if name:
            code += f'module {name}'
        else:
            code += f'module rowadder{self.row}_1_{self.col}'
        code += f'({self.get_module_arguments()});\n'
        code += self.gen_wire_declarations(1)
        code += self.gen_dst_assignment(1)
        code += self.gen_rowadder_instantiations(1)
        code += 'endmodule\n'
        return code

    def get_module_arguments(self):
        args = []
        for r in range(self.row):
            args += [f'input [{self.col - 1}:0] src{r}']
        width = (((1 << self.col) - 1) * self.row).bit_length()
        args += [f'output [{width - 1}:0] dst0']
        return ', '.join(args)

    def gen_wire_declarations(self, level):
        code = ''
        for name, width in sorted(self.wires.items(), key=lambda x: x[0]):
            if 'src' not in name:
                code += indent(level) + f'wire [{width - 1}:0] {name};\n'
        return code

    def gen_dst_assignment(self, level):
        name = self.modules[0]['dst'][0]
        dst_width = (((1 << self.col) - 1) * self.row).bit_length()
        internal0_width = self.modules[0]['dst_width']
        if dst_width < internal0_width:
            return indent(level) + f'assign dst0 = {name}[{dst_width - 1}:0];\n'
        else:
            return indent(level) + f'assign dst0 = {name};\n'

    def gen_rowadder_instantiations(self, level):
        code = ''
        for idx, module in enumerate(self.modules):
            name = module['name']
            src_width = module['src_width']
            dst_width = module['dst_width']
            src = module['src']
            dst = module['dst']
            args = []
            for r, wire in enumerate(src):
                width = self.wires[wire]
                if width == src_width:
                    args += [f'.src{r}({wire})']
                elif width < src_width:
                    args += [f'.src{r}({{{src_width - width}\'h0, {wire}}})']
                else:
                    args += [f'.src{r}({wire}[{src_width - 1}:0])']
            for r, wire in enumerate(dst):
                width = self.wires[wire]
                if width < dst_width:
                    code += f'wire [{dst_width - width - 1}:0] dummy{idx}_{r};\n'
                    args += [f'.dst{r}({{dummy{idx}_{r}, {wire}}})']
                else:
                    assert width == dst_width
                    args += [f'.dst{r}({wire})']
            code += indent(level) + f'{name} rowadder_{idx}({", ".join(args)});\n'
        return code

    def gen_testbench(self):
        code = ''
        code += f'module testbench();\n'
        for r in range(self.row):
            code += indent(1) + f'reg [{self.col - 1}:0] src{r};\n'
        dst_width = (((1 << self.col) - 1) * self.row).bit_length()
        code += indent(1) + f'wire [{dst_width - 1}:0] dst0;\n'
        code += indent(1) + f'wire [{dst_width - 1}:0] ans;\n'
        code += indent(1) + f'wire test;\n'
        code += indent(1) + f'assign ans = {"+".join("src"+str(r) for r in range(self.row))};\n'
        code += indent(1) + 'assign test = ans == dst0;\n'
        args = [f'.src{r}(src{r})' for r in range(self.row)] + ['.dst0(dst0)']
        code += indent(1) + f'rowadder{self.row}_1_{self.col} ra({", ".join(args)});\n'
        code += indent(1) + 'initial begin\n'
        code += indent(2) + '$monitor("%x %x %x", ans, dst0, test);\n'
        for r in range(self.row):
            code += indent(2) + f'src{r} <= {self.col}\'h0;\n'
        code += indent(2) + f'#1;\n'
        for r in range(self.row):
            code += indent(2) + f'src{r} <= {self.col}\'h{(1 << self.col) - 1:x};\n'
        code += indent(2) + f'#1;\n'
        for _ in range(1 << 10):
            for r in range(self.row):
                code += indent(2) + f'src{r} <= {self.col}\'h{random.randint(0, (1 << self.col) - 1):x};\n'
            code += indent(2) + f'#1;\n'
        code += indent(1) + 'end\n'
        code += f'endmodule\n'
        return code


class RowAdder2_1Gen:
    def __init__(self, width):
        # WIDTH represents src width
        assert width > 0
        self.width = width
        self.unit = {'shape': [3], 'lut': [([1, 2], None, 25769803784)], 'cin': 0}
        self.spec = {'shape': [2] * width, 'lut': [], 'cin': None}
        for i in range(width):
            symm, asymm, init = self.unit['lut'][0]
            symm = [i * 2, i * 2 + 1]
            self.spec['lut'].append((symm, asymm, init))

    def gen_module(self, vinput=True, name=None):
        modulename = name if name else f'rowadder2_1_{self.width}'
        if vinput:
            return GpcGenerator(self.spec).gen_module(name=modulename)
        else:
            code = GpcGenerator(self.spec).gen_module(name=f'cascade_fa_{self.width}') + f'\n'
            code += f'module {modulename}'
            code += f'({self.get_module_arguments()});\n'
            code += self.gen_module_instantiation(1)
            code += f'endmodule\n'
            return code

    def get_module_arguments(self):
        args = [f'input [{self.width - 1}:0] src{row}' for row in range(2)]
        args += [f'output [{self.width}:0] dst0']
        return ', '.join(args)

    def gen_module_instantiation(self, level):
        args = []
        for col in range(self.width):
            terms = [f'src{row}[{col}]' for row in range(2)]
            args.append(f'.src{col}({{{", ".join(terms)}}})')
        args += [f'.dst(dst0)']
        code = ''
        code += indent(level) + f'cascade_fa_{self.width} cascade_fa_{self.width}'
        code += f'({", ".join(args)});\n'
        return code


class RowAdder6_2Gen:
    def __init__(self, width):
        # WIDTH represents src width
        self.width = width
        self.unit = {
            "shape": [7, 0],
            "lut": [([2, 3, 4, 5, 6], 1, 7608434000728254870), ([2, 3, 4, 5, 6], None, 1692930048736133120)],
            "cin": 0,
        }
        self.even = {'shape': [], 'lut': [], 'cin': None}
        self.odd = {'shape': [], 'lut': [], 'cin': None}
        for i in range(0, width):
            offset = (i // 2) * 6 - 1
            [self.even['shape'], self.odd['shape']][i % 2] += [6, 0]
            for j in range(2):
                symm, asymm, init = self.unit['lut'][j]
                symm = [offset + p for p in symm]
                asymm = asymm + offset if asymm else None
                [self.even['lut'], self.odd['lut']][i % 2] += [(symm, asymm, init)]

    def gen_module(self, vinput=True, name=None):
        code = ''
        code += GpcGenerator(self.even).gen_module(name=f'cascade{self.width}_even') + '\n'
        if self.width > 1:
            code += GpcGenerator(self.odd).gen_module(name=f'cascade{self.width}_odd') + '\n'
        modulename = name if name else f'rowadder6_2_{self.width}'
        code += f'module {modulename}'
        code += f'({self.get_module_arguments(vinput)});\n'
        code += self.gen_wire_declarations(1)
        code += self.gen_assignments(1)
        code += self.gen_module_instantiations(vinput, 1)
        code += 'endmodule\n'
        return code

    def get_module_arguments(self, vinput):
        args = []
        if vinput:
            for col in range(self.width):
                args.append(f'input [5:0] src{col}')
        else:
            for row in range(6):
                args.append(f'input [{self.width - 1}:0] src{row}')
        for row in range(2):
            args.append(f'output [{self.width + 1}:0] dst{row}')
        return f', '.join(args)

    def gen_wire_declarations(self, level):
        code = ''
        if self.width % 2:
            code += indent(level) + f'wire [{self.width + 1}:0] dst_even;\n'
            if self.width > 1:
                code += indent(level) + f'wire [{self.width - 1}:0] dst_odd;\n'
        else:
            code += indent(level) + f'wire [{self.width}:0] dst_even;\n'
            code += indent(level) + f'wire [{self.width}:0] dst_odd;\n'
        return code

    def gen_assignments(self, level):
        code = ''
        if self.width % 2:
            code += indent(level) + f'assign dst0 = dst_even;\n'
            if self.width > 1:
                code += indent(level) + f'assign dst1 = {{1\'h0, dst_odd, 1\'h0}};\n'
            else:
                code += indent(level) + f'assign dst1 = 2\'h0;\n'
        else:
            code += indent(level) + f'assign dst0 = {{1\'h0, dst_even}};\n'
            code += indent(level) + f'assign dst1 = {{dst_odd, 1\'h0}};\n'
        return code

    def gen_module_instantiations(self, vinput, level):
        evenargs = []
        if vinput:
            for col in range(0, self.width, 2):
                evenargs += [f'.src{col}(src{col})']
        else:
            for col in range(0, self.width, 2):
                terms = [f'src{row}[{col}]' for row in range(6)]
                evenargs += [f'.src{col}({{{", ".join(terms)}}})']
        evenargs += [f'.dst(dst_even)']
        evenarg = f', '.join(evenargs)
        oddargs = []
        if vinput:
            for col in range(1, self.width, 2):
                oddargs += [f'.src{col - 1}(src{col})']
        else:
            for col in range(1, self.width, 2):
                terms = [f'src{row}[{col}]' for row in range(6)]
                oddargs += [f'.src{col - 1}({{{", ".join(terms)}}})']
        oddargs += [f'.dst(dst_odd)']
        oddarg = f', '.join(oddargs)
        code = ''
        code += indent(level) + f'cascade{self.width}_even even({evenarg});\n'
        if self.width > 1:
            code += indent(level) + f'cascade{self.width}_odd odd({oddarg});\n'
        return code


if __name__ == '__main__':
    ra = RowAdderGen(8, 4)
    print(ra.gen_module())
    print(ra.gen_testbench())
