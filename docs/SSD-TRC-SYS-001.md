# トレース網羅・影響分析書（連鎖の網羅・切れ目・変更の影響）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-TRC-SYS-001 |
| 表題 | トレース網羅・影響分析書（連鎖の網羅・切れ目・変更の影響） |
| 版・日付 | Rev. S／2026-10-15 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-MDL-SYS-001 |
| 関連図 | SSD-SYS-ARC-001 図115 トレースの連鎖（要素の種類と関係）・図116 系ごとのトレース網羅・図117 変更の影響分析 |

## 1. 目的

パッケージの文書と SysML v2 モデルにある要素（要求・機能・IF・機器・検証・故障解析・振る舞い・内部ブロック図）と、それらを結ぶ関係を1つのグラフにまとめ、要求から検証・機器までの連鎖がどこまでつながっているか（網羅）、どこで切れているか（切れ目）、ある機器を変えたときに何に影響するか（影響分析）を示す。全体は図115〜117 に示す。

## 2. 書き方

グラフは、文書の表（要求書・故障解析表・活動定義書など）と SysML v2 テキスト（構造・要求・割付・検証・内部ブロック図）を本書の生成の中で読んで作った。要素の種類と数は §3、関係は §4 に示す。網羅は系ごとに9つの指標（§5）で数え、網羅していない要素を切れ目の分類（§7）に分けた。切れ目の判断は、判断済み（文書に理由がある）・方針（作り方による）・範囲外（今後の課題）・未処理（手を打つ候補）の4つである。影響分析は機器を起点に、決めた向きで関係を辿った範囲である（§9）。新しい一次資料は使っていない。

## 3. 要素の種類

グラフの要素 7433件を種類ごとに示す。

| 種類 | 要素 | 件数 | 出どころ |
|---|---|---|---|
| L1 | L1 要求 | 18 | SSD-REQ-SYS-001 |
| L2 | L2 要求 | 815 | SSD-REQ-<系>-001、SSD-IRQ-SYS-001、SSD-RQL-SYS-001 |
| VC | 検証ケース | 833 | SSD-VER-SYS-001、SSD-IRQ-SYS-001、SSD-RQL-SYS-001 |
| F | 機能行 | 2075 | SSD-FD-*（機能の表） |
| IF | IF | 601 | SSD-FD-*（IF の表） |
| BLK | 機能説明書 | 208 | SSD-FD-* |
| PHY | 機器 | 120 | SSD-PHY-ORB-001 |
| CMP | 区画 | 18 | SSD-PHY-ORB-001（図43） |
| EQ | 内部ブロック図の機器 | 379 | SSD-IBD-ORB-001、SSD-GNC-ORB-001、SSD-ETS-SYS-001、SSD-BEH-ORB-008 |
| FL | 流れ | 826 | SSD-IBD-ORB-001、SSD-GNC-ORB-001、SSD-ETS-SYS-001、SSD-BEH-ORB-008 |
| FM | 故障解析表の行 | 1223 | SSD-FMEA-*-001、SSD-FMX-ECL-001、SSD-ACC-SYS-001、SSD-FMX-ORB-001 |
| RULE | [CIL] の規則 | 54 | SSD-FMEA-*-001 |
| ACT | 活動図の行動 | 130 | SSD-BEH-ORB-002・004・007、SSD-UC-ORB-001、SSD-MED-ORB-001、SSD-GNC-ORB-001、SSD-ETS-SYS-001、SSD-BEH-ORB-008 |
| MSG | メッセージ | 46 | SSD-BEH-ORB-003、SSD-UC-ORB-001 |
| SM | 状態機械 | 28 | SSD-BEH-ORB-001・005・006・007、SSD-EMU-EVA-001、SSD-GNC-ORB-001、SSD-ETS-SYS-001、SSD-BEH-ORB-008 |
| ICD | 上位 IF の特性値 | 59 | SSD-ICD-ORB-001 |

## 4. 関係（連鎖）

要素を結ぶ関係 18種・13509件を示す。向きは連鎖の向き（上位 → 下位、要求 → 割付先、行 → 対応先）。

| ID | 関係 | 元 → 先 | 内容 | 件数 | 出どころ |
|---|---|---|---|---|---|
| TR-01 | derive | L1 → L2 | L1 要求から L2 要求を導出 | 1008 | SSD-RQM-SYS-001 の #derivation、SSD-IRQ-SYS-001、SSD-RQL-SYS-001 |
| TR-02 | satisfy | L1・L2 → F・IF | 要求の割付先（充足） | 2687 | SSD-RQM-SYS-001 の satisfy の割付先、SSD-IRQ-SYS-001、SSD-RQL-SYS-001 |
| TR-03 | verify | L1・L2 → VC | 要求を検証ケースで確かめる（判定つき） | 833 | SSD-VER-SYS-001 の Results、SSD-IRQ-SYS-001、SSD-RQL-SYS-001 |
| TR-04 | own | F → BLK | 機能行を持つ機能説明書 | 2075 | SSD-ALC-SYS-001 の Functions |
| TR-05 | end | IF → BLK | IF の端の機能説明書 | 1175 | SSD-BLK-SYS-001 の interface・connection |
| TR-06 | alloc | PHY → F・BLK | 機器に割り付けた機能行と系 | 459 | SSD-ALC-SYS-001 の PhysicalAllocation |
| TR-07 | place | PHY → CMP | 機器を置いた区画 | 120 | SSD-ALC-SYS-001 の PhysicalAllocation |
| TR-08 | fmea | FM → F・IF | 故障解析表の行（CIL 課題・CIL 項目）と機能・IF | 2104 | SSD-FMEA-*-001、SSD-FMX-ECL-001、SSD-ACC-SYS-001、SSD-FMX-ORB-001 |
| TR-09 | rule | RULE → BLK | [CIL] の規則と下位機能 | 83 | SSD-FMEA-*-001 |
| TR-10 | act | ACT → F | 活動図の行動と機能行 | 211 | SSD-BEH-ORB-002・004・007、SSD-UC-ORB-001、SSD-MED-ORB-001、SSD-GNC-ORB-001、SSD-ETS-SYS-001、SSD-BEH-ORB-008 |
| TR-11 | actpart | ACT → BLK | 活動図の行動を受け持つ部品 | 51 | SSD-ALC-SYS-001 の BehaviorAllocation |
| TR-12 | msg | MSG → IF | シーケンス図のメッセージが通る IF | 48 | SSD-BEH-ORB-003、SSD-UC-ORB-001 |
| TR-13 | sm | SM → BLK | 状態機械を持つ部品（exhibit） | 28 | SSD-BEH-ORB-001・005・006・007、SSD-EMU-EVA-001、SSD-GNC-ORB-001、SSD-ETS-SYS-001、SSD-BEH-ORB-008 |
| TR-14 | flow | FL → IF | 内部ブロック図の流れが詳しくする IF | 776 | SSD-IBD-ORB-001 の #refinement、SSD-GNC-ORB-001、SSD-ETS-SYS-001、SSD-BEH-ORB-008 |
| TR-15 | flowpart | FL → EQ | 流れの端の機器 | 1034 | SSD-IBD-ORB-001 の flow、SSD-GNC-ORB-001、SSD-ETS-SYS-001、SSD-BEH-ORB-008 |
| TR-16 | eq | EQ → PHY | 内部ブロック図の機器と機器配分表の行 | 379 | SSD-IBD-ORB-001 の part def の特化、SSD-GNC-ORB-001、SSD-ETS-SYS-001、SSD-BEH-ORB-008 |
| TR-17 | eqblk | EQ → BLK | 内部ブロック図の機器を置いた機能ブロック | 379 | SSD-IBD-ORB-001、SSD-GNC-ORB-001、SSD-ETS-SYS-001、SSD-BEH-ORB-008 |
| TR-18 | icd | ICD → IF | 上位 IF の特性値の行 | 59 | SSD-ICD-ORB-001 |

## 5. 網羅の指標

系ごとに数える網羅の指標を示す。系は図1・図2 の18系（TCS の文書は TPS に含める）。

| ID | 指標 | 対象 | 網羅の条件 |
|---|---|---|---|
| C1 | 要求の導出 | L2 要求 | 上位の L1 要求から導出されている |
| C2 | 要求の割付 | L2 要求 | 割付先（機能行・IF）がある |
| C3 | 要求の検証 | L2 要求 | 検証の判定が pass |
| C4 | 機能行の要求 | 機能行 | 要求の割付先になっている、または「要求なしで妥当」と判断済み（トレースの対象外の行は分母から除く） |
| C5 | IF の要求 | IF（系が所有） | 要求の割付先になっている |
| C6 | IF の振る舞い・流れ | IF（系が所有） | シーケンス図のメッセージか内部ブロック図の流れが通る |
| C7 | 機器の要求 | 機器 | 機器に割り付けた機能行が要求の割付先になっている |
| C8 | 機能ブロックの故障解析 | 機能説明書 | 故障解析表の行（CIL 課題・CIL 項目）か ECLSS の機能の故障モード（SSD-FMX-ECL-001）がその機能行・IF に対応する、[CIL] の規則が対応する、または機器を持たず故障モードが当てはまらないと判断済み（SSD-FMX-ECL-001 の判断済みの機能ブロック） |
| C9 | 機能ブロックの振る舞い | 機能説明書 | 活動図の行動・状態機械・メッセージ・内部ブロック図のどれかに現れる |

## 6. 系ごとの網羅

系ごとの網羅（網羅した数／対象の数）を示す。— は対象が無い。図116 は同じ値を割合の色で示す。

