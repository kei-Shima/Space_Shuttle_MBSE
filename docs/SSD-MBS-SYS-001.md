# MBSE 実践の対応定義書（NASA-HDBK-1009A の作業成果物・SEBoK の効果的なモデルの基準との対応）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-MBS-SYS-001 |
| 表題 | MBSE 実践の対応定義書（NASA-HDBK-1009A の作業成果物・SEBoK の効果的なモデルの基準との対応） |
| 版・日付 | 初版（Rev. -）／2026-10-19 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-MDL-SYS-001 |
| 関連図 | SSD-SYS-ARC-001 図267 NASA-HDBK-1009A の作業成果物と本パッケージの対応・図268 効果的なモデルの基準・性質（SEBoK）と本パッケージの評価 |

## 1. 目的

MBSE の公式の手引きと比べて、本パッケージのモデルが何を持ち、何を持っていないかを、項目ごとに有・一部・無で示す。比べる相手は2つで、NASA-HDBK-1009A（NASA の SE プロセスに SysML を当てる手引き。取り込む作業成果物 12件・図表 8.1〜8.22・メタモデル）と、INCOSE が共同で保つ SEBoK の MBSE の項（効果的なモデルの基準 10項目・モデルの性質 10項目・文書との併用）である。検証（要求を満たすか）と妥当性確認（期待を満たすか）を分けると、本パッケージに妥当性確認の図表が無いことがはっきりする。結果は、次の版の計画（グリッド・モデル計画書・ステークホルダーの期待と妥当性確認）の根拠になる。

## 2. 範囲と判定の規則

評価の対象は本パッケージのモデルで、シャトル計画が実際にどう進めたかではない。判定は自己採点なので、規則を結果を見る前に決めた（PLAN_CR）。【HDBK の作業成果物・メタモデルの要素】有＝同種の図表・表が本パッケージにあり、HDBK がその図表の目的とする要素と関係を持つ（SysML v2 の等価な構成でよい）、一部＝要素や関係の一部だけ、別の形・別の粒度、または複数の文書に散らばっている、無＝同種の図表・表が無い。【SEBoK の基準】有＝検査の数値で基準を満たすと言える、一部＝満たす部分と満たさない部分を数値で示せる。性質は判定でなく、本パッケージの分類を書く。HDBK-1009A は SysML v1.7 向けで本パッケージは SysML v2 なので、図の種類（bdd・ibd・req）は参考にとどめ、図表の目的で判定した。SEBoK は CC BY-NC-SA 3.0 なので、本文は写さず、項目名と要点を日本語で言い換えた。

## 3. MBSE の定義（出典）

INCOSE は MBSE を、概念設計の段階から開発・後の段階まで続く、要求・設計・解析・検証と妥当性確認の活動を支えるモデリングの形式的な適用と定義している（HDBK-1009A が引く定義）。（出典は参考文献の頁）

## 4. HDBK-1009A が取り込む作業成果物（Table 4.1-1）

NASA の SE の4つのプロセス（ステークホルダーの期待・技術要求・検証・妥当性確認）の作業成果物 12件。判定：有 5・一部 4・無 3。図267 に同じ表を示す。

