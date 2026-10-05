# MECH 機能別関連文書一覧

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-MECH-REF-001 |
| 表題 | MECH 機能別関連文書一覧 |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-MECH-001 |
| 関連図 | SSD-SYS-ARC-001 図69 MECH 関連文書マトリクス |

## 1. 目的

MECHの各機能に関係する公開文書を機能別に整理し、各機能説明書と図69 MECH 関連文書マトリクス（文書×機能マトリクス）の根拠とする。

## 2. 調査方法

乗員運用マニュアル（SCOM、OI-33）・運用飛行規則・故障処置手順・IOA の FMEA/CIL 評価などの公開文書を調べ、MECHの機能に関係する記述の頁を確かめた 11件を載せた（出典欄はすべて「新規」）。各文書の番号・表題・確認に使った URL は表の各行に、記述の頁は各欄の出典に示す。

## 3. 機能別関連文書

### 3.1 MECH 全般（3件）

機能説明書：SSD-FD-MECH-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| ME-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.17節（PDF p619〜640）：機械系の範囲、電動アクチュエータ、能動ベント系、ET扉、PLBDを述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/619） |
| ME-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A10-1001（PDF p1665）：MMACSが担当する系（APU/HYD・WSB・脚・機械系）のGo/No-Go基準を示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1665） |
| ME-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | MECHの章の目次（PDF p22）：PLBD・放熱器・Kuアンテナの故障処置と、PLBDの閉の表を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=22） |

### 3.2 電動駆動（PDU・MCA）（ACT）（4件）

機能説明書：SSD-FD-MECH-ACT-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| ME-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.17節 Electromechanical Actuators（PDF p619〜620）：PDUの構成とMCAからの電力・指令を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/619） |
| ME-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A10-161（PDF p1605）：駆動機構の喪失の定義を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1605） |
| ME-04 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | P-42 PAYLOAD BAY DOOR SYS ENABLE RECOVERY（目次、PDF p42）：PLBDの駆動系の有効化を回復する手順があることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=42） |
| ME-05 | JSC-48023 Rev. H PCN-20 | EVA Checklist（Generic） | PLBD DRIVE CUT（目次、PDF p50）：EVAでPLBDの駆動系を切り離す手順があることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=50） |

### 3.3 ペイロードベイドア（PLB）（8件）

機能説明書：SSD-FD-MECH-PLB-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| ME-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.17節 Payload Bay Door System（PDF p627〜635）：ドアの構造、ヒンジ、駆動、ラッチを述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/627） |
| ME-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A10-209（PDF p1620〜1625）：PLBDの故障ごとの規則の対照表を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1622） |
| ME-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 9.1 PLB DOORS（目次、PDF p22）：ドア・ラッチギャングが1モータの時間内に開閉しないときの処置を挙げる。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=22） |
| ME-04 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | P-16 PAYLOAD BAY DOOR MOTOR OPERATION（目次、PDF p42）：PLBDのモータを直接動かす手順があることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=42） |
| ME-05 | JSC-48023 Rev. H PCN-20 | EVA Checklist（Generic） | PLBD LATCH TOOL PLACEMENT（目次、PDF p49）：2つのラッチギャングが故障したときのEVAのラッチ工具の取付けを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=49） |
| ME-08 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | （PDF p18）：両方のPLBDを正常に閉じた時刻を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=18） |
| ME-10 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | （PDF p10）：PLBDを開くときに右ドアの閉系統2で起きた事象を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=10） |
| ME-11 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | （PDF p18）：ドアを閉めるときのPLBDのベルクランクの事象と解決を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=18） |

### 3.4 ベント・ETアンビリカル扉（VNT）（4件）

機能説明書：SSD-FD-MECH-VNT-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| ME-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.17節 Active Vent System・ET Umbilical Doors（PDF p621〜627）：ベント口とET扉を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/621） |
| ME-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A10-261（PDF p1631）：軌道上・突入のベント扉の管理を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1631） |
| ME-06 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | Vent Door Operations（PDF p67）：ベント扉の運用の制約を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=67） |
| ME-07 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | Mechanical Systems（PDF p56）：打上げ前のベント扉の操作、軌道投入後のET扉の閉鎖、突入準備のベント扉の位置変更の記録を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=56） |

### 3.5 降着装置（LDG）（4件）

機能説明書：SSD-FD-MECH-LDG-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| ME-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.14節 Landing Gear（PDF p543〜545）：脚の構成、展開、緩衝支柱を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/543） |
| ME-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A10-1001 C（PDF p1665）：脚の油圧・火工品の展開系の喪失の判定を示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1665） |
| ME-08 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | （PDF p18）：主脚・前脚の接地の時刻を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=18） |
| ME-10 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | （PDF p17）：前脚扉のタイルの損傷の点検の記録を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=17） |

### 3.6 制動・操向・減速傘（DEC）（5件）

機能説明書：SSD-FD-MECH-DEC-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| ME-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.14節 Drag Chute・Brakes・Nose Wheel Steering（PDF p546〜552）：減速と方向の制御を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/546） |
| ME-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A10-146（PDF p1603）：制動の規則を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1603） |
| ME-04 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | B-1 BRAKE ANTISKID CONTROL COMMAND INHIBIT（目次、PDF p40）：ブレーキのアンチスキッドの指令を禁止する手順があることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=40） |
| ME-08 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | （PDF p18）：ドラッグシュートの展開と投棄の時刻を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=18） |
| ME-09 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | （PDF p15）：ドラッグシュートの結束の一部が切れた異常を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=15） |

### 3.7 MECH運用管理（OPS）（4件）

機能説明書：SSD-FD-MECH-OPS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| ME-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.17節 Rules of Thumb（PDF p640）：機械系の操作でタイマを使う要点を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/640） |
| ME-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A10-241（PDF p1629）：ET扉の閉の項目入力を使う条件を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1629） |
| ME-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | MECHの章の目次（PDF p22）：非常時のPLBDの閉鎖の手順を挙げる。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=22） |
| ME-07 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | Mechanical Systems（PDF p56）：上昇中は機械系が作動しないことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=56） |

## 4. 文書×機能マトリクス（全件）

| ID | 文書番号 | 表題 | 全般 | ACT | PLB | VNT | LDG | DEC | OPS | 出典 | URL |
|---|---|---|---|---|---|---|---|---|---|---|---|
| ME-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | ● | ● | ● | ● | ● | ● | ● | 新規 | https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual |
| ME-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | ● | ● | ● | ● | ● | ● | ● | 新規 | https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf |
| ME-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | ● |  | ● |  |  |  | ● | 新規 | https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf |
| ME-04 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） |  | ● | ● |  |  | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf |
| ME-05 | JSC-48023 Rev. H PCN-20 | EVA Checklist（Generic） |  | ● | ● |  |  |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf |
| ME-06 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 |  |  |  | ● |  |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf |
| ME-07 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） |  |  |  | ● |  |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf |
| ME-08 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） |  |  | ● |  | ● | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf |
| ME-09 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） |  |  |  |  |  | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf |
| ME-10 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） |  |  | ● |  | ● |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf |
| ME-11 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） |  |  | ● |  |  |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