| 系 | C1 要求の導出 | C2 要求の割付 | C3 要求の検証 | C4 機能行の要求 | C5 IF の要求 | C6 IF の振る舞い・流れ | C7 機器の要求 | C8 機能ブロックの故障解析 | C9 機能ブロックの振る舞い |
|---|---|---|---|---|---|---|---|---|---|
| APU | 43/43 | 43/43 | 33/43 | 92/92 | 6/29 | 22/29 | 7/7 | 8/8 | 8/8 |
| CREW | 41/41 | 41/41 | 23/41 | 52/52 | 1/12 | 12/12 | 5/5 | 7/7 | 7/7 |
| CT | 43/43 | 43/43 | 33/43 | 88/88 | 6/29 | 26/29 | 11/11 | 8/8 | 8/8 |
| CW | 35/35 | 35/35 | 21/35 | 46/46 | 4/12 | 12/12 | 5/5 | 6/6 | 6/6 |
| DPS | 50/50 | 50/50 | 34/50 | 91/91 | 12/29 | 25/29 | 7/7 | 8/8 | 7/8 |
| ECLSS | 124/124 | 124/124 | 114/124 | 945/945 | 9/298 | 241/298 | 28/28 | 87/87 | 80/87 |
| EPS | 47/47 | 47/47 | 36/47 | 33/33 | 8/23 | 19/23 | 5/5 | 5/5 | 5/5 |
| EVA | 37/37 | 37/37 | 21/37 | 85/85 | 3/15 | 3/15 | 3/3 | 7/7 | 7/7 |
| GNC | 45/45 | 45/45 | 40/45 | 90/90 | 5/24 | 24/24 | 6/6 | 8/8 | 8/8 |
| MECH | 38/38 | 38/38 | 26/38 | 52/52 | 1/11 | 11/11 | 6/6 | 7/7 | 7/7 |
| MPS | 44/44 | 44/44 | 32/44 | 96/96 | 3/23 | 19/23 | 8/8 | 8/8 | 8/8 |
| OMS | 41/41 | 41/41 | 25/41 | 93/93 | 1/20 | 13/20 | 5/5 | 8/8 | 8/8 |
| PLS | 39/39 | 39/39 | 31/39 | 50/50 | 3/12 | 12/12 | 5/5 | 7/7 | 7/7 |
| RCS | 40/40 | 40/40 | 28/40 | 91/91 | 1/20 | 11/20 | 8/8 | 8/8 | 8/8 |
| STR | 37/37 | 37/37 | 22/37 | 51/51 | 1/11 | 11/11 | 6/6 | 7/7 | 7/7 |
| TPS | 20/20 | 20/20 | 15/20 | 16/16 | 3/3 | 3/3 | 5/5 | 3/3 | 3/3 |
| ET | 39/39 | 39/39 | 23/39 | 43/43 | 1/8 | 8/8 | — | 7/7 | 7/7 |
| SRB | 40/40 | 40/40 | 31/40 | 49/49 | 2/10 | 10/10 | — | 7/7 | 7/7 |
| 計 | 803/803（100%） | 803/803（100%） | 588/803（73%） | 2063/2063（100%） | 70/589（12%） | 482/589（82%） | 120/120（100%） | 206/206（100%） | 198/206（96%） |

## 7. 切れ目の分類

網羅していない要素を 12の分類に分けた。判断の欄：判断済み＝文書に理由がある、方針＝作り方による、範囲外＝今後の課題、未処理＝手を打つ候補。

| ID | 切れ目 | 判断 | 件数 | 説明 |
|---|---|---|---|---|
| GAP-01 | 検証の判定が pass でない要求 | 判断済み | 215 | 検証の根拠が見つからない要求（判定 inconclusive）。理由は各要求書の検証の節と SSD-VER-SYS-001 にある。 |
| GAP-02 | 要求なしで妥当と判断した機能行 | 判断済み | 138 | 系の全般の記述か、同じ下位機能の要求が受け持つ構成・運用の記述（各要求書の §5・§6）。 |
| GAP-03 | トレースの対象外の機能行 | 範囲外 | 10 | 要求書のトレース表の対象でない文書の機能行。ECLSS の第2段より下は Rev. BK で ECLSS 下位要求書（SSD-RQL-ECL-001）の対象にした。残りは要求書のトレースの対象の外の文書（外部系 SSD-FD-EXT-001 とオービタの親 SSD-FD-ORB-001）の行。 |
| GAP-04 | 要求の割付先でない IF | 方針 | 519 | 上位の IF（IF-SYS・IF-ORB）は Rev. BV でインタフェース要求書（SSD-IRQ-SYS-001）の要求の割付先にした。下位の IF（系の中の IF）は、要求を主に機能行に割り付けたため、IF そのものを割付先にした要求は少ない。下位の IF の要求は今後の課題。 |
| GAP-05 | 振る舞い・流れが通らない IF | 範囲外 | 107 | シーケンス図・内部ブロック図は代表のシナリオ・系だけを描いた。 |
| GAP-06 | 要求につながらない機器 | 未処理 | 0 | 機器に割り付けた機能行（系の機能説明書の行）が、どの要求の割付先でもない。要求の割付先に機器の機能行を足すか、機器の割付を下位の機能行に移すことが考えられる。 |
| GAP-07 | 故障解析の対応が無い機能ブロック | 範囲外 | 0 | IOA の CIL 課題のワークシートが無い系は [CIL] の規則だけで対応づけた（SSD-FMEA-ORB-001 §8）。ECLSS の下位の機能ブロック 43件は Rev. CC で、機能の故障モード（SSD-FMX-ECL-001）か判断済み（GAP-12）に区分した。 |
| GAP-08 | 振る舞いに現れない機能ブロック | 範囲外 | 8 | 活動図・状態機械・シーケンス図は代表の手順・系だけを描いた。 |
| GAP-09 | 既存の IF が無い流れ | 未処理 | 0 | 内部ブロック図の流れのうち、同じ機能ブロックの中の機器どうしでないもの（推力構造・船外・ペイロードなど）は新しい IF の候補。 |
| GAP-10 | 機器配分表に行が無い内部ブロック図の機器 | 未処理 | 0 | 内部ブロック図の機器のうち SSD-PHY-ORB-001 に行が無いもの。機器配分表に足す候補。 |
| GAP-11 | 機能ブロックの中の流れ（IF にしない） | 判断済み | 151 | 同じ機能ブロックの中の機器どうしの流れ。IF は機能ブロックの境界で定義するので、IF にしない（SSD-IBD-ORB-001 の IF との対応、Rev. AU）。 |
| GAP-12 | 故障モードが当てはまらないと判断した機能ブロック | 判断済み | 14 | 運用管理（OPS）・監視（MON）のブロックは機器を持たず、機器の故障モードが当てはまらない。理由は SSD-FMX-ECL-001 の「判断済みの機能ブロック」にある。 |

## 8. 切れ目の一覧

分類 GAP-01・GAP-06・GAP-09・GAP-10 の要素 215件を示す（SysML では各要素に TraceGap の metadata を付けた）。ほかの分類は件数が多いので §8 に系ごとの件数で示す。

