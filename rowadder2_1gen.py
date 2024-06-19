#!/usr/bin/env python3

import sys


class Rowadder2_1Gen:
    def __init__(self, size):
        self.size = size
        self.module_name = f'rowadder2_1_{self.size}'
        self.carry4cnt = self.size // 4 + (1 if self.size % 4 != 0 else 0)
        self.indent = '    '

    def gen_module(self):
        code = ''
        code += f'module {self.module_name}({self.get_module_arguments()});\n'
        code += self.gen_wire_declarations(1)
        code += self.gen_LUT2_instantiation(1)
        code += self.gen_carry4_instantiation(1)
        code += self.gen_assignment_declaration(1)
        code += 'endmodule\n'
        return code

    def get_module_arguments(self):
        args = []
        args.append(f'input [{self.size-1}:0] src0')
        args.append(f'input [{self.size-1}:0] src1')
        args.append(f'output [{self.size}:0] dst0')
        return ', '.join(args)

    def gen_wire_declarations(self, level):
        code = ''
        code += self.indent * level + f'wire [{self.size-1}:0] gene;\n'
        code += self.indent * level + f'wire [{self.size-1}:0] prop;\n'
        code += self.indent * level + f'wire [{self.carry4cnt*4-1}:0] out;\n'
        code += self.indent * level + f'wire [{self.carry4cnt*4-1}:0] carryout;\n'
        return code

    def gen_LUT2_instantiation(self, level):
        output_type = ['gene', 'prop']
        code = ''
        for i in range(self.size):
            for type in output_type:
                code += self.indent * level + 'LUT2 #(\n'
                code += self.get_LUT2_patterns_argument(level + 1, type)
                code += self.indent * level + f') lut_{i}_{type} (\n'
                code += self.get_LUT2_arguments(level + 1, i, type)
                code += self.indent * level + ');\n'
        return code

    def get_LUT2_patterns_argument(self, level, type):
        return self.indent * level + ('.INIT(4\'h8)\n' if type == 'gene' else '.INIT(4\'h6)\n')

    def get_LUT2_arguments(self, level, currentLUTnum, type):
        args = []
        args.append(f'.I0(src0[{currentLUTnum}])')
        args.append(f'.I1(src1[{currentLUTnum}])')
        args.append(f'.O({type}[{currentLUTnum}])')
        return self.indent * level + f',\n{self.indent * level}'.join(args) + '\n'

    # もっとうまい書き方がありそう
    def gen_carry4_instantiation(self, level):
        code = ''
        for current in range(0, self.size, 4):
            code += self.indent * level + f'CARRY4 carry4_{current+3}_{current} (\n'
            code += self.get_carry4_arguments(level + 1, current)
            code += self.indent * level + ');\n'
        return code

    def get_carry4_arguments(self, level, current):
        args = []
        args.append(f'.CO(carryout[{current + 3}:{current}])')
        args.append(f'.O(out[{current + 3}:{current}])')
        args.append((f'.CI(carryout[{current-1}])' if current != 0 else '.CI(1\'h0)'))
        args.append(f'.CYINIT(1\'h0)')
        if self.size-current >= 4:
            args.append(f'.DI(gene[{current + 3}:{current}])')
            args.append(f'.S(prop[{current + 3}:{current}])')
        else:
            remain = self.size-current
            args.append(f'.DI({{{4-remain}\'h0, gene[{current+remain-1}:{current}]}})')
            args.append(f'.S({{{4-remain}\'h0, prop[{current+remain-1}:{current}]}})')
        return self.indent * level + f',\n{self.indent * level}'.join(args) + '\n'

    def gen_assignment_declaration(self, level):
        return self.indent * level + f'assign dst0 = {{carryout[{self.size - 1}], out[{self.size - 1}:0]}};\n'


if __name__ == '__main__':
    size = int(sys.argv[1])
    r2_1gen = Rowadder2_1Gen(size)
    print(r2_1gen.gen_module())
