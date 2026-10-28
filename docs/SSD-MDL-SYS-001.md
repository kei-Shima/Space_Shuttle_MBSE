# モデル統合・検査定義書（SysML v2）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-MDL-SYS-001 |
| 表題 | モデル統合・検査定義書（SysML v2） |
| 版・日付 | Rev. BL／2026-10-28 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-BLK-SYS-001 |
| 関連図 | SSD-SYS-ARC-001 図92 モデルの構成 パッケージ図 |

## 1. 目的

これまでに作った SysML v2 テキスト 61件（構造・要求・割付・振る舞い・パラメトリック）を1つのモデルとして読み込む入口と、パッケージどうしをつなぐ統合の関係を示し、モデル全体の意味の検査（名前の解決・型）と、文書とモデルの一致の検査の方法と結果を示す。文書（docs）と図（draw.io）とモデル（model）の3つが同じ内容を指していることを、検査で確かめられるようにすることが目的である。

## 2. モデルの構成

SysML v2 テキストを読み込みの順（依存の順）に示す。依存の欄は、そのファイルが参照するほかのファイル、定義の欄は定義（… def）の数、誤り・警告の欄は OMG SysML v2 Pilot Implementation 0.62.0（2026-08 リリース、標準ライブラリ付き）で全部を順に読み込んだときの指摘の数である。

| 順 | ファイル | 内容 | 依存 | 行数 | 定義 | 誤り | 警告 |
|---|---|---|---|---|---|---|---|
| 1 | SysML/SSD-BEH-ORB-001.sysml | 状態遷移（ミッションフェーズ・飛行継続判断） | — | 124 | 29 | 0 | 0 |
| 2 | SysML/SSD-PAR-ORB-001.sysml | パラメトリック（消耗品・電力・排熱） | — | 277 | 19 | 0 | 0 |
| 3 | SysML/SSD-BEH-ORB-002.sysml | 故障処置の活動 | — | 104 | 3 | 0 | 0 |
| 4 | SysML/SSD-BEH-ORB-003.sysml | シーケンス（軌道離脱〜着陸・上昇・指令とテレメトリ） | — | 683 | 193 | 0 | 0 |
| 5 | SysML/SSD-BEH-ORB-004.sysml | 運用・非常時の活動 | — | 93 | 3 | 0 | 0 |
| 6 | SysML/SSD-BLK-SYS-001.sysml | 構造（ブロック・ポート・インタフェース） | — | 3023 | 252 | 0 | 0 |
| 7 | SysML/SSD-RQM-SYS-001.sysml | 要求（導出・充足・検証方法） | SSD-BLK-SYS-001 | 2653 | 2 | 0 | 0 |
| 8 | SysML/SSD-ALC-SYS-001.sysml | 割付（機能・機器・区画・振る舞い） | SSD-BEH-ORB-002・SSD-BEH-ORB-003・SSD-BEH-ORB-004・SSD-BLK-SYS-001 | 5575 | 140 | 0 | 0 |
| 9 | SysML/SSD-IBD-ORB-001.sysml | 内部ブロック図（機器の接続・流れる物・量と単位） | SSD-BLK-SYS-001・SSD-ALC-SYS-001 | 5479 | 516 | 0 | 0 |
| 10 | SysML/SSD-UC-ORB-001.sysml | 運用のユースケース・シナリオ | SSD-BEH-ORB-001・SSD-BEH-ORB-002・SSD-BEH-ORB-003・SSD-BEH-ORB-004・SSD-BLK-SYS-001 | 331 | 59 | 0 | 0 |
| 11 | SysML/SSD-BEH-ORB-005.sysml | 系の状態遷移 | SSD-BLK-SYS-001 | 321 | 75 | 0 | 0 |
| 12 | SysML/SSD-BEH-ORB-006.sysml | 系の状態遷移その2（OMS・RCS・MPS・C&T・与圧系・ODS） | SSD-BLK-SYS-001・SSD-BEH-ORB-005 | 437 | 98 | 0 | 0 |
| 13 | SysML/SSD-BEH-ORB-007.sysml | ECLSS の状態遷移と活動（ARS・FDS・給水廃水・WCS） | SSD-BLK-SYS-001・SSD-BEH-ORB-005 | 364 | 69 | 0 | 0 |
| 14 | SysML/SSD-BEH-ORB-008.sysml | 残りの系の内部ブロックと振る舞い（MECH・C/W・PLS・STR・CREW） | SSD-BLK-SYS-001・SSD-ALC-SYS-001・SSD-BEH-ORB-005 | 2087 | 299 | 0 | 0 |
| 15 | SysML/SSD-EMU-EVA-001.sysml | EMU の構造・内部ブロック・状態 | SSD-BLK-SYS-001・SSD-ALC-SYS-001・SSD-BEH-ORB-005 | 595 | 91 | 0 | 0 |
| 16 | SysML/SSD-GNC-ORB-001.sysml | GN&C の内部ブロック・モード・冗長管理 | SSD-BLK-SYS-001・SSD-ALC-SYS-001・SSD-BEH-ORB-005 | 1101 | 174 | 0 | 0 |
| 17 | SysML/SSD-ETS-SYS-001.sysml | ET・SRB・TPS の内部ブロック・状態 | SSD-BLK-SYS-001・SSD-ALC-SYS-001・SSD-BEH-ORB-005 | 1047 | 149 | 0 | 0 |
| 18 | SysML/SSD-ANA-ORB-001.sysml | 解析（トレード・質量・Δv・故障の木） | — | 112 | 11 | 0 | 0 |
| 19 | SysML/SSD-VAR-ORB-001.sysml | 構成の違い（機体・ミッションキット） | SSD-BLK-SYS-001 | 197 | 24 | 0 | 0 |
| 20 | SysML/SSD-IND-ORB-001.sysml | 個体・時間（機体・飛行の個体、時間切片、実績） | SSD-BLK-SYS-001・SSD-VAR-ORB-001 | 179 | 8 | 0 | 0 |
| 21 | SysML/SSD-RQF-SYS-001.sysml | 要求の形式化（属性・制約・値による判定） | SSD-PAR-ORB-001・SSD-RQM-SYS-001・SSD-ANA-ORB-001・SSD-IND-ORB-001 | 1649 | 186 | 0 | 0 |
| 22 | SysML/SSD-FLT-ORB-001.sysml | 飛行構成・飛行試験（構成の解決・検証の証拠） | SSD-RQM-SYS-001・SSD-VAR-ORB-001・SSD-IND-ORB-001 | 308 | 10 | 0 | 0 |
| 23 | SysML/SSD-HSI-SYS-001.sysml | 人間系の基準の照合（NASA-STD-3001 による後付け評価） | SSD-RQM-SYS-001 | 2485 | 548 | 0 | 0 |
| 24 | SysML/SSD-EXP-ORB-001.sysml | 乗員の環境曝露（パラメトリック・プロファイル） | SSD-HSI-SYS-001 | 228 | 19 | 0 | 0 |
| 25 | SysML/SSD-ATM-ORB-001.sysml | キャビン大気の動的モデル（CO2・圧力と漏れ・熱と湿度） | SSD-HSI-SYS-001 | 165 | 29 | 0 | 0 |
| 26 | SysML/SSD-EPB-EVA-001.sysml | EMU の消耗品と前呼吸（持続時間・R 値） | SSD-HSI-SYS-001 | 153 | 25 | 0 | 0 |
| 27 | SysML/SSD-HRS-ORB-001.sysml | 居住の資源と収支（食料・衛生・就寝・廃棄物・収納） | SSD-HSI-SYS-001 | 117 | 4 | 0 | 0 |
| 28 | SysML/SSD-MED-ORB-001.sysml | 医療の構造と処置（SOMS・処置の流れ・事象） | SSD-BLK-SYS-001・SSD-HSI-SYS-001 | 269 | 35 | 0 | 0 |
| 29 | SysML/SSD-TSK-ORB-001.sysml | 乗員の作業分析・機能の分担 | — | 198 | 43 | 0 | 0 |
| 30 | SysML/SSD-PRF-ORB-001.sysml | 消耗品・電力プロファイル（時間軸の残量・設計と実績） | SSD-PAR-ORB-001・SSD-IND-ORB-001 | 78 | 4 | 0 | 0 |
| 31 | SysML/SSD-TRJ-ORB-001.sysml | 上昇・再突入の時間変化モデル | — | 186 | 29 | 0 | 0 |
| 32 | SysML/SSD-TPM-SYS-001.sysml | 飛行実績の測定指標（MOE・MOP・TPM） | — | 49 | 6 | 0 | 0 |
| 33 | SysML/SSD-GND-ORB-001.sysml | 地上処理・ターンアラウンド（活動・状態） | SSD-BLK-SYS-001・SSD-BEH-ORB-005 | 98 | 19 | 0 | 0 |
| 34 | SysML/SSD-LAV-ORB-001.sysml | 打上げ可用性（スクラブ・延期の記録） | — | 139 | 2 | 0 | 0 |
| 35 | SysML/SSD-MTY-ORB-001.sysml | ミッション類型と運用概念 | — | 159 | 4 | 0 | 0 |
| 36 | SysML/SSD-CFG-ORB-001.sysml | 構成の変遷（初飛行・改修の記録） | — | 298 | 2 | 0 | 0 |
| 37 | SysML/SSD-VER-SYS-001.sysml | 検証ケース・検証の結果 | SSD-BLK-SYS-001・SSD-RQM-SYS-001 | 2343 | 212 | 0 | 0 |
| 38 | SysML/SSD-RQL-ECL-001.sysml | ECLSS 下位要求（L3） | SSD-BLK-SYS-001・SSD-RQM-SYS-001 | 2488 | 105 | 0 | 0 |
| 39 | SysML/SSD-IRQ-SYS-001.sysml | インタフェース要求（上位の IF）と導出・充足・検証 | SSD-BLK-SYS-001・SSD-RQM-SYS-001 | 1571 | 59 | 0 | 0 |
| 40 | SysML/SSD-RQL-SYS-001.sysml | 下位要求（L3：ECLSS 以外の17系）と導出・充足・検証 | SSD-BLK-SYS-001・SSD-RQM-SYS-001 | 10427 | 457 | 0 | 0 |
| 41 | SysML/SSD-IRQ-ECL-001.sysml | インタフェース要求（下位の IF）と導出・充足・検証（ECLSS） | SSD-BLK-SYS-001・SSD-RQM-SYS-001・SSD-RQL-ECL-001・SSD-IRQ-SYS-001・SSD-RQL-SYS-001 | 6166 | 289 | 0 | 0 |
| 42 | SysML/SSD-IRQ-LOW-001.sysml | インタフェース要求（下位の IF）と導出・充足・検証（ECLSS 以外） | SSD-BLK-SYS-001・SSD-RQM-SYS-001・SSD-RQL-ECL-001・SSD-IRQ-SYS-001・SSD-RQL-SYS-001 | 5356 | 230 | 0 | 0 |
| 43 | SysML/SSD-TRC-SYS-001.sysml | トレース網羅・影響分析（網羅の指標・切れ目・影響のビュー） | SSD-BEH-ORB-002・SSD-BLK-SYS-001・SSD-RQM-SYS-001・SSD-ALC-SYS-001・SSD-IBD-ORB-001・SSD-BEH-ORB-005・SSD-BEH-ORB-006・SSD-BEH-ORB-007・SSD-GNC-ORB-001・SSD-VER-SYS-001・SSD-RQL-ECL-001・SSD-IRQ-SYS-001・SSD-RQL-SYS-001・SSD-IRQ-ECL-001・SSD-IRQ-LOW-001 | 1777 | 7 | 0 | 0 |
| 44 | SysML/SSD-FDIR-ORB-001.sysml | 故障検知・処置（C/W の警報・監視・処置・状態遷移） | SSD-BEH-ORB-002・SSD-BEH-ORB-004・SSD-BLK-SYS-001・SSD-BEH-ORB-005・SSD-BEH-ORB-006・SSD-BEH-ORB-007 | 349 | 46 | 0 | 0 |
| 45 | SysML/SSD-HAZ-ORB-001.sysml | ハザード解析（ハザード・原因・管理策・リスク） | SSD-BEH-ORB-002・SSD-BEH-ORB-004・SSD-BLK-SYS-001・SSD-RQM-SYS-001・SSD-FDIR-ORB-001 | 797 | 69 | 0 | 0 |
| 46 | SysML/SSD-FMM-ORB-001.sysml | 故障モード（故障モード・原因・検知・管理策の連鎖） | SSD-BLK-SYS-001・SSD-FDIR-ORB-001・SSD-HAZ-ORB-001 | 4206 | 2 | 0 | 0 |
| 47 | SysML/SSD-FMX-ECL-001.sysml | ECLSS の故障モード（対応づけ・機能の故障モード・故障の木） | SSD-BLK-SYS-001・SSD-FDIR-ORB-001・SSD-HAZ-ORB-001・SSD-FMM-ORB-001 | 398 | 3 | 0 | 0 |
| 48 | SysML/SSD-ACC-SYS-001.sysml | 事故の教訓（51-L・STS-107） | SSD-BLK-SYS-001・SSD-HAZ-ORB-001・SSD-FMM-ORB-001 | 259 | 7 | 0 | 0 |
| 49 | SysML/SSD-FMX-ORB-001.sysml | オービタの系の機能の故障モード（ECLSS 以外） | SSD-BLK-SYS-001・SSD-FDIR-ORB-001・SSD-HAZ-ORB-001・SSD-FMM-ORB-001 | 548 | 1 | 0 | 0 |
| 50 | SysML/SSD-IFA-ORB-001.sysml | 飛行中異常（番号つきの記録・故障モードへのつなぎ） | SSD-FMM-ORB-001・SSD-FMX-ECL-001・SSD-FMX-ORB-001 | 483 | 3 | 0 | 0 |
| 51 | SysML/SSD-PLB-ORB-001.sysml | ペイロード搭載・着陸の制約（貨物の重量・重心・荷重） | SSD-ANA-ORB-001 | 49 | 4 | 0 | 0 |
| 52 | SysML/SSD-PRA-ORB-001.sysml | 確率論的リスク評価（PRA）の値とハザードの比較 | SSD-HAZ-ORB-001 | 37 | 4 | 0 | 0 |
| 53 | SysML/SSD-HEA-ORB-001.sysml | ヒューマンエラー解析 | SSD-HAZ-ORB-001 | 151 | 15 | 0 | 0 |
| 54 | SysML/SSD-CIF-ORB-001.sysml | 乗員インタフェース（警報の階層・表示と操作） | SSD-FDIR-ORB-001 | 157 | 58 | 0 | 0 |
| 55 | SysML/SSD-HAB-ORB-001.sysml | 居住性と医療（機能・乗員の1日・ユースケース） | SSD-BLK-SYS-001・SSD-HSI-SYS-001 | 250 | 37 | 0 | 0 |
| 56 | SysML/SSD-EGR-ORB-001.sysml | 容積・動線・緊急脱出 | SSD-RQM-SYS-001 | 58 | 14 | 0 | 0 |
| 57 | SysML/SSD-HVM-SYS-001.sysml | 人間系の評価方法とビューポイント | SSD-HSI-SYS-001・SSD-EXP-ORB-001・SSD-TSK-ORB-001・SSD-HEA-ORB-001・SSD-CIF-ORB-001・SSD-HAB-ORB-001・SSD-EGR-ORB-001・SSD-VPT-SYS-001 | 90 | 18 | 0 | 0 |
| 58 | SysML/SSD-MBS-SYS-001.sysml | MBSE 実践の対応（HDBK-1009A・SEBoK） | — | 80 | 2 | 0 | 0 |
| 59 | SysML/SSD-GRD-SYS-001.sysml | MBSE グリッドと手法の対応 | — | 68 | 3 | 0 | 0 |
| 60 | SysML/SSD-PLN-SYS-001.sysml | モデル計画 | — | 68 | 4 | 0 | 0 |
| 61 | SysML/SSD-VPT-SYS-001.sysml | ビューポイント・表記の規約 | SSD-BEH-ORB-001・SSD-PAR-ORB-001・SSD-BEH-ORB-002・SSD-BEH-ORB-003・SSD-BEH-ORB-004・SSD-BLK-SYS-001・SSD-RQM-SYS-001・SSD-ALC-SYS-001・SSD-IBD-ORB-001・SSD-UC-ORB-001・SSD-BEH-ORB-005・SSD-BEH-ORB-006・SSD-BEH-ORB-007・SSD-BEH-ORB-008・SSD-EMU-EVA-001・SSD-GNC-ORB-001・SSD-ETS-SYS-001・SSD-ANA-ORB-001・SSD-VAR-ORB-001・SSD-IND-ORB-001・SSD-RQF-SYS-001・SSD-FLT-ORB-001・SSD-HSI-SYS-001・SSD-EXP-ORB-001・SSD-ATM-ORB-001・SSD-EPB-EVA-001・SSD-HRS-ORB-001・SSD-MED-ORB-001・SSD-TSK-ORB-001・SSD-PRF-ORB-001・SSD-TRJ-ORB-001・SSD-TPM-SYS-001・SSD-GND-ORB-001・SSD-LAV-ORB-001・SSD-MTY-ORB-001・SSD-CFG-ORB-001・SSD-VER-SYS-001・SSD-RQL-ECL-001・SSD-IRQ-SYS-001・SSD-RQL-SYS-001・SSD-IRQ-ECL-001・SSD-IRQ-LOW-001・SSD-TRC-SYS-001・SSD-FDIR-ORB-001・SSD-HAZ-ORB-001・SSD-FMM-ORB-001・SSD-FMX-ECL-001・SSD-ACC-SYS-001・SSD-FMX-ORB-001・SSD-IFA-ORB-001・SSD-PLB-ORB-001・SSD-PRA-ORB-001・SSD-HEA-ORB-001・SSD-CIF-ORB-001・SSD-HAB-ORB-001・SSD-EGR-ORB-001・SSD-HVM-SYS-001・SSD-MBS-SYS-001・SSD-GRD-SYS-001・SSD-PLN-SYS-001 | 3038 | 60 | 0 | 0 |
| 62 | SysML/SSD-MDL-SYS-001.sysml | 全体の入口と統合の関係（本書） | 全パッケージ | 229 | 1 | 0 | 0 |

