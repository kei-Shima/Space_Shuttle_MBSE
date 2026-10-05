# 温度・差圧監視（MON）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ARS-AVB-MON-001 |
| 表題 | 温度・差圧監視（MON）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-AVB-001 |
| 関連図 | SSD-SYS-ARC-001 図32 アビオニクスベイ空冷 機能構成 |

## 1. 目的

各ベイのファン出口空気温度とファン差圧を計測し、パネルO1のAIR TEMP計器、主C&W（AV BAY/CABIN AIR灯）、SM表示・SM警報へ送ってベイ冷却を監視する機能と、警報限界・計測を失ったときの扱いを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ARS-AVB-MON-01 | 3個のAv Bay信号調整器が、各ベイの温度センサとファン差圧センサに給電する（訓練マニュアル3.5節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） |
| F-ARS-AVB-MON-02 | 信号調整器にはパネルL4の遮断器を通して、ベイ1がAC3、ベイ2がAC1、ベイ3がAC2のB相から給電される（MAL 6.1b）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=261） |
| F-ARS-AVB-MON-03 | 温度センサはミッドデッキ床下のファンプレナムで、ベイの空気/水熱交換器の近くにある。気流を失うとセンサは水冷却ループの温度に近づくため、ファンが故障するとベイ温度の表示は下がる（訓練マニュアル付録B.6）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=206） |
| F-ARS-AVB-MON-04 | ファン下流の温度センサのデータはAIR TEMP計器に直接送られ、計器は75〜110°Fを通常範囲、130°Fをベイ空気温度の上限（クラス2 C&W）として示す（SCOM 4.1節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/788） |
| F-ARS-AVB-MON-05 | ベイの空気出口温度はAV BAY/CABIN AIR灯（黄）の入力で、ハードウェアチャネル84・94・104がベイ1・2・3の温度に割り当てられている（SCOM 2.2節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/133） |
| F-ARS-AVB-MON-06 | 温度と差圧はBFSとPASS SM OPS 2・4のSM SYS SUMM 2（DISP 79）に表示され、表示範囲は温度45〜145°F、差圧0〜5 in H2Oである（訓練マニュアル3.5.1節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=80） |
| F-ARS-AVB-MON-07 | C&W訓練マニュアルのFDA表は、ベイファン差圧のSM警報を2.5 in H2O未満・4.3 in H2O超（改良型ファンは4.5・7.8）、ベイ温度の上限を130°Fとする。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=96） |
| F-ARS-AVB-MON-08 | 差圧の限界外はSM警報となり、故障処置手順6.1cで処置する。10.2 psi運用では上限を3.3 in H2O（改良型ファンは5.9）とする（MAL 6.1c）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=262） |
| F-ARS-AVB-MON-09 | 信号調整器の故障はBFSのSM SYS SUMM 2でベイ温度45 L・ファン差圧0.00 Lとして現れる。ファンの状態は差圧だけで監視するため、差圧警報を伴わずに空気循環が劣化していることもありうる（訓練マニュアル付録B.6）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=207） |
| F-ARS-AVB-MON-10 | 運用飛行規則は、差圧はベイ冷却性能の粗い指標で、ベイ空気出口温度、稼働中の水冷却ループ熱交換器の入口・出口温度と水流量も冷却の有効性の判断に使うとし、差圧の計測誤差は喪失判定に使わない（A17-103）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1931） |
| F-ARS-AVB-MON-11 | OI MDM OF1を失うとAv Bay 3のファン差圧と温度が得られなくなり、Av Bay 3の両ファンを運転する。OF2・OF3ではAv Bay 1・2が同様となる（MAL COMM SSR-10〜12、PDF p87〜89）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=87） |
| F-ARS-AVB-MON-12 | STS-54では、ベイ1〜3の空気出口温度は最高104・105・87°F、水コールドプレート温度は最高89・90・79°Fで、ARSの性能は正常であった。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=18） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-AVB-06 | ベイファン・逆止弁 | 推進薬・流体 | 受信 | 各ベイのファン差圧センサで、運転中のファンの差圧を測る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） | — |
| IF-AVB-11 | ベイ熱交換器 | 推進薬・流体 | 受信 | ミッドデッキ床下のファンプレナムで、ベイの空気/水熱交換器の近くにある温度センサがベイの空気温度を測る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=206） | — |
| IF-AVB-12 | ベイ冷却運用管理 | データ・指令 | 送信 | ベイ温度とファン差圧の表示・警報を、ファンとベイ冷却の喪失判定（A17-103・105）と、切替・処置の判断に使う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1931） | — |
| IF-AVB-13 | DPS・アビオニクス | データ・指令 | 送信 | ファン下流の温度センサのデータを、AIR TEMP計器と主C&Wのハードウェアチャネル84・94・104（AV BAY/CABIN AIR灯）へ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/133）ベイ温度はSM SYS SUMM 2とSPEC 66 ENVIRONMENTにも表示される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/788） | 上位: IF-ARS-28 |
| IF-AVB-14 | DPS・アビオニクス | データ・指令 | 送信 | ファン差圧をSM SYS SUMM 2（DISP 79）に表示する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=80）差圧はSPEC 66でも監視され、2.5 in H2O未満または4.3 in H2O超（改良型ファンは4.5・7.8）でSM警報を出す。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=96） | 上位: IF-ARS-28 |
| IF-AVB-15 | 電力系：交流配電（EPDC-AC） | 電力（28 VDC） | 受信 | Av Bay 1・2・3の信号調整器には、それぞれAC3・AC1・AC2のB相をパネルL4の遮断器から供給する。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=261）信号調整器を失うとファンの状態が分からなくなるため、両ファンを運転する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=206） | 上位: IF-ARS-34 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| AV-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.5節（PDF p74）：3個のAv Bay信号調整器が温度・差圧センサに給電するとし、3.5.1節（p80）でSM SYS SUMM 2の表示範囲を、3.5.3節（p83）でC&Wのベイ温度の上限130°Fを示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） |
| AV-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.2節（PDF p133）と4.1節（p788）：AV BAY/CABIN AIR灯のハードウェアチャネル84・94・104をベイ1〜3の温度に割り当て、AIR TEMP計器の目盛（通常75〜110°F、上限130°F）を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/133） |
| AV-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-103（PDF p1931）：差圧は冷却性能の粗い指標で、ベイ出口温度・水冷却ループ熱交換器の入口・出口温度・水流量も判断に使い、差圧の計測誤差は喪失判定に使わないとする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1931） |
| AV-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.1c AV BAY FAN ∆P（PDF p262）：SM警報の限界（2.5・4.3、10.2 psi運用は3.3、改良型は4.5・7.8・5.9 in H2O）と、温度45 Lによる信号調整器の故障の判別を示し、COMM SSR-10（p87）でOI MDM OF1の喪失によるAv Bay 3の計測喪失を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=262） |
| AV-08 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report | PDF p18：ベイ1〜3の空気出口温度（最高104・105・87°F）と水コールドプレート温度（最高89・90・79°F）を記し、ARSの性能は正常であったとする。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=18） |
| AV-12 | USA006019 Rev. A（C&W 21002） | Caution and Warning（2008年） | 表7-2 C&W FDA表（PDF p96）：ベイファン差圧のSM警報の限界2.5〜4.3 in H2O（改良型ファンは4.5〜7.8）とベイ温度の上限130°Fを示し、表7-3（p97）でハードウェアチャネル84・94・104をベイ1〜3の温度に割り当てる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=96） |
| AV-14 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.2.3節（PDF p42）でC&Wのベイ1〜3の温度の上限を139°Fとし、SMメッセージの表（p53）でベイ1・2の差圧を0.04 psi未満・0.17 psi超、出口温度を139°F超とする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=42） |
| AV-15 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） | 3.26節 表3.26-5（PDF p659）：AV BAY/CABIN AIR灯の条件の一つを、ベイ1〜3の空気出口温度139°F超とする。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=659） |
| AV-18 | NSTS-08291 | STS-59 Space Shuttle Mission Report（1994年） | PDF p22：ベイ1〜3の水コールドプレート出口温度（最高85.2・89.5・83.3°F）と空気出口温度（最高104.5・104.5・87.0°F）を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-59%20Space%20Shuttle%20Mission%20Report.pdf#page=22） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：ベイ温度の警報上限は、訓練マニュアル（3.5.3節）・SCOM・C&W訓練マニュアルでは130°Fだが、1979年の飛行運用マニュアル（PDF p42）と1987年の飛行運用マニュアル（PDF p659）では139°Fである。1979年版のSMメッセージ（PDF p53）はベイ1・2の差圧を0.04 psi未満・0.17 psi超とし、単位もin H2Oではない。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=83）

