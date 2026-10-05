# 液冷服冷却ループ（LCG）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ECL-ALS-LCG-001 |
| 表題 | 液冷服冷却ループ（LCG）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-ALS-001 |
| 関連図 | SSD-SYS-ARC-001 図24 エアロック支援系 機能構成 |

## 1. 目的

EMUごとの2本の閉じた液冷服（LCVG）冷却ループでSCUを通る水を循環させ、エアロック内のLCVG熱交換器でオービタの水冷却ループへ排熱する機能と、配管の圧力・温度の管理を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ECL-ALS-LCG-01 | LCVGの冷却水はEMUごとの2本の閉ループでエアロックに出入りし、SCUにつないだ状態でLCVGを冷やす。この水はLCVG熱交換器でオービタの水ループにより冷却される（訓練マニュアル6.3節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=176） |
| F-ECL-ALS-LCG-02 | LCVG熱交換器は、EVAの前後にLCVGを冷やす水ループを冷却するもので、エアロック内にある（訓練マニュアル3.3.7節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=69） |
| F-ECL-ALS-LCG-03 | オービタの水冷却ループの冷えた水は、液冷服熱交換器、飲料水チラー、キャビン熱交換器、IMU熱交換器を通って各ループのポンプパッケージへ戻る（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/379） |
| F-ECL-ALS-LCG-04 | EMUの液体輸送系は遠心ポンプでLCVGに約240 lb/hrの水を循環させ、船内活動中はSCUを通してオービタの熱交換器にも水を流す（SCOM 2.11節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/448） |
| F-ECL-ALS-LCG-05 | LCG配管は外部エアロック・オービタの外を通り、機体姿勢による加熱やヒータの故障で圧力・温度が上がりやすい。ループにはアキュムレータ・遮断弁・調圧器がなくEMUから外すと液封状態になり、SCU接続時はEMUの水タンクのアレージ（公称1 lb）がアキュムレータとして働く（A15-202）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1870） |
| F-ECL-ALS-LCG-06 | SCUをEMUにつないだ状態でLCG配管の圧力が上がる場合は、18（16.6）psigに達する前にEMUのファン・ポンプを最大2分運転してLCG熱交換器で冷やし、その後はEMUの水タンクの公称のアレージダンプを行う（A15-202B）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1871） |
| F-ECL-ALS-LCG-07 | LCG配管は、SCUを外した状態で圧力を28.1（26.4）psig以下に、SCUをEMUにつなぎEMUが非通電の状態で18（16.6）psig以下に保てない場合に喪失とみなす。28.1 psigはSCUの認定最大使用圧力である（A18-61）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2057） |
| F-ECL-ALS-LCG-08 | LCG配管の予期しない圧力・温度上昇には、水配管ヒータの停止、機体姿勢の変更、EMUのファン・ポンプによる循環の順で対処する。配管の熱膨張の逃げ場は、外したSCUの可とう部か、EMUの水タンクのアレージしかない（A18-62）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2058） |
| F-ECL-ALS-LCG-09 | 有人のEMUにLCGの水を循環させるのはLCG2配管の温度が両区域で92°F以下のとき、無人のEMUでは110°F以下のときとする（A15-204B・C）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1877） |
| F-ECL-ALS-LCG-10 | EVA中は、EMUの冷却故障に備えてLCGの冷却をいつでも使えるよう、LCG供給配管の温度を両区域で92°F以下に保つ（A15-204F）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1878） |
| F-ECL-ALS-LCG-11 | STS-108では、EVA中の機体姿勢が穏やかだったため、外部エアロックの補給配管は限界内に十分収まった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=39） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ALS-07 | EMU（船外活動ユニット） | 推進薬・流体 | 双方向 | SCU接続中は、EMUの液体輸送系のポンプがLCVGの水（約240 lb/hr）をSCUを通してオービタの熱交換器へも流し、乗員を冷却する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/448）LCVGの冷却水は、EMUごとの2本の閉ループでエアロックに出入りする。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=176） | 上位: IF-ECL-20 |
| IF-ALS-12 | 計測・表示 | 推進薬・流体 | 送信 | EV1・EV2のLCG供給配管の圧力（V64P0170A・V64P0171A）を計測する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1870）SPEC 177はLCG供給圧1・2を0〜40 psigの範囲で表示する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=190） | — |
| IF-ALS-14 | 配管・構造ヒータ | 熱 | 受信 | LCG供給・戻り配管（EMUごとに1組）は与圧区画の外を通り、区域ごとに各配管に巻いた3系統のヒータで加温する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=179）LCVG配管の2区域のサーモスタット制御ヒータが凍結を防ぐ。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=176） | — |
| IF-WCL-21 | 水冷却ループ：冷側熱交換器 | 熱 | 送信 | EMUごとの閉じたLCVG冷却ループの水を、エアロック内のLCVG熱交換器でオービタの水冷却ループにより冷やす。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=176）水冷却ループの冷側経路は、インターチェンジャの直後に液冷服熱交換器を通る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/379） | 上位: IF-ARS-22 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| AL-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.3.7節（PDF p69）と6.3節（p176）：エアロック内のLCVG熱交換器と、EMUごとの2本の閉じたLCVG冷却ループをオービタの水ループで冷却することを示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=69） |
| AL-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.11節（PDF p448）と2.9節（p379）：EMUの液体輸送系がLCVGに約240 lb/hrを循環させ船内ではSCUを通してオービタの熱交換器へも流すことと、液冷服熱交換器が水冷却ループの冷側経路にあることを示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/448） |
| AL-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A15-202・A18-61・A18-62（PDF p1870〜1871・p2057〜2058）：LCG配管の圧力・温度上昇時のEMUによる冷却、配管の喪失定義（28.1・18 psig）、対処の優先順位を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1870） |
| AL-06 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS | 水冷却ループの経路に液冷服（LCG）熱交換器が含まれると記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| AL-07 | 番号なし | NSTS 1988 News Reference Manual – Airlock Support | SCUを介して液冷服を冷却すると記し、液冷服熱交換器の熱がフレオン21冷却ループへ移されるとする（SSD-FD-ECL-ALS-001の注記を参照）。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html） |
| AL-18 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | PDF p39：EVA中は機体姿勢が穏やかだったため、外部エアロックの補給配管が限界内に十分収まったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=39） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：1988年版のNews Reference Manual（エアロック支援の章）は液冷服熱交換器の熱がフレオン21冷却ループへ移されると記すが、訓練マニュアル（3.3.7節）とSCOM（PDF p379）はオービタの水冷却ループで冷やすとする。本書は一次資料に従い、図24では図12のIF-ARS-22の下位で図36の水冷却ループの展開が定めたIF-WCL-21（液冷服冷却ループ→冷側熱交換器）をその番号のまま示した（同じ物理IFのため新しい番号を作らない）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=69）

