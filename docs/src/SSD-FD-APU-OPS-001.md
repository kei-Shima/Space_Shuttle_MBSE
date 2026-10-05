# APU/HYD運用管理（OPS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-APU-OPS-001 |
| 表題 | APU/HYD運用管理（OPS）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-APU-001 |
| 関連図 | SSD-SYS-ARC-001 図56 APU/HYD 機能構成 |

## 1. 目的

APU/HYDの打上げ前から着陸後までの運用（起動・停止、AOA、FCSチェックアウト、軌道離脱の準備、突入）と、運用飛行規則による喪失時の処置・高速の選択・突入の起動時刻・消耗品・APUの「必要」の定義・Go/No-Go、故障の兆候と処置を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-APU-OPS-01 | WSB制御器は打上げの8時間前に電源を入れてボイラの水タンクを加圧し、APUの起動は燃料を節約するためにできるだけ遅らせ、T−6分15秒に操縦手が起動前の手順を始める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/104） |
| F-APU-OPS-02 | T−5分に3台を起動して主ポンプを加圧し、T−4分5秒までに3系統の主ポンプ圧力が2,800 psiを超えなければ地上打上げシーケンサ（GLS）が自動で打上げを保留する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/104） |
| F-APU-OPS-03 | APUとWSBは主エンジンのパージ・投棄・格納のシーケンスが終わると停止するが、AOAを宣言した場合はAPUを止めずに油圧ポンプを減圧して燃料の消費を抑える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/104） |
| F-APU-OPS-04 | 軌道離脱の前日にはMCCが選んだ1台のAPUを起動し、主ポンプを通常の圧力にして空力舵面の駆動を確かめるFCSチェックアウトを約5分行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/105） |
| F-APU-OPS-05 | 軌道離脱噴射の5分前にMCCが選んだ1台を低圧のまま起動し、突入インタフェースの13分前に残る2台を起動して3系統を通常の圧力にする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/105） |
| F-APU-OPS-06 | 上昇中は、APUや油圧の故障が破局につながらない限り主エンジンへの油圧を途切れさせないようMECOの後まで系を停止せず、動力飛行中に1系統を失うとSSMEが油圧ロックアップになる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/884） |
| F-APU-OPS-07 | APUは確認された129%超の過速度を除いてMECOの前に停止せず、上昇中やRTLSで1系統以上を失った場合は残るAPUを高速で運転する（A10-25）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1546） |
| F-APU-OPS-08 | 1系統を失っても通常どおりEOMまで飛行を続け、次の故障で突入中に単一APUの運用となる冗長度の喪失では次のPLSを行う（A10-21A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1532） |
| F-APU-OPS-09 | 2系統を失った場合は次のPLSで突入し、全系統の喪失が迫っている場合は最も早い機会にアボートする（優先順位はRTLS・TAL・AOA・初日PLS・PLS・ELS）（A10-21A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1533） |
| F-APU-OPS-10 | 突入・アボートと計画では、空力舵面のための2系統、脚展開の冗長、必要時の前輪操舵、半分のブレーキ能力の冗長を確保するためにAPUを「必要」と定義し、単一のAPU/油圧系での着陸は認定されていない（A10-33）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1564） |
| F-APU-OPS-11 | 軌道離脱の前に必要なAPU燃料とWSBの水は、2〜3系統が使えるときは192 lbと63 lb、1系統のときは203 lbと67 lbである（A10-32B）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1563） |
| F-APU-OPS-12 | APUの燃料と窒素の漏れは量が少なくなるまで区別できないため燃料の漏れとして扱い、MECOの後はAPUを停止して燃料タンク隔離弁を閉じ、隔離できなければ再起動して燃料を使い切る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/885） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-APU-03 | ヒドラジン燃料供給 | データ・指令 | 送信 | パネルR2のAPU FUEL TK VLV 1・2・3スイッチをOPENにすると各APUの2個の燃料タンク隔離弁が通電して開き、CLOSEにするか電力を失うと両弁が閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/86）APUの自動停止の後は、隔離弁が再び開いて高温のガス発生器床へ燃料が流れないよう、APU FUEL TK VLVスイッチをCLOSEにする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/89） | — |
| IF-APU-19 | APU制御器 | データ・指令 | 送信 | パネルR2のAPU OPERATEスイッチをSTART/RUNにすると、対応する制御器がAPUの始動を開始し、ガス発生器と燃料ポンプのヒータの電力を自動で断つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/89）APU AUTO SHUT DOWNスイッチをENABLEにすると制御器の自動停止の機能が有効になり、INHIBITにすると禁止される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/90） | — |
| IF-APU-20 | 主油圧ポンプ・供給 | データ・指令 | 送信 | パネルR2のHYD MAIN PUMP PRESSスイッチをLOWにすると減圧弁が通電して主ポンプの吐出圧を500〜1,000 psiに下げる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/99）APUの始動後にHYD MAIN PUMP PRESSスイッチをLOWからNORMにすると、減圧弁の通電が切れて吐出圧が2,900〜3,100 psiに上がる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/100） | — |
| IF-APU-21 | 水噴霧ボイラ | データ・指令 | 双方向 | パネルR2のBOILER N2 SUPPLY 1・2・3スイッチで各ボイラの窒素遮断弁を開閉し、遮断弁は2つの独立したソレノイドで主・副どちらの制御器からも操作できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/96）制御器が有効で、窒素遮断弁が開、蒸気ベントのノズル温度が130°F超、作動油のバイパス弁が正しい位置のとき、R2のAPU/HYD READY TO START表示へ準備完了の信号を送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/98） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| AP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.1節 Operations（PDF p104〜105）と6.8節 APU/Hydraulics（p884〜886）：打上げ前から着陸後までの運用の流れと、APU・油圧系の故障の兆候と処置を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/104） |
| AP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A10-21・23・25・28・29・32・33（PDF p1532〜1564）：APU/油圧系を失ったときの処置、突入の起動時刻、高速の選択、AOA・FCSチェックアウトの運用、消耗品、APUの「必要」の定義を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1532） |
| AP-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | APU/HYD SSR-5（PDF p46〜47）：隔離できないAPUの燃料漏れで、APUを起動して燃料を使い切る手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=46） |
| AP-07 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 7-14〜7-18（PDF p204〜208）：FCSチェックアウトはAPU 1台で行い、APUが起動しないときやMCCが指示したときは循環ポンプで簡略化したアクチュエータの点検を行うと示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=204） |
| AP-11 | NSTS-08292 | STS-65 Space Shuttle Mission Report（1994年） | APU Subsystem（PDF p31）：DTO 414としてAPUを着陸後に2・1・3の順に停止し、各APUの運転時間と燃料の消費を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=31） |
| AP-12 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | PDF p45：APUの運転時間と燃料の消費（上昇・DTO・FCSチェックアウト・突入）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=45） |
| AP-13 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | PDF p46：APUの運転時間と燃料の消費（上昇・FCSチェックアウト・突入）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=46） |
| AP-14 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | APU System（PDF p44）：APUの運転時間と燃料の消費（上昇・FCSチェックアウト・突入）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=44） |
| AP-15 | NSTS-08291 | STS-59 Space Shuttle Mission Report（1994年） | PDF p8：APU 2でFCSチェックアウトを行い（12分2秒）、WSB 2の制御器2B・2Aでともに冷却が正常であることを確かめて、突入にWSB 2を制約なく使ったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-59%20Space%20Shuttle%20Mission%20Report.pdf#page=8） |
| AP-16 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） | 2.2.1節（PDF p15）：APUは打上げ5分前に起動してMPSの投棄の後に停止し、突入ではAPU 2を軌道離脱噴射の5分前、APU 1・3を突入インタフェースの13分前に起動したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=15） |