| ID | 項目 | 判定 | 本パッケージの文書 | 図 | 証拠・補足 | 根拠 |
|---|---|---|---|---|---|---|
| MBS-01 | ステークホルダーの識別と期待 | 一部 | SSD-VPT-SYS-001 | 図111 | 関係者 9・関心事 11 とビューポイントはある（図111）が、期待の文（ニーズ・目標・目的）の表は無い。 | HDBK-1009A 頁10 |
| MBS-02 | 運用概念（ConOps） | 一部 | SSD-OPS-PHASE-001・SSD-UC-ORB-001・SSD-BEH-ORB-003・SSD-GND-ORB-001・SSD-HSI-SYS-001 | 図39・図93・図94・図95・図155・図254 | フェーズ・ユースケース・シーケンス・地上処理・人間系の運用はあるが、運用概念を1つの文書にまとめていない。 | HDBK-1009A 頁10 |
| MBS-03 | MOE の定義 | 有 | SSD-TPM-SYS-001 | 図249 | MOE 4件（SSD-TPM-SYS-001。飛行実績の MOE。開発段階の MOE ではない）。 | HDBK-1009A 頁10 |
| MBS-04 | 技術要求 | 有 | SSD-REQ-SYS-001・SSD-RQM-SYS-001・SSD-RQL-SYS-001・SSD-IRQ-SYS-001 | 図90・図166・図212・図225 | L1 の要求、17系の L2・L3、インタフェース要求（要求書・導出・充足の行列）。 | HDBK-1009A 頁10 |
| MBS-05 | MOP の定義 | 有 | SSD-TPM-SYS-001 | 図249 | MOP 8件（SSD-TPM-SYS-001）。 | HDBK-1009A 頁10 |
| MBS-06 | TPM の定義 | 一部 | SSD-TPM-SYS-001 | 図249・図250 | TPM 3件（着陸重量・APU の燃料・接地の対地速度）は、運用の飛行ごとの実測値の推移で、開発段階の技術性能指標ではない。 | HDBK-1009A 頁10 |
| MBS-07 | 検証の要求 | 有 | SSD-VER-SYS-001 | 図110 | 要求ごとの検証定義（verification def）・検証方法 A/T/I/D（SSD-VER-SYS-001）。 | HDBK-1009A 頁10 |
| MBS-08 | 検証の計画 | 一部 | SSD-VER-SYS-001・SSD-FLT-ORB-001 | 図110・図132 | 検証方法とフェーズの対応はあるが、検証の構成・設備・手順の計画（8.18〜8.20）は無い。 | HDBK-1009A 頁10 |
| MBS-09 | 検証の結果と報告 | 有 | SSD-VER-SYS-001・SSD-FLT-ORB-001 | 図110・図133 | 要求ごとの判定（検証の判定 838/1322（63%））と飛行試験の結果（図133）。根拠なしは理由の区分で示す（GAP-01 484件）。 | HDBK-1009A 頁10 |
| MBS-10 | 妥当性確認の要求 | 無 | — | — | 妥当性確認（期待を満たすか）の要求・マトリクスは図・表とも0。検証（要求を満たすか）と分けていない。 | HDBK-1009A 頁10 |
| MBS-11 | 妥当性確認の計画 | 無 | — | — | 妥当性確認の計画の図・表は0。 | HDBK-1009A 頁10 |
| MBS-12 | 妥当性確認の結果と報告 | 無 | — | — | 妥当性確認の結果の図・表は0。飛行の実績（図132・133・250）は検証や測定指標の結果として示してあり、妥当性確認の結果として整理していない。 | HDBK-1009A 頁10 |

## 5. HDBK-1009A の図表（8.1〜8.22）

§8 の22の作業成果物（図表）。8.18〜8.20 は検証と妥当性確認で共通の V&V ケースの図表、8.21〜8.22 が妥当性確認の図表。判定：有 10・一部 5・無 7。

