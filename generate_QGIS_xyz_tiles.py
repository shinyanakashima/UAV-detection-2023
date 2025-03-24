import json
import xml.etree.ElementTree as ET

# JSONファイルの読み込み
with open('tiles.json', 'r') as f:
    tile_urls = json.load(f)

# XMLのルート要素を作成
root = ET.Element('qgsXYZTilesConnections', version="1.0")

# JSONからデータを読み込んでXMLに変換
for entry in tile_urls:
    date_str = entry['date']  # 調査日
    title = entry['title']  # タイトル
    url = entry['url']  # タイルURL

    # 日付に含まれる / を - に置換
    formatted_date = date_str.replace('/', '-')

    # xyztiles要素を作成
    xyztiles = ET.SubElement(root, 'xyztiles', username="", name=f"{formatted_date} {title}", password="", authcfg="", zmin="2", referer="", url=url, zmax="18")

# XMLを文字列に変換
xml_str = ET.tostring(root, encoding="utf-8", method="xml").decode("utf-8")

# インデントを整えるために整形する
from xml.dom import minidom
xml_str = minidom.parseString(xml_str).toprettyxml(indent="  ")

# 結果を表示またはファイルに保存
with open("ryuboku2023_tiles.xml", "w") as f:
    f.write(xml_str)

print("XMLファイルが作成されました。")
