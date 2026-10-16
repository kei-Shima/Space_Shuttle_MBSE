# トレース網羅・影響分析書（連鎖の網羅・切れ目・変更の影響）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-TRC-SYS-001 |
| 表題 | トレース網羅・影響分析書（連鎖の網羅・切れ目・変更の影響） |
| 版・日付 | Rev. Y／2026-10-17 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-MDL-SYS-001 |
| 関連図 | SSD-SYS-ARC-001 図115 トレースの連鎖（要素の種類と関係）・図116 系ごとのトレース網羅・図117 変更の影響分析 |

## 1. 目的

パッケージの文書と SysML v2 モデルにある要素（要求・機能・IF・機器・検証・故障解析・振る舞い・内部ブロック図）と、それらを結ぶ関係を1つのグラフにまとめ、要求から検証・機器までの連鎖がどこまでつながっているか（網羅）、どこで切れているか（切れ目）、ある機器を変えたときに何に影響するか（影響分析）を示す。全体は図115〜117 に示す。

## 2. 書き方

グラフは、文書の表（要求書・故障解析表・活動定義書など）と SysML v2 テキスト（構造・要求・割付・検証・内部ブロック図）を本書の生成の中で読んで作った。要素の種類と数は §3、関係は §4 に示す。網羅は系ごとに9つの指標（§5）で数え、網羅していない要素を切れ目の分類（§7）に分けた。切れ目の判断は、判断済み（文書に理由がある）・方針（作り方による）・範囲外（今後の課題）・未処理（手を打つ候補）の4つである。影響分析は機器を起点に、決めた向きで関係を辿った範囲である（§9）。新しい一次資料は使っていない。

## 3. 要素の種類

グラフの要素 8614件を種類ごとに示す。

| 種類 | 要素 | 件数 | 出どころ |
|---|---|---|---|
| L1 | L1 要求 | 18 | SSD-REQ-SYS-001 |
| L2 | L2 要求 | 1334 | SSD-REQ-<系>-001、SSD-IRQ-SYS-001、SSD-RQL-SYS-001、SSD-IRQ-ECL-001、SSD-IRQ-LOW-001 |
| VC | 検証ケース | 1352 | SSD-VER-SYS-001、SSD-IRQ-SYS-001、SSD-RQL-SYS-001、SSD-IRQ-ECL-001、SSD-IRQ-LOW-001 |
| F | 機能行 | 2075 | SSD-FD-*（機能の表） |
| IF | IF | 601 | SSD-FD-*（IF の表） |
| BLK | 機能説明書 | 208 | SSD-FD-* |
| PHY | 機器 | 138 | SSD-PHY-ORB-001 |
| CMP | 区画 | 18 | SSD-PHY-ORB-001（図43） |
| EQ | 内部ブロック図の機器 | 396 | SSD-IBD-ORB-001、SSD-GNC-ORB-001、SSD-ETS-SYS-001、SSD-BEH-ORB-008 |
| FL | 流れ | 843 | SSD-IBD-ORB-001、SSD-GNC-ORB-001、SSD-ETS-SYS-001、SSD-BEH-ORB-008 |
| FM | 故障解析表の行 | 1229 | SSD-FMEA-*-001、SSD-FMX-ECL-001、SSD-ACC-SYS-001、SSD-FMX-ORB-001 |
| RULE | [CIL] の規則 | 54 | SSD-FMEA-*-001 |
| ACT | 活動図の行動 | 130 | SSD-BEH-ORB-002・004・007、SSD-UC-ORB-001、SSD-MED-ORB-001、SSD-GNC-ORB-001、SSD-ETS-SYS-001、SSD-BEH-ORB-008 |
| MSG | メッセージ | 131 | SSD-BEH-ORB-003、SSD-UC-ORB-001 |
| SM | 状態機械 | 28 | SSD-BEH-ORB-001・005・006・007、SSD-EMU-EVA-001、SSD-GNC-ORB-001、SSD-ETS-SYS-001、SSD-BEH-ORB-008 |
| ICD | 上位 IF の特性値 | 59 | SSD-ICD-ORB-001 |

## 4. 関係（連鎖）

要素を結ぶ関係 18種・15343件を示す。向きは連鎖の向き（上位 → 下位、要求 → 割付先、行 → 対応先）。

| ID | 関係 | 元 → 先 | 内容 | 件数 | 出どころ |
|---|---|---|---|---|---|
| TR-01 | derive | L1 → L2 | L1 要求から L2 要求を導出 | 1539 | SSD-RQM-SYS-001 の #derivation、SSD-IRQ-SYS-001、SSD-RQL-SYS-001、SSD-IRQ-ECL-001、SSD-IRQ-LOW-001 |
| TR-02 | satisfy | L1・L2 → F・IF | 要求の割付先（充足） | 3206 | SSD-RQM-SYS-001 の satisfy の割付先、SSD-IRQ-SYS-001、SSD-RQL-SYS-001、SSD-IRQ-ECL-001、SSD-IRQ-LOW-001 |
| TR-03 | verify | L1・L2 → VC | 要求を検証ケースで確かめる（判定つき） | 1352 | SSD-VER-SYS-001 の Results、SSD-IRQ-SYS-001、SSD-RQL-SYS-001、SSD-IRQ-ECL-001、SSD-IRQ-LOW-001 |
| TR-04 | own | F → BLK | 機能行を持つ機能説明書 | 2075 | SSD-ALC-SYS-001 の Functions |
| TR-05 | end | IF → BLK | IF の端の機能説明書 | 1175 | SSD-BLK-SYS-001 の interface・connection |
| TR-06 | alloc | PHY → F・BLK | 機器に割り付けた機能行と系 | 524 | SSD-ALC-SYS-001 の PhysicalAllocation |
| TR-07 | place | PHY → CMP | 機器を置いた区画 | 138 | SSD-ALC-SYS-001 の PhysicalAllocation |
| TR-08 | fmea | FM → F・IF | 故障解析表の行（CIL 課題・CIL 項目）と機能・IF | 2110 | SSD-FMEA-*-001、SSD-FMX-ECL-001、SSD-ACC-SYS-001、SSD-FMX-ORB-001 |
| TR-09 | rule | RULE → BLK | [CIL] の規則と下位機能 | 83 | SSD-FMEA-*-001 |
| TR-10 | act | ACT → F | 活動図の行動と機能行 | 211 | SSD-BEH-ORB-002・004・007、SSD-UC-ORB-001、SSD-MED-ORB-001、SSD-GNC-ORB-001、SSD-ETS-SYS-001、SSD-BEH-ORB-008 |
| TR-11 | actpart | ACT → BLK | 活動図の行動を受け持つ部品 | 51 | SSD-ALC-SYS-001 の BehaviorAllocation |
| TR-12 | msg | MSG → IF | シーケンス図のメッセージが通る IF | 140 | SSD-BEH-ORB-003、SSD-UC-ORB-001 |
| TR-13 | sm | SM → BLK | 状態機械を持つ部品（exhibit） | 28 | SSD-BEH-ORB-001・005・006・007、SSD-EMU-EVA-001、SSD-GNC-ORB-001、SSD-ETS-SYS-001、SSD-BEH-ORB-008 |
| TR-14 | flow | FL → IF | 内部ブロック図の流れが詳しくする IF | 800 | SSD-IBD-ORB-001 の #refinement、SSD-GNC-ORB-001、SSD-ETS-SYS-001、SSD-BEH-ORB-008 |
| TR-15 | flowpart | FL → EQ | 流れの端の機器 | 1060 | SSD-IBD-ORB-001 の flow、SSD-GNC-ORB-001、SSD-ETS-SYS-001、SSD-BEH-ORB-008 |
| TR-16 | eq | EQ → PHY | 内部ブロック図の機器と機器配分表の行 | 396 | SSD-IBD-ORB-001 の part def の特化、SSD-GNC-ORB-001、SSD-ETS-SYS-001、SSD-BEH-ORB-008 |
| TR-17 | eqblk | EQ → BLK | 内部ブロック図の機器を置いた機能ブロック | 396 | SSD-IBD-ORB-001、SSD-GNC-ORB-001、SSD-ETS-SYS-001、SSD-BEH-ORB-008 |
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
| APU | 63/66 | 66/66 | 51/66 | 92/92 | 29/29 | 29/29 | 7/7 | 8/8 | 8/8 |
| CREW | 51/52 | 52/52 | 24/52 | 52/52 | 12/12 | 12/12 | 5/5 | 7/7 | 7/7 |
| CT | 66/66 | 66/66 | 50/66 | 88/88 | 29/29 | 29/29 | 12/12 | 8/8 | 8/8 |
| CW | 43/43 | 43/43 | 24/43 | 46/46 | 12/12 | 12/12 | 5/5 | 6/6 | 6/6 |
| DPS | 65/67 | 67/67 | 44/67 | 91/91 | 29/29 | 29/29 | 7/7 | 8/8 | 8/8 |
| ECLSS | 343/413 | 413/413 | 231/413 | 945/945 | 298/298 | 298/298 | 39/39 | 87/87 | 87/87 |
| EPS | 59/62 | 62/62 | 46/62 | 33/33 | 23/23 | 23/23 | 5/5 | 5/5 | 5/5 |
| EVA | 47/49 | 49/49 | 28/49 | 85/85 | 15/15 | 15/15 | 9/9 | 7/7 | 7/7 |
| GNC | 60/64 | 64/64 | 55/64 | 90/90 | 24/24 | 24/24 | 6/6 | 8/8 | 8/8 |
| MECH | 45/48 | 48/48 | 31/48 | 52/52 | 11/11 | 11/11 | 6/6 | 7/7 | 7/7 |
| MPS | 61/64 | 64/64 | 43/64 | 96/96 | 23/23 | 23/23 | 8/8 | 8/8 | 8/8 |
| OMS | 55/60 | 60/60 | 33/60 | 93/93 | 20/20 | 20/20 | 5/5 | 8/8 | 8/8 |
| PLS | 48/48 | 48/48 | 37/48 | 50/50 | 12/12 | 12/12 | 5/5 | 7/7 | 7/7 |
| RCS | 57/59 | 59/59 | 35/59 | 91/91 | 20/20 | 20/20 | 8/8 | 8/8 | 8/8 |
| STR | 45/47 | 47/47 | 26/47 | 51/51 | 11/11 | 11/11 | 6/6 | 7/7 | 7/7 |
| TPS | 20/20 | 20/20 | 15/20 | 16/16 | 3/3 | 3/3 | 5/5 | 3/3 | 3/3 |
| ET | 46/46 | 46/46 | 27/46 | 43/43 | 8/8 | 8/8 | — | 7/7 | 7/7 |
| SRB | 47/48 | 48/48 | 38/48 | 49/49 | 10/10 | 10/10 | — | 7/7 | 7/7 |
| 計 | 1221/1322（92%） | 1322/1322（100%） | 838/1322（63%） | 2063/2063（100%） | 589/589（100%） | 589/589（100%） | 138/138（100%） | 206/206（100%） | 206/206（100%） |

## 7. 切れ目の分類

網羅していない要素を 13の分類に分けた。判断の欄：判断済み＝文書に理由がある、方針＝作り方による、範囲外＝今後の課題、未処理＝手を打つ候補。

