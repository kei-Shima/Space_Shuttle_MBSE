# MPS運用管理（OPS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-MPS-OPS-001 |
| 表題 | MPS運用管理（OPS）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-MPS-001 |
| 関連図 | SSD-SYS-ARC-001 図50 MPS 機能構成 |

## 1. 目的

主エンジンの故障判定、リミット停止の管理、手動停止、交流母線センサの管理、ヘリウム漏れの隔離と相互接続、低LH2 NPSPのアボート、軌道上の電源断と再突入のヘリウム隔離など、運用飛行規則第5章と乗員手順によるMPSの運用管理を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-MPS-OPS-01 | 機上ではMAIN ENGINE STATUSライトの赤（停止・停止後の段階）、出力30%未満、「SSME FAIL」メッセージをエンジン停止の手がかりとし、アボートにつながる判断には2つの手がかりを要する（A5-2）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1008） |
| F-MPS-OPS-02 | パネルC3のMAIN ENGINE LIMIT SHUT DNスイッチ（ENABLE・AUTO・INHIBIT）でリミットの有効・抑止を選び、AUTOでは1基の停止直後に残りのエンジンのリミットが抑止され、リミット抑止中のエンジン故障はおそらく機体の損傷を招く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/602） |
| F-MPS-OPS-03 | 1基停止でBFSを結合していない場合は、乗員ができるだけ早くスイッチをENABLE、AUTOの順に操作してリミットを再び有効にし、2基停止の場合はMECOまでリミットを抑止したままとする（A5-103）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1035） |
| F-MPS-OPS-04 | 指令経路故障のエンジンはGPCの指令で停止できないため、MECOの約30秒前（3基運転でVI = 23K fps、2基で24.5K fps、TALで22.5K fps）に交流電源スイッチとシャットダウン押しボタンで手動停止する（A5-106）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1047） |
| F-MPS-OPS-05 | データ経路故障の背後でエンジンが停止したとMCCが確かめたときは、そのエンジンの停止押しボタンを押して誘導・飛行制御のモードを切り替え、損傷した供給ラインを隔離するためプリバルブを閉じる（A5-105）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1046） |
| F-MPS-OPS-06 | 油圧・電気的ロックアップで最低出力より上に固着したエンジンは、3基運転のノミナル/ATOではMECO付近のLO2 NPSPを守るためVI = 23K fpsで停止押しボタンにより手動停止し、2基運転・RTLS・TALでは処置を要しない（A5-108）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1051） |
| F-MPS-OPS-07 | エンジン停止・制御器の冗長性の喪失・1チャネルの全レッドラインセンサの停止投票のときは、交流母線センサの単一故障で制御器への交流の1相を失わないよう、パネルR1の3個のAC BUS SNSRスイッチをOFFにする（A5-111）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1061） |
| F-MPS-OPS-08 | MPSエンジン系統の大きなヘリウム漏れは隔離でエンジンが停止しない限り隔離手順を行うが、主母線・APC・ALCの故障で脚Aの遮断弁が閉じている場合は、脚Bを閉じるとヘリウムの流れが止まって中間シールパージ圧の低下でレッドライン停止するため隔離を試みない（A5-151）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1067） |
| F-MPS-OPS-09 | 漏れなどでエンジンのヘリウムを補う相互接続は、通信がないときはタンク圧1,150 psiaか両調圧器の圧力が715（679）psia未満で行い、3基運転中は空圧系統だけを相互接続して必要ならその全量を使う（A5-152）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1073） |
| F-MPS-OPS-10 | ヘリウム漏れでエンジンをMECO前に手動停止するときは、交流電源スイッチではなく押しボタンで油圧的に停止し、これはMECO前の空圧停止よりヘリウムが少なくて済みMECO後のLO2ダンプ能力も残す（A5-153）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1081） |
| F-MPS-OPS-11 | ETのLH2アレージの漏れまたは3個のGH2流量制御弁の閉故障で低LH2 NPSPとなった場合は、最も早く複数エンジンの停止に耐える能力を得られるTALかACLSへのアボートを行う（A5-156）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1096） |
| F-MPS-OPS-12 | 挿入後にはMPSはほぼ無電力となり、パネルL4の主エンジン制御器への交流の遮断器18個を開き、パネルO17で4台のATVC・3台のEIU・2台のMECの電源を切り、ヘリウムタンク圧とA調圧器のハードウェア警報を抑止する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/611） |
| F-MPS-OPS-13 | 再突入でエンジンまたは空圧のヘリウム調圧器圧が800（810）psiaを超えたときは、ベント扉が閉じていれば直ちに対応するヘリウム遮断弁を閉じる（調圧器の開故障はベント扉が閉じていると約17秒で後部区画を過圧する）（A5-208）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1115） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-MPS-17 | 主エンジン制御器 | データ・指令 | 双方向 | 乗員はパネルC3のMAIN ENGINE SHUT DOWN押しボタン（両接点が健全であること）でエンジンを手動停止し、指令経路故障のエンジンは交流電源スイッチと押しボタンで停止する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/618）パネルF7のMAIN ENGINE STATUSライトは、停止・停止後の段階かレッドライン超過で赤、指令経路故障・油圧ロックアップ・電気的ロックアップ・データ経路故障で黄が点灯する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/602） | — |
| IF-MPS-18 | ヘリウム・空圧 | データ・指令 | 送信 | 乗員はパネルR2のHe ISOLATION A・B（LEFT・CTR・RIGHT）スイッチで各エンジン系統の遮断弁を個別に操作し、ヘリウム漏れの隔離手順を行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/598）He INTERCONNECT LEFT・CTR・RIGHTスイッチ（IN OPEN・GPC・OUT OPEN）は、各エンジン系統の相互接続弁の組を1個のスイッチで操作する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/599） | — |
| IF-MPS-19 | 充填・ダンプ・不活性化 | データ・指令 | 送信 | 乗員はMPS PRPLT DUMP SEQUENCEスイッチのSTARTでMECO+20秒以降にダンプを手動で始め、STOPでET分離の遅れの間の自動ダンプを止める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/609）自動の真空不活性化が十分でないときは、乗員がLO2・LH2の供給系統を手動で真空不活性化する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1031） | — |
| IF-MPS-20 | 油圧・推力方向制御 | データ・指令 | 送信 | 乗員はパネルR4のHYDRAULICS MPS/TVC ISOL VLV SYS 1〜3スイッチを軌道上ではCLOSEにし、遮断弁下流の油圧漏れから守る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/601）弁はスイッチをOPENにすると開き、スイッチの上のトークバックが開でOP、閉でCLを示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/600） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| MP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.16節「Malfunction Detection」（PDF p602〜604）と警報の要約（p613〜614）：レッドライン、MAIN ENGINE STATUSライト、ハードウェア・ソフトウェアの警報とその限界を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/602） |
| MP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A5-101〜A5-113（PDF p1034〜1065）：アボートの手がかり、リミット停止の管理、データ経路・指令経路故障やロックアップのときの手動停止、性能の分散、交流母線センサ、LO2 NPSP保護の手動絞り、手動MECOを定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1034） |
| MP-04 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | MPS-622X（PDF p333）：SSME停止の押しボタンスイッチの閉故障について、RI/NASAが臨界度を2/1R（アボートは1/1）に改めたと記す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=333） |
| MP-07 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | EPS SSR-50（PDF p533）：MNC DA3の母線喪失時の処置に、SSMEの油圧再加圧のためMPS/TVC遮断弁（1・2系統）を開いて10秒後に閉じる手順を含める。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=533） |
| MP-08 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 8-2 MPS VACUUM INERT（PDF p232）：真空不活性化を1分後かMCCの指示で終える。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=232） |
| MP-12 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | PDF p10：左SSMEのGH2出口圧トランスデューサの不安定（IFA STS-125-V-01）と、この計測がデータ経路故障の背後の停止を確かめる手がかりであることを記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=10） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 17インチ切離し弁の閉が確認できないときは、開いた弁の推力でETとオービタが再接触しないようET分離をMECO+6分まで遅らせ、その間にMPSダンプを自動で行う（A5-202）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1102）