| ID | 項目 | 判定 | 本パッケージの文書 | 図 | 証拠・補足 | 根拠 |
|---|---|---|---|---|---|---|
| MBS-13 | 8.1 ステークホルダーの識別と期待の文（bdd・表） | 一部 | SSD-VPT-SYS-001 | 図111 | 関係者・関心事はあるが期待の文は無い（MBS-01）。 | 8.1 ステークホルダーの識別と期待の文の bdd と表。（出典: https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=22） |
| MBS-14 | 8.2 ニーズ・目標・目的（NGO）の要求図 | 無 | — | — | ニーズ・目標・目的の図表は無い。SP-4221 に要求の起源（例：クロスレンジ 1,100 n.mi.）の記述があるが、図表にしていない。 | 8.2 ニーズ・目標・目的（NGO）の要求図。（出典: https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=24） |
| MBS-15 | 8.3 システム文脈の bdd | 一部 | SSD-BLK-SYS-001 | 図1・図89 | 外部系の3部品と運用の文脈・宇宙空間などの要素が構造（図89）にあるが、文脈だけの bdd にしていない。 | 8.3 システム文脈の bdd。（出典: https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=24） |
| MBS-16 | 8.4 システム文脈の ibd | 一部 | SSD-BLK-SYS-001・SSD-ICD-ORB-001 | 図5・図38 | 外部系との IF（図5・図38 の N2・SSD-ICD-ORB-001）はあるが、文脈の ibd にしていない。 | 8.4 システム文脈の ibd。（出典: https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=25） |
| MBS-17 | 8.5 システムのユースケース図 | 有 | SSD-UC-ORB-001 | 図93 | ユースケース 12・アクタ 8（図93）。 | 8.5 システムのユースケース図。（出典: https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=27） |
| MBS-18 | 8.6 ユースケースを支える活動図 | 有 | SSD-UC-ORB-001・SSD-BEH-ORB-002・SSD-BEH-ORB-004 | 図96・図97 | ユースケースの活動図（図96・97 ほか。活動図は全体で多数）。 | 8.6 ユースケースを支える活動図。（出典: https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=27） |
| MBS-19 | 8.7 構造の分解の bdd | 有 | SSD-BLK-SYS-001 | 図89 | 機能説明書をもとにした part def の入れ子（図89）。 | 8.7 構造の分解の bdd。（出典: https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=28） |
| MBS-20 | 8.8 構造の接続の ibd | 有 | SSD-IBD-ORB-001 | 図112・図113・図114 | 内部ブロック図は全体で多数（図112〜114・128〜131・233〜243 ほか）。 | 8.8 構造の接続の ibd。（出典: https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=29） |
| MBS-21 | 8.9 活動の機能分解（bdd） | 一部 | SSD-ALC-SYS-001 | 図91 | 機能行を action にして部品へ割り付けている（図91）が、活動の分解の bdd は描いていない。 | 8.9 活動の機能分解（bdd）。（出典: https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=30） |
| MBS-22 | 8.10 システム要求図 | 有 | SSD-RQM-SYS-001 | 図90 | 要求の導出・充足を SysML に持つ（図90 は行列）。要求図（req）の形では描いていない。 | 8.10 システム要求図。（出典: https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=30） |
| MBS-23 | 8.11 トレーサビリティつきの要求表 | 有 | SSD-REQ-SYS-001・SSD-TRC-SYS-001 | 図115・図116 | 要求書の表と、トレースの網羅（図116。C1〜C9）。 | 8.11 トレーサビリティつきの要求表。（出典: https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=31） |
| MBS-24 | 8.12 MOE・MOP と要求のトレースの要求図 | 一部 | SSD-TPM-SYS-001 | 図249 | MOE・MOP・TPM の階層はあるが、要求への SysML の関係は張っていない（トレースの外）。 | 8.12 MOE・MOP と要求のトレースの要求図。（出典: https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=31） |
| MBS-25 | 8.13 MOP・TPM を識別した構造の分解 bdd | 無 | — | — | MOP・TPM は要求・飛行の値と結び、構造の部品には付けていない。 | 8.13 MOP・TPM を識別した構造の分解 bdd。（出典: https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=33） |
| MBS-26 | 8.14 検証の要求（文）の要求図 | 有 | SSD-VER-SYS-001 | 図110 | 検証定義の objective（SSD-VER-SYS-001）。 | 8.14 検証の要求（文）の要求図。（出典: https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=35） |
| MBS-27 | 8.15 検証の要求とトレーサビリティの要求図 | 有 | SSD-VER-SYS-001 | 図110 | 検証定義から要求への verify（SSD-VER-SYS-001）。 | 8.15 検証の要求とトレーサビリティの要求図。（出典: https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=35） |
| MBS-28 | 8.16 要求の検証マトリクスの表 | 有 | SSD-VER-SYS-001 | 図110 | 要求書×検証方法・判定（図110）。 | 8.16 要求の検証マトリクスの表。（出典: https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=37） |
| MBS-29 | 8.17 検証要求のマトリクス（検証コンプライアンス） | 有 | SSD-VER-SYS-001・SSD-FLT-ORB-001 | 図110・図133 | 検証ケースの判定と飛行試験の結果（図110・133）。 | 8.17 検証要求のマトリクス（検証コンプライアンスの表）。（出典: https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=39） |
| MBS-30 | 8.18 V&V ケースのユースケース図 | 無 | — | — | 検証ケース（VC-）の定義と結果はあるが、ユースケース図にしていない。 | 8.18 V&V ケースのユースケース図（検証と妥当性確認で共通の枠）。（出典: https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=40） |
| MBS-31 | 8.19 V&V の構成の分解 bdd | 無 | — | — | 試験・検証の構成（設備・人員・試験品）の bdd は無い（飛行の構成は SSD-FLT-ORB-001）。 | 8.19 V&V の構成の分解 bdd。（出典: https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=40） |
| MBS-32 | 8.20 V&V ケースの手順の活動図 | 無 | — | — | 検証ケースの手順の活動図は無い。 | 8.20 V&V ケースの手順の活動図。（出典: https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=41） |
| MBS-33 | 8.21 妥当性確認の要求とトレーサビリティの要求図 | 無 | — | — | 妥当性確認の要求は無い（MBS-10）。 | 8.21 妥当性確認の要求とトレーサビリティの要求図。（出典: https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=43） |
| MBS-34 | 8.22 妥当性確認の要求のマトリクスの表 | 無 | — | — | 妥当性確認のマトリクスは無い（MBS-10）。 | 8.22 妥当性確認の要求のマトリクスの表。（出典: https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=44） |

## 6. HDBK-1009A のメタモデルの要素と関係

メタモデル（7 章。図7-1・7-2 は画像）の本文の注記に出る要素と関係を、SysML v2 の要素に対応させた。判定：有 5・一部 3・無 2。