| ID | 切れ目 | 判断 | 件数 | 説明 |
|---|---|---|---|---|
| GAP-01 | 検証の判定が pass でない要求 | 判断済み | 484 | 検証の根拠が見つからない要求（判定 inconclusive）。理由は各要求書の検証の節と SSD-VER-SYS-001 にある。区分は §7（Rev. CI）：区分1 記録の食い違い 23件、区分2 起きていない事象 121件、区分3 解析の結果なし 26件、区分4 関連記録のみ 105件、区分5 記録なし 209件。 |
| GAP-02 | 要求なしで妥当と判断した機能行 | 判断済み | 138 | 系の全般の記述か、同じ下位機能の要求が受け持つ構成・運用の記述（各要求書の §5・§6）。 |
| GAP-03 | トレースの対象外の機能行 | 範囲外 | 10 | 要求書のトレース表の対象でない文書の機能行。ECLSS の第2段より下は Rev. BK で ECLSS 下位要求書（SSD-RQL-ECL-001）の対象にした。残りは要求書のトレースの対象の外の文書（外部系 SSD-FD-EXT-001 とオービタの親 SSD-FD-ORB-001）の行。 |
| GAP-04 | 要求の割付先でない IF | 方針 | 0 | 上位の IF（IF-SYS・IF-ORB）は Rev. BV で SSD-IRQ-SYS-001 の、下位の IF（系の中の IF-<系>-nn）519件は Rev. CL で SSD-IRQ-ECL-001・SSD-IRQ-LOW-001 のインタフェース要求の割付先にした。すべての IF が要求の割付先になった。 |
| GAP-05 | 振る舞い・流れが通らない IF | 範囲外 | 0 | ECLSS は Rev. CD・CE、ECLSS 以外は Rev. CG（上位 IF の詳細化・内部ブロック図）・Rev. CH（シーケンス図）で、すべての IF に流れかメッセージを付けた。 |
| GAP-06 | 要求につながらない機器 | 未処理 | 0 | 機器に割り付けた機能行（系の機能説明書の行）が、どの要求の割付先でもない。要求の割付先に機器の機能行を足すか、機器の割付を下位の機能行に移すことが考えられる。 |
| GAP-07 | 故障解析の対応が無い機能ブロック | 範囲外 | 0 | IOA の CIL 課題のワークシートが無い系は [CIL] の規則だけで対応づけた（SSD-FMEA-ORB-001 §8）。ECLSS の下位の機能ブロック 43件は Rev. CC で、機能の故障モード（SSD-FMX-ECL-001）か判断済み（GAP-12）に区分した。 |
| GAP-08 | 振る舞いに現れない機能ブロック | 範囲外 | 0 | 活動図・状態機械・シーケンス図・内部ブロック図のどれかに、すべての機能ブロックが現れる（DPS 運用管理は Rev. CH のシーケンス図）。 |
| GAP-09 | 既存の IF が無い流れ | 未処理 | 0 | 内部ブロック図の流れのうち、同じ機能ブロックの中の機器どうしでないもの（推力構造・船外・ペイロードなど）は新しい IF の候補。 |
| GAP-10 | 機器配分表に行が無い内部ブロック図の機器 | 未処理 | 0 | 内部ブロック図の機器のうち SSD-PHY-ORB-001 に行が無いもの。機器配分表に足す候補。 |
| GAP-11 | 機能ブロックの中の流れ（IF にしない） | 判断済み | 153 | 同じ機能ブロックの中の機器どうしの流れ。IF は機能ブロックの境界で定義するので、IF にしない（SSD-IBD-ORB-001 の IF との対応、Rev. AU）。 |
| GAP-12 | 故障モードが当てはまらないと判断した機能ブロック | 判断済み | 11 | 運用管理（OPS）・監視（MON）のブロックは機器を持たず、機器の故障モードが当てはまらない。理由は SSD-FMX-ECL-001 の「判断済みの機能ブロック」にある。 |
| GAP-13 | 上位なしの下位 IF のインタフェース要求 | 判断済み | 101 | 下位の IF のインタフェース要求のうち、候補（上位の IF のインタフェース要求・所有の文書の機能行に割り付いた要求）に内容の合うものが無く、上位の要求を付けなかったもの。近い要求を無理に当てていない（本書の判断）。導出の辺が無いので、C1（要求の導出）の分子に入らない。 |

### GAP-01 の理由の区分（Rev. CI）

検証の根拠が無い 484件（判定 inconclusive）の理由を、各要求書の理由の文を読んで 5つの区分に分けた（Rev. CI。区分は本書の判断で、状態と理由の文は変えていない）。上から順に見て、最初に当てはまった区分に入れる。区分1：満たさなかった側の記録、または要求の文・値と資料の値の食い違いが、理由の文に書いてある。区分2：要求が想定する事象の発生・機能の使用（飛行中の作動、運用での使用、故障の処置）の記録が無いと理由の文が述べる（「飛行は無い」「起きていない」と書いたものと、「した記録は見つからなかった」と書いたものを含む）。区分3：検証方法が A（解析）で、解析の結果・本体が公開資料に無い、または挙げた記録・根拠の欄が解析ではないと理由の文が述べる。区分4：理由の文が最初に挙げるのが、別の機器・故障・間接の関連する記録で、それが要求の機能・値・構成を確かめていない。区分5：それ以外で、検査・試験・計測の記録が見つからない（構成・寸法・設計値の検査や認定試験の記録が公開されていないものが多い）。区分2 と 3 の両方に当たるものは区分2 に入れる。Rev. CL の下位の IF のインタフェース要求の根拠なし（SSD-IRQ-ECL-001・SSD-IRQ-LOW-001）の区分は、調査役が同じ定義で1件ずつ割り当てたもので、本書は区分3 が検証方法 A だけであることなどを機械的に確かめた。調査役が自分で報告した食い違い・別の仕組みの記録の一部は、根拠ありから根拠なしに直した（区分1・4。本書の判断）。

区分ごとの件数を検証方法別に示す。

| 区分 | 理由 | A 解析 | T 試験 | I 検査 | D 実証 | 計 |
|---|---|---|---|---|---|---|
| 区分1 | 記録が食い違う（満たさなかった記録、または要求の文・値と資料の食い違い） | 1 | 18 | 2 | 2 | 23 |
| 区分2 | 起きていない事象・使われた記録の無い機能（事象の発生・機能の使用の記録が無い） | 30 | 34 | 2 | 55 | 121 |
| 区分3 | 解析の結果が公開資料に無い（解析で確かめる要求） | 26 | 0 | 0 | 0 | 26 |
| 区分4 | 関連記録はあるが、要求の機能・値・構成を確かめていない | 1 | 67 | 18 | 19 | 105 |
| 区分5 | 検査・試験・計測・運用の記録が公開資料に無い | 0 | 118 | 91 | 0 | 209 |
| 計 | — | 58 | 237 | 113 | 76 | 484 |

系ごとの件数を区分別に示す。SSD-RQL-SYS-001 の 17系 204件、SSD-RQL-ECL-001（REQ-）10件、SSD-IRQ-SYS-001（IRQ-）1件（Rev. CI の 215件）に、Rev. CL の下位の IF のインタフェース要求（SSD-IRQ-ECL-001・SSD-IRQ-LOW-001）の根拠なし 269件を加えた 484件。図225 は 17系の 204件を区分で割って示す（Rev. CI のまま）。

| 系 | 区分1 記録の食い違い | 区分2 起きていない事象 | 区分3 解析の結果なし | 区分4 関連記録のみ | 区分5 記録なし | 計 |
|---|---|---|---|---|---|---|
| APU | 1 | 4 | 1 | 1 | 3 | 10 |
| CREW | 0 | 5 | 1 | 2 | 10 | 18 |
| CT | 0 | 1 | 1 | 2 | 6 | 10 |
| CW | 0 | 4 | 1 | 2 | 7 | 14 |
| DPS | 0 | 5 | 3 | 2 | 6 | 16 |
| EPS | 0 | 0 | 0 | 5 | 5 | 10 |
| EVA | 1 | 4 | 4 | 3 | 4 | 16 |
| GNC | 0 | 2 | 0 | 2 | 1 | 5 |
| MECH | 0 | 3 | 1 | 5 | 3 | 12 |
| MPS | 0 | 6 | 1 | 3 | 2 | 12 |
| OMS | 0 | 6 | 3 | 7 | 0 | 16 |
| PLS | 0 | 2 | 0 | 3 | 3 | 8 |
| RCS | 0 | 2 | 3 | 0 | 7 | 12 |
| STR | 0 | 1 | 4 | 1 | 9 | 15 |
| TPS | 0 | 0 | 0 | 5 | 0 | 5 |
| ET | 2 | 2 | 2 | 4 | 6 | 16 |
| SRB | 2 | 2 | 1 | 2 | 2 | 9 |
| ECLSS 下位（REQ-） | 0 | 6 | 0 | 0 | 4 | 10 |
| インタフェース要求（IRQ-） | 1 | 0 | 0 | 0 | 0 | 1 |
| ECLSS の下位の IF（IRQ-） | 12 | 36 | 0 | 30 | 94 | 172 |
| ECLSS 以外の下位の IF（IRQ-） | 4 | 30 | 0 | 26 | 37 | 97 |
| 計 | 23 | 121 | 26 | 105 | 209 | 484 |

## 8. 切れ目の一覧

分類 GAP-01・GAP-06・GAP-09・GAP-10 の要素 484件を示す（SysML では各要素に TraceGap の metadata を付けた）。ほかの分類は件数が多いので §8 に系ごとの件数で示す。