| ID | 要素 | 種類 | 系 | 内容 |
|---|---|---|---|---|
| GAP-01-01 | VC-IRQ-ORB-28 | 検証ケース | — | IRQ-ORB-28 の検証（判定 inconclusive） |
| GAP-01-02 | VC-LRQ-APU-03 | 検証ケース | — | LRQ-APU-03 の検証（判定 inconclusive） |
| GAP-01-03 | VC-LRQ-APU-04 | 検証ケース | — | LRQ-APU-04 の検証（判定 inconclusive） |
| GAP-01-04 | VC-LRQ-APU-06 | 検証ケース | — | LRQ-APU-06 の検証（判定 inconclusive） |
| GAP-01-05 | VC-LRQ-APU-07 | 検証ケース | — | LRQ-APU-07 の検証（判定 inconclusive） |
| GAP-01-06 | VC-LRQ-APU-08 | 検証ケース | — | LRQ-APU-08 の検証（判定 inconclusive） |
| GAP-01-07 | VC-LRQ-APU-11 | 検証ケース | — | LRQ-APU-11 の検証（判定 inconclusive） |
| GAP-01-08 | VC-LRQ-APU-13 | 検証ケース | — | LRQ-APU-13 の検証（判定 inconclusive） |
| GAP-01-09 | VC-LRQ-APU-15 | 検証ケース | — | LRQ-APU-15 の検証（判定 inconclusive） |
| GAP-01-10 | VC-LRQ-APU-21 | 検証ケース | — | LRQ-APU-21 の検証（判定 inconclusive） |
| GAP-01-11 | VC-LRQ-APU-22 | 検証ケース | — | LRQ-APU-22 の検証（判定 inconclusive） |
| GAP-01-12 | VC-LRQ-CREW-01 | 検証ケース | — | LRQ-CREW-01 の検証（判定 inconclusive） |
| GAP-01-13 | VC-LRQ-CREW-02 | 検証ケース | — | LRQ-CREW-02 の検証（判定 inconclusive） |
| GAP-01-14 | VC-LRQ-CREW-06 | 検証ケース | — | LRQ-CREW-06 の検証（判定 inconclusive） |
| GAP-01-15 | VC-LRQ-CREW-07 | 検証ケース | — | LRQ-CREW-07 の検証（判定 inconclusive） |
| GAP-01-16 | VC-LRQ-CREW-10 | 検証ケース | — | LRQ-CREW-10 の検証（判定 inconclusive） |
| GAP-01-17 | VC-LRQ-CREW-12 | 検証ケース | — | LRQ-CREW-12 の検証（判定 inconclusive） |
| GAP-01-18 | VC-LRQ-CREW-13 | 検証ケース | — | LRQ-CREW-13 の検証（判定 inconclusive） |
| GAP-01-19 | VC-LRQ-CREW-16 | 検証ケース | — | LRQ-CREW-16 の検証（判定 inconclusive） |
| GAP-01-20 | VC-LRQ-CREW-18 | 検証ケース | — | LRQ-CREW-18 の検証（判定 inconclusive） |
| GAP-01-21 | VC-LRQ-CREW-21 | 検証ケース | — | LRQ-CREW-21 の検証（判定 inconclusive） |
| GAP-01-22 | VC-LRQ-CREW-23 | 検証ケース | — | LRQ-CREW-23 の検証（判定 inconclusive） |
| GAP-01-23 | VC-LRQ-CREW-24 | 検証ケース | — | LRQ-CREW-24 の検証（判定 inconclusive） |
| GAP-01-24 | VC-LRQ-CREW-25 | 検証ケース | — | LRQ-CREW-25 の検証（判定 inconclusive） |
| GAP-01-25 | VC-LRQ-CREW-26 | 検証ケース | — | LRQ-CREW-26 の検証（判定 inconclusive） |
| GAP-01-26 | VC-LRQ-CREW-27 | 検証ケース | — | LRQ-CREW-27 の検証（判定 inconclusive） |
| GAP-01-27 | VC-LRQ-CREW-28 | 検証ケース | — | LRQ-CREW-28 の検証（判定 inconclusive） |
| GAP-01-28 | VC-LRQ-CREW-29 | 検証ケース | — | LRQ-CREW-29 の検証（判定 inconclusive） |
| GAP-01-29 | VC-LRQ-CREW-30 | 検証ケース | — | LRQ-CREW-30 の検証（判定 inconclusive） |
| GAP-01-30 | VC-LRQ-CT-01 | 検証ケース | — | LRQ-CT-01 の検証（判定 inconclusive） |
| GAP-01-31 | VC-LRQ-CT-03 | 検証ケース | — | LRQ-CT-03 の検証（判定 inconclusive） |
| GAP-01-32 | VC-LRQ-CT-04 | 検証ケース | — | LRQ-CT-04 の検証（判定 inconclusive） |
| GAP-01-33 | VC-LRQ-CT-08 | 検証ケース | — | LRQ-CT-08 の検証（判定 inconclusive） |
| GAP-01-34 | VC-LRQ-CT-12 | 検証ケース | — | LRQ-CT-12 の検証（判定 inconclusive） |
| GAP-01-35 | VC-LRQ-CT-14 | 検証ケース | — | LRQ-CT-14 の検証（判定 inconclusive） |
| GAP-01-36 | VC-LRQ-CT-15 | 検証ケース | — | LRQ-CT-15 の検証（判定 inconclusive） |
| GAP-01-37 | VC-LRQ-CT-18 | 検証ケース | — | LRQ-CT-18 の検証（判定 inconclusive） |
| GAP-01-38 | VC-LRQ-CT-20 | 検証ケース | — | LRQ-CT-20 の検証（判定 inconclusive） |
| GAP-01-39 | VC-LRQ-CT-22 | 検証ケース | — | LRQ-CT-22 の検証（判定 inconclusive） |
| GAP-01-40 | VC-LRQ-CW-01 | 検証ケース | — | LRQ-CW-01 の検証（判定 inconclusive） |
| GAP-01-41 | VC-LRQ-CW-02 | 検証ケース | — | LRQ-CW-02 の検証（判定 inconclusive） |
| GAP-01-42 | VC-LRQ-CW-04 | 検証ケース | — | LRQ-CW-04 の検証（判定 inconclusive） |
| GAP-01-43 | VC-LRQ-CW-07 | 検証ケース | — | LRQ-CW-07 の検証（判定 inconclusive） |
| GAP-01-44 | VC-LRQ-CW-08 | 検証ケース | — | LRQ-CW-08 の検証（判定 inconclusive） |
| GAP-01-45 | VC-LRQ-CW-09 | 検証ケース | — | LRQ-CW-09 の検証（判定 inconclusive） |
| GAP-01-46 | VC-LRQ-CW-11 | 検証ケース | — | LRQ-CW-11 の検証（判定 inconclusive） |
| GAP-01-47 | VC-LRQ-CW-12 | 検証ケース | — | LRQ-CW-12 の検証（判定 inconclusive） |
| GAP-01-48 | VC-LRQ-CW-13 | 検証ケース | — | LRQ-CW-13 の検証（判定 inconclusive） |
| GAP-01-49 | VC-LRQ-CW-14 | 検証ケース | — | LRQ-CW-14 の検証（判定 inconclusive） |
| GAP-01-50 | VC-LRQ-CW-16 | 検証ケース | — | LRQ-CW-16 の検証（判定 inconclusive） |
| GAP-01-51 | VC-LRQ-CW-17 | 検証ケース | — | LRQ-CW-17 の検証（判定 inconclusive） |
| GAP-01-52 | VC-LRQ-CW-18 | 検証ケース | — | LRQ-CW-18 の検証（判定 inconclusive） |
| GAP-01-53 | VC-LRQ-CW-22 | 検証ケース | — | LRQ-CW-22 の検証（判定 inconclusive） |
| GAP-01-54 | VC-LRQ-DPS-03 | 検証ケース | — | LRQ-DPS-03 の検証（判定 inconclusive） |
| GAP-01-55 | VC-LRQ-DPS-04 | 検証ケース | — | LRQ-DPS-04 の検証（判定 inconclusive） |
| GAP-01-56 | VC-LRQ-DPS-07 | 検証ケース | — | LRQ-DPS-07 の検証（判定 inconclusive） |
| GAP-01-57 | VC-LRQ-DPS-08 | 検証ケース | — | LRQ-DPS-08 の検証（判定 inconclusive） |
| GAP-01-58 | VC-LRQ-DPS-10 | 検証ケース | — | LRQ-DPS-10 の検証（判定 inconclusive） |
| GAP-01-59 | VC-LRQ-DPS-13 | 検証ケース | — | LRQ-DPS-13 の検証（判定 inconclusive） |
| GAP-01-60 | VC-LRQ-DPS-14 | 検証ケース | — | LRQ-DPS-14 の検証（判定 inconclusive） |
| GAP-01-61 | VC-LRQ-DPS-15 | 検証ケース | — | LRQ-DPS-15 の検証（判定 inconclusive） |
| GAP-01-62 | VC-LRQ-DPS-17 | 検証ケース | — | LRQ-DPS-17 の検証（判定 inconclusive） |
| GAP-01-63 | VC-LRQ-DPS-18 | 検証ケース | — | LRQ-DPS-18 の検証（判定 inconclusive） |
| GAP-01-64 | VC-LRQ-DPS-20 | 検証ケース | — | LRQ-DPS-20 の検証（判定 inconclusive） |
| GAP-01-65 | VC-LRQ-DPS-22 | 検証ケース | — | LRQ-DPS-22 の検証（判定 inconclusive） |
| GAP-01-66 | VC-LRQ-DPS-23 | 検証ケース | — | LRQ-DPS-23 の検証（判定 inconclusive） |
| GAP-01-67 | VC-LRQ-DPS-25 | 検証ケース | — | LRQ-DPS-25 の検証（判定 inconclusive） |
| GAP-01-68 | VC-LRQ-DPS-29 | 検証ケース | — | LRQ-DPS-29 の検証（判定 inconclusive） |
| GAP-01-69 | VC-LRQ-DPS-30 | 検証ケース | — | LRQ-DPS-30 の検証（判定 inconclusive） |
| GAP-01-70 | VC-LRQ-EPS-01 | 検証ケース | — | LRQ-EPS-01 の検証（判定 inconclusive） |
| GAP-01-71 | VC-LRQ-EPS-02 | 検証ケース | — | LRQ-EPS-02 の検証（判定 inconclusive） |
| GAP-01-72 | VC-LRQ-EPS-04 | 検証ケース | — | LRQ-EPS-04 の検証（判定 inconclusive） |
| GAP-01-73 | VC-LRQ-EPS-08 | 検証ケース | — | LRQ-EPS-08 の検証（判定 inconclusive） |
| GAP-01-74 | VC-LRQ-EPS-09 | 検証ケース | — | LRQ-EPS-09 の検証（判定 inconclusive） |
| GAP-01-75 | VC-LRQ-EPS-10 | 検証ケース | — | LRQ-EPS-10 の検証（判定 inconclusive） |
| GAP-01-76 | VC-LRQ-EPS-11 | 検証ケース | — | LRQ-EPS-11 の検証（判定 inconclusive） |
| GAP-01-77 | VC-LRQ-EPS-12 | 検証ケース | — | LRQ-EPS-12 の検証（判定 inconclusive） |
| GAP-01-78 | VC-LRQ-EPS-15 | 検証ケース | — | LRQ-EPS-15 の検証（判定 inconclusive） |
| GAP-01-79 | VC-LRQ-EPS-18 | 検証ケース | — | LRQ-EPS-18 の検証（判定 inconclusive） |
| GAP-01-80 | VC-LRQ-ET-01 | 検証ケース | — | LRQ-ET-01 の検証（判定 inconclusive） |
| GAP-01-81 | VC-LRQ-ET-03 | 検証ケース | — | LRQ-ET-03 の検証（判定 inconclusive） |
| GAP-01-82 | VC-LRQ-ET-04 | 検証ケース | — | LRQ-ET-04 の検証（判定 inconclusive） |
| GAP-01-83 | VC-LRQ-ET-05 | 検証ケース | — | LRQ-ET-05 の検証（判定 inconclusive） |
| GAP-01-84 | VC-LRQ-ET-07 | 検証ケース | — | LRQ-ET-07 の検証（判定 inconclusive） |
| GAP-01-85 | VC-LRQ-ET-09 | 検証ケース | — | LRQ-ET-09 の検証（判定 inconclusive） |
| GAP-01-86 | VC-LRQ-ET-10 | 検証ケース | — | LRQ-ET-10 の検証（判定 inconclusive） |
| GAP-01-87 | VC-LRQ-ET-11 | 検証ケース | — | LRQ-ET-11 の検証（判定 inconclusive） |
| GAP-01-88 | VC-LRQ-ET-12 | 検証ケース | — | LRQ-ET-12 の検証（判定 inconclusive） |
| GAP-01-89 | VC-LRQ-ET-13 | 検証ケース | — | LRQ-ET-13 の検証（判定 inconclusive） |
| GAP-01-90 | VC-LRQ-ET-15 | 検証ケース | — | LRQ-ET-15 の検証（判定 inconclusive） |
| GAP-01-91 | VC-LRQ-ET-16 | 検証ケース | — | LRQ-ET-16 の検証（判定 inconclusive） |
| GAP-01-92 | VC-LRQ-ET-20 | 検証ケース | — | LRQ-ET-20 の検証（判定 inconclusive） |
| GAP-01-93 | VC-LRQ-ET-24 | 検証ケース | — | LRQ-ET-24 の検証（判定 inconclusive） |
| GAP-01-94 | VC-LRQ-ET-25 | 検証ケース | — | LRQ-ET-25 の検証（判定 inconclusive） |
| GAP-01-95 | VC-LRQ-ET-27 | 検証ケース | — | LRQ-ET-27 の検証（判定 inconclusive） |
| GAP-01-96 | VC-LRQ-EVA-02 | 検証ケース | — | LRQ-EVA-02 の検証（判定 inconclusive） |
| GAP-01-97 | VC-LRQ-EVA-04 | 検証ケース | — | LRQ-EVA-04 の検証（判定 inconclusive） |
| GAP-01-98 | VC-LRQ-EVA-08 | 検証ケース | — | LRQ-EVA-08 の検証（判定 inconclusive） |
| GAP-01-99 | VC-LRQ-EVA-10 | 検証ケース | — | LRQ-EVA-10 の検証（判定 inconclusive） |
| GAP-01-100 | VC-LRQ-EVA-11 | 検証ケース | — | LRQ-EVA-11 の検証（判定 inconclusive） |
| GAP-01-101 | VC-LRQ-EVA-12 | 検証ケース | — | LRQ-EVA-12 の検証（判定 inconclusive） |
| GAP-01-102 | VC-LRQ-EVA-13 | 検証ケース | — | LRQ-EVA-13 の検証（判定 inconclusive） |
| GAP-01-103 | VC-LRQ-EVA-15 | 検証ケース | — | LRQ-EVA-15 の検証（判定 inconclusive） |
| GAP-01-104 | VC-LRQ-EVA-18 | 検証ケース | — | LRQ-EVA-18 の検証（判定 inconclusive） |
| GAP-01-105 | VC-LRQ-EVA-19 | 検証ケース | — | LRQ-EVA-19 の検証（判定 inconclusive） |
| GAP-01-106 | VC-LRQ-EVA-22 | 検証ケース | — | LRQ-EVA-22 の検証（判定 inconclusive） |
| GAP-01-107 | VC-LRQ-EVA-23 | 検証ケース | — | LRQ-EVA-23 の検証（判定 inconclusive） |
| GAP-01-108 | VC-LRQ-EVA-24 | 検証ケース | — | LRQ-EVA-24 の検証（判定 inconclusive） |
| GAP-01-109 | VC-LRQ-EVA-25 | 検証ケース | — | LRQ-EVA-25 の検証（判定 inconclusive） |
| GAP-01-110 | VC-LRQ-EVA-26 | 検証ケース | — | LRQ-EVA-26 の検証（判定 inconclusive） |
| GAP-01-111 | VC-LRQ-EVA-29 | 検証ケース | — | LRQ-EVA-29 の検証（判定 inconclusive） |
| GAP-01-112 | VC-LRQ-GNC-02 | 検証ケース | — | LRQ-GNC-02 の検証（判定 inconclusive） |
| GAP-01-113 | VC-LRQ-GNC-07 | 検証ケース | — | LRQ-GNC-07 の検証（判定 inconclusive） |
| GAP-01-114 | VC-LRQ-GNC-21 | 検証ケース | — | LRQ-GNC-21 の検証（判定 inconclusive） |
| GAP-01-115 | VC-LRQ-GNC-25 | 検証ケース | — | LRQ-GNC-25 の検証（判定 inconclusive） |
| GAP-01-116 | VC-LRQ-GNC-27 | 検証ケース | — | LRQ-GNC-27 の検証（判定 inconclusive） |
| GAP-01-117 | VC-LRQ-MECH-02 | 検証ケース | — | LRQ-MECH-02 の検証（判定 inconclusive） |
| GAP-01-118 | VC-LRQ-MECH-03 | 検証ケース | — | LRQ-MECH-03 の検証（判定 inconclusive） |
| GAP-01-119 | VC-LRQ-MECH-08 | 検証ケース | — | LRQ-MECH-08 の検証（判定 inconclusive） |
| GAP-01-120 | VC-LRQ-MECH-09 | 検証ケース | — | LRQ-MECH-09 の検証（判定 inconclusive） |
| GAP-01-121 | VC-LRQ-MECH-11 | 検証ケース | — | LRQ-MECH-11 の検証（判定 inconclusive） |
| GAP-01-122 | VC-LRQ-MECH-12 | 検証ケース | — | LRQ-MECH-12 の検証（判定 inconclusive） |
| GAP-01-123 | VC-LRQ-MECH-14 | 検証ケース | — | LRQ-MECH-14 の検証（判定 inconclusive） |
| GAP-01-124 | VC-LRQ-MECH-17 | 検証ケース | — | LRQ-MECH-17 の検証（判定 inconclusive） |
| GAP-01-125 | VC-LRQ-MECH-18 | 検証ケース | — | LRQ-MECH-18 の検証（判定 inconclusive） |
| GAP-01-126 | VC-LRQ-MECH-19 | 検証ケース | — | LRQ-MECH-19 の検証（判定 inconclusive） |
| GAP-01-127 | VC-LRQ-MECH-22 | 検証ケース | — | LRQ-MECH-22 の検証（判定 inconclusive） |
| GAP-01-128 | VC-LRQ-MECH-23 | 検証ケース | — | LRQ-MECH-23 の検証（判定 inconclusive） |
| GAP-01-129 | VC-LRQ-MPS-01 | 検証ケース | — | LRQ-MPS-01 の検証（判定 inconclusive） |
| GAP-01-130 | VC-LRQ-MPS-02 | 検証ケース | — | LRQ-MPS-02 の検証（判定 inconclusive） |
| GAP-01-131 | VC-LRQ-MPS-06 | 検証ケース | — | LRQ-MPS-06 の検証（判定 inconclusive） |
| GAP-01-132 | VC-LRQ-MPS-09 | 検証ケース | — | LRQ-MPS-09 の検証（判定 inconclusive） |
| GAP-01-133 | VC-LRQ-MPS-14 | 検証ケース | — | LRQ-MPS-14 の検証（判定 inconclusive） |
| GAP-01-134 | VC-LRQ-MPS-15 | 検証ケース | — | LRQ-MPS-15 の検証（判定 inconclusive） |
| GAP-01-135 | VC-LRQ-MPS-16 | 検証ケース | — | LRQ-MPS-16 の検証（判定 inconclusive） |
| GAP-01-136 | VC-LRQ-MPS-17 | 検証ケース | — | LRQ-MPS-17 の検証（判定 inconclusive） |
| GAP-01-137 | VC-LRQ-MPS-19 | 検証ケース | — | LRQ-MPS-19 の検証（判定 inconclusive） |
| GAP-01-138 | VC-LRQ-MPS-26 | 検証ケース | — | LRQ-MPS-26 の検証（判定 inconclusive） |
| GAP-01-139 | VC-LRQ-MPS-27 | 検証ケース | — | LRQ-MPS-27 の検証（判定 inconclusive） |
| GAP-01-140 | VC-LRQ-MPS-29 | 検証ケース | — | LRQ-MPS-29 の検証（判定 inconclusive） |
| GAP-01-141 | VC-LRQ-OMS-01 | 検証ケース | — | LRQ-OMS-01 の検証（判定 inconclusive） |
| GAP-01-142 | VC-LRQ-OMS-03 | 検証ケース | — | LRQ-OMS-03 の検証（判定 inconclusive） |
| GAP-01-143 | VC-LRQ-OMS-04 | 検証ケース | — | LRQ-OMS-04 の検証（判定 inconclusive） |
| GAP-01-144 | VC-LRQ-OMS-05 | 検証ケース | — | LRQ-OMS-05 の検証（判定 inconclusive） |
| GAP-01-145 | VC-LRQ-OMS-06 | 検証ケース | — | LRQ-OMS-06 の検証（判定 inconclusive） |
| GAP-01-146 | VC-LRQ-OMS-08 | 検証ケース | — | LRQ-OMS-08 の検証（判定 inconclusive） |
| GAP-01-147 | VC-LRQ-OMS-10 | 検証ケース | — | LRQ-OMS-10 の検証（判定 inconclusive） |
| GAP-01-148 | VC-LRQ-OMS-11 | 検証ケース | — | LRQ-OMS-11 の検証（判定 inconclusive） |
| GAP-01-149 | VC-LRQ-OMS-12 | 検証ケース | — | LRQ-OMS-12 の検証（判定 inconclusive） |
| GAP-01-150 | VC-LRQ-OMS-13 | 検証ケース | — | LRQ-OMS-13 の検証（判定 inconclusive） |
| GAP-01-151 | VC-LRQ-OMS-16 | 検証ケース | — | LRQ-OMS-16 の検証（判定 inconclusive） |
| GAP-01-152 | VC-LRQ-OMS-18 | 検証ケース | — | LRQ-OMS-18 の検証（判定 inconclusive） |
| GAP-01-153 | VC-LRQ-OMS-21 | 検証ケース | — | LRQ-OMS-21 の検証（判定 inconclusive） |
| GAP-01-154 | VC-LRQ-OMS-24 | 検証ケース | — | LRQ-OMS-24 の検証（判定 inconclusive） |
| GAP-01-155 | VC-LRQ-OMS-27 | 検証ケース | — | LRQ-OMS-27 の検証（判定 inconclusive） |
| GAP-01-156 | VC-LRQ-OMS-29 | 検証ケース | — | LRQ-OMS-29 の検証（判定 inconclusive） |
| GAP-01-157 | VC-LRQ-PLS-03 | 検証ケース | — | LRQ-PLS-03 の検証（判定 inconclusive） |
| GAP-01-158 | VC-LRQ-PLS-06 | 検証ケース | — | LRQ-PLS-06 の検証（判定 inconclusive） |
| GAP-01-159 | VC-LRQ-PLS-10 | 検証ケース | — | LRQ-PLS-10 の検証（判定 inconclusive） |
| GAP-01-160 | VC-LRQ-PLS-14 | 検証ケース | — | LRQ-PLS-14 の検証（判定 inconclusive） |
| GAP-01-161 | VC-LRQ-PLS-19 | 検証ケース | — | LRQ-PLS-19 の検証（判定 inconclusive） |
| GAP-01-162 | VC-LRQ-PLS-21 | 検証ケース | — | LRQ-PLS-21 の検証（判定 inconclusive） |
| GAP-01-163 | VC-LRQ-PLS-24 | 検証ケース | — | LRQ-PLS-24 の検証（判定 inconclusive） |
| GAP-01-164 | VC-LRQ-PLS-25 | 検証ケース | — | LRQ-PLS-25 の検証（判定 inconclusive） |
| GAP-01-165 | VC-LRQ-RCS-01 | 検証ケース | — | LRQ-RCS-01 の検証（判定 inconclusive） |
| GAP-01-166 | VC-LRQ-RCS-02 | 検証ケース | — | LRQ-RCS-02 の検証（判定 inconclusive） |
| GAP-01-167 | VC-LRQ-RCS-04 | 検証ケース | — | LRQ-RCS-04 の検証（判定 inconclusive） |
| GAP-01-168 | VC-LRQ-RCS-05 | 検証ケース | — | LRQ-RCS-05 の検証（判定 inconclusive） |
| GAP-01-169 | VC-LRQ-RCS-07 | 検証ケース | — | LRQ-RCS-07 の検証（判定 inconclusive） |
| GAP-01-170 | VC-LRQ-RCS-17 | 検証ケース | — | LRQ-RCS-17 の検証（判定 inconclusive） |
| GAP-01-171 | VC-LRQ-RCS-19 | 検証ケース | — | LRQ-RCS-19 の検証（判定 inconclusive） |
| GAP-01-172 | VC-LRQ-RCS-20 | 検証ケース | — | LRQ-RCS-20 の検証（判定 inconclusive） |
| GAP-01-173 | VC-LRQ-RCS-23 | 検証ケース | — | LRQ-RCS-23 の検証（判定 inconclusive） |
| GAP-01-174 | VC-LRQ-RCS-25 | 検証ケース | — | LRQ-RCS-25 の検証（判定 inconclusive） |
| GAP-01-175 | VC-LRQ-RCS-27 | 検証ケース | — | LRQ-RCS-27 の検証（判定 inconclusive） |
| GAP-01-176 | VC-LRQ-RCS-30 | 検証ケース | — | LRQ-RCS-30 の検証（判定 inconclusive） |
| GAP-01-177 | VC-LRQ-SRB-02 | 検証ケース | — | LRQ-SRB-02 の検証（判定 inconclusive） |
| GAP-01-178 | VC-LRQ-SRB-05 | 検証ケース | — | LRQ-SRB-05 の検証（判定 inconclusive） |
| GAP-01-179 | VC-LRQ-SRB-06 | 検証ケース | — | LRQ-SRB-06 の検証（判定 inconclusive） |
| GAP-01-180 | VC-LRQ-SRB-07 | 検証ケース | — | LRQ-SRB-07 の検証（判定 inconclusive） |
| GAP-01-181 | VC-LRQ-SRB-12 | 検証ケース | — | LRQ-SRB-12 の検証（判定 inconclusive） |
| GAP-01-182 | VC-LRQ-SRB-13 | 検証ケース | — | LRQ-SRB-13 の検証（判定 inconclusive） |
| GAP-01-183 | VC-LRQ-SRB-23 | 検証ケース | — | LRQ-SRB-23 の検証（判定 inconclusive） |
| GAP-01-184 | VC-LRQ-SRB-24 | 検証ケース | — | LRQ-SRB-24 の検証（判定 inconclusive） |
| GAP-01-185 | VC-LRQ-SRB-28 | 検証ケース | — | LRQ-SRB-28 の検証（判定 inconclusive） |
| GAP-01-186 | VC-LRQ-STR-01 | 検証ケース | — | LRQ-STR-01 の検証（判定 inconclusive） |
| GAP-01-187 | VC-LRQ-STR-02 | 検証ケース | — | LRQ-STR-02 の検証（判定 inconclusive） |
| GAP-01-188 | VC-LRQ-STR-04 | 検証ケース | — | LRQ-STR-04 の検証（判定 inconclusive） |
| GAP-01-189 | VC-LRQ-STR-08 | 検証ケース | — | LRQ-STR-08 の検証（判定 inconclusive） |
| GAP-01-190 | VC-LRQ-STR-09 | 検証ケース | — | LRQ-STR-09 の検証（判定 inconclusive） |
| GAP-01-191 | VC-LRQ-STR-11 | 検証ケース | — | LRQ-STR-11 の検証（判定 inconclusive） |
| GAP-01-192 | VC-LRQ-STR-12 | 検証ケース | — | LRQ-STR-12 の検証（判定 inconclusive） |
| GAP-01-193 | VC-LRQ-STR-14 | 検証ケース | — | LRQ-STR-14 の検証（判定 inconclusive） |
| GAP-01-194 | VC-LRQ-STR-15 | 検証ケース | — | LRQ-STR-15 の検証（判定 inconclusive） |
| GAP-01-195 | VC-LRQ-STR-17 | 検証ケース | — | LRQ-STR-17 の検証（判定 inconclusive） |
| GAP-01-196 | VC-LRQ-STR-20 | 検証ケース | — | LRQ-STR-20 の検証（判定 inconclusive） |
| GAP-01-197 | VC-LRQ-STR-21 | 検証ケース | — | LRQ-STR-21 の検証（判定 inconclusive） |
| GAP-01-198 | VC-LRQ-STR-22 | 検証ケース | — | LRQ-STR-22 の検証（判定 inconclusive） |
| GAP-01-199 | VC-LRQ-STR-23 | 検証ケース | — | LRQ-STR-23 の検証（判定 inconclusive） |
| GAP-01-200 | VC-LRQ-STR-24 | 検証ケース | — | LRQ-STR-24 の検証（判定 inconclusive） |
| GAP-01-201 | VC-LRQ-TPS-01 | 検証ケース | — | LRQ-TPS-01 の検証（判定 inconclusive） |
| GAP-01-202 | VC-LRQ-TPS-02 | 検証ケース | — | LRQ-TPS-02 の検証（判定 inconclusive） |
| GAP-01-203 | VC-LRQ-TPS-06 | 検証ケース | — | LRQ-TPS-06 の検証（判定 inconclusive） |
| GAP-01-204 | VC-LRQ-TPS-08 | 検証ケース | — | LRQ-TPS-08 の検証（判定 inconclusive） |
| GAP-01-205 | VC-LRQ-TPS-10 | 検証ケース | — | LRQ-TPS-10 の検証（判定 inconclusive） |
| GAP-01-206 | VC-REQ-ARS-08 | 検証ケース | — | REQ-ARS-08 の検証（判定 inconclusive） |
| GAP-01-207 | VC-REQ-ARS-15 | 検証ケース | — | REQ-ARS-15 の検証（判定 inconclusive） |
| GAP-01-208 | VC-REQ-ARS-17 | 検証ケース | — | REQ-ARS-17 の検証（判定 inconclusive） |
| GAP-01-209 | VC-REQ-ARS-27 | 検証ケース | — | REQ-ARS-27 の検証（判定 inconclusive） |
| GAP-01-210 | VC-REQ-ARS-41 | 検証ケース | — | REQ-ARS-41 の検証（判定 inconclusive） |
| GAP-01-211 | VC-REQ-FDS-08 | 検証ケース | — | REQ-FDS-08 の検証（判定 inconclusive） |
| GAP-01-212 | VC-REQ-PCS-08 | 検証ケース | — | REQ-PCS-08 の検証（判定 inconclusive） |
| GAP-01-213 | VC-REQ-PCS-12 | 検証ケース | — | REQ-PCS-12 の検証（判定 inconclusive） |
| GAP-01-214 | VC-REQ-WCS-08 | 検証ケース | — | REQ-WCS-08 の検証（判定 inconclusive） |
| GAP-01-215 | VC-REQ-WCS-10 | 検証ケース | — | REQ-WCS-10 の検証（判定 inconclusive） |

