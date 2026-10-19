# モデル計画書（モデルが支える成果物・資源と役割・道具・規約・モデルの構成・公開・管理）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-PLN-SYS-001 |
| 表題 | モデル計画書（モデルが支える成果物・資源と役割・道具・規約・モデルの構成・公開・管理） |
| 版・日付 | 初版（Rev. -）／2026-10-19 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-MBS-SYS-001 |
| 関連図 | SSD-SYS-ARC-001 図271 モデルの構成（種別ごとの文書とパッケージ）・図272 モデルの更新の手順（10段階） |

## 1. 目的

本パッケージのモデルの計画を1つの文書にまとめる。NASA-HDBK-1009A §5 は、モデル計画に、モデルが支える成果物・資源・役割と責任・ツール・規約・アクセス・モデルの管理を含めると述べ、§6 はモデルの設定（命名規約・標準・モデルの構成）の結果を計画に記録すると述べる。SEBoK の MBSE の項の Process Frameworks は、構成管理・アクセスの指針・モデルを更新する実践・SE のライフサイクルへの組み込みを挙げ、モデルの定期的な更新を最低限の要件とする。本書は、これらの項目に照らして、本パッケージの規約・手順・道具がどこにあり、何が無いかを示す。

## 2. 範囲と書き方

計画は事後に書いた。このパッケージは版（Rev.）を重ねて作られ、モデル計画が先に無かった。本書は既存の文書（SSD-MDL-SYS-001・SSD-VPT-SYS-001・SSD-ACR-SYS-001・SSD-MBS-SYS-001）と、作業の記録（リポジトリ外）に書かれた規約・手順・道具を1つにまとめたもので、新しい事実や新しい規約を足していない。件数は文書とモデルから数えた。手順は人の作業（利用者・作成担当・助言担当）で、全自動ではない。判定は SSD-MBS-SYS-001 と同じ規則（有・一部・無）の自己採点で、SEMP そのものではなく、モデルの計画に絞った。

## 3. 計画の更新（出典）

NASA-HDBK-1009A §5：モデル計画は早期に作り、システムの成熟に合わせて更新する。（出典は参考文献の頁） 本書も、版を重ねるときに更新する。

## 4. 計画の項目（HDBK-1009A §5・§6 と SEBoK）

HDBK-1009A の計画の項目 7・モデルの設定 4（§6 とメタモデル）と、SEBoK の Process Frameworks の 6項目に対する、本パッケージの対応。判定：有 7・一部 8・無 2。

