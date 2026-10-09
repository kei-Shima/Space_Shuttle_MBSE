# モデル統合・検査定義書（SysML v2）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-MDL-SYS-001 |
| 表題 | モデル統合・検査定義書（SysML v2） |
| 版・日付 | Rev. AE／2026-10-09 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-BLK-SYS-001 |
| 関連図 | SSD-SYS-ARC-001 図92 モデルの構成 パッケージ図 |

## 1. 目的

これまでに作った SysML v2 テキスト 40件（構造・要求・割付・振る舞い・パラメトリック）を1つのモデルとして読み込む入口と、パッケージどうしをつなぐ統合の関係を示し、モデル全体の意味の検査（名前の解決・型）と、文書とモデルの一致の検査の方法と結果を示す。文書（docs）と図（draw.io）とモデル（model）の3つが同じ内容を指していることを、検査で確かめられるようにすることが目的である。

## 2. モデルの構成

SysML v2 テキストを読み込みの順（依存の順）に示す。依存の欄は、そのファイルが参照するほかのファイル、定義の欄は定義（… def）の数、誤り・警告の欄は OMG SysML v2 Pilot Implementation 0.62.0（2026-08 リリース、標準ライブラリ付き）で全部を順に読み込んだときの指摘の数である。

| 順 | ファイル | 内容 | 依存 | 行数 | 定義 | 誤り | 警告 |
|---|---|---|---|---|---|---|---|
| 1 | SysML/SSD-BEH-ORB-001.sysml | 状態遷移（ミッションフェーズ・飛行継続判断） | — | 124 | 29 | 0 | 0 |
| 2 | SysML/SSD-PAR-ORB-001.sysml | パラメトリック（消耗品・電力・排熱） | — | 277 | 19 | 0 | 0 |
| 3 | SysML/SSD-BEH-ORB-002.sysml | 故障処置の活動 | — | 104 | 3 | 0 | 0 |
| 4 | SysML/SSD-BEH-ORB-003.sysml | シーケンス（軌道離脱〜着陸・上昇・指令とテレメトリ） | — | 199 | 57 | 0 | 0 |
| 5 | SysML/SSD-BEH-ORB-004.sysml | 運用・非常時の活動 | — | 93 | 3 | 0 | 0 |
| 6 | SysML/SSD-BLK-SYS-001.sysml | 構造（ブロック・ポート・インタフェース） | — | 3023 | 252 | 0 | 0 |
| 7 | SysML/SSD-RQM-SYS-001.sysml | 要求（導出・充足・検証方法） | SSD-BLK-SYS-001 | 2653 | 2 | 0 | 0 |
| 8 | SysML/SSD-ALC-SYS-001.sysml | 割付（機能・機器・区画・振る舞い） | SSD-BEH-ORB-002・SSD-BEH-ORB-003・SSD-BEH-ORB-004・SSD-BLK-SYS-001 | 5427 | 122 | 0 | 0 |
| 9 | SysML/SSD-IBD-ORB-001.sysml | 内部ブロック図（機器の接続・流れる物・量と単位） | SSD-BLK-SYS-001・SSD-ALC-SYS-001 | 4117 | 379 | 0 | 0 |
| 10 | SysML/SSD-UC-ORB-001.sysml | 運用のユースケース・シナリオ | SSD-BEH-ORB-001・SSD-BEH-ORB-002・SSD-BEH-ORB-003・SSD-BEH-ORB-004・SSD-BLK-SYS-001 | 331 | 59 | 0 | 0 |
| 11 | SysML/SSD-BEH-ORB-005.sysml | 系の状態遷移 | SSD-BLK-SYS-001 | 321 | 75 | 0 | 0 |
| 12 | SysML/SSD-BEH-ORB-006.sysml | 系の状態遷移その2（OMS・RCS・MPS・C&T・与圧系・ODS） | SSD-BLK-SYS-001・SSD-BEH-ORB-005 | 437 | 98 | 0 | 0 |
| 13 | SysML/SSD-BEH-ORB-007.sysml | ECLSS の状態遷移と活動（ARS・FDS・給水廃水・WCS） | SSD-BLK-SYS-001・SSD-BEH-ORB-005 | 364 | 69 | 0 | 0 |
| 14 | SysML/SSD-EMU-EVA-001.sysml | EMU の構造・内部ブロック・状態 | SSD-BLK-SYS-001・SSD-ALC-SYS-001・SSD-BEH-ORB-005 | 595 | 91 | 0 | 0 |
| 15 | SysML/SSD-ANA-ORB-001.sysml | 解析（トレード・質量・Δv・故障の木） | — | 112 | 11 | 0 | 0 |
| 16 | SysML/SSD-VAR-ORB-001.sysml | 構成の違い（機体・ミッションキット） | SSD-BLK-SYS-001 | 197 | 24 | 0 | 0 |
| 17 | SysML/SSD-IND-ORB-001.sysml | 個体・時間（機体・飛行の個体、時間切片、実績） | SSD-BLK-SYS-001・SSD-VAR-ORB-001 | 179 | 8 | 0 | 0 |
| 18 | SysML/SSD-RQF-SYS-001.sysml | 要求の形式化（属性・制約・値による判定） | SSD-PAR-ORB-001・SSD-RQM-SYS-001・SSD-ANA-ORB-001・SSD-IND-ORB-001 | 1649 | 186 | 0 | 0 |
| 19 | SysML/SSD-FLT-ORB-001.sysml | 飛行構成・飛行試験（構成の解決・検証の証拠） | SSD-RQM-SYS-001・SSD-VAR-ORB-001・SSD-IND-ORB-001 | 308 | 10 | 0 | 0 |
| 20 | SysML/SSD-HSI-SYS-001.sysml | 人間系の基準の照合（NASA-STD-3001 による後付け評価） | SSD-RQM-SYS-001 | 2485 | 548 | 0 | 0 |
| 21 | SysML/SSD-EXP-ORB-001.sysml | 乗員の環境曝露（パラメトリック・プロファイル） | SSD-HSI-SYS-001 | 212 | 19 | 0 | 0 |
| 22 | SysML/SSD-ATM-ORB-001.sysml | キャビン大気の動的モデル（CO2・圧力と漏れ・熱と湿度） | SSD-HSI-SYS-001 | 165 | 29 | 0 | 0 |
| 23 | SysML/SSD-EPB-EVA-001.sysml | EMU の消耗品と前呼吸（持続時間・R 値） | SSD-HSI-SYS-001 | 153 | 25 | 0 | 0 |
| 24 | SysML/SSD-HRS-ORB-001.sysml | 居住の資源と収支（食料・衛生・就寝・廃棄物・収納） | SSD-HSI-SYS-001 | 117 | 4 | 0 | 0 |
| 25 | SysML/SSD-MED-ORB-001.sysml | 医療の構造と処置（SOMS・処置の流れ・事象） | SSD-BLK-SYS-001・SSD-HSI-SYS-001 | 263 | 35 | 0 | 0 |
| 26 | SysML/SSD-TSK-ORB-001.sysml | 乗員の作業分析・機能の分担 | — | 198 | 43 | 0 | 0 |
| 27 | SysML/SSD-PRF-ORB-001.sysml | 消耗品・電力プロファイル（時間軸の残量・設計と実績） | SSD-PAR-ORB-001・SSD-IND-ORB-001 | 78 | 4 | 0 | 0 |
| 28 | SysML/SSD-VER-SYS-001.sysml | 検証ケース・検証の結果 | SSD-BLK-SYS-001・SSD-RQM-SYS-001 | 2343 | 212 | 0 | 0 |
| 29 | SysML/SSD-RQL-ECL-001.sysml | ECLSS 下位要求（L3） | SSD-BLK-SYS-001・SSD-RQM-SYS-001 | 2356 | 99 | 0 | 0 |
| 30 | SysML/SSD-TRC-SYS-001.sysml | トレース網羅・影響分析（網羅の指標・切れ目・影響のビュー） | SSD-BEH-ORB-002・SSD-BLK-SYS-001・SSD-RQM-SYS-001・SSD-ALC-SYS-001・SSD-IBD-ORB-001・SSD-BEH-ORB-005・SSD-BEH-ORB-006・SSD-BEH-ORB-007・SSD-VER-SYS-001・SSD-RQL-ECL-001 | 549 | 6 | 0 | 0 |
| 31 | SysML/SSD-FDIR-ORB-001.sysml | 故障検知・処置（C/W の警報・監視・処置・状態遷移） | SSD-BEH-ORB-002・SSD-BEH-ORB-004・SSD-BLK-SYS-001・SSD-BEH-ORB-005・SSD-BEH-ORB-006・SSD-BEH-ORB-007 | 349 | 46 | 0 | 0 |
| 32 | SysML/SSD-HAZ-ORB-001.sysml | ハザード解析（ハザード・原因・管理策・リスク） | SSD-BEH-ORB-002・SSD-BEH-ORB-004・SSD-BLK-SYS-001・SSD-RQM-SYS-001・SSD-FDIR-ORB-001 | 797 | 69 | 0 | 0 |
| 33 | SysML/SSD-FMM-ORB-001.sysml | 故障モード（故障モード・原因・検知・管理策の連鎖） | SSD-BLK-SYS-001・SSD-FDIR-ORB-001・SSD-HAZ-ORB-001 | 4206 | 2 | 0 | 0 |
| 34 | SysML/SSD-FMX-ECL-001.sysml | ECLSS の故障モード（対応づけ・機能の故障モード・故障の木） | SSD-BLK-SYS-001・SSD-FDIR-ORB-001・SSD-HAZ-ORB-001・SSD-FMM-ORB-001 | 178 | 3 | 0 | 0 |
| 35 | SysML/SSD-HEA-ORB-001.sysml | ヒューマンエラー解析 | SSD-HAZ-ORB-001 | 151 | 15 | 0 | 0 |
| 36 | SysML/SSD-CIF-ORB-001.sysml | 乗員インタフェース（警報の階層・表示と操作） | SSD-FDIR-ORB-001 | 157 | 58 | 0 | 0 |
| 37 | SysML/SSD-HAB-ORB-001.sysml | 居住性と医療（機能・乗員の1日・ユースケース） | SSD-BLK-SYS-001・SSD-HSI-SYS-001 | 250 | 37 | 0 | 0 |
| 38 | SysML/SSD-EGR-ORB-001.sysml | 容積・動線・緊急脱出 | SSD-RQM-SYS-001 | 58 | 14 | 0 | 0 |
| 39 | SysML/SSD-HVM-SYS-001.sysml | 人間系の評価方法とビューポイント | SSD-HSI-SYS-001・SSD-EXP-ORB-001・SSD-TSK-ORB-001・SSD-HEA-ORB-001・SSD-CIF-ORB-001・SSD-HAB-ORB-001・SSD-EGR-ORB-001・SSD-VPT-SYS-001 | 90 | 18 | 0 | 0 |
| 40 | SysML/SSD-VPT-SYS-001.sysml | ビューポイント・表記の規約 | SSD-BEH-ORB-001・SSD-PAR-ORB-001・SSD-BEH-ORB-002・SSD-BEH-ORB-003・SSD-BEH-ORB-004・SSD-BLK-SYS-001・SSD-RQM-SYS-001・SSD-ALC-SYS-001・SSD-IBD-ORB-001・SSD-UC-ORB-001・SSD-BEH-ORB-005・SSD-BEH-ORB-006・SSD-BEH-ORB-007・SSD-EMU-EVA-001・SSD-ANA-ORB-001・SSD-VAR-ORB-001・SSD-IND-ORB-001・SSD-RQF-SYS-001・SSD-FLT-ORB-001・SSD-HSI-SYS-001・SSD-EXP-ORB-001・SSD-ATM-ORB-001・SSD-EPB-EVA-001・SSD-HRS-ORB-001・SSD-MED-ORB-001・SSD-TSK-ORB-001・SSD-PRF-ORB-001・SSD-VER-SYS-001・SSD-RQL-ECL-001・SSD-TRC-SYS-001・SSD-FDIR-ORB-001・SSD-HAZ-ORB-001・SSD-FMM-ORB-001・SSD-FMX-ECL-001・SSD-HEA-ORB-001・SSD-CIF-ORB-001・SSD-HAB-ORB-001・SSD-EGR-ORB-001・SSD-HVM-SYS-001 | 1689 | 60 | 0 | 0 |
| 41 | SysML/SSD-MDL-SYS-001.sysml | 全体の入口と統合の関係（本書） | 全パッケージ | 103 | 1 | 0 | 0 |