## 9. 系ごとの切れ目の件数

一覧に載せない分類の、系ごとの件数を示す。

| 系 | GAP-02 要求なしで妥当と判断した機能行 | GAP-03 トレースの対象外の機能行 | GAP-04 要求の割付先でない IF | GAP-05 振る舞い・流れが通らない IF | GAP-07 故障解析の対応が無い機能ブロック | GAP-08 振る舞いに現れない機能ブロック | GAP-11 機能ブロックの中の流れ（IF にしない） | GAP-12 故障モードが当てはまらないと判断した機能ブロック |
|---|---|---|---|---|---|---|---|---|
| APU | 7 | 0 | 23 | 7 | 0 | 0 | 0 | 0 |
| CREW | 5 | 0 | 11 | 0 | 0 | 0 | 0 | 0 |
| CT | 7 | 0 | 23 | 3 | 0 | 0 | 0 | 0 |
| CW | 4 | 0 | 8 | 0 | 0 | 0 | 0 | 0 |
| DPS | 10 | 0 | 17 | 4 | 0 | 1 | 0 | 0 |
| ECLSS | 29 | 0 | 289 | 57 | 0 | 7 | 0 | 14 |
| EPS | 1 | 0 | 15 | 4 | 0 | 0 | 0 | 0 |
| EVA | 14 | 0 | 12 | 12 | 0 | 0 | 0 | 0 |
| GNC | 11 | 0 | 19 | 0 | 0 | 0 | 0 | 0 |
| MECH | 8 | 0 | 10 | 0 | 0 | 0 | 0 | 0 |
| MPS | 7 | 0 | 20 | 4 | 0 | 0 | 0 | 0 |
| OMS | 8 | 0 | 19 | 7 | 0 | 0 | 0 | 0 |
| PLS | 7 | 0 | 9 | 0 | 0 | 0 | 0 | 0 |
| RCS | 10 | 0 | 19 | 9 | 0 | 0 | 0 | 0 |
| STR | 5 | 0 | 10 | 0 | 0 | 0 | 0 | 0 |
| TPS | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| ET | 3 | 0 | 7 | 0 | 0 | 0 | 0 | 0 |
| SRB | 2 | 0 | 8 | 0 | 0 | 0 | 0 | 0 |
| 計 | 138 | 10 | 519 | 107 | 0 | 8 | 151 | 14 |