## 3. 統合の関係

入口のパッケージに置いた、パッケージどうしをつなぐ関係を示す。構造と要求の充足（SSD-RQM-SYS-001）、構造と割付（SSD-ALC-SYS-001）は、それぞれのファイルの中にある。

| 要素 | 内容 | 件数 |
|---|---|---|
| IntegratedOrbiter | SSD_BLK_SYS_001::ORB と SSD_BEH_ORB_001::Orbiter の両方を特化（part def） | 1 |
| integratedContext | 構造モデルの context の orb を IntegratedOrbiter に置き換えた部品 | 1 |
| RequirementRefinement | パラメトリックの要求定義 → 要求モデルの同じ ID の要求（#refinement） | 11 |
| MessageAllocation | シーケンス図のメッセージ → それを運ぶ構造モデルの IF（allocate） | 122 |

## 4. 要求の詳細化

パラメトリック定義書（SSD-PAR-ORB-001）でマージン≧0 の制約として書いた要求定義と、要求モデルの要求の対応を示す。

| 要求 | パラメトリックの要求定義 | 要求モデルの要求 |
|---|---|---|
| REQ-ECLSS-06 | SSD_PAR_ORB_001::REQ_ECLSS_06 | SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_06 |
| REQ-SYS-05 | SSD_PAR_ORB_001::REQ_SYS_05 | SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_05 |
| REQ-SYS-06 | SSD_PAR_ORB_001::REQ_SYS_06 | SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_06 |
| REQ-SYS-13 | SSD_PAR_ORB_001::REQ_SYS_13 | SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_13 |
| REQ-ECLSS-10 | SSD_PAR_ORB_001::REQ_ECLSS_10 | SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_10 |
| REQ-ECLSS-01 | SSD_PAR_ORB_001::REQ_ECLSS_01 | SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_01 |
| REQ-EPS-19 | SSD_PAR_ORB_001::REQ_EPS_19 | SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_19 |
| REQ-EPS-18 | SSD_PAR_ORB_001::REQ_EPS_18 | SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_18 |
| REQ-EPS-12 | SSD_PAR_ORB_001::REQ_EPS_12 | SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_12 |
| REQ-EPS-11 | SSD_PAR_ORB_001::REQ_EPS_11 | SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_11 |
| REQ-ECLSS-08 | SSD_PAR_ORB_001::REQ_ECLSS_08 | SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_08 |

## 5. メッセージの割付

シーケンス図のメッセージのうち IF の ID を持つもの（122件、1つのメッセージに IF が2つあるものを含む）を、構造モデルの IF に割り付けた。