| ID | 項目 | 判定 | 本パッケージの文書 | 図 | 証拠・補足 | 根拠 |
|---|---|---|---|---|---|---|
| MBS-35 | ステークホルダーの期待の文・ニーズ・目標・目的 | 無 | — | — | 期待・NGO の要素は無い（MBS-01・MBS-14）。 | HDBK-1009A 頁19 |
| MBS-36 | 要求（要求の階層） | 有 | SSD-RQM-SYS-001・SSD-RQL-SYS-001・SSD-IRQ-SYS-001 | 図90 | requirement def と導出（#derivation）・充足（satisfy）（SSD-RQM-SYS-001）。 | HDBK-1009A 頁19 |
| MBS-37 | MOE・MOP・TPM | 一部 | SSD-TPM-SYS-001 | 図249 | MOE・MOP・TPM の属性と閾値の constraint def（要求への関係は張らない）。 | HDBK-1009A 頁19 |
| MBS-38 | 検証の要求と verifies の関係 | 有 | SSD-VER-SYS-001 | 図110 | verification def と `verify`（SSD-VER-SYS-001）。 | HDBK-1009A 頁19 |
| MBS-39 | 妥当性確認の要求と satisfies の関係 | 無 | — | — | 妥当性確認の要求は無い（MBS-10）。 | HDBK-1009A 頁19 |
| MBS-40 | V&V ケース・V&V ケースの活動・V&V の構成 | 一部 | SSD-VER-SYS-001・SSD-FLT-ORB-001 | 図110・図133 | 検証ケースと結果、飛行の構成はあるが、ケースの活動と検証の構成は無い（MBS-30〜32）。 | HDBK-1009A 頁20 |
| MBS-41 | 構造（ブロック）と IF | 有 | SSD-BLK-SYS-001・SSD-IBD-ORB-001 | 図89・図112 | part def・port・interface・connection・flow（構造・内部ブロック図）。 | HDBK-1009A 頁19 |
| MBS-42 | 振る舞い（uc・act・sd・stm） | 有 | SSD-BEH-ORB-001・SSD-UC-ORB-001・SSD-BEH-ORB-003 | 図76・図93・図84 | 状態機械・活動・シーケンス・ユースケースが全体で多数。 | HDBK-1009A 頁19 |
| MBS-43 | パラメトリック（値の性質と制約） | 有 | SSD-PAR-ORB-001・SSD-ANA-ORB-001・SSD-TRJ-ORB-001 | 図78・図79・図105 | constraint def・analysis def・値の属性（量と単位）。 | HDBK-1009A 頁19 |
| MBS-44 | 要求・MOE が満たされる先は階層のどこでもよい | 一部 | SSD-RQM-SYS-001 | 図90 | 要求は機能行・IF・機器へ充足を張る（割付先 1,000 件超）。MOE の充足先は張っていない。 | HDBK-1009A 頁19 |

## 7. SEBoK の効果的なモデルの基準 10項目

主要なモデルが持つべき10の特性（SEBoK の MBSE の項。項目名の言い換え）と、本パッケージの評価。判定：有 5・一部 5。図268 に同じ表を示す。