## 10. 影響分析の方法

機器を起点に、次の順で関係を辿った要素を影響の範囲とする。辿るのは1回ずつで、同じ系のほかの機器や、IF の相手の系の中へは広げない。

| 順 | 辿る関係 | 内容 |
|---|---|---|
| 1 | 機器 → 区画 | 機器を置いた区画（TR-07） |
| 2 | 機器 → 機能行 | 機器に割り付けた機能行（TR-06）と、内部ブロック図でその機器を置いた下位の機能ブロックの機能行（TR-16・TR-17・TR-04） |
| 3 | 機器 → 流れ → IF | 内部ブロック図でその機器を端に持つ流れ（TR-15）と、流れが詳しくする IF（TR-14） |
| 4 | 機能行・IF → 要求 | 機能行・IF を割付先にする要求（TR-02 を逆に）と、その L2 の上位の L1（TR-01 を逆に） |
| 5 | 要求 → 検証 | 要求の検証ケース（TR-03） |
| 6 | 機能行・IF → 故障解析・振る舞い | 故障解析表の行（TR-08）、活動図の行動（TR-10）、メッセージ（TR-12） |
| 7 | 機能ブロック → 規則・状態機械 | 機能説明書に対応する [CIL] の規則（TR-09）と状態機械（TR-13） |

## 11. 影響分析の結果

影響分析の例 5件（機器の変更）の、種類ごとの要素の数を示す。要素は §11〜§15 に示す。

