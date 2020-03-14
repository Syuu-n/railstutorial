# README

Rails Tutorial の再入門用リポジトリ

# Docker 上で Rails をインストールする
* rails new の時に mysql を指定する
    * docker-compose run web rails new . --force --no-deps —database=mysql
    * 参考：https://qiita.com/reeenapi/items/9fc38c4f2f8186c78288
* sudo chown -R $USER:$USER . は sudo chown -R $USER . に変更が必要
    * 参考：https://docs.docker.com/compose/rails/
* Gemfile
    * ruby におけるライブラリである gem を管理するファイル
    * 更新後は bundle install が必要
* Gemfile.lock
    * インストールした gem のバージョンを含めて管理する
    * 開発環境と運用環境で同じ gem をインストールするのに使う
* entrypoint.sh
    * 最初に実行するファイル

# Rails Tutorial
* https://railstutorial.jp/
* protect_from_forgery with: :exception
    * 生成する全てのフォームにと Ajax リクエストにセキュリティトークンが含まれるようになる
    * https://qiita.com/munaita_/items/0739965bcb31bf430e47
* ar_internal_metadata と schema_migrations は Rails 5 で追加された DB 誤削除防止機能
* 必要そうな項目
    * 1.3 MVC
    * 1.4 Hello World!
    * 2.11 ユーザーモデル
    * 3.2 静的ページ
    * 3.3 テスト（必要であれば）
    * 4.x Ruby 文法（必要であれば）
    * 5.1 CSS と Bootstrap
    * 6.1 User CRUD
    *