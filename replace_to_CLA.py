#!/usr/bin/env python3

from compressor import Compressor
import json


class Compressor_CLA:
    def __init__(self, prob, sol):
        self.comp = Compressor(prob, sol)
        self.row = self.comp.src[0]
        self.col = len([0 for num in self.comp.src if num > 0])
        self.dst_length = (self.row - 1).bit_length() + self.col
        self.module_name = f'compressor_CLA{self.row}_{self.col}'
        self.indent = '    '
        self.comp_outs_size = 0
        for i, size in enumerate(self.comp.stages[-1]):
            if size > 0:
                self.comp_outs_size += 1

    def gen_module(self):
        code = ''
        code += f'module {self.module_name}(\n'
        code += f'{self.get_module_arguments()});\n\n'
        code += self.gen_wire_declarations(1)
        code += self.gen_compressor_instantiation(1)
        code += self.gen_CLA_instantiation(1)
        code += 'endmodule\n'
        code += f'{self.comp.gen_module()}\n'
        return code

    def get_module_arguments(self):
        args = []
        for i, num in enumerate(self.comp.src):
            if num > 0:
                args.append(f'{self.indent}input [{self.row - 1}:0]src{i}')
        for i in range(self.dst_length):
            args.append(f'{self.indent}output dst{i}')
        return ',\n'.join(args)

    def gen_wire_declarations(self, level):
        code = ''
        for i, size in enumerate(self.comp.stages[-1]):
            if size > 0:
                code += f'{self.indent * level}wire [{size - 1}:0] comp_out{i};\n'
        return code

    def gen_compressor_instantiation(self, level):
        code = ''
        code += f'{self.indent * level}compressor compressor_inst(\n'
        code += f'{self.get_compressor_arguments(level + 1)}\n'
        code += f'{self.indent * level});\n'
        return code

    def get_compressor_arguments(self, level):
        args = []
        for i in range(self.col):
            args.append(f'{self.indent * level}.src{i}(src{i})')
        for i in range(self.comp_outs_size):
            args.append(f'{self.indent * level}.dst{i}(comp_out{i})')
        return ',\n'.join(args)

    def gen_CLA_instantiation(self, level):
        name, num = self.get_CLA_module_name()
        code = ''
        code += f'{self.indent * level}{name}(\n'
        code += f'{self.get_CLA_argumants(level + 1, num)}\n'
        code += f'{self.indent * level});\n'
        return code

    def get_CLA_module_name(self):
        src_length = len(self.comp.stages[-1])
        if src_length <= 4:
            name = 'CarryLookAheadAdder CLA'
            return name, 4
        elif src_length <= 16:
            name = 'LookAheadCarryUnit16 LCU16'
            return name, 16
        elif src_length <= 64:
            name = 'LookAheadCarryUnit64 LCU64'
            return name, 64
        elif src_length <= 256:
            name = 'LookAheadCarryUnit256 LCU256'
            return name, 256
        raise RuntimeError

    def get_CLA_argumants(self, level, num):
        args = []
        args.append(f'{self.indent * level}.src0({{{self.get_CLA_sources(0, num)}}})')
        args.append(f'{self.indent * level}.src1({{{self.get_CLA_sources(1, num)}}})')
        args.append(f'{self.indent * level}.dst({{{self.get_CLA_dsts(num)}}})')
        return ',\n'.join(args)

    def get_CLA_sources(self, index, num):
        args = []
        for i, size in enumerate(self.comp.stages[-1][::-1]):
            if size == 2:
                args.append(f'comp_out{len(self.comp.stages[-1]) - i - 1}[{index}]')
            elif size == 1:
                if index == 1:
                    args.append('1\'h0')
                elif index == 0:
                    args.append(f'comp_out{len(self.comp.stages[-1]) - i - 1}[{index}]')
        args = ['1\'h0' for _ in range(num - len(args))] + args
        return ', '.join(args)
    
    def get_CLA_dsts(self,num):
        args = []
        for i in range(self.dst_length):
            args.append(f'dst{self.dst_length - 1 - i}')
        return ', '.join(args)


if __name__ == '__main__':
    import sys
    from global_shift_register import ShiftRegister
    from global_testbench import Testbench

    path = sys.argv[1]
    with open(path, 'r') as f:
        ans = json.loads(f.read())

    prob = ans['problem']
    sol = ans['solution']
    comp_cla = Compressor_CLA(prob, sol)
    dst_form = [1] * len(comp_cla.comp.stages[-1])
    src_form = comp_cla.comp.stages[0]
    with open(f'vertical_shiftregister_result/CLA/comp2_1CLA_{comp_cla.col}_{comp_cla.row}.v', 'w') as f:
        print(ShiftRegister(src_form, dst_form, comp_cla.module_name).gen_module(), file=f)
        print(comp_cla.gen_module(), file=f)
        print(Testbench(src_form, dst_form, comp_cla.module_name).gen_module(), file=f)