| ID | 起点の機器 | 変更の例 | 機器 | 区画 | 機能行 | 内部ブロック図の機器 | 流れ | 機能説明書 | IF | L2 要求 | L1 要求 | 検証ケース | 故障解析表の行 | [CIL] の規則 | 活動図の行動 | 状態機械 |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| IMP-01 | PHY-EPS-01（燃料電池発電装置（FC）） | 燃料電池発電装置の変更（例：出力・冷却の仕様変更） | 1 | 1 | 11 | 3 | 23 | 2 | 9 | 15 | 10 | 21 | 16 | 0 | 7 | 1 |
| IMP-02 | PHY-ECLSS-04（能動熱制御系（ATCS）フレオン冷却ループのポンプパッケージ（フレオンポンプ・アキュムレータ）とフレオン／水熱交換器） | フレオン冷却ループのポンプパッケージ・インターチェンジャの変更 | 1 | 1 | 25 | 3 | 9 | 4 | 4 | 8 | 8 | 14 | 7 | 0 | 0 | 0 |
| IMP-03 | PHY-MPS-05（MPSヘリウムタンク（He供給タンク）） | MPS ヘリウムタンクの変更（例：容量・圧力） | 1 | 1 | 14 | 2 | 5 | 2 | 4 | 6 | 7 | 12 | 74 | 2 | 3 | 1 |
| IMP-04 | PHY-DPS-01（GPC（汎用計算機、IBM AP-101S）） | GPC（汎用計算機）の変更 | 1 | 1 | 16 | 1 | 11 | 2 | 4 | 10 | 10 | 18 | 4 | 0 | 0 | 1 |
| IMP-05 | PHY-ECLSS-01（大気再生系（ARS）の床下機器：キャビンファン・キャビン熱交換器・水酸化リチウム（LiOH）キャニスタ・水冷却ループ水ポンプ） | ARS 床下機器（キャビンファン・熱交換器・LiOH キャニスタ）の変更 | 1 | 1 | 105 | 10 | 27 | 10 | 34 | 28 | 10 | 36 | 25 | 0 | 12 | 0 |

## 12. IMP-01 の影響の範囲

燃料電池発電装置の変更（例：出力・冷却の仕様変更）。起点は PHY-EPS-01。

| 種類 | 件数 | 要素 |
|---|---|---|
| 機器 | 1 | PHY-EPS-01 |
| 区画 | 1 | mid |
| 機能行 | 11 | F-EPS-01・F-EPS-03・F-EPS-04・F-EPS-FCP-01・F-EPS-FCP-02・F-EPS-FCP-03・F-EPS-FCP-04・F-EPS-FCP-05・F-EPS-FCP-06・F-EPS-FCP-07・F-EPS-FCP-08 |
| 内部ブロック図の機器 | 3 | EQ-EPS-05・EQ-EPS-06・EQ-EPS-07 |
| 流れ | 23 | FL-EPS-05・FL-EPS-06・FL-EPS-07・FL-EPS-08・FL-EPS-09・FL-EPS-10・FL-EPS-12・FL-EPS-13・FL-EPS-14・FL-EPS-15・FL-EPS-16・FL-EPS-17・FL-EPS-18・FL-EPS-19・FL-EPS-20・FL-EPS-21・FL-EPS-22・FL-EPS-28・FL-EPS-29・FL-EPS-30・FL-EPS-40・FL-EPS-41・FL-EPS-42 |
| 機能説明書 | 2 | SSD-FD-EPS-001・SSD-FD-EPS-FCP-001 |
| IF | 9 | IF-ECL-10・IF-EPS-03・IF-EPS-05・IF-EPS-06・IF-EPS-07・IF-EPS-08・IF-EPS-09・IF-EPS-13・IF-EPS-16 |
| L2 要求 | 15 | LRQ-EPS-05・LRQ-EPS-06・LRQ-EPS-07・LRQ-EPS-08・LRQ-EPS-09・REQ-EPS-01・REQ-EPS-02・REQ-EPS-03・REQ-EPS-04・REQ-EPS-05・REQ-EPS-14・REQ-EPS-15・REQ-EPS-16・REQ-EPS-18・REQ-EPS-20 |
| L1 要求 | 10 | REQ-EPS-03・REQ-EPS-07・REQ-EPS-15・REQ-EPS-16・REQ-EPS-20・REQ-SYS-04・REQ-SYS-07・REQ-SYS-10・REQ-SYS-14・REQ-SYS-16 |
| 検証ケース | 21 | VC-LRQ-EPS-05・VC-LRQ-EPS-06・VC-LRQ-EPS-07・VC-LRQ-EPS-08・VC-LRQ-EPS-09・VC-REQ-EPS-01・VC-REQ-EPS-02・VC-REQ-EPS-03・VC-REQ-EPS-04・VC-REQ-EPS-05・VC-REQ-EPS-07・VC-REQ-EPS-14・VC-REQ-EPS-15・VC-REQ-EPS-16・VC-REQ-EPS-18・VC-REQ-EPS-20・VC-REQ-SYS-04・VC-REQ-SYS-07・VC-REQ-SYS-10・VC-REQ-SYS-14・VC-REQ-SYS-16 |
| 故障解析表の行 | 16 | CIL-EPS-01・CIL-EPS-02・CIL-EPS-03・CIL-EPS-04・CIL-EPS-05・CIL-EPS-06・CIL-EPS-07・CIL-EPS-08・CIL-EPS-09・CIL-EPS-14・CIL-EPS-15・CIL-EPS-16・CIL-EPS-17・CIL-EPS-18・CIL-EPS-19・CIL-EPS-20 |
| 活動図の行動 | 7 | AC-FC-01・AC-FC-02・AC-FC-03・AC-FC-05・AC-FC-06・AC-FC-07・AC-FC-08 |
| 状態機械 | 1 | FuelCellStates |

## 13. IMP-02 の影響の範囲

フレオン冷却ループのポンプパッケージ・インターチェンジャの変更。起点は PHY-ECLSS-04。

| 種類 | 件数 | 要素 |
|---|---|---|
| 機器 | 1 | PHY-ECLSS-04 |
| 区画 | 1 | mid |
| 機能行 | 25 | F-ARS-WCL-ICH-01・F-ARS-WCL-ICH-02・F-ARS-WCL-ICH-03・F-ARS-WCL-ICH-04・F-ARS-WCL-ICH-05・F-ARS-WCL-ICH-06・F-ARS-WCL-ICH-07・F-ARS-WCL-ICH-08・F-ARS-WCL-ICH-09・F-ARS-WCL-ICH-10・F-ARS-WCL-ICH-11・F-ARS-WCL-ICH-12・F-ECLSS-01・F-ECLSS-02・F-TCS-FCL-01・F-TCS-FCL-02・F-TCS-FCL-03・F-TCS-FCL-04・F-TCS-FCL-05・F-TCS-FCL-06・F-TCS-HX-01・F-TCS-HX-02・F-TCS-HX-03・F-TCS-HX-04・F-TCS-HX-05 |
| 内部ブロック図の機器 | 3 | EQ-AIRX-19・EQ-ATCS-01・EQ-ATCS-16 |
| 流れ | 9 | FL-AIRX-17・FL-ATCS-01・FL-ATCS-02・FL-ATCS-16・FL-ATCS-18・FL-ATCS-19・FL-ATCS-20・FL-ATCS-33・FL-ATCS-38 |
| 機能説明書 | 4 | SSD-FD-ARS-WCL-ICH-001・SSD-FD-ECLSS-001・SSD-FD-TCS-FCL-001・SSD-FD-TCS-HX-001 |
| IF | 4 | IF-TCS-01・IF-TCS-07・IF-TCS-21・IF-WCL-08 |
| L2 要求 | 8 | REQ-ARS-34・REQ-ARS-39・REQ-ATCS-01・REQ-ATCS-02・REQ-ATCS-03・REQ-ECLSS-01・REQ-ECLSS-08・REQ-ECLSS-09 |
| L1 要求 | 8 | REQ-ECLSS-07・REQ-ECLSS-08・REQ-ECLSS-09・REQ-SYS-05・REQ-SYS-07・REQ-SYS-10・REQ-SYS-14・REQ-SYS-15 |
| 検証ケース | 14 | VC-REQ-ARS-34・VC-REQ-ARS-39・VC-REQ-ATCS-01・VC-REQ-ATCS-02・VC-REQ-ATCS-03・VC-REQ-ECLSS-01・VC-REQ-ECLSS-07・VC-REQ-ECLSS-08・VC-REQ-ECLSS-09・VC-REQ-SYS-05・VC-REQ-SYS-07・VC-REQ-SYS-10・VC-REQ-SYS-14・VC-REQ-SYS-15 |
| 故障解析表の行 | 7 | CIL-ECLSS-005・FMX-TCS-03・FMX-TCS-04・FMX-TCS-05・FMX-TCS-12・FMX-TCS-13・FMX-TCS-14 |

## 14. IMP-03 の影響の範囲

MPS ヘリウムタンクの変更（例：容量・圧力）。起点は PHY-MPS-05。

