#! /usr/bin/env python3

import sys

import pandas as pd

# xlsxファイルのパスを指定
xlsx_file = sys.argv[1]

# print(xlsx_file,file=sys.stderr)

# 読み込むシート名を指定（デフォルトは最初のシート）
sheet_name = 'Sheet 1'

# 出力するCSVファイルのパス
csv_file = xlsx_file.replace('xlsx','csv')

# Excelファイルを読み込み、シートを指定
df = pd.read_excel(xlsx_file, sheet_name=sheet_name)

# データフレームをCSVファイルに保存
df.to_csv(csv_file, index=False, encoding='utf-8')

data_as_list = df.values.tolist()
print(str(data_as_list[1][5]).rjust(4))