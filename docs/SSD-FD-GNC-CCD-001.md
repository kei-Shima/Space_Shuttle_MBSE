# 乗員操縦・表示（CCD）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-GNC-CCD-001 |
| 表題 | 乗員操縦・表示（CCD）機能説明書 |
| 版・日付 | Rev. A／2026-10-04 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-GNC-001 |
| 関連図 | SSD-SYS-ARC-001 図46 GN&C 機能構成 |

## 1. 目的

RHC・THC・RPTA・SBTC・ボディフラップ/トリムスイッチ・DAPプッシュボタンで乗員の手動指令をGNCへ与え、PFD（ADI・HSI）・HUD・SPIとGNCの表示で誘導・航法・制御の状態を示す機能を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-GNC-CCD-01 | GNCは自動とCSSの2つの運用モードを持ち、CSSでも乗員の指令はGPCを通って発行され、乗員と推進系・舵面の間に機械的なつながりはない完全なフライ・バイ・ワイヤ機である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/473） |
| F-GNC-CCD-02 | RHCはCDR・PLT・後部の3か所にあり、各RHCはピッチ・ロール・ヨーの各軸に3個ずつ計9個の変換器を持つ3重冗長で、1つの良い信号があれば機能する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/500） |
| F-GNC-CCD-03 | 上昇以外の段階ではRHCの変位がソフトウェアのデテントを超えるとその軸が自動からCSSに移るが、上昇中はパネルF2またはF4のCSSプッシュボタンを押す必要がある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/500） |
| F-GNC-CCD-04 | THCは軌道上のRCSジェットの並進を指令し、各THCは各軸の正負の方向に1個ずつ計6個の3接点スイッチを持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/502） |
| F-GNC-CCD-05 | ラダーペダルのRPTAは3個の変換器を持ち、自動の旋回協調のため滑空中は運用上使われず、接地後の滑走中に前輪の操向に使われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/505） |
| F-GNC-CCD-06 | SBTCは上昇中のSSMEのスロットルと再突入中のスピードブレーキの2つの機能を持ち、各SBTCは変位に比例する電圧を出す3個の変換器を持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/506） |
| F-GNC-CCD-07 | ボディフラップスイッチはパネルL2とC3に1個ずつあり、主エンジンの熱防護と、再突入中にエレボンの変位を減らすピッチトリムのためのボディフラップの手動の位置決めを行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/507） |
| F-GNC-CCD-08 | パネルC3とA6Uの24個のORBITAL DAPプッシュボタンで、DAPの構成（A・B）、制御モード（AUTO・INRTL・LVLH・FREE）、並進と回転のモードを選ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/516） |
| F-GNC-CCD-09 | デバイスドライバユニット（DDU）はRHC・THC・SBTC・RPTAに直流と交流の電力を供給し、CDR・PLT・後部の各ステーションに1台ずつあって、それぞれ2系統の主母線の遮断器から給電される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/284） |
| F-GNC-CCD-10 | ADIの3本の角速度指針は機体の回転角速度を示し、上昇中の角速度はSRBまたはオービタのRGAから直接表示される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/287） |
| F-GNC-CCD-11 | HSIは航法点に対する機体の位置と方位・距離・コース/グライドパスの偏差を示し、上昇・再突入の誘導と比べる独立のソフトウェア源と、再突入中に個々の航法援助装置の健全性を評価する手段となる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/290） |
| F-GNC-CCD-12 | HUDは最終進入で飛行指令と情報を透過型のコンバイナに重ねて示す単一系統の装置で、冗長のために2本のデータバスにつながる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/303） |
| F-GNC-CCD-13 | SPIは再突入中にエレボン・ボディフラップ・ラダー・エルロン・スピードブレーキの実位置とスピードブレーキの指令位置を示すMEDSの表示である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/299） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-GNC-06 | DAP・飛行制御センサ | データ・指令 | 送信 | RHCの入力は冗長管理とRHC SOPを経てエアロジェットDAPへ渡り、SOPが軸ごとに合成した回転指令を飛行制御ソフトウェアに与える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/500）前方と後方のTHCの冗長な信号も冗長管理とSOPを経て飛行制御系へ渡り、両者が相反する並進指令を出すと指令は出ない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/502） | — |
| IF-GNC-07 | 誘導・航法演算 | データ・指令 | 受信 | 機体と目標の状態ベクトルの情報は、専用表示とGNCのDPS表示で乗員に示される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/469）HSIのSOURCEスイッチをNAVにすると、HSIには航法処理部のデータが表示される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/291） | — |
| IF-GNC-08 | GNC運用管理 | データ・指令 | 送信 | TACAN・GPS・MSBLSの故障ではSM ALERTが点灯して故障メッセージが出、エアデータのジレンマではパネルF7のAIR DATAとBACKUP C/W ALARMの警報灯が点灯する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/533）再突入前のAA・RGA・位置フィードバックの故障は、SPEC 53（ENTRY CONTROLS）で選択解除できる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1351） | — |
| IF-DPS-04 | 飛行ソフトウェア・MMU | データ・指令 | 送信 | CDRとPLTのRHCにあるBFS ENGAGE押しボタンの信号を予備飛行制御器（BFC）へ送り、BFCがエンゲージの論理を処理してBFSに機体の制御を移す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/248）誤ってエンゲージしないよう押しボタンを押すには約8 lbの力を要し、軌道上ではBFSのOUTPUTスイッチの再構成で実質的に無効にする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/273） | 上位: IF-ORB-02 |
| IF-DPS-22 | DPS：データバス網・MDM | データ・指令 | 受信 | FC バスは8本で2本ずつ FC ストリングをなす。FC1〜4 は GPC を FF MDM 4台・FA MDM 4台・IDP 4台・HUD 2台に、FC5〜8 は同じ FF・FA MDM と MEC 2台・EIU 3台に結ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/232）HUD の表示データは GPC から FC バス1または2（CDR の HUD）、3または4（PLT の HUD）で送られ、パネル F6・F8 の HUD データバススイッチで選ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/304） | 上位: IF-ORB-02 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| GN-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.7節 Dedicated Display Systems（PDF p283〜307）と2.13節（p499〜509）：PFD（ADI・HSI）・SPI・HUD・DDUと、RHC・THC・RPTA・SBTC・ボディフラップ/トリムスイッチを解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/283） |
| GN-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A8-6（PDF p1352）・A8-101（p1385）・A8-105（p1390）：操縦装置・FCSスイッチの故障許容、ビープトリムによるデローテーション、RHCの2チャネル故障時の扱いを定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1390） |
| GN-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | GNC SSR-9（PDF p684）：OPS 2でTHCの開故障の接点をRMで選択解除する手順（MCCの指示による）を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=684） |
| GN-05 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | 3.4.5.1節（PDF p179）：FLT CNTLR POWERスイッチの投入時の過渡出力によるRCSの誤噴射を防ぐ手順上の制約を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=179） |
| GN-06 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 7章 FCS CHECKOUT（PDF p218〜223）：THC・SBTC・ラダーペダル・RHCの作動点検と、故障した接点・変換器の選択解除を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=218） |
| GN-07 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | 付録C.3（PDF p52）：表示・制御系の解析（故障モードワークシート134件・PCI 8件）をNASAの基準（FMEA 264件・CIL 21件）と比べ、改訂後のCILに全面的に同意したとする。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=52） |
| GN-09 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | R章（PDF p345〜350）：RHCの取外し・取付けと、DDUの遮断器を入れた後のRHCの作動・極性の試験の手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=350） |
| GN-11 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） | 2.3.2.2節（PDF p23）：再突入・着陸の間スピードブレーキを手動のままとし、手動で格納した経過を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=23） |
| GN-14 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | 飛行制御系（PDF p53）：DDUと操縦装置の動作が正常で、RHCとTHCのチャネルの追従が正常だったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=53） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：運用飛行規則（A8-18・A8-58）には電気機械式のADIの扱いが残る（MEDS機はN/A）が、SCOM（OI-33）はMEDSのPFD上のADIを記す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1377）

