# PYCMPGEN
- ILP-Optimized Compressor Tree Generator written in Python3
- pycmpgen は, 一般化並列カウンタ (Generalized Parallel Counter;GPC) を用いた多入力加算器の効率的な FPGA 実装を生成するツールチェインです.
- IBM ILOG CPLEX を用いてコンプレッサツリーの回路規模最小化問題を解き, その結果を Verilog HDL のモジュールとして出力します.

## Depends
- Python3.10
- CPLEX (Python Module)

## Terms
### Generalized Parallel Counter
- GPC は, 全加算器を拡張して複数桁から入力を受けられるようにした小規模加算器です.
- FPGA の LUT やキャリーロジックに最適化された実装がいくつか知られており, 本プロジェクトではこれを基本素子として加算器を構築します.
- Xilinx 7 シリーズの 1 スライスで実装可能な多入力加算器は約 60 種類知られています [advgpcgen-rs](https://github.com/ishiuralab/advgpcgen-rs).

### Compressor Tree
- コンプレッサツリーとは, GPC を用いた桁上げ保存加算器の木です.
- 各段の入力を GPC に与え, それぞれの GPC は部分和を次の段に出力します. 
- [optimizer.py](./optimizer.py)
- [compressor.py](./compressor.py)

### Rowadder Tree
- rowadder とは, 2 つ以上の 2 進数を加算するキャリーチェーンをベースとした回路です.
- 2 つの値を 1 つまで足し合わせる 2-1 rowadder と, 6 つの値を 2 つまで足し合わせる 6-2 rowadder が知られています.
- これらの rowadder は GPC をキャリーチェーンで接続した回路とみなすことができます.
- 2-1 rowadder は (3;2) のチェーンであり, 6-2 rowadder は (6,0,7;5) のチェーンを 2 本束ねたものです.
- [rowadder.py](./rowadder.py)

### Chained GPC Tree 
- Chained GPC Tree は, コンプレッサツリーの GPC を rowadder のようにキャリーチェーンを使って接続した木です.
- 現状, 最も面積効率の良い多入力加算器を作れます.
- [chained_optimizer](./chained_optimizer.py)
- [chained_compressor](./chained_compressor.py)


## Usage
### 1. 問題の定義
ソルバー ([optimier.py](./optimizer.py) や [chained_optimizer.py](./chained_optimizer.py)) に与える問題 (定数群) は, Problem クラスを継承したクラスとして定義します.

Problem クラスは以下のフィールドを持ちます.
- stagenum (整数): ステージ数
- colnum (整数): 列数
- src (整数のリスト): 入力形状 (多入力加算器の入力の各列のビット数)
- dst (整数のリスト): 出力形状 (多入力加算器の出力の各列のビット数)
- gpclimit (整数): 各段, 各列の各 GPC の仕様数の上限
- rowlimit (整数): 各段, 各列のビット数の上限

各フィールドは以下の関係を満たす必要があります.
- `assert len(self.src) == self.colnum`
- `assert len(self.dst) == self.colnum`
- `assert max(self.src) <= self.rowlimit`
- `assert max(self.dst) <= self.rowlimit`
- `assert max(self.src) <= self.gpclimit`
- `assert max(self.dst) <= self.gpclimit`

この関係は, validate() を呼ぶことにより, チェックされます.

例えば, ポップカウンタは以下のように定義できます.
```python
#!/usr/bin/env python3

import json
from problem import problem


class Popcounter(problem.Problem):
    def __init__(self, size, dstlimit, stagenum, gpclist=problem.default_gpclist):
        # size: ポップカウントするビット数
        # dstlimit: 出力の行数
        # stagenum: ステージ数
        # gpclist: GPC の集合
        super().__init__(gpclist)
        self.stagenum = stagenum
        self.colnum = size.bit_length()
        self.src = [size] + [0] * (self.colnum - 1)
        # ポップカウンタの入力は, 1 の位 (0 列目) に size 個のビットがあり, 1 列目から colnum - 1 列目まで 0 ビット
        self.dst = [dstlimit] * self.colnum
        self.gpclimit = size
        self.rowlimit = size
        self.validate()
```
