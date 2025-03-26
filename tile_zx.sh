#!/bin/bash

# 処理カウンタ
count=0

# 引数チェック
if [ $# -ne 3 ]; then
  echo "Usage: $0 <current_dir> <start_line> <end_line>"
  exit 1
fi

# 引数取得
current_dir=$1
start_line=$2
end_line=$3

# 引数が整数かどうか確認
if ! [[ "$start_line" =~ ^[0-9]+$ ]] || ! [[ "$end_line" =~ ^[0-9]+$ ]]; then
  echo "エラー: 開始行と終了行は整数で指定してください。"
  exit 1
fi

# スクリプトのあるディレクトリを取得
script_dir=$(dirname "$(realpath "$0")")

# dirlist.txt をスクリプトのディレクトリに作成
dirlist_file="${script_dir}/dirlist.txt"

# Git管理対象である current_dir とは別の場所に dirlist.txt を作成する
ls -1 "$current_dir" > "$dirlist_file"

# ファイルの総行数を取得
total_lines=$(wc -l < "$dirlist_file")

# 終了行がファイルの行数を超えていたら、最後の行に調整
if [ "$end_line" -gt "$total_lines" ]; then
  end_line=$total_lines
fi

# dirlist.txt の指定行範囲を取得
dirs=$(sed -n "${start_line},${end_line}p" "$dirlist_file")

# ディレクトリ移動
cd "$current_dir" || { echo "ディレクトリ $current_dir が見つかりません。"; exit 1; }

# ディレクトリが存在する場合
if [ -n "$dirs" ]; then
  # ディレクトリごとに処理
  while IFS= read -r dir; do
    if [ -d "$dir" ]; then
      git add "$dir"
      echo "========= ${count} added: $dir =======";
      # カウンタをインクリメント
      count=$((count + 1))
    else
      echo "警告: ディレクトリ $dir は存在しません。"
    fi
  done <<< "$dirs"

  # コミットとプッシュ
  git commit -m "Add bulk files in ${current_dir}"
  git push origin

  echo "$count 件の未追跡ディレクトリを処理しました。"
else
  echo "指定された範囲に処理対象のディレクトリはありません。"
fi

echo "処理を終了します"

git gc --prune=now
