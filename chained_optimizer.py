#!/usr/bin/env python3
import sys

from docplex.mp.linear import LinearExpr
from docplex.mp.model import Model

from optimizer import InfeasibleProblemError, InvalidProblemError, Optimizer


class ChainedOptimizer(Optimizer):
    def build_model(self, objective):
        for gpc in self.gpclist:
            if set(gpc['dst']) != {1} or len(gpc['src']) == len(gpc['dst']):
                raise InvalidProblemError('GPC must be Carrychain-based')
            if not gpc.get('spec', None):
                raise InvalidProblemError(f'Circuit specification is required.')
            if sum(num << col for col, num in enumerate(gpc['src'])).bit_length() == len(gpc['src']):
                raise InvalidProblemError(f'Invalid GPC shape.')
        self.model = Model(name='chained_optimizer')
        self.init_variables()
        self.add_constraint_src()
        self.add_constraint_dst()
        self.add_constraint_chains()
        self.add_constraint_gpc_input()
        self.add_constraint_gpc_output()
        self.add_objective(objective)

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

        self.wireusage = []
        for stg in range(self.stagenum):
            self.wireusage.append(self.model.integer_var_list(self.colnum, lb=0, ub=self.rowlimit, name=f'w{stg}'))

        self.chainusage = []
        for stg in range(self.stagenum):
            self.chainusage.append(self.model.integer_var_list(self.colnum, lb=0, ub=self.gpclimit, name=f'b{stg}'))

    def add_constraint_chains(self):
        for stg in range(self.stagenum):
            for col in range(self.colnum):
                expr = self.model.linear_expr()
                for idx, gpc in enumerate(self.gpclist):
                    expr += self.gpcusage[stg][col][idx]
                self.model.add_constraint(expr >= self.chainusage[stg][col])

        for stg in range(self.stagenum):
            for col in range(self.colnum):
                expr = self.model.linear_expr()
                for idx, gpc in enumerate(self.gpclist):
                    gpcwidth = len(gpc['dst']) - 1
                    if col - gpcwidth >= 0:
                        expr += self.gpcusage[stg][col - gpcwidth][idx]
                self.model.add_constraint(expr >= self.chainusage[stg][col])

    def add_constraint_gpc_input(self):
        for stg in range(self.stagenum):
            for col in range(self.colnum):
                expr = self.model.linear_expr()
                expr += self.wireusage[stg][col]
                expr -= self.chainusage[stg][col]
                for idx, gpc in enumerate(self.gpclist):
                    for c, row in enumerate(gpc['src']):
                        if col - c >= 0:
                            expr += self.gpcusage[stg][col - c][idx] * row
                self.model.add_constraint(expr == self.stages[stg][col])

    def add_constraint_gpc_output(self):
        for stg in range(self.stagenum):
            for col in range(self.colnum):
                expr = self.model.linear_expr()
                expr += self.wireusage[stg][col]
                expr -= self.chainusage[stg][col]
                for idx, gpc in enumerate(self.gpclist):
                    for c, row in enumerate(gpc['dst']):
                        if col - c >= 0:
                            expr += self.gpcusage[stg][col - c][idx] * row
                self.model.add_constraint(expr == self.stages[stg + 1][col])

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
                'wireusage': [[0 for _ in range(self.colnum)] for _ in range(self.stagenum)],
                'chainusage': [[0 for _ in range(self.colnum)] for _ in range(self.stagenum)],
            }
            for stg in range(self.stagenum + 1):
                for col in range(self.colnum):
                    sol['stages'][stg][col] = round(self.stages[stg][col].solution_value)
            for stg in range(self.stagenum):
                for col in range(self.colnum):
                    for idx, gpc in enumerate(self.gpclist):
                        sol['gpcusage'][stg][col][idx] = round(self.gpcusage[stg][col][idx].solution_value)
            for stg in range(self.stagenum):
                for col in range(self.colnum):
                    sol['wireusage'][stg][col] = round(self.wireusage[stg][col].solution_value)
            for stg in range(self.stagenum):
                for col in range(self.colnum):
                    sol['chainusage'][stg][col] = round(self.chainusage[stg][col].solution_value)
            return sol
        else:
            raise InfeasibleProblemError('No solution found for the problem and configuration.')

