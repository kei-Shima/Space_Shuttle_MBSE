# スペースシャトル システム設計（SSD）

スペースシャトルのシステム設計を、公開資料をもとに図・説明書・SysML v2 モデルにまとめた検討用のパッケージです。

- ブラウザで見る：<https://kei-shima.github.io/Space_Shuttle_MBSE/>（GitHub Pages。図書一覧から図と説明書へ進めます）
- English: [README.en.md](README.en.md)
- 版：Rev. CV（2026-10-28）
- 中身：図 278枚（draw.io、SVG・PNG）、説明書 343件（HTML と Markdown）、SysML v2 テキスト 61件
- 図書一覧：[docs/SSD-SYS-IDX-001.md](docs/SSD-SYS-IDX-001.md)
- 英語の略称の正式名称：[docs/SSD-ACR-SYS-001.md](docs/SSD-ACR-SYS-001.md)（略語表）
- 参照した公開資料の一覧：[REFERENCES.md](REFERENCES.md)
- MBSE 初心者の方へ：[guide/](guide/README.md)（学習の順序と演習つきの入門ガイド。ブラウザ版：<https://kei-shima.github.io/Space_Shuttle_MBSE/guide/>）

## フォルダ構成

| フォルダ・ファイル | 中身 | 開き方 |
|---|---|---|
| `html/index.html` | 図書一覧（入口のページ） | ブラウザ |
| `html/index_*.html` | 図書一覧の内容ごとのページ（使い方・出典、図面、文書一覧、インタフェース一覧、注記、変更履歴） | ブラウザ（index.html から） |
| `html/*.svg` | 図 278枚（SSD-SYS-ARC-001_p<番号>_<名前>.svg） | ブラウザ（index.html から） |
| `html/preview/*.png` | 図の PNG（index_figures.html の縮小表示に使う） | 画像ビューア |
| `html/docs/*.html` | 説明書 343件 | ブラウザ（index.html から） |
| `docs/*.md` | 説明書の Markdown 原稿（html/docs と同じ内容） | GitHub の画面、VS Code |
| `docs/SSD-SYS-IDX-001.md` | 図書一覧（図・文書・変更履歴の一覧） | GitHub の画面、VS Code |
| `SysML/*.sysml` | SysML v2 テキスト 61件 | VS Code（下記の拡張機能） |
| `Draw_io/SSD-SYS-ARC-001.drawio` | 図の原本（278ページ） | draw.io |
| `guide/` | MBSE 初心者向けの入門ガイド（HTML 6ページ＋README.md）。成果物の件数には含めない | ブラウザ（guide/index.html） |
| `REFERENCES.md` | 説明書が出典として引用している公開資料（インターネット上の文献）の一覧。公開元ごとに、文献・URL・引用箇所の数・引用している文書を並べたもの | GitHub の画面、VS Code |
| `LICENSE.md` | ライセンス（CC BY 4.0）の全文 | GitHub の画面、VS Code |
| `README.en.md` | 英語の README（図・説明書・SysML の中身は日本語のまま） | GitHub の画面、VS Code |
| `index.html`・`.nojekyll` | GitHub Pages 用。`index.html` は `html/index.html` へ移すだけのページ、`.nojekyll` はファイルをそのまま公開させる空のファイル | ― |
| `.vscode/` | VS Code の推奨拡張機能と設定 | ― |

## ブラウザで見る（GitHub Pages）

<https://kei-shima.github.io/Space_Shuttle_MBSE/> を開くと、クローンしなくても図書一覧（`html/index.html`）から図と説明書を見られます。main ブランチの内容がそのまま公開されます。

## クローンして見る

```sh
git clone <このリポジトリの URL>
cd <クローンしたフォルダ>
```

`html/index.html` をブラウザで開きます（Windows では `start html/index.html`、macOS では `open html/index.html`）。リンクはすべて相対パスなので、サーバーは要りません。index.html から図（SVG）と説明書（HTML）へ進めます。図の中の箱や表の行も説明書へのリンクになっています。

図書一覧は、内容ごとに次のページに分けてあります。どのページも、上のナビでほかのページへ移れます。

| ページ | 中身 |
|---|---|
| `index.html` | 入口（表題欄と各ページへの目次） |
| `index_guide.html` | 使い方、出典について |
| `index_figures.html` | 図面。ビューポイント（SSD-VPT-SYS-001）ごとの縮小図と一覧表、原本と SysML v2 テキストへのリンク |
| `index_documents.html` | 文書一覧。系ごとの説明書と、主題ごとの横断の定義書 |
| `index_interfaces.html` | インタフェース一覧。IF 番号の系列ごと |
| `index_notes.html`・`index_notes_*.html` | 注記の目次と、文書の区分ごとの注記 |
| `index_history.html` | 変更履歴 |

GitHub の画面では HTML はソースで表示されます。GitHub の画面のまま読むときは、[docs/SSD-SYS-IDX-001.md](docs/SSD-SYS-IDX-001.md) から説明書の Markdown と図の SVG をたどってください。

全体で約 940MB あります。いちばん大きいファイルは `html/SSD-SYS-ARC-001_p5_register.svg`（約 62MB）で、GitHub の 50MB の警告に当たります（100MB の上限には収まっています）。履歴が要らなければ `git clone --depth 1` で早く取得できます。

## SysML v2 モデルを VS Code で開く