| 種類 | 件数 | 要素 |
|---|---|---|
| 機器 | 1 | PHY-MPS-05 |
| 区画 | 1 | multi |
| 機能行 | 14 | F-MPS-02・F-MPS-HE-01・F-MPS-HE-02・F-MPS-HE-03・F-MPS-HE-04・F-MPS-HE-05・F-MPS-HE-06・F-MPS-HE-07・F-MPS-HE-08・F-MPS-HE-09・F-MPS-HE-10・F-MPS-HE-11・F-MPS-HE-12・F-MPS-HE-13 |
| 内部ブロック図の機器 | 2 | EQ-MPS-12・EQ-MPS-13 |
| 流れ | 5 | FL-MPS-27・FL-MPS-28・FL-MPS-29・FL-MPS-32・FL-MPS-37 |
| 機能説明書 | 2 | SSD-FD-MPS-001・SSD-FD-MPS-HE-001 |
| IF | 4 | IF-MPS-06・IF-MPS-12・IF-MPS-13・IF-MPS-14 |
| L2 要求 | 6 | LRQ-MPS-10・LRQ-MPS-11・LRQ-MPS-12・LRQ-MPS-13・LRQ-MPS-26・REQ-MPS-11 |
| L1 要求 | 7 | REQ-MPS-02・REQ-MPS-06・REQ-MPS-11・REQ-MPS-13・REQ-SYS-01・REQ-SYS-04・REQ-SYS-10 |
| 検証ケース | 12 | VC-LRQ-MPS-10・VC-LRQ-MPS-11・VC-LRQ-MPS-12・VC-LRQ-MPS-13・VC-LRQ-MPS-26・VC-REQ-MPS-02・VC-REQ-MPS-06・VC-REQ-MPS-11・VC-REQ-MPS-13・VC-REQ-SYS-01・VC-REQ-SYS-04・VC-REQ-SYS-10 |
| 故障解析表の行 | 74 | CIL-MPS-087・CIL-MPS-088・CIL-MPS-089・CIL-MPS-090・CIL-MPS-211・CIL-MPS-212・CIL-MPS-213・CIL-MPS-214・CIL-MPS-215・CIL-MPS-216・CIL-MPS-217・CIL-MPS-218・CIL-MPS-219・CIL-MPS-220・CIL-MPS-221・CIL-MPS-222・CIL-MPS-223・CIL-MPS-224・CIL-MPS-225・CIL-MPS-226・CIL-MPS-227・CIL-MPS-228・CIL-MPS-229・CIL-MPS-230・CIL-MPS-231・CIL-MPS-232・CIL-MPS-233・CIL-MPS-234・CIL-MPS-235・CIL-MPS-236・CIL-MPS-237・CIL-MPS-238・CIL-MPS-239・CIL-MPS-240・CIL-MPS-241・CIL-MPS-242・CIL-MPS-243・CIL-MPS-244・CIL-MPS-245・CIL-MPS-246・CIL-MPS-247・CIL-MPS-248・CIL-MPS-260・CIL-MPS-261・CIL-MPS-262・CIL-MPS-263・CIL-MPS-274・CIL-MPS-275・CIL-MPS-296・CIL-MPS-301・CIL-MPS-302・CIL-MPS-303・CIL-MPS-305・CIL-MPS-306・CIL-MPS-307・CIL-MPS-308・CIL-MPS-309・CIL-MPS-310・CIL-MPS-311・CIL-MPS-312・CIL-MPS-313・CIL-MPS-314・CIL-MPS-315・CIL-MPS-316・CIL-MPS-317・CIL-MPS-318・CIL-MPS-319・CIL-MPS-470・CIL-MPS-478・CIL-MPS-479・CIL-MPS-480・CIL-MPS-500・CIL-MPS-510・FMX-MPS-01 |
| [CIL] の規則 | 2 | A5-151・A5-152 |
| 活動図の行動 | 3 | AC-HE-02・AC-HE-04・AC-HE-05 |
| 状態機械 | 1 | MpsStates |

## 15. IMP-04 の影響の範囲

GPC（汎用計算機）の変更。起点は PHY-DPS-01。

| 種類 | 件数 | 要素 |
|---|---|---|
| 機器 | 1 | PHY-DPS-01 |
| 区画 | 1 | avbf |
| 機能行 | 16 | F-DPS-01・F-DPS-02・F-DPS-03・F-DPS-04・F-DPS-GPC-01・F-DPS-GPC-02・F-DPS-GPC-03・F-DPS-GPC-04・F-DPS-GPC-05・F-DPS-GPC-06・F-DPS-GPC-07・F-DPS-GPC-08・F-DPS-GPC-09・F-DPS-GPC-10・F-DPS-GPC-11・F-DPS-GPC-12 |
| 内部ブロック図の機器 | 1 | EQ-DPS-01 |
| 流れ | 11 | FL-DPS-01・FL-DPS-02・FL-DPS-15・FL-DPS-19・FL-DPS-25・FL-DPS-26・FL-DPS-29・FL-DPS-32・FL-DPS-33・FL-DPS-40・FL-DPS-44 |
| 機能説明書 | 2 | SSD-FD-DPS-001・SSD-FD-DPS-GPC-001 |
| IF | 4 | IF-DPS-01・IF-DPS-02・IF-DPS-16・IF-ECL-08 |
| L2 要求 | 10 | LRQ-DPS-09・LRQ-DPS-13・LRQ-DPS-14・LRQ-DPS-15・LRQ-DPS-16・LRQ-DPS-17・LRQ-DPS-30・REQ-DPS-01・REQ-DPS-02・REQ-DPS-03 |
| L1 要求 | 10 | REQ-DPS-01・REQ-DPS-03・REQ-DPS-04・REQ-DPS-06・REQ-DPS-12・REQ-DPS-13・REQ-SYS-10・REQ-SYS-14・REQ-SYS-15・REQ-SYS-16 |
| 検証ケース | 18 | VC-LRQ-DPS-09・VC-LRQ-DPS-13・VC-LRQ-DPS-14・VC-LRQ-DPS-15・VC-LRQ-DPS-16・VC-LRQ-DPS-17・VC-LRQ-DPS-30・VC-REQ-DPS-01・VC-REQ-DPS-02・VC-REQ-DPS-03・VC-REQ-DPS-04・VC-REQ-DPS-06・VC-REQ-DPS-12・VC-REQ-DPS-13・VC-REQ-SYS-10・VC-REQ-SYS-14・VC-REQ-SYS-15・VC-REQ-SYS-16 |
| 故障解析表の行 | 4 | FMX-DPS-01・FMX-DPS-10・FMX-DPS-11・FMX-DPS-12 |
| 状態機械 | 1 | GpcModes |

## 16. IMP-05 の影響の範囲

ARS 床下機器（キャビンファン・熱交換器・LiOH キャニスタ）の変更。起点は PHY-ECLSS-01。

| 種類 | 件数 | 要素 |
|---|---|---|
| 機器 | 1 | PHY-ECLSS-01 |
| 区画 | 1 | leb |
| 機能行 | 105 | F-ARS-CAC-01・F-ARS-CAC-02・F-ARS-CAC-03・F-ARS-CAC-04・F-ARS-CAC-05・F-ARS-CAC-06・F-ARS-CAC-07・F-ARS-CAC-08・F-ARS-CAC-09・F-ARS-CAC-10・F-ARS-CAC-11・F-ARS-CO2-01・F-ARS-CO2-02・F-ARS-CO2-03・F-ARS-CO2-04・F-ARS-CO2-05・F-ARS-CO2-06・F-ARS-CO2-07・F-ARS-CO2-08・F-ARS-CO2-09・F-ARS-CO2-10・F-ARS-CO2-11・F-ARS-THC-01・F-ARS-THC-02・F-ARS-THC-03・F-ARS-THC-04・F-ARS-THC-05・F-ARS-THC-06・F-ARS-THC-07・F-ARS-THC-08・F-ARS-THC-09・F-ARS-THC-10・F-ARS-THC-11・F-ARS-THC-HX-01・F-ARS-THC-HX-02・F-ARS-THC-HX-03・F-ARS-THC-HX-04・F-ARS-THC-HX-05・F-ARS-THC-HX-06・F-ARS-THC-HX-07・F-ARS-THC-HX-08・F-ARS-THC-HX-09・F-ARS-THC-HX-10・F-ARS-WCL-01・F-ARS-WCL-02・F-ARS-WCL-03・F-ARS-WCL-04・F-ARS-WCL-05・F-ARS-WCL-06・F-ARS-WCL-07・F-ARS-WCL-08・F-ARS-WCL-09・F-ARS-WCL-10・F-ARS-WCL-11・F-ARS-WCL-12・F-ARS-WCL-13・F-ARS-WCL-14・F-ARS-WCL-PMP-01・F-ARS-WCL-PMP-02・F-ARS-WCL-PMP-03・F-ARS-WCL-PMP-04・F-ARS-WCL-PMP-05・F-ARS-WCL-PMP-06・F-ARS-WCL-PMP-07・F-ARS-WCL-PMP-08・F-ARS-WCL-PMP-09・F-ARS-WCL-PMP-10・F-ARS-WCL-PMP-11・F-ARS-WCL-PMP-12・F-CAC-FAN-01・F-CAC-FAN-02・F-CAC-FAN-03・F-CAC-FAN-04・F-CAC-FAN-05・F-CAC-FAN-06・F-CAC-FAN-07・F-CAC-FAN-08・F-CAC-FAN-09・F-CAC-FAN-10・F-CO2-CAN-01・F-CO2-CAN-02・F-CO2-CAN-03・F-CO2-CAN-04・F-CO2-CAN-05・F-CO2-CAN-06・F-CO2-CAN-07・F-CO2-CAN-08・F-CO2-CAN-09・F-CO2-CAN-10・F-CO2-CAN-11・F-CO2-CAN-12・F-CO2-STW-01・F-CO2-STW-02・F-CO2-STW-03・F-CO2-STW-04・F-CO2-STW-05・F-CO2-STW-06・F-CO2-STW-07・F-CO2-STW-08・F-CO2-STW-09・F-CO2-STW-10・F-CO2-STW-11・F-CO2-STW-12・F-ECLSS-01・F-ECLSS-04 |
| 内部ブロック図の機器 | 10 | EQ-AIRX-06・EQ-AIRX-08・EQ-AIRX-09・EQ-AIRX-16・EQ-AIRX-18・EQ-ARSA-02・EQ-ARSA-04・EQ-ARSA-07・EQ-ARSW-01・EQ-ARSW-14 |
| 流れ | 27 | FL-AIRX-06・FL-AIRX-07・FL-AIRX-08・FL-AIRX-15・FL-AIRX-16・FL-ARSA-03・FL-ARSA-04・FL-ARSA-05・FL-ARSA-06・FL-ARSA-09・FL-ARSA-11・FL-ARSA-12・FL-ARSA-15・FL-ARSA-18・FL-ARSA-19・FL-ARSA-21・FL-ARSW-01・FL-ARSW-04・FL-ARSW-08・FL-ARSW-17・FL-ARSW-18・FL-ARSW-19・FL-ARSW-20・FL-ARSW-25・FL-ARSW-33・FL-ARSW-35・FL-ARSW-36 |
| 機能説明書 | 10 | SSD-FD-ARS-CAC-001・SSD-FD-ARS-CO2-001・SSD-FD-ARS-THC-001・SSD-FD-ARS-THC-HX-001・SSD-FD-ARS-WCL-001・SSD-FD-ARS-WCL-PMP-001・SSD-FD-CAC-FAN-001・SSD-FD-CO2-CAN-001・SSD-FD-CO2-STW-001・SSD-FD-ECLSS-001 |
| IF | 34 | IF-ARS-01・IF-ARS-03・IF-ARS-05・IF-ARS-06・IF-ARS-07・IF-ARS-08・IF-ARS-27・IF-ARS-30・IF-ARS-31・IF-ARS-32・IF-ARS-36・IF-CAC-02・IF-CAC-06・IF-CAC-07・IF-CAC-09・IF-CO2-01・IF-CO2-02・IF-CO2-04・IF-CO2-05・IF-ECL-29・IF-ECL-39・IF-ORB-19・IF-THC-01・IF-THC-02・IF-THC-03・IF-THC-04・IF-THC-08・IF-THC-11・IF-WCL-01・IF-WCL-04・IF-WCL-05・IF-WCL-12・IF-WCL-15・IF-WCL-16 |
| L2 要求 | 28 | IRQ-ORB-19・REQ-ARS-01・REQ-ARS-02・REQ-ARS-03・REQ-ARS-04・REQ-ARS-05・REQ-ARS-06・REQ-ARS-08・REQ-ARS-09・REQ-ARS-10・REQ-ARS-11・REQ-ARS-12・REQ-ARS-13・REQ-ARS-20・REQ-ARS-21・REQ-ARS-22・REQ-ARS-23・REQ-ARS-32・REQ-ARS-33・REQ-ARS-34・REQ-ARS-35・REQ-ARS-36・REQ-ARS-37・REQ-ARS-38・REQ-ARS-39・REQ-ECLSS-01・REQ-ECLSS-06・REQ-ECLSS-07 |
| L1 要求 | 10 | REQ-DPS-07・REQ-ECLSS-05・REQ-ECLSS-06・REQ-ECLSS-07・REQ-ECLSS-09・REQ-ECLSS-11・REQ-SYS-06・REQ-SYS-07・REQ-SYS-10・REQ-SYS-13 |
| 検証ケース | 36 | VC-IRQ-ORB-19・VC-REQ-ARS-01・VC-REQ-ARS-02・VC-REQ-ARS-03・VC-REQ-ARS-04・VC-REQ-ARS-05・VC-REQ-ARS-06・VC-REQ-ARS-08・VC-REQ-ARS-09・VC-REQ-ARS-10・VC-REQ-ARS-11・VC-REQ-ARS-12・VC-REQ-ARS-13・VC-REQ-ARS-20・VC-REQ-ARS-21・VC-REQ-ARS-22・VC-REQ-ARS-23・VC-REQ-ARS-32・VC-REQ-ARS-33・VC-REQ-ARS-34・VC-REQ-ARS-35・VC-REQ-ARS-36・VC-REQ-ARS-37・VC-REQ-ARS-38・VC-REQ-ARS-39・VC-REQ-DPS-07・VC-REQ-ECLSS-01・VC-REQ-ECLSS-05・VC-REQ-ECLSS-06・VC-REQ-ECLSS-07・VC-REQ-ECLSS-09・VC-REQ-ECLSS-11・VC-REQ-SYS-06・VC-REQ-SYS-07・VC-REQ-SYS-10・VC-REQ-SYS-13 |
| 故障解析表の行 | 25 | CIL-ECLSS-001・CIL-ECLSS-002・CIL-ECLSS-003・CIL-ECLSS-004・CIL-ECLSS-012・CIL-ECLSS-016・CIL-ECLSS-019・CIL-ECLSS-020・CIL-ECLSS-022・CIL-ECLSS-023・CIL-ECLSS-025・CIL-ECLSS-027・CIL-ECLSS-028・CIL-ECLSS-030・CIL-ECLSS-031・CIL-ECLSS-034・FMX-CAC-01・FMX-CAC-02・FMX-CO2-01・FMX-CO2-02・FMX-CO2-20・FMX-CO2-21・FMX-CO2-22・FMX-THC-01・FMX-THC-02 |
| 活動図の行動 | 12 | AC-FR-05・AC-LO-01・AC-LO-02・AC-LO-03・AC-LO-04・AC-LO-05・AC-LO-06・AC-LO-07・AC-LO-08・AC-WL-02・AC-WL-04・AC-WL-07 |

