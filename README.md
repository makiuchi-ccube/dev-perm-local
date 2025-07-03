# コンテナ環境構築手順

## コンテナ起動後

### 各サーバーへのアクセス確認

| サーバー | URL |
|--------|-----|
| Apache | http://localhost/ |
| Tomcat | http://localhost:8080/ |
| GeoServer | http://localhost/geoserver/ |

### オブジェクトの準備

- /Settings/environment_settings/create_table.sqlを実施
- /Settings/environment_settings/sequence.sqlを実施

### マスターデータの取り込み

- /Settings/ create_master_data_sheet.xlsxの各シートのデータを取り込む

### 地番データの取り込み

### API設定変更

#### DB接続先

コンテナ構成のため、DBサーバはコンテナ名でアクセスする。そのため、DB接続情報を更新する。

localhost -> db

#### ログ出力先

Tomcatと同じにする

### APIのビルドと配置

echo 'export JAVA_HOME="/Library/Java/JavaVirtualMachines/temurin-18.jdk/Contents/Home"' >> ~/.zprofile
echo 'export PATH="$JAVA_HOME/bin:$PATH"' >> ~/.zprofile\nsource ~/.zprofile
source ~/.zprofile

sudo chmod +x mvnw

クリーンビルド
./mvnw clean package

## 環境構築手順の不明点

> 本書では一例としてCityGMLの判定データの取込について記載します。

ここの手順で、どのデータを使うのか不明
CityGMLの変換手順で、後工程の道路判定レイヤ取り込みで使用する

守屋さんに確認中

f_road_lod2
CityGMLから変換＆投入


## コンテナ操作系

ビルド＆コンテナスタート
docker compose up -d --build

全コンテナを削除
docker compose down

コンテナを指定して再起動する
docker compose restart apache

コンテナを指定してログをみる
docker compose log apache

コンテナを指定してビルド（キャッシュなし）
docker compose build --no-cache apache

コンテナを指定して起動
docker compose up -d apache