| ID | 項目 | 判定 | 本パッケージの文書 | 図 | 証拠・補足 | 根拠 |
|---|---|---|---|---|---|---|
| MBS-45 | 基準1 範囲が対象システム全体と合う | 一部 | SSD-BLK-SYS-001・SSD-FD-ORB-001 | 図1・図2 | オービタ・ET・SRB と運用の18系を持つ（機能説明書 208件に対応する構造の part def）。地上処理は図254〜256 だけ、ペイロードは設計値のみ（図261〜263）、IFA は STS-37〜99 と種別 E・T・B・M・I が範囲外。 | SEBoK の効果的な MBSE モデルの基準（第1項・範囲）。（出典: https://sebokwiki.org/w/index.php?title=Model-Based_Systems_Engineering_(MBSE)&oldid=78221#page=1） |
| MBS-46 | 基準2 全領域の全体の見方 | 有 | SSD-VPT-SYS-001 | 図111 | 構造・振る舞い・要求・安全・故障・人間系・資源の13の視点（ビューポイント）と関係者 9。 | SEBoK の効果的な MBSE モデルの基準（第2項・領域の全体）。（出典: https://sebokwiki.org/w/index.php?title=Model-Based_Systems_Engineering_(MBSE)&oldid=78221#page=1） |
| MBS-47 | 基準3 標準のモデリング言語への厳密な準拠 | 有 | SSD-MDL-SYS-001 | 図92 | SysML v2 テキスト 57件を OMG の Pilot 実装で読み込み、誤り 0・警告 0（各版の検査）。図は draw.io で描き、SysML から自動では生成していない。 | SEBoK の効果的な MBSE モデルの基準（第3項・言語への準拠）。（出典: https://sebokwiki.org/w/index.php?title=Model-Based_Systems_Engineering_(MBSE)&oldid=78221#page=1） |
| MBS-48 | 基準4 関係する情報だけへの抽象化 | 一部 | SSD-BLK-SYS-001 | 図89 | 機能説明書・故障解析表・資料の出典を含み、設計の記述としては詳細が多い。目的（学習用の検討用）に対して省かない詳細が多い。 | SEBoK の効果的な MBSE モデルの基準（第4項・抽象化）。（出典: https://sebokwiki.org/w/index.php?title=Model-Based_Systems_Engineering_(MBSE)&oldid=78221#page=1） |
| MBS-49 | 基準5 概念的である（要求などを取り込める） | 有 | SSD-RQM-SYS-001・SSD-REQ-SYS-001 | 図90 | 要求（L1・L2・L3・インタフェース要求）・ハザード 16・故障モード・ビューポイントなど、物理でない情報を取り込んでいる。 | SEBoK の効果的な MBSE モデルの基準（第5項・概念的）。（出典: https://sebokwiki.org/w/index.php?title=Model-Based_Systems_Engineering_(MBSE)&oldid=78221#page=1） |
| MBS-50 | 基準6 機能と構造に、解析・定量の性質を加える | 有 | SSD-BLK-SYS-001・SSD-ALC-SYS-001・SSD-PAR-ORB-001・SSD-ANA-ORB-001 | 図89・図91・図78・図105 | 構造・機能の割付に、収支・パラメトリック・解析（量と単位つき）を持つ。 | SEBoK の効果的な MBSE モデルの基準（第6項・機能と構造と解析）。（出典: https://sebokwiki.org/w/index.php?title=Model-Based_Systems_Engineering_(MBSE)&oldid=78221#page=1） |
| MBS-51 | 基準7 十分な忠実度 | 一部 | SSD-ANA-ORB-001・SSD-TRJ-ORB-001・SSD-PLB-ORB-001 | 図230・図232・図261 | 照合語（出典の頁の語句）で資料と突き合わせている。値は公開資料の範囲で、ペイロードの値は1980年の設計値、上昇の運動方程式は第1段だけ・再突入は見送り。忠実度は系ごとに違う。 | SEBoK の効果的な MBSE モデルの基準（第7項・忠実度）。（出典: https://sebokwiki.org/w/index.php?title=Model-Based_Systems_Engineering_(MBSE)&oldid=78221#page=1） |
| MBS-52 | 基準8 範囲に対して完全 | 一部 | SSD-TRC-SYS-001 | 図116 | トレースの網羅：要求の検証 838/1322（63%）、要求の導出 1221/1322（92%）、機能行の要求・IF・故障解析・振る舞いは 100%。検証の根拠なし GAP-01 484件。 | SEBoK の効果的な MBSE モデルの基準（第8項・完全性）。（出典: https://sebokwiki.org/w/index.php?title=Model-Based_Systems_Engineering_(MBSE)&oldid=78221#page=1） |
| MBS-53 | 基準9 補助のモデルとの統合 | 一部 | SSD-MDL-SYS-001・SSD-PAR-ORB-001 | 図92 | 解析のモデルは SysML の calc・constraint と Python の計算を併用し、外部のシミュレーション・解析ツールとは結んでいない。パッケージは入口が全 57 件を読み込む。 | SEBoK の効果的な MBSE モデルの基準（第9項・補助モデルとの統合）。（出典: https://sebokwiki.org/w/index.php?title=Model-Based_Systems_Engineering_(MBSE)&oldid=78221#page=1） |
| MBS-54 | 基準10 利用する人のニーズに合う品質 | 有 | SSD-VPT-SYS-001・SSD-MDL-SYS-001 | 図111・図92 | 文書とモデルの一致の検査（SSD-MDL-SYS-001 §6）、全リンクの検査、入門ガイド（guide/）。利用者のニーズの聞き取りはしていない（本書の自己評価）。 | SEBoK の効果的な MBSE モデルの基準（第10項・品質）。（出典: https://sebokwiki.org/w/index.php?title=Model-Based_Systems_Engineering_(MBSE)&oldid=78221#page=1） |

## 8. SEBoK のモデルの性質 10項目

モデルを分類する10の性質（範囲・領域・形式性・抽象度・物理か概念か・記述か解析か・忠実度・完全性・統合・品質）に対する、本パッケージの分類。

