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
  - `Optimizer` クラス
- [compressor.py](./compressor.py)
  - `Compressor` クラス

### Rowadder Tree
- rowadder とは, 2 つ以上の 2 進数を加算するキャリーチェーンをベースとした回路です.
- 2 つの値を 1 つまで足し合わせる 2-1 rowadder と, 6 つの値を 2 つまで足し合わせる 6-2 rowadder が知られています.
- これらの rowadder は GPC をキャリーチェーンで接続した回路とみなすことができます.
- 2-1 rowadder は (3;2) のチェーンであり, 6-2 rowadder は (6,0,7;5) のチェーンを 2 本束ねたものです.
- [rowadder.py](./rowadder.py)
  - `RowAdderGen` クラス

### GPC Chain Tree
- GPC Chain Tree は, コンプレッサツリーの GPC を rowadder のようにキャリーチェーンを使って接続した回路の木です.
- 現状, 最も面積効率の良い多入力加算器を作れます.
- [chained_optimizer](./chained_optimizer.py)
  - `ChainedOptimizerLsb7`
- [chained_compressor](./chained_compressor.py)
  - `ChainedCompressorLsb7`

`ChainedOptimizerLsb7` 及び `ChainedCompressorLsb7` は最下位が 7 入力の GPC が 1 スライス実装できないという問題を解決するためのものです.

そのような問題が発生しない場合は, `ChainedOptimizer`, `ChainedCompressor` で問題ありません.

## Usage
### 1. 問題の定義 (Problem クラスの使い方/定義し方)
ソルバー (`Optimizer`, `ChainedOptimizer`, `ChainedOptimizerLsb7`) に与える問題 (定数群) は, `Problem` クラスを継承したクラスとして定義します.

普通のコンプレッサツリーを作る場合でも, GPC Chain Tree を作る場合でも, `Problem` クラスは共通です.

`Problem` クラスは以下のフィールドを持ちます.
- `stagenum` (整数): ステージ数
- `colnum` (整数): 列数
- `src` (整数のリスト): 入力形状 (多入力加算器の入力の各列のビット数)
- `dst` (整数のリスト): 出力形状 (多入力加算器の出力の各列のビット数)
- `gpclimit` (整数): 各段, 各列の各 GPC の仕様数の上限
- `rowlimit` (整数): 各段, 各列のビット数の上限

各フィールドは以下の関係を満たす必要があります.
- `assert len(self.src) == self.colnum`
- `assert len(self.dst) == self.colnum`
- `assert max(self.src) <= self.rowlimit`
- `assert max(self.dst) <= self.rowlimit`
- `assert max(self.src) <= self.gpclimit`
- `assert max(self.dst) <= self.gpclimit`

この関係は, `validate()` を呼ぶことにより, チェックされます.

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

### 2. 最適化 (Optimizer の使い方)
定義した問題について, 最適な回路を計算します. `Optimizer` ([optimizer.py](./optimizer.py)) と `ChainedOptimizer`, `ChainedOptimizerLsb7` ([chained_optimizer.py](./chained_optimizer.py)) の使い方です.

#### 2.1 基本の使い方

これらのクラスは以下をコンストラクタの引数にとります.
- 問題 (`prob`)
  - 問題の定数群をまとめた辞書 (`Problem.get_dict()` で得られる)
- 目的 (`objective`)
  - None: 目的関数なし (最初の実行可能解を発見したら停止する)
  - 'cost': GPC のコストの和を最小化
  - 'gpcnum': GPC の使用数を最小化 (GPC (1;1) は自動で除外)


問題の辞書は, `Problem` クラスの `get_dict()` を呼ぶことで得られます.
例えば, 128 ビットのポップカウンタは (先程定義したクラスを用いて) 以下のようにすると初期解 (最初の実行可能解) の探索が行われます.

```python
from problem.popcounter import Popcounter
from optimizer import Optimizer, InfeasibleProblemError

prob = Popcounter(128, 2, 5)
opt  = Optimizer(prob.get_dict(), objective=None)
sol  = opt.solve()
```

`solve` メソッドは以下を行います.
- 解の探索を行い, 回路構成を格納した辞書として返します. (上記では, `sol` に解を代入しています.)
- 探索の制限時間 (`timelimit`) を指定することができます (optional).
  - 何も指定しない場合, 無制限となります.
- 解が存在しないことがわかった場合 `InfieasibleProblemError` を raise します.

`Problem` クラスで段数は固定なので, コンプレッサツリーを構成できる最小段数を得るには以下のように段数を小さい順に指定して探索を行います.

