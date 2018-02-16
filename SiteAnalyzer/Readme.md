# 背景
マーケティング担当者が事業者から提供されたURLを使って、どういったサービスを運用しているかを調査するのに時間がかかっている。
URLからサイトのメタ情報(title, keywords, description)を収集するツールを提供し、運用コスト削減につなげる。
# 実行方法
## バッチファイル経由で実行 ※Windowsのみ
SiteAnalyzer_url.bat
* コンソールに「Please input url:」が表示された状態で、URLを入力する。
* Enterキーを入力
`Please input url:http://pierrotshop.jp/
Start
Target :1
Completed :1
http://pierrotshop.jp/  【本店】Pierrot(ピエロ)レディースファッションのセレクトショップ Pierrot,ピエロ,通販,レディースファッション,     ピエロは楽しくて華やかな「大人SWEET」がテーマのセレクトショップ♪雑誌GINGERやRayなどに取り上げられる注目ショップです。
End
1623ms
Press any key to continue . . .`
SiteAnalyzer_file.bat
* input.txtがテキストエディタで開く
* 対象のURLを1つずつ改行して記入する
* コンソールに「Are you ready? (y/n):」が表示された状態で、「y」を入力する。
* Enterキーを入力
`Are you ready? (y/n):y
Start
Target :1
Completed :1
End
1585ms
Press any key to continue . . .
`
* output.tsvがテキストエディタで開く
## jarを直接実行
引数
* 【必須】サイトURL もしくは ファイルのパス
* 【任意】出力先のファイル名 設定なしの場合はコンソールに結果を出力
* 【任意】出力ファイルの文字コード 設定なしの場合はutf-8になる

`java -jar .\SiteAnalyzer.jar input.txt output.tsv utf-8`
