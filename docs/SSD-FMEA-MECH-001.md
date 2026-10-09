# 機械系（MECH）故障解析表（FMEA・CIL）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FMEA-MECH-001 |
| 表題 | 機械系（MECH）故障解析表（FMEA・CIL） |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FMEA-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図68 機械系 機能構成 |

## 1. 目的

MECHの故障モード・影響解析（FMEA）と重要品目リスト（CIL）について、IOA（Independent Orbiter Assessment）の件数、IOA が NASA の評価と食い違いを指摘した CIL 課題の評価ワークシートと機能・IF の対応、運用飛行規則の [CIL] の規則を、根拠の頁とともに示す。系全体の冗長度の段階と重要度の定義は SSD-FMEA-ORB-001（総括・索引）に示す。

## 2. 対象と書き方

- 重要度は「ハードウェア／機能」の形（1/1、2/1R など）で、定義は SSD-FMEA-ORB-001 の「冗長度の段階と重要度」による。
- 評価ワークシートは、NASA と IOA のそれぞれについて重要度・冗長スクリーン・CIL の欄を並べ、異なる点を比較の欄に示し、IOA の勧告を記す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=4）
- 運用飛行規則では、CIL に関係する規則の表題に [CIL] を付け、規則の変更が CIL の存続理由に影響するときは、存続理由の変更が承認されるまで取り込まない。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2195）

## 3. IOA の FMEA・CIL の件数

- 表1-1（1988年1月1日時点）では、機械作動系（MAS）の FMEA は IOA 713件・NASA 510件で課題472件、CIL は IOA 512件・NASA 252件で課題310件である。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13）
- 表1-1（1988年1月1日時点）では、着陸・減速系（L&D）の FMEA は IOA 246件・NASA 260件で課題86件、CIL は IOA 124件・NASA 120件で課題51件である。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13）
- 表1-1（1988年1月1日時点）では、前輪操向（NWS）の FMEA は IOA 68件・NASA 58件で課題14件、CIL は IOA 41件・NASA 34件で課題9件である。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13）
- 表1-1（1988年1月1日時点）では、火工品（PYRO）の FMEA は IOA 41件・NASA 37件で課題4件、CIL は IOA 41件・NASA 37件で課題4件である。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13）

以上の4サブシステムの計は、FMEA が IOA 1,068件・NASA 865件・課題576件、CIL が IOA 718件・NASA 443件・課題374件である。

## 4. CIL 課題の評価ワークシートと機能・IF の対応

IOA の CIL 課題の解決報告（NASA-CR-185524 第2巻）の付録C にある NWS の評価ワークシート 9件を、品目名の語で区分し、その品目が担う機能行・IF に対応させた（区分の規則は注記）。品目は原文（OCR の読み取り）のまま示す。重要度の「空欄」はワークシートの欄が空のもの、「—」は欄を読み取れないものである。

区分ごとの件数：

| 区分 | 件数 | 機能・IF | IOA の重要度 |
|---|---|---|---|
| 前輪操向（制御箱・アクチュエータ・油圧） | 9 | F-MECH-DEC-06・F-MECH-DEC-07 | 2/1R 5件・1/1 3件・3/3 1件 |

