# 主油圧ポンプ・供給（HYD）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-APU-HYD-001 |
| 表題 | 主油圧ポンプ・供給（HYD）機能説明書 |
| 版・日付 | Rev. A／2026-10-04 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-APU-001 |
| 関連図 | SSD-SYS-ARC-001 図56 APU/HYD 機能構成 |

## 1. 目的

各油圧系の主油圧ポンプ（可変容量形、APUで駆動）、フィルタモジュール、ブートストラップ式のリザーバとアキュムレータによって3,000 psiの油圧をつくり、隔離弁と切替弁を経てSSME・空力舵面・着陸装置などの作動器へ供給する機能と、油圧系の喪失判定と漏れの処置を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-APU-HYD-01 | オービタには独立した3系統の油圧系があり、各系統は主油圧ポンプ、リザーバ、ブートストラップ式アキュムレータ、フィルタ、制御弁、油圧／フレオン熱交換器、電動循環ポンプ、電気ヒータから成る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/83） |
| F-APU-HYD-02 | 主油圧ポンプは可変容量形で、APUが通常の回転数のとき3,000 psiで0〜63 gpm、高速のとき最大69.6 gpmを送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/100） |
| F-APU-HYD-03 | 各主ポンプには電動の減圧弁があり、APUの始動時には吐出圧を2,900〜3,100 psiから500〜1,000 psiに下げてAPUに必要なトルクを減らす。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/99） |
| F-APU-HYD-04 | 各油圧系のフィルタモジュールの高圧逃がし弁は、供給管の圧力が3,850 psidを超えるとポンプ供給管の圧力を戻り管へ逃がす。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/100） |
| F-APU-HYD-05 | リザーバの圧力はアキュムレータのブートストラップ機構（可変面積のピストンで約40:1に減圧）で保たれ、主ポンプと循環ポンプの入口圧力を確保して始動・運転中のキャビテーションを防ぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/102） |
| F-APU-HYD-06 | 主ポンプが止まるとプライオリティ弁が閉じてアキュムレータが約2,500 psiを保ち、主ポンプの入口に約62 psiaを与える（確実な始動に必要な最低入口圧力は20 psia）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/102） |
| F-APU-HYD-07 | 各リザーバの容量は8ガロンで、作動油は火災の危険を減らす合成炭化水素のMIL-H-83282であり、リザーバの量はMEDS表示のHYDRAULIC QUANTITY計に百分率で示される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/102） |
| F-APU-HYD-08 | アキュムレータはベローズ式で70°FでGN2を1,700 psigに予圧し、GN2の容積は115立方インチ、作動油の容積は51立方インチである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/102） |
| F-APU-HYD-09 | 各油圧系はSSMEのジンバル（TVC）、SSMEの制御弁、空力舵面、外部タンク切離しアンビリカルの格納、主脚・前脚の展開、主脚ブレーキとアンチスキッド、前輪操舵（系1、系2が予備）の作動器に圧力を与える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/83） |
| F-APU-HYD-10 | 切替弁は同じ作動器に割り当てた2つの冗長な系の圧力を比べて十分な圧力の系から作動器へ流す2位置弁で、3系統を割り当てた作動器には主／待機1と待機1／待機2の2個の切替弁がある（A10-51の根拠）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1566） |
| F-APU-HYD-11 | MPS/TVC隔離弁は軌道上では閉じ、SSMEの油圧の再加圧とSSMEの再配置のときだけ開く（A10-71D）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1569） |
| F-APU-HYD-12 | 油圧系は、APUの運転中に主ポンプを加圧して要求流量で2,760〜3,500 psiaを出せない場合、確認された隔離できない漏れがある場合、作動油の温度を−40°F超に保てない場合などに喪失とする（A10-51）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1565） |
| F-APU-HYD-13 | 上昇中に油圧の漏れがあっても対処はMECOの後とし、MECOの後に該当するMPS/TVC隔離弁を閉じ、それでも隔離できなければ低圧（LOW PRESS）にするかAPUを停止する（A10-72A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1570） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-APU-04 | タービン・ギアボックス | 構造・荷重 | 受信 | タービンの軸動力を減速ギアボックスを介して対応する主油圧ポンプへ送り、主油圧ポンプは通常3,918 rpmで回る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/87）HYD MAIN PUMP PRESSスイッチがNORMのままでは、APUを始動できない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/100） | — |
| IF-APU-07 | 水噴霧ボイラ | 熱 | 送信 | 主油圧ポンプが送る作動油を、対応する水噴霧ボイラの油圧用熱交換器に通して冷却する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/84）作動油は温度が210°Fになるとボイラへ導かれ、190°Fに下がると温度制御のバイパス弁でボイラを迂回する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/99） | — |
| IF-APU-08 | 循環ポンプ・熱調整 | 油圧 | 受信 | 循環ポンプの高圧側は軌道上で休止中のアキュムレータ圧力を保ち、低圧側は作動油を油圧配管に循環させて低温部を温める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/102）循環ポンプの出口のアンローダ弁は、アキュムレータ圧力が2,563 psiaを超えるまで高圧側の吐出をアキュムレータへ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/102） | — |
| IF-APU-09 | MPS：油圧・推力方向制御 | 油圧 | 送信 | 3系統の油圧を、パネルR4のMPS/TVC ISOL VLVスイッチで開閉する隔離弁を経て、各SSMEの油圧作動弁5個の作動と推力方向制御（TVC）のために供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/600）各SSMEのサーボアクチュエータは3系統のうち2系統（主・待機）から油圧を受け、各アクチュエータの切替弁が1系統を選ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/601） | 上位: IF-ORB-07 |
| IF-APU-10 | GN&C：舵面・推力方向制御駆動 | 油圧 | 送信 | 3系統の油圧を7面の空力舵面を駆動する油圧アクチュエータへ供給し、4基のエレボンのサーボアクチュエータにはそれぞれ3系統すべての油圧を供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/510）エレボンの切替弁は主系の圧力が約1,200〜1,500 psiaに下がると第1待機系に、さらに第1待機系が下がると第2待機系に切り替える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/510） | 上位: IF-ORB-08 |
| IF-APU-11 | 機械系（MECH） | 油圧 | 送信 | 油圧系1の圧力を前脚・主脚のアップロックのアクチュエータへ送って脚を展開させ、油圧系1・2（系3が予備）を主脚ブレーキへ、油圧系1・2を前輪操舵へ供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/553）ブレーキ隔離弁1・2・3は、主脚の接地を感知した後のGPC指令で開く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/553） | 上位: IF-ORB-39 |
| IF-APU-16 | 警報系（C/W） | データ・指令 | 送信 | 各油圧系のフィルタモジュールの圧力センサAは、系統1・2・3のいずれかの圧力が2,400 psi未満になるとF7の黄色のHYD PRESS灯へ入力を与える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/100）油圧が2,400 psi未満になると、赤のBACKUP C/W ALARMも点灯する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/106） | 上位: IF-ORB-41 |
| IF-APU-20 | APU/HYD運用管理 | データ・指令 | 受信 | パネルR2のHYD MAIN PUMP PRESSスイッチをLOWにすると減圧弁が通電して主ポンプの吐出圧を500〜1,000 psiに下げる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/99）APUの始動後にHYD MAIN PUMP PRESSスイッチをLOWからNORMにすると、減圧弁の通電が切れて吐出圧が2,900〜3,100 psiに上がる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/100） | — |
| IF-APU-25 | DPS：データバス網・MDM | データ・指令 | 受信 | DN で油圧系1の作動油が脚のアップロック・ストラット作動器と NWS 切替弁へ流れ、ブレーキ隔離弁は接地後の GPC 指令で開き、脚の隔離弁は約100 psi 未満では開閉できず、脚伸展弁2はブレーキ隔離弁2の下流にあり、切替弁は系1の故障で系2を選ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/553）GNC ソフトウェアは Mach 0.8 で脚伸展隔離弁を開き、ブレーキ隔離弁1・2・3は主脚の荷重感知後に MDM FA1・FA2・FA3 経由の GPC 指令で開く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/554） | 上位: IF-ORB-23 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| AP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.1節 Main Hydraulic Pump・Hydraulic Reservoir・Hydraulic Accumulator（PDF p99〜102）：主ポンプ（可変容量、3,000 psi・0〜63 gpm）、減圧弁、ブートストラップ式リザーバ（8ガロン）、ベローズ式アキュムレータを解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/102） |
| AP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A10-51A（PDF p1565〜1566）とA10-71〜73（p1568〜1574）：油圧系の喪失の定義、隔離弁の構成、漏れと圧力・温度の処置を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1568） |
| AP-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 1.2a・1.2b（PDF p36〜38）：リザーバ・アキュムレータの圧力の低下とリザーバ量の異常（隔離弁を閉じての漏れの切り分け）を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=37） |
| AP-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.2.4節（PDF p81〜82）：油圧系の温度・圧力の限界、リザーバの最低液量、ブートストラップ・アキュムレータの予圧（70°Fで1,650〜1,920 psia）を定める。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=82） |
| AP-05 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 表7-3（PDF p97）：主C/WのチャンネルにHYD 1〜3 P（99・109・119）を割り当てる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97） |
| AP-06 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | C.17節（PDF p79）：油圧・WSBのIOAの解析は447件の故障モードの評価表から183件のPCIを抽出したと記す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=79） |
| AP-07 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 7-16（PDF p206）：APU起動後にHYD MN PUMP PRESSをNORMにし、SM 87 HYD THERMALでエレボン・ラダー/スピードブレーキの切替弁の位置を確かめる手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=206） |
| AP-09 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.2.2節（PDF p23）：着陸時の油圧系1のリザーバ量の30%の減少と、それを受けた脚の隔離弁の閉止を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=23） |
| AP-10 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report（1993年） | PDF p6：APUの停止後の油圧系3の圧力の回復が、スピードブレーキの油圧モータ3の逆駆動によるものだったと記す。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=6） |
| AP-11 | NSTS-08292 | STS-65 Space Shuttle Mission Report（1994年） | HYD/WSB Subsystem（PDF p31）：DTO 414の停止順序でPDUの逆駆動は見られなかったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=31） |
| AP-12 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | PDF p46：打上げ前の循環ポンプの運転によるブートストラップ・アキュムレータの充填と、APUの起動・停止時のプライオリティ弁の開閉が規格内だったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=46） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：アキュムレータの予圧を、SCOM（PDF p102）は70°Fで1,700 psig、SODB（3.4.2.4節）は70°Fで1,650〜1,920 psiaとし、運用飛行規則A10-74はベローズ式の予圧を1,715 psiaとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=82）

