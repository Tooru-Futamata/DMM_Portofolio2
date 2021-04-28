# FavoriteGolfCourse
<img src="https://user-images.githubusercontent.com/76867260/113237558-06d7c400-92e2-11eb-9379-7095f985d246.jpg" width="320">

## アプリケーションURL
http://3.210.139.112/

## サイト概要
自分が行ったゴルフ場をレビューを含めて投稿していくサイトです。<br>
ゴルファー達でゴルフ場の情報を共有する事ができます。

### サイトテーマ
* それぞれのレビューによって自分が行きたい条件に合ったゴルフ場をすぐに見つける事ができる。
* 自分が行ったゴルフ場の記録を残す事ができる。<br>
* 地方に絞って検索する事で、より早くゴルフ場を見つける事ができる。

### テーマを選んだ理由
* ゴルフに行こうと思い立ち、数ある中のゴルフ場を選ぶのにいつも一苦労するから。<br>
* せっかく行くのであれば、行きたい条件に合ったゴルフ場に行きたいから。<br>
* 自分が今まで行ってきたゴルフ場をお気に入りやレビュー投稿で管理する事で、全国のゴルフ場を制覇していきたいと思ったから。

### ターゲットユーザ
ゴルフをする人。

### 主な利用シーン
ゴルフをする予定を立て、ゴルフ場を探す時。

## 設計書
### 機能一覧
https://docs.google.com/spreadsheets/d/1EIoY4SK_wR0ELV9wpTDifDDysgWxHTWG4obtjvNYmQ4/edit#gid=0
### ワイヤーフレーム
https://github.com/Sayo-Shiozuka/FavoriteGolfCourse/files/6254026/wire_ec-template.drawio.pdf
### ER図
https://github.com/Sayo-Shiozuka/FavoriteGolfCourse/files/6254028/ER.drawio.pdf
### WBS/テーブル定義書/アプリケーション詳細設計書
https://docs.google.com/spreadsheets/d/1uTcRCtLYN8S174jrzxAstAS1phlSohkUcoHqUFI4XME/edit#gid=1773513600

## 使用機能と技術
- 画像アップロード(mini_magick)
- ページネーション(kaminari)
- 検索(ransack)
- API(GoogleMapAPI)
- 星評価機能(jQuery Raty)
- デザイン(Bootstrap, Sass)
- 認証関連(ログイン, 管理者ユーザー)
- ユーザー関連（フォロー・フォロワー）
- アイテム関連（お気に入り登録, ランキング表示）
- Javascript(お気に入り非同期通信)
- 単体テスト（RSpec)
- リーダブルコード（rubocop)


## 開発環境
- OS：Linux(CentOS)
- 言語：HTML,CSS,JavaScript,Ruby,SQL
- フレームワーク：Ruby on Rails
- JSライブラリ：jQuery
- IDE：Cloud9
