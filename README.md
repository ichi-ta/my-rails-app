# Ruby on Railsでアプリケーションを自作する

ローカルの環境構築では痛い目をみたので、[参考](https://qiita.com/daichi41/items/dfea6195cbb7b24f3419)にしてWLS2+Dockerでの環境構築に挑戦した。

Volume関連でエラーが出て解決方法がわからなかったので、volumeはしていない。なので、
```console
docker-compose up
```
毎に
```console
docker-compose run web bundle exec rake db:create
docker-compose run web bundle exec rake db:migration
```
を実行した。ちなみに、railsコマンドは
```
docker-compose run web bundle exec [railsコマンド]
```
で実行できた。
