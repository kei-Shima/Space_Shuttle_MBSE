# RCS運用管理（OPS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-RCS-OPS-001 |
| 表題 | RCS運用管理（OPS）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-RCS-001 |
| 関連図 | SSD-SYS-ARC-001 図54 RCS 機能構成 |

## 1. 目的

上昇・軌道上・突入でのRCSの使い方と、運用飛行規則（故障管理・マニホールドの開閉・再加圧・レッドライン・推進薬の節約・Go/No-Go）と故障処置手順によるRCSの運用管理を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-RCS-OPS-01 | 上昇中のRCSは外部タンクと結合した惰行中の回転制御とET分離時の-Z並進に使われ、ET分離の-Z並進は自動で行う唯一のRCSの並進である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/718） |
| F-RCS-OPS-02 | 異常時には、SSME 2基を失った場合のOMS-RCS連結（自動）と単発エンジンのロール制御、OMS噴射中の姿勢保持の補助（RCSラップアラウンド）、OMSの早期停止時の軌道調整、アボート時の推進薬投棄の補助にRCSを使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/718） |
| F-RCS-OPS-03 | OMS-2噴射の後は残留速度の打ち消し、姿勢保持、軌道上の小さな並進に使われ、軌道上の姿勢保持には通常バーニア噴射器を選ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/733） |
| F-RCS-OPS-04 | 前部RCSに残った推進薬は、重心の調整が必要なら突入インタフェースの前に前部のヨー噴射器で燃やして投棄できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/733） |
| F-RCS-OPS-05 | 系統を閉じるときはマニホールドからヘリウムタンクへ向かって、開くときはヘリウムタンクからマニホールドへ向かって操作する（SCOMの経験則）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/742） |
| F-RCS-OPS-06 | 運用飛行規則A6-52は、前部RCSのHe・推進薬タンクの漏れ・故障と、後部RCSの1〜2基のHe・推進薬タンクの漏れ・故障について、打上げ〜OMS-1、OMS-1〜OMS-2、OMS-2〜軌道離脱の段階ごとの処置を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1177） |
| F-RCS-OPS-07 | A6-60は、マニホールドを通常は開とし、漏れの切り分け、RMが示すON故障・漏れの噴射器の隔離、電源断に伴う系統の保護、指令経路やRJDの回復不能な喪失の場合にだけ閉じると定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1193） |
| F-RCS-OPS-08 | A6-61は、燃料・酸化剤の両方のマニホールド圧が130 psia超なら隔離弁で直接再加圧し、両方が130 psia未満なら弁のバウンスとZOTを避けるため段階的な再加圧の手順を使うと定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1196） |
| F-RCS-OPS-09 | A6-156は、RMの検知機能（fail-off・leak・on・全体）を失った場合の処置を噴射器の種類とDAPごとに定め、軌道上の主噴射器は1方向・1ポッドあたり1基で姿勢を保てるが、時間・安全上重要な事象には2基が要るとする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1218） |
| F-RCS-OPS-10 | 後部RCSの軌道離脱レッドライン（A6-305）は、軌道離脱準備、OMSエンジン故障時の姿勢制御、軌道離脱の延期などの推進薬を確保し、突入（EI〜マッハ1）には重心位置に応じて1,175か1,375 lbを予約する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1261） |
| F-RCS-OPS-11 | OMSの推進薬はタンクの供給の制約で突入中のRCSに使えないため、RCSの突入レッドラインを守るためにOMS-RCS連結を使い、急角度の軌道離脱の保護より優先する（A6-354）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1278） |
| F-RCS-OPS-12 | A6-1001のGo/No-Goでは、後部RCSのHeか推進薬タンクの漏れ1件で次のPLSに入り、同じ側の後部主マニホールド2つの喪失でも次のPLSとする（いずれも突入の制御が1故障で失われうるため）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1285） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-RCS-16 | 推進薬貯蔵・分配 | データ・指令 | 送信 | 運用規則と手順に従い、パネルO7・O8のスイッチで推進薬系の弁（タンク隔離・マニホールド隔離・クロスフィード）を操作する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/742）トークバックは弁の対が開ならOP、閉ならCL、移動中や不一致ならバーバーポールを示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/722） | — |
| IF-RCS-17 | ヘリウム加圧 | データ・指令 | 送信 | パネルO7・O8のHe PRESS A・Bスイッチでヘリウム隔離弁を操作し、調圧器の故障ではRCS REGULATOR RECONFIGの手順で使う加圧経路を切り替える。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=256） | — |
| IF-RCS-18 | 噴射器冗長管理 | データ・指令 | 送信 | SPEC 23の項目入力で、噴射器の手動の選択解除・再選択、マニホールド状態の開・閉の上書き、ポッドの故障限度の変更を行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/730）マニホールドの自動閉（AUTO MANF CL）はSPEC 23で有効にする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/723） | — |
| IF-RCS-19 | 熱制御（ヒータ） | データ・指令 | 送信 | 運用規則に従い、パネルA14のヒータスイッチでヒータ系（A・B）の選択と入切を行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/742）ヒータ系は飛行中に少なくとも一度は冗長側（A・B）へ切り替える。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1229） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| RS-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.22節 Operations・RCS Rules of Thumb（PDF p733〜742）：上昇・軌道上・突入でのRCSの使い方、前部RCSの投棄、OMS-RCS連結、経験則（1%＝1 fps・22 lb、閉じる・開く順序）を示し、6.8節（p897）で噴射器の故障と連結・クロスフィードの処置を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/733） |
| RS-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A6-52（PDF p1177〜）、A6-60・A6-61（p1193〜1201）、A6-302〜A6-359（p1248〜1282）：タンクの故障管理、マニホールドの閉鎖と再加圧、使用可能量とレッドライン、重心管理、推進薬の節約を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1177） |
| RS-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | RCS SSR（PDF p745）：混合クロスフィード、噴射試験（HOT FIRE RCS）、後部のマニホールド・レッグ圧、段階的な再加圧、漏れたRCSの推進薬・Heの噴射の手順の一覧を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=745） |
| RS-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book（SODB）Vol. 1 | 3.4.3.2節（PDF p130）：タンクセットあたりに同時に噴射できる主噴射器の数（通常の結合惰行・ET分離・軌道上で前部5基・後部4基など）を定める。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=130） |
| RS-05 | Orbit Ops Checklist Rev. M PCN-10 | Orbit Operations Checklist（ORB OPS） | 10章 RCS（PDF p239）：噴射試験、重力傾斜の自由ドリフト、PRCS・VRCSのPTC、軌道上の+X・-X・多軸のRCS噴射、バーニアの喪失と回復、調圧器の再構成の手順の目次を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=239） |
| RS-07 | NASA-CR-185550 | IOA: FMEA/CIL Assessment Interim Report（1988年） | C.27節（PDF p99）：前部RCSの推進薬を投棄できないことの重大度について、IOAは突入に、NASA/RIはET分離にだけ重大とした相違を記す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=99） |
| RS-10 | STS-114 Mission Report | STS-114 Space Shuttle Mission Report（2005年） | Reaction Control System（PDF p38）：噴射試験ですべての噴射器を少なくとも一度噴射し、前部RCSの投棄（4基、44.2秒）を行ったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=38） |
| RS-11 | STS-122 Mission Report | STS-122 Space Shuttle Mission Report（2008年） | Flight Day 10（PDF p19〜20）：RCSによるリブーストでΔV 5.4 ft/s、軌道を約1.5 nmi上げ、オービタによるリブーストは5年ぶりであったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=20） |
| RS-12 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | Reaction Control System（PDF p41）：ET分離を6.0秒・10噴射器の並進で行い、ランデブのRCS噴射の記録を表にする。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=41） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：IOAのFMEA/CIL評価（1988年）では、RCSの未解決の指摘のうち前部RCSのハードウェア17件が、前部RCSの推進薬を投棄できないことをIOAは突入に重大とし、NASA/RIはET分離にだけ重大としたことの相違に結び付いていた。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=99）