## 5. 注記（出典間の相違・構成変更）

> **注記** MMACSのGo/No-Go基準（A10-1001）はAPU/HYDとWSBの欄を持ち、1系統のAPU/HYD/WSBが故障して次の故障で単一APUの突入となる場合は次のPLSで突入するとする（注[10]）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1666）

> **注記** 運用飛行規則A10-32の消耗品の表では、AOAのWSBの水の飛行計画マージンが3系統とも0.0 lbで、AOAでのAPU燃料のマージンも1.0 lbと小さい。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1562）

> **注記** STS-125では、APUの燃料の消費が上昇で48〜51 lb、FCSチェックアウト（APU 3、4分24秒）で14 lb、突入で114〜174 lbであった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=44）

> **注記** 検証メモ：主ポンプを低圧にしたときの燃料の消費の減り方を、SCOMの2.1節（PDF p107）は約半分、付録Dの経験則（PDF p1137）は約3分の2とする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1137）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p104） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/104
2. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p105） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/105
3. Shuttle Crew Operations Manual 6.8 Systems Failures（USA007587 Rev. A CPN-1、PDF p884） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/884
4. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-25 APU HIGH SPEED SELECTION/SHIFT（PDF p1546） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1546
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-21 LOSS OF APU/HYDRAULIC SYSTEM(S) ACTIONS（PDF p1532） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1532
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-21 LOSS OF APU/HYDRAULIC SYSTEM(S) ACTIONS（PDF p1533） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1533
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-33 APU DEFINITIONS（PDF p1564） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1564
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-32 APU/HYD CONSUMABLES（PDF p1563） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1563
9. Shuttle Crew Operations Manual 6.8 Systems Failures（USA007587 Rev. A CPN-1、PDF p885） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/885
10. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p86） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/86
11. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p89） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/89
12. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p90） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/90
13. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p99） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/99
14. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p100） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/100
15. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p96） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/96
16. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p98） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/98
17. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-1001 MMACS GO/NO-GO CRITERIA（PDF p1666） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1666
18. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-32 APU/HYD CONSUMABLES（PDF p1562） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1562
19. NSTS-37452 STS-125 Mission Report（2010） Auxiliary Power Unit System（PDF p44） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=44
20. Shuttle Crew Operations Manual 付録D Rules of Thumb（USA007587 Rev. A CPN-1、PDF p1137） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1137
21. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