| ID | 要素 | 種類 | 系 | 内容 |
|---|---|---|---|---|
| GAP-01-01 | VC-IRQ-ALS-03 | 検証ケース | — | IRQ-ALS-03 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-02 | VC-IRQ-ALS-04 | 検証ケース | — | IRQ-ALS-04 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-03 | VC-IRQ-ALS-05 | 検証ケース | — | IRQ-ALS-05 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-04 | VC-IRQ-ALS-09 | 検証ケース | — | IRQ-ALS-09 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-05 | VC-IRQ-ALS-10 | 検証ケース | — | IRQ-ALS-10 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-06 | VC-IRQ-ALS-17 | 検証ケース | — | IRQ-ALS-17 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-07 | VC-IRQ-APU-02 | 検証ケース | — | IRQ-APU-02 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-08 | VC-IRQ-APU-13 | 検証ケース | — | IRQ-APU-13 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-09 | VC-IRQ-APU-16 | 検証ケース | — | IRQ-APU-16 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-10 | VC-IRQ-APU-22 | 検証ケース | — | IRQ-APU-22 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-11 | VC-IRQ-APU-25 | 検証ケース | — | IRQ-APU-25 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-12 | VC-IRQ-ARS-03 | 検証ケース | — | IRQ-ARS-03 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-13 | VC-IRQ-ARS-04 | 検証ケース | — | IRQ-ARS-04 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-14 | VC-IRQ-ARS-05 | 検証ケース | — | IRQ-ARS-05 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-15 | VC-IRQ-ARS-08 | 検証ケース | — | IRQ-ARS-08 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-16 | VC-IRQ-ARS-11 | 検証ケース | — | IRQ-ARS-11 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-17 | VC-IRQ-ARS-13 | 検証ケース | — | IRQ-ARS-13 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-18 | VC-IRQ-ARS-16 | 検証ケース | — | IRQ-ARS-16 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-19 | VC-IRQ-ARS-17 | 検証ケース | — | IRQ-ARS-17 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-20 | VC-IRQ-ARS-18 | 検証ケース | — | IRQ-ARS-18 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-21 | VC-IRQ-ARS-19 | 検証ケース | — | IRQ-ARS-19 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-22 | VC-IRQ-ARS-21 | 検証ケース | — | IRQ-ARS-21 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-23 | VC-IRQ-ARS-23 | 検証ケース | — | IRQ-ARS-23 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-24 | VC-IRQ-ARS-24 | 検証ケース | — | IRQ-ARS-24 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-25 | VC-IRQ-ARS-25 | 検証ケース | — | IRQ-ARS-25 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-26 | VC-IRQ-ARS-26 | 検証ケース | — | IRQ-ARS-26 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-27 | VC-IRQ-ARS-27 | 検証ケース | — | IRQ-ARS-27 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-28 | VC-IRQ-ARS-28 | 検証ケース | — | IRQ-ARS-28 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-29 | VC-IRQ-ARS-29 | 検証ケース | — | IRQ-ARS-29 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-30 | VC-IRQ-ARS-31 | 検証ケース | — | IRQ-ARS-31 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-31 | VC-IRQ-ARS-32 | 検証ケース | — | IRQ-ARS-32 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-32 | VC-IRQ-ARS-33 | 検証ケース | — | IRQ-ARS-33 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-33 | VC-IRQ-ARS-34 | 検証ケース | — | IRQ-ARS-34 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-34 | VC-IRQ-ARS-35 | 検証ケース | — | IRQ-ARS-35 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-35 | VC-IRQ-ARS-36 | 検証ケース | — | IRQ-ARS-36 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-36 | VC-IRQ-ARS-37 | 検証ケース | — | IRQ-ARS-37 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-37 | VC-IRQ-ARS-38 | 検証ケース | — | IRQ-ARS-38 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-38 | VC-IRQ-ARS-39 | 検証ケース | — | IRQ-ARS-39 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-39 | VC-IRQ-ARS-40 | 検証ケース | — | IRQ-ARS-40 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-40 | VC-IRQ-ARS-41 | 検証ケース | — | IRQ-ARS-41 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-41 | VC-IRQ-ARS-42 | 検証ケース | — | IRQ-ARS-42 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-42 | VC-IRQ-AVB-01 | 検証ケース | — | IRQ-AVB-01 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-43 | VC-IRQ-AVB-02 | 検証ケース | — | IRQ-AVB-02 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-44 | VC-IRQ-AVB-03 | 検証ケース | — | IRQ-AVB-03 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-45 | VC-IRQ-AVB-04 | 検証ケース | — | IRQ-AVB-04 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-46 | VC-IRQ-AVB-05 | 検証ケース | — | IRQ-AVB-05 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-47 | VC-IRQ-AVB-06 | 検証ケース | — | IRQ-AVB-06 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-48 | VC-IRQ-AVB-07 | 検証ケース | — | IRQ-AVB-07 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-49 | VC-IRQ-AVB-08 | 検証ケース | — | IRQ-AVB-08 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-50 | VC-IRQ-AVB-09 | 検証ケース | — | IRQ-AVB-09 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-51 | VC-IRQ-AVB-12 | 検証ケース | — | IRQ-AVB-12 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-52 | VC-IRQ-AVB-13 | 検証ケース | — | IRQ-AVB-13 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-53 | VC-IRQ-AVB-14 | 検証ケース | — | IRQ-AVB-14 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-54 | VC-IRQ-AVB-15 | 検証ケース | — | IRQ-AVB-15 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-55 | VC-IRQ-CAC-01 | 検証ケース | — | IRQ-CAC-01 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-56 | VC-IRQ-CAC-05 | 検証ケース | — | IRQ-CAC-05 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-57 | VC-IRQ-CAC-06 | 検証ケース | — | IRQ-CAC-06 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-58 | VC-IRQ-CAC-07 | 検証ケース | — | IRQ-CAC-07 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-59 | VC-IRQ-CAC-09 | 検証ケース | — | IRQ-CAC-09 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-60 | VC-IRQ-CAC-11 | 検証ケース | — | IRQ-CAC-11 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-61 | VC-IRQ-CAC-12 | 検証ケース | — | IRQ-CAC-12 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-62 | VC-IRQ-CAC-13 | 検証ケース | — | IRQ-CAC-13 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-63 | VC-IRQ-CAC-14 | 検証ケース | — | IRQ-CAC-14 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-64 | VC-IRQ-CO2-05 | 検証ケース | — | IRQ-CO2-05 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-65 | VC-IRQ-CO2-06 | 検証ケース | — | IRQ-CO2-06 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-66 | VC-IRQ-CO2-07 | 検証ケース | — | IRQ-CO2-07 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-67 | VC-IRQ-CREW-01 | 検証ケース | — | IRQ-CREW-01 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-68 | VC-IRQ-CREW-02 | 検証ケース | — | IRQ-CREW-02 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-69 | VC-IRQ-CREW-03 | 検証ケース | — | IRQ-CREW-03 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-70 | VC-IRQ-CREW-04 | 検証ケース | — | IRQ-CREW-04 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-71 | VC-IRQ-CREW-05 | 検証ケース | — | IRQ-CREW-05 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-72 | VC-IRQ-CREW-07 | 検証ケース | — | IRQ-CREW-07 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-73 | VC-IRQ-CREW-08 | 検証ケース | — | IRQ-CREW-08 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-74 | VC-IRQ-CREW-09 | 検証ケース | — | IRQ-CREW-09 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-75 | VC-IRQ-CREW-10 | 検証ケース | — | IRQ-CREW-10 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-76 | VC-IRQ-CREW-11 | 検証ケース | — | IRQ-CREW-11 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-77 | VC-IRQ-CT-12 | 検証ケース | — | IRQ-CT-12 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-78 | VC-IRQ-CT-15 | 検証ケース | — | IRQ-CT-15 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-79 | VC-IRQ-CT-18 | 検証ケース | — | IRQ-CT-18 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-80 | VC-IRQ-CT-20 | 検証ケース | — | IRQ-CT-20 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-81 | VC-IRQ-CT-22 | 検証ケース | — | IRQ-CT-22 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-82 | VC-IRQ-CT-24 | 検証ケース | — | IRQ-CT-24 の検証（判定 inconclusive。区分1 記録の食い違い） |
| GAP-01-83 | VC-IRQ-CW-05 | 検証ケース | — | IRQ-CW-05 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-84 | VC-IRQ-CW-06 | 検証ケース | — | IRQ-CW-06 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-85 | VC-IRQ-CW-07 | 検証ケース | — | IRQ-CW-07 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-86 | VC-IRQ-CW-08 | 検証ケース | — | IRQ-CW-08 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-87 | VC-IRQ-CW-09 | 検証ケース | — | IRQ-CW-09 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-88 | VC-IRQ-DPS-02 | 検証ケース | — | IRQ-DPS-02 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-89 | VC-IRQ-DPS-04 | 検証ケース | — | IRQ-DPS-04 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-90 | VC-IRQ-DPS-06 | 検証ケース | — | IRQ-DPS-06 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-91 | VC-IRQ-DPS-13 | 検証ケース | — | IRQ-DPS-13 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-92 | VC-IRQ-DPS-15 | 検証ケース | — | IRQ-DPS-15 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-93 | VC-IRQ-DPS-17 | 検証ケース | — | IRQ-DPS-17 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-94 | VC-IRQ-DPS-22 | 検証ケース | — | IRQ-DPS-22 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-95 | VC-IRQ-ECL-07 | 検証ケース | — | IRQ-ECL-07 の検証（判定 inconclusive。区分1 記録の食い違い） |
| GAP-01-96 | VC-IRQ-ECL-08 | 検証ケース | — | IRQ-ECL-08 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-97 | VC-IRQ-ECL-13 | 検証ケース | — | IRQ-ECL-13 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-98 | VC-IRQ-ECL-16 | 検証ケース | — | IRQ-ECL-16 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-99 | VC-IRQ-ECL-18 | 検証ケース | — | IRQ-ECL-18 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-100 | VC-IRQ-ECL-19 | 検証ケース | — | IRQ-ECL-19 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-101 | VC-IRQ-ECL-23 | 検証ケース | — | IRQ-ECL-23 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-102 | VC-IRQ-ECL-24 | 検証ケース | — | IRQ-ECL-24 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-103 | VC-IRQ-ECL-26 | 検証ケース | — | IRQ-ECL-26 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-104 | VC-IRQ-ECL-27 | 検証ケース | — | IRQ-ECL-27 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-105 | VC-IRQ-ECL-29 | 検証ケース | — | IRQ-ECL-29 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-106 | VC-IRQ-ECL-33 | 検証ケース | — | IRQ-ECL-33 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-107 | VC-IRQ-ECL-34 | 検証ケース | — | IRQ-ECL-34 の検証（判定 inconclusive。区分1 記録の食い違い） |
| GAP-01-108 | VC-IRQ-ECL-35 | 検証ケース | — | IRQ-ECL-35 の検証（判定 inconclusive。区分1 記録の食い違い） |
| GAP-01-109 | VC-IRQ-ECL-36 | 検証ケース | — | IRQ-ECL-36 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-110 | VC-IRQ-ECL-38 | 検証ケース | — | IRQ-ECL-38 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-111 | VC-IRQ-ECL-39 | 検証ケース | — | IRQ-ECL-39 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-112 | VC-IRQ-ECL-40 | 検証ケース | — | IRQ-ECL-40 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-113 | VC-IRQ-ECL-42 | 検証ケース | — | IRQ-ECL-42 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-114 | VC-IRQ-EPS-02 | 検証ケース | — | IRQ-EPS-02 の検証（判定 inconclusive。区分1 記録の食い違い） |
| GAP-01-115 | VC-IRQ-EPS-05 | 検証ケース | — | IRQ-EPS-05 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-116 | VC-IRQ-EPS-13 | 検証ケース | — | IRQ-EPS-13 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-117 | VC-IRQ-EPS-15 | 検証ケース | — | IRQ-EPS-15 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-118 | VC-IRQ-EPS-16 | 検証ケース | — | IRQ-EPS-16 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-119 | VC-IRQ-ET-03 | 検証ケース | — | IRQ-ET-03 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-120 | VC-IRQ-ET-04 | 検証ケース | — | IRQ-ET-04 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-121 | VC-IRQ-ET-05 | 検証ケース | — | IRQ-ET-05 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-122 | VC-IRQ-EVA-02 | 検証ケース | — | IRQ-EVA-02 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-123 | VC-IRQ-EVA-03 | 検証ケース | — | IRQ-EVA-03 の検証（判定 inconclusive。区分1 記録の食い違い） |
| GAP-01-124 | VC-IRQ-EVA-05 | 検証ケース | — | IRQ-EVA-05 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-125 | VC-IRQ-EVA-08 | 検証ケース | — | IRQ-EVA-08 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-126 | VC-IRQ-EVA-13 | 検証ケース | — | IRQ-EVA-13 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-127 | VC-IRQ-FDS-01 | 検証ケース | — | IRQ-FDS-01 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-128 | VC-IRQ-FDS-02 | 検証ケース | — | IRQ-FDS-02 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-129 | VC-IRQ-FDS-04 | 検証ケース | — | IRQ-FDS-04 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-130 | VC-IRQ-FDS-06 | 検証ケース | — | IRQ-FDS-06 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-131 | VC-IRQ-FDS-07 | 検証ケース | — | IRQ-FDS-07 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-132 | VC-IRQ-FDS-08 | 検証ケース | — | IRQ-FDS-08 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-133 | VC-IRQ-FDS-09 | 検証ケース | — | IRQ-FDS-09 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-134 | VC-IRQ-FDS-10 | 検証ケース | — | IRQ-FDS-10 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-135 | VC-IRQ-FDS-11 | 検証ケース | — | IRQ-FDS-11 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-136 | VC-IRQ-FDS-12 | 検証ケース | — | IRQ-FDS-12 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-137 | VC-IRQ-FDS-13 | 検証ケース | — | IRQ-FDS-13 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-138 | VC-IRQ-FDS-14 | 検証ケース | — | IRQ-FDS-14 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-139 | VC-IRQ-GNC-07 | 検証ケース | — | IRQ-GNC-07 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-140 | VC-IRQ-GNC-08 | 検証ケース | — | IRQ-GNC-08 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-141 | VC-IRQ-GNC-09 | 検証ケース | — | IRQ-GNC-09 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-142 | VC-IRQ-GNC-20 | 検証ケース | — | IRQ-GNC-20 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-143 | VC-IRQ-H2O-03 | 検証ケース | — | IRQ-H2O-03 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-144 | VC-IRQ-H2O-04 | 検証ケース | — | IRQ-H2O-04 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-145 | VC-IRQ-H2O-05 | 検証ケース | — | IRQ-H2O-05 の検証（判定 inconclusive。区分1 記録の食い違い） |
| GAP-01-146 | VC-IRQ-H2O-06 | 検証ケース | — | IRQ-H2O-06 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-147 | VC-IRQ-H2O-09 | 検証ケース | — | IRQ-H2O-09 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-148 | VC-IRQ-H2O-14 | 検証ケース | — | IRQ-H2O-14 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-149 | VC-IRQ-H2O-15 | 検証ケース | — | IRQ-H2O-15 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-150 | VC-IRQ-IMU-01 | 検証ケース | — | IRQ-IMU-01 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-151 | VC-IRQ-IMU-02 | 検証ケース | — | IRQ-IMU-02 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-152 | VC-IRQ-IMU-03 | 検証ケース | — | IRQ-IMU-03 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-153 | VC-IRQ-IMU-04 | 検証ケース | — | IRQ-IMU-04 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-154 | VC-IRQ-IMU-06 | 検証ケース | — | IRQ-IMU-06 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-155 | VC-IRQ-IMU-08 | 検証ケース | — | IRQ-IMU-08 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-156 | VC-IRQ-IMU-09 | 検証ケース | — | IRQ-IMU-09 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-157 | VC-IRQ-IMU-10 | 検証ケース | — | IRQ-IMU-10 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-158 | VC-IRQ-IMU-11 | 検証ケース | — | IRQ-IMU-11 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-159 | VC-IRQ-MECH-01 | 検証ケース | — | IRQ-MECH-01 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-160 | VC-IRQ-MECH-02 | 検証ケース | — | IRQ-MECH-02 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-161 | VC-IRQ-MECH-03 | 検証ケース | — | IRQ-MECH-03 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-162 | VC-IRQ-MECH-04 | 検証ケース | — | IRQ-MECH-04 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-163 | VC-IRQ-MECH-08 | 検証ケース | — | IRQ-MECH-08 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-164 | VC-IRQ-MPS-05 | 検証ケース | — | IRQ-MPS-05 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-165 | VC-IRQ-MPS-06 | 検証ケース | — | IRQ-MPS-06 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-166 | VC-IRQ-MPS-07 | 検証ケース | — | IRQ-MPS-07 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-167 | VC-IRQ-MPS-08 | 検証ケース | — | IRQ-MPS-08 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-168 | VC-IRQ-MPS-09 | 検証ケース | — | IRQ-MPS-09 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-169 | VC-IRQ-MPS-17 | 検証ケース | — | IRQ-MPS-17 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-170 | VC-IRQ-MPS-18 | 検証ケース | — | IRQ-MPS-18 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-171 | VC-IRQ-MPS-19 | 検証ケース | — | IRQ-MPS-19 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-172 | VC-IRQ-MPS-20 | 検証ケース | — | IRQ-MPS-20 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-173 | VC-IRQ-OMS-05 | 検証ケース | — | IRQ-OMS-05 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-174 | VC-IRQ-OMS-06 | 検証ケース | — | IRQ-OMS-06 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-175 | VC-IRQ-OMS-07 | 検証ケース | — | IRQ-OMS-07 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-176 | VC-IRQ-OMS-12 | 検証ケース | — | IRQ-OMS-12 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-177 | VC-IRQ-OMS-13 | 検証ケース | — | IRQ-OMS-13 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-178 | VC-IRQ-OMS-14 | 検証ケース | — | IRQ-OMS-14 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-179 | VC-IRQ-OMS-15 | 検証ケース | — | IRQ-OMS-15 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-180 | VC-IRQ-OMS-16 | 検証ケース | — | IRQ-OMS-16 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-181 | VC-IRQ-OMS-17 | 検証ケース | — | IRQ-OMS-17 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-182 | VC-IRQ-OMS-18 | 検証ケース | — | IRQ-OMS-18 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-183 | VC-IRQ-OMS-19 | 検証ケース | — | IRQ-OMS-19 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-184 | VC-IRQ-ORB-28 | 検証ケース | — | IRQ-ORB-28 の検証（判定 inconclusive。区分1 記録の食い違い） |
| GAP-01-185 | VC-IRQ-PCS-01 | 検証ケース | — | IRQ-PCS-01 の検証（判定 inconclusive。区分1 記録の食い違い） |
| GAP-01-186 | VC-IRQ-PCS-02 | 検証ケース | — | IRQ-PCS-02 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-187 | VC-IRQ-PCS-07 | 検証ケース | — | IRQ-PCS-07 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-188 | VC-IRQ-PCS-08 | 検証ケース | — | IRQ-PCS-08 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-189 | VC-IRQ-PCS-09 | 検証ケース | — | IRQ-PCS-09 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-190 | VC-IRQ-PCS-10 | 検証ケース | — | IRQ-PCS-10 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-191 | VC-IRQ-PCS-12 | 検証ケース | — | IRQ-PCS-12 の検証（判定 inconclusive。区分1 記録の食い違い） |
| GAP-01-192 | VC-IRQ-PCS-13 | 検証ケース | — | IRQ-PCS-13 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-193 | VC-IRQ-PCS-14 | 検証ケース | — | IRQ-PCS-14 の検証（判定 inconclusive。区分1 記録の食い違い） |
| GAP-01-194 | VC-IRQ-PCS-15 | 検証ケース | — | IRQ-PCS-15 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-195 | VC-IRQ-PCS-18 | 検証ケース | — | IRQ-PCS-18 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-196 | VC-IRQ-PCS-19 | 検証ケース | — | IRQ-PCS-19 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-197 | VC-IRQ-PCS-20 | 検証ケース | — | IRQ-PCS-20 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-198 | VC-IRQ-PCS-21 | 検証ケース | — | IRQ-PCS-21 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-199 | VC-IRQ-PCS-22 | 検証ケース | — | IRQ-PCS-22 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-200 | VC-IRQ-PLS-04 | 検証ケース | — | IRQ-PLS-04 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-201 | VC-IRQ-PLS-05 | 検証ケース | — | IRQ-PLS-05 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-202 | VC-IRQ-PLS-09 | 検証ケース | — | IRQ-PLS-09 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-203 | VC-IRQ-RCRS-02 | 検証ケース | — | IRQ-RCRS-02 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-204 | VC-IRQ-RCRS-03 | 検証ケース | — | IRQ-RCRS-03 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-205 | VC-IRQ-RCRS-04 | 検証ケース | — | IRQ-RCRS-04 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-206 | VC-IRQ-RCRS-06 | 検証ケース | — | IRQ-RCRS-06 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-207 | VC-IRQ-RCRS-07 | 検証ケース | — | IRQ-RCRS-07 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-208 | VC-IRQ-RCRS-08 | 検証ケース | — | IRQ-RCRS-08 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-209 | VC-IRQ-RCRS-09 | 検証ケース | — | IRQ-RCRS-09 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-210 | VC-IRQ-RCRS-10 | 検証ケース | — | IRQ-RCRS-10 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-211 | VC-IRQ-RCRS-11 | 検証ケース | — | IRQ-RCRS-11 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-212 | VC-IRQ-RCRS-12 | 検証ケース | — | IRQ-RCRS-12 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-213 | VC-IRQ-RCRS-13 | 検証ケース | — | IRQ-RCRS-13 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-214 | VC-IRQ-RCRS-15 | 検証ケース | — | IRQ-RCRS-15 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-215 | VC-IRQ-RCS-01 | 検証ケース | — | IRQ-RCS-01 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-216 | VC-IRQ-RCS-06 | 検証ケース | — | IRQ-RCS-06 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-217 | VC-IRQ-RCS-07 | 検証ケース | — | IRQ-RCS-07 の検証（判定 inconclusive。区分1 記録の食い違い） |
| GAP-01-218 | VC-IRQ-RCS-08 | 検証ケース | — | IRQ-RCS-08 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-219 | VC-IRQ-RCS-09 | 検証ケース | — | IRQ-RCS-09 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-220 | VC-IRQ-RCS-10 | 検証ケース | — | IRQ-RCS-10 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-221 | VC-IRQ-RCS-11 | 検証ケース | — | IRQ-RCS-11 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-222 | VC-IRQ-RCS-12 | 検証ケース | — | IRQ-RCS-12 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-223 | VC-IRQ-RCS-14 | 検証ケース | — | IRQ-RCS-14 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-224 | VC-IRQ-RCS-15 | 検証ケース | — | IRQ-RCS-15 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-225 | VC-IRQ-RCS-19 | 検証ケース | — | IRQ-RCS-19 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-226 | VC-IRQ-RCS-20 | 検証ケース | — | IRQ-RCS-20 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-227 | VC-IRQ-SRB-05 | 検証ケース | — | IRQ-SRB-05 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-228 | VC-IRQ-STR-04 | 検証ケース | — | IRQ-STR-04 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-229 | VC-IRQ-STR-05 | 検証ケース | — | IRQ-STR-05 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-230 | VC-IRQ-STR-06 | 検証ケース | — | IRQ-STR-06 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-231 | VC-IRQ-STR-07 | 検証ケース | — | IRQ-STR-07 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-232 | VC-IRQ-STR-08 | 検証ケース | — | IRQ-STR-08 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-233 | VC-IRQ-STR-09 | 検証ケース | — | IRQ-STR-09 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-234 | VC-IRQ-TCS-04 | 検証ケース | — | IRQ-TCS-04 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-235 | VC-IRQ-TCS-06 | 検証ケース | — | IRQ-TCS-06 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-236 | VC-IRQ-TCS-14 | 検証ケース | — | IRQ-TCS-14 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-237 | VC-IRQ-TCS-21 | 検証ケース | — | IRQ-TCS-21 の検証（判定 inconclusive。区分1 記録の食い違い） |
| GAP-01-238 | VC-IRQ-THC-04 | 検証ケース | — | IRQ-THC-04 の検証（判定 inconclusive。区分1 記録の食い違い） |
| GAP-01-239 | VC-IRQ-THC-06 | 検証ケース | — | IRQ-THC-06 の検証（判定 inconclusive。区分1 記録の食い違い） |
| GAP-01-240 | VC-IRQ-THC-07 | 検証ケース | — | IRQ-THC-07 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-241 | VC-IRQ-THC-09 | 検証ケース | — | IRQ-THC-09 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-242 | VC-IRQ-THC-10 | 検証ケース | — | IRQ-THC-10 の検証（判定 inconclusive。区分1 記録の食い違い） |
| GAP-01-243 | VC-IRQ-THC-11 | 検証ケース | — | IRQ-THC-11 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-244 | VC-IRQ-THC-12 | 検証ケース | — | IRQ-THC-12 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-245 | VC-IRQ-THC-13 | 検証ケース | — | IRQ-THC-13 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-246 | VC-IRQ-THC-16 | 検証ケース | — | IRQ-THC-16 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-247 | VC-IRQ-THC-17 | 検証ケース | — | IRQ-THC-17 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-248 | VC-IRQ-THC-18 | 検証ケース | — | IRQ-THC-18 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-249 | VC-IRQ-WCL-01 | 検証ケース | — | IRQ-WCL-01 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-250 | VC-IRQ-WCL-04 | 検証ケース | — | IRQ-WCL-04 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-251 | VC-IRQ-WCL-05 | 検証ケース | — | IRQ-WCL-05 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-252 | VC-IRQ-WCL-06 | 検証ケース | — | IRQ-WCL-06 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-253 | VC-IRQ-WCL-11 | 検証ケース | — | IRQ-WCL-11 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-254 | VC-IRQ-WCL-12 | 検証ケース | — | IRQ-WCL-12 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-255 | VC-IRQ-WCL-13 | 検証ケース | — | IRQ-WCL-13 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-256 | VC-IRQ-WCL-14 | 検証ケース | — | IRQ-WCL-14 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-257 | VC-IRQ-WCL-16 | 検証ケース | — | IRQ-WCL-16 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-258 | VC-IRQ-WCL-18 | 検証ケース | — | IRQ-WCL-18 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-259 | VC-IRQ-WCL-19 | 検証ケース | — | IRQ-WCL-19 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-260 | VC-IRQ-WCL-22 | 検証ケース | — | IRQ-WCL-22 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-261 | VC-IRQ-WCS-01 | 検証ケース | — | IRQ-WCS-01 の検証（判定 inconclusive。区分1 記録の食い違い） |
| GAP-01-262 | VC-IRQ-WCS-03 | 検証ケース | — | IRQ-WCS-03 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-263 | VC-IRQ-WCS-04 | 検証ケース | — | IRQ-WCS-04 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-264 | VC-IRQ-WCS-05 | 検証ケース | — | IRQ-WCS-05 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-265 | VC-IRQ-WCS-07 | 検証ケース | — | IRQ-WCS-07 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-266 | VC-IRQ-WCS-08 | 検証ケース | — | IRQ-WCS-08 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-267 | VC-IRQ-WCS-10 | 検証ケース | — | IRQ-WCS-10 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-268 | VC-IRQ-WCS-13 | 検証ケース | — | IRQ-WCS-13 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-269 | VC-IRQ-WCS-14 | 検証ケース | — | IRQ-WCS-14 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-270 | VC-IRQ-WCS-15 | 検証ケース | — | IRQ-WCS-15 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-271 | VC-LRQ-APU-03 | 検証ケース | — | LRQ-APU-03 の検証（判定 inconclusive。区分3 解析の結果なし） |
| GAP-01-272 | VC-LRQ-APU-04 | 検証ケース | — | LRQ-APU-04 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-273 | VC-LRQ-APU-06 | 検証ケース | — | LRQ-APU-06 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-274 | VC-LRQ-APU-07 | 検証ケース | — | LRQ-APU-07 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-275 | VC-LRQ-APU-08 | 検証ケース | — | LRQ-APU-08 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-276 | VC-LRQ-APU-11 | 検証ケース | — | LRQ-APU-11 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-277 | VC-LRQ-APU-13 | 検証ケース | — | LRQ-APU-13 の検証（判定 inconclusive。区分1 記録の食い違い） |
| GAP-01-278 | VC-LRQ-APU-15 | 検証ケース | — | LRQ-APU-15 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-279 | VC-LRQ-APU-21 | 検証ケース | — | LRQ-APU-21 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-280 | VC-LRQ-APU-22 | 検証ケース | — | LRQ-APU-22 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-281 | VC-LRQ-CREW-01 | 検証ケース | — | LRQ-CREW-01 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-282 | VC-LRQ-CREW-02 | 検証ケース | — | LRQ-CREW-02 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-283 | VC-LRQ-CREW-06 | 検証ケース | — | LRQ-CREW-06 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-284 | VC-LRQ-CREW-07 | 検証ケース | — | LRQ-CREW-07 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-285 | VC-LRQ-CREW-10 | 検証ケース | — | LRQ-CREW-10 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-286 | VC-LRQ-CREW-12 | 検証ケース | — | LRQ-CREW-12 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-287 | VC-LRQ-CREW-13 | 検証ケース | — | LRQ-CREW-13 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-288 | VC-LRQ-CREW-16 | 検証ケース | — | LRQ-CREW-16 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-289 | VC-LRQ-CREW-18 | 検証ケース | — | LRQ-CREW-18 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-290 | VC-LRQ-CREW-21 | 検証ケース | — | LRQ-CREW-21 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-291 | VC-LRQ-CREW-23 | 検証ケース | — | LRQ-CREW-23 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-292 | VC-LRQ-CREW-24 | 検証ケース | — | LRQ-CREW-24 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-293 | VC-LRQ-CREW-25 | 検証ケース | — | LRQ-CREW-25 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-294 | VC-LRQ-CREW-26 | 検証ケース | — | LRQ-CREW-26 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-295 | VC-LRQ-CREW-27 | 検証ケース | — | LRQ-CREW-27 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-296 | VC-LRQ-CREW-28 | 検証ケース | — | LRQ-CREW-28 の検証（判定 inconclusive。区分3 解析の結果なし） |
| GAP-01-297 | VC-LRQ-CREW-29 | 検証ケース | — | LRQ-CREW-29 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-298 | VC-LRQ-CREW-30 | 検証ケース | — | LRQ-CREW-30 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-299 | VC-LRQ-CT-01 | 検証ケース | — | LRQ-CT-01 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-300 | VC-LRQ-CT-03 | 検証ケース | — | LRQ-CT-03 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-301 | VC-LRQ-CT-04 | 検証ケース | — | LRQ-CT-04 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-302 | VC-LRQ-CT-08 | 検証ケース | — | LRQ-CT-08 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-303 | VC-LRQ-CT-12 | 検証ケース | — | LRQ-CT-12 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-304 | VC-LRQ-CT-14 | 検証ケース | — | LRQ-CT-14 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-305 | VC-LRQ-CT-15 | 検証ケース | — | LRQ-CT-15 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-306 | VC-LRQ-CT-18 | 検証ケース | — | LRQ-CT-18 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-307 | VC-LRQ-CT-20 | 検証ケース | — | LRQ-CT-20 の検証（判定 inconclusive。区分3 解析の結果なし） |
| GAP-01-308 | VC-LRQ-CT-22 | 検証ケース | — | LRQ-CT-22 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-309 | VC-LRQ-CW-01 | 検証ケース | — | LRQ-CW-01 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-310 | VC-LRQ-CW-02 | 検証ケース | — | LRQ-CW-02 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-311 | VC-LRQ-CW-04 | 検証ケース | — | LRQ-CW-04 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-312 | VC-LRQ-CW-07 | 検証ケース | — | LRQ-CW-07 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-313 | VC-LRQ-CW-08 | 検証ケース | — | LRQ-CW-08 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-314 | VC-LRQ-CW-09 | 検証ケース | — | LRQ-CW-09 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-315 | VC-LRQ-CW-11 | 検証ケース | — | LRQ-CW-11 の検証（判定 inconclusive。区分3 解析の結果なし） |
| GAP-01-316 | VC-LRQ-CW-12 | 検証ケース | — | LRQ-CW-12 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-317 | VC-LRQ-CW-13 | 検証ケース | — | LRQ-CW-13 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-318 | VC-LRQ-CW-14 | 検証ケース | — | LRQ-CW-14 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-319 | VC-LRQ-CW-16 | 検証ケース | — | LRQ-CW-16 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-320 | VC-LRQ-CW-17 | 検証ケース | — | LRQ-CW-17 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-321 | VC-LRQ-CW-18 | 検証ケース | — | LRQ-CW-18 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-322 | VC-LRQ-CW-22 | 検証ケース | — | LRQ-CW-22 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-323 | VC-LRQ-DPS-03 | 検証ケース | — | LRQ-DPS-03 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-324 | VC-LRQ-DPS-04 | 検証ケース | — | LRQ-DPS-04 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-325 | VC-LRQ-DPS-07 | 検証ケース | — | LRQ-DPS-07 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-326 | VC-LRQ-DPS-08 | 検証ケース | — | LRQ-DPS-08 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-327 | VC-LRQ-DPS-10 | 検証ケース | — | LRQ-DPS-10 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-328 | VC-LRQ-DPS-13 | 検証ケース | — | LRQ-DPS-13 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-329 | VC-LRQ-DPS-14 | 検証ケース | — | LRQ-DPS-14 の検証（判定 inconclusive。区分3 解析の結果なし） |
| GAP-01-330 | VC-LRQ-DPS-15 | 検証ケース | — | LRQ-DPS-15 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-331 | VC-LRQ-DPS-17 | 検証ケース | — | LRQ-DPS-17 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-332 | VC-LRQ-DPS-18 | 検証ケース | — | LRQ-DPS-18 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-333 | VC-LRQ-DPS-20 | 検証ケース | — | LRQ-DPS-20 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-334 | VC-LRQ-DPS-22 | 検証ケース | — | LRQ-DPS-22 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-335 | VC-LRQ-DPS-23 | 検証ケース | — | LRQ-DPS-23 の検証（判定 inconclusive。区分3 解析の結果なし） |
| GAP-01-336 | VC-LRQ-DPS-25 | 検証ケース | — | LRQ-DPS-25 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-337 | VC-LRQ-DPS-29 | 検証ケース | — | LRQ-DPS-29 の検証（判定 inconclusive。区分3 解析の結果なし） |
| GAP-01-338 | VC-LRQ-DPS-30 | 検証ケース | — | LRQ-DPS-30 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-339 | VC-LRQ-EPS-01 | 検証ケース | — | LRQ-EPS-01 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-340 | VC-LRQ-EPS-02 | 検証ケース | — | LRQ-EPS-02 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-341 | VC-LRQ-EPS-04 | 検証ケース | — | LRQ-EPS-04 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-342 | VC-LRQ-EPS-08 | 検証ケース | — | LRQ-EPS-08 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-343 | VC-LRQ-EPS-09 | 検証ケース | — | LRQ-EPS-09 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-344 | VC-LRQ-EPS-10 | 検証ケース | — | LRQ-EPS-10 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-345 | VC-LRQ-EPS-11 | 検証ケース | — | LRQ-EPS-11 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-346 | VC-LRQ-EPS-12 | 検証ケース | — | LRQ-EPS-12 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-347 | VC-LRQ-EPS-15 | 検証ケース | — | LRQ-EPS-15 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-348 | VC-LRQ-EPS-18 | 検証ケース | — | LRQ-EPS-18 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-349 | VC-LRQ-ET-01 | 検証ケース | — | LRQ-ET-01 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-350 | VC-LRQ-ET-03 | 検証ケース | — | LRQ-ET-03 の検証（判定 inconclusive。区分3 解析の結果なし） |
| GAP-01-351 | VC-LRQ-ET-04 | 検証ケース | — | LRQ-ET-04 の検証（判定 inconclusive。区分3 解析の結果なし） |
| GAP-01-352 | VC-LRQ-ET-05 | 検証ケース | — | LRQ-ET-05 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-353 | VC-LRQ-ET-07 | 検証ケース | — | LRQ-ET-07 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-354 | VC-LRQ-ET-09 | 検証ケース | — | LRQ-ET-09 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-355 | VC-LRQ-ET-10 | 検証ケース | — | LRQ-ET-10 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-356 | VC-LRQ-ET-11 | 検証ケース | — | LRQ-ET-11 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-357 | VC-LRQ-ET-12 | 検証ケース | — | LRQ-ET-12 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-358 | VC-LRQ-ET-13 | 検証ケース | — | LRQ-ET-13 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-359 | VC-LRQ-ET-15 | 検証ケース | — | LRQ-ET-15 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-360 | VC-LRQ-ET-16 | 検証ケース | — | LRQ-ET-16 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-361 | VC-LRQ-ET-20 | 検証ケース | — | LRQ-ET-20 の検証（判定 inconclusive。区分1 記録の食い違い） |
| GAP-01-362 | VC-LRQ-ET-24 | 検証ケース | — | LRQ-ET-24 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-363 | VC-LRQ-ET-25 | 検証ケース | — | LRQ-ET-25 の検証（判定 inconclusive。区分1 記録の食い違い） |
| GAP-01-364 | VC-LRQ-ET-27 | 検証ケース | — | LRQ-ET-27 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-365 | VC-LRQ-EVA-02 | 検証ケース | — | LRQ-EVA-02 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-366 | VC-LRQ-EVA-04 | 検証ケース | — | LRQ-EVA-04 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-367 | VC-LRQ-EVA-08 | 検証ケース | — | LRQ-EVA-08 の検証（判定 inconclusive。区分3 解析の結果なし） |
| GAP-01-368 | VC-LRQ-EVA-10 | 検証ケース | — | LRQ-EVA-10 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-369 | VC-LRQ-EVA-11 | 検証ケース | — | LRQ-EVA-11 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-370 | VC-LRQ-EVA-12 | 検証ケース | — | LRQ-EVA-12 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-371 | VC-LRQ-EVA-13 | 検証ケース | — | LRQ-EVA-13 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-372 | VC-LRQ-EVA-15 | 検証ケース | — | LRQ-EVA-15 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-373 | VC-LRQ-EVA-18 | 検証ケース | — | LRQ-EVA-18 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-374 | VC-LRQ-EVA-19 | 検証ケース | — | LRQ-EVA-19 の検証（判定 inconclusive。区分3 解析の結果なし） |
| GAP-01-375 | VC-LRQ-EVA-22 | 検証ケース | — | LRQ-EVA-22 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-376 | VC-LRQ-EVA-23 | 検証ケース | — | LRQ-EVA-23 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-377 | VC-LRQ-EVA-24 | 検証ケース | — | LRQ-EVA-24 の検証（判定 inconclusive。区分3 解析の結果なし） |
| GAP-01-378 | VC-LRQ-EVA-25 | 検証ケース | — | LRQ-EVA-25 の検証（判定 inconclusive。区分1 記録の食い違い） |
| GAP-01-379 | VC-LRQ-EVA-26 | 検証ケース | — | LRQ-EVA-26 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-380 | VC-LRQ-EVA-29 | 検証ケース | — | LRQ-EVA-29 の検証（判定 inconclusive。区分3 解析の結果なし） |
| GAP-01-381 | VC-LRQ-GNC-02 | 検証ケース | — | LRQ-GNC-02 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-382 | VC-LRQ-GNC-07 | 検証ケース | — | LRQ-GNC-07 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-383 | VC-LRQ-GNC-21 | 検証ケース | — | LRQ-GNC-21 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-384 | VC-LRQ-GNC-25 | 検証ケース | — | LRQ-GNC-25 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-385 | VC-LRQ-GNC-27 | 検証ケース | — | LRQ-GNC-27 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-386 | VC-LRQ-MECH-02 | 検証ケース | — | LRQ-MECH-02 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-387 | VC-LRQ-MECH-03 | 検証ケース | — | LRQ-MECH-03 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-388 | VC-LRQ-MECH-08 | 検証ケース | — | LRQ-MECH-08 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-389 | VC-LRQ-MECH-09 | 検証ケース | — | LRQ-MECH-09 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-390 | VC-LRQ-MECH-11 | 検証ケース | — | LRQ-MECH-11 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-391 | VC-LRQ-MECH-12 | 検証ケース | — | LRQ-MECH-12 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-392 | VC-LRQ-MECH-14 | 検証ケース | — | LRQ-MECH-14 の検証（判定 inconclusive。区分3 解析の結果なし） |
| GAP-01-393 | VC-LRQ-MECH-17 | 検証ケース | — | LRQ-MECH-17 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-394 | VC-LRQ-MECH-18 | 検証ケース | — | LRQ-MECH-18 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-395 | VC-LRQ-MECH-19 | 検証ケース | — | LRQ-MECH-19 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-396 | VC-LRQ-MECH-22 | 検証ケース | — | LRQ-MECH-22 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-397 | VC-LRQ-MECH-23 | 検証ケース | — | LRQ-MECH-23 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-398 | VC-LRQ-MPS-01 | 検証ケース | — | LRQ-MPS-01 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-399 | VC-LRQ-MPS-02 | 検証ケース | — | LRQ-MPS-02 の検証（判定 inconclusive。区分3 解析の結果なし） |
| GAP-01-400 | VC-LRQ-MPS-06 | 検証ケース | — | LRQ-MPS-06 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-401 | VC-LRQ-MPS-09 | 検証ケース | — | LRQ-MPS-09 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-402 | VC-LRQ-MPS-14 | 検証ケース | — | LRQ-MPS-14 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-403 | VC-LRQ-MPS-15 | 検証ケース | — | LRQ-MPS-15 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-404 | VC-LRQ-MPS-16 | 検証ケース | — | LRQ-MPS-16 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-405 | VC-LRQ-MPS-17 | 検証ケース | — | LRQ-MPS-17 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-406 | VC-LRQ-MPS-19 | 検証ケース | — | LRQ-MPS-19 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-407 | VC-LRQ-MPS-26 | 検証ケース | — | LRQ-MPS-26 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-408 | VC-LRQ-MPS-27 | 検証ケース | — | LRQ-MPS-27 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-409 | VC-LRQ-MPS-29 | 検証ケース | — | LRQ-MPS-29 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-410 | VC-LRQ-OMS-01 | 検証ケース | — | LRQ-OMS-01 の検証（判定 inconclusive。区分3 解析の結果なし） |
| GAP-01-411 | VC-LRQ-OMS-03 | 検証ケース | — | LRQ-OMS-03 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-412 | VC-LRQ-OMS-04 | 検証ケース | — | LRQ-OMS-04 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-413 | VC-LRQ-OMS-05 | 検証ケース | — | LRQ-OMS-05 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-414 | VC-LRQ-OMS-06 | 検証ケース | — | LRQ-OMS-06 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-415 | VC-LRQ-OMS-08 | 検証ケース | — | LRQ-OMS-08 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-416 | VC-LRQ-OMS-10 | 検証ケース | — | LRQ-OMS-10 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-417 | VC-LRQ-OMS-11 | 検証ケース | — | LRQ-OMS-11 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-418 | VC-LRQ-OMS-12 | 検証ケース | — | LRQ-OMS-12 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-419 | VC-LRQ-OMS-13 | 検証ケース | — | LRQ-OMS-13 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-420 | VC-LRQ-OMS-16 | 検証ケース | — | LRQ-OMS-16 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-421 | VC-LRQ-OMS-18 | 検証ケース | — | LRQ-OMS-18 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-422 | VC-LRQ-OMS-21 | 検証ケース | — | LRQ-OMS-21 の検証（判定 inconclusive。区分3 解析の結果なし） |
| GAP-01-423 | VC-LRQ-OMS-24 | 検証ケース | — | LRQ-OMS-24 の検証（判定 inconclusive。区分3 解析の結果なし） |
| GAP-01-424 | VC-LRQ-OMS-27 | 検証ケース | — | LRQ-OMS-27 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-425 | VC-LRQ-OMS-29 | 検証ケース | — | LRQ-OMS-29 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-426 | VC-LRQ-PLS-03 | 検証ケース | — | LRQ-PLS-03 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-427 | VC-LRQ-PLS-06 | 検証ケース | — | LRQ-PLS-06 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-428 | VC-LRQ-PLS-10 | 検証ケース | — | LRQ-PLS-10 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-429 | VC-LRQ-PLS-14 | 検証ケース | — | LRQ-PLS-14 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-430 | VC-LRQ-PLS-19 | 検証ケース | — | LRQ-PLS-19 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-431 | VC-LRQ-PLS-21 | 検証ケース | — | LRQ-PLS-21 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-432 | VC-LRQ-PLS-24 | 検証ケース | — | LRQ-PLS-24 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-433 | VC-LRQ-PLS-25 | 検証ケース | — | LRQ-PLS-25 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-434 | VC-LRQ-RCS-01 | 検証ケース | — | LRQ-RCS-01 の検証（判定 inconclusive。区分3 解析の結果なし） |
| GAP-01-435 | VC-LRQ-RCS-02 | 検証ケース | — | LRQ-RCS-02 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-436 | VC-LRQ-RCS-04 | 検証ケース | — | LRQ-RCS-04 の検証（判定 inconclusive。区分3 解析の結果なし） |
| GAP-01-437 | VC-LRQ-RCS-05 | 検証ケース | — | LRQ-RCS-05 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-438 | VC-LRQ-RCS-07 | 検証ケース | — | LRQ-RCS-07 の検証（判定 inconclusive。区分3 解析の結果なし） |
| GAP-01-439 | VC-LRQ-RCS-17 | 検証ケース | — | LRQ-RCS-17 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-440 | VC-LRQ-RCS-19 | 検証ケース | — | LRQ-RCS-19 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-441 | VC-LRQ-RCS-20 | 検証ケース | — | LRQ-RCS-20 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-442 | VC-LRQ-RCS-23 | 検証ケース | — | LRQ-RCS-23 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-443 | VC-LRQ-RCS-25 | 検証ケース | — | LRQ-RCS-25 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-444 | VC-LRQ-RCS-27 | 検証ケース | — | LRQ-RCS-27 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-445 | VC-LRQ-RCS-30 | 検証ケース | — | LRQ-RCS-30 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-446 | VC-LRQ-SRB-02 | 検証ケース | — | LRQ-SRB-02 の検証（判定 inconclusive。区分3 解析の結果なし） |
| GAP-01-447 | VC-LRQ-SRB-05 | 検証ケース | — | LRQ-SRB-05 の検証（判定 inconclusive。区分1 記録の食い違い） |
| GAP-01-448 | VC-LRQ-SRB-06 | 検証ケース | — | LRQ-SRB-06 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-449 | VC-LRQ-SRB-07 | 検証ケース | — | LRQ-SRB-07 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-450 | VC-LRQ-SRB-12 | 検証ケース | — | LRQ-SRB-12 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-451 | VC-LRQ-SRB-13 | 検証ケース | — | LRQ-SRB-13 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-452 | VC-LRQ-SRB-23 | 検証ケース | — | LRQ-SRB-23 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-453 | VC-LRQ-SRB-24 | 検証ケース | — | LRQ-SRB-24 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-454 | VC-LRQ-SRB-28 | 検証ケース | — | LRQ-SRB-28 の検証（判定 inconclusive。区分1 記録の食い違い） |
| GAP-01-455 | VC-LRQ-STR-01 | 検証ケース | — | LRQ-STR-01 の検証（判定 inconclusive。区分3 解析の結果なし） |
| GAP-01-456 | VC-LRQ-STR-02 | 検証ケース | — | LRQ-STR-02 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-457 | VC-LRQ-STR-04 | 検証ケース | — | LRQ-STR-04 の検証（判定 inconclusive。区分3 解析の結果なし） |
| GAP-01-458 | VC-LRQ-STR-08 | 検証ケース | — | LRQ-STR-08 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-459 | VC-LRQ-STR-09 | 検証ケース | — | LRQ-STR-09 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-460 | VC-LRQ-STR-11 | 検証ケース | — | LRQ-STR-11 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-461 | VC-LRQ-STR-12 | 検証ケース | — | LRQ-STR-12 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-462 | VC-LRQ-STR-14 | 検証ケース | — | LRQ-STR-14 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-463 | VC-LRQ-STR-15 | 検証ケース | — | LRQ-STR-15 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-464 | VC-LRQ-STR-17 | 検証ケース | — | LRQ-STR-17 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-465 | VC-LRQ-STR-20 | 検証ケース | — | LRQ-STR-20 の検証（判定 inconclusive。区分3 解析の結果なし） |
| GAP-01-466 | VC-LRQ-STR-21 | 検証ケース | — | LRQ-STR-21 の検証（判定 inconclusive。区分3 解析の結果なし） |
| GAP-01-467 | VC-LRQ-STR-22 | 検証ケース | — | LRQ-STR-22 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-468 | VC-LRQ-STR-23 | 検証ケース | — | LRQ-STR-23 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-469 | VC-LRQ-STR-24 | 検証ケース | — | LRQ-STR-24 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-470 | VC-LRQ-TPS-01 | 検証ケース | — | LRQ-TPS-01 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-471 | VC-LRQ-TPS-02 | 検証ケース | — | LRQ-TPS-02 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-472 | VC-LRQ-TPS-06 | 検証ケース | — | LRQ-TPS-06 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-473 | VC-LRQ-TPS-08 | 検証ケース | — | LRQ-TPS-08 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-474 | VC-LRQ-TPS-10 | 検証ケース | — | LRQ-TPS-10 の検証（判定 inconclusive。区分4 関連記録のみ） |
| GAP-01-475 | VC-REQ-ARS-08 | 検証ケース | — | REQ-ARS-08 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-476 | VC-REQ-ARS-15 | 検証ケース | — | REQ-ARS-15 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-477 | VC-REQ-ARS-17 | 検証ケース | — | REQ-ARS-17 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-478 | VC-REQ-ARS-27 | 検証ケース | — | REQ-ARS-27 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-479 | VC-REQ-ARS-41 | 検証ケース | — | REQ-ARS-41 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-480 | VC-REQ-FDS-08 | 検証ケース | — | REQ-FDS-08 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-481 | VC-REQ-PCS-08 | 検証ケース | — | REQ-PCS-08 の検証（判定 inconclusive。区分5 記録なし） |
| GAP-01-482 | VC-REQ-PCS-12 | 検証ケース | — | REQ-PCS-12 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-483 | VC-REQ-WCS-08 | 検証ケース | — | REQ-WCS-08 の検証（判定 inconclusive。区分2 起きていない事象） |
| GAP-01-484 | VC-REQ-WCS-10 | 検証ケース | — | REQ-WCS-10 の検証（判定 inconclusive。区分2 起きていない事象） |