| ID | ワークシート | NASA FMEA | 区分（品目） | 重要度 NASA | 重要度 IOA | 機能・IF | 根拠 |
|---|---|---|---|---|---|---|---|
| CIL-MECH-001 | NWS-204 | — | 前輪操向（制御箱・アクチュエータ・油圧）（BOX, STEERING CONTROL - PILOT VALVE CONTROL CIRCUIT (FAILS TO PROVIDE A GROUND)） | 空欄 | 2/1R | F-MECH-DEC-06・F-MECH-DEC-07 | 評価ワークシート NWS-204 は、品目「BOX, STEERING CONTROL - PILOT VALVE CONTROL CIRCUIT (FAILS TO PROVIDE A GROUND)」を扱い、重要度は NASA が空欄、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=4） |
| CIL-MECH-002 | NWS-308 | — | 前輪操向（制御箱・アクチュエータ・油圧）（PISTON, ACTUATORARM (JAMMED)） | 空欄 | 1/1 | F-MECH-DEC-06・F-MECH-DEC-07 | 評価ワークシート NWS-308 は、品目「PISTON, ACTUATORARM (JAMMED)」を扱い、重要度は NASA が空欄、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=5） |
| CIL-MECH-003 | NWS-310 | — | 前輪操向（制御箱・アクチュエータ・油圧）（FILTER, INLET (SHUTOFF VALVE) (FAILS TO FILTER)） | 空欄 | 2/1R | F-MECH-DEC-06・F-MECH-DEC-07 | 評価ワークシート NWS-310 は、品目「FILTER, INLET (SHUTOFF VALVE) (FAILS TO FILTER)」を扱い、重要度は NASA が空欄、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=6） |
| CIL-MECH-004 | NWS-311 | — | 前輪操向（制御箱・アクチュエータ・油圧）（FILTER, INLET (SHUTOFF VALVE) (BLOCKED)） | 空欄 | 2/1R | F-MECH-DEC-06・F-MECH-DEC-07 | 評価ワークシート NWS-311 は、品目「FILTER, INLET (SHUTOFF VALVE) (BLOCKED)」を扱い、重要度は NASA が空欄、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=7） |
| CIL-MECH-005 | NWS-312 | — | 前輪操向（制御箱・アクチュエータ・油圧）（HYDRAULIC SYSTEM - CONNECTORS, HOSE ASSEMBLY (RUPTURE/LEAKAGE )） | 空欄 | 1/1 | F-MECH-DEC-06・F-MECH-DEC-07 | 評価ワークシート NWS-312 は、品目「HYDRAULIC SYSTEM - CONNECTORS, HOSE ASSEMBLY (RUPTURE/LEAKAGE )」を扱い、重要度は NASA が空欄、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=8） |
| CIL-MECH-006 | NWS-323 | 02-1-091-1 | 前輪操向（制御箱・アクチュエータ・油圧）（VALVE, ANTI-CAVITATION CHECK (FAILS CLOSED)） | 1/1 | 3/3 | F-MECH-DEC-06・F-MECH-DEC-07 | 評価ワークシート NWS-323 は、NASA FMEA 02-1-091-1 の品目「VALVE, ANTI-CAVITATION CHECK (FAILS CLOSED)」を扱い、重要度は NASA が 1/1、IOA が 3/3 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=9） |
| CIL-MECH-007 | NWS-326 | 02-1-101-2 | 前輪操向（制御箱・アクチュエータ・油圧）（VALVE, E-H PROTECTION CHECK (RETURN LINE (FAILS OPEN) ISOLATION)） | 3/1R | 2/1R | F-MECH-DEC-06・F-MECH-DEC-07 | 評価ワークシート NWS-326 は、NASA FMEA 02-1-101-2 の品目「VALVE, E-H PROTECTION CHECK (RETURN LINE (FAILS OPEN) ISOLATION)」を扱い、重要度は NASA が 3/1R、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=10） |
| CIL-MECH-008 | NWS-329 | 02-1-106-1 | 前輪操向（制御箱・アクチュエータ・油圧）（VALVE, OVERLOAD CHECK (2 OF) (FAILS CLOSED)） | 3/3 | 2/1R | F-MECH-DEC-06・F-MECH-DEC-07 | 評価ワークシート NWS-329 は、NASA FMEA 02-1-106-1 の品目「VALVE, OVERLOAD CHECK (2 OF) (FAILS CLOSED)」を扱い、重要度は NASA が 3/3、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=11） |
| CIL-MECH-009 | NWS-503 | 05-I-FC7248-0001 | 前輪操向（制御箱・アクチュエータ・油圧）（INDICATOR, PUSH BUTTON: ROLL/YAW (CSS/AUTO) (JAMMED IN AUTO)） | 3/3 | 1/1 | F-MECH-DEC-06・F-MECH-DEC-07 | 評価ワークシート NWS-503 は、NASA FMEA 05-I-FC7248-0001 の品目「INDICATOR, PUSH BUTTON: ROLL/YAW (CSS/AUTO) (JAMMED IN AUTO)」を扱い、重要度は NASA が 3/3、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=12） |