| ID | 区分 | 項目 | 判定 | 本パッケージの文書 | 図 | 証拠・補足 | 根拠 |
|---|---|---|---|---|---|---|---|
| PLN-01 | HDBK §5 | モデルが支える成果物の一覧 | 有 | SSD-MBS-SYS-001・SSD-VPT-SYS-001 | 図267・図111 | HDBK-1009A の作業成果物 12件と図表 22件との対応（SSD-MBS-SYS-001）、図 272件のビューポイントへの割り当て（SSD-VPT-SYS-001）。 | NASA-HDBK-1009A §5：モデル計画は技術計画のプロセスで作る技術計画で、SEMP の一部。計画の内容は、モデルが支える成果物の一覧・資源・役割と責任・ツール・規約・アクセス・モデルの管理。（出典: https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=15） |
| PLN-02 | HDBK §5 | モデリングの資源 | 一部 | SSD-PLN-SYS-001 | — | 人（利用者・作成担当・助言担当・調査担当）と道具は §資源と役割・§道具に書いた。工数・期間・予算の計画は無い（学習用の個人の作業で、計画した資源が無い）。 | NASA-HDBK-1009A §5：モデル計画は技術計画のプロセスで作る技術計画で、SEMP の一部。計画の内容は、モデルが支える成果物の一覧・資源・役割と責任・ツール・規約・アクセス・モデルの管理。（出典: https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=15） |
| PLN-03 | HDBK §5 | 役割と責任 | 一部 | SSD-PLN-SYS-001 | — | 利用者が決めて確認し、作成担当が作り、助言担当が各段階で確かめる分担（PLN-18〜21）。正式なモデラー・レビュー担当の任命や承認の記録は無い。 | NASA-HDBK-1009A §5：モデル計画は技術計画のプロセスで作る技術計画で、SEMP の一部。計画の内容は、モデルが支える成果物の一覧・資源・役割と責任・ツール・規約・アクセス・モデルの管理。（出典: https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=15） |
| PLN-04 | HDBK §5 | モデリングのツール | 有 | SSD-PLN-SYS-001 | — | SysML v2 の読み込み検査・図・データ・版管理の道具 5件（PLN-22〜26）。 | NASA-HDBK-1009A §5：モデル計画は技術計画のプロセスで作る技術計画で、SEMP の一部。計画の内容は、モデルが支える成果物の一覧・資源・役割と責任・ツール・規約・アクセス・モデルの管理。（出典: https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=15） |
| PLN-05 | HDBK §5 | モデリングの規約 | 有 | SSD-VPT-SYS-001・SSD-ACR-SYS-001 | 図111 | ID の規約 55行（SSD-VPT-SYS-001 §7）、文書番号の符号 57種と略語（SSD-ACR-SYS-001）、版・履歴・出典の書き方。 | NASA-HDBK-1009A §5：モデル計画は技術計画のプロセスで作る技術計画で、SEMP の一部。計画の内容は、モデルが支える成果物の一覧・資源・役割と責任・ツール・規約・アクセス・モデルの管理。（出典: https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=15） |
| PLN-06 | HDBK §5 | モデルへのアクセス | 一部 | SSD-PLN-SYS-001 | — | GitHub で公開（CC BY 4.0）、GitHub Pages で閲覧、入門ガイド（guide/）。書き込みは1人で、役割別のアクセス権限は無い。 | NASA-HDBK-1009A §5：モデル計画は技術計画のプロセスで作る技術計画で、SEMP の一部。計画の内容は、モデルが支える成果物の一覧・資源・役割と責任・ツール・規約・アクセス・モデルの管理。（出典: https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=15） |
| PLN-07 | HDBK §5 | モデルの管理 | 一部 | SSD-MDL-SYS-001 | 図92 | 版（Rev.）・変更履歴・タグ・文書とモデルの一致の検査（SSD-MDL-SYS-001 §6）。SEMP に当たる計画は無く、本書がその代わり。 | NASA-HDBK-1009A §5：モデル計画は技術計画のプロセスで作る技術計画で、SEMP の一部。計画の内容は、モデルが支える成果物の一覧・資源・役割と責任・ツール・規約・アクセス・モデルの管理。（出典: https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=15） |
| PLN-08 | HDBK §6 | 命名規約（要素・パッケージ） | 有 | SSD-VPT-SYS-001 | 図111 | ID は 55行の規約表（接頭辞・形・例・件数）。パッケージ名は文書番号のハイフンを下線にした SSD_<種別>_<対象>_<連番>。 | NASA-HDBK-1009A §6：モデルの設定は、規約（要素・パッケージの命名）・標準（プロファイルなど）・モデルの構成（パッケージの階層）を定め、結果をモデル計画に記録する。（出典: https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=16） |
| PLN-09 | HDBK §6 | 標準（プロファイルなど） | 一部 | SSD-MDL-SYS-001 | 図92 | SysML v2 の標準ライブラリ（ScalarValues・ISQ）と独自の metadata def を使う。SysML v1 のようなプロファイルは無い。本パッケージは標準の SysML v2 に準拠（MBS-47）。 | NASA-HDBK-1009A §6：モデルの設定は、規約（要素・パッケージの命名）・標準（プロファイルなど）・モデルの構成（パッケージの階層）を定め、結果をモデル計画に記録する。（出典: https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=16） |
| PLN-10 | HDBK §6 | モデルの構成（パッケージの階層） | 有 | SSD-MDL-SYS-001 | 図92・図271 | SysML v2 テキスト 59件を、入口（SSD-MDL-SYS-001）が依存の順に読み込む。種別ごとの数は図271。 | NASA-HDBK-1009A §6：モデルの設定は、規約（要素・パッケージの命名）・標準（プロファイルなど）・モデルの構成（パッケージの階層）を定め、結果をモデル計画に記録する。（出典: https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=16） |
| PLN-11 | HDBK §7 | メタモデルと前提の記録 | 一部 | SSD-MBS-SYS-001 | 図267 | HDBK のメタモデルの要素との対応を SSD-MBS-SYS-001（MBS-35〜44）に記録した。本パッケージ自身のメタモデルの図は無い。 | NASA-HDBK-1009A §7：メタモデルと前提は、プロジェクトごとのモデル計画に記録する。（出典: https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=17） |
| PLN-12 | SEBoK | 構成管理のプロセス | 有 | SSD-MDL-SYS-001 | — | Git の履歴とタグ rev-<版>、各文書の版と変更履歴、版ごとの snapshot からの再生成。 | SEBoK の MBSE の項（Process Frameworks）：プロセスの枠組みは、構成管理・アクセスの指針・モデルを更新する実践・SE のライフサイクルへの組み込みを持ち、定期的な更新が最低限の要件。（出典: https://sebokwiki.org/w/index.php?title=Model-Based_Systems_Engineering_(MBSE)&oldid=78221#page=1） |
| PLN-13 | SEBoK | アクセスの指針 | 一部 | SSD-PLN-SYS-001 | — | README・入門ガイド・図書一覧（html/index.html）で入口を示す。権限の指針は無い。 | SEBoK の MBSE の項（Process Frameworks）：プロセスの枠組みは、構成管理・アクセスの指針・モデルを更新する実践・SE のライフサイクルへの組み込みを持ち、定期的な更新が最低限の要件。（出典: https://sebokwiki.org/w/index.php?title=Model-Based_Systems_Engineering_(MBSE)&oldid=78221#page=1） |
| PLN-14 | SEBoK | モデルを更新する実践 | 一部 | SSD-PLN-SYS-001 | 図272 | 版ごとの再生成と検査（図272）。人手の版ごとの更新で、継続的な同期ではない。更新の頻度の取り決めは無い。 | SEBoK の MBSE の項（Process Frameworks）：プロセスの枠組みは、構成管理・アクセスの指針・モデルを更新する実践・SE のライフサイクルへの組み込みを持ち、定期的な更新が最低限の要件。（出典: https://sebokwiki.org/w/index.php?title=Model-Based_Systems_Engineering_(MBSE)&oldid=78221#page=1） |
| PLN-15 | SEBoK | SE のライフサイクルへの組み込み | 無 | — | — | 本パッケージは1980年代のシャトルを後から再構成する設計の学習用で、開発のライフサイクルの活動に組み込んでいない。 | SEBoK の MBSE の項（Process Frameworks）：プロセスの枠組みは、構成管理・アクセスの指針・モデルを更新する実践・SE のライフサイクルへの組み込みを持ち、定期的な更新が最低限の要件。（出典: https://sebokwiki.org/w/index.php?title=Model-Based_Systems_Engineering_(MBSE)&oldid=78221#page=1） |
| PLN-16 | SEBoK | 小さなプロジェクトの版管理 | 有 | SSD-PLN-SYS-001 | — | Git の版管理と、各版の検査点（Pilot・一致・照合語・リンク）での更新。 | SEBoK の MBSE の項：小さなプロジェクトの枠組みは、共同のモデリングツールの版管理と、SE のプロセスの検査点での定期更新で足りる。大きなプロジェクトは構成管理計画・SE 管理計画と照らして検査できる形にする。（出典: https://sebokwiki.org/w/index.php?title=Model-Based_Systems_Engineering_(MBSE)&oldid=78221#page=1） |
| PLN-17 | SEBoK | 構成管理計画・SE 管理計画との照合 | 無 | — | — | 照合する構成管理計画・SE 管理計画が無い。本書がその代わりで、事後に書いた。 | SEBoK の MBSE の項：小さなプロジェクトの枠組みは、共同のモデリングツールの版管理と、SE のプロセスの検査点での定期更新で足りる。大きなプロジェクトは構成管理計画・SE 管理計画と照らして検査できる形にする。（出典: https://sebokwiki.org/w/index.php?title=Model-Based_Systems_Engineering_(MBSE)&oldid=78221#page=1） |

