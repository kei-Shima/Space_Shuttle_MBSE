# 計測・表示（MON）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ECL-ALS-MON-001 |
| 表題 | 計測・表示（MON）機能説明書 |
| 版・日付 | Rev. A／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-ALS-001 |
| 関連図 | SSD-SYS-ARC-001 図24 エアロック支援系 機能構成 |

## 1. 目的

エアロックと付属機器の圧力・温度・弁の状態を計測し、ハッチの差圧計とSMのSPEC 177・SM 66へ表示する機能と、計測値の使い方と限界を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ECL-ALS-MON-01 | エアロックと付属機器の各所のセンサが、空気と水の圧力、水と構造の温度、ベスティビュール弁の状態を乗員とMCCに提供し、専用の信号調整器（DSC）はない（訓練マニュアル6.8.1節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=187） |
| F-ECL-ALS-MON-02 | 構造温度センサはヒータ系統のサーモスタットの作動を監視する位置にあり、実際の構造温度やエアロック内の空気温度を測るものではない（訓練マニュアル6.8.1節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=187） |
| F-ECL-ALS-MON-03 | 各ハッチの差圧は、ミッドデッキの乗員とEVA乗員の両方が読めるよう、ハッチの両側の差圧計に表示される（訓練マニュアル6.8.2節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=187） |
| F-ECL-ALS-MON-04 | SPEC 177 EXTERNAL AIRLOCKはSM OPS 2だけで使え、エアロックの雰囲気、ベスティビュール減圧弁、水配管、構造ヒータの情報を示す。機器は全機にあり、ソフトウェアを共通に保つため表示は全飛行に載せる（訓練マニュアル6.8.3節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=189） |
| F-ECL-ALS-MON-05 | SPEC 177は、EXT A/L PRESS（0〜20 psia）、エアロック・ベスティビュール間差圧（±20 psia）、隔壁・構造の温度、配管区域1・2の給水・LCG2供給温度、LCG供給圧1・2と水移送圧（0〜40 psig）、ベスティビュールの減圧弁・隔離弁の開閉を表示する（訓練マニュアル図6-20）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=190） |
| F-ECL-ALS-MON-06 | エアロック圧力（AIRLK P）はSM DISP 66 ENVIRONMENTにも表示される（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/359） |
| F-ECL-ALS-MON-07 | 乗員室圧力トランスデューサの故障時は、SM 66のAIRLK PまたはSPEC 177のEXT A/L PRESSを乗員室圧力の予備として使う（MAL 6.2b）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=271） |
| F-ECL-ALS-MON-08 | エアロック・船外間の差圧トランスデューサから求める乗員室圧力には最大±2.0 psiの誤差があり、10.2 psia運用で乗員室の圧力とO2濃度を管理するには精度が足りない（A17-302A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1977） |
| F-ECL-ALS-MON-09 | 外部エアロックの圧力はドッキング機構のアビオニクス箱（DMCU・DSCU・LACU・PACU）内の雰囲気圧を代表し、8.0 psia未満ではPSUを含むこれらの箱を運転しない（A10-342A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1645） |
| F-ECL-ALS-MON-10 | 水配管の区域1・2には2個ずつの温度トランスデューサがあり、流れのないときの6本の配管の温度を代表するよう配置され、区域2の3個目（V64T0185A）は応答が遅いため故障検知に使わない（A18-60）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2055） |
| F-ECL-ALS-MON-11 | SPEC 177の故障メッセージ（177 EXT A/L PRESS、177 A/L VEST DP、177 AL H2O LCG P1(2)、177 AL H2O XFER P）には、対応するMAL手順がない（MAL 6章）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=258） |
| F-ECL-ALS-MON-12 | OI MDM（OF1）を失うと、外部エアロックのLCG EV1供給配管圧、トラスフランジ温度、水配管ヒータ温度、水遮断弁の位置の計測を失う（MAL COMM SSR-10）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=87） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ALS-10 | DPS・アビオニクス | データ・指令 | 送信 | エアロックの雰囲気、ベスティビュール減圧弁、水配管、構造ヒータの計測値を、SM OPS 2のSPEC 177 EXTERNAL AIRLOCKに表示する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=189）エアロック圧力（AIRLK P）はSM DISP 66 ENVIRONMENTにも表示される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/359） | 上位: IF-ECL-38 |
| IF-ALS-11 | 区画・減圧・再与圧 | 推進薬・流体 | 受信 | エアロックの圧力（EXT A/L PRESS）とエアロック・ベスティビュール間の差圧を計測する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=190）各ハッチの差圧は、ハッチの両側の差圧計にも表示される。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=187） | — |
| IF-ALS-12 | 液冷服冷却ループ | 推進薬・流体 | 受信 | EV1・EV2のLCG供給配管の圧力（V64P0170A・V64P0171A）を計測する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1870）SPEC 177はLCG供給圧1・2を0〜40 psigの範囲で表示する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=190） | — |
| IF-ALS-13 | 配管・構造ヒータ | 熱 | 受信 | 水配管の区域1・2に2個ずつの温度トランスデューサがあり、流れのないときの6本の配管の温度を代表するよう配置されている。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2055）構造温度センサはヒータのサーモスタットの作動を監視する位置にあり、構造や空気の実際の温度は測らない。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=187） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| AL-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 6.8節（PDF p187〜190）：センサの構成、ハッチ両側の差圧計、SPEC 177 EXTERNAL AIRLOCK（SM OPS 2）の表示項目と範囲を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=189） |
| AL-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p359）と4.1節（p790）：SM DISP 66のエアロック圧力（AIRLK P）を示し、乗員室の圧力表示の予備に使えるとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/359） |
| AL-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-302A・A10-342A（PDF p1977・p1645）：エアロック・船外間差圧から求める乗員室圧力の誤差（±2.0 psi）と、外部エアロックの圧力をドッキング機構のアビオニクス箱の雰囲気圧とみなす制約を示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1977） |
| AL-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | ECLS 6.2b（PDF p271）とCOMM SSR-10（p87）：AIRLK P・EXT A/L PRESSを乗員室圧力の予備に使うことと、MDM喪失時に失う外部エアロックの計測を示し、6章目次（p258）はSPEC 177の故障メッセージに対応手順がないとする。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=271） |

