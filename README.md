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
- [chained_compressor](./chained_compressor.py)