## 5. 役割と責任

作業の分担。正式な任命や承認の記録は無い（PLN-03）。

| ID | 担当 | 役割 | 根拠となる記述 |
|---|---|---|---|
| PLN-18 | 利用者 | 依頼を出し、方針を決め、外に出る操作（GitHub へのプッシュ）を確認する。 | 作業の取り決め（リポジトリ外の作業の記録） |
| PLN-19 | 作成担当（AI アシスタント） | 調査・データ・文書・図・SysML の作成と、検査の実行。 | 作業の取り決め（リポジトリ外の作業の記録） |
| PLN-20 | 助言担当（上位の AI モデルによる確認） | 区切りごとに確かめる：作業計画・調査の指示書・build の前・検査の NG・Design/ への上書き・コミット／プッシュ／タグ（外に出る操作）・完了の前。一次資料と食い違うときは黙って乗り換えない。 | 作業の取り決め（リポジトリ外の作業の記録） |
| PLN-21 | 調査担当（作成担当が起動する補助の AI） | 資料の読み取りなど範囲を決めた調査。結果は作成担当が助言担当で確かめる。 | 作業の取り決め（リポジトリ外の作業の記録） |

## 6. 道具

モデルの作成・検査・公開に使う道具と版。

| ID | 道具 | 版 | 用途 |
|---|---|---|---|
| PLN-22 | OMG SysML v2 Pilot Implementation（jupyter-sysml-kernel）と Eclipse Temurin JDK | 0.62.0・JDK 21 | SysML v2 テキストの構文・名前の解決・型の検査（誤り 0・警告 0） |
| PLN-23 | VS Code 拡張機能 SysML v2.0 Language Support | 0.55.0（確かめたとき） | 利用者が .sysml を開いて確かめる。誤り 0 を確かめたのは 0.55.0 のときで、入っている 0.56.0 には言語サーバーが無く、以降の版では実行していない（Design/README.md） |
| PLN-24 | draw.io Desktop（コマンドライン） | 31.5.2 | 図（.drawio）の SVG・PNG への書き出し |
| PLN-25 | Python 3.12（PyMuPDF・Pillow ほか） | 3.12 | データ（Python のスクリプトとデータ）から文書・SysML・図を生成し、検査する |
| PLN-26 | Git と GitHub（GitHub Pages） | — | 版管理（コミット・タグ rev-<版>）、公開（CC BY 4.0）、閲覧 |