> **注記** STS-54ではMECO後のAPUの停止の直後に油圧系3の圧力が回復する事象があり、スピードブレーキの油圧モータ3が逆駆動されてポンプとなり、停止した系を再加圧したことが原因とされた。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=6）

> **注記** STS-65ではDTO 414としてAPUを着陸後に2・1・3の順に停止し、APUの停止の順序によるPDUの逆駆動は見られなかった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=31）

> **注記** 外部タンク切離しアンビリカルの格納はMECOの後のET分離シーケンスで油圧により行われるが、親の説明書のIF行には対応する行がないため、本書は機能の文で示しIFは定義していない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/609）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p83） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/83
2. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p100） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/100
3. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p99） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/99
4. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p102） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/102
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-51 HYDRAULIC LOSS DEFINITIONS（PDF p1566） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1566
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-71 HYDRAULIC SYSTEMS CONFIGURATION（PDF p1569） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1569
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-51 HYDRAULIC LOSS DEFINITIONS（PDF p1565） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1565
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-72 HYDRAULIC LEAKS（PDF p1570） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1570
9. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p87） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/87
10. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p84） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/84
11. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p600） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/600
12. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p601） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/601
13. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p510） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/510
14. Shuttle Crew Operations Manual 2.14 Landing/Deceleration System（USA007587 Rev. A CPN-1、PDF p553） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/553
15. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p106） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/106
16. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） 3.4.2.4 Hydraulic Subsystems（PDF p82） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=82
17. NASA-CR-194116 STS-54 Mission Report（1993） Mission Summary（PDF p6） — https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=6
18. STS-65 Mission Report Hydraulics/Water Spray Boiler Subsystem（PDF p31） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=31
19. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p609） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/609
20. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149
21. Shuttle Crew Operations Manual 2.14 Landing/Deceleration System（USA007587 Rev. A CPN-1、PDF p554） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/554

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-10-04 | 内部ブロック図の機能ブロックをまたぐ流れの IF IF-APU-25 を足した（GAP-09 の解消）（Rev. AU） |