```python
from problem.popcounter import Popcounter
from optimizer import Optimizer, InfeasibleProblemError
from compressor import Compressor

maxstage = 10

for stage in range(maxstage + 1):
    prob = Popcounter(128, 2, stage)
    opt  = Optimizer(prob.get_dict(), objective=None)
    try:
        sol = opt.solve() # 見つからなかったらエラー
        break # ここに到達したら解発見
    except InfeasibleProblemError: # エラー回収
        continue
```

- Compressor Tree
  - `Optimizer` クラス
  - [optimizer.py](./optimizer.py)
- GPC Chain Tree
  - `Compressor` クラス
  - [chained_optimizer.py](./chained_optimizer.py)

#### 2.1 初期解の設定

すでに得られている実行可能解を用いて, その解を初期解として最適化を行うことができます.

```python
import problem
import optimizer

maxstage = 10

for stage in range(maxstage + 1):
    prob = problem.popcounter.Popcounter(128, 2, stage)
    opt  = optimizer.Optimizer(prob.get_dict(), objective=None)
    try:
        sol = opt.solve() # 見つからなかったらエラー
        break # ここに到達したら解発見
    except optimizer.InfeasibleProblemError: # エラー回収
        continue

opt = optimizer.Optimizerf(prob.get_dict(), objective='cost') # コストを目的に指定して optimizer を作り直し
opt.add_mip_start(sol) # 初期解を設定
sol = opt.solve() # 最適化
```


### 3. 回路記述生成 (Compressor の使い方)

解から実際に回路記述を生成します. `Compressor` ([compressor.py](./compressor.py)) と `ChainedCompressor`, `ChainedCompressorLsb7`([chained_compressor.py](./chained_compressor.py)) の使い方を解説します.

`Compressor` クラスのコンストラクタは引数として以下を取ります.
- 問題 (`prob`)
  - 問題の定数群をまとめた辞書 (`Problem.get_dict()` で得られる)
- 解 (`sol`)
  - 解を表す辞書 (`Optimizer.solve()` で得られる)
  
先程のコンプレッサツリーのコードでは以下のようにするとコンプレッサツリークラスのインスタンスを作れます.

```python
from problem.popcounter import Popcounter
from optimizer import Optimizer, InfeasibleProblemError
from compressor import Compressor

maxstage = 10

for stage in range(maxstage + 1):
    prob = Popcounter(128, 2, stage)
    opt  = Optimizer(prob.get_dict(), objective=None)
    try:
        sol = opt.solve() # 見つからなかったらエラー
        break # ここに到達したら解発見
    except InfeasibleProblemError: # エラー回収
        continue

opt = Optimizer(prob.get_dict(), objective='cost') # コストを目的に指定して optimizer を作り直し
opt.add_mip_start(sol) # 初期解を設定
sol = opt.solve() # 最適化

comp = Compressor(prob.get_dict(), sol)
```


#### 3.1 コード生成

`Compressor.gen_module()` メソッドで, コンプレッサツリーの Verilog 記述を文字列として得られます.

`gen_module` メソッドは以下の引数を取ります.
- モジュール名 `name = 'compressor'`

```python
print(comp.gen_module())
```

```verilog
module compressor (
      input wire [127:0] src0,
      output wire [1:0] dst0,
      output wire [1:0] dst1,
      output wire [1:0] dst2,
      output wire [1:0] dst3,
      output wire [1:0] dst4,
      output wire [1:0] dst5,
      output wire [0:0] dst6);

   wire [127:0] stage0_0;
   wire [19:0] stage1_0;
   wire [17:0] stage1_1;
   wire [17:0] stage1_2;
   wire [3:0] stage2_0;
   wire [5:0] stage2_1;
   wire [5:0] stage2_2;
   // ...略...
   gpc1_1 gpc29 (
      {stage2_0[3]},
      {stage3_0[1]}
   );
endmodule
```

コンプレッサモジュールは以下のポートを持ちます.
- 入力 `src{col}` (wire)
  - 0 桁目から順に, `src0`, `src1`... のように, `src` に何桁目 (下から何列目) かを表す数字が 10 進数で付きます.
  - 長さは `Problem.src` の各要素と一致します.
  - 長さが 0 のワイヤがある場合, そのワイヤは削除されます.
- 出力 `dst{col}` (wire)
  - 0 桁目から順に, `dst0`, `dst1`... のように, `dst` に何桁目 (下から何列目) かを表す数字が 10 進数で付きます.
  - 各ワイヤは `Problem.dst` の各要素以下です. (一致するとは限らず)
  - 長さが 0 のワイヤがある場合, そのワイヤは削除されます.


