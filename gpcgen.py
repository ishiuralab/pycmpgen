#!/usr/bin/env python3

import sys
import json


class InvalidCircuitError(RuntimeError):
    pass


class GpcGenerator:
    def __init__(self, spec):
        self.spec = spec
        self.width = sum(num << place for place, num in enumerate(self.spec['shape'])).bit_length()
        self.carry4cnt = (self.width + 2) // 4
        self.idx2wire = []
        for place, num in enumerate(self.spec['shape']):
            for idx in range(num):
                self.idx2wire += [(place, idx)]
        self.indent = '    '

    def gen_module(self):
        code = ''
        code += f'module {self.get_module_name()}({self.get_module_arguments()});\n'
        code += self.gen_wire_declarations()
        code += self.gen_lut_instantiations()
        code += self.gen_carrychain_instantiation()
        code += self.gen_dst_assignment()
        code += f'endmodule'
        return code

    def get_module_arguments(self):
        args = [f'input [{num - 1}:0] src{place}' for place, num in enumerate(self.spec['shape']) if num != 0]
        args += [f'output [{self.width - 1}:0] dst']
        return ', '.join(args)

    def get_module_name(self):
        shape = self.spec['shape']
        stripped = shape[: next((len(shape) - i for i, x in enumerate(shape[::-1]) if x != 0), len(shape))]
        return f'gpc{"".join((f"{c}" for c in stripped[::-1]))}_{self.width}'

    def gen_wire_declarations(self, level=1):
        code = ''
        code += self.indent * level + f'wire [{self.width - 2}:0] gene;\n'
        code += self.indent * level + f'wire [{self.width - 2}:0] prop;\n'
        code += self.indent * level + f'wire [{self.carry4cnt * 4 - 1}:0] out;\n'
        code += self.indent * level + f'wire [{self.carry4cnt * 4 - 1}:0] carryout;\n'
        return code

    def gen_lut_instantiations(self, level=1):
        code = ''
        for place, (symms, asymm, init) in enumerate(self.spec['lut']):
            if symms:
                if asymm != None:
                    code += self.gen_lut6_2_instantiation(place, symms, asymm, init, level)
                else:
                    code += self.gen_symmetric_lut_instantiation(place, symms, init, level)
            else:
                code += self.indent * level + f'assign gene[{place}] = 1\'h0;\n'
                code += self.indent * level + f'assign prop[{place}] = 1\'h0;\n'
        return code

    def gen_symmetric_lut_instantiation(self, place, symms, init, level=1):
        code = ''
        args = []
        gene = init & 0xFFFFFFFF
        prop = init >> 32
        for idx, srcidx in enumerate(symms):
            p, i = self.idx2wire[srcidx]
            args += [f'.I{idx}(src{p}[{i}])']

        # gene
        code += self.indent * level + f'LUT{len(symms)} #(\n'
        code += self.indent * (level + 1) + f'.INIT({1 << len(symms)}\'h{gene:x})\n'
        code += self.indent * level + f') lut{len(symms)}_gene{place}(\n'
        code += (
            self.indent * (level + 1) + (',\n' + self.indent * (level + 1)).join([f'.O(gene[{place}])'] + args) + '\n'
        )
        code += self.indent * level + f');\n'

        # prop
        code += self.indent * level + f'LUT{len(symms)} #(\n'
        code += self.indent * (level + 1) + f'.INIT({1 << len(symms)}\'h{prop:x})\n'
        code += self.indent * level + f') lut{len(symms)}_prop{place}(\n'
        code += (
            self.indent * (level + 1) + (',\n' + self.indent * (level + 1)).join([f'.O(prop[{place}])'] + args) + '\n'
        )
        code += self.indent * level + f');\n'

        return code

    def gen_lut6_2_instantiation(self, place, symms, asymm, init, level=1):
        code = ''
        args = [f'.O5(gene[{place}])', f'.O6(prop[{place}])']
        for idx, srcidx in enumerate(symms + [asymm]):
            p, i = self.idx2wire[srcidx]
            args += [f'.I{idx}(src{p}[{i}])']
        code += self.indent * level + f'LUT6_2 #(\n'
        code += self.indent * (level + 1) + f'.INIT(64\'h{init:x})\n'
        code += self.indent * level + f') lut6_2_inst{place}(\n'
        code += self.indent * (level + 1) + (',\n' + self.indent * (level + 1)).join(args) + '\n'
        code += self.indent * level + f');\n'
        return code

    def gen_carrychain_instantiation(self, level=1):
        code = ''
        for place in range(0, len(self.spec['lut']), 4):
            code += self.gen_carry4_instantiation(place, level)
        return code

    def gen_carry4_instantiation(self, place, level=1):
        args = [f'.CO(carryout[{place + 3}:{place}])', f'.O(out[{place + 3}:{place}])', '.CYINIT(1\'h0)']
        if place == 0:
            if self.spec['cin'] == None:
                args += [f'.CI(1\'h0)']
            else:
                p, i = self.idx2wire[self.spec['cin']]
                args += [f'.CI(src{p}[{i}])']
        else:
            args += [f'.CI(carryout[{place - 1}])']
        if len(self.spec['lut']) - place >= 4:
            args += [f'.DI(gene[{place + 3}:{place}])']
            args += [f'.S(prop[{place + 3}:{place}])']
        else:
            length = len(self.spec['lut']) % 4
            padding = 4 - (len(self.spec['lut']) - place)
            args += [f'.DI({{{padding}\'h0, gene[{place + length - 1}:{place}]}})']
            args += [f'.S({{{padding}\'h0, prop[{place + length - 1}:{place}]}})']
        code = ''
        code += self.indent * level + f'CARRY4 carry4_inst{place//4}(\n'
        code += self.indent * (level + 1) + (',\n' + self.indent * (level + 1)).join(args) + '\n'
        code += self.indent * level + f');\n'
        return code

    def gen_dst_assignment(self, level=1):
        terms = [f'carryout[{self.width - 2}]']
        for place in range(self.width - 1)[::-1]:
            terms += [f'out[{place}]']
        return self.indent * level + f'assign dst = {{{", ".join(terms)}}};\n'


