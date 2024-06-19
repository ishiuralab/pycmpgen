#!/usr/bin/env python3

import sys
import random
from compressor2_1 import  Compressor2_1

class Comp2_1Shiftregister:
    def __init__(self, target):
        self.target_name = target.module_name
        self.module_name = f'{self.target_name}_shiftregister'
        self.row = target.row
        self.col = target.col
        self.dst_size = target.dst_length
        self.indent = '    '

    def gen_module(self):
        code = ''
        code += f'module {self.module_name}({self.get_module_arguments()});\n'
        code += self.gen_reg_declarations(1)
        code += self.gen_multi6_2_instantiation(1)
        code += self.gen_initial_block(1)
        code += self.gen_shiftregister(1)
        code += 'endmodule\n'
        return code
    
    def get_module_arguments(self):
        args = []
        args.append('input clk')
        for i in range(self.row):
            args.append(f'input in_data{i}')
        args.append(f'output [{self.dst_size - 1}:0]dst')
        return ', '.join(args)
    
    def gen_reg_declarations(self, level):
        code = ''
        for i in range(self.row):
            code += f'{self.indent * level}reg [{self.col - 1}:0] src{i};\n'
        return code
    
    def gen_multi6_2_instantiation(self, level):
        code = ''
        code += f'{self.indent * level}{self.target_name} {self.target_name}({self.get_multi6_2_arguments()});\n'
        return code
    
    def get_multi6_2_arguments(self):
        args = []
        for i in range(self.row):
            args.append(f'.src{i}(src{i})')
        args.append(f'.dst(dst)')
        return ', '.join(args)

    def gen_initial_block(self, level):
        code = ''
        code += f'{self.indent * level}initial begin\n'
        for i in range(self.row):
            code += f'{self.indent * (level + 1)}src{i} <= 0;\n'
        code += f'{self.indent * level}end\n'
        return code
    
    def gen_shiftregister(self, level):
        code = ''
        code += f'{self.indent * level}always @(posedge clk) begin\n'
        for i in range(self.row):
            code += f'{self.indent * (level + 1)}src{i} <= {{src{i}[{self.col - 2}:0], in_data{i}}};\n'
        code += f'{self.indent * level}end\n'
        return code
    


class Compressor2_1Test:
    def __init__(self, target):
        self.comp2_1 = target
        self.row = self.comp2_1.row
        self.col = self.comp2_1.col
        self.dst_length = self.comp2_1.dst_length
        self.module_name = f'comp2_1test_{self.row}_{self.col}'
        self.indent  = '    '
        self.loop = 100

    def gen_module(self):
        code = ''
        code += f'module {self.module_name}();\n'
        code += self.gen_reg_wire_declarations(1)
        code += self.gen_asignment(1)
        code += self.gen_compressor2_1_instantiation(1)
        code += self.gen_initial_block(1)
        code += 'endmodule\n'
        return code
    
    def gen_reg_wire_declarations(self, level):
        code = ''
        for i in range(self.row):
            code += f'{self.indent * level}reg [{self.col - 1}:0] src{i};\n'
        code += f'{self.indent * level}reg [{self.dst_length - 1}:0] exp;\n'
        code += f'{self.indent * level}wire [{self.dst_length - 1}:0] dst;\n'
        return code
    
    def gen_asignment(self, level):
        code = ''
        code += f'{self.indent * level}assign test = dst == exp;\n'
        return code
    
    def gen_compressor2_1_instantiation(self, level):
        code = ''
        code += f'{self.indent * level}{self.comp2_1.module_name} {self.comp2_1.module_name}_inst(\n'
        code += f'{self.get_compressor2_1_arguments(level + 1)}\n'
        code += f'{self.indent * level});\n'
        return code
    
    def get_compressor2_1_arguments(self, level):
        args = []
        for i in range(self.row):
            args.append(f'{self.indent * level}.src{i}(src{i})')
        args.append(f'{self.indent * level}.dst(dst)')
        return ',\n'.join(args)
    
    def gen_initial_block(self, level):
        code = ''
        code += f'{self.indent * level}initial begin\n'
        code += self.gen_monitor(level + 1)
        for _ in range(self.loop):
            code += f'{self.gen_single_test(level + 1)}'
        code += f'{self.indent * (level + 1)}$finish;\n'
        code += f'{self.indent * level}end\n'
        return code
    
    def gen_monitor(self, level):
        code = ''
        code += f'{self.indent * level}$monitor({self.get_monitor_arguments()});\n'
        return code
    
    def get_monitor_arguments(self):
        args = ['"']
        for arg in [f'src{i}' for i in range(self.row)] + ['dst', 'exp']:
            args.append(arg)
            args[0] += '0x%x '
        args.append('test')
        args[0] += '%x"'
        return ', '.join(args)

    def gen_single_test(self, level):
        code = ''
        srcnum = [random.randint(0, (1 << self.col) - 1) for _ in range(self.row)]
        exp = sum(srcnum)
        for i, num in enumerate(srcnum):
            code += f'{self.indent * level}src{i} <= {self.col}\'h{num:x};\n'
        code += f'{self.indent * level}exp <= {self.comp2_1.dst_length}\'h{exp:x};\n'
        code += f'{self.indent * level}#1\n'
        return code

if __name__=='__main__':
    import json
    from optimizer import InfeasibleProblemError
    import time
    row, col, stage = map(int,sys.argv[1:4])
    seed_velue = 0
    if len(sys.argv) > 4:
        seed_velue = int(sys.argv[4])
    random.seed(seed_velue)
    with open('gpclist/default.json', 'r') as f:
        gpclist = json.loads(f.read())
    comp2_1 = Compressor2_1(row, col, stage, gpclist)
    comp2_1shift = Comp2_1Shiftregister(comp2_1)
    comp2_1t = Compressor2_1Test(comp2_1)
    with open(f'comp2_1_{row}_{col}_{stage}.v', 'w') as f:
        print(comp2_1shift.gen_module(),file=f)
        print(comp2_1.gen_module(),file=f)
        print(comp2_1t.gen_module(),file=f)

    # for row in [185, 128, 64, 54, 32]:
    #     for stage in range(1, 7):
    #         begin = time.time()
    #         try:
    #             comp2_1 = Compressor2_1(row, 16, stage, gpclist)
    #             comp2_1shift = Comp2_1Shiftregister(comp2_1)
    #             comp2_1t = Compressor2_1Test(comp2_1)
    #             with open(f'comp2_1_{row}_{16}_{stage}.v', 'w') as f:
    #                 print(comp2_1shift.gen_module(),file=f)
    #                 print(comp2_1.gen_module(),file=f)
    #                 print(comp2_1t.gen_module(),file=f)
    #         except InfeasibleProblemError:
    #             print(f'row: {row}, stage: {stage}, time: {time.time() - begin:.3f}', file=sys.stderr)