## 5. 運用飛行規則の [CIL] の規則

運用飛行規則（NSTS-12820 Vol. A）の [CIL] の規則のうち、SSD-OPS-REF-001 §5 でMECHの下位機能に対応づけたもの 4件を示す。「下位機能」は対応する機能説明書である。

| 規則 | 表題 | PDF頁 | 下位機能 | 根拠 |
|---|---|---|---|---|
| A2-106 | PBD OPERATIONS | 605 | SSD-FD-MECH-PLB-001 | 運用飛行規則 A2-106 の表題は「PBD OPERATIONS [CIL]」である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=605） |
| A10-142 | TIRE PRESSURE | 1589 | SSD-FD-MECH-LDG-001 | 運用飛行規則 A10-142 の表題は「TIRE PRESSURE [CIL]」である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1589） |
| A10-145 | UNCOMMANDED BRAKE PRESSURE | 1602 | SSD-FD-MECH-DEC-001 | 運用飛行規則 A10-145 の表題は「UNCOMMANDED BRAKE PRESSURE [CIL]」である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1602） |
| A10-243 | ET UMBILICAL DOOR CLOSURE DELAY FOR DISCONNECT VALVE FAILURE | 1630 | SSD-FD-MECH-VNT-001 | 運用飛行規則 A10-243 の表題は「ET UMBILICAL DOOR CLOSURE DELAY FOR DISCONNECT VALVE FAILURE [CIL]」である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1630） |

## 6. 要約

IOA の表1-1 の4サブシステムで、CIL は IOA 718件・NASA 443件、課題は 374件である。

CIL 課題の評価ワークシートは 9件で、多い区分は 前輪操向（制御箱・アクチュエータ・油圧）（9件）である。IOA の重要度は 2/1R 5件・1/1 3件・3/3 1件である。

[CIL] の規則は 4件（A2-106・A10-142・A10-145・A10-243）である。

## 7. 注記（出典間の相違・構成変更）

> **注記** IOA の件数は1988年1月1日時点の中間報告の値で、その後の改修（AP-101S・MEDS・GPS など）を含まない。

> **注記** 評価ワークシートの区分は品目名の語による（上から順に最初に当たったもの、どれにも当たらなければ「前輪操向（制御箱・アクチュエータ・油圧）」）：。機能・IF の対応は区分ごとで、品目1件ずつに確かめたものではない。

> **注記** 付録C の評価ワークシートは CIL の課題（IOA が NASA の FMEA・CIL と異なる評価をした品目）を集めたもので、系の CIL の全件ではない。CIL の欄（[X] の位置）は OCR で欄の並びが崩れていて確かめられないため載せていない。

> **注記** 火工品（PYRO）は系をまたぐ（分離・脚のアップロック・投棄など）が、機構の作動として MECH の側に置いた。

## 8. 参考文献

1. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート NWS-204（PDF p4） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=4
2. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） 付録B Change Control（PDF p2195） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2195
3. NASA-CR-185550 IOA: FMEA/CIL Assessment Interim Report Table 1-1 FMEA/CIL Assessment Overview (Interim)（PDF p13） — https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13
4. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート NWS-308（PDF p5） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=5
5. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート NWS-310（PDF p6） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=6
6. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート NWS-311（PDF p7） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=7
7. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート NWS-312（PDF p8） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=8
8. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート NWS-323（PDF p9） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=9
9. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート NWS-326（PDF p10） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=10
10. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート NWS-329（PDF p11） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=11
11. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート NWS-503（PDF p12） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=12
12. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A2-106 PBD OPERATIONS（PDF p605） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=605
13. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-142 TIRE PRESSURE（PDF p1589） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1589
14. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-145 UNCOMMANDED BRAKE PRESSURE（PDF p1602） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1602
15. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-243 ET UMBILICAL DOOR CLOSURE DELAY FOR DISCONNECT VALVE FAILURE（PDF p1630） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1630

## 9. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（IOA の件数 4サブシステム、CIL 課題の評価ワークシート 9件と機能・IF の対応、[CIL] の規則 4件） |
