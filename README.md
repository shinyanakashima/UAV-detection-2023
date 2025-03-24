# 概要
2023年度のUAV調査の結果を取りまとめる。
全件は重過ぎるので、リポジトリ内にある各プロジェクトをapp内にまとめていく。

## 確認用ページ

| 調査日                       | GitHubリポジトリURL                                                                                                                                | DEMO画面URL                                                            |
| ---------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------- |
| 2023/09/21                   | [![GitHub Repo](https://img.shields.io/badge/GitHub-Repository-blue?logo=github)](https://github.com/shinyanakashima/ryuboku-detection-20230921)   | [DEMO](https://shinyanakashima.github.io/ryuboku-detection-20230921)   |
| 2023/09/11                   | [![GitHub Repo](https://img.shields.io/badge/GitHub-Repository-blue?logo=github)](https://github.com/shinyanakashima/ryuboku-detection-20230911)   | [DEMO](https://shinyanakashima.github.io/ryuboku-detection-20230911)   |
| 2023/09/04 2回目(濃霧のため) | [![GitHub Repo](https://img.shields.io/badge/GitHub-Repository-blue?logo=github)](https://github.com/shinyanakashima/ryuboku-detection-20230904_2) | [DEMO](https://shinyanakashima.github.io/ryuboku-detection-20230904_2) |
| 2023/09/04                   | [![GitHub Repo](https://img.shields.io/badge/GitHub-Repository-blue?logo=github)](https://github.com/shinyanakashima/ryuboku-detection-20230904)   | [DEMO](https://shinyanakashima.github.io/ryuboku-detection-20230904)   |
| 2023/07/27                   | [![GitHub Repo](https://img.shields.io/badge/GitHub-Repository-blue?logo=github)](https://github.com/shinyanakashima/ryuboku-detection-20230727)   | [DEMO](https://shinyanakashima.github.io/ryuboku-detection-20230727)   |
| 2023/06/08                   | [![GitHub Repo](https://img.shields.io/badge/GitHub-Repository-blue?logo=github)](https://github.com/shinyanakashima/ryuboku-detection-20230608)   | [DEMO](https://shinyanakashima.github.io/ryuboku-detection-20230608)   |
| 2023/06/01                   | [![GitHub Repo](https://img.shields.io/badge/GitHub-Repository-blue?logo=github)](https://github.com/shinyanakashima/ryuboku-detection-20230601)   | [DEMO](https://shinyanakashima.github.io/ryuboku-detection-20230601)   |


## 🗺️Tile URL

| 調査日                       | タイトル          | タイルURL                                                                                                                               |
| ---------------------------- | ----------------- | --------------------------------------------------------------------------------------------------------------------------------------- |
| 2023/09/21                   | 十勝川            | `https://raw.githubusercontent.com/shinyanakashima/ryuboku-detection-20230921/main/20230921_tokachigawa_z25/{z}/{x}/{y}.png`            |
| 2023/09/21                   | 十勝川 (AI解析後) | `https://raw.githubusercontent.com/shinyanakashima/ryuboku-detection-20230921/main/20230921_output_tokachigawa_z25/{z}/{x}/{y}.png`     |
| 2023/09/11                   | 十勝川            | `https://raw.githubusercontent.com/shinyanakashima/ryuboku-detection-20230911/main/20230911_tokachigawa_z25/{z}/{x}/{y}.png`            |
| 2023/09/11                   | 十勝川 (AI解析後) | `https://raw.githubusercontent.com/shinyanakashima/ryuboku-detection-20230911/main/20230911_output_tokachigawa_z25/{z}/{x}/{y}.png`     |
| 2023/09/04 2回目(濃霧のため) | 十勝川 (AI解析後) | `https://raw.githubusercontent.com/shinyanakashima/ryuboku-detection-20230904_2/main/20230904_2_output_tokachigawa_z25/{z}/{x}/{y}.png` |
| 2023/09/04 2回目(濃霧のため) | 十勝川            | `https://raw.githubusercontent.com/shinyanakashima/ryuboku-detection-20230904_2/main/20230904_2_tokachigawa_z25/{z}/{x}/{y}.png`        |
| 2023/09/04                   | 十勝川            | `https://raw.githubusercontent.com/shinyanakashima/ryuboku-detection-20230904/main/20230904_tokachigawa_z25/{z}/{x}/{y}.png`            |
| 2023/09/04                   | 十勝川 (AI解析後) | `https://raw.githubusercontent.com/shinyanakashima/ryuboku-detection-20230904/main/20230904_output_tokachigawa_z25/{z}/{x}/{y}.png`     |
| 2023/07/27                   | 十勝川            | `https://raw.githubusercontent.com/shinyanakashima/ryuboku-detection-20230727/main/20230727_tokachigawa_z25/{z}/{x}/{y}.png`            |
| 2023/07/27                   | 十勝川 (AI解析後) | `https://raw.githubusercontent.com/shinyanakashima/ryuboku-detection-20230727/main/20230727_output_tokachigawa_z25/{z}/{x}/{y}.png`     |
| 2023/06/08                   | 野塚川            | `https://raw.githubusercontent.com/shinyanakashima/ryuboku-detection-20230608/main/20230608_noduka_z25/{z}/{x}/{y}.png`                 |
| 2023/06/08                   | 歴舟川            | `https://raw.githubusercontent.com/shinyanakashima/ryuboku-detection-20230608/main/20230608_rekifune_z25/{z}/{x}/{y}.png`               |
| 2023/06/01                   | 十勝川            | `https://raw.githubusercontent.com/shinyanakashima/ryuboku-detection-20230601/main/20230601_tokachigawa/{z}/{x}/{y}.png`                |
| 2023/06/01                   | 十勝川 zoom 22    | `https://raw.githubusercontent.com/shinyanakashima/ryuboku-detection-20230601/main/20230601_tokachigawa_z22/{z}/{x}/{y}.png`            |
| 2023/06/01                   | 十勝川 zoom 25    | `https://raw.githubusercontent.com/shinyanakashima/ryuboku-detection-20230601/main/20230601_tokachigawa_z25/{z}/{x}/{y}.png`            |


## ディレクトリ構成

- {日付}_{実施場所}_z25: UAV空撮オルソ画像のタイル
- {日付}_output_{実施場所}_z25: AI解析後タイル
- app: WebGIS向け静的ファイル
- app/{日付}_{実施場所}_z25/: 各種F/Wによる可視化ファイル（UAV空撮オルソ画像タイル）
- app/{日付}_output_{実施場所}_z25/: 各種F/Wによる可視化ファイル（AI解析後タイル）

ただし、2023では実施場所は「tokachigawa」固定。野塚や歴舟川は調査のみ。

# Checkout
全件は重過ぎるので、リポジトリ内にあるappだけを取得する

## 初回のみ

```bash
git submodule add <リポジトリURL> <フォルダ名>

# サブモジュールを初期化して更新
git submodule init
git submodule update
```


```bash
gh repo clone shinyanakashima/ryuboku-detection-20230911

# sparse-checkout を有効化
git sparse-checkout init --cone

# appディレクトリだけを取得
git sparse-checkout set 20230904_tokachigawa_z25/googlemaps.html
git sparse-checkout set 20230904_tokachigawa_z25/leaflet.html
git sparse-checkout set 20230904_tokachigawa_z25/mapml.mapml
git sparse-checkout set 20230904_tokachigawa_z25/openlayers.html

git sparse-checkout set 20230904_output_tokachigawa_z25/googlemaps.html
git sparse-checkout set 20230904_output_tokachigawa_z25/leaflet.html
git sparse-checkout set 20230904_output_tokachigawa_z25/mapml.mapml
git sparse-checkout set 20230904_output_tokachigawa_z25/openlayers.html

git checkout main

# 各ファイルをappにまとめる
mkdir app
mv 20230904_tokachigawa_z25 app/
mv 20230904_output_tokachigawa_z25 app/

```

## 次回以降

```bash
gh repo clone shinyanakashima/ryuboku-detection-20230911

# sparse-checkout を有効化
git sparse-checkout init --cone

# appディレクトリだけを取得
git sparse-checkout set app
git checkout main

```