| シーケンス図 | メッセージ | 内容 | IF | IF（SysML の道筋） |
|---|---|---|---|---|
| 図83 軌道離脱〜着陸 シーケンス図 | DO-04 | ペイロードベイドアを閉じる（MDM→MCA） | IF-ORB-40 | context.sts.orb.IF_ORB_40 |
| 図83 軌道離脱〜着陸 シーケンス図 | DO-06 | 状態ベクトルと離脱の目標をアップリンク | IF-ORB-16 | context.IF_ORB_16 |
| 図83 軌道離脱〜着陸 シーケンス図 | DO-06 | 状態ベクトルと離脱の目標をアップリンク | IF-ORB-01 | context.sts.orb.IF_ORB_01 |
| 図83 軌道離脱〜着陸 シーケンス図 | DO-09 | ベント扉を閉じる | IF-ORB-40 | context.sts.orb.IF_ORB_40 |
| 図83 軌道離脱〜着陸 シーケンス図 | DO-12 | OMS を点火（離脱噴射、通常2〜3分） | IF-ORB-04 | context.sts.orb.IF_ORB_04 |
| 図83 軌道離脱〜着陸 シーケンス図 | DO-15 | 油圧の供給（空力舵面・主エンジンのノズルの格納） | IF-ORB-08 | context.sts.orb.IF_ORB_08 |
| 図83 軌道離脱〜着陸 シーケンス図 | DO-21 | 前部・後部・中胴のベント扉を開く | IF-ORB-40 | context.sts.orb.IF_ORB_40 |
| 図84 上昇 シーケンス図 | AS-04 | ET の LO2・LH2 タンクを地上のヘリウムで加圧 | IF-ORB-29 | context.IF_ORB_29 |
| 図84 上昇 シーケンス図 | AS-05 | 地上電源の供給を終える（以後は燃料電池が全電力） | IF-ORB-31 | context.IF_ORB_31 |
| 図84 上昇 シーケンス図 | AS-06 | 機上の打上げシーケンス（RSLS）を有効にする | IF-ORB-17 | context.IF_ORB_17 |
| 図84 上昇 シーケンス図 | AS-07 | SSME の始動を指令 | IF-ORB-06 | context.sts.orb.IF_ORB_06 |
| 図84 上昇 シーケンス図 | AS-08 | 液体水素の供給（MECO まで） | IF-ORB-15 | context.sts.IF_ORB_15 |
| 図84 上昇 シーケンス図 | AS-09 | SRB の点火を指令（MEC 経由） | IF-ORB-26 | context.sts.IF_ORB_26 |
| 図84 上昇 シーケンス図 | AS-10 | 推力を 72% に絞る（最大動圧の領域） | IF-ORB-06 | context.sts.orb.IF_ORB_06 |
| 図84 上昇 シーケンス図 | AS-11 | SRB の分離を指令 | IF-ORB-26 | context.sts.IF_ORB_26 |
| 図84 上昇 シーケンス図 | AS-12 | 加速度を 3g 以下に保つよう絞る | IF-ORB-06 | context.sts.orb.IF_ORB_06 |
| 図84 上昇 シーケンス図 | AS-13 | MECO を指令 | IF-ORB-06 | context.sts.orb.IF_ORB_06 |
| 図84 上昇 シーケンス図 | AS-14 | ET の分離を指令 | IF-ORB-25 | context.sts.IF_ORB_25 |
| 図84 上昇 シーケンス図 | AS-15 | MPS 推進薬の投棄を始める | IF-ORB-06 | context.sts.orb.IF_ORB_06 |
| 図84 上昇 シーケンス図 | AS-17 | OMS-2 燃焼（約2分） | IF-ORB-04 | context.sts.orb.IF_ORB_04 |
| 図85 指令・テレメトリ経路 シーケンス図 | CM-02 | S帯 PM のフォワードリンク（72 kbps：音声2チャネルと指令 8 kbps） | IF-CT-01 | context.IF_CT_01 |
| 図85 指令・テレメトリ経路 シーケンス図 | CM-03 | NSP が指令を解読し FF MDM を経て GPC へ | IF-CT-05 | context.sts.orb.IF_CT_05 |
| 図85 指令・テレメトリ経路 シーケンス図 | CM-04 | 指令を MDM を経て各系へ（例：MCA のモータの入切） | IF-ORB-40 | context.sts.orb.IF_ORB_40 |
| 図85 指令・テレメトリ経路 シーケンス図 | CM-05 | 通信系の組替えの指令（PF MDM→GCIL） | IF-CT-07 | context.sts.orb.IF_CT_07 |
| 図85 指令・テレメトリ経路 シーケンス図 | CM-08 | GPC のダウンリストを PCMMU へ | IF-CT-06 | context.sts.orb.IF_CT_06 |
| 図85 指令・テレメトリ経路 シーケンス図 | CM-09 | 形式化したテレメトリを NSP へ | IF-CT-14 | context.sts.orb.ct.IF_CT_14 |
| 図85 指令・テレメトリ経路 シーケンス図 | CM-11 | リターンリンク（192 kbps：音声2チャネルとテレメトリ 128 kbps） | IF-CT-01 | context.IF_CT_01 |
| 図238 ARS 空気系の運転と監視 シーケンス図 | QA-02 | 運用規則に従って選んだキャビンファンを起動・停止する指令を渡す。 | IF-CAC-10 | context.sts.orb.eclss.ars.cac.IF_CAC_10 |
| 図238 ARS 空気系の運転と監視 シーケンス図 | QA-04 | 運用規則に従って選んだベイファンを入切りする指令を渡す。打上げ時には各ベイの1台のファンが運転済みである。 | IF-AVB-08 | context.sts.orb.eclss.ars.avb.IF_AVB_08 |
| 図238 ARS 空気系の運転と監視 シーケンス図 | QA-06 | 運用規則と故障処置手順に従って選んだ IMU ファンを入切する指令を渡す。ON でファンが回り、OFF で止まる。 | IF-IMU-07 | context.sts.orb.eclss.ars.imu.IF_IMU_07 |
| 図238 ARS 空気系の運転と監視 シーケンス図 | QA-07 | IMU FAN 信号調整器が給電する回転数センサの出力と、ΔP センサの差圧を渡す。 | IF-IMU-05 | context.sts.orb.eclss.ars.imu.IF_IMU_05 |
| 図238 ARS 空気系の運転と監視 シーケンス図 | QA-08 | キャビンファン差圧を、主 C&W のハードウェアチャネル 74（AV BAY/CABIN AIR 灯）と SM の表示へ送る。 | IF-CAC-12 | context.sts.orb.IF_CAC_12 |
| 図238 ARS 空気系の運転と監視 シーケンス図 | QA-08 | キャビンファン差圧を、主 C&W のハードウェアチャネル 74（AV BAY/CABIN AIR 灯）と SM の表示へ送る。 | IF-ARS-25 | context.sts.orb.IF_ARS_25 |
| 図238 ARS 空気系の運転と監視 シーケンス図 | QA-09 | ファン下流の温度センサのデータを、AIR TEMP 計器と主 C&W のハードウェアチャネル 84・94・104 へ送る。ベイ温度は SM SYS SUMM 2 と SPEC 66 ENVIRONMENT にも出る。 | IF-AVB-13 | context.sts.orb.IF_AVB_13 |
| 図238 ARS 空気系の運転と監視 シーケンス図 | QA-09 | ファン下流の温度センサのデータを、AIR TEMP 計器と主 C&W のハードウェアチャネル 84・94・104 へ送る。ベイ温度は SM SYS SUMM 2 と SPEC 66 ENVIRONMENT にも出る。 | IF-ARS-28 | context.sts.orb.IF_ARS_28 |
| 図238 ARS 空気系の運転と監視 シーケンス図 | QA-10 | ファン差圧を SM SYS SUMM 2（DISP 79）に表示し、SPEC 66 の限界外で SM 警報を出す。 | IF-AVB-14 | context.sts.orb.IF_AVB_14 |
| 図238 ARS 空気系の運転と監視 シーケンス図 | QA-11 | IMU ファンの状態（運転中の「*」・回転数低下の「↓」）を、SM OPS 2 の PASS ENVIRONMENT（DISP 66）と SM SYS SUMM 1（DISP 78）に表示し、限界外で S66 IMU FAN DP・S66 IMU FN SPD の SM アラートを出す。IMU ファン差圧は BFS の SM SYS SUMM 1 にも出る。 | IF-IMU-10 | context.sts.orb.IF_IMU_10 |
| 図238 ARS 空気系の運転と監視 シーケンス図 | QA-11 | IMU ファンの状態（運転中の「*」・回転数低下の「↓」）を、SM OPS 2 の PASS ENVIRONMENT（DISP 66）と SM SYS SUMM 1（DISP 78）に表示し、限界外で S66 IMU FAN DP・S66 IMU FN SPD の SM アラートを出す。IMU ファン差圧は BFS の SM SYS SUMM 1 にも出る。 | IF-ARS-29 | context.sts.orb.IF_ARS_29 |
| 図238 ARS 空気系の運転と監視 シーケンス図 | QA-13 | 差圧の表示と警報を、キャビンファンの喪失判定（A17-101）と切替・点検の判断に使うために渡す。 | IF-CAC-11 | context.sts.orb.eclss.ars.cac.IF_CAC_11 |
| 図238 ARS 空気系の運転と監視 シーケンス図 | QA-14 | ベイ温度とファン差圧の表示・警報を、ファンの喪失判定（A17-103）と切替・処置の判断に使うために渡す。 | IF-AVB-12 | context.sts.orb.eclss.ars.avb.IF_AVB_12 |
| 図238 ARS 空気系の運転と監視 シーケンス図 | QA-15 | ΔP と回転数の表示・SM アラートを、IMU ファンの喪失判定（A17-104）とファンの切替の判断に使うために渡す。ΔP が失われたときは回転数センサの「↓」で故障を監視する。 | IF-IMU-12 | context.sts.orb.eclss.ars.imu.IF_IMU_12 |
| 図239 RCRS と水冷却ループの運転と監視 シーケンス図 | QB-02 | 運用規則と故障処置に従って制御器を起動・停止し、故障時は他方の制御器に切り替える | IF-RCRS-14 | context.sts.orb.eclss.ars.rcrs.IF_RCRS_14 |
| 図239 RCRS と水冷却ループの運転と監視 シーケンス図 | QB-03 | 作動中の制御器が真空サイクル弁のアクチュエータ A・B を回し、ベッドの空気ポペットと真空ポペットを開閉して吸着と再生を切り替える | IF-RCRS-05 | context.sts.orb.eclss.ars.rcrs.IF_RCRS_05 |
| 図239 RCRS と水冷却ループの運転と監視 シーケンス図 | QB-04 | 作動中の制御器が工程に応じて均圧弁を開閉し、ullage-save 圧縮機を動かす | IF-RCRS-06 | context.sts.orb.eclss.ars.rcrs.IF_RCRS_06 |
| 図239 RCRS と水冷却ループの運転と監視 シーケンス図 | QB-05 | ベッド圧力・ベッド差圧などの計測値を作動中の制御器に入力し、故障検知に使わせる | IF-RCRS-09 | context.sts.orb.eclss.ars.rcrs.IF_RCRS_09 |
| 図239 RCRS と水冷却ループの運転と監視 シーケンス図 | QB-06 | RCRS の計測値（FILTER ΔP、PPCO2、TEMP、BED A・B PRESS、ΔP、VAC PRESS）を SM に送り、SPEC 66 ENVIRONMENT の右下に表示させる | IF-RCRS-10 | context.sts.orb.IF_RCRS_10 |
| 図239 RCRS と水冷却ループの運転と監視 シーケンス図 | QB-06 | RCRS の計測値（FILTER ΔP、PPCO2、TEMP、BED A・B PRESS、ΔP、VAC PRESS）を SM に送り、SPEC 66 ENVIRONMENT の右下に表示させる | IF-ARS-26 | context.sts.orb.IF_ARS_26 |
| 図239 RCRS と水冷却ループの運転と監視 シーケンス図 | QB-07 | 制御器の状態を SPEC 66 に示し、故障で停止すると故障ディスクリートのテレメトリを6秒間「1」にして、SM メッセージ S66 CO2 RL SYS を出させる | IF-RCRS-11 | context.sts.orb.IF_RCRS_11 |
| 図239 RCRS と水冷却ループの運転と監視 シーケンス図 | QB-07 | 制御器の状態を SPEC 66 に示し、故障で停止すると故障ディスクリートのテレメトリを6秒間「1」にして、SM メッセージ S66 CO2 RL SYS を出させる | IF-ARS-26 | context.sts.orb.IF_ARS_26 |
| 図239 RCRS と水冷却ループの運転と監視 シーケンス図 | QB-09 | PPCO2 と RCRS の表示・SM メッセージを、RCRS の喪失判定と故障処置の判断に使わせる | IF-RCRS-15 | context.sts.orb.eclss.ars.rcrs.IF_RCRS_15 |
| 図239 RCRS と水冷却ループの運転と監視 シーケンス図 | QB-11 | H2O PUMP LOOP 1 の A/B 選択と GPC/OFF/ON スイッチで、運転するポンプを選び起動・停止する | IF-WCL-09 | context.sts.orb.eclss.ars.wcl.IF_WCL_09 |
| 図239 RCRS と水冷却ループの運転と監視 シーケンス図 | QB-12 | LOOP 1・2 BYPASS MODE スイッチで自動・手動を選び、手動では MAN INCR/DECR スイッチでバイパス弁の位置を調整する | IF-WCL-10 | context.sts.orb.eclss.ars.wcl.IF_WCL_10 |
| 図239 RCRS と水冷却ループの運転と監視 シーケンス図 | QB-13 | 自動モードでは、バイパス制御器がポンプ出口温度を設定値 63.0 ± 2.5°F と比べてバイパス弁を開閉する | IF-WCL-06 | context.sts.orb.eclss.ars.wcl.IF_WCL_06 |
| 図239 RCRS と水冷却ループの運転と監視 シーケンス図 | QB-14 | ポンプ出口圧・アキュムレータ量・インターチェンジャ流量・ポンプ出口温度などを、ARS 水ループの喪失判定とループ切替の判断に使わせる | IF-WCL-11 | context.sts.orb.eclss.ars.wcl.IF_WCL_11 |
| 図240 与圧・給水・廃棄物・エアロックの運転と表示 シーケンス図 | QC-01 | 選んだ系統のキャビンレギュレータ入口弁と O2 レギュレータ入口弁の開、O2/N2 制御弁の AUTO（軌道上）、または全閉と PCS 1 だけ開（上昇・再突入）を渡す | IF-PCS-16 | context.sts.orb.eclss.pcs.IF_PCS_16 |
| 図240 与圧・給水・廃棄物・エアロックの運転と表示 シーケンス図 | QC-02 | PPO2 が3.20 psia 未満なら就寝前の O2 ブリードオリフィスの取り付け、帰還日の取り外しと、直接 O2 弁の使い方を渡す | IF-PCS-17 | context.sts.orb.eclss.pcs.IF_PCS_17 |
| 図240 与圧・給水・廃棄物・エアロックの運転と表示 シーケンス図 | QC-03 | 14.7 psia に換算した等価の dP/dT を渡し、緊急中止・AOA の判定に使わせる | IF-PCS-15 | context.sts.orb.eclss.pcs.IF_PCS_15 |
| 図240 与圧・給水・廃棄物・エアロックの運転と表示 シーケンス図 | QC-08 | 選んだファンセパレータを指令する（MODE が AUTO なら小便器のホースを外すと起動、リミットスイッチ故障時はバイパススイッチで交流を供給） | IF-WCS-13 | context.sts.orb.eclss.wcs.IF_WCS_13 |
| 図240 与圧・給水・廃棄物・エアロックの運転と表示 シーケンス図 | QC-10 | MODE スイッチの位置を渡し、OFF の間は COMMODE CONTROL ハンドルを動かせないよう連動させる | IF-WCS-14 | context.sts.orb.eclss.wcs.IF_WCS_14 |
| 図240 与圧・給水・廃棄物・エアロックの運転と表示 シーケンス図 | QC-12 | 便器への真空ベント管を開閉する指令を渡す。真空ベント隔離弁は ML31C のスイッチで開閉する | IF-WCS-15 | context.sts.orb.eclss.wcs.IF_WCS_15 |
| 図240 与圧・給水・廃棄物・エアロックの運転と表示 シーケンス図 | QC-13 | 真空ベントノズル温度（VAC VT NOZ T）を SM の DISP 66 ENVIRONMENT へ送る。非常時は廃棄物収集器の圧力が1 psia 未満で5分続けば便器を再開できる | IF-WCS-12 | context.sts.orb.IF_WCS_12 |
| 図240 与圧・給水・廃棄物・エアロックの運転と表示 シーケンス図 | QC-13 | 真空ベントノズル温度（VAC VT NOZ T）を SM の DISP 66 ENVIRONMENT へ送る。非常時は廃棄物収集器の圧力が1 psia 未満で5分続けば便器を再開できる | IF-ECL-37 | context.sts.orb.IF_ECL_37 |
| 図240 与圧・給水・廃棄物・エアロックの運転と表示 シーケンス図 | QC-14 | エアロックの雰囲気、ベスティビュール減圧弁、水配管、構造ヒータの計測値を SM OPS 2 の SPEC 177 EXTERNAL AIRLOCK へ、エアロック圧力を DISP 66 へも送る | IF-ALS-10 | context.sts.orb.IF_ALS_10 |
| 図240 与圧・給水・廃棄物・エアロックの運転と表示 シーケンス図 | QC-14 | エアロックの雰囲気、ベスティビュール減圧弁、水配管、構造ヒータの計測値を SM OPS 2 の SPEC 177 EXTERNAL AIRLOCK へ、エアロック圧力を DISP 66 へも送る | IF-ECL-38 | context.sts.orb.IF_ECL_38 |
| 図241 煙検知と消火 シーケンス図 | QD-01 | 煙感知器が警報条件を満たし、トリップ信号を出して、パネル L1 の該当する SMOKE DETECTION 灯を点灯させる。 | IF-FDS-02 | context.sts.orb.eclss.fds.IF_FDS_02 |
| 図241 煙検知と消火 シーケンス図 | QD-02 | 各感知器の濃度のアナログ出力を GPC へ送り、SM SYS SUMM 1 に表示させる（2.0 mg/m3 でバックアップ C&W が警報を出す）。 | IF-FDS-03 | context.sts.orb.IF_FDS_03 |
| 図241 煙検知と消火 シーケンス図 | QD-02 | 各感知器の濃度のアナログ出力を GPC へ送り、SM SYS SUMM 1 に表示させる（2.0 mg/m3 でバックアップ C&W が警報を出す）。 | IF-ECL-18 | context.sts.orb.IF_ECL_18 |
| 図241 煙検知と消火 シーケンス図 | QD-03 | 煙警報で C&W のサイレンを鳴らし、4つの MASTER ALARM 表示を点灯させる。 | IF-FDS-06 | context.sts.orb.IF_FDS_06 |
| 図241 煙検知と消火 シーケンス図 | QD-04 | SMOKE DETECTION 灯・サイレンと DPS 表示の濃度を渡し、乗員が火災の位置を特定して実際の火災かを確かめる。 | IF-FDS-07 | context.sts.orb.eclss.fds.IF_FDS_07 |
| 図241 煙検知と消火 シーケンス図 | QD-05 | SENSOR RESET で感知器の論理回路をリセットし、CIRCUIT TEST で感知器に 28 V を加えて灯と時間遅れを試験する。 | IF-FDS-05 | context.sts.orb.eclss.fds.IF_FDS_05 |
| 図241 煙検知と消火 シーケンス図 | QD-06 | ベイの火災を確認したら、そのベイの Halon ボトルを放出し、ベイファンを止める。 | IF-FDS-13 | context.sts.orb.eclss.fds.IF_FDS_13 |
| 図241 煙検知と消火 シーケンス図 | QD-07 | 乗員室の火災では、火元を特定して確かめたうえで、キャビンファンを止めヘルメットを着け、携帯の Halon ボトルを消火ポートへ放出する。 | IF-FDS-14 | context.sts.orb.eclss.fds.IF_FDS_14 |
| 図241 煙検知と消火 シーケンス図 | QD-08 | 煙検知系と遠隔消火系の各種パラメータをテレメトリへ送る（MCC は空ボトルは分かるが、放出の時刻は分からない）。 | IF-FDS-09 | context.sts.orb.IF_FDS_09 |
| 図242 キャビン温湿度の制御と監視 シーケンス図 | QE-02 | 選んだコントローラと温度を温度制御弁の制御へ渡す | IF-THC-14 | context.sts.orb.eclss.ars.thc.IF_THC_14 |
| 図242 キャビン温湿度の制御と監視 シーケンス図 | QE-04 | 湿度分離器 A・B の電源を個別に入切りする | IF-THC-15 | context.sts.orb.eclss.ars.thc.IF_THC_15 |
| 図242 キャビン温湿度の制御と監視 シーケンス図 | QE-05 | 有効なコントローラが給気ダクトと還流ダクトの温度を検知し、選ばれた温度に制御する | IF-THC-10 | context.sts.orb.eclss.ars.thc.IF_THC_10 |
| 図242 キャビン温湿度の制御と監視 シーケンス図 | QE-06 | 回転数センサの信号で、湿度分離器が正常に回っているかを検知する | IF-THC-09 | context.sts.orb.eclss.ars.thc.IF_THC_09 |
| 図242 キャビン温湿度の制御と監視 シーケンス図 | QE-07 | 湿度分離器 A・B の運転状態（HUMID SEP）とキャビン温度（CABIN T）を SM へ送り、SPEC 66 ENVIRONMENT に表示する | IF-THC-12 | context.sts.orb.IF_THC_12 |
| 図242 キャビン温湿度の制御と監視 シーケンス図 | QE-09 | 熱交換器出口温度・キャビン温度・分離器の運転状態の表示と警報を、キャビン大気制御の喪失判定（A17-102）と故障処置に使う | IF-THC-13 | context.sts.orb.eclss.ars.thc.IF_THC_13 |
| 図242 キャビン温湿度の制御と監視 シーケンス図 | QE-10 | コントローラで弁を制御できない場合は、MD44F で弁アームを4つの固定穴の一つにピン止めする | IF-THC-14 | context.sts.orb.eclss.ars.thc.IF_THC_14 |
| 図244 APU・油圧の運転と監視 シーケンス図 | YA-02 | スイッチの位置に従って各 APU の2個の燃料タンク隔離弁を通電して開く指令を渡す。CLOSE か電力喪失では両弁が閉じる。 | IF-APU-03 | context.sts.orb.apu.IF_APU_03 |
| 図244 APU・油圧の運転と監視 シーケンス図 | YA-04 | 各ボイラの窒素遮断弁を開閉する指令を渡す。遮断弁は2つの独立したソレノイドで主・副どちらの制御器からも操作できる。 | IF-APU-21 | context.sts.orb.apu.IF_APU_21 |
| 図244 APU・油圧の運転と監視 シーケンス図 | YA-05 | 制御器が有効で、窒素遮断弁が開、蒸気ベントのノズル温度が 130°F 超、作動油のバイパス弁が正しい位置のとき、R2 の APU/HYD READY TO START 表示へ準備完了の信号を渡す。 | IF-APU-21 | context.sts.orb.apu.IF_APU_21 |
| 図244 APU・油圧の運転と監視 シーケンス図 | YA-07 | 減圧弁を通電して主ポンプの吐出圧を 500〜1,000 psi に下げる指令を渡す。 | IF-APU-20 | context.sts.orb.apu.IF_APU_20 |
| 図244 APU・油圧の運転と監視 シーケンス図 | YA-08 | ガス発生器床の温度トランスデューサの信号を渡す。 | IF-APU-06 | context.sts.orb.apu.IF_APU_06 |
| 図244 APU・油圧の運転と監視 シーケンス図 | YA-09 | 比較器でガス発生器床ヒータを 360〜425°F に保つ制御を行う。 | IF-APU-06 | context.sts.orb.apu.IF_APU_06 |
| 図244 APU・油圧の運転と監視 シーケンス図 | YA-11 | APU の始動の指令と、自動停止の機能の有効（ENABLE）・禁止（INHIBIT）の指令を渡す。制御器は始動を開始し、ガス発生器と燃料ポンプのヒータの電力を自動で断つ。 | IF-APU-19 | context.sts.orb.apu.IF_APU_19 |
| 図244 APU・油圧の運転と監視 シーケンス図 | YA-12 | ギアボックス圧力が 5.2 psi 未満になると、潤滑油系の GN2 加圧弁を通電して開く指令を渡し、掃気と潤滑油ポンプの運転に必要な圧力を保つ。 | IF-APU-06 | context.sts.orb.apu.IF_APU_06 |
| 図244 APU・油圧の運転と監視 シーケンス図 | YA-14 | 減圧弁の通電を切る指令を渡し、主ポンプの吐出圧を 2,900〜3,100 psi に上げる。 | IF-APU-20 | context.sts.orb.apu.IF_APU_20 |
| 図244 APU・油圧の運転と監視 シーケンス図 | YA-15 | 各ボイラの GN2 容器と水タンクの冗長な圧力・温度センサの値を制御器を通して SM GPC へ渡す。GPC は水タンクの量を計算して専用の MEDS 表示へ送り、水量・窒素タンク圧力・調圧器圧力・窒素タンク温度は軌道上で SM APU/HYD（DISP 86）表示の右側に出る。 | IF-APU-14 | context.sts.orb.IF_APU_14 |
| 図244 APU・油圧の運転と監視 シーケンス図 | YA-17 | 燃料タンク隔離弁を閉じる指令を渡す。 | IF-APU-03 | context.sts.orb.apu.IF_APU_03 |
| 図245 DPS の運用管理と MPS の乗員操作 シーケンス図 | YB-01 | 搭載と地上の監視で、冗長セットの故障・分裂、GPC 故障、データ経路の故障を宣言する材料を渡す。 | IF-DPS-18 | context.sts.orb.dps.IF_DPS_18 |
| 図245 DPS の運用管理と MPS の乗員操作 シーケンス図 | YB-02 | 故障した GPC を、上昇・再突入では MODE スイッチで HALT にし、それ以外では電源を切り、軌道上では DPS を構成し直して回復を試みる。 | IF-DPS-18 | context.sts.orb.dps.IF_DPS_18 |
| 図245 DPS の運用管理と MPS の乗員操作 シーケンス図 | YB-03 | MECO 後の FC・ペイロード MDM の故障に対し、DPS UTILITY 表示の項目入力でポートモードによる回復を試みる。 | IF-DPS-19 | context.sts.orb.dps.IF_DPS_19 |
| 図245 DPS の運用管理と MPS の乗員操作 シーケンス図 | YB-04 | データ経路の故障の後に、MDM の電源を切って入れ直し、出力をリセットする。 | IF-DPS-19 | context.sts.orb.dps.IF_DPS_19 |
| 図245 DPS の運用管理と MPS の乗員操作 シーケンス図 | YB-05 | MTU と GPC の GMT の誤差が 100 ms を超えたら、15 ms の更新を行う。 | IF-DPS-20 | context.sts.orb.dps.IF_DPS_20 |
| 図245 DPS の運用管理と MPS の乗員操作 シーケンス図 | YB-06 | MTU の BITE ビット 4 が立って MCC が時刻差の増加を見た場合などに、MECO 後から HAC 進入までの間に発振器を手動で切り替える。 | IF-DPS-20 | context.sts.orb.dps.IF_DPS_20 |
| 図245 DPS の運用管理と MPS の乗員操作 シーケンス図 | YB-08 | エンジンを手動停止する指令を、主エンジン制御器へ渡す。 | IF-MPS-17 | context.sts.orb.mps.IF_MPS_17 |
| 図245 DPS の運用管理と MPS の乗員操作 シーケンス図 | YB-09 | 停止・停止後の段階やレッドライン超過、指令経路故障・ロックアップ・データ経路故障の状態を渡す。 | IF-MPS-17 | context.sts.orb.mps.IF_MPS_17 |
| 図245 DPS の運用管理と MPS の乗員操作 シーケンス図 | YB-12 | 各エンジン系統の遮断弁を個別に、相互接続弁の組を 1 個のスイッチで操作する指令を渡す。 | IF-MPS-18 | context.sts.orb.mps.IF_MPS_18 |
| 図245 DPS の運用管理と MPS の乗員操作 シーケンス図 | YB-14 | ダンプの手動開始と、ET 分離の遅れの間の自動ダンプの停止の指令を渡す。自動の真空不活性化が十分でないときは、手動の真空不活性化も行う。 | IF-MPS-19 | context.sts.orb.mps.IF_MPS_19 |
| 図245 DPS の運用管理と MPS の乗員操作 シーケンス図 | YB-16 | 遮断弁を閉じて下流の油圧漏れから守る指令を渡す。OPEN にすると弁が開く。 | IF-MPS-20 | context.sts.orb.mps.IF_MPS_20 |
| 図246 EVA の準備・減圧・再与圧・非常時の手順 シーケンス図 | YC-01 | キャビンを 10.2 psi にしてからの時間（12 時間・24 時間）に応じて、EMU 内の前呼吸を 1 時間 15 分・40 分とし、14.7 psi のままなら 4 時間とする基準を渡す。 | IF-EVA-01 | context.sts.orb.eva.IF_EVA_01 |
| 図246 EVA の準備・減圧・再与圧・非常時の手順 シーケンス図 | YC-03 | MCC の GO を確かめた後、DEPRESS/REPRESS のキューカードで減圧を始めるよう渡す。 | IF-EVA-02 | context.sts.orb.eva.IF_EVA_02 |
| 図246 EVA の準備・減圧・再与圧・非常時の手順 シーケンス図 | YC-04 | 減圧・再与圧は、エアロックの構成ごと（通常構成・トンネルアダプタ）の DEPRESS/REPRESS キューカードに従うよう渡す。漏れ点検の不合格時の手順は FAILED LEAK CHECK に載せる。 | IF-EVA-05 | context.sts.orb.eva.IF_EVA_05 |
| 図246 EVA の準備・減圧・再与圧・非常時の手順 シーケンス図 | YC-05 | 再与圧でエアロックの気密を確かめて O2 ACT を切った後に POST EVA へ移るよう渡す。再与圧で DCS の症状が消えた場合は、MCC に確かめるまで EMU を脱がない。 | IF-EVA-06 | context.sts.orb.eva.IF_EVA_06 |
| 図246 EVA の準備・減圧・再与圧・非常時の手順 シーケンス図 | YC-06 | カフチェックリストで DCS の区分を判断した結果を渡す。カフ 4 では ABORT EVA として患者をエアロックへ連れ戻して単独で再与圧し、DCS の処置の手順へ移る。この手順は、カフ 4 への進行を防ぐために EVA を終えた後の処置を定める。 | IF-EVA-13 | context.sts.orb.eva.IF_EVA_13 |
| 図246 EVA の準備・減圧・再与圧・非常時の手順 シーケンス図 | YC-07 | EMU の汚染が疑われた場合は、エアロックを 5 psia まで再与圧した状態で保ち、検知管による汚染試験を行ってから再与圧を続けるよう渡す。汚染の除去では真空で 15 分保持した後に、エアロックを 5 psi まで再与圧する（REPRESS の手順 1〜8）。 | IF-EVA-07 | context.sts.orb.eva.IF_EVA_07 |
| 図247 OMS の乗員操作と表示 シーケンス図 | YD-02 | ARM/PRESS で GN2 の圧力隔離弁を開く指令を渡す。制御弁1・2は、スイッチが ARM か ARM/PRESS で OMS ENG VLV スイッチが ON のときに計算機の指令で開く。 | IF-OMS-06 | context.sts.orb.oms.IF_OMS_06 |
| 図247 OMS の乗員操作と表示 シーケンス図 | YD-04 | ヘリウム圧力弁と蒸気隔離弁を開閉する指令を渡す。A か B のどちらかが OPEN なら両方の蒸気隔離弁が開き、両方が CLOSE なら両方が閉じ、GPC 位置では噴射シーケンスが自動で制御する。 | IF-OMS-07 | context.sts.orb.oms.IF_OMS_07 |
| 図247 OMS の乗員操作と表示 シーケンス図 | YD-06 | 燃料・酸化剤のクロスフィード弁の組を開閉する指令を渡す。GPC 位置のときは、A・B の弁の組がオービタの計算機の指令で自動的に開閉される。 | IF-OMS-08 | context.sts.orb.oms.IF_OMS_08 |
| 図247 OMS の乗員操作と表示 シーケンス図 | YD-07 | トータライザの全量と後室プローブの量を渡す。使用可能推進薬は計測量から残量を差し引いて定義される。 | IF-OMS-09 | context.sts.orb.oms.IF_OMS_09 |
| 図247 OMS の乗員操作と表示 シーケンス図 | YD-10 | 選んだヒータ系統へ切り替える指令を渡す。飛行中に少なくとも1回は冗長な系統（A か B）へ切り替える。 | IF-OMS-10 | context.sts.orb.oms.IF_OMS_10 |
| 図248 RCS の噴射器冗長管理と乗員操作 シーケンス図 | YE-02 | 運用規則と手順に従い、推進薬系の弁（タンク隔離・マニホールド隔離・クロスフィード）の操作を渡す。トークバックは対が開なら OP、閉なら CL、移動中や不一致ならバーバーポールを示す。 | IF-RCS-16 | context.sts.orb.rcs.IF_RCS_16 |
| 図248 RCS の噴射器冗長管理と乗員操作 シーケンス図 | YE-04 | He PRESS A・B のスイッチ操作として、ヘリウム隔離弁の開閉と加圧経路の切替を渡す。 | IF-RCS-17 | context.sts.orb.rcs.IF_RCS_17 |
| 図248 RCS の噴射器冗長管理と乗員操作 シーケンス図 | YE-06 | 運用規則に従い、ヒータ系（A・B）の選択と入切を渡す。ヒータ系は飛行中に少なくとも一度は冗長側へ切り替える。 | IF-RCS-19 | context.sts.orb.rcs.IF_RCS_19 |
| 図248 RCS の噴射器冗長管理と乗員操作 シーケンス図 | YE-07 | 燃焼室圧の離散信号を、実際に噴射したことの表示として渡す。RM は Pc 離散信号・CMD B・ドライバ出力離散信号を噴射器の故障の検知に使う。 | IF-RCS-04 | context.sts.orb.rcs.IF_RCS_04 |
| 図248 RCS の噴射器冗長管理と乗員操作 シーケンス図 | YE-08 | 各噴射器の燃料・酸化剤の噴射器温度を渡す。RM の限界を3周期続けて下回ると漏れ（fail-leak）と判定される。限界は主噴射器で酸化剤 30°F・燃料 20°F、OPS 2 のバーニアで 130°F である。 | IF-RCS-05 | context.sts.orb.rcs.IF_RCS_05 |
| 図248 RCS の噴射器冗長管理と乗員操作 シーケンス図 | YE-09 | マニホールド隔離弁の離散信号（弁の状態）を渡す。RM はマニホールドの状態を評価する。 | IF-RCS-06 | context.sts.orb.rcs.IF_RCS_06 |
| 図248 RCS の噴射器冗長管理と乗員操作 シーケンス図 | YE-10 | OPS 2・8 で fail-on が通報され、AUTO MANF CL が有効でスイッチが GPC 位置なら、GPC が該当するマニホールドを自動で閉じる指令を渡す。 | IF-RCS-06 | context.sts.orb.rcs.IF_RCS_06 |
| 図248 RCS の噴射器冗長管理と乗員操作 シーケンス図 | YE-12 | 噴射器の選択解除・再選択、マニホールド状態の上書き、ポッドの故障限度の変更、AUTO MANF CL の有効化を渡す。 | IF-RCS-18 | context.sts.orb.rcs.IF_RCS_18 |
| 図248 RCS の噴射器冗長管理と乗員操作 シーケンス図 | YE-13 | ポッドのヘリウム圧（燃料か酸化剤）が 500 psi 未満になったことを、F(L,R) He P の故障メッセージとして渡す。 | IF-RCS-14 | context.sts.orb.IF_RCS_14 |