#### 3.2 回路シミュレーションによるランダムテスト

`Compressor.randomtest()` メソッドで, ランダムな入力に対して回路をシミュレーションし, 加算器になっているかを検証できます.

```python
print('PASS' if comp.randomtest(1 << 10) else 'FAIL', file=sys.stderr)
```

全てのテストをパスすると True, 一つでもコケるとその時点で False を返します.

### 4. テストベンチの生成

`Compressor` のインスタンス等を用いてテストベンチを自動生成することができます.

コンストラクタは以下の引数を取ります.
- 入力形状 `src`
  - `Compressor.stages[0]` 等
- 出力形状 `dst`
  - `Compressor.stages[-1]` 等
  - `Problem.dst` とは必ずしも一致しません (最適化で減ることがある).
- テスト対象モジュールの名前 `name`
- 繰り返し回数 `iteration = 100`

テストシーケンスは以下の 3 種類で, この順に生成されます.
- 全部 0
- 全部 1
- ランダムな入力 `iteration` 回


```python
from problem.popcounter import Popcounter
from optimizer import Optimizer, InfeasibleProblemError
from compressor import Compressor
from testbench import Testbench

maxstage = 10

for stage in range(maxstage + 1):
    prob = Popcounter(128, 2, stage)
    opt  = Optimizer(prob.get_dict(), objective=None)
    try:
        sol = opt.solve() # 見つからなかったらエラー
        break # ここに到達したら解発見
    except InfeasibleProblemError: # エラー回収
        continue

opt = Optimizer(prob.get_dict(), objective='cost') # コストを目的に指定して optimizer を作り直し
opt.add_mip_start(sol) # 初期解を設定
sol = opt.solve() # 最適化

comp = Compressor(prob.get_dict(), sol)
print(comp.gen_module('popcounter'))

# テストベンチ
tb = Testbench(comp.stages[0], comp.stages[-1], 'popcounter')
print(tb.gen_module())
```

```shellsession
$ python3 test.py > test.v # 上記の Python スクリプトを実行
...略...
$ iverilog test.v gpclist/gpc1_1.v ../xilinx-verilog-emulators/*.v ../advgpcgen-rs/hdl/gpc/gpc*.v -o testbench
$ ./testbench
srcsum: 0x00, dstsum: 0x00, test: 1
srcsum: 0x80, dstsum: 0x80, test: 1
srcsum: 0x43, dstsum: 0x43, test: 1
...略...
srcsum: 0x40, dstsum: 0x40, test: 1
srcsum: 0x3f, dstsum: 0x3f, test: 1
srcsum: 0x3f, dstsum: 0x3f, test: 1
$ 
```

テストベンチとモジュールののコンパイルには以下が必要です.
- (Compressor Tree の場合) GPC の設計記述 (advgpcgen-rs の hdl ブランチを参照)
- (Compressor Tree の場合) GPC (1;1) の設計記述 (単なるワイヤ)
- LUT と CARRY4 の記述

テストベンチの各出力の見方は以下です. `test` が全て 1 ならば成功, さもなくば失敗です.
- `srcsum`: 入力の和
- `dstsum`: 出力の和
- `test`: `srcsum == dstsum`

### 5. 論理合成, 配置配線 (ShiftRegister の使い方)
Vivado で配置配線を行うとき, 大規模な多入力加算器の場合は入出力ポートが多すぎて配線できないことがあります.
そこで, 入力をシフトレジスタから供給することにより, 必要なポートを削減してこの問題をある程度解決できます.

シフトレジスタモジュールの生成には `ShiftRegister` ([shift_register.py](./shift_register.py)) を使います.

`ShiftRegister` クラスのコンストラクタは以下の引数を取ります. (テストベンチとほぼ同じです.)
- 入力形状 `src`
  - `Compressor.stages[0]` 等
- 出力形状 `dst`
  - `Compressor.stages[-1]` 等
  - `Problem.dst` とは必ずしも一致しません (最適化で減ることがある).
- テスト対象モジュールの名前 `name`

