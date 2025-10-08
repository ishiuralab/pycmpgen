import sys
from ActivationDeclaration import ActivationDeclaration

class FullyConnectedLayer:
    def __init__(self, input_size,output_size,k):
        self.input_size = input_size
        self.output_size = output_size
        self.k = k
        self.module_name = f'FCL{self.input_size}_{self.output_size}_{self.k}'
        self.indent = '    '

    def gen_module(self):
        code = ''
        code += f'module {self.module_name}(\n{self.get_module_arguments(1)}\n);\n'
        code += self.gen_wire_declarations(1)
        code += self.gen_assignment_declaration(1)
        code += self.gen_relu_instantiations(1)
        code += 'endmodule\n'
        return code

    def get_module_arguments(self,level):
        args = []
        for i in range(self.input_size):
            args.append(self.indent * level + f'input [{self.k-1}:0] src{i}')
        for i in range(self.input_size):
            args.append(self.indent * level + f'input[{self.k-1}:0] weight{i}')
        for j in range(self.output_size):
            args.append(self.indent * level + f'output [{self.k*2+1}:0] sum{j}')
        for j in range(self.output_size):
            args.append(self.indent * level + f'output [{self.k*2+1}:0] act{j}')
        return ',\n'.join(args)

    def gen_wire_declarations(self,level):
        return ''

    def gen_assignment_declaration(self,level):
        code = ''
        inputs_per_output = self.input_size // self.output_size
        remainder = self.input_size % self.output_size
        input_idx = 0
        for j in range(self.output_size):
            count = inputs_per_output + (1 if j < remainder else 0)
            terms = [f'src{input_idx + i} * weight{input_idx + i}' for i in range(count)]
            input_idx += count
            expr = ' + '.join(terms)
            code += self.indent * level + f'assign sum{j} = {expr};\n'
        return code

    def gen_relu_instantiations(self,level):
        code = ''
        for j in range(self.output_size):
            code += self.indent * level + f'RELU relu_inst{j} (.sum{j}(sum{j}), .act{j}(act{j}));\n'
        return code


if __name__ == '__main__':
    input_size = int(sys.argv[1])
    output_size = int(sys.argv[2])
    k = int(sys.argv[3])
    fcl = FullyConnectedLayer(input_size,output_size,k)
    print(fcl.gen_module())