## 5. 注記（出典間の相違・構成変更）

> **注記** O2供給ラインの温度（V64T0183A、STS-102以降はV64T0186A）は、EMUのO2補給を行えるか（A15-204A、80°F以下）の判断に使う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1876）

> **注記** 計測・表示からDPSへのIF-ALS-10は、ARS段のIF-ARS-25〜29・37と同じく上位をIF-ORB-19とした（ECL段にエアロック支援系とDPSのIFはない）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=189）

> **注記** 乗員室圧力の計器の説明（SCOM 4.1節）も、CRTのENVIRONMENT表示のエアロック圧力を予備に使えるとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/790）

## 6. 参考文献

1. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 6.8節 Airlock Instrumentation and Displays（PDF p187） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=187
2. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 6.8.3節 CRT Displays（PDF p189） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=189
3. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 図6-20 SPEC 177 EXTERNAL AIRLOCK（PDF p190） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=190
4. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 ECLSS 概要（PDF p359） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/359
5. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.2b CABIN PRES（PDF p271） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=271
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-302 10.2 PSIA Cabin Depressurization Constraints（PDF p1977） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1977
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-342 APDS Pressure/Temperature（PDF p1645） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1645
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-60 External Airlock Water Lines（PDF p2055） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2055
9. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6章 目次（PDF p258） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=258
10. JSC-48027 Rev. F Malfunction Procedures（MAL） COMM SSR-10 OI MDM LOST: OF1（PDF p87） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=87
11. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-202 External Airlock LCG Pressure and Temperature Management Using the EMU（PDF p1870） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1870
12. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-204 External Airlock EMU Servicing Constraints（PDF p1876） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1876
13. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 4.1節 Instrument Markings（CABIN PRESS, PPO2 Meter）（PDF p790） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/790

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-10-01 | IF-ALS-10 の上位を IF-ECL-38 に付け替え（Rev. M） |