## 6. 文書とモデルの一致

文書の表の ID と、モデルの要素の短い名前（ID）を突き合わせた結果を示す（154分類、すべて一致）。件数だけでなく ID の集合が同じことを確かめた。

| 分類 | 文書の側 | モデルの側 | 文書 | モデル | 結果 |
|---|---|---|---|---|---|
| 機能説明書 | SSD-FD-*（文書） | SSD-BLK-SYS-001 の part def | 208 | 208 | 一致 |
| インタフェース | 機能説明書の IF の表 | SSD-BLK-SYS-001 の interface・connection | 601 | 601 | 一致 |
| IF の上位・下位 | IF の表の上位・下位の組 | SSD-BLK-SYS-001 の #refinement | 290 | 290 | 一致 |
| 要求 | 要求書の要求の表 | SSD-RQM-SYS-001 の requirement | 212 | 212 | 一致 |
| 導出（L1→L2） | L2 の要求の上位の欄 | SSD-RQM-SYS-001 の #derivation | 241 | 241 | 一致 |
| 割付先（充足） | 要求書の割付先の欄 | SSD-RQM-SYS-001 の satisfy の割付先 | 1023 | 1023 | 一致 |
| 機能行 | 機能説明書の機能の表 | SSD-ALC-SYS-001 の action | 2075 | 2075 | 一致 |
| 機能の割付（論理） | 機能説明書の機能の表 | SSD-ALC-SYS-001 の LogicalAllocation | 2075 | 2075 | 一致 |
| 機器 | SSD-PHY-ORB-001 の機器配分表 | SSD-ALC-SYS-001 の part def | 138 | 138 | 一致 |
| 状態 | SSD-BEH-ORB-001 の状態の表 | SSD-BEH-ORB-001 の state | 25 | 25 | 一致 |
| 遷移 | SSD-BEH-ORB-001 の遷移の表 | SSD-BEH-ORB-001 の transition | 34 | 34 | 一致 |
| 活動図の行動 | SSD-BEH-ORB-002・004 の節点の表（行動） | action（行動） | 44 | 44 | 一致 |
| メッセージ | SSD-BEH-ORB-003 のメッセージの表 | SSD-BEH-ORB-003 の message | 182 | 182 | 一致 |
| パラメトリックの要求 | SSD-PAR-ORB-001 の要求との関係の表 | SSD-PAR-ORB-001 の requirement def | 11 | 11 | 一致 |
| ユースケース | SSD-UC-ORB-001 のユースケースの表 | SSD-UC-ORB-001 の use case def | 12 | 12 | 一致 |
| シナリオのメッセージ | SSD-UC-ORB-001 のメッセージの表 | SSD-UC-ORB-001 の message | 34 | 34 | 一致 |
| 系の状態 | SSD-BEH-ORB-005 の状態の表 | SSD-BEH-ORB-005 の state | 47 | 47 | 一致 |
| 系の遷移 | SSD-BEH-ORB-005 の遷移の表 | SSD-BEH-ORB-005 の transition | 64 | 64 | 一致 |
| 故障の木のゲート・事象 | SSD-ANA-ORB-001 の故障の木の表 | SSD-ANA-ORB-001 の Boolean の属性 | 38 | 38 | 一致 |
| 機体の違い | SSD-VAR-ORB-001 の機体の違いの表 | SSD-VAR-ORB-001 の VehicleFeature（特徴） | 18 | 18 | 一致 |
| ミッションキット | SSD-VAR-ORB-001 のミッションキットの表 | SSD-VAR-ORB-001 の MissionKit の part def | 13 | 13 | 一致 |
| 検証ケース | 要求書の要求の表 | SSD-VER-SYS-001 の verification def | 212 | 212 | 一致 |
| ビューポイント | SSD-VPT-SYS-001 のビューポイントの表 | SSD-VPT-SYS-001 の viewpoint def | 13 | 13 | 一致 |
| ビュー（図） | SSD-VPT-SYS-001 のビューの表 | SSD-VPT-SYS-001 の view | 281 | 281 | 一致 |
| 流れる物 | SSD-IBD-ORB-001 の流れる物の表 | SSD-IBD-ORB-001 の item def | 99 | 99 | 一致 |
| 内部ブロック図の部品 | SSD-IBD-ORB-001 の部品の表 | SSD-IBD-ORB-001 の機器の part def | 301 | 301 | 一致 |
| 内部ブロック図の流れ | SSD-IBD-ORB-001 の流れの表 | SSD-IBD-ORB-001 の flow | 542 | 542 | 一致 |
| 流れ → IF の詳細化 | SSD-IBD-ORB-001 の IF との対応の表 | SSD-IBD-ORB-001 の #refinement | 544 | 544 | 一致 |
| トレースの関係 | SSD-TRC-SYS-001 の関係の表 | SSD-TRC-SYS-001 の TraceRelation | 18 | 18 | 一致 |
| 切れ目の分類 | SSD-TRC-SYS-001 の切れ目の分類の表 | SSD-TRC-SYS-001 の TraceGapCategory | 13 | 13 | 一致 |
| 切れ目の要素 | SSD-TRC-SYS-001 の切れ目の一覧 | SSD-TRC-SYS-001 の TraceGap | 99 | 99 | 一致 |
| 影響分析 | SSD-TRC-SYS-001 の影響分析の結果の表 | SSD-TRC-SYS-001 の view（ImpactView） | 5 | 5 | 一致 |
| 警報 | SSD-FDIR-ORB-001 の警報の表（予備の灯を除く） | SSD-FDIR-ORB-001 の警報の item def | 40 | 40 | 一致 |
| 警報の監視 | SSD-FDIR-ORB-001 の警報の表の監視する機能ブロック | SSD-FDIR-ORB-001 の #Monitors | 56 | 56 | 一致 |
| 警報の処置の手順 | SSD-FDIR-ORB-001 の処置の表 | SSD-FDIR-ORB-001 の MalProcedure | 60 | 60 | 一致 |
| ハザード | SSD-HAZ-ORB-001 のハザードの表 | SSD-HAZ-ORB-001 の Hazard の occurrence def | 16 | 16 | 一致 |
| ハザードの原因 | SSD-HAZ-ORB-001 の原因の表 | SSD-HAZ-ORB-001 の #causation | 49 | 49 | 一致 |
| ハザードの管理策 | SSD-HAZ-ORB-001 の管理策の表 | SSD-HAZ-ORB-001 の requirement | 69 | 69 | 一致 |
| 飛行の個体 | SSD-IND-ORB-001 の飛行の個体の表 | SSD-IND-ORB-001 の individual occurrence def | 3 | 3 | 一致 |
| 時間切片 | SSD-IND-ORB-001 の時間切片の表 | SSD-IND-ORB-001 の timeslice | 22 | 22 | 一致 |
| 飛行の実績 | SSD-IND-ORB-001 の実績と設計値の表 | SSD-IND-ORB-001 の実績の属性 | 35 | 35 | 一致 |
| 形式化した要求 | SSD-RQF-SYS-001 の形式化した制約の表の要求 | SSD-RQF-SYS-001 の requirement def | 184 | 184 | 一致 |
| 形式化した制約 | SSD-RQF-SYS-001 の形式化した制約の表 | SSD-RQF-SYS-001 の制約の属性 | 383 | 383 | 一致 |
| 値による判定 | SSD-RQF-SYS-001 の値による判定の表 | SSD-RQF-SYS-001 の Evaluations の requirement | 22 | 22 | 一致 |
| 故障モード | SSD-FMM-ORB-001 の故障モードの表 | SSD-FMM-ORB-001 の #cause の occurrence | 909 | 909 | 一致 |
| 故障モードの原因 | SSD-FMM-ORB-001 の故障モードの表の原因 | SSD-FMM-ORB-001 の #causation | 1203 | 1203 | 一致 |
| 故障モードの検知 | SSD-FMM-ORB-001 の故障モードの表の警報 | SSD-FMM-ORB-001 の #DetectedBy | 1122 | 1122 | 一致 |
| 飛行の構成 | SSD-FLT-ORB-001 の飛行ごとの構成の表 | SSD-FLT-ORB-001 の構成の part def | 6 | 6 | 一致 |
| 飛行試験の結果 | SSD-FLT-ORB-001 の飛行試験の結果の表 | SSD-FLT-ORB-001 の FlightTestResult の occurrence | 98 | 98 | 一致 |
| 飛行試験の証拠 | SSD-FLT-ORB-001 の飛行試験の結果の表の要求 | SSD-FLT-ORB-001 の #EvidenceFor | 100 | 100 | 一致 |
| 消耗品の枯渇 | SSD-PRF-ORB-001 の標準ミッションの枯渇の日の表 | SSD-PRF-ORB-001 の設計の残量の時系列 | 4 | 4 | 一致 |
| 設計と実績の比較 | SSD-PRF-ORB-001 の設計と実績の比較の表 | SSD-PRF-ORB-001 の実績の時系列 | 6 | 6 | 一致 |
| 系の状態（その2） | SSD-BEH-ORB-006 の状態の表 | SSD-BEH-ORB-006 の state | 70 | 70 | 一致 |
| 系の遷移（その2） | SSD-BEH-ORB-006 の遷移の表 | SSD-BEH-ORB-006 の transition | 86 | 86 | 一致 |
| 人間系の基準の照合 | SSD-HSI-SYS-001 の照合表 | SSD-HSI-SYS-001 の requirement def | 545 | 545 | 一致 |
| 人間系の基準の評価 | SSD-HSI-SYS-001 の照合表のシャトルの対応（要求） | SSD-HSI-SYS-001 の #Evaluates | 159 | 159 | 一致 |
| 曝露の量 | SSD-EXP-ORB-001 の曝露の量の表 | SSD-EXP-ORB-001 の requirement def | 16 | 16 | 一致 |
| 曝露のプロファイル | SSD-EXP-ORB-001 のプロファイルの表 | SSD-EXP-ORB-001 の ExposureProfile | 4 | 4 | 一致 |
| 機能の分担 | SSD-TSK-ORB-001 の機能の分担の表 | SSD-TSK-ORB-001 の FunctionAllocation の action def | 25 | 25 | 一致 |
| 作業の段 | SSD-TSK-ORB-001 の作業の段の表 | SSD-TSK-ORB-001 の Tasks の action | 40 | 40 | 一致 |
| ヒューマンエラー | SSD-HEA-ORB-001 の誤りの表 | SSD-HEA-ORB-001 の HumanError の occurrence | 35 | 35 | 一致 |
| 誤りの因果 | SSD-HEA-ORB-001 の誤りの表の原因・ハザード | SSD-HEA-ORB-001 の #causation | 31 | 31 | 一致 |
| 表示・操作の盤 | SSD-CIF-ORB-001 の盤の表 | SSD-CIF-ORB-001 の ControlDisplayUnit の part def | 31 | 31 | 一致 |
| 警報の区分 | SSD-CIF-ORB-001 の警報の区分の表（SysML に警報のあるもの） | SSD-CIF-ORB-001 の #ClassifiedAs | 40 | 40 | 一致 |
| 居住・医療の機能 | SSD-HAB-ORB-001 の機能の表 | SSD-HAB-ORB-001 の Functions の action def | 15 | 15 | 一致 |
| 居住・医療のユースケース | SSD-HAB-ORB-001 のユースケースの表 | SSD-HAB-ORB-001 の use case def | 14 | 14 | 一致 |
| 移動の経路 | SSD-EGR-ORB-001 の経路の表 | SSD-EGR-ORB-001 の TranslationPath の connection | 12 | 12 | 一致 |
| 非常退避のモード | SSD-EGR-ORB-001 のモードの表 | SSD-EGR-ORB-001 の EgressModes の action def | 10 | 10 | 一致 |
| 人間系の評価方法 | SSD-HVM-SYS-001 の評価方法の表 | SSD-HVM-SYS-001 の Methods の action def | 14 | 14 | 一致 |
| 評価方法と 3001 の要求 | SSD-HVM-SYS-001 の評価方法の表の照合表の行 | SSD-HVM-SYS-001 の #AppliesTo | 51 | 51 | 一致 |
| 大気のパラメータ | SSD-ATM-ORB-001 のパラメータの表 | SSD-ATM-ORB-001 の CabinAtmosphere の属性 | 20 | 20 | 一致 |
| 大気のモデル（式） | SSD-ATM-ORB-001 のモデルの表 | SSD-ATM-ORB-001 の constraint def | 7 | 7 | 一致 |
| 大気のシナリオ | SSD-ATM-ORB-001 のシナリオの表 | SSD-ATM-ORB-001 の analysis def | 10 | 10 | 一致 |
| 大気の照合 | SSD-ATM-ORB-001 の照合の表 | SSD-ATM-ORB-001 の requirement def | 8 | 8 | 一致 |
| L3 の要求 | SSD-RQL-ECL-001 の要求の表 | SSD-RQL-ECL-001 の requirement | 105 | 105 | 一致 |
| 導出（L2→L3） | SSD-RQL-ECL-001 の上位の欄 | SSD-RQL-ECL-001 の #derivation | 116 | 116 | 一致 |
| L3 の検証ケース | SSD-RQL-ECL-001 の検証の表 | SSD-RQL-ECL-001 の verification def | 105 | 105 | 一致 |
| ECLSS の状態 | SSD-BEH-ORB-007 の状態の表 | SSD-BEH-ORB-007 の state | 43 | 43 | 一致 |
| ECLSS の遷移 | SSD-BEH-ORB-007 の遷移の表 | SSD-BEH-ORB-007 の transition | 58 | 58 | 一致 |
| ECLSS の活動の行動 | SSD-BEH-ORB-007 の節点の表 | SSD-BEH-ORB-007 の action | 22 | 22 | 一致 |
| ECLSS の機能の故障モード | SSD-FMX-ECL-001 の故障モードの表 | SSD-FMX-ECL-001 の FailureMode | 106 | 106 | 一致 |
| ワークシートの対応づけ直し | SSD-FMX-ECL-001 の対応の表 | SSD-FMX-ECL-001 の #Involves（Remap） | 38 | 38 | 一致 |
| EMU の機器 | SSD-EMU-EVA-001 の部品の表 | SSD-EMU-EVA-001 の part def（機器） | 19 | 19 | 一致 |
| EMU の流れ | SSD-EMU-EVA-001 の流れの表 | SSD-EMU-EVA-001 の flow | 35 | 35 | 一致 |
| EMU・エアロックの状態 | SSD-EMU-EVA-001 の状態の表 | SSD-EMU-EVA-001 の state | 25 | 25 | 一致 |
| EMU・エアロックの遷移 | SSD-EMU-EVA-001 の遷移の表 | SSD-EMU-EVA-001 の transition | 38 | 38 | 一致 |
| EMU の消耗品のパラメータ | SSD-EPB-EVA-001 のパラメータの表 | SSD-EPB-EVA-001 の EmuConsumables の属性 | 11 | 11 | 一致 |
| 前呼吸の手順 | SSD-EPB-EVA-001 の手順の表 | SSD-EPB-EVA-001 の analysis def | 7 | 7 | 一致 |
| EMU の照合 | SSD-EPB-EVA-001 の照合の表 | SSD-EPB-EVA-001 の requirement def | 9 | 9 | 一致 |
| 居住の資源の量 | SSD-HRS-ORB-001 の量の表 | SSD-HRS-ORB-001 の HabitabilityProvisions | 49 | 49 | 一致 |
| 収納の場所 | SSD-HRS-ORB-001 の収納の表 | SSD-HRS-ORB-001 の Stowage | 23 | 23 | 一致 |
| 居住の収支 | SSD-HRS-ORB-001 の収支の表 | SSD-HRS-ORB-001 の StandardMissionHabitability | 10 | 10 | 一致 |
| SOMS の構成 | SSD-MED-ORB-001 の構成の表 | SSD-MED-ORB-001 の part def（キット） | 23 | 23 | 一致 |
| 医療の活動の行動 | SSD-MED-ORB-001 の節点の表 | SSD-MED-ORB-001 の action | 24 | 24 | 一致 |
| 医療の事象 | SSD-MED-ORB-001 の事象の表 | SSD-MED-ORB-001 の Events の属性 | 30 | 30 | 一致 |
| GN&C の機器 | SSD-GNC-ORB-001 の部品の表 | SSD-GNC-ORB-001 の part def（機器） | 39 | 39 | 一致 |
| GN&C の流れ | SSD-GNC-ORB-001 の流れの表 | SSD-GNC-ORB-001 の flow | 87 | 87 | 一致 |
| GN&C の状態 | SSD-GNC-ORB-001 の状態の表 | SSD-GNC-ORB-001 の state | 61 | 61 | 一致 |
| GN&C の遷移 | SSD-GNC-ORB-001 の遷移の表 | SSD-GNC-ORB-001 の transition | 88 | 88 | 一致 |
| GN&C の冗長管理 | SSD-GNC-ORB-001 の冗長管理の表 | SSD-GNC-ORB-001 の RedundancyManagement | 20 | 20 | 一致 |
| GN&C の活動の行動 | SSD-GNC-ORB-001 の節点の表 | SSD-GNC-ORB-001 の action | 16 | 16 | 一致 |
| ET・SRB・TPS の機器 | SSD-ETS-SYS-001 の部品の表 | SSD-ETS-SYS-001 の part def（機器） | 62 | 62 | 一致 |
| ET・SRB・TPS の流れ | SSD-ETS-SYS-001 の流れの表 | SSD-ETS-SYS-001 の flow | 94 | 94 | 一致 |
| SRB・ET の状態 | SSD-ETS-SYS-001 の状態の表 | SSD-ETS-SYS-001 の state | 30 | 30 | 一致 |
| SRB・ET の遷移 | SSD-ETS-SYS-001 の遷移の表 | SSD-ETS-SYS-001 の transition | 37 | 37 | 一致 |
| TPS の点検の活動の行動 | SSD-ETS-SYS-001 の節点の表 | SSD-ETS-SYS-001 の action | 8 | 8 | 一致 |
| 事故の事象 | SSD-ACC-SYS-001 の事象の連鎖の表 | SSD-ACC-SYS-001 の occurrence | 34 | 34 | 一致 |
| SRB・ET・TPS の機能の故障モード | SSD-ACC-SYS-001 の故障モードの表 | SSD-ACC-SYS-001 の FailureMode | 41 | 41 | 一致 |
| 事故の勧告と改修 | SSD-ACC-SYS-001 の勧告と改修の表 | SSD-ACC-SYS-001 の LessonLearned | 30 | 30 | 一致 |
| インタフェース要求 | SSD-IRQ-SYS-001 の要求の表 | SSD-IRQ-SYS-001 の requirement | 59 | 59 | 一致 |
| インタフェース要求の導出 | SSD-IRQ-SYS-001 の上位の欄 | SSD-IRQ-SYS-001 の #derivation | 121 | 121 | 一致 |
| インタフェース要求の検証ケース | SSD-IRQ-SYS-001 の検証の表 | SSD-IRQ-SYS-001 の verification def | 59 | 59 | 一致 |
| MECH・C/W・PLS・STR・CREW の機器 | SSD-BEH-ORB-008 の部品の表 | SSD-BEH-ORB-008 の part def（機器） | 114 | 114 | 一致 |
| MECH・C/W・PLS・STR・CREW の流れ | SSD-BEH-ORB-008 の流れの表 | SSD-BEH-ORB-008 の flow | 190 | 190 | 一致 |
| MECH・C/W・PLS・CREW の状態 | SSD-BEH-ORB-008 の状態の表 | SSD-BEH-ORB-008 の state | 76 | 76 | 一致 |
| MECH・C/W・PLS・CREW の遷移 | SSD-BEH-ORB-008 の遷移の表 | SSD-BEH-ORB-008 の transition | 103 | 103 | 一致 |
| 構造の限界の判断の活動の行動 | SSD-BEH-ORB-008 の節点の表 | SSD-BEH-ORB-008 の action | 6 | 6 | 一致 |
| L3 の要求（ECLSS 以外） | SSD-RQL-SYS-001 の要求の表 | SSD-RQL-SYS-001 の requirement | 457 | 457 | 一致 |
| 導出（L2→L3、ECLSS 以外） | SSD-RQL-SYS-001 の上位の欄 | SSD-RQL-SYS-001 の #derivation | 530 | 530 | 一致 |
| L3 の検証ケース（ECLSS 以外） | SSD-RQL-SYS-001 の検証の表 | SSD-RQL-SYS-001 の verification def | 457 | 457 | 一致 |
| オービタの系の機能の故障モード | SSD-FMX-ORB-001 の故障モードの表 | SSD-FMX-ORB-001 の FailureMode | 152 | 152 | 一致 |
| 上昇・再突入のパラメータ | SSD-TRJ-ORB-001 のパラメータの表 | SSD-TRJ-ORB-001 の AscentAndEntryVehicle の属性 | 27 | 27 | 一致 |
| 上昇・再突入のモデル（式） | SSD-TRJ-ORB-001 のモデルの表 | SSD-TRJ-ORB-001 の constraint def | 11 | 11 | 一致 |
| 上昇・再突入のシナリオ | SSD-TRJ-ORB-001 のシナリオの表 | SSD-TRJ-ORB-001 の analysis def | 7 | 7 | 一致 |
| 上昇・再突入の照合 | SSD-TRJ-ORB-001 の照合の表 | SSD-TRJ-ORB-001 の requirement def | 9 | 9 | 一致 |
| 切れ目の区分 | SSD-TRC-SYS-001 の切れ目の一覧の区分 | SSD-TRC-SYS-001 の TraceGapReason | 484 | 484 | 一致 |
| 測定指標（MOE・MOP） | SSD-TPM-SYS-001 の階層の表 | SSD-TPM-SYS-001 の MeasureHierarchy の属性 | 12 | 12 | 一致 |
| 測定指標（TPM の閾値） | SSD-TPM-SYS-001 の階層の表（TPM） | SSD-TPM-SYS-001 の constraint def | 3 | 3 | 一致 |
| 下位の IF のインタフェース要求（ECLSS） | SSD-IRQ-ECL-001 の要求の表 | SSD-IRQ-ECL-001 の requirement | 289 | 289 | 一致 |
| 下位の IF のインタフェース要求の導出（ECLSS） | SSD-IRQ-ECL-001 の上位の欄 | SSD-IRQ-ECL-001 の #derivation | 234 | 234 | 一致 |
| 下位の IF のインタフェース要求の検証ケース（ECLSS） | SSD-IRQ-ECL-001 の検証の表 | SSD-IRQ-ECL-001 の verification def | 289 | 289 | 一致 |
| 下位の IF のインタフェース要求（ECLSS 以外） | SSD-IRQ-LOW-001 の要求の表 | SSD-IRQ-LOW-001 の requirement | 230 | 230 | 一致 |
| 下位の IF のインタフェース要求の導出（ECLSS 以外） | SSD-IRQ-LOW-001 の上位の欄 | SSD-IRQ-LOW-001 の #derivation | 297 | 297 | 一致 |
| 下位の IF のインタフェース要求の検証ケース（ECLSS 以外） | SSD-IRQ-LOW-001 の検証の表 | SSD-IRQ-LOW-001 の verification def | 230 | 230 | 一致 |
| 地上の機体のの状態 | SSD-GND-ORB-001 の状態の表 | SSD-GND-ORB-001 の state | 12 | 12 | 一致 |
| 地上の機体のの遷移 | SSD-GND-ORB-001 の遷移の表 | SSD-GND-ORB-001 の transition | 14 | 14 | 一致 |
| 地上処理のの活動の行動 | SSD-GND-ORB-001 の節点の表 | SSD-GND-ORB-001 の action | 11 | 11 | 一致 |
| 地上処理の段 | SSD-GND-ORB-001 の段の表 | 図256 の段（データ） | 10 | 10 | 一致 |
| 秒読みの節目 | SSD-GND-ORB-001 の節目の表 | 図256 の節目（データ） | 6 | 6 | 一致 |
| 飛行中異常 | SSD-IFA-ORB-001 の記録の表 | SSD-IFA-ORB-001 の occurrence | 390 | 390 | 一致 |
| 異常が観測された故障モード | SSD-IFA-ORB-001 の記録の表（故障モード） | SSD-IFA-ORB-001 の #ObservedAs | 73 | 73 | 一致 |
| 貨物の制約 | SSD-PLB-ORB-001 の制約の表 | 図261 の制約（データ） | 18 | 18 | 一致 |
| 着陸重量の内訳 | SSD-PLB-ORB-001 の内訳の表 | SSD-PLB-ORB-001 の part（LandingWeightBudget） | 3 | 3 | 一致 |
| 緊急着陸の荷重係数 | SSD-PLB-ORB-001 の荷重係数の表 | SSD-PLB-ORB-001 の part（EmergencyLandingLoadFactor） | 4 | 4 | 一致 |
| PRA の主要シナリオ | SSD-PRA-ORB-001 の主要シナリオの表 | SSD-PRA-ORB-001 の part（PraScenario） | 10 | 10 | 一致 |
| ハザードとの対応 | SSD-PRA-ORB-001 の対応の表 | SSD-PRA-ORB-001 の #ComparedWith | 9 | 9 | 一致 |
| MBSE 実践の項目 | SSD-MBS-SYS-001 の表 | SSD-MBS-SYS-001 の part（MbseItem） | 64 | 64 | 一致 |
| MBSE グリッド・手法対応の項目 | SSD-GRD-SYS-001 の表 | SSD-GRD-SYS-001 の part | 37 | 37 | 一致 |
| MBSE 実践の項目が評価する対象 | SSD-MBS-SYS-001 の表（文書） | SSD-MBS-SYS-001 の assesses | 64 | 64 | 一致 |
| モデル計画の項目 | SSD-PLN-SYS-001 の表 | SSD-PLN-SYS-001 の part | 36 | 36 | 一致 |
| 打上げ試行の記録 | SSD-LAV-ORB-001 の記録の表 | SSD-LAV-ORB-001 の part（LaunchAttempt） | 124 | 124 | 一致 |
| ミッション類型 | SSD-MTY-ORB-001 の類型の表 | SSD-MTY-ORB-001 の part（MissionType） | 9 | 9 | 一致 |
| 飛行ごとの目的の記録 | SSD-MTY-ORB-001 の記録の表 | SSD-MTY-ORB-001 の part（MissionFlight） | 132 | 132 | 一致 |
| 初飛行・改修の記録 | SSD-CFG-ORB-001 の記録の表 | SSD-CFG-ORB-001 の part（ConfigChange） | 284 | 284 | 一致 |