## 17. 図

図115 は要素の種類（箱、件数つき）と関係（矢印、関係の名前と件数）、図116 は系 × 指標の網羅の割合（色：90%以上・50%以上・10%以上・10%未満）、図117 は影響分析の例ごとの種類別の件数と、IMP-01（燃料電池）の連鎖を示す。

## 18. SysML v2 テキスト

同じ内容を SysML v2 のテキスト [SysML/SSD-TRC-SYS-001.sysml](../SysML/SSD-TRC-SYS-001.sysml) に示す。関係の metadata（TraceRelation）18件、系ごとの網羅の metadata（CoverageMetric、系の part def に付ける）162件、切れ目の分類の metadata（TraceGapCategory）12件と、§8 の要素に付けた metadata（TraceGap）215件、影響分析のビュー（ImpactView）5件から成る。ビューは影響の範囲の要素を晒す（expose）。区画・故障解析表の行・[CIL] の規則・メッセージはモデルの要素でないか道筋が無いので、ビューには入れず本書の表だけに示した。OMG SysML v2 Pilot Implementation 0.62.0（2026-08 リリース、標準ライブラリ付き）で読み込んで、構文・名前の解決・型の検査で誤り 0件・警告 0件を確かめた。

## 19. 注記（出典間の相違・構成変更）

> **注記** 網羅は、関係があるかどうかを数えたもので、関係の内容が正しいか（要求が本当に満たされるか）は確かめていない。

> **注記** 機器の割付（SSD-PHY-ORB-001・SSD-ALC-SYS-001）は、Rev. AU で要求につながらなかった機器の割付を系の機能行から下位の機能説明書の機能行へ移し、GAP-06 を解消した。あわせて内部ブロック図の機器の行を機器配分表に足し（GAP-10）、機能ブロックをまたぐ流れに IF を新設した（GAP-09）。同じ機能ブロックの中の流れは IF にしないと判断し、GAP-11 にした。

> **注記** 要求は主に機能行に割り付けたため、IF を割付先にした要求は少ない（C5）。IF の要求（インタフェース管理の要求）は今後の課題で、上位 IF の特性値は SSD-ICD-ORB-001 にある。

> **注記** 振る舞いの図（活動・シーケンス・状態機械）と内部ブロック図は代表の手順・系だけを描いたので、C6・C9 の低さは範囲の選び方による。

> **注記** 影響分析は関係を決めた向きに1回ずつ辿った範囲で、物理的な波及（同じ母線の負荷、同じ冷却ループの機器）までは含まない。内部ブロック図のある機器（EPS・ATCS・MPS・DPS・APU/HYD・OMS/RCS・C&T・ARS・PCS・給水・廃水・WCS）は流れを通して IF まで辿れるが、ほかの機器は機能行までである。

## 20. 参考文献

1. OMG Systems Modeling Language (SysML) Version 2.0 仕様 — https://www.omg.org/spec/SysML/2.0
2. SysML v2 Release（OMG SysML v2 Pilot Implementation の公開リリース・標準ライブラリ） — https://github.com/Systems-Modeling/SysML-v2-Release

## 21. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-03 | 初版作成（要素 4704件・関係 7077件のグラフ、網羅の指標 9件と系ごとの網羅、切れ目の分類 10件と一覧 99件、影響分析 5件、図115〜117、SysML v2 テキスト） |
| Rev. A | 2026-10-04 | 内部ブロック図・IF・機器配分表の追加に合わせて作り直した（未処理の切れ目 GAP-06・09・10 が 0件、機能ブロックの中の流れを GAP-11（判断済み）に分けた）（Rev. AU） |
| Rev. B | 2026-10-04 | 系の状態機械（SSD-BEH-ORB-006）を振る舞いに数え、網羅を数え直した（Rev. AX） |
| Rev. C | 2026-10-07 | 要求の値の見直し（REQ-SYS-09・EPS-14 の検証を pass）を受けて網羅と切れ目を数え直した（Rev. BG） |
| Rev. D | 2026-10-08 | ECLSS の内部ブロック図・IF・機器配分表の追加に合わせて網羅と切れ目を数え直した（Rev. BI） |
| Rev. E | 2026-10-08 | ECLSS 下位要求書（SSD-RQL-ECL-001）の L3 の要求とトレースを数え、網羅と切れ目を数え直した（Rev. BK） |
| Rev. F | 2026-10-09 | ECLSS の状態機械・活動（SSD-BEH-ORB-007）と故障モード（SSD-FMX-ECL-001）を数え、網羅と切れ目を数え直した（Rev. BL） |
| Rev. G | 2026-10-09 | EMU・エアロックの状態機械（SSD-EMU-EVA-001）を振る舞いに数え、網羅を数え直した（Rev. BM） |
| Rev. H | 2026-10-09 | 医療の活動図（SSD-MED-ORB-001）の行動を振る舞いに数え、網羅を数え直した（Rev. BP） |
| Rev. I | 2026-10-11 | L3 の要求 6件の追加と検証の根拠の調査（inconclusive 24件 → 10件）を受けて、網羅と切れ目を数え直した（Rev. BR） |
| Rev. J | 2026-10-11 | GN&C の内部ブロック図の流れ・状態機械・活動（SSD-GNC-ORB-001）を数え、網羅を数え直した（Rev. BS） |
| Rev. K | 2026-10-11 | ET・SRB・TPS の内部ブロック図の流れ・状態機械・活動（SSD-ETS-SYS-001）を数え、網羅を数え直した（Rev. BT） |
| Rev. L | 2026-10-11 | SRB・ET・TPS の機能の故障モード（SSD-ACC-SYS-001）を故障解析の行に数え、網羅を数え直した（Rev. BU） |
| Rev. M | 2026-10-11 | インタフェース要求書（SSD-IRQ-SYS-001）の要求・導出・充足・検証を数え、網羅と切れ目を数え直した（Rev. BV） |
| Rev. N | 2026-10-12 | MECH・C/W・PLS・STR・CREW の内部ブロック図の流れ・状態機械・活動（SSD-BEH-ORB-008）を数え、網羅を数え直した（Rev. BW） |
| Rev. O | 2026-10-12 | 下位要求書（SSD-RQL-SYS-001）の L3 の要求・導出・充足・検証を数え、網羅と切れ目を数え直した（Rev. BX） |
| Rev. P | 2026-10-12 | オービタの系の機能の故障モード（SSD-FMX-ORB-001）を故障解析の行に数え、網羅を数え直した（Rev. BY） |
| Rev. Q | 2026-10-15 | L3 の要求・インタフェース要求の検証の根拠の調査（根拠なし 231件 → 215件）を受けて、網羅と切れ目を数え直した（Rev. CB） |
| Rev. R | 2026-10-15 | 機能の故障モード 68件の追加と判断済み 14件の区分（GAP-12）を受けて、網羅と切れ目を数え直した（Rev. CC） |
| Rev. S | 2026-10-15 | ECLSS の IF の流れ（内部ブロック図の追加と上位 IF への詳細化）を数え、網羅と切れ目を数え直した（Rev. CD）（Rev. CD） |
