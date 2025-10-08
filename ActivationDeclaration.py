import sys

class ActivationDeclaration:
    def __init__(self,input_size,output_size,k):
        self.input_size = input_size
        self.output_size = output_size
        self.k = k
        self.module_name = f'RELU'
        self.indent = '    '

    def gen_module(self):
        code = ''
        code += f'module {self.module_name}({self.get_module_arguments()});\n'
        code += self.gen_activation_declaration(1)
        code += 'endmodule\n'
        return code

    def get_module_arguments(self):
        args = []
        for j in range(self.output_size):
            args.append(f'input [{self.k*2+1}:0] sum{j}')
        for j in range(self.output_size):
            args.append(f'output [{self.k*2+1}:0] act{j}')
        return ', '.join(args)
    
    def gen_activation_declaration(self,level):
        code = ''
        for j in range(self.output_size):
            code += self.indent * level + f"assign act{j} = (sum{j} == 0) ? {(self.k+1)*2}'d0 : sum{j};\n"
        return code

if __name__ == '__main__':
    input_size = int(sys.argv[1])
    output_size = int(sys.argv[2])
    k = int(sys.argv[3])
    ad = ActivationDeclaration(input_size,output_size,k)
    print(ad.gen_module())