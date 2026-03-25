# 概要
2023年度のUAV+AI調査の結果を取りまとめる。

### Demo:
https://shinyanakashima.github.io/UAV-detection-2023/

## 作物識別アプリ (Crop Identification App)

ドローン画像から作物を識別し、圃場ごとに可視化するWebGISアプリ。

**デモページ:** [`app/crop_identification.html`](https://shinyanakashima.github.io/UAV-detection-2023/crop_identification.html)

### 識別対象作物

| カテゴリキー | 作物名 |
| --- | --- |
| `wheat` | 小麦 |
| `potato` | じゃがいも |
| `beet` | てんさい |
| `soybean` | 大豆 |
| `corn` | とうもろこし |
| `rice` | 水稲 |
| `onion` | たまねぎ |
| `adzuki` | 小豆 |

### 機能

- 航空写真 / 地図タイル切替（国土地理院）
- 作物種別ごとの色分け表示
- 作物種別フィルター
- 圃場クリックで識別信頼度・面積・調査日を表示
- 集計パネル（圃場数・総面積・種別面積）

### データ形式

AI識別結果は GeoJSON 形式（`app/data/crop_sample.geojson`）で管理。
各フィーチャーのプロパティ：

| プロパティ | 説明 |
| --- | --- |
| `category` | 作物カテゴリキー |
| `label` | 作物名（日本語） |
| `score` | AI識別信頼度（0〜1） |
| `area_sqm` | 圃場面積（㎡） |
| `survey_date` | 調査日 |
| `notes` | 備考 |

## 🗺️Tile URL

| 調査日                       | 調査場所(河口付近) | タイルURL                                                                                                                           |
| ---------------------------- | ------------------ | ----------------------------------------------------------------------------------------------------------------------------------- |
| 2023/09/21                   | 十勝川             | `https://raw.githubusercontent.com/shinyanakashima/UAV-detection-20230921/main/20230921_tokachigawa_z25/{z}/{x}/{y}.png`            |
| 2023/09/21                   | 十勝川 (AI解析後)  | `https://raw.githubusercontent.com/shinyanakashima/UAV-detection-20230921/main/20230921_output_tokachigawa_z25/{z}/{x}/{y}.png`     |
| 2023/09/11                   | 十勝川             | `https://raw.githubusercontent.com/shinyanakashima/UAV-detection-20230911/main/20230911_tokachigawa_z25/{z}/{x}/{y}.png`            |
| 2023/09/11                   | 十勝川 (AI解析後)  | `https://raw.githubusercontent.com/shinyanakashima/UAV-detection-20230911/main/20230911_output_tokachigawa_z25/{z}/{x}/{y}.png`     |
| 2023/09/04 2回目(濃霧のため) | 十勝川 (AI解析後)  | `https://raw.githubusercontent.com/shinyanakashima/UAV-detection-20230904-2/main/20230904_2_output_tokachigawa_z25/{z}/{x}/{y}.png` |
| 2023/09/04 2回目(濃霧のため) | 十勝川             | `https://raw.githubusercontent.com/shinyanakashima/UAV-detection-20230904-2/main/20230904_2_tokachigawa_z25/{z}/{x}/{y}.png`        |
| 2023/09/04                   | 十勝川             | `https://raw.githubusercontent.com/shinyanakashima/UAV-detection-20230904/main/20230904_tokachigawa_z25/{z}/{x}/{y}.png`            |
| 2023/09/04                   | 十勝川 (AI解析後)  | `https://raw.githubusercontent.com/shinyanakashima/UAV-detection-20230904/main/20230904_output_tokachigawa_z25/{z}/{x}/{y}.png`     |
| 2023/07/27                   | 十勝川             | `https://raw.githubusercontent.com/shinyanakashima/UAV-detection-20230727/main/20230727_tokachigawa_z25/{z}/{x}/{y}.png`            |
| 2023/07/27                   | 十勝川 (AI解析後)  | `https://raw.githubusercontent.com/shinyanakashima/UAV-detection-20230727/main/20230727_output_tokachigawa_z25/{z}/{x}/{y}.png`     |
| 2023/06/08                   | 野塚川             | `https://raw.githubusercontent.com/shinyanakashima/UAV-detection-20230608/main/20230608_noduka_z25/{z}/{x}/{y}.png`                 |
| 2023/06/08                   | 歴舟川             | `https://raw.githubusercontent.com/shinyanakashima/UAV-detection-20230608/main/20230608_rekifune_z25/{z}/{x}/{y}.png`               |
| 2023/06/01                   | 十勝川             | `https://raw.githubusercontent.com/shinyanakashima/UAV-detection-20230601/main/20230601_tokachigawa/{z}/{x}/{y}.png`                |
| 2023/06/01                   | 十勝川 zoom 22     | `https://raw.githubusercontent.com/shinyanakashima/UAV-detection-20230601/main/20230601_tokachigawa_z22/{z}/{x}/{y}.png`            |
| 2023/06/01                   | 十勝川 zoom 25     | `https://raw.githubusercontent.com/shinyanakashima/UAV-detection-20230601/main/20230601_tokachigawa_z25/{z}/{x}/{y}.png`            |

## 撮影日毎のリポジトリ
classificationされた地物をcategory毎に分類して可視化した。
なお、classificationがうまくいっていないものも含む。

| 調査日                       | GitHubリポジトリURL                                                                                                                            | 分類以後URL                                                                                                |
| ---------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------- |
| 2023/09/21                   | [![GitHub Repo](https://img.shields.io/badge/GitHub-Repository-blue?logo=github)](https://github.com/shinyanakashima/UAV-detection-20230921)   | [categoryによる分類](https://shinyanakashima.github.io/UAV-detection-2023/20230921_tokachigawa_z25.html)   |
| 2023/09/11                   | [![GitHub Repo](https://img.shields.io/badge/GitHub-Repository-blue?logo=github)](https://github.com/shinyanakashima/UAV-detection-20230911)   | [categoryによる分類](https://shinyanakashima.github.io/UAV-detection-2023/20230911_tokachigawa_z25.html)   |
| 2023/09/04 2回目(濃霧のため) | [![GitHub Repo](https://img.shields.io/badge/GitHub-Repository-blue?logo=github)](https://github.com/shinyanakashima/UAV-detection-20230904-2) | [categoryによる分類](https://shinyanakashima.github.io/UAV-detection-2023/20230904-2_tokachigawa_z25.html) |
| 2023/09/04                   | [![GitHub Repo](https://img.shields.io/badge/GitHub-Repository-blue?logo=github)](https://github.com/shinyanakashima/UAV-detection-20230904)   | [categoryによる分類](https://shinyanakashima.github.io/UAV-detection-2023/20230904_tokachigawa_z25.html)   |
| 2023/07/27                   | [![GitHub Repo](https://img.shields.io/badge/GitHub-Repository-blue?logo=github)](https://github.com/shinyanakashima/UAV-detection-20230727)   | [categoryによる分類](https://shinyanakashima.github.io/UAV-detection-2023/20230727_tokachigawa_z25.html)   |
| 2023/06/08                   | [![GitHub Repo](https://img.shields.io/badge/GitHub-Repository-blue?logo=github)](https://github.com/shinyanakashima/UAV-detection-20230608)   | [categoryによる分類](https://shinyanakashima.github.io/UAV-detection-2023/20230608_tokachigawa_z25.html)   |
| 2023/06/01                   | [![GitHub Repo](https://img.shields.io/badge/GitHub-Repository-blue?logo=github)](https://github.com/shinyanakashima/UAV-detection-20230601)   | [categoryによる分類](https://shinyanakashima.github.io/UAV-detection-2023/20230601_tokachigawa_z25.html)   |

## 📒Memo

- {日付}_{実施場所}_z25: UAV空撮オルソ画像のタイル
- {日付}_output_{実施場所}_z25: AI解析後タイル
- app: WebGIS向け静的ファイル
- app/{日付}_{実施場所}_z25/: 各種F/Wによる可視化ファイル（UAV空撮オルソ画像タイル）
- app/{日付}_output_{実施場所}_z25/: 各種F/Wによる可視化ファイル（AI解析後タイル）

