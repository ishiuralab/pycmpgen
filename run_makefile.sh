#!/bin/bash

# 標準入力からファイル名を取得
"$1" 

# デバッグメッセージ
echo "Read filename: '$1'"

# Makefileにファイル名を渡して実行
make FILENAME="$1"