## 7. 検査の方法

検査は次の手順で行った。道具（task/tools/lib の pilot.py・SysmlCheck.java と各版の verify）は配布の単位（Design/）の外にある。

| 手順 | 項目 | 内容 |
|---|---|---|
| 1 | JDK | Eclipse Temurin 21（OpenJDK）を展開する |
| 2 | Pilot | conda-forge の jupyter-sysml-kernel 0.62.0 を展開し、jupyter-sysml-kernel-0.62.0-all.jar と sysml.library（標準ライブラリ）を使う |
| 3 | 読み込み | org.omg.sysml.interactive.SysMLInteractive で標準ライブラリを読み、§2 の順にファイルを1つずつ読み込む（前のファイルの要素を後のファイルから参照できる） |
| 4 | 指摘 | 読み込みごとに、構文の誤り・名前の解決（参照先が見つからない）・型の検査（例：ポートがポート定義で型付けされていない）の指摘を数える |
| 5 | 一致 | §6 の分類ごとに、文書の表の ID とモデルの短い名前を突き合わせる |

## 8. パッケージ図

図92 モデルの構成 パッケージ図 は、SysML v2 テキストのパッケージと参照の向き（参照する側 → される側）を示す。入口のパッケージ（SSD_MDL_SYS_001）は枠の中のパッケージをすべて読み込む。箱をクリックすると定義書を開く。