## 7. モデルの更新の手順

版ごとの再生成と検査の10段階（図272）。助言担当の欄は、その段階の前後に助言担当が確かめる区切り。

| ID | 段階 | 道具・コマンド | 検査・出力 | 助言担当 |
|---|---|---|---|---|
| PLN-27 | 1 調べる・計画する | 作業の記録・指示書・資料 | PLAN_<版>.md（結果を見る前の規則） | 計画の前 |
| PLN-28 | 2 データを書く | research/rev_<版>/ のデータ（Python） | 出典の頁と照合語の検査 | 調査の指示書の前 |
| PLN-29 | 3 文書と SysML を生成する | build_docs_<版>.py（rev_run.sh） | 文書とモデルの一致（生成の中で確かめる） | 生成の前 |
| PLN-30 | 4 図を生成する | build_drawio_<版>.py（rev_run.sh） | 2回の生成が同一、check_drawio（重なり・リンク・連番） | — |
| PLN-31 | 5 モデルを検査する | verify_nx.py（Pilot） | NG 0、誤り・警告 0、文書とモデルの一致 | NG が出たとき |
| PLN-32 | 6 図を書き出す | export_pages.py（draw.io） | 全ページの SVG・PNG | — |
| PLN-33 | 7 書き出しとリンクを検査する | verify_nx.py --exports・check_links.py | NG 0、切れたリンク 0 | — |
| PLN-34 | 8 Design/ に反映する | apply_rev.py（新構成への変換・件数の更新・REFERENCES.md） | 上書きの前に助言担当の確認 | 上書きの前 |
| PLN-35 | 9 コミットとタグ | git commit・git tag rev-<版> | 版・履歴・件数の整合 | コミットの前 |
| PLN-36 | 10 プッシュ | git push（main とタグ） | 利用者の確認の後に行う | プッシュの前 |