## 3. 統合の関係

入口のパッケージに置いた、パッケージどうしをつなぐ関係を示す。構造と要求の充足（SSD-RQM-SYS-001）、構造と割付（SSD-ALC-SYS-001）は、それぞれのファイルの中にある。

| 要素 | 内容 | 件数 |
|---|---|---|
| IntegratedOrbiter | SSD_BLK_SYS_001::ORB と SSD_BEH_ORB_001::Orbiter の両方を特化（part def） | 1 |
| integratedContext | 構造モデルの context の orb を IntegratedOrbiter に置き換えた部品 | 1 |
| RequirementRefinement | パラメトリックの要求定義 → 要求モデルの同じ ID の要求（#refinement） | 11 |
| MessageAllocation | シーケンス図のメッセージ → それを運ぶ構造モデルの IF（allocate） | 27 |

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

シーケンス図のメッセージのうち IF の ID を持つもの（27件、1つのメッセージに IF が2つあるものを含む）を、構造モデルの IF に割り付けた。

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

## 6. 文書とモデルの一致

文書の表の ID と、モデルの要素の短い名前（ID）を突き合わせた結果を示す（95分類、すべて一致）。件数だけでなく ID の集合が同じことを確かめた。

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
| 機器 | SSD-PHY-ORB-001 の機器配分表 | SSD-ALC-SYS-001 の part def | 120 | 120 | 一致 |
| 状態 | SSD-BEH-ORB-001 の状態の表 | SSD-BEH-ORB-001 の state | 25 | 25 | 一致 |
| 遷移 | SSD-BEH-ORB-001 の遷移の表 | SSD-BEH-ORB-001 の transition | 34 | 34 | 一致 |
| 活動図の行動 | SSD-BEH-ORB-002・004 の節点の表（行動） | action（行動） | 44 | 44 | 一致 |
| メッセージ | SSD-BEH-ORB-003 のメッセージの表 | SSD-BEH-ORB-003 の message | 56 | 56 | 一致 |
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
| ビュー（図） | SSD-VPT-SYS-001 のビューの表 | SSD-VPT-SYS-001 の view | 190 | 190 | 一致 |
| 流れる物 | SSD-IBD-ORB-001 の流れる物の表 | SSD-IBD-ORB-001 の item def | 83 | 83 | 一致 |
| 内部ブロック図の部品 | SSD-IBD-ORB-001 の部品の表 | SSD-IBD-ORB-001 の機器の part def | 202 | 202 | 一致 |
| 内部ブロック図の流れ | SSD-IBD-ORB-001 の流れの表 | SSD-IBD-ORB-001 の flow | 430 | 430 | 一致 |
| 流れ → IF の詳細化 | SSD-IBD-ORB-001 の IF との対応の表 | SSD-IBD-ORB-001 の #refinement | 342 | 342 | 一致 |
| トレースの関係 | SSD-TRC-SYS-001 の関係の表 | SSD-TRC-SYS-001 の TraceRelation | 18 | 18 | 一致 |
| 切れ目の分類 | SSD-TRC-SYS-001 の切れ目の分類の表 | SSD-TRC-SYS-001 の TraceGapCategory | 11 | 11 | 一致 |
| 切れ目の要素 | SSD-TRC-SYS-001 の切れ目の一覧 | SSD-TRC-SYS-001 の TraceGap | 24 | 24 | 一致 |
| 影響分析 | SSD-TRC-SYS-001 の影響分析の結果の表 | SSD-TRC-SYS-001 の view（ImpactView） | 5 | 5 | 一致 |
| 警報 | SSD-FDIR-ORB-001 の警報の表（予備の灯を除く） | SSD-FDIR-ORB-001 の警報の item def | 40 | 40 | 一致 |
| 警報の監視 | SSD-FDIR-ORB-001 の警報の表の監視する機能ブロック | SSD-FDIR-ORB-001 の #Monitors | 56 | 56 | 一致 |
| 警報の処置の手順 | SSD-FDIR-ORB-001 の処置の表 | SSD-FDIR-ORB-001 の MalProcedure | 60 | 60 | 一致 |
| ハザード | SSD-HAZ-ORB-001 のハザードの表 | SSD-HAZ-ORB-001 の Hazard の occurrence def | 16 | 16 | 一致 |
| ハザードの原因 | SSD-HAZ-ORB-001 の原因の表 | SSD-HAZ-ORB-001 の #causation | 49 | 49 | 一致 |
| ハザードの管理策 | SSD-HAZ-ORB-001 の管理策の表 | SSD-HAZ-ORB-001 の requirement | 69 | 69 | 一致 |
| 飛行の個体 | SSD-IND-ORB-001 の飛行の個体の表 | SSD-IND-ORB-001 の individual def | 3 | 3 | 一致 |
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
| L3 の要求 | SSD-RQL-ECL-001 の要求の表 | SSD-RQL-ECL-001 の requirement | 99 | 99 | 一致 |
| 導出（L2→L3） | SSD-RQL-ECL-001 の上位の欄 | SSD-RQL-ECL-001 の #derivation | 110 | 110 | 一致 |
| L3 の検証ケース | SSD-RQL-ECL-001 の検証の表 | SSD-RQL-ECL-001 の verification def | 99 | 99 | 一致 |
| ECLSS の状態 | SSD-BEH-ORB-007 の状態の表 | SSD-BEH-ORB-007 の state | 43 | 43 | 一致 |
| ECLSS の遷移 | SSD-BEH-ORB-007 の遷移の表 | SSD-BEH-ORB-007 の transition | 58 | 58 | 一致 |
| ECLSS の活動の行動 | SSD-BEH-ORB-007 の節点の表 | SSD-BEH-ORB-007 の action | 22 | 22 | 一致 |
| ECLSS の機能の故障モード | SSD-FMX-ECL-001 の故障モードの表 | SSD-FMX-ECL-001 の FailureMode | 32 | 32 | 一致 |
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

同じ内容を SysML v2 のテキスト [SysML/SSD-MDL-SYS-001.sysml](../SysML/SSD-MDL-SYS-001.sysml) に示す。ほかのパッケージ 40件の public import と、統合の関係（§3〜§5）から成る。OMG SysML v2 Pilot Implementation 0.62.0（2026-08 リリース、標準ライブラリ付き）で全部を読み込んで、構文・名前の解決・型の検査で誤り 0件・警告 0件を確かめた。

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