| ID | 性質 | 本パッケージの分類 | 根拠 |
|---|---|---|---|
| MBS-55 | 範囲 | 広い：機体・ET・SRB と運用の18系を含み、系どうしの IF（601件）を持つ。ペイロード・地上処理は縁だけ。 | SEBoK のモデルの性質（範囲）。（出典: https://sebokwiki.org/w/index.php?title=Model-Based_Systems_Engineering_(MBSE)&oldid=78221#page=1） |
| MBS-56 | 領域 | 全体的：構造・振る舞い・要求・安全・故障・資源・人間系・構成の違いを持つ13の視点。 | SEBoK のモデルの性質（領域）。（出典: https://sebokwiki.org/w/index.php?title=Model-Based_Systems_Engineering_(MBSE)&oldid=78221#page=1） |
| MBS-57 | 形式性 | 形式的と非形式的が混在：SysML v2 テキスト 57件は形式的。説明書 339件の表・本文と draw.io の図は SysML から生成せず、同じデータから作る。 | SEBoK のモデルの性質（形式性）。（出典: https://sebokwiki.org/w/index.php?title=Model-Based_Systems_Engineering_(MBSE)&oldid=78221#page=1） |
| MBS-58 | 抽象度 | 混在：構造・IF は抽象化し、故障解析・資料の根拠は詳細を残す。 | SEBoK のモデルの性質（抽象度）。（出典: https://sebokwiki.org/w/index.php?title=Model-Based_Systems_Engineering_(MBSE)&oldid=78221#page=1） |
| MBS-59 | 物理か概念か | 概念：要求・ハザード・振る舞い・故障モード。物理の部品は機器配分表の機器（PHY）として記述する。 | SEBoK のモデルの性質（物理か概念か）。（出典: https://sebokwiki.org/w/index.php?title=Model-Based_Systems_Engineering_(MBSE)&oldid=78221#page=1） |
| MBS-60 | 記述か解析か | ハイブリッド：記述（要求・構造・振る舞い）が中心で、解析（収支・パラメトリック・運動方程式・故障の木・PRA の比較）を併用する。 | SEBoK のモデルの性質（記述か解析か）。（出典: https://sebokwiki.org/w/index.php?title=Model-Based_Systems_Engineering_(MBSE)&oldid=78221#page=1） |
| MBS-61 | 忠実度 | 系ごとに違う：IF・機能行は全系に持つが、運動方程式・大気の動的モデルは一部の量だけ。 | SEBoK のモデルの性質（忠実度）。（出典: https://sebokwiki.org/w/index.php?title=Model-Based_Systems_Engineering_(MBSE)&oldid=78221#page=1） |
| MBS-62 | 完全性 | 範囲に対して部分的：トレースの網羅は構造の指標で 100% だが、検証の根拠は 63%。範囲外は各文書の注記に書いた。 | SEBoK のモデルの性質（完全性）。（出典: https://sebokwiki.org/w/index.php?title=Model-Based_Systems_Engineering_(MBSE)&oldid=78221#page=1） |
| MBS-63 | 統合 | パッケージ間は入口が全 57 件を読み込み一致を検査する。外部のツール・シミュレーションとの統合は無い。 | SEBoK のモデルの性質（統合）。（出典: https://sebokwiki.org/w/index.php?title=Model-Based_Systems_Engineering_(MBSE)&oldid=78221#page=1） |
| MBS-64 | 品質 | 検査で数値化できる品質（Pilot・一致・照合語・リンク）は満たす。モデルの利用者のニーズへの適合は自己評価で、聞き取りはしていない。 | SEBoK のモデルの性質（品質）。（出典: https://sebokwiki.org/w/index.php?title=Model-Based_Systems_Engineering_(MBSE)&oldid=78221#page=1） |

## 9. 真実の源と文書の併用

本パッケージの真実の源は、task/tools の Python のデータ（調査結果の JSON・Python のモジュール）で、SysML v2 テキスト・Markdown・HTML・draw.io はそこから生成した成果物である。SEBoK が MBSE の特徴とする、モデルを技術基準線とする中央のモデルは、SysML v2 テキストの集合が近いが、図と説明書が別の生成物として同じデータから作られるため、本パッケージは SEBoK の言う文書とモデルの併用（ハイブリッド）に当たる。文書とモデルの一致は検査（SSD-MDL-SYS-001 §6）で保つ。（SEBoK の MBSE の項（モデルを単一の真実の源・技術基準線とする考え方）。）（SEBoK の MBSE と文書中心の方法の併用（ハイブリッド）の項。）

## 10. 弱いところ（数値）

検証の判定（要求の検証）838/1322（63%）、要求の導出 1221/1322（92%）、検証の根拠なし（GAP-01）484件、妥当性確認の図表 0、IFA の範囲外（STS-37〜99・種別 E・T・B・M・I）約390件、ペイロードの値は1980年の設計値、再突入の運動方程式は見送り、図は SysML から自動生成していない（draw.io で描く）。HDBK-1009A の8.1〜8.2・8.13・8.18〜8.22 に当たる図表は、次の版以降の候補である。

## 11. 図

図267 は HDBK-1009A の作業成果物（Table 4.1-1・8.1〜8.22・メタモデル）と本パッケージの対応、図268 は SEBoK の効果的なモデルの基準・性質と本パッケージの評価の表である。

## 12. SysML v2 テキスト

同じ内容を SysML v2 のテキスト [SysML/SSD-MBS-SYS-001.sysml](../SysML/SSD-MBS-SYS-001.sysml) に示す。項目 64件の part（MbseItem）と、対象のパッケージへの #Assesses の dependency 60件から成る。ほかのすべてのパッケージの後（VPT の直前）に読み込む。OMG SysML v2 Pilot Implementation 0.62.0（2026-08 リリース、標準ライブラリ付き）で読み込んで、構文・名前の解決・型の検査で誤り 0件・警告 0件を確かめた。要求への SysML の関係は張らず、トレースの外に置いた。

## 13. 注記（出典間の相違・構成変更）