## 9. 系ごとの切れ目の件数

一覧に載せない分類の、系ごとの件数を示す。

| 系 | GAP-02 要求なしで妥当と判断した機能行 | GAP-03 トレースの対象外の機能行 | GAP-04 要求の割付先でない IF | GAP-05 振る舞い・流れが通らない IF | GAP-07 故障解析の対応が無い機能ブロック | GAP-08 振る舞いに現れない機能ブロック | GAP-11 機能ブロックの中の流れ（IF にしない） | GAP-12 故障モードが当てはまらないと判断した機能ブロック | GAP-13 上位なしの下位 IF のインタフェース要求 |
|---|---|---|---|---|---|---|---|---|---|
| APU | 7 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 3 |
| CREW | 5 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 1 |
| CT | 7 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| CW | 4 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| DPS | 10 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 2 |
| ECLSS | 29 | 0 | 0 | 0 | 0 | 0 | 0 | 11 | 70 |
| EPS | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 3 |
| EVA | 14 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 2 |
| GNC | 11 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 4 |
| MECH | 8 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 3 |
| MPS | 7 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 3 |
| OMS | 8 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 5 |
| PLS | 7 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| RCS | 10 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 2 |
| STR | 5 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 2 |
| TPS | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| ET | 3 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| SRB | 2 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 1 |
| 計 | 138 | 10 | 0 | 0 | 0 | 0 | 153 | 11 | 101 |

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
| IMP-01 | PHY-EPS-01（燃料電池発電装置（FC）） | 燃料電池発電装置の変更（例：出力・冷却の仕様変更） | 1 | 1 | 11 | 3 | 23 | 2 | 12 | 28 | 19 | 37 | 16 | 0 | 7 | 1 |
| IMP-02 | PHY-ECLSS-04（能動熱制御系（ATCS）フレオン冷却ループのポンプパッケージ（フレオンポンプ・アキュムレータ）とフレオン／水熱交換器） | フレオン冷却ループのポンプパッケージ・インターチェンジャの変更 | 1 | 1 | 25 | 3 | 9 | 4 | 4 | 12 | 10 | 18 | 7 | 0 | 0 | 0 |
| IMP-03 | PHY-MPS-05（MPSヘリウムタンク（He供給タンク）） | MPS ヘリウムタンクの変更（例：容量・圧力） | 1 | 1 | 14 | 2 | 5 | 2 | 4 | 10 | 10 | 17 | 74 | 2 | 3 | 1 |
| IMP-04 | PHY-DPS-01（GPC（汎用計算機、IBM AP-101S）） | GPC（汎用計算機）の変更 | 1 | 1 | 16 | 1 | 11 | 2 | 4 | 14 | 16 | 27 | 4 | 0 | 0 | 1 |
| IMP-05 | PHY-ECLSS-01（大気再生系（ARS）の床下機器：キャビンファン・キャビン熱交換器・水酸化リチウム（LiOH）キャニスタ・水冷却ループ水ポンプ） | ARS 床下機器（キャビンファン・熱交換器・LiOH キャニスタ）の変更 | 1 | 1 | 105 | 10 | 28 | 10 | 35 | 62 | 27 | 73 | 25 | 0 | 12 | 0 |

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
| IF | 12 | IF-ECL-10・IF-EPS-03・IF-EPS-05・IF-EPS-06・IF-EPS-07・IF-EPS-08・IF-EPS-09・IF-EPS-13・IF-EPS-16・IF-ORB-10・IF-ORB-11・IF-ORB-20 |
| L2 要求 | 28 | IRQ-EPS-03・IRQ-EPS-05・IRQ-EPS-06・IRQ-EPS-07・IRQ-EPS-08・IRQ-EPS-09・IRQ-EPS-13・IRQ-EPS-16・IRQ-ORB-10・IRQ-ORB-11・IRQ-ORB-20・LRQ-EPS-05・LRQ-EPS-06・LRQ-EPS-07・LRQ-EPS-08・LRQ-EPS-09・REQ-ECLSS-08・REQ-ECLSS-10・REQ-EPS-01・REQ-EPS-02・REQ-EPS-03・REQ-EPS-04・REQ-EPS-05・REQ-EPS-14・REQ-EPS-15・REQ-EPS-16・REQ-EPS-18・REQ-EPS-20 |
| L1 要求 | 19 | IRQ-ORB-20・LRQ-EPS-01・LRQ-EPS-07・LRQ-EPS-08・REQ-ECLSS-08・REQ-ECLSS-10・REQ-EPS-03・REQ-EPS-06・REQ-EPS-07・REQ-EPS-14・REQ-EPS-15・REQ-EPS-16・REQ-EPS-20・REQ-SYS-04・REQ-SYS-06・REQ-SYS-07・REQ-SYS-10・REQ-SYS-14・REQ-SYS-16 |
| 検証ケース | 37 | VC-IRQ-EPS-03・VC-IRQ-EPS-05・VC-IRQ-EPS-06・VC-IRQ-EPS-07・VC-IRQ-EPS-08・VC-IRQ-EPS-09・VC-IRQ-EPS-13・VC-IRQ-EPS-16・VC-IRQ-ORB-10・VC-IRQ-ORB-11・VC-IRQ-ORB-20・VC-LRQ-EPS-01・VC-LRQ-EPS-05・VC-LRQ-EPS-06・VC-LRQ-EPS-07・VC-LRQ-EPS-08・VC-LRQ-EPS-09・VC-REQ-ECLSS-08・VC-REQ-ECLSS-10・VC-REQ-EPS-01・VC-REQ-EPS-02・VC-REQ-EPS-03・VC-REQ-EPS-04・VC-REQ-EPS-05・VC-REQ-EPS-06・VC-REQ-EPS-07・VC-REQ-EPS-14・VC-REQ-EPS-15・VC-REQ-EPS-16・VC-REQ-EPS-18・VC-REQ-EPS-20・VC-REQ-SYS-04・VC-REQ-SYS-06・VC-REQ-SYS-07・VC-REQ-SYS-10・VC-REQ-SYS-14・VC-REQ-SYS-16 |
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
| L2 要求 | 12 | IRQ-TCS-01・IRQ-TCS-07・IRQ-TCS-21・IRQ-WCL-08・REQ-ARS-34・REQ-ARS-39・REQ-ATCS-01・REQ-ATCS-02・REQ-ATCS-03・REQ-ECLSS-01・REQ-ECLSS-08・REQ-ECLSS-09 |
| L1 要求 | 10 | REQ-ARS-34・REQ-ATCS-02・REQ-ECLSS-07・REQ-ECLSS-08・REQ-ECLSS-09・REQ-SYS-05・REQ-SYS-07・REQ-SYS-10・REQ-SYS-14・REQ-SYS-15 |
| 検証ケース | 18 | VC-IRQ-TCS-01・VC-IRQ-TCS-07・VC-IRQ-TCS-21・VC-IRQ-WCL-08・VC-REQ-ARS-34・VC-REQ-ARS-39・VC-REQ-ATCS-01・VC-REQ-ATCS-02・VC-REQ-ATCS-03・VC-REQ-ECLSS-01・VC-REQ-ECLSS-07・VC-REQ-ECLSS-08・VC-REQ-ECLSS-09・VC-REQ-SYS-05・VC-REQ-SYS-07・VC-REQ-SYS-10・VC-REQ-SYS-14・VC-REQ-SYS-15 |
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
| L2 要求 | 10 | IRQ-MPS-06・IRQ-MPS-12・IRQ-MPS-13・IRQ-MPS-14・LRQ-MPS-10・LRQ-MPS-11・LRQ-MPS-12・LRQ-MPS-13・LRQ-MPS-26・REQ-MPS-11 |
| L1 要求 | 10 | IRQ-ORB-14・LRQ-MPS-11・LRQ-MPS-12・REQ-MPS-02・REQ-MPS-06・REQ-MPS-11・REQ-MPS-13・REQ-SYS-01・REQ-SYS-04・REQ-SYS-10 |
| 検証ケース | 17 | VC-IRQ-MPS-06・VC-IRQ-MPS-12・VC-IRQ-MPS-13・VC-IRQ-MPS-14・VC-IRQ-ORB-14・VC-LRQ-MPS-10・VC-LRQ-MPS-11・VC-LRQ-MPS-12・VC-LRQ-MPS-13・VC-LRQ-MPS-26・VC-REQ-MPS-02・VC-REQ-MPS-06・VC-REQ-MPS-11・VC-REQ-MPS-13・VC-REQ-SYS-01・VC-REQ-SYS-04・VC-REQ-SYS-10 |
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
| L2 要求 | 14 | IRQ-DPS-01・IRQ-DPS-02・IRQ-DPS-16・IRQ-ECL-08・LRQ-DPS-09・LRQ-DPS-13・LRQ-DPS-14・LRQ-DPS-15・LRQ-DPS-16・LRQ-DPS-17・LRQ-DPS-30・REQ-DPS-01・REQ-DPS-02・REQ-DPS-03 |
| L1 要求 | 16 | IRQ-ORB-13・IRQ-ORB-14・LRQ-DPS-16・LRQ-DPS-22・REQ-DPS-01・REQ-DPS-03・REQ-DPS-04・REQ-DPS-06・REQ-DPS-11・REQ-DPS-12・REQ-DPS-13・REQ-ECLSS-07・REQ-SYS-10・REQ-SYS-14・REQ-SYS-15・REQ-SYS-16 |
| 検証ケース | 27 | VC-IRQ-DPS-01・VC-IRQ-DPS-02・VC-IRQ-DPS-16・VC-IRQ-ECL-08・VC-IRQ-ORB-13・VC-IRQ-ORB-14・VC-LRQ-DPS-09・VC-LRQ-DPS-13・VC-LRQ-DPS-14・VC-LRQ-DPS-15・VC-LRQ-DPS-16・VC-LRQ-DPS-17・VC-LRQ-DPS-22・VC-LRQ-DPS-30・VC-REQ-DPS-01・VC-REQ-DPS-02・VC-REQ-DPS-03・VC-REQ-DPS-04・VC-REQ-DPS-06・VC-REQ-DPS-11・VC-REQ-DPS-12・VC-REQ-DPS-13・VC-REQ-ECLSS-07・VC-REQ-SYS-10・VC-REQ-SYS-14・VC-REQ-SYS-15・VC-REQ-SYS-16 |
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
| 流れ | 28 | FL-AIRX-06・FL-AIRX-07・FL-AIRX-08・FL-AIRX-15・FL-AIRX-16・FL-AIRX-18・FL-ARSA-03・FL-ARSA-04・FL-ARSA-05・FL-ARSA-06・FL-ARSA-09・FL-ARSA-11・FL-ARSA-12・FL-ARSA-15・FL-ARSA-18・FL-ARSA-19・FL-ARSA-21・FL-ARSW-01・FL-ARSW-04・FL-ARSW-08・FL-ARSW-17・FL-ARSW-18・FL-ARSW-19・FL-ARSW-20・FL-ARSW-25・FL-ARSW-33・FL-ARSW-35・FL-ARSW-36 |
| 機能説明書 | 10 | SSD-FD-ARS-CAC-001・SSD-FD-ARS-CO2-001・SSD-FD-ARS-THC-001・SSD-FD-ARS-THC-HX-001・SSD-FD-ARS-WCL-001・SSD-FD-ARS-WCL-PMP-001・SSD-FD-CAC-FAN-001・SSD-FD-CO2-CAN-001・SSD-FD-CO2-STW-001・SSD-FD-ECLSS-001 |
| IF | 35 | IF-ARS-01・IF-ARS-03・IF-ARS-05・IF-ARS-06・IF-ARS-07・IF-ARS-08・IF-ARS-27・IF-ARS-30・IF-ARS-31・IF-ARS-32・IF-ARS-36・IF-CAC-02・IF-CAC-06・IF-CAC-07・IF-CAC-09・IF-CO2-01・IF-CO2-02・IF-CO2-04・IF-CO2-05・IF-ECL-29・IF-ECL-39・IF-ORB-19・IF-THC-01・IF-THC-02・IF-THC-03・IF-THC-04・IF-THC-08・IF-THC-11・IF-WCL-01・IF-WCL-04・IF-WCL-05・IF-WCL-07・IF-WCL-12・IF-WCL-15・IF-WCL-16 |
| L2 要求 | 62 | IRQ-ARS-01・IRQ-ARS-03・IRQ-ARS-05・IRQ-ARS-06・IRQ-ARS-07・IRQ-ARS-08・IRQ-ARS-27・IRQ-ARS-30・IRQ-ARS-31・IRQ-ARS-32・IRQ-ARS-36・IRQ-CAC-02・IRQ-CAC-06・IRQ-CAC-07・IRQ-CAC-09・IRQ-CO2-01・IRQ-CO2-02・IRQ-CO2-04・IRQ-CO2-05・IRQ-ECL-29・IRQ-ECL-39・IRQ-ORB-19・IRQ-THC-01・IRQ-THC-02・IRQ-THC-03・IRQ-THC-04・IRQ-THC-08・IRQ-THC-11・IRQ-WCL-01・IRQ-WCL-04・IRQ-WCL-05・IRQ-WCL-07・IRQ-WCL-12・IRQ-WCL-15・IRQ-WCL-16・REQ-ARS-01・REQ-ARS-02・REQ-ARS-03・REQ-ARS-04・REQ-ARS-05・REQ-ARS-06・REQ-ARS-08・REQ-ARS-09・REQ-ARS-10・REQ-ARS-11・REQ-ARS-12・REQ-ARS-13・REQ-ARS-20・REQ-ARS-21・REQ-ARS-22・REQ-ARS-23・REQ-ARS-32・REQ-ARS-33・REQ-ARS-34・REQ-ARS-35・REQ-ARS-36・REQ-ARS-37・REQ-ARS-38・REQ-ARS-39・REQ-ECLSS-01・REQ-ECLSS-06・REQ-ECLSS-07 |
| L1 要求 | 27 | IRQ-ORB-14・IRQ-ORB-19・REQ-ARS-01・REQ-ARS-02・REQ-ARS-03・REQ-ARS-08・REQ-ARS-12・REQ-ARS-13・REQ-ARS-20・REQ-ARS-21・REQ-ARS-22・REQ-ARS-24・REQ-ARS-29・REQ-ARS-33・REQ-ARS-34・REQ-ARS-35・REQ-ARS-36・REQ-DPS-07・REQ-ECLSS-05・REQ-ECLSS-06・REQ-ECLSS-07・REQ-ECLSS-09・REQ-ECLSS-11・REQ-SYS-06・REQ-SYS-07・REQ-SYS-10・REQ-SYS-13 |
| 検証ケース | 73 | VC-IRQ-ARS-01・VC-IRQ-ARS-03・VC-IRQ-ARS-05・VC-IRQ-ARS-06・VC-IRQ-ARS-07・VC-IRQ-ARS-08・VC-IRQ-ARS-27・VC-IRQ-ARS-30・VC-IRQ-ARS-31・VC-IRQ-ARS-32・VC-IRQ-ARS-36・VC-IRQ-CAC-02・VC-IRQ-CAC-06・VC-IRQ-CAC-07・VC-IRQ-CAC-09・VC-IRQ-CO2-01・VC-IRQ-CO2-02・VC-IRQ-CO2-04・VC-IRQ-CO2-05・VC-IRQ-ECL-29・VC-IRQ-ECL-39・VC-IRQ-ORB-14・VC-IRQ-ORB-19・VC-IRQ-THC-01・VC-IRQ-THC-02・VC-IRQ-THC-03・VC-IRQ-THC-04・VC-IRQ-THC-08・VC-IRQ-THC-11・VC-IRQ-WCL-01・VC-IRQ-WCL-04・VC-IRQ-WCL-05・VC-IRQ-WCL-07・VC-IRQ-WCL-12・VC-IRQ-WCL-15・VC-IRQ-WCL-16・VC-REQ-ARS-01・VC-REQ-ARS-02・VC-REQ-ARS-03・VC-REQ-ARS-04・VC-REQ-ARS-05・VC-REQ-ARS-06・VC-REQ-ARS-08・VC-REQ-ARS-09・VC-REQ-ARS-10・VC-REQ-ARS-11・VC-REQ-ARS-12・VC-REQ-ARS-13・VC-REQ-ARS-20・VC-REQ-ARS-21・VC-REQ-ARS-22・VC-REQ-ARS-23・VC-REQ-ARS-24・VC-REQ-ARS-29・VC-REQ-ARS-32・VC-REQ-ARS-33・VC-REQ-ARS-34・VC-REQ-ARS-35・VC-REQ-ARS-36・VC-REQ-ARS-37・VC-REQ-ARS-38・VC-REQ-ARS-39・VC-REQ-DPS-07・VC-REQ-ECLSS-01・VC-REQ-ECLSS-05・VC-REQ-ECLSS-06・VC-REQ-ECLSS-07・VC-REQ-ECLSS-09・VC-REQ-ECLSS-11・VC-REQ-SYS-06・VC-REQ-SYS-07・VC-REQ-SYS-10・VC-REQ-SYS-13 |
| 故障解析表の行 | 25 | CIL-ECLSS-001・CIL-ECLSS-002・CIL-ECLSS-003・CIL-ECLSS-004・CIL-ECLSS-012・CIL-ECLSS-016・CIL-ECLSS-019・CIL-ECLSS-020・CIL-ECLSS-022・CIL-ECLSS-023・CIL-ECLSS-025・CIL-ECLSS-027・CIL-ECLSS-028・CIL-ECLSS-030・CIL-ECLSS-031・CIL-ECLSS-034・FMX-CAC-01・FMX-CAC-02・FMX-CO2-01・FMX-CO2-02・FMX-CO2-20・FMX-CO2-21・FMX-CO2-22・FMX-THC-01・FMX-THC-02 |
| 活動図の行動 | 12 | AC-FR-05・AC-LO-01・AC-LO-02・AC-LO-03・AC-LO-04・AC-LO-05・AC-LO-06・AC-LO-07・AC-LO-08・AC-WL-02・AC-WL-04・AC-WL-07 |

