# PLS 機能別関連文書一覧

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-PLS-REF-001 |
| 表題 | PLS 機能別関連文書一覧 |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-PLS-001 |
| 関連図 | SSD-SYS-ARC-001 図67 PLS 関連文書マトリクス |

## 1. 目的

PLSの各機能に関係する公開文書を機能別に整理し、各機能説明書と図67 PLS 関連文書マトリクス（文書×機能マトリクス）の根拠とする。

## 2. 調査方法

乗員運用マニュアル（SCOM、OI-33）・運用飛行規則・故障処置手順・IOA の FMEA/CIL 評価などの公開文書を調べ、PLSの機能に関係する記述の頁を確かめた 10件を載せた（出典欄はすべて「新規」）。各文書の番号・表題・確認に使った URL は表の各行に、記述の頁は各欄の出典に示す。

## 3. 機能別関連文書

### 3.1 PLS 全般（3件）

機能説明書：SSD-FD-PLS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| PL-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.21節（PDF p687〜716）：PDRSの構成（RMS・MPM・MRL・MCIU・表示操作部）と、ほかの系とのインタフェースを述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/687） |
| PL-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A2-112（PDF p627）：PDRSの飛行全般の規則を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=627） |
| PL-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | PDRSの章の目次（PDF p23）：RMSのC/W灯と故障メッセージに対する処置の一覧を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=23） |

### 3.2 RMSアーム（ARM）（5件）

機能説明書：SSD-FD-PLS-ARM-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| PL-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.21節 Remote Manipulator System（PDF p687〜697）：アームの寸法・関節駆動・SPA・構造を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/690） |
| PL-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A12-115（PDF p1744）：ブレースが働かない関節があるときの運用の制約を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1744） |
| PL-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | PDRSの章の目次（PDF p24）：エンドエフェクタの故障に対する処置を挙げる。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=24） |
| PL-09 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | （PDF p10）：SRMSの肘カメラが正しく収納されていなかった事象を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=10） |
| PL-10 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | （PDF p9）：SRMSの初期化・点検と受け台前の位置への復帰を異常なく行った記録を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=9） |

### 3.3 RMS制御（MCIU・D&C）（CTL）（5件）

機能説明書：SSD-FD-PLS-CTL-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| PL-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.21節 MCIU・THC・RHC（PDF p689〜690）：MCIUの機能と手動制御器を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/689） |
| PL-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A12-9（PDF p1730）：MCIUの組込み試験の無効化の扱いを定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1730） |
| PL-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | PDRSの章の目次（PDF p23）：C/WのMCIU灯やGPCデータ灯に対する処置を挙げる。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=23） |
| PL-04 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | R-29 MCIU CHANGEOUT（目次、PDF p42）：故障したMCIUを予備と交換する手順があることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=42） |
| PL-07 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | （PDF p44）：MCIUのテレメトリデータに関する飛行中の事象を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=44） |

### 3.4 MPM・保持ラッチ・投棄（MPM）（7件）

機能説明書：SSD-FD-PLS-MPM-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| PL-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.21節 Manipulator Positioning Mechanism（PDF p698〜701）：MPMの台座・トルクチューブ・MRL・投棄系を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/698） |
| PL-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A12-72（PDF p1734）：MPMの展開・収納の制約を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1734） |
| PL-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 12.5 MPM/MRL（PDF p24）：MPMの展開・収納の表示が正常でないときの処置を挙げる。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=24） |
| PL-04 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | MPM CONTINGENCY DEPLOY/STOW（目次、PDF p42）：MPMを非常時に展開・収納する手順があることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=42） |
| PL-05 | JSC-48023 Rev. H PCN-20 | EVA Checklist（Generic） | MPM STOW/DEPLOY（目次、PDF p50）：EVAでMPMを収納・展開する手順があることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=50） |
| PL-06 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | （PDF p126）：MPMが不意に動かないよう遮断器を抜いて安全にする手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=126） |
| PL-08 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | （PDF p11）：左舷・右舷のMPMを展開した時刻とOBSSとの間隔の確認を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=11） |

### 3.5 ペイロード保持ラッチ（PRL）（3件）

機能説明書：SSD-FD-PLS-PRL-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| PL-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.21節 Payload Retention Mechanisms（PDF p702〜705）：取付点、ブリッジ金具、ラッチ、トラニオンを述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/702） |
| PL-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A10-281（PDF p1635）：PRLA・AKAの管理とEVAによる開閉を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1635） |
| PL-05 | JSC-48023 Rev. H PCN-20 | EVA Checklist（Generic） | PRLA OPEN/CLOSE（目次、PDF p50）：EVAでPRLAを開閉する手順があることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=50） |

### 3.6 オービタ・ドッキング系（ODS）（4件）

機能説明書：SSD-FD-PLS-ODS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| PL-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.19節（PDF p673〜682）：外部エアロック、トラス組立、APDSと電子箱を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/673） |
| PL-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A10-345（PDF p1653）：ドッキングに失敗したあとのAPDSの再構成を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1653） |
| PL-04 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | A-8 APDS DIRECT DRIVE USING BOB（目次、PDF p40）：APDSを分岐箱で直接駆動する手順があることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=40） |
| PL-07 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | （PDF p51）：ドッキングリングの最終位置などのドッキングの記録を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=51） |

### 3.7 PLS運用管理（OPS）（5件）

機能説明書：SSD-FD-PLS-OPS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| PL-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.21節 Operations・Rules of Thumb（PDF p705〜716）：初期化・電源投入・点検の手順と運用の要点を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/715） |
| PL-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A12-1001（PDF p1753）：RMSの各運用を続けるためのGo/No-Go基準を示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1753） |
| PL-05 | JSC-48023 Rev. H PCN-20 | EVA Checklist（Generic） | RMS/PRLA CONTINGENCY EVA（PDF p173）：RMS・PRLAの故障に対する非常時のEVAの手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=173） |
| PL-09 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | （PDF p12）：SRMSの電源投入と点検を問題なく行い、OBSSを取り出した記録を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=12） |
| PL-10 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | （PDF p9）：SRMSの軌道上の初期化と点検を終えた時刻を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=9） |

## 4. 文書×機能マトリクス（全件）

| ID | 文書番号 | 表題 | 全般 | ARM | CTL | MPM | PRL | ODS | OPS | 出典 | URL |
|---|---|---|---|---|---|---|---|---|---|---|---|
| PL-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | ● | ● | ● | ● | ● | ● | ● | 新規 | https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual |
| PL-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | ● | ● | ● | ● | ● | ● | ● | 新規 | https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf |
| PL-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | ● | ● | ● | ● |  |  |  | 新規 | https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf |
| PL-04 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） |  |  | ● | ● |  | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf |
| PL-05 | JSC-48023 Rev. H PCN-20 | EVA Checklist（Generic） |  |  |  | ● | ● |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf |
| PL-06 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） |  |  |  | ● |  |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf |
| PL-07 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） |  |  | ● |  |  | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf |
| PL-08 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） |  |  |  | ● |  |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf |
| PL-09 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） |  | ● |  |  |  |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf |
| PL-10 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） |  | ● |  |  |  |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