## 8. モデルの構成（種別ごとの文書とパッケージ）

文書 341件を文書番号の種別（SSD-<種別>-…）で数えた。SysML v2 テキスト 59件を、入口 SSD-MDL-SYS-001 が依存の順に読み込む。図271 に同じ表を示す。

| 種別 | 意味 | 文書数 | SysML のパッケージ数 |
|---|---|---|---|
| FD | 機能説明書（機能・インタフェース・故障の説明） | 208 | 0 |
| REF | 機能別関連文書一覧（対象の系の文書を機能ごとにまとめた表） | 31 | 0 |
| REQ | 要求書（L1 はシステム、L2 は系） | 19 | 0 |
| FMEA | 冗長・故障解析表（故障モード・影響解析と致命的項目リストを含む） | 17 | 0 |
| BEH | 状態遷移定義書（振る舞い） | 8 | 8 |
| IRQ | インタフェース要求書 | 3 | 3 |
| OPS | 運用飛行規則（NSTS-12820 Vol. A）の章別対応、ミッションフェーズ・運用モード | 3 | 0 |
| FMX | 系の機能の故障モード定義書 | 2 | 2 |
| RQL | 下位要求書（L3） | 2 | 2 |
| ACC | 事故の教訓定義書 | 1 | 1 |
| ACR | 略語表（本書） | 1 | 0 |
| ALC | 割付定義書（機能・機器・区画・振る舞い） | 1 | 1 |
| ANA | 解析定義書 | 1 | 1 |
| ATM | キャビン大気の動的モデル定義書 | 1 | 1 |
| BLK | 構造定義書（ブロック・ポート・インタフェース） | 1 | 1 |
| BUD | 収支・マージン表 | 1 | 0 |
| CIF | 乗員インタフェース対応表 | 1 | 1 |
| EGR | 容積・動線・緊急脱出定義書 | 1 | 1 |
| EMU | EMU の構造・内部ブロック・状態定義書 | 1 | 1 |
| EPB | EMU の消耗品と前呼吸の定義書 | 1 | 1 |
| ETS | ET・SRB・TPS の内部ブロック・状態定義書 | 1 | 1 |
| EXP | 乗員の環境曝露定義書 | 1 | 1 |
| FDIR | 故障検知・処置対応表 | 1 | 1 |
| FLT | 飛行構成・飛行試験定義書 | 1 | 1 |
| FMM | 故障モードモデル定義書 | 1 | 1 |
| GNC | 誘導・航法・制御（GN&C）（系の符号。種別の符号は付かない文書） | 1 | 1 |
| GND | 地上処理・ターンアラウンド定義書 | 1 | 1 |
| GRD | MBSE グリッド・手法対応定義書 | 1 | 1 |
| HAB | 居住性・医療定義書 | 1 | 1 |
| HAZ | ハザード解析書 | 1 | 1 |
| HEA | ヒューマンエラー解析書 | 1 | 1 |
| HRS | 居住の資源と収支定義書 | 1 | 1 |
| HSI | 人間系の基準の照合表（NASA-STD-3001） | 1 | 1 |
| HVM | 人間系の評価方法定義書 | 1 | 1 |
| IBD | 内部ブロック・流れ定義書 | 1 | 1 |
| ICD | インタフェース管理表 | 1 | 0 |
| IFA | 飛行中異常記録定義書 | 1 | 1 |
| IND | 個体・時間定義書（機体・飛行の個体と実績） | 1 | 1 |
| MBS | MBSE 実践の対応定義書 | 1 | 1 |
| MDL | モデル統合・検査定義書（SysML v2） | 1 | 0 |
| MED | 医療の構造と処置定義書 | 1 | 1 |
| PAR | パラメトリック定義書 | 1 | 1 |
| PHY | 物理構成・機器配分表 | 1 | 0 |
| PLB | ペイロード搭載・着陸の制約定義書 | 1 | 1 |
| PLN | モデル計画書 | 1 | 1 |
| PRA | 確率論的リスク評価（PRA）比較定義書 | 1 | 1 |
| PRF | 消耗品・電力プロファイル定義書 | 1 | 1 |
| RQF | 要求の形式化定義書 | 1 | 1 |
| RQM | 要求モデル定義書 | 1 | 1 |
| TPM | 飛行実績の測定指標定義書（MOE・MOP・TPM） | 1 | 1 |
| TRC | トレース網羅・影響分析書 | 1 | 1 |
| TRJ | 上昇・再突入の時間変化モデル定義書 | 1 | 1 |
| TSK | 乗員の作業分析・機能の分担定義書 | 1 | 1 |
| UC | 運用シナリオ・ユースケース定義書 | 1 | 1 |
| VAR | 構成の違い定義書（機体・ミッションキット） | 1 | 1 |
| VER | 検証定義書（検証ケース・検証マトリクス） | 1 | 1 |
| VPT | ビューポイント定義書（関係者・関心事・ビュー・表記の規約） | 1 | 1 |