> **注記** 推進薬の余裕を使い切った後の節約は、ノーズオンリー・テールオンリー制御、不感帯の拡大、ミッション活動の削除、重力傾斜・自由ドリフト、突入準備の最小化の順に行う（A6-359）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1282）

> **注記** ET分離の-Z並進は、STS-114では3秒・10噴射器、STS-125では6.0秒・10噴射器の並進として行われた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=41）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p718） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/718
2. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p733） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/733
3. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p742） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/742
4. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-52 RCS FAILURE MANAGEMENT（PDF p1177） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1177
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-60 RCS MANIFOLD CLOSURE CRITERIA（PDF p1193） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1193
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-61 RCS MANIFOLD/OMS CROSSFEED LINE REPRESSURIZATION（PDF p1196） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1196
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-156 RCS RM LOSS MANAGEMENT（PDF p1218） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1218
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-305 AFT RCS REDLINES（PDF p1261） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1261
9. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-354 RCS ENTRY REDLINE PROTECTION（PDF p1278） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1278
10. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-1001 OMS/RCS Go/No-Go Criteria（PDF p1285） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1285
11. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p722） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/722
12. Orbit Operations Checklist Rev M PCN-10 RCS REGULATOR RECONFIG（PDF p256） — https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=256
13. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p730） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/730
14. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p723） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/723
15. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-251 GENERAL（PDF p1229） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1229
16. NASA-CR-185550 IOA: FMEA/CIL Assessment Interim Report C.27 Reaction Control System（PDF p99） — https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=99
17. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-359 RCS PROPELLANT CONSERVATION PRIORITIES（PDF p1282） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1282
18. NSTS-37452 STS-125 Mission Report（2010） Reaction Control System（続き）（PDF p41） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=41
19. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