```python
from problem.popcounter import Popcounter
from optimizer import Optimizer, InfeasibleProblemError
from compressor import Compressor
from testbench import Testbench
from shift_register import ShiftRegister

maxstage = 10

for stage in range(maxstage + 1):
    prob = Popcounter(128, 2, stage)
    opt  = Optimizer(prob.get_dict(), objective=None)
    try:
        sol = opt.solve() # 見つからなかったらエラー
        break # ここに到達したら解発見
    except InfeasibleProblemError: # エラー回収
        continue

opt = Optimizer(prob.get_dict(), objective='cost') # コストを目的に指定して optimizer を作り直し
opt.add_mip_start(sol) # 初期解を設定
sol = opt.solve() # 最適化

comp = Compressor(prob.get_dict(), sol)
print(comp.gen_module('popcounter'))

# テストベンチ
tb = Testbench(comp.stages[0], comp.stages[-1], 'popcounter')
# print(tb.gen_module())

# シフトレジスタ
sr = ShiftRegister(comp.stages[0], comp.stages[-1], 'popcounter')
print(sr.gen_module())
```

生成されるシフトレジスタを以下に示します.
- 列ごとにシフトレジスタにする
  - ここではポップカウンタなので 1 本しかありません
- 出力はそのまま出力

```verilog
module shift_register(
        input wire clk,
        input wire src0_,
        output wire [1:0] dst0,
        output wire [1:0] dst1,
        output wire [1:0] dst2,
        output wire [1:0] dst3,
        output wire [1:0] dst4,
        output wire [1:0] dst5,
        output wire [0:0] dst6);
    reg [127:0] src0;
    popcounter popcounter(
            .src0(src0),
            .dst0(dst0),
            .dst1(dst1),
            .dst2(dst2),
            .dst3(dst3),
            .dst4(dst4),
            .dst5(dst5),
            .dst6(dst6));
    initial begin
        src0 <= 128'h0;
    end
    always @(posedge clk) begin
        src0 <= {src0, src0_};
    end
endmodule
```

### 6. Row Adder 生成系 (RowAdderGen の使い方)
[rowadder.py](./rowadder.py) を用いてキャリーチェーンを用いた行加算器を多段化した回路を作ることができます.
6-2 rowadder と 2-1 rowadder の最適な組み合わせを自動的に求めます. (TODO: 最適になってないので直す)
ソルバーは不要です.

`RowAdderGen` クラスのコンストラクタは以下の引数を取ります.
- 行数 `row`
- 列数 `col`

`RowAdderGen.gen_module()` で行加算器モジュールが生成できます. このメソッドは以下の引数を取ります.
- モジュール名 `name = f'rowadder{row}_1_{col}'`
  - `rowadder{入力の行数}_{出力の行数}_{列数}` を表します.

`RowAdderGen.gen_testbench()` でテストベンチが生成できます. (TODO: 回数設定)

以下は 4 ビットの値を 8 個足し合わせる行加算器を得る例です.

```python
from rowadder import RowAdderGen

ra = RowAdderGen(8, 4)
print(ra.gen_module())
print(ra.gen_testbench())
```

生成されるモジュールは以下です.

行加算器モジュールは以下のポートを持ちます.
- 入力 `src{row}` (wire)
  - 各行の入力 (row 個)
  - 何行目かを表す数字が 10 進数で付きます.
- 出力 `dst0` (wire)
  - コンプレッサツリー等と異なり, 1 つの長いワイヤで出力を表します.

```verilog
// ...略...
module rowadder8_1_4(input [3:0] src0, input [3:0] src1, input [3:0] src2, input [3:0] src3, input [3:0] src4, input [3:0] src5, input [3:0] src6, input [3:0] src7, output [6:0] dst0);
    wire [7:0] internal0;
    wire [6:0] internal1;
    wire [6:0] internal2;
    wire [4:0] internal3;
    wire [4:0] internal4;
    assign dst0 = internal0[6:0];
    rowadder2_1_7_ rowadder_0(.src0(internal1), .src1(internal2), .dst0(internal0));
    rowadder6_2_5_ rowadder_1(.src0(internal3), .src1(internal4), .src2({1'h0, src0}), .src3({1'h0, src1}), .src4({1'h0, src2}), .src5({1'h0, src3}), .dst0(internal1), .dst1(internal2));
    rowadder2_1_4_ rowadder_2(.src0(src4), .src1(src5), .dst0(internal3));
    rowadder2_1_4_ rowadder_3(.src0(src6), .src1(src7), .dst0(internal4));
endmodule

module testbench();
    reg [3:0] src0;
    reg [3:0] src1;
    reg [3:0] src2;
    reg [3:0] src3;
    reg [3:0] src4;
    reg [3:0] src5;
    reg [3:0] src6;
    reg [3:0] src7;
    wire [6:0] dst0;
    wire [6:0] ans;
    wire test;
    assign ans = src0+src1+src2+src3+src4+src5+src6+src7;
    assign test = ans == dst0;
    rowadder8_1_4 ra(.src0(src0), .src1(src1), .src2(src2), .src3(src3), .src4(src4), .src5(src5), .src6(src6), .src7(src7), .dst0(dst0));
    initial begin
        $monitor("%x %x %x", ans, dst0, test);
        src0 <= 4'h0;
        src1 <= 4'h0;
        src2 <= 4'h0;
        src3 <= 4'h0;
        src4 <= 4'h0;
        src5 <= 4'h0;
        src6 <= 4'h0;
        src7 <= 4'h0;
        #1;
        src0 <= 4'hf;
        src1 <= 4'hf;
        src2 <= 4'hf;
        src3 <= 4'hf;
        src4 <= 4'hf;
        src5 <= 4'hf;
        src6 <= 4'hf;
        src7 <= 4'hf;
        #1;
        src0 <= 4'he;
        src1 <= 4'h1;
        src2 <= 4'hf;
        src3 <= 4'hb;
        src4 <= 4'h1;
        src5 <= 4'h3;
        src6 <= 4'h2;
        src7 <= 4'h3;
        #1;
        // ...略...
    end
endmodule
```