## 17. 図

図115 は要素の種類（箱、件数つき）と関係（矢印、関係の名前と件数）、図116 は系 × 指標の網羅の割合（色：90%以上・50%以上・10%以上・10%未満）、図117 は影響分析の例ごとの種類別の件数と、IMP-01（燃料電池）の連鎖を示す。

## 18. SysML v2 テキスト

同じ内容を SysML v2 のテキスト [SysML/SSD-TRC-SYS-001.sysml](../SysML/SSD-TRC-SYS-001.sysml) に示す。関係の metadata（TraceRelation）18件、系ごとの網羅の metadata（CoverageMetric、系の part def に付ける）162件、切れ目の分類の metadata（TraceGapCategory）13件と、§8 の要素に付けた metadata（TraceGap）484件、影響分析のビュー（ImpactView）5件から成る。ビューは影響の範囲の要素を晒す（expose）。区画・故障解析表の行・[CIL] の規則・メッセージはモデルの要素でないか道筋が無いので、ビューには入れず本書の表だけに示した。OMG SysML v2 Pilot Implementation 0.62.0（2026-08 リリース、標準ライブラリ付き）で読み込んで、構文・名前の解決・型の検査で誤り 0件・警告 0件を確かめた。

## 19. 注記（出典間の相違・構成変更）