## 9. SysML v2 テキスト

同じ内容を SysML v2 のテキスト [SysML/SSD-MDL-SYS-001.sysml](../SysML/SSD-MDL-SYS-001.sysml) に示す。ほかのパッケージ 61件の public import と、統合の関係（§3〜§5）から成る。OMG SysML v2 Pilot Implementation 0.62.0（2026-08 リリース、標準ライブラリ付き）で全部を読み込んで、構文・名前の解決・型の検査で誤り 0件・警告 0件を確かめた。

## 10. 注記（出典間の相違・構成変更）

> **注記** Pilot の検査は、SysML v2 の言語の規則（構文・名前の解決・型の適合など）に合うことを確かめるもので、設計の内容が正しいことは確かめない。式の求解（制約を解くこと）と、状態機械・活動の実行もしていない。

> **注記** 振る舞い・パラメトリックの定義書5件（SSD-BEH-ORB-001〜004・SSD-PAR-ORB-001）は「名前の解決などの意味の検査はしていない」としていたが、本版で Pilot により検査し、記述を改めた。テキスト自体は変えていない（誤り・警告が無かったため）。

> **注記** IntegratedOrbiter は、構造の ORB と振る舞いの Orbiter の両方の特化で、構造モデルの context 自体は変えていない。振る舞いの各定義書のモデルを構造の part def に直接書き込むことは、各定義書の型を変えずに済むよう、入口のパッケージでつないだ。

