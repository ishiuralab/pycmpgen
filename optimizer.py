#!/usr/bin/env python3

import sys

from docplex.mp.linear import LinearExpr
from docplex.mp.model import Model


class InfeasibleProblemError(RuntimeError):
    pass


class Optimizer:
    def __init__(self, prob, objective=None):
        for key, value in prob.items():
            setattr(self, key, value)
        self.model = Model(name='compressor')
        self.init_variables()
        self.add_constraint_src()
        self.add_constraint_dst()
        self.add_constraint_gpc_input()
        self.add_constraint_gpc_output()
        self.add_objective(objective)

    def add_mip_start(self, sol):
        solution = self.model.new_solution()
        for stg in range(self.stagenum + 1):
            for col in range(self.colnum):
                solution.add_var_value(self.stages[stg][col], sol['stages'][stg][col])
        for stg in range(self.stagenum):
            for col in range(self.colnum):
                for idx, _ in enumerate(self.gpclist):
                    solution.add_var_value(self.gpcusage[stg][col][idx], sol['gpcusage'][stg][col][idx])
        self.model.add_mip_start(solution)

    def solve(self, timelimit=None):
        if timelimit:
            self.model.set_time_limit(timelimit)
        self.model.context.solver.log_output = sys.stderr
        data = self.model.solve()
        if data:
            print(data.objective_value, file=sys.stderr)
            sol = {
                'stages': [[0 for _ in range(self.colnum)] for _ in range(self.stagenum + 1)],
                'gpcusage': [
                    [[0 for _ in range(len(self.gpclist))] for _ in range(self.colnum)] for _ in range(self.stagenum)
                ],
            }
            for stg in range(self.stagenum + 1):
                for col in range(self.colnum):
                    sol['stages'][stg][col] = round(self.stages[stg][col].solution_value)
            for stg in range(self.stagenum):
                for col in range(self.colnum):
                    for idx, gpc in enumerate(self.gpclist):
                        sol['gpcusage'][stg][col][idx] = round(self.gpcusage[stg][col][idx].solution_value)
            return sol
        else:
            raise InfeasibleProblemError('No solution found for the problem and configuration.')

    def init_variables(self):
        self.stages = []
        for stg in range(self.stagenum + 1):
            self.stages.append(self.model.integer_var_list(self.colnum, lb=0, ub=self.rowlimit, name=f's{stg}'))
        self.gpcusage = [[] for stg in range(self.stagenum)]
        for stg in range(self.stagenum):
            for col in range(self.colnum):
                self.gpcusage[stg].append(
                    self.model.integer_var_list(len(self.gpclist), lb=0, ub=self.gpclimit, name=f'g{stg}_{col}')
                )

    def add_constraint_src(self):
        for col in range(self.colnum):
            self.model.add_constraint(self.stages[0][col] == self.src[col])

    def add_constraint_dst(self):
        for col in range(self.colnum):
            self.model.add_constraint(self.stages[-1][col] <= self.dst[col])

    def add_constraint_gpc_input(self):
        for stg in range(self.stagenum):
            for col in range(self.colnum):
                expr = self.model.linear_expr()
                for idx, gpc in enumerate(self.gpclist):
                    for c, row in enumerate(gpc['src']):
                        if col - c >= 0:
                            expr += self.gpcusage[stg][col - c][idx] * row
                self.model.add_constraint(expr >= self.stages[stg][col])

    def add_constraint_gpc_output(self):
        for stg in range(self.stagenum):
            for col in range(self.colnum):
                expr = self.model.linear_expr()
                for idx, gpc in enumerate(self.gpclist):
                    for c, row in enumerate(gpc['dst']):
                        if col - c >= 0:
                            expr += self.gpcusage[stg][col - c][idx] * row
                self.model.add_constraint(expr == self.stages[stg + 1][col])

    def add_objective(self, objective):
        if objective in ['cost', 'gpcnum']:
            expr = self.model.linear_expr()
            for stg in range(self.stagenum):
                for col in range(self.colnum):
                    for idx, gpc in enumerate(self.gpclist):
                        if objective == 'cost':
                            expr += self.gpcusage[stg][col][idx] * gpc['cost']
                        elif objective == 'gpcnum':
                            if sum(gpc['src']) != 1 or sum(gpc['dst']) != 1:
                                expr += self.gpcusage[stg][col][idx]
            self.model.minimize(expr)

    def end(self):
        self.model.end()


if __name__ == '__main__':
    import problem
    import compressor
    import json

    with open('gpclist/noda_mt.json', 'r') as f:
        gpclist = json.loads(f.read())

    # prob = problem.multiplier.Multiplier(16, 6, 1)
    # prob = problem.multiplier.Multiplier(32, 6, 2)
    # prob = problem.multiplier.Multiplier(64, 6, 3)
    # prob = problem.multiplier.Multiplier(128, 6, 4)
    # prob = problem.multiplier.Multiplier(256, 6, 5)

    # prob = problem.popcounter.Popcounter(32, 2, 6)
    # prob = problem.popcounter.Popcounter(1024, 6, 4)
    # prob = problem.popcounter.Popcounter(2048, 6, 5)
    # prob = problem.popcounter.Popcounter(4096, 6, 6)
    # prob = problem.popcounter.Popcounter(8192, 6, 6)


    # prob = problem.neuron.Neuron(14, 2, 2)
    prob = problem.rectangle.Rectangle(128, 12, 2, 5, gpclist)

    # prob = problem.neuron.Neuron(14, 2, 2, gpclist)

    print(prob.get_dict())
    opt = Optimizer(prob.get_dict(), objective=None)
    sol = opt.solve()

    opt = Optimizer(prob.get_dict(), objective='cost')
    opt.add_mip_start(sol)
    sol = opt.solve(120)
    opt.end()
    comp = compressor.Compressor(prob.get_dict(), sol)
    print(json.dumps(comp.netlist))
    print('PASS' if comp.randomtest(1 << 10) else 'FAIL')
