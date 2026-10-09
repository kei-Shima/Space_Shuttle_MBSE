# スペースシャトル システム設計（SSD）

スペースシャトルのシステム設計を、公開資料をもとに図・説明書・SysML v2 モデルにまとめた検討用のパッケージです。

- 版：Rev. BP（2026-10-09）
- 中身：図 190枚（draw.io、SVG・PNG）、説明書 322件（HTML と Markdown）、SysML v2 テキスト 41件
- 図書一覧：[docs/SSD-SYS-IDX-001.md](docs/SSD-SYS-IDX-001.md)

## フォルダ構成

| フォルダ・ファイル | 中身 | 開き方 |
|---|---|---|
| `html/index.html` | 図書一覧（入口のページ） | ブラウザ |
| `html/*.svg` | 図 190枚（SSD-SYS-ARC-001_p<番号>_<名前>.svg） | ブラウザ（index.html から） |
| `html/preview/*.png` | 図の PNG（index.html の縮小表示に使う） | 画像ビューア |
| `html/docs/*.html` | 説明書 322件 | ブラウザ（index.html から） |
| `docs/*.md` | 説明書の Markdown 原稿（html/docs と同じ内容） | GitHub の画面、VS Code |
| `docs/SSD-SYS-IDX-001.md` | 図書一覧（図・文書・変更履歴の一覧） | GitHub の画面、VS Code |
| `SysML/*.sysml` | SysML v2 テキスト 41件 | VS Code（下記の拡張機能） |
| `Draw_io/SSD-SYS-ARC-001.drawio` | 図の原本（190ページ） | draw.io |
| `.vscode/` | VS Code の推奨拡張機能と設定 | ― |

## クローンして見る

```sh
git clone <このリポジトリの URL>
cd <クローンしたフォルダ>
```

`html/index.html` をブラウザで開きます（Windows では `start html/index.html`、macOS では `open html/index.html`）。リンクはすべて相対パスなので、サーバーは要りません。index.html から図（SVG）と説明書（HTML）へ進めます。図の中の箱や表の行も説明書へのリンクになっています。

GitHub の画面では HTML はソースで表示されます。ブラウザに入れずに読むときは、[docs/SSD-SYS-IDX-001.md](docs/SSD-SYS-IDX-001.md) から説明書の Markdown と図の SVG をたどってください。

全体で約 700MB あります。いちばん大きいファイルは `html/SSD-SYS-ARC-001_p5_register.svg`（約 61MB）で、GitHub の 50MB の警告に当たります（100MB の上限には収まっています）。履歴が要らなければ `git clone --depth 1` で早く取得できます。

## SysML v2 モデルを VS Code で開く

`SysML/*.sysml` は、VS Code の拡張機能 **SysML v2.0 Language Support**（発行者 JamieD、ID `jamied.sysml-v2-support`）で開けます。v0.53.0 で確かめました。SysML v2 の標準ライブラリは拡張機能に入っているので、別に用意する必要はありません。

1. 拡張機能を入れます。VS Code でこのフォルダを開くと、`.vscode/extensions.json` の推奨として表示されます。コマンドで入れる場合は次のとおりです。
   ```sh
   code --install-extension jamied.sysml-v2-support
   ```
2. このリポジトリのフォルダを開きます（`code .`）。`SysML/` が別ファイルの定義を参照するので、ファイル1つではなくフォルダごと開いてください。
3. `SysML/` の `.sysml` を開くと、色分け・検査・定義への移動（F12）・参照の検索が使えます。
4. 図で見るときは、コマンドパレット（Ctrl+Shift+P）から次を実行します。エクスプローラーで `SysML` フォルダを右クリックして「Visualise with SysML」でも開けます。
   - `SysML: Show Model Explorer`：パッケージ・定義・使用の木
   - `SysML: Show Model Visualizer`：選んだ要素の図。PNG・SVG にも書き出せます
   - `SysML: Show Model Dashboard`：モデル全体の集計

`.vscode/settings.json` で、次の2つを設定しています。

- `"sysml.workspace.preloadOnOpen": "always"`：フォルダを開いたときに全ファイルを読み込み、ファイルをまたぐ定義への移動を効かせます。
- `"sysml.validation.disabledCodes": ["naming-convention", "missing-doc"]`：書き方の好みに関する指摘（名前の大文字・小文字、doc の有無）を消します。モデルの名前は文書の ID（例 `'IF-ORB-01'`）に合わせているので、約4,100件出るためです。

### 検査の結果について

このモデルは、OMG の参照実装 SysML v2 Pilot Implementation 0.62.0 で、41件を依存の順に読み込み、誤り 0・警告 0 を確かめています。

この拡張機能は独自の規則で検査するので、Pilot では出ない指摘が出ます。41件を拡張機能の言語サーバーで検査した結果は次のとおりです（構文の誤りは 0 件）。

| 指摘 | 件数 | 主な中身 |
|---|---|---|
| 誤り `ambiguous-namespace-name` | 185 | SSD-EXP-ORB-001・SSD-IND-ORB-001・SSD-VPT-SYS-001 で、同じ名前の属性を別のスコープで再定義している箇所（SysML v2 では正しい書き方） |
| 警告 `unresolved-type` | 3,733 | 他パッケージの使用（例 `HazardModel::hc21`）と、標準ライブラリの単位（`°F_abs`・`Btu_IT/h` など）を解決できない |
| 警告 `unsatisfied-requirement`・`unverified-requirement` | 各 95 | `satisfy`・`verify` を持たない要求。ハザードの制御（SSD-HAZ）は `#ImplementedBy` の依存で、消耗品の日数（SSD-PRF）は値の比較で示している |
| 警告 `unused-definition` | 119 | 他から使われない定義（一覧として置いている役割・故障モードなど） |
| 警告 `unresolved-constraint-reference` | 76 | 制約式の中の単位（`in`・`F_abs` など）を名前として読んでいる |

これらは拡張機能の制約によるものです。モデルを直す必要はありません。気になる場合は、`sysml.validation.disabledCodes` に上の指摘の名前を足すと表示を消せます。

## 図の原本（draw.io）

`Draw_io/SSD-SYS-ARC-001.drawio` は、draw.io Desktop か、VS Code の拡張機能 Draw.io Integration（`hediet.vscode-drawio`）で開けます。190ページ・約 14MB あるので、開くのに少し時間がかかります。

- 図の中のリンクは、`html/` に書き出した SVG から見た相対パス（`docs/<文書番号>.html`）です。draw.io の中でリンクをたどっても開きません。
- 図を直したら、そのページを `html/SSD-SYS-ARC-001_p<番号>_<名前>.svg` と `html/preview/` の PNG に書き出し直してください。名前は draw.io のページ ID の `-` を `_` にしたものです（例 ページ `p5-register` → `SSD-SYS-ARC-001_p5_register.svg`）。ページどうしのリンク（`data:page/id,…`）は、書き出す前に対応する SVG のファイル名に置き換える必要があります。

## 説明書の原稿

`docs/*.md` は `html/docs/*.html` と同じ内容の Markdown です。GitHub の画面やエディタで読むときに使います。説明書から SysML へのリンクは `../SysML/` を指しています。

## 改行について

`.gitattributes` で全ファイルの改行の変換を止めています（`* -text`）。生成したファイル（drawio・SVG・HTML）を、どの OS でもバイト単位で同じに保つためです。
