# ペイロードベイドア（PLB）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-MECH-PLB-001 |
| 表題 | ペイロードベイドア（PLB）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-MECH-001 |
| 関連図 | SSD-SYS-ARC-001 図68 MECH 機能構成 |

## 1. 目的

ペイロードベイドア（PLBD）の構造・ヒンジ・駆動・32のラッチを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-MECH-PLB-01 | ペイロードベイドアはペイロードの展開・回収の開口となり、中胴の構造を支え、ECLSSの放熱器を収める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/627） |
| F-MECH-PLB-02 | ドアは左右2枚で、各ドアは伸縮継手でつないだ5つの区分から成り、長さ約60 ft・合計面積1,600 ft2である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/627） |
| F-MECH-PLB-03 | 右舷のドアは左舷のドアに重なってセンタラインの圧力・熱のシールとなるため、右舷を先に開けて後に閉める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/627） |
| F-MECH-PLB-04 | 各ドアは13のヒンジ（固定の5つと熱膨張を許す浮動の8つ）で中胴につながり、2つの3相交流モータを持つ1つの電動アクチュエータで開閉する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/627） |
| F-MECH-PLB-05 | ドアは合計32のラッチ（センタラインの16と前後の隔壁の各8）で閉じた状態に保たれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/627） |
| F-MECH-PLB-06 | センタラインのラッチは4つずつ4組（ギャング）に分かれ、各組を1つの電動アクチュエータで駆動し、1組の開閉に20秒（2モータ）かかる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/628） |
| F-MECH-PLB-07 | 右舷のドアがセンタラインのフック、左舷のドアがローラを持ち、フックが回ってローラをつかむ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/628） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-EVA-11 | 非常時の手順 | 構造・荷重 | 受信 | 非常時EVAで、放熱器アクチュエータの切り離し、PLBD駆動系の切断・切り離しとウインチによる扉の閉鎖、隔壁・中心線ラッチ工具の取り付けを行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/462）EVAウインチは、ペイロードベイドアの駆動系が故障したときに乗員が扉を閉じるためのものである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/457） | — |
| IF-MECH-02 | 構造（STR） | 構造・荷重 | 双方向 | 各ペイロードベイドアは、13のヒンジ（固定5・浮動8）で中胴につながる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/627） | 上位: IF-ORB-38 |
| IF-MECH-05 | 電動駆動（PDU・MCA） | 構造・荷重 | 受信 | 各ドアは2つの3相交流モータを持つ1つの電動アクチュエータで開閉し、各ラッチギャングも1つの電動アクチュエータで駆動される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/627） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| ME-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.17節 Payload Bay Door System（PDF p627〜635）：ドアの構造、ヒンジ、駆動、ラッチを述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/627） |
| ME-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A10-209（PDF p1620〜1625）：PLBDの故障ごとの規則の対照表を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1622） |
| ME-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 9.1 PLB DOORS（目次、PDF p22）：ドア・ラッチギャングが1モータの時間内に開閉しないときの処置を挙げる。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=22） |
| ME-04 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | P-16 PAYLOAD BAY DOOR MOTOR OPERATION（目次、PDF p42）：PLBDのモータを直接動かす手順があることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=42） |
| ME-05 | JSC-48023 Rev. H PCN-20 | EVA Checklist（Generic） | PLBD LATCH TOOL PLACEMENT（目次、PDF p49）：2つのラッチギャングが故障したときのEVAのラッチ工具の取付けを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=49） |
| ME-08 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | （PDF p18）：両方のPLBDを正常に閉じた時刻を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=18） |
| ME-10 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | （PDF p10）：PLBDを開くときに右ドアの閉系統2で起きた事象を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=10） |
| ME-11 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | （PDF p18）：ドアを閉めるときのPLBDのベルクランクの事象と解決を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=18） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.17 Mechanical Systems（USA007587 Rev. A CPN-1、PDF p627） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/627
2. Shuttle Crew Operations Manual 2.17 Mechanical Systems（USA007587 Rev. A CPN-1、PDF p628） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/628
3. Shuttle Crew Operations Manual 2.11 Extravehicular Activity（USA007587 Rev. A CPN-1、PDF p462） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/462
4. Shuttle Crew Operations Manual 2.11 Extravehicular Activity（USA007587 Rev. A CPN-1、PDF p457） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/457
5. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
