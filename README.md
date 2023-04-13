# Ruby on Railsで介助者が入る予定をわかりやすく見れるアプリケーションを作る。

ローカルの環境構築で失敗したことがあるので、[参考](https://qiita.com/daichi41/items/dfea6195cbb7b24f3419)にしてWLS2+Dockerでの環境構築に挑戦した。
授業ではDockerを触っていたので理解しながら進めることができた。

Volume関連でエラーが出て解決方法がわからなかったので、volumeはしていない。なので、
```console
docker-compose up
```
毎に
```console
docker-compose run web bundle exec rails db:create
docker-compose run web bundle exec rails db:migration
```
を実行した。ちなみに、railsコマンドは
```
docker-compose run web bundle exec [railsコマンド]
```
で実行できた。
## 目指したアプリケーション
私は複数人の介助者を利用して生活している。介助者がいつ、何時間来るを把握しやすくし、ダブルブッキングや支援時間数がオーバーすることを防ぐ目的で作成した。
*支援時間数とは、支援を受けられる時間数でオーバーするとオーバーした分は自費で負担する。

## カレンダー機能
[参考](https://zenn.dev/yuma_rails/articles/00b6ea10b87ca5#simplecalendar%E3%81%AEcss%E3%82%92%E8%BF%BD%E5%8A%A0)を見て、カレンダーで予定を確認できるようにした。
一覧でも表示されるため、わかりやすい。

## 事業所ごとに支援が見れる機能
[Ruby on Railsチュートリアル](https://railstutorial.jp/chapters/sign_up?version=5.1)を参考にSNSの「アカウント」と「投稿」のように、「事業所」と「支援」を紐づけて実装した。
