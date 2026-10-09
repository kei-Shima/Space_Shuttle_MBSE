# 補助動力・油圧（APU/HYD）故障解析表（FMEA・CIL）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FMEA-APU-001 |
| 表題 | 補助動力・油圧（APU/HYD）故障解析表（FMEA・CIL） |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FMEA-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図56 APU/HYD 機能構成 |

## 1. 目的

APU/HYDの故障モード・影響解析（FMEA）と重要品目リスト（CIL）について、IOA（Independent Orbiter Assessment）の件数、IOA が NASA の評価と食い違いを指摘した CIL 課題の評価ワークシートと機能・IF の対応、運用飛行規則の [CIL] の規則を、根拠の頁とともに示す。系全体の冗長度の段階と重要度の定義は SSD-FMEA-ORB-001（総括・索引）に示す。

## 2. 対象と書き方

- 重要度は「ハードウェア／機能」の形（1/1、2/1R など）で、定義は SSD-FMEA-ORB-001 の「冗長度の段階と重要度」による。
- 運用飛行規則では、CIL に関係する規則の表題に [CIL] を付け、規則の変更が CIL の存続理由に影響するときは、存続理由の変更が承認されるまで取り込まない。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2195）

## 3. IOA の FMEA・CIL の件数

- 表1-1（1988年1月1日時点）では、補助動力装置（APU）の FMEA は IOA 314件・NASA 313件で課題2件、CIL は IOA 106件・NASA 106件で課題0件である。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13）
- 表1-1（1988年1月1日時点）では、油圧・水噴霧ボイラ（HYD・WSB）の FMEA は IOA 447件・NASA 364件で課題68件、CIL は IOA 183件・NASA 111件で課題23件である。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13）

以上の2サブシステムの計は、FMEA が IOA 761件・NASA 677件・課題70件、CIL が IOA 289件・NASA 217件・課題23件である。

## 4. 運用飛行規則の [CIL] の規則

運用飛行規則（NSTS-12820 Vol. A）の [CIL] の規則のうち、SSD-OPS-REF-001 §5 でAPU/HYDの下位機能に対応づけたもの 5件を示す。「下位機能」は対応する機能説明書である。

| 規則 | 表題 | PDF頁 | 下位機能 | 根拠 |
|---|---|---|---|---|
| A10-27 | APU FUEL LEAKS | 1552 | SSD-FD-APU-FUL-001・SSD-FD-APU-OPS-001 | 運用飛行規則 A10-27 の表題は「APU FUEL LEAKS [CIL]」である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1552） |
| A10-30 | LOSS OF APU HEATERS/INSTRUMENTATION | 1558 | SSD-FD-APU-FUL-001・SSD-FD-APU-TRB-001・SSD-FD-APU-OPS-001 | 運用飛行規則 A10-30 の表題は「LOSS OF APU HEATERS/INSTRUMENTATION [CIL]」である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1558） |
| A10-73 | HYDRAULIC SYSTEMS PRESSURE/TEMPERATURE | 1572 | SSD-FD-APU-HYD-001・SSD-FD-APU-CIR-001 | 運用飛行規則 A10-73 の表題は「HYDRAULIC SYSTEMS PRESSURE/TEMPERATURE [CIL]」である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1572） |
| A10-74 | HYDRAULIC CIRCULATION PUMP OPERATION | 1575 | SSD-FD-APU-CIR-001 | 運用飛行規則 A10-74 の表題は「HYDRAULIC CIRCULATION PUMP OPERATION [CIL]」である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1575） |
| A10-145 | UNCOMMANDED BRAKE PRESSURE | 1602 | SSD-FD-APU-HYD-001・SSD-FD-APU-OPS-001 | 運用飛行規則 A10-145 の表題は「UNCOMMANDED BRAKE PRESSURE [CIL]」である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1602） |

## 5. 要約

IOA の表1-1 の2サブシステムで、CIL は IOA 289件・NASA 217件、課題は 23件である。

[CIL] の規則は 5件（A10-27・A10-30・A10-73・A10-74・A10-145）である。

## 6. 注記（出典間の相違・構成変更）

> **注記** IOA の件数は1988年1月1日時点の中間報告の値で、その後の改修（AP-101S・MEDS・GPS など）を含まない。

## 7. 参考文献

1. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） 付録B Change Control（PDF p2195） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2195
2. NASA-CR-185550 IOA: FMEA/CIL Assessment Interim Report Table 1-1 FMEA/CIL Assessment Overview (Interim)（PDF p13） — https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13
3. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-27 APU FUEL LEAKS（PDF p1552） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1552
4. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-30 LOSS OF APU HEATERS/INSTRUMENTATION（PDF p1558） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1558
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-73 HYDRAULIC SYSTEMS PRESSURE/TEMPERATURE（PDF p1572） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1572
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-74 HYDRAULIC CIRCULATION PUMP OPERATION（PDF p1575） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1575
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-145 UNCOMMANDED BRAKE PRESSURE（PDF p1602） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1602

## 8. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（IOA の件数 2サブシステム、[CIL] の規則 5件） |