> **注記** 訓練マニュアル（6.3節）はLCVG、運用飛行規則はLCGと表記するが、いずれも液冷服の冷却ループを指す。本書はブロック名を液冷服冷却ループ（LCG）とした。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1870）

## 6. 参考文献

1. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 6.3節 Air and Water Transfer（PDF p176） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=176
2. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.3.7節 Liquid-Cooled Garment Heat Exchanger（PDF p69） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=69
3. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Water Coolant Loop System（PDF p379） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/379
4. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.11節 Oxygen Ventilation Circuit・Liquid Transport System（PDF p448） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/448
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-202 External Airlock LCG Pressure and Temperature Management Using the EMU（PDF p1870） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1870
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-202 External Airlock LCG Pressure and Temperature Management Using the EMU（続き）（PDF p1871） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1871
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-61 External Airlock LCG Fluid Line Loss Definition（PDF p2057） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2057
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-62 External Airlock Water Line Overpressure/Temperature Management（PDF p2058） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2058
9. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-204 External Airlock EMU Servicing Constraints（続き）（PDF p1877） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1877
10. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-204 External Airlock EMU Servicing Constraints（続き）（PDF p1878） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1878
11. NSTS-37436 STS-108 Space Shuttle Mission Report（2002年） Thermal Control Subsystem（続き）（PDF p39） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=39
12. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 図6-20 SPEC 177 EXTERNAL AIRLOCK（PDF p190） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=190
13. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 図6-7 Airlock ductwork configuration・6.5節 Heaters（PDF p179） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=179

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