`SysML/*.sysml` は、VS Code の拡張機能 **SysML v2.0 Language Support**（発行者 JamieD、ID `jamied.sysml-v2-support`）で開けます。v0.55.0 で確かめました。SysML v2 の標準ライブラリは拡張機能に入っているので、別に用意する必要はありません。

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
- `"sysml.validation.disabledCodes": ["naming-convention", "missing-doc"]`：書き方の好みに関する指摘（名前の大文字・小文字、doc の有無）を消します。モデルの名前は文書の ID（例 `'IF-ORB-01'`）に合わせているので、約4,150件出るためです。

### 検査の結果について

このモデルは、OMG の参照実装 SysML v2 Pilot Implementation 0.62.0 で、61件を依存の順に読み込み、誤り 0・警告 0 を確かめています。

この拡張機能は独自の規則で検査するので、Pilot では出ない指摘が出ます。Rev. CI 時点の 49件を拡張機能（v0.55.0）の言語サーバーで検査した結果は、誤り 0 件で、警告は次のとおりです（Rev. CJ・CK・CL の変更〔SSD-TRJ-ORB-001 の改版、SSD-TPM-SYS-001・SSD-IRQ-ECL-001・SSD-IRQ-LOW-001 の追加〕は、この検査をしていません）。

| 指摘 | 件数 | 主な中身 |
|---|---|---|
| 警告 `unresolved-type` | 3,880 | 他パッケージの使用（例 `HazardModel::hc21`）と、標準ライブラリの単位（`°F_abs`・`Btu_IT/h` など）を解決できない |
| 警告 `unsatisfied-requirement`・`unverified-requirement` | 各 95 | `satisfy`・`verify` を持たない要求。ハザードの制御（SSD-HAZ）は `#ImplementedBy` の依存で、消耗品の日数（SSD-PRF）は値の比較で示している |
| 警告 `unused-definition` | 125 | 他から使われない定義（一覧として置いている役割・故障モードなど） |
| 警告 `unresolved-constraint-reference` | 76 | 制約式の中の単位（`in`・`F_abs` など）を名前として読んでいる |

これらの警告は拡張機能の制約によるものです。モデルを直す必要はありません。気になる場合は、`sysml.validation.disabledCodes` に上の指摘の名前を足すと表示を消せます。

Rev. BP までは、同じ名前の属性を別のスコープで再定義している箇所が誤り `ambiguous-namespace-name` として 185 件出ていました。Rev. BR で、SSD-EXP-ORB-001 と SSD-IND-ORB-001 の書き方を、意味を変えずに改めました（`assert constraint` を宣言と `assert` に分ける、`individual occurrence def`・`snapshot occurrence` と書く）。拡張機能の v0.53.0 では SSD-VPT-SYS-001 に同じ誤りが 91 件出ますが、v0.55.0 では出ません。

## 図の原本（draw.io）

`Draw_io/SSD-SYS-ARC-001.drawio` は、draw.io Desktop か、VS Code の拡張機能 Draw.io Integration（`hediet.vscode-drawio`）で開けます。278ページ・約 20MB あるので、開くのに少し時間がかかります。

- 図の中のリンクは、`html/` に書き出した SVG から見た相対パス（`docs/<文書番号>.html`）です。draw.io の中でリンクをたどっても開きません。
- 図を直したら、そのページを `html/SSD-SYS-ARC-001_p<番号>_<名前>.svg` と `html/preview/` の PNG に書き出し直してください。名前は draw.io のページ ID の `-` を `_` にしたものです（例 ページ `p5-register` → `SSD-SYS-ARC-001_p5_register.svg`）。ページどうしのリンク（`data:page/id,…`）は、書き出す前に対応する SVG のファイル名に置き換える必要があります。

## 説明書の原稿

`docs/*.md` は `html/docs/*.html` と同じ内容の Markdown です。GitHub の画面やエディタで読むときに使います。説明書から SysML へのリンクは `../SysML/` を指しています。

## 版とタグ

パッケージの版は Rev. A、…、Rev. Z、Rev. AA、… と進みます。GitHub へプッシュした版には `rev-<版>` のタグを付けています（例 `rev-BR`）。一覧は `git tag -l` で見られます。作業の途中の版はプッシュしていないので、すべての版にタグがあるわけではありません。`rev-BP` より前のタグは、フォルダを分ける前の構成（すべてルートに置いた構成）です。

## 改行について

`.gitattributes` で全ファイルの改行の変換を止めています（`* -text`）。生成したファイル（drawio・SVG・HTML）を、どの OS でもバイト単位で同じに保つためです。

## ライセンス

特に断りのない限り、このリポジトリの内容は [Creative Commons Attribution 4.0 International（CC BY 4.0）](https://creativecommons.org/licenses/by/4.0/) で公開しています。全文は [LICENSE.md](LICENSE.md) にあります（Creative Commons の正文のままです）。

- 複製・再配布・改変は、営利・非営利を問わず自由です。そのときは、出どころの表示、ライセンスへのリンク、変更したかどうかの表示をしてください。
- 表示の例：「Space Shuttle MBSE（https://github.com/kei-Shima/Space_Shuttle_MBSE）、CC BY 4.0」
- 引用している公開資料（[REFERENCES.md](REFERENCES.md)）の権利は、それぞれの公開元にあります。このライセンスが及ぶのは、このリポジトリで作った図・説明書・SysML v2 テキストです。