> **注記** 検証メモ：SM SYS SUMM 2の差圧の表示範囲（0〜5 in H2O、訓練マニュアル3.5.1節）は、改良型ファンの喪失判定の上限（7.8 in H2O）を含まない。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=80）

> **注記** IF-ARS-25（主C&W、キャビン空気循環の所有）の本文にはベイ温度のチャネル84・94・104も含まれるが、ARSの段でベイ温度を出すIFはIF-ARS-28であるため、図32ではベイ温度のC&WをIF-ARS-28の下位（IF-AVB-13）とした。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/133）

> **注記** 信号調整器の電源（AC φB）は、ARSの段のIF-ARS-34（ベイファンの三相交流）の下位（IF-AVB-15）として示した。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92）

## 6. 参考文献

1. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.5節 ARS Instrumentation and Displays（PDF p74） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74
2. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.1b AV BAY TEMP（PDF p261） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=261
3. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録B.6 Av Bay Failure Recognition（PDF p206） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=206
4. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 4.1節 Instrument Markings（Panel O1 AIR TEMP Meter）（PDF p788） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/788
5. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 AV BAY/CABIN AIR（PDF p133） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/133
6. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.5.1節 図3-18 SM SYS SUMM 2（PDF p80） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=80
7. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 表7-2 C&W FDA table（PDF p96） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=96
8. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.1c AV BAY FAN ∆P（PDF p262） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=262
9. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録B.6 Av Bay Failure Recognition（続き）（PDF p207） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=207
10. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-103 Loss of Avionics Bay Fan（PDF p1931） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1931
11. JSC-48027 Rev. F Malfunction Procedures（MAL） COMM SSR-10 OI MDM LOST: OF1（PDF p87） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=87
12. NASA-CR-194116 STS-54 Space Shuttle Mission Report Environmental Control and Life Support Subsystem（PDF p18） — https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=18
13. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.5.2〜3.5.3節 Dedicated Displays・Caution and Warning（PDF p83） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=83
14. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表3-6 ECLSS controls (ARS)（続き）（PDF p92） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