class TestGenerator(GpcGenerator):
    def __init__(self, spec):
        super().__init__(spec)
        self.test_module_name = f'testbench'

    def gen_module(self):
        code = ''
        code += f'module {self.test_module_name}();\n'
        code += self.gen_wire_reg_declarations()
        code += self.gen_gpc_instantiation()
        code += self.gen_assignments()
        code += self.gen_initial_block()
        code += f'endmodule'
        return code

    def gen_wire_reg_declarations(self, level=1):
        code = ''
        for place, num in enumerate(self.spec['shape']):
            if num > 0:
                code += self.indent * level + f'reg [{num - 1}:0] src{place};\n'
        code += self.indent * level + f'wire [{self.width - 1}:0] dst;\n'
        code += self.indent * level + f'wire [{self.width - 1}:0] exp;\n'
        code += self.indent * level + f'wire test;\n'
        return code

    def gen_assignments(self, level=1):
        terms = []
        for place, idx in self.idx2wire:
            terms += [f'src{place}[{idx}] * {1 << place}']
        code = ''
        code += self.indent * level + f'assign exp = {" + ".join(terms)};\n'
        code += self.indent * level + f'assign test = dst == exp;\n'
        return code

    def gen_gpc_instantiation(self, level=1):
        args = []
        for place, num in enumerate(self.spec['shape']):
            if num > 0:
                args += [f'.src{place}(src{place})']
        args += [f'.dst(dst)']
        code = ''
        code += self.indent * level + f'{self.get_module_name()} {self.get_module_name()}(\n'
        code += self.indent * (level + 1) + (',\n' + self.indent * (level + 1)).join(args) + '\n'
        code += self.indent * level + f');\n'
        return code

    def gen_initial_block(self, level=1):
        code = ''
        code += self.indent * level + f'initial begin\n'
        code += self.gen_monitor(level + 1)
        code += self.gen_test_sequence(level + 1)
        code += self.indent * level + 'end\n'
        return code

    def gen_monitor(self, level):
        args = ['\"']
        for place, num in enumerate(self.spec['shape']):
            if num > 0:
                args += [f'src{place}']
                args[0] += f'src{place}:0x%x, '
        for name in ['dst', 'exp']:
            args += [name]
            args[0] += f'{name}:0x%x, '
        args += ['test']
        args[0] += 'test:%x\"'
        return self.indent * level + f'$monitor({", ".join(args)});\n'

    def gen_test_sequence(self, level):
        code = ''
        terms = [f'src{p}[{i}]' for p, i in self.idx2wire]
        lhs = f'{{{", ".join(terms[::-1])}}}'
        for value in range(1 << sum(self.spec['shape'])):
            code += self.indent * level + f'{lhs} <= {sum(self.spec["shape"])}\'h{value:x};\n'
            code += self.indent * level + f'#1\n'
        code += self.indent * level + f'$finish();\n'
        return code


if __name__ == '__main__':
    with open(sys.argv[1], 'r') as f:
        spec = json.loads(f.read())
    codegen = CodeGenerator(spec)
    print(codegen.gen_module())
    testgen = TestGenerator(spec)
    print(testgen.gen_module())
