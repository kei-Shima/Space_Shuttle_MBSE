# 熱防護・熱制御（TPS）故障解析表（FMEA・CIL）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FMEA-TPS-001 |
| 表題 | 熱防護・熱制御（TPS）故障解析表（FMEA・CIL） |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FMEA-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図8 熱制御 機能構成 |

## 1. 目的

TPSの故障モード・影響解析（FMEA）と重要品目リスト（CIL）について、IOA（Independent Orbiter Assessment）の件数、IOA が NASA の評価と食い違いを指摘した CIL 課題の評価ワークシートと機能・IF の対応、運用飛行規則の [CIL] の規則を、根拠の頁とともに示す。系全体の冗長度の段階と重要度の定義は SSD-FMEA-ORB-001（総括・索引）に示す。

## 2. 対象と書き方

- 重要度は「ハードウェア／機能」の形（1/1、2/1R など）で、定義は SSD-FMEA-ORB-001 の「冗長度の段階と重要度」による。
- 運用飛行規則では、CIL に関係する規則の表題に [CIL] を付け、規則の変更が CIL の存続理由に影響するときは、存続理由の変更が承認されるまで取り込まない。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2195）

## 3. IOA の FMEA・CIL の件数

- 表1-1（1988年1月1日時点）では、パージ・ベント・ドレン（PV&D）の FMEA は IOA 62件・NASA 46件で課題2件、CIL は IOA 15件・NASA 8件で課題3件である。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13）

## 4. 運用飛行規則の [CIL] の規則

運用飛行規則（NSTS-12820 Vol. A）の [CIL] の規則のうち、SSD-OPS-REF-001 §5 でTPSの下位機能に対応づけたもの 1件を示す。「下位機能」は対応する機能説明書である。

| 規則 | 表題 | PDF頁 | 下位機能 | 根拠 |
|---|---|---|---|---|
| A18-451 | ORBITER THERMAL CONSTRAINTS AND ATTITUDE MANAGEMENT | 2104 | SSD-FD-TCS-001・SSD-FD-TCS-PTC-001 | 運用飛行規則 A18-451 の表題は「ORBITER THERMAL CONSTRAINTS AND ATTITUDE MANAGEMENT [CIL]」である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2104） |

## 5. 要約

IOA の表1-1 の1サブシステムで、CIL は IOA 15件・NASA 8件、課題は 3件である。

[CIL] の規則は 1件（A18-451）である。

## 6. 注記（出典間の相違・構成変更）

> **注記** IOA の件数は1988年1月1日時点の中間報告の値で、その後の改修（AP-101S・MEDS・GPS など）を含まない。

> **注記** パージ・ベント・ドレン（PV&D）は、非与圧区画のパージ（SSD-FD-TCS-PTC-001）として熱制御の側に置いた。

## 7. 参考文献

1. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） 付録B Change Control（PDF p2195） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2195
2. NASA-CR-185550 IOA: FMEA/CIL Assessment Interim Report Table 1-1 FMEA/CIL Assessment Overview (Interim)（PDF p13） — https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13
3. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-451 ORBITER THERMAL CONSTRAINTS AND ATTITUDE MANAGEMENT（PDF p2104） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2104

## 8. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（IOA の件数 1サブシステム、[CIL] の規則 1件） |