> **注記** STS-125では左SSMEのGH2出口圧トランスデューサが点火後に不安定となってBFSの警報を4回出したが、この計測はデータ経路故障の背後のエンジン停止を乗員が確かめる手がかりの一つで、任務には影響しなかった（IFA STS-125-V-01）。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=10）

> **注記** IOA（1988年）のMPS解析は690枚のFMEAワークシート（うちPCI 371件）を作り、RI/NASAが主エンジンの順次の故障を冗長性の喪失とみなしたのに対し、IOAはエンジンどうしは同じ機能を果たすが互いに冗長ではないとした（資料間の見解の相違）。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=95）

> **注記** SCOMのスイッチの注意は、パネルR2で隣り合う6個のMPS ENGINE POWERスイッチと6個のHe ISOLATIONスイッチがよく似ており（電源スイッチには黄色の帯がある）、ヘリウム漏れの隔離やSSMEの停止の手順で注意するよう求める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/903）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A5-2 SPACE SHUTTLE MAIN ENGINE OUT（PDF p1008） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1008
2. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p602） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/602
3. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A5-103 LIMIT SHUTDOWN CONTROL（PDF p1035） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1035
4. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A5-106 MANUAL SHUTDOWN FOR COMMAND/DATA PATH FAILURES（PDF p1047） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1047
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A5-105 DATA PATH FAIL/ENGINE-OUT ACTION（PDF p1046） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1046
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A5-108 MANUAL SHUTDOWN FOR HYDRAULIC OR ELECTRICAL LOCKUP（PDF p1051） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1051
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A5-111 AC BUS SENSOR ELECTRONICS CONTROL [CIL]（PDF p1061） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1061
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A5-151 PRE-MECO MPS HELIUM SYSTEM LEAK ISOLATION [CIL]（PDF p1067） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1067
9. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A5-152 PRE-MECO MPS HELIUM SYSTEM INTERCONNECTS [CIL]（PDF p1073） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1073
10. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A5-153 PRE-MECO SHUT DOWN OF ENGINES DUE TO MPS HELIUM LEAKS（PDF p1081） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1081
11. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A5-156 ABORT PREFERENCE FOR SYSTEMS FAILURES（PDF p1096） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1096
12. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p611） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/611
13. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A5-208 POST-MECO AND ENTRY HELIUM ISOLATION（PDF p1115） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1115
14. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p618） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/618
15. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p598） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/598
16. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p599） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/599
17. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p609） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/609
18. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A5-13 MPS DUMPS AND VACUUM INERTING DEFINITIONS（PDF p1031） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1031
19. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p601） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/601
20. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p600） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/600
21. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A5-202 ET SEPARATION INHIBIT FOR 17-INCH DISCONNECT FAILURE [CIL]（PDF p1102） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1102
22. NSTS-37452 STS-125 Mission Report（2010） Mission Summary（IFA STS-125-V-01）（PDF p10） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=10
23. NASA-CR-185550 IOA: FMEA/CIL Assessment Interim Report C.25 Main Propulsion System（PDF p95） — https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=95
24. Shuttle Crew Operations Manual 6.10 Switch and Panel Cautions（USA007587 Rev. A CPN-1、PDF p903） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/903
25. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