> **注記** RHCの機能の回復には、RHCの交換のIFM手順が用意されている（IFM R章）。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=345）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p473） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/473
2. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p500） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/500
3. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p502） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/502
4. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p505） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/505
5. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p506） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/506
6. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p507） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/507
7. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p516） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/516
8. Shuttle Crew Operations Manual 2.7 Dedicated Display Systems（USA007587 Rev. A CPN-1、PDF p284） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/284
9. Shuttle Crew Operations Manual 2.7 Dedicated Display Systems（USA007587 Rev. A CPN-1、PDF p287） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/287
10. Shuttle Crew Operations Manual 2.7 Dedicated Display Systems（USA007587 Rev. A CPN-1、PDF p290） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/290
11. Shuttle Crew Operations Manual 2.7 Dedicated Display Systems（USA007587 Rev. A CPN-1、PDF p303） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/303
12. Shuttle Crew Operations Manual 2.7 Dedicated Display Systems（USA007587 Rev. A CPN-1、PDF p299） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/299
13. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p469） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/469
14. Shuttle Crew Operations Manual 2.7 Dedicated Display Systems（USA007587 Rev. A CPN-1、PDF p291） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/291
15. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p533） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/533
16. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A8-4 Fault Tolerance Philosophy（PDF p1351） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1351
17. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p248） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/248
18. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p273） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/273
19. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A8-58 ADI Loss（PDF p1377） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1377
20. In-Flight Maintenance Checklist Rev F PCN-13 R RHC Replacement（PDF p345） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=345
21. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149
22. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p232） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/232
23. Shuttle Crew Operations Manual 2.7 Dedicated Display Systems（USA007587 Rev. A CPN-1、PDF p304） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/304

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-10-04 | 内部ブロック図の機能ブロックをまたぐ流れの IF IF-DPS-22 を足した（GAP-09 の解消）（Rev. AU） |
