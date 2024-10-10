#!/usr/bin/env python3

import sys
# --------------------------------------------------------
# timingファイルから遅延を取得するだけ。基本的にシェルでループを回す
# --------------------------------------------------------

txt_file = sys.argv[1]

with open(txt_file, 'r') as file:
    lines = file.readlines()  # ファイル全体をリストとして読み込む
    specific_line = lines[21]  # 0-based indexingなので、3行目はインデックス2
    print(round(float(specific_line.split()[3][0:6]),1))
