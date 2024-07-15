#!/usr/bin/env python3

import random


def indent(level):
    return '    ' * level


class Testbench:
    def __init__(self, src, dst, name, iteration=100):
        self.src, self.dst = src, dst
        self.name = name
        self.iteration = iteration

    def gen_module(self):
        code = f'module testbench();\n'
        code += self.gen_wire_reg_declarations(1)
        code += self.gen_module_instantiation(1)
        code += self.gen_sum_assignments(1)
        code += self.gen_test_sequence(1)
        code += 'endmodule'
        return code

    def gen_wire_reg_declarations(self, level):
        code = ''
        terms = []
        for col, num in enumerate(self.src):
            if num > 0:
                code += indent(level) + f'reg [{num - 1}:0] src{col};\n'
        for col, num in enumerate(self.dst):
            if num > 0:
                code += indent(level) + f'wire [{num - 1}:0] dst{col};\n'
        total = sum(num << col for col, num in enumerate(self.src))
        length = total.bit_length()
        code += indent(level) + f'wire [{length - 1}:0] srcsum;\n'
        code += indent(level) + f'wire [{length - 1}:0] dstsum;\n'
        code += indent(level) + f'wire test;\n'
        return code

    def gen_module_instantiation(self, level):
        args = []
        for col, num in enumerate(self.src):
            if num > 0:
                args += [f'.src{col}(src{col})']
        for col, num in enumerate(self.dst):
            if num > 0:
                args += [f'.dst{col}(dst{col})']
        code = indent(level) + f'{self.name} {self.name}(\n'
        code += indent(level + 1) + f',\n{indent(level + 1)}'.join(args) + ');\n'
        return code

    def gen_sum_assignments(self, level):
        srcterms = []
        for col, num in enumerate(self.src):
            if num > 0:
                terms = [f'src{col}[{i}]' for i in range(num)]
                srcterms += [f'(({" + ".join(terms)})<<{col})']
        dstterms = []
        for col, num in enumerate(self.dst):
            if num > 0:
                terms = [f'dst{col}[{i}]' for i in range(num)]
                dstterms += [f'(({" + ".join(terms)})<<{col})']
        code = indent(level) + f'assign srcsum = {" + ".join(srcterms)};\n'
        code += indent(level) + f'assign dstsum = {" + ".join(dstterms)};\n'
        code += indent(level) + f'assign test = srcsum == dstsum;\n'
        return code

    def gen_test_sequence(self, level):
        code = indent(level) + f'initial begin\n'
        code += indent(level + 1) + f'$monitor("srcsum: 0x%x, dstsum: 0x%x, test: %x", srcsum, dstsum, test);\n'
        terms = []
        for col, num in enumerate(self.src):
            if num > 0:
                terms += [f'src{col}']
        length = sum(self.src)
        rhs = f'{{{", ".join(terms[::-1])}}}'
        code += indent(level + 1) + f'{rhs} <= {length}\'h0;\n'
        code += indent(level + 1) + '#1\n'
        code += indent(level + 1) + f'{rhs} <= {length}\'h{((1 << length) - 1):x};\n'
        for _ in range(self.iteration):
            code += indent(level + 1) + '#1\n'
            code += indent(level + 1) + f'{rhs} <= {length}\'h{((random.randint(0, (1 << length) - 1))):x};\n'
        code += indent(level + 1) + '#1\n'
        code += indent(level + 1) + '$finish();\n'
        code += indent(level) + f'end\n'
        return code


if __name__ == '__main__':
    from compressor import Compressor
    from optimizer import Optimizer
    import problem

    prob = problem.multiplier.Multiplier(32, 2, 4)
    opt = Optimizer(prob.get_dict(), objective=None)
    sol = opt.solve()
    comp = Compressor(prob.get_dict(), sol)
    print(comp.gen_module())
    tb = Testbench(comp.stages[0], comp.stages[-1], 'compressor')
    print(tb.gen_module())
