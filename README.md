# README

Rails Tutorial の再入門用リポジトリ

# Docker 上で Rails をインストールする
* https://docs.docker.com/compose/rails/
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
* 8.2 でjQuery を追加時にエラー
    * gem 'jquery-rails'
    * gem 'jquery-ui-rails'
    * 上記を追加して bundle install
* 10.3.2 で faker を bundle install 時にエラー
    * Bundler could not find compatible versions for gem "i18n":
    * faker は i18n と依存関係にあり、それぞれのバージョンの相性が良くないために起こる
    * faker のバージョンを新しくする（gem 'faker', '1.9.1’）もしくは bundle install で解決
    * https://teratail.com/questions/199869
* 10.3.3 で will_paginate を view に書くとエラー
    * wrong number of arguments (given 0, expected 1)
    * gem 自体のバグ（3.1.6）
    * will_paginate のバージョンを 3.1.7 に更新して解決
        * 3.1.6 でロックされてる的なことを言われたら bundle update will_paginate で解決
    * https://qiita.com/LotK/items/f49a1df5c9d9a510baa2
* 必要そうな項目
    * 1.3 MVC
    * 1.4 Hello World!
    * 2.11 ユーザーモデル
    * 3.2 静的ページ
    * 3.3 テスト（必要であれば）
    * 4.x Ruby 文法（必要であれば）
    * 5.1 CSS と Bootstrap
    * 6.1.1 MIgration
    * 6.1.2 Model
    * 6.1.3, 6.1.4 User オブジェクトと Rails console
    * 6.2 Validation
    * 6.3 パスワード
    * 7.1 User CRUD
    * 7.2 登録フォーム
    * 8.1 ユーザ認証
    * 8.2 ログイン
    * 8.3 ログアウト
    * 10.1 ユーザ編集
    * 10.2 権限（必要であれば）
    * 10.3 ユーザ一覧
    * 10.4 ユーザ削除s