## 9. 規約の置き場所

ID の規約（接頭辞・形・例・件数）は SSD-VPT-SYS-001 §7 の表（55行）、文書番号の符号 57種と略語は SSD-ACR-SYS-001、パッケージの読み込みの順と文書とモデルの一致の検査は SSD-MDL-SYS-001、出典の書き方（公開 URL・頁・照合語）は各文書の参考文献に示す。本書は規約を複製しない。

## 10. SEBoK の枠組みとの対応

SEBoK の MBSE の項（Process Frameworks）：プロセスの枠組みは、構成管理・アクセスの指針・モデルを更新する実践・SE のライフサイクルへの組み込みを持ち、定期的な更新が最低限の要件。（出典は参考文献の頁）SEBoK の MBSE の項：小さなプロジェクトの枠組みは、共同のモデリングツールの版管理と、SE のプロセスの検査点での定期更新で足りる。大きなプロジェクトは構成管理計画・SE 管理計画と照らして検査できる形にする。（出典は参考文献の頁） 本パッケージは小さなプロジェクトに当たり、版管理（Git）と、版ごとの検査点での更新で枠組みを満たす（PLN-12・16）。大きなプロジェクトの形（計画との照合・ライフサイクルへの組み込み）は持たない（PLN-15・17）。

## 11. 弱いところと今後

更新の頻度の取り決めが無い（PLN-14）。資源の計画・役割の任命・アクセス権限は持たない（PLN-02・03・06）。メタモデルは HDBK の要素との対応にとどまる（PLN-11）。古くなる箇所は、件数（文書・図・SysML・GAP）と、図を数えるグリッド（SSD-GRD-SYS-001）で、版を重ねるたびに作り直す。

## 12. 図

図271 は文書の種別ごとの文書数とパッケージ数の表、図272 はモデルの更新の10段階の手順の表である。

## 13. SysML v2 テキスト