> **注記** 範囲・判定・出典の扱い：HDBK-1009A は SysML v1.7 向けで、本パッケージは SysML v2 のテキストである。8.x の図の種類（bdd・ibd・req・par）は参考にとどめ、判定は図表の目的（要素と関係を持つか）と SysML v2 の等価な構成で行った。メタモデル（図7-1・7-2）は画像で、本文の注記に出る要素だけを対応させた。

> **注記** 範囲・判定・出典の扱い：判定は PLAN_CR の規則（結果を見る前に決めた）に当てた自己採点である。評価の対象は本パッケージのモデルで、シャトル計画が実際にどう進めたかではない。

> **注記** 範囲・判定・出典の扱い：SEBoK は CC BY-NC-SA 3.0 なので、本文は写さず、項目名と要点を日本語で言い換えた（出典の URL は版を固定した oldid=78221）。INCOSE 本体の文書（SE Handbook v5 など）は会員限定か有料で確かめていない。MBSE の INCOSE の定義は HDBK-1009A §4.2 の引用から取った。

> **注記** 範囲・判定・出典の扱い：HDBK の URL は、公開ページ（standards.nasa.gov/standard/NASA/NASA-HDBK-1009）が張る PDF の URL（/system/files/tmp/ を含む）で、一時置き場の可能性がある。

> **注記** 振り分け（本書の判断）：INCOSE の考え方は、ユーザーが選んだ3案（対応表→グリッド→モデル計画書）に振り分けた。本版（対応表）は SEBoK の基準・性質、次の版（グリッド）は Estefan 2008 の手法の工程と SEBoK の Architecture Frameworks、その次（モデル計画書）は SEBoK の Process Frameworks を取り込む予定である。

## 14. 参考文献