class ChainedOptimizerLsb7(Optimizer):
    def build_model(self, objective):
        for gpc in self.gpclist:
            if set(gpc['dst']) != {1} or len(gpc['src']) == len(gpc['dst']):
                raise InvalidProblemError('GPC must be Carrychain-based')
            if not gpc.get('spec', None):
                raise InvalidProblemError(f'Circuit specification is required.')
            if sum(num << col for col, num in enumerate(gpc['src'])).bit_length() == len(gpc['src']):
                raise InvalidProblemError(f'Invalid GPC shape.')
        self.lsb7gpcs = []
        self.non7gpcs = []
        for gpc in self.gpclist:
            if gpc['src'][0] == 7:
                self.lsb7gpcs.append(gpc)
            else:
                self.non7gpcs.append(gpc)
        self.model = Model(name='chained_optimizer')
        self.init_variables()

    def init_variables(self):
        self.stages = []
        for stg in range(self.stagenum + 1):
            self.stages.append(self.model.integer_var_list(self.colnum, lb=0, ub=self.rowlimit, name=f's{stg}'))

        self.lsb7usage = [[] for stg in range(self.stagenum)]
        for stg in range(self.stagenum):
            for col in range(self.colnum):
                self.lsb7usage[stg].append(
                    self.model.integer_var_list(len(self.lsb7gpcs), lb=0, ub=self.lsb7gpcs, name=f'l{stg}_{col}')
                )

        self.non7usage = [[] for stg in range(self.stagenum)]
        for stg in range(self.stagenum):
            for col in range(self.colnum):
                self.non7usage[stg].append(
                    self.model.integer_var_list(len(self.non7gpcs), lb=0, ub=self.gpclimit, name=f'n{stg}_{col}')
                )

        self.wireusage = []
        for stg in range(self.stagenum):
            self.wireusage.append(self.model.integer_var_list(self.colnum, lb=0, ub=self.rowlimit, name=f'w{stg}'))

        self.chainusage = []
        for stg in range(self.stagenum):
            self.chainusage.append(self.model.integer_var_list(self.colnum, lb=0, ub=self.gpclimit, name=f'b{stg}'))

        self.reduction = []
        for stg in range(self.stagenum):
            self.reduction.append(self.model.integer_var_list(self.column, lb=0, ub=self.gpclimit, name=f'r{stg}'))

    def add_constraint_chains(self):
        for stg in range(self.stagenum):
            for col in range(self.colnum):
                expr = self.model.linear_expr()
                for idx, gpc in enumerate(self.lsb7gpcs):
                    expr += self.non7usage[stg][col][idx]
                for idx, gpc in enumerate(self.non7gpcs):
                    expr += self.lsb7usage[stg][col][idx]
                self.model.add_constraint(expr >= self.chainusage[stg][col])

        for stg in range(self.stagenum):
            for col in range(self.colnum):
                expr = self.model.linear_expr()
                for idx, gpc in enumerate(self.lsb7gpcs):
                    gpcwidth = len(gpc['dst']) - 1
                    if col - gpcwidth >= 0:
                        expr += self.lsb7usage[stg][col - gpcwidth][idx]
                for idx, gpc in enumerate(self.non7gpcs):
                    gpcwidth = len(gpc['dst']) - 1
                    if col - gpcwidth >= 0:
                        expr += self.non7usage[stg][col - gpcwidth][idx]
                self.model.add_constraint(expr >= self.chain[stg][col])

    def add_constraint_input_reduction(self):
        for stg in range(self.stagenum):
            for col in range(self.colnum):
                self.model_add_constraint(self.reduction[stg][col] >= self.chain[stg][col])
                self.model_add_constraint(self.reduction[stg][col] >= self.lsb7usage[stg][col])

    def add_constraint_gpc_input(self):
        for stg in range(self.stagenum):
            for col in range(self.colnum):
                expr = self.model.linear_expr()
                expr += self.wireusage[stg][col]
                expr -= self.reduction[stg][col]
                for idx, gpc in enumerate(self.lsb7gpcs):
                    for c, row in enumerate(gpc['src']):
                        if col - c >= 0:
                            expr += self.lsb7usage[stg][col - c][idx] * row
                for idx, gpc in enumerate(self.non7gpcs):
                    for c, row in enumerate(gpc['src']):
                        if col - c >= 0:
                            expr += self.non7usage[stg][col - c][idx] * row
                self.model.add_constraint(expr == self.stages[stg][col])


if __name__ == '__main__':
    import problem
    import compressor
    import json

    with open(f'gpclist/reduced.json') as f:
        # with open(f'gpclist/reduced_conventional.json') as f:
        gpclist = json.loads(f.read())

    # prob = problem.multiplier.Multiplier(7, 1, 2, gpclist)
    # prob = problem.rectangle.Rectangle(12, 32, 2, 2, gpclist)
    # prob = problem.rectangle.Rectangle(128, 12, 2, 5, gpclist)
    # prob = problem.multiplier.Multiplier(18, 2, 2, gpclist)
    prob = problem.multiplier.Multiplier(54, 2, 3, gpclist)
    # prob = problem.multiplier.Multiplier(32, 1, 4, gpclist)
    # prob = problem.square.Square(54, 1, 4, gpclist)
    # prob = problem.multiplier.Multiplier(128, 6, 3, gpclist)

    opt = ChainedOptimizer(prob.get_dict(), objective=None)
    sol = opt.solve()
    print(sol)
    for stg, stage in enumerate(sol['gpcusage']):
        for col, column in enumerate(stage):
            for idx, num in enumerate(column):
                if num > 0:
                    print(stg, col, gpclist[idx]['module'], num)
    for stg, stage in enumerate(sol['wireusage']):
        for col, num in enumerate(stage):
            if num > 0:
                print(stg, col, 'wire', num)
    for stg, stage in enumerate(sol['chains']):
        for col, num in enumerate(stage):
            if num > 0:
                print(stg, col, 'chain', num)