## 各モジュールのポート
|        | Compressor Tree   | GPC Chain Tree    | ShiftRegister      | RowAdderGen       |
|--------|-------------------|-------------------|--------------------|-------------------|
| 入力   | 列ごと `src{col}` | 列ごと `src{col}` | 列ごと `src{col}_` | 行ごと `src{row}` |
| 出力   | 列ごと `dst{col}` | 列ごと `dst{col}` | 列ごと `dst{col}`  | 行ごと  `dst0`    |
| その他 |                   |                   | クロック `clk`     |                   |

## See Also
- [Advanced Generalized Parallel Counter Generator](https://github.com/ishiuralab/advgpcgen-rs)
- [Rowadder Generatior](https://github.com/ishiuralab/rowadders) (to be appeared...?)

## Related Publications
- 野田麦, 石浦菜岐佐: ''一般化並列カウンタのチェーン状接続によるコンプレッサツリーの効率的FPGA実装'' *電子情報通信学会技術研究報告* VLD2024-84, pp. 47-52 (Jan. 2025). [pdf](https://cs.kwansei.ac.jp/~ishiura/publications/T2025-01a.pdf)
- M.Noda and N.Ishiura: ''Enumeration of Generalized Parallel Counters for Multi-Input Adder Synthesis for FPGAs,'' in *Proc. Asia and Pacific Conference on Circuits and Systems (APCCAS 2024)*, pp. 64-68 (Nov. 2024). [pdf](https://cs.kwansei.ac.jp/~ishiura/publications/C2024-11.pdf) [IEEE Xplore](https://ieeexplore.ieee.org/document/10808619)
- 野田麦, 叶亮, 石浦菜岐佐: ''一般化並列カウンタ (6,0,7;5) による多入力加算器の効率的 FPGA 実装,'' *電子情報通信学会ソサイエティ大会*, A-6-2 (Sept. 2024). [pdf](https://cs.kwansei.ac.jp/~ishiura/publications/M2024-09b.pdf)
- 野田麦, 石浦菜岐佐: ''コンプレッサツリー生成のための一般化並列カウンタの網羅的探索,'' *情報通信学会 DA シンポジウム 2024*, pp. 106-112 (Aug. 2024). [pdf](https://cs.kwansei.ac.jp/~ishiura/publications/T2024-08.pdf)
- T.Tanigawa, M.Noda and N.Ishiura: ''Efficient FPGA Implementation of Binarized Neural Networks Based on Generalized Parallel Counter Tree,'' in *Proc. the Workshop on Synthesis And System Integration of Mixed Information Techonologies (SASIMI 2024)*, pp. 32-37 (Mar. 2024). [pdf](https://cs.kwansei.ac.jp/~ishiura/publications/C2024-03a.pdf)
- 谷川貴弘, 野田麦, 石浦菜岐佐: ''一般化並列カウンタ木に基づく2値化ニューラルネットワークの効率的FPGA実装,'' *電子情報通信学会技術研究報告* VLD2022-68, pp. 50-55 (Jan. 2023). [pdf](https://cs.kwansei.ac.jp/~ishiura/publications/T2023-01.pdf)
- 野田麦, 石浦菜岐佐: ''一般化並列カウンタ追加によるコンプレッサツリーの効率的FPGA実装,'' *電子情報通信学会総合大会* A-6-3 (Mar. 2023). [pdf](https://cs.kwansei.ac.jp/~ishiura/publications/M2023-03a.pdf)

## Authors
- Mugi Noda (void-hoge)
- Ryo Kanai (Lona01001000)