1. NASA-HDBK-1009A NASA Systems Modeling Handbook for Systems Engineering（NASA、2025-03-12、88頁、8,147,085 バイト。テキスト層あり。公開ページ https://standards.nasa.gov/standard/NASA/NASA-HDBK-1009 が張る PDF。ページ自身が /system/files/tmp/ の URL を張っている） （PDF p10） — https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=10
2. NASA-HDBK-1009A NASA Systems Modeling Handbook for Systems Engineering（NASA、2025-03-12、88頁、8,147,085 バイト。テキスト層あり。公開ページ https://standards.nasa.gov/standard/NASA/NASA-HDBK-1009 が張る PDF。ページ自身が /system/files/tmp/ の URL を張っている） （PDF p22） — https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=22
3. NASA-HDBK-1009A NASA Systems Modeling Handbook for Systems Engineering（NASA、2025-03-12、88頁、8,147,085 バイト。テキスト層あり。公開ページ https://standards.nasa.gov/standard/NASA/NASA-HDBK-1009 が張る PDF。ページ自身が /system/files/tmp/ の URL を張っている） （PDF p24） — https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=24
4. NASA-HDBK-1009A NASA Systems Modeling Handbook for Systems Engineering（NASA、2025-03-12、88頁、8,147,085 バイト。テキスト層あり。公開ページ https://standards.nasa.gov/standard/NASA/NASA-HDBK-1009 が張る PDF。ページ自身が /system/files/tmp/ の URL を張っている） （PDF p25） — https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=25
5. NASA-HDBK-1009A NASA Systems Modeling Handbook for Systems Engineering（NASA、2025-03-12、88頁、8,147,085 バイト。テキスト層あり。公開ページ https://standards.nasa.gov/standard/NASA/NASA-HDBK-1009 が張る PDF。ページ自身が /system/files/tmp/ の URL を張っている） （PDF p27） — https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=27
6. NASA-HDBK-1009A NASA Systems Modeling Handbook for Systems Engineering（NASA、2025-03-12、88頁、8,147,085 バイト。テキスト層あり。公開ページ https://standards.nasa.gov/standard/NASA/NASA-HDBK-1009 が張る PDF。ページ自身が /system/files/tmp/ の URL を張っている） （PDF p28） — https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=28
7. NASA-HDBK-1009A NASA Systems Modeling Handbook for Systems Engineering（NASA、2025-03-12、88頁、8,147,085 バイト。テキスト層あり。公開ページ https://standards.nasa.gov/standard/NASA/NASA-HDBK-1009 が張る PDF。ページ自身が /system/files/tmp/ の URL を張っている） （PDF p29） — https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=29
8. NASA-HDBK-1009A NASA Systems Modeling Handbook for Systems Engineering（NASA、2025-03-12、88頁、8,147,085 バイト。テキスト層あり。公開ページ https://standards.nasa.gov/standard/NASA/NASA-HDBK-1009 が張る PDF。ページ自身が /system/files/tmp/ の URL を張っている） （PDF p30） — https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=30
9. NASA-HDBK-1009A NASA Systems Modeling Handbook for Systems Engineering（NASA、2025-03-12、88頁、8,147,085 バイト。テキスト層あり。公開ページ https://standards.nasa.gov/standard/NASA/NASA-HDBK-1009 が張る PDF。ページ自身が /system/files/tmp/ の URL を張っている） （PDF p31） — https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=31
10. NASA-HDBK-1009A NASA Systems Modeling Handbook for Systems Engineering（NASA、2025-03-12、88頁、8,147,085 バイト。テキスト層あり。公開ページ https://standards.nasa.gov/standard/NASA/NASA-HDBK-1009 が張る PDF。ページ自身が /system/files/tmp/ の URL を張っている） （PDF p33） — https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=33
11. NASA-HDBK-1009A NASA Systems Modeling Handbook for Systems Engineering（NASA、2025-03-12、88頁、8,147,085 バイト。テキスト層あり。公開ページ https://standards.nasa.gov/standard/NASA/NASA-HDBK-1009 が張る PDF。ページ自身が /system/files/tmp/ の URL を張っている） （PDF p35） — https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=35
12. NASA-HDBK-1009A NASA Systems Modeling Handbook for Systems Engineering（NASA、2025-03-12、88頁、8,147,085 バイト。テキスト層あり。公開ページ https://standards.nasa.gov/standard/NASA/NASA-HDBK-1009 が張る PDF。ページ自身が /system/files/tmp/ の URL を張っている） （PDF p37） — https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=37
13. NASA-HDBK-1009A NASA Systems Modeling Handbook for Systems Engineering（NASA、2025-03-12、88頁、8,147,085 バイト。テキスト層あり。公開ページ https://standards.nasa.gov/standard/NASA/NASA-HDBK-1009 が張る PDF。ページ自身が /system/files/tmp/ の URL を張っている） （PDF p39） — https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=39
14. NASA-HDBK-1009A NASA Systems Modeling Handbook for Systems Engineering（NASA、2025-03-12、88頁、8,147,085 バイト。テキスト層あり。公開ページ https://standards.nasa.gov/standard/NASA/NASA-HDBK-1009 が張る PDF。ページ自身が /system/files/tmp/ の URL を張っている） （PDF p40） — https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=40
15. NASA-HDBK-1009A NASA Systems Modeling Handbook for Systems Engineering（NASA、2025-03-12、88頁、8,147,085 バイト。テキスト層あり。公開ページ https://standards.nasa.gov/standard/NASA/NASA-HDBK-1009 が張る PDF。ページ自身が /system/files/tmp/ の URL を張っている） （PDF p41） — https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=41
16. NASA-HDBK-1009A NASA Systems Modeling Handbook for Systems Engineering（NASA、2025-03-12、88頁、8,147,085 バイト。テキスト層あり。公開ページ https://standards.nasa.gov/standard/NASA/NASA-HDBK-1009 が張る PDF。ページ自身が /system/files/tmp/ の URL を張っている） （PDF p43） — https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=43
17. NASA-HDBK-1009A NASA Systems Modeling Handbook for Systems Engineering（NASA、2025-03-12、88頁、8,147,085 バイト。テキスト層あり。公開ページ https://standards.nasa.gov/standard/NASA/NASA-HDBK-1009 が張る PDF。ページ自身が /system/files/tmp/ の URL を張っている） （PDF p44） — https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=44
18. NASA-HDBK-1009A NASA Systems Modeling Handbook for Systems Engineering（NASA、2025-03-12、88頁、8,147,085 バイト。テキスト層あり。公開ページ https://standards.nasa.gov/standard/NASA/NASA-HDBK-1009 が張る PDF。ページ自身が /system/files/tmp/ の URL を張っている） （PDF p19） — https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=19
19. NASA-HDBK-1009A NASA Systems Modeling Handbook for Systems Engineering（NASA、2025-03-12、88頁、8,147,085 バイト。テキスト層あり。公開ページ https://standards.nasa.gov/standard/NASA/NASA-HDBK-1009 が張る PDF。ページ自身が /system/files/tmp/ の URL を張っている） （PDF p20） — https://standards.nasa.gov/system/files/tmp/2025-03-12-NASA-HDBK-1009A.pdf#page=20
20. SEBoK「Model-Based Systems Engineering (MBSE)」（Guide to the Systems Engineering Body of Knowledge v2.14、版 oldid=78221。ウィキの本文を取得した1頁。CC BY-NC-SA 3.0 なので本文は写さず、項目名と要点を自分の言葉で示す） （PDF p1） — https://sebokwiki.org/w/index.php?title=Model-Based_Systems_Engineering_(MBSE)&oldid=78221#page=1
21. OMG Systems Modeling Language (SysML) Version 2.0 仕様 — https://www.omg.org/spec/SysML/2.0
22. SysML v2 Release（OMG SysML v2 Pilot Implementation の公開リリース・標準ライブラリ） — https://github.com/Systems-Modeling/SysML-v2-Release

## 15. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-19 | 初版作成（HDBK-1009A の作業成果物 12＋22・メタモデル 10、SEBoK の基準 10・性質 10、図267・268、SysML v2 テキスト） |
