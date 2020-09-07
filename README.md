# README

# アプリケーション名
 映画館に行こう

# アプリケーション概要
 映画館を検索したりコメントしたり、マイページで自分の映画館情報や映画情報などを閲覧・編集したりするようにできます。

# デプロイURL
 https://movie-theaters-app.herokuapp.com/
# テスト用アカウント
 e-mail:tetsu19901103@gmail.com
 Pass:zaq1234
# 利用方法
 まだユーザー管理機能と映画館を新規登録する機能しか作れていません。

# 目指した課題解決
 1.映画を見たいがお気に入りの映画館で見たいと思う人も中にはいるはずであると考えたことが発端であることです。
 2.加えて、以前より映画館で映画を見るということをしなくなり映画館の閉鎖が囁かれていました。それに加えて新型コロナのため、小規模な映画館がどんどん閉鎖されていくことに危機感を覚え、このようなアプリを課題として見出しました。
# 洗い出した要件
 1.映画館検索機能
 2.お気に入り機能
 3.コメント機能
 4.ユーザー認証機能
# 実装した機能についてのGIFと説明

# 実装予定の機能
 1.お気に入り機能の実装
 2.コメント機能
# データベース設計
 ## userテーブル
| Column        | Type | Options    |
| ------------- | ---- | ---------- |
| nickname      | str  | null:false |
| birthday      | date | null:false |
| password      | str  | null:false |
| favoriteactor | text |            |
| favoritemovie | text |            |
| moviesee      | int  |            |
| pamphlet      | int  |            |
  has_many: theater
  has_many: comment

 ## theaterテーブル
| Column       | Type       | Options             |
| ------------ | ---------- | ------------------- |
| name         | str        | null:false          |
| image_tag    | str        | null:false          |
| address      | text       | null:false          |
| company      | int        | null:false          |
| parking      | int        | null:false          |
| smorkingroom | int        | null:false          |
| access       | text       | null:false          |
| babyroom     | int        | null:false          |
| user         | references | null:false  FK:true |
| remark       | text       |                     |
  belongs_to: user
  has_many: comment

 ## commentテーブル
| Column  | Type       | Options             |
| ------- | ---------- | ------------------- |
| user    | references | null:false  FK:true |
| theater | references | null:false  FK:true |
| comment | text       | null:false          |
  belongs_to: user
  belongs_to: theater

# ローカルでの動作方法
 ruby2.6.5で作成しているので、ターミナルで source ~/.bash_profile で2.6.5に変更してrails sでサーバーを起動させます。ベーシックん認証は未導入なのでそこからはトップページに遷移し、各機能を使うことができます。
