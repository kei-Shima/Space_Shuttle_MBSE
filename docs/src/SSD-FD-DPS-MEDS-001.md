# 表示・キーボード（MEDS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-DPS-MEDS-001 |
| 表題 | 表示・キーボード（MEDS）機能説明書 |
| 版・日付 | Rev. A／2026-10-04 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-DPS-001 |
| 関連図 | SSD-SYS-ARC-001 図48 DPS 機能構成 |

## 1. 目的

乗員とGPCの間の表示と操作を担う多機能電子表示系（MEDS：IDP 4台・MDU 11台・ADC 4台）とキーボード3台の構成、DPS表示の階層と主機能の選択、故障メッセージの表示を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-DPS-MEDS-01 | MEDSはIDP 4台、MDU 11台、ADC 4台、キーボード3台から成り、DKデータバスでGPCと通信する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/237） |
| F-DPS-MEDS-02 | 各IDPは飛行重要バス1〜4と1本のDKバス、パネルのスイッチとキーボードにつながり、MEDS側では1本の1553BデータバスでMDUと2台のADCを結ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/238） |
| F-DPS-MEDS-03 | IDPはMN A/FPC1（IDP 1）、MN B/FPC2（IDP 2）、MN C/FPC3（IDP 3・4）の28 VDCで動作し、電源スイッチはパネルC2とR11にあってCRT MDUにも給電し、強制空冷される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/238） |
| F-DPS-MEDS-04 | IDPはMEDSとGPCの間のインタフェースで、GPCとADCのデータをMDU用に整形し、スイッチ・エッジキー・キーボードの入力を受け、自身と他のMEDS LRUの状態をBITEと自己試験で監視する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/238） |
| F-DPS-MEDS-05 | MDUは11台（パネルF6・F7・F8・R12と後部操縦席）あり、各MDUは2つのポートで2台のIDPにつながるが、CRT MDUは主ポートだけを使い、1台のIDPと1本のDKバスに対応する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/239） |
| F-DPS-MEDS-06 | ADCはMPS・HYD・APU・OMS・SPIのアナログデータを12ビットのデジタルデータに変換してIDPに渡し、ADC 1A・1BがMPS・OMS・SPI、ADC 2A・2BがAPU・HYDの信号を受け持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/239） |
| F-DPS-MEDS-07 | キーボードは32個の押しボタンキーを持ち、前方のパネルC2に2台、後部操縦席のR11Lに1台あり、各キーは二重接点で2台のIDPと別々の経路で通信する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/239） |
| F-DPS-MEDS-08 | DPS表示はOPS（メジャーモード表示）・SPEC・DISPの3階層で、SPECは乗員がキーボードで系のパラメータを監視・変更でき、DISPは監視専用である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/246） |
| F-DPS-MEDS-09 | IDPごとのMAJ FUNCスイッチ（GNC・SM・PL）で、どの主機能のソフトウェアをそのIDPのDPS表示に出すかをGPCに知らせ、その主機能の応用ソフトウェアを持つGPCがDPS表示を駆動する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/255） |
| F-DPS-MEDS-10 | PASSが同時に駆動できるのは4台のIDPのうち3台までで、どのGPCからも駆動されないIDPはDPS表示に大きな「X」を出し、POLL FAILメッセージを表示する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/265） |
| F-DPS-MEDS-11 | 故障メッセージはDPS表示の故障メッセージ行に出て、PASSのFAULT表示（DISP 99）には最新の15件が新しい順に残る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/271） |
| F-DPS-MEDS-12 | MDUは通常主ポートで自動ポート再構成モードとし、選択中のIDPとの通信を失うと自動で他方のポートに切り替わり、両ポートとも通信を失うと「MDU IS AUTONOMOUS」を表示する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/256） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ECL-18 | 煙検知・消火系（FDS） | データ・指令 | 受信 | 煙検知素子は警報を発し、煙濃度の情報をCRTと計器盤L1に表示する。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/cw/smokedet.html） | 上位: IF-ORB-19 下位: IF-FDS-03 下位: IF-FDS-06 下位: IF-FDS-09 |
| IF-ECL-35 | 給水・廃水系（H2O） | データ・指令 | 受信 | 給水タンク量A〜Dと給水圧を、軌道上はPASS SMのSPEC 66に、上昇・再突入時はBFSのTHERMAL表示に送る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=158）廃水タンク量と廃水圧をSPEC 66 ENVIRONMENTに送る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=160） | 上位: IF-ORB-19 下位: IF-H2O-05 下位: IF-H2O-09 下位: IF-H2O-12 |
| IF-ECL-37 | 廃棄物収集系（WCS） | データ・指令 | 受信 | 真空ベントノズル温度（VAC VT NOZ T）をSMのDISP 66 ENVIRONMENTに表示する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/359） | 上位: IF-ORB-19 下位: IF-WCS-12 |
| IF-ECL-38 | エアロック支援系（ALS） | データ・指令 | 受信 | エアロックの雰囲気、ベスティビュール減圧弁、水配管、構造ヒータの計測値を、SM OPS 2のSPEC 177 EXTERNAL AIRLOCKに表示する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=189） | 上位: IF-ORB-19 下位: IF-ALS-10 |
| IF-DPS-17 | 汎用計算機・冗長セット | データ・指令 | 双方向 | 4本の表示/キーボード（DK）データバスはIDPごとに1本あって5台のGPCそれぞれにつながり、どのGPCが指令元になるかはMAJ FUNCスイッチ、メモリ構成、GPC/CRTキー入力などで決まる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/233）IDPはDKバスで受けたデータでDPS表示を更新し、GPCにポーリングされると乗員の入力とMEDSの状態を送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/249） | — |
| IF-DPS-21 | データバス網・MDM | データ・指令 | 受信 | FC バスは8本で2本ずつ FC ストリングをなす。FC1〜4 は GPC を FF MDM 4台・FA MDM 4台・IDP 4台・HUD 2台に、FC5〜8 は同じ FF・FA MDM と MEC 2台・EIU 3台に結ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/232）IDP は GPC 側で FC バス1〜4と DK バス1本につながり、MEDS 側で 1553B データバスを制御して MDU と ADC 1組に接続する。IDP は主母線から 28 V dc を受け、強制空冷される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/238） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| DP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.6節 MEDS（PDF p237〜256）：IDP・MDU・ADC・キーボードの構成、画面の形式とエッジキーのメニュー、MDUのポート再構成を示し、p257〜271で表示の階層、キー操作、故障メッセージを述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/237） |
| DP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A7-108・A7-109（PDF p1332〜1335）：DEU相当ロードの基準と、キーボード・MDU・IDPのIFMによる交換の基準を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1335） |
| DP-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 5.6d BIG X ACROSS MDU AND/OR POLL FAIL（PDF p207）：IDPが3秒間表示の更新指令を受けないと大きな「X」が、ポーリングを受けないとPOLL FAILが出ることを示し、その切り分けを示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=207） |
| DP-07 | USA006019 Rev. A（C&W 21002） | Caution and Warning（2008年） | 6章 表6-1 Status symbols（PDF p89）：DPS表示の状態記号（M・H・L・?・↑・↓）の意味を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=89） |
| DP-08 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | MEDS IDP CHANGEOUT AND CABLE SWAP（PDF p224）：故障したIDP 1・3をIDP 4と入れ替え、IDP 2の場合はケーブルだけをIDP 4へつなぎ替える手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=224） |
| DP-09 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.3.6節（PDF p42）：軌道上で表示装置（DU）1が消え、乗員がIFMで後部操縦席のDU 4と入れ替えたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=42） |
| DP-12 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | PDF p13：CDR 2 MDUの電源投入時に指令元のIDP 1がBITE故障を報告し、MDUの電源の入れ直しで一時的なエラー表示が消えたこと（副ポートの一時故障、IFA STS-114-V-10）を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=13） |
| DP-14 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | PDF p22：IDP 4が電源投入時にBITE故障メッセージとMSUの入出力エラーを出したが、その後は正常に動作したこと（IFA STS-125-V-10）を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=22） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：親の説明書の注記のとおり1988年版の資料は表示系を4台の多機能CRT表示系としていた。SCOM（OI-33）のMEDSでも、IDPのソフトウェアは表示電子装置（DEU）をエミュレートしてDPS表示を作る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/249）

> **注記** 検証メモ：運用飛行規則（2002年版）にはMEDS以前の表示系（DEU・CRT）の規定が残り、「N/A FOR MEDS VEHICLES」と注記した項目がある（A7-102A.1、A7-109B・D）。本書はMEDSの機体を対象とした。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1334）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p237） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/237
2. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p238） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/238
3. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p239） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/239
4. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p246） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/246
5. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p255） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/255
6. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p265） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/265
7. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p271） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/271
8. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p256） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/256
9. NASA Human Space Flight – Shuttle Reference: Smoke Detection and Fire Suppression — https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/cw/smokedet.html
10. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 5.6節 Supply and Wastewater System Instrumentation/Displays（PDF p158） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=158
11. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 図5-13 SPEC 66 ENVIRONMENT（PDF p160） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=160
12. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p359） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/359
13. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 6.8.3節 CRT Displays（PDF p189） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=189
14. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p233） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/233
15. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p249） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/249
16. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A7-109 IN-FLIGHT MAINTENANCE (IFM)（PDF p1334） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1334
17. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149
18. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p232） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/232

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-10-04 | 内部ブロック図の機能ブロックをまたぐ流れの IF IF-DPS-21 を足した（GAP-09 の解消）（Rev. AU） |
