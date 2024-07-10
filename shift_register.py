#!/usr/bin/env python3

def indent(level):
    return '    ' * level

class ShiftRegister:
    def __init__(self, src, dst, name):
        self.src, self.dst = src, dst
        self.name = name

    def gen_module(self):
        code = f'module shift_register({self.get_module_arguments()});\n'
        code += self.gen_reg_declarations(1)
        code += self.gen_module_instantiation(1)
        code += self.gen_initial_block(1)
        code += self.gen_always_block(1)
        code += 'endmodule'
        return code

    def get_module_arguments(self):
        args = ['input wire clk', 'input wire src']
        for col, num in enumerate(self.dst):
            if num > 0:
                args += [f'output wire [{num - 1}:0] dst{col}']
        return ', '.join(args)

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
        arg = ', '.join(args)
        return indent(level) + f'compressor comp({arg});\n'

    def gen_initial_block(self, level):
        code = indent(level) + 'initial begin\n'
        for col, num in enumerate(self.src):
            if num > 0:
                code += indent(level + 1) + f'src{col} <= {num}\'h0;\n'
        code += indent(level) + 'end\n'
        return code

    def gen_always_block(self, level):
        terms = []
        for col, num in enumerate(self.src):
            if num > 0:
                terms += [f'src{col}']
        lhs = f'{{{", ".join(terms[::-1])}}}'
        rhs = f'{{{", ".join(terms[::-1] + ["src"])}}}'
        code = indent(level) + f'always @(posedge clk) begin\n'
        code += indent(level + 1) + f'{lhs} <= {rhs};\n'
        code += indent(level) + f'end\n'
        return code


if __name__ == '__main__':
    import problem
    from compressor import Compressor
    from optimizer import Optimizer

    prob = problem.square.Square(54, 2, 5)
    opt = Optimizer(prob.get_dict(), objective=None)
    sol = opt.solve(1200)

    opt = Optimizer(prob.get_dict(), objective='cost')
    opt.add_mip_start(sol)
    sol = opt.solve(1200)

    comp = Compressor(prob.get_dict(), sol)
    print(comp.gen_module())
    print(ShiftRegister(comp.stages[0], comp.stages[-1], 'compressor').gen_module())
