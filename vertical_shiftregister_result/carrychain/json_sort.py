#!/usr/bin/env python3




#-------------------------------
# ファイル名をソートするときに使用する
# ------------------------------

import sys

        
# 標準入力からデータを受け取る
input_data = sys.stdin.read().strip()  # 改行などを除去
# 入力データを行ごとに分割
lines = input_data.splitlines()
name_set = []     
cnt = 0
for line in lines:
    name_set.append([0,0,line])
    name_set[cnt][0] = int(line.split('_')[-2])
    name_set[cnt][1] = int(line.split('_')[-3])
    cnt+=1
sorted_set = sorted(name_set)
args = []
for st in sorted_set:
    args.append(st[2])
print('\n'.join(args))