## 11. 参考文献

1. OMG Systems Modeling Language (SysML) Version 2.0 仕様 — https://www.omg.org/spec/SysML/2.0
2. SysML v2 Release（OMG SysML v2 Pilot Implementation の公開リリース・標準ライブラリ） — https://github.com/Systems-Modeling/SysML-v2-Release
3. conda-forge jupyter-sysml-kernel（SysML v2 Pilot Implementation の Jupyter カーネルと標準ライブラリ） — https://anaconda.org/conda-forge/jupyter-sysml-kernel
4. Eclipse Temurin（OpenJDK）21 のリリース — https://adoptium.net/temurin/releases/

## 12. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-03 | 初版作成（SysML v2 テキスト 9件の構成と読み込みの順、統合の関係（要求の詳細化 11件・メッセージの割付 27件）、文書とモデルの一致 14分類、Pilot による検査の方法、図92 モデルの構成 パッケージ図） |
| Rev. A | 2026-10-03 | 読み込むパッケージに Rev. AH〜AK の4件（SSD-UC-ORB-001・SSD-BEH-ORB-005・SSD-ANA-ORB-001・SSD-VAR-ORB-001）を加え、文書とモデルの一致を 21分類にした（Rev. AK） |
| Rev. B | 2026-10-03 | 読み込むパッケージに Rev. AL・AM の2件（SSD-VER-SYS-001・SSD-VPT-SYS-001）を加え、文書とモデルの一致を 24分類にした、ビューポイント定義書 SSD-VPT-SYS-001 への参照を注記（Rev. AM） |
| Rev. C | 2026-10-03 | 読み込むパッケージに Rev. AN の SSD-IBD-ORB-001 を加え、パラメトリック・解析のテキストの型付けを改めた、文書とモデルの一致を 28分類にした（Rev. AN） |
| Rev. D | 2026-10-03 | 読み込むパッケージに Rev. AO の SSD-TRC-SYS-001 を加えた、文書とモデルの一致を 32分類にした（Rev. AO） |
| Rev. E | 2026-10-03 | 読み込むパッケージに Rev. AP の SSD-FDIR-ORB-001 を加えた、文書とモデルの一致を 35分類にした（Rev. AP） |
| Rev. F | 2026-10-03 | 読み込むパッケージに Rev. AQ の SSD-HAZ-ORB-001 を加えた、文書とモデルの一致を 38分類にした（Rev. AQ） |
| Rev. G | 2026-10-03 | 読み込むパッケージに Rev. AR の SSD-IND-ORB-001 を加えた、文書とモデルの一致を 41分類にした（Rev. AR） |
| Rev. H | 2026-10-03 | 読み込むパッケージに Rev. AS の SSD-RQF-SYS-001 を加えた、文書とモデルの一致を 44分類にした（Rev. AS） |
| Rev. I | 2026-10-04 | 読み込むパッケージに Rev. AT の SSD-FMM-ORB-001 を加えた、文書とモデルの一致を 47分類にした（Rev. AT） |
| Rev. J | 2026-10-04 | Rev. AU の内部ブロック図・IF・機器配分表の追加に合わせて一致を数え直した、文書とモデルの一致を 47分類にした（Rev. AU） |
| Rev. K | 2026-10-04 | 読み込むパッケージに Rev. AV の SSD-FLT-ORB-001 を加えた、文書とモデルの一致を 50分類にした（Rev. AV） |
| Rev. L | 2026-10-04 | 読み込むパッケージに Rev. AW の SSD-PRF-ORB-001 を加えた、文書とモデルの一致を 52分類にした（Rev. AW） |
| Rev. M | 2026-10-04 | 読み込むパッケージに Rev. AX の SSD-BEH-ORB-006 を加えた、文書とモデルの一致を 54分類にした（Rev. AX） |
| Rev. N | 2026-10-06 | 読み込むパッケージに Rev. AY の SSD-HSI-SYS-001 を加えた、文書とモデルの一致を 56分類にした（Rev. AY） |
| Rev. O | 2026-10-07 | 読み込むパッケージに Rev. AZ の SSD-EXP-ORB-001 を加えた、文書とモデルの一致を 58分類にした（Rev. AZ） |
| Rev. P | 2026-10-07 | 読み込むパッケージに Rev. BA の SSD-TSK-ORB-001 を加えた、文書とモデルの一致を 60分類にした（Rev. BA） |
| Rev. Q | 2026-10-07 | 読み込むパッケージに Rev. BB の SSD-HEA-ORB-001 を加えた、文書とモデルの一致を 62分類にした（Rev. BB） |
| Rev. R | 2026-10-07 | 読み込むパッケージに Rev. BC の SSD-CIF-ORB-001 を加えた、文書とモデルの一致を 64分類にした（Rev. BC） |
| Rev. S | 2026-10-07 | 読み込むパッケージに Rev. BD の SSD-HAB-ORB-001 を加えた、文書とモデルの一致を 66分類にした（Rev. BD） |
| Rev. T | 2026-10-07 | 読み込むパッケージに Rev. BE の SSD-EGR-ORB-001 を加えた、文書とモデルの一致を 68分類にした（Rev. BE） |
| Rev. U | 2026-10-07 | 読み込むパッケージに Rev. BF の SSD-HVM-SYS-001 を加えた、文書とモデルの一致を 70分類にした（Rev. BF） |
| Rev. V | 2026-10-07 | 要求の値の見直し（Rev. BG）に合わせて文書とモデルの一致を確かめ直した、文書とモデルの一致を 70分類にした（Rev. BG） |
| Rev. W | 2026-10-08 | Rev. BH（調査結果の注記）に合わせて文書とモデルの一致を確かめ直した、文書とモデルの一致を 70分類にした（Rev. BH） |
| Rev. X | 2026-10-08 | Rev. BI の ECLSS の内部ブロック図・IF・機器配分表の追加に合わせて一致を数え直した、文書とモデルの一致を 70分類にした（Rev. BI） |
| Rev. Y | 2026-10-08 | 読み込むパッケージに Rev. BJ の SSD-ATM-ORB-001 を加えた、文書とモデルの一致を 74分類にした（Rev. BJ） |
| Rev. Z | 2026-10-08 | 読み込むパッケージに Rev. BK の SSD-RQL-ECL-001 を加えた、文書とモデルの一致を 77分類にした（Rev. BK） |
| Rev. AA | 2026-10-09 | 読み込むパッケージに Rev. BL の SSD-BEH-ORB-007・SSD-FMX-ECL-001 を加えた、文書とモデルの一致を 82分類にした（Rev. BL） |
| Rev. AB | 2026-10-09 | 読み込むパッケージに Rev. BM の SSD-EMU-EVA-001 を加えた、文書とモデルの一致を 86分類にした（Rev. BM） |
| Rev. AC | 2026-10-09 | 読み込むパッケージに Rev. BN の SSD-EPB-EVA-001 を加えた、文書とモデルの一致を 89分類にした（Rev. BN） |
| Rev. AD | 2026-10-09 | 読み込むパッケージに Rev. BO の SSD-HRS-ORB-001 を加えた、文書とモデルの一致を 92分類にした（Rev. BO） |
| Rev. AE | 2026-10-09 | 読み込むパッケージに Rev. BP の SSD-MED-ORB-001 を加えた、文書とモデルの一致を 95分類にした（Rev. BP） |
| Rev. AF | 2026-10-11 | Rev. BQ（照合表の判定の見直し・飛行試験の反証の決定・本書の判断の確認）に合わせて文書とモデルの一致を確かめ直した、文書とモデルの一致を 95分類にした（Rev. BQ） |
| Rev. AG | 2026-10-11 | Rev. BR（出典の更新・L3 の要求の追加・検証の根拠の調査・SysML の書き方）に合わせて文書とモデルの一致を確かめ直した、文書とモデルの一致を 95分類にした（Rev. BR） |
| Rev. AH | 2026-10-11 | 読み込むパッケージに Rev. BS の SSD-GNC-ORB-001 を加えた、文書とモデルの一致を 101分類にした（Rev. BS） |
| Rev. AI | 2026-10-11 | 読み込むパッケージに Rev. BT の SSD-ETS-SYS-001 を加えた、文書とモデルの一致を 106分類にした（Rev. BT） |
| Rev. AJ | 2026-10-11 | 読み込むパッケージに Rev. BU の SSD-ACC-SYS-001 を加えた、文書とモデルの一致を 109分類にした（Rev. BU） |
| Rev. AK | 2026-10-11 | 読み込むパッケージに Rev. BV の SSD-IRQ-SYS-001 を加えた、文書とモデルの一致を 112分類にした（Rev. BV） |
| Rev. AL | 2026-10-12 | 読み込むパッケージに Rev. BW の SSD-BEH-ORB-008 を加えた、文書とモデルの一致を 117分類にした（Rev. BW） |
| Rev. AM | 2026-10-12 | 読み込むパッケージに Rev. BX の SSD-RQL-SYS-001 を加えた、文書とモデルの一致を 120分類にした（Rev. BX） |
| Rev. AN | 2026-10-12 | 読み込むパッケージに Rev. BY の SSD-FMX-ORB-001 を加えた、文書とモデルの一致を 121分類にした（Rev. BY） |
| Rev. AO | 2026-10-12 | 読み込むパッケージに Rev. BZ の SSD-TRJ-ORB-001 を加えた、文書とモデルの一致を 125分類にした（Rev. BZ） |
| Rev. AP | 2026-10-15 | Rev. CA の SSD-ACR-SYS-001（略語表）に合わせて文書とモデルの一致を確かめ直した、文書とモデルの一致を 125分類にした（Rev. CA） |
| Rev. AQ | 2026-10-15 | Rev. CB（検証の根拠の調査）に合わせて文書とモデルの一致を確かめ直した、文書とモデルの一致を 125分類にした（Rev. CB） |
| Rev. AR | 2026-10-15 | Rev. CC（ECLSS の機能の故障モードの追加）に合わせて文書とモデルの一致を確かめ直した、文書とモデルの一致を 125分類にした（Rev. CC） |
| Rev. AS | 2026-10-15 | Rev. CD（ECLSS の IF の流れ）に合わせて文書とモデルの一致を確かめ直した、文書とモデルの一致を 125分類にした（Rev. CD） |
| Rev. AT | 2026-10-16 | Rev. CE（ECLSS のシーケンス図）に合わせて文書とモデルの一致を確かめ直した、文書とモデルの一致を 125分類にした（Rev. CE） |
| Rev. AU | 2026-10-16 | Rev. CF（機器配分表の行の追加・MON ブロックの機器）に合わせて文書とモデルの一致を確かめ直した、文書とモデルの一致を 125分類にした（Rev. CF） |
| Rev. AV | 2026-10-16 | Rev. CG（ECLSS 以外の IF の流れ）に合わせて文書とモデルの一致を確かめ直した、文書とモデルの一致を 125分類にした（Rev. CG） |
| Rev. AW | 2026-10-16 | Rev. CH（ECLSS 以外のシーケンス図）に合わせて文書とモデルの一致を確かめ直した、文書とモデルの一致を 125分類にした（Rev. CH） |
| Rev. AX | 2026-10-16 | Rev. CI（検証の根拠が無い要求の理由の区分）に合わせて文書とモデルの一致を確かめ直した、文書とモデルの一致を 126分類にした（Rev. CI） |
| Rev. AY | 2026-10-16 | Rev. CJ（SSD-TRJ-ORB-001 の改版）に合わせて文書とモデルの一致を確かめ直した、文書とモデルの一致を 126分類にした（Rev. CJ） |
| Rev. AZ | 2026-10-16 | 読み込むパッケージに Rev. CK の SSD-TPM-SYS-001 を加えた、文書とモデルの一致を 128分類にした（Rev. CK） |
| Rev. BA | 2026-10-17 | 読み込むパッケージに Rev. CL の SSD-IRQ-ECL-001・SSD-IRQ-LOW-001 を加えた、文書とモデルの一致を 134分類にした（Rev. CL） |
| Rev. BB | 2026-10-17 | 読み込むパッケージに Rev. CM の SSD-GND-ORB-001 を加えた、文書とモデルの一致を 139分類にした（Rev. CM） |
| Rev. BC | 2026-10-19 | Rev. CN（図92 の描き直し）に合わせて文書とモデルの一致を確かめ直した、文書とモデルの一致を 139分類にした（Rev. CN） |
| Rev. BD | 2026-10-19 | 読み込むパッケージに Rev. CO の SSD-IFA-ORB-001 を加えた、文書とモデルの一致を 141分類にした（Rev. CO） |
| Rev. BE | 2026-10-19 | 読み込むパッケージに Rev. CP の SSD-PLB-ORB-001 を加えた、文書とモデルの一致を 144分類にした（Rev. CP） |
| Rev. BF | 2026-10-19 | 読み込むパッケージに Rev. CQ の SSD-PRA-ORB-001 を加えた、文書とモデルの一致を 146分類にした（Rev. CQ） |
| Rev. BG | 2026-10-19 | 読み込むパッケージに Rev. CR の SSD-MBS-SYS-001 を加えた、文書とモデルの一致を 148分類にした（Rev. CR） |
| Rev. BH | 2026-10-19 | 読み込むパッケージに Rev. CS の SSD-GRD-SYS-001 を加え、SSD-MBS-SYS-001 の対象の持ち方（assesses の属性）の一致を加えた、文書とモデルの一致を 149分類にした（Rev. CS） |
| Rev. BI | 2026-10-19 | 読み込むパッケージに Rev. CT の SSD-PLN-SYS-001 を加えた、文書とモデルの一致を 150分類にした（Rev. CT） |
| Rev. BJ | 2026-10-28 | 読み込むパッケージに Rev. CU の SSD-LAV-ORB-001 を加えた、文書とモデルの一致を 151分類にした（Rev. CU） |
| Rev. BK | 2026-10-28 | 読み込むパッケージに Rev. CV の SSD-MTY-ORB-001 を加えた、文書とモデルの一致を 153分類にした（Rev. CV） |
| Rev. BL | 2026-10-28 | 読み込むパッケージに Rev. CW の SSD-CFG-ORB-001 を加えた、文書とモデルの一致を 154分類にした（Rev. CW） |
