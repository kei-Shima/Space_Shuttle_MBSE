# 乗員室（与圧）・窓（CRM）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-STR-CRM-001 |
| 表題 | 乗員室（与圧）・窓（CRM）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-STR-001 |
| 関連図 | SSD-SYS-ARC-001 図70 STR 機能構成 |

## 1. 目的

与圧された3層の乗員室の構造・取付け・圧力と、前方・頭上・後方・側面ハッチの窓を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-STR-CRM-01 | 3層の乗員室は2219アルミ合金板を溶接した気密の圧力容器で、側面ハッチ・中甲板からエアロックへのハッチ・エアロックからペイロードベイへのハッチを持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/53） |
| F-STR-CRM-02 | 圧力殻の約300の貫通部はプレートと金具で封じられる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/53） |
| F-STR-CRM-03 | 乗員室は、両者の間の熱伝導を小さくするため、前胴の中に4つの取付点だけで支えられる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/53） |
| F-STR-CRM-04 | 乗員室は14.7±0.2 psia・窒素80%・酸素20%に保たれ、設計圧力は16 psiaである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/54） |
| F-STR-CRM-05 | エアロックをペイロードベイに置いたときの乗員室の容積は2,553 ft3である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/54） |
| F-STR-CRM-06 | 前方の6枚の窓はそれぞれ3枚の板ガラスから成り、最も内側の板（0.625 in）は乗員室の圧力に耐える圧力ペインである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/56） |
| F-STR-CRM-07 | 前方の窓の外側の板は前胴に、中央と内側の板は乗員室に取り付けられ、各窓に冗長なシールが使われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/57） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-CREW-07 | 脱出系 | 構造・荷重 | 受信 | 側面ハッチの投棄では、膨張チューブ組立がハッチのアダプタリングをオービタに留める70本の破断ボルトを割り、線形成形爆薬がヒンジを切る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/433） | — |
| IF-STR-04 | 前胴・前部RCSモジュール | 構造・荷重 | 送信 | 乗員室は、熱伝導を小さくするため前胴の中に4つの取付点だけで支えられる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/53） | — |
| IF-STR-09 | 構造運用管理 | データ・指令 | 受信 | 圧力ペインか冗長ペインが故障したときは客室圧を10.2 psiに下げ、軌道上では次のPLSで帰還する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1659） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| ST-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 1.2節 Crew Compartment・Windows（PDF p53〜57）：乗員室と窓を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/53） |
| ST-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A10-382（PDF p1659）：圧力ペイン・冗長ペインの故障の扱いを定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1659） |
| ST-04 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） | 2.1節（PDF p4）：2つの頭上の観察窓が冗長な圧力ペインを持つことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=4） |
| ST-07 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | （PDF p10）：SRB分離モータの噴流を乗員室の窓から遠ざけるRCSの窓保護噴射を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=10） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p53） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/53
2. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p54） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/54
3. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p56） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/56
4. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p57） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/57
5. Shuttle Crew Operations Manual 2.10 Escape Systems（USA007587 Rev. A CPN-1、PDF p433） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/433
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-382 Pressure/Redundant Windowpane Failure（PDF p1659） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1659
7. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
