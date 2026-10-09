# C/W 機能別関連文書一覧

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-CW-REF-001 |
| 表題 | C/W 機能別関連文書一覧 |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-CW-001 |
| 関連図 | SSD-SYS-ARC-001 図63 C/W 関連文書マトリクス |

## 1. 目的

C/Wの各機能に関係する公開文書を機能別に整理し、各機能説明書と図63 C/W 関連文書マトリクス（文書×機能マトリクス）の根拠とする。

## 2. 調査方法

乗員運用マニュアル（SCOM、OI-33）・運用飛行規則・故障処置手順・IOA の FMEA/CIL 評価などの公開文書を調べ、C/Wの機能に関係する記述の頁を確かめた 9件を載せた（出典欄はすべて「新規」）。各文書の番号・表題・確認に使った URL は表の各行に、記述の頁は各欄の出典に示す。

## 3. 機能別関連文書

### 3.1 C/W 全般（5件）

機能説明書：SSD-FD-CW-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| CW-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.2節（PDF p113〜136）：警報系の4つの警報区分、乗員とのインタフェース、つながる系を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/113） |
| CW-02 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 2章（PDF p12〜20）：4つの警報区分と、ハードウェア・ソフトウェアの系の別を図で示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=12） |
| CW-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A9-4（PDF p1437）：C&W の全喪失・主C&W・バックアップC&Wの喪失の定義を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1437） |
| CW-04 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | C/Wの章（PDF p113〜145）：主C/W（4.1）とそのほかのC/W（4.2）の故障処置の一覧を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=113） |
| CW-09 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | ECLSS の計装（PDF p16）：センサの出力をC/Wで限界外れについて常に確かめることを述べる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=16） |

### 3.2 主C/W（ハードウェア）（PRI）（7件）

機能説明書：SSD-FD-CW-PRI-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| CW-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.2節 Operations（PDF p124〜126）：主C/Wの120入力の内訳、通常・上昇・確認の3モード、R13Uの操作を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/124） |
| CW-02 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 4.3〜4.4節（PDF p57〜70）：主C&Wの入力・標本化・限界の比較、R13U、電源、自己試験を述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=57） |
| CW-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A9-160 A（PDF p1474）：運用していない主C&Wのパラメータの抑止を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1474） |
| CW-04 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 4.1a PRIMARY C/W（PDF p116〜118）：PRIMARY C/W灯の点灯条件と、C/W A遮断器を開いて冗長を確かめる手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=116） |
| CW-05 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | ORBIT OPS CUE CARDS（PDF p31）：R11 の裏面に主C/Wパラメータの対照表のカードがあることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=31） |
| CW-06 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | C-1 CAUTION AND WARNING ELECTRONICS UNIT CONTINGENCY PWR（PDF p137）：電源A・Bの故障時にC/W電子装置へ電源を与える手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=137） |
| CW-09 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | ECLSS の計装（PDF p16）：ECLSSのセンサが主C/Wの入力になることを示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=16） |

### 3.3 バックアップC/W（ソフト）（BKP）（5件）

機能説明書：SSD-FD-CW-BKP-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| CW-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.2節 Software (Backup) Caution and Warning（PDF p126〜127）：ソフトウェアC/Wの発報と故障メッセージの扱いを述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/126） |
| CW-02 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 4.5節（PDF p70〜78）：バックアップC&Wの構成とPASS・BFSのソフトウェアの分担を述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=70） |
| CW-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A9-160 B（PDF p1474）：迷惑警報を出すバックアップC&Wのパラメータの抑止を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1474） |
| CW-04 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 4.1b（PDF p119）：C/W系Aの電源故障後も残る能力としてバックアップC/Wの限界監視を挙げる。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=119） |
| CW-07 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | ARPCS（PDF p48）：N2流量センサの既知の異常のため、N2系1・2のMASTER ALARMとバックアップC&Wを全期間抑止した例を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=48） |

### 3.4 アラート・限界表示（ALT）（4件）

機能説明書：SSD-FD-CW-ALT-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| CW-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.2節 Class 3・Class 0（PDF p117）：SMアラートと限界表示の矢印を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/117） |
| CW-02 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 5〜6章（PDF p79〜90）：クラス3アラートの限界・前提条件付けとクラス0限界表示を述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=79） |
| CW-04 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 4.2b（PDF p138）：SMアラートトーンがMASTER ALARM灯なしでC/Wトーンを鳴らす場合の切り分けを示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=138） |
| CW-05 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | O2 REPRESS（PDF p172）：再与圧の前後にSMアラートのTMBUのアップリンクを確かめることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=172） |

### 3.5 表示・警報音（ANN）（6件）

機能説明書：SSD-FD-CW-ANN-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| CW-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.2節 Alarms（PDF p114〜116）：クラス1のサイレン・クラクソン、F7の40灯の表示盤、トーンを述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/114） |
| CW-02 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 9.3節（PDF p119〜120）：2つのトーン発生器の出力とACCU・スピーカへの分配を述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=119） |
| CW-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A9-160 D（PDF p1474）：故障した主C&Wを、トーンの冗長のため電源を入れたままにできる条件を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1474） |
| CW-04 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 4.2c KLAXON − NO RAPID dP/dT（PDF p140）：ACCUのVOXによるトーンの選択とクラクソンの故障の切り分けを示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=140） |
| CW-06 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | ACCU BYPASS（PDF p112）：ACCUを止めてもC/W・SMトーンが中甲板のスピーカと睡眠区画の接続口で使えることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=112） |
| CW-08 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） | 3.26節（PDF p651）：表示灯の色の区分と、C/WとGPC状態灯が別の電子装置で点灯することを述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=651） |

### 3.6 C/W運用管理（OPS）（6件）

機能説明書：SSD-FD-CW-OPS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| CW-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.2節 SPEC 60・Summary Data・Rules of Thumb（PDF p127〜131）：限界の保守の操作と運用の要点を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/131） |
| CW-02 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 4.4.1節（PDF p62〜66）：R13Uでの限界の確認・変更と有効化・抑止の操作を述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=62） |
| CW-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A2-1001（PDF p803）：主・バックアップC&Wの両方の喪失を次のPLSとする基準を示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=803） |
| CW-05 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | O2 REPRESS（PDF p172）：作業の前後でC/W・FDAの限界を表のとおりに設定し直す手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=172） |
| CW-07 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | ARPCS（PDF p48）：既知の誤指示に対して警報を抑止する運用の実例を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=48） |
| CW-08 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） | 3.18.4節（PDF p501）：全員が眠るときは1人のヘッドセットを睡眠区画のトーン接続口につなぎ、C&W警報を受けられるようにすることを述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=501） |

## 4. 文書×機能マトリクス（全件）

| ID | 文書番号 | 表題 | 全般 | PRI | BKP | ALT | ANN | OPS | 出典 | URL |
|---|---|---|---|---|---|---|---|---|---|---|
| CW-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | ● | ● | ● | ● | ● | ● | 新規 | https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual |
| CW-02 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | ● | ● | ● | ● | ● | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf |
| CW-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | ● | ● | ● |  | ● | ● | 新規 | https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf |
| CW-04 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | ● | ● | ● | ● | ● |  | 新規 | https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf |
| CW-05 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） |  | ● |  | ● |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf |
| CW-06 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） |  | ● |  |  | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf |
| CW-07 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） |  |  | ● |  |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf |
| CW-08 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） |  |  |  |  | ● | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf |
| CW-09 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | ● | ● |  |  |  |  | 新規 | https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
