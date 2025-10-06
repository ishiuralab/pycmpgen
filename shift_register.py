#!/usr/bin/env python3


def indent(level):
    return '    ' * level


class ShiftRegister:
    def __init__(self, src, dst, name):
        self.src, self.dst = src, dst
        self.name = name

    def gen_module(self):
        code = f'module shift_register(\n'
        code += f'{self.get_module_arguments()}'
        code += ');\n'
        code += self.gen_reg_declarations(1)
        code += self.gen_module_instantiation(1)
        code += self.gen_initial_block(1)
        code += self.gen_always_block(1)
        code += 'endmodule'
        return code

    def get_module_arguments(self):
        args = ['input wire clk']
        for col, num in enumerate(self.src):
            if num > 0:
                args += [f'input wire src{col}_']
        for col, num in enumerate(self.dst):
            if num > 0:
                args += [f'output wire [{num - 1}:0] dst{col}']
        return indent(2) + f',\n{indent(2)}'.join(args)

    def gen_reg_declarations(self, level):
        code = ''
        for col, num in enumerate(self.src):
            if num > 0:
                code += indent(level) + f'reg [{num - 1}:0] src{col};\n'
        return code

    def gen_module_instantiation(self, level):
        args = []
        for col, num in enumerate(self.src):
            if num > 0:
                args += [f'.src{col}(src{col})']
        for col, num in enumerate(self.dst):
            if num > 0:
                args += [f'.dst{col}(dst{col})']
        arg = indent(level + 2) + f',\n{indent(level+2)}'.join(args)
        return indent(level) + f'{self.name} {self.name}(\n{arg});\n'

    def gen_initial_block(self, level):
        code = indent(level) + 'initial begin\n'
        for col, num in enumerate(self.src):
            if num > 0:
                code += indent(level + 1) + f'src{col} <= {num}\'h0;\n'
        code += indent(level) + 'end\n'
        return code

    def gen_always_block(self, level):
        code = indent(level) + 'always @(posedge clk) begin\n'
        for col, num in enumerate(self.src):
            if num > 0:
                code += indent(level + 1) + f'src{col} <= {{src{col}, src{col}_}};\n'
        code += indent(level) + f'end\n'
        return code


if __name__ == '__main__':
    import json
    import problem
    from compressor import Compressor
    from optimizer import Optimizer

    prob = problem.multiplier.Multiplier(32, 2, 4)
    opt = Optimizer(prob.get_dict(), objective=None)
    sol = opt.solve(1200)

    # opt = Optimizer(prob.get_dict(), objective='cost')
    # opt.add_mip_start(sol)
    # sol = opt.solve(1200)

    comp = Compressor(prob.get_dict(), sol)
    print(comp.gen_module())
    print(ShiftRegister(comp.stages[0], comp.stages[-1], 'compressor').gen_module())