同じ内容を SysML v2 のテキスト [SysML/SSD-PLN-SYS-001.sysml](../SysML/SSD-PLN-SYS-001.sysml) に示す。計画の項目 17件・担当 4件・道具 5件・手順の段階 10件の part から成る。対象の文書は文字列の属性（assesses）で持ち、パッケージへの依存は張らない。SSD-GRD-SYS-001 の後（VPT の直前）に読み込む。OMG SysML v2 Pilot Implementation 0.62.0（2026-08 リリース、標準ライブラリ付き）で読み込んで、構文・名前の解決・型の検査で誤り 0件・警告 0件を確かめた。要求への SysML の関係は張らず、トレースの外に置いた。

## 14. 注記（出典間の相違・構成変更）

> **注記** 範囲・判定・出典の扱い：計画は事後に書いた。このパッケージは版（Rev.）を重ねて作られ、モデル計画が先に無かった。本書は既存の文書・規約・手順を1つにまとめたもので、新しい事実や新しい規約を足していない（件数は文書とモデルから数える）。

> **注記** 範囲・判定・出典の扱い：手順は人の作業（利用者・作成担当・助言担当）で、全自動ではない。モデルの更新は版ごとの再生成（snapshot → build → verify → 反映）で、継続的な同期ではない。

> **注記** 範囲・判定・出典の扱い：HDBK-1009A の計画の項目のうち、資源（工数・予算）、役割の任命と承認、アクセス権限は、学習用の個人の作業なので持っていない（PLN-02・03・06）。SEBoK の枠組みのうち、SE のライフサイクルへの組み込みと、構成管理計画・SE 管理計画との照合も無い（PLN-15・17）。

> **注記** 範囲・判定・出典の扱い：判定は SSD-MBS-SYS-001 と同じ規則で、自己採点である。HDBK-1009A の計画は SEMP の一部だが、本書は SEMP ではなく、モデルの計画に絞った。SEBoK は CC BY-NC-SA 3.0 なので本文を写さず、要点を言い換えた。

## 15. 参考文献

1. NASA-HDBK-1009A NASA Systems Modeling Handbook for Systems Engineering（NASA、2025-03-12、88頁、8,147,085 バイト。テキスト層あり。公開ページ https://standards.nasa.gov/standard/NASA/NASA-HDBK-1009 が張る PDF。ページ自身が /system/files/tmp/ の URL を張っている） （PDF p16） — https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=16
2. NASA-HDBK-1009A NASA Systems Modeling Handbook for Systems Engineering（NASA、2025-03-12、88頁、8,147,085 バイト。テキスト層あり。公開ページ https://standards.nasa.gov/standard/NASA/NASA-HDBK-1009 が張る PDF。ページ自身が /system/files/tmp/ の URL を張っている） （PDF p15） — https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=15
3. NASA-HDBK-1009A NASA Systems Modeling Handbook for Systems Engineering（NASA、2025-03-12、88頁、8,147,085 バイト。テキスト層あり。公開ページ https://standards.nasa.gov/standard/NASA/NASA-HDBK-1009 が張る PDF。ページ自身が /system/files/tmp/ の URL を張っている） （PDF p17） — https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=17
4. SEBoK「Model-Based Systems Engineering (MBSE)」（Guide to the Systems Engineering Body of Knowledge v2.14、版 oldid=78221。ウィキの本文を取得した1頁。CC BY-NC-SA 3.0 なので本文は写さず、項目名と要点を自分の言葉で示す） （PDF p1） — https://sebokwiki.org/w/index.php?title=Model-Based_Systems_Engineering_(MBSE)&oldid=78221#page=1
5. OMG Systems Modeling Language (SysML) Version 2.0 仕様 — https://www.omg.org/spec/SysML/2.0
6. SysML v2 Release（OMG SysML v2 Pilot Implementation の公開リリース・標準ライブラリ） — https://github.com/Systems-Modeling/SysML-v2-Release

## 16. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-19 | 初版作成（計画の項目 17［有 7・一部 8・無 2］、担当 4、道具 5、更新の手順 10段階、図271・272、SysML v2 テキスト） |