> **注記** 網羅は、関係があるかどうかを数えたもので、関係の内容が正しいか（要求が本当に満たされるか）は確かめていない。

> **注記** 機器の割付（SSD-PHY-ORB-001・SSD-ALC-SYS-001）は、Rev. AU で要求につながらなかった機器の割付を系の機能行から下位の機能説明書の機能行へ移し、GAP-06 を解消した。あわせて内部ブロック図の機器の行を機器配分表に足し（GAP-10）、機能ブロックをまたぐ流れに IF を新設した（GAP-09）。同じ機能ブロックの中の流れは IF にしないと判断し、GAP-11 にした。

> **注記** 要求は主に機能行に割り付けたため、上位の IF（Rev. BV）と下位の IF（Rev. CL）のすべてを割付先にしたインタフェース要求を作った（C5 は 589/589）。上位 IF の特性値は SSD-ICD-ORB-001 にある。下位の IF の要求には特性表が無く、値は IF の行の文と出典による。C1（要求の導出）は導出の辺が1本でもある L2 を数えるので、上位なしの下位 IF のインタフェース要求（GAP-13）は分子に入らない。

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
| Rev. T | 2026-10-16 | ECLSS のシーケンスのメッセージ（IF 53件）を数え、網羅と切れ目を数え直した（Rev. CE）（Rev. CE） |
| Rev. U | 2026-10-16 | 機器配分表の行 11件の追加と IMU・THC・WCL の監視ブロックの機器・故障モードを受けて、網羅と切れ目を数え直した（Rev. CF） |
| Rev. V | 2026-10-16 | ECLSS 以外の IF の流れ（上位 IF の詳細化・内部ブロック図の追加・機器配分表の行の追加）を受けて、網羅と切れ目を数え直した（Rev. CG） |
| Rev. W | 2026-10-16 | ECLSS 以外のシーケンスのメッセージ（IF 32件）を数え、網羅と切れ目を数え直した（Rev. CH）（Rev. CH） |
| Rev. X | 2026-10-16 | 検証の根拠が無い要求 215件の理由を 5つの区分に分け、切れ目の一覧・内訳の表・SysML の TraceGapReason を足した（Rev. CI）（Rev. CI） |
| Rev. Y | 2026-10-17 | 検証の根拠が無い要求 215件の理由を 5つの区分に分け、切れ目の一覧・内訳の表・SysML の TraceGapReason を足した（Rev. CI）（Rev. CL） |
