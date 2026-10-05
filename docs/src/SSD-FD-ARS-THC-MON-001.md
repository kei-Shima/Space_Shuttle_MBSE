# 温度・分離器監視（MON）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ARS-THC-MON-001 |
| 表題 | 温度・分離器監視（MON）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-THC-001 |
| 関連図 | SSD-SYS-ARC-001 図30 キャビン温湿度制御 機能構成 |

## 1. 目的

キャビン熱交換器の空気出口温度・キャビン温度・ダクト温度と湿度分離器の回転数を計測し、コントローラ・専用計器・主C&W（AV BAY/CABIN AIR灯）・SM表示へ送る機能と、計測を失ったときの判定を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ARS-THC-MON-01 | CABIN CNTLR 1の遮断器は、キャビン温度コントローラのほか、キャビン熱交換器の空気出口温度センサとキャビン温度センサに給電する（訓練マニュアル3.5節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） |
| F-ARS-THC-MON-02 | HUM SEP信号調整器は、湿度分離器が正常に回っていることを確かめる回転数センサに給電する（訓練マニュアル3.5節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） |
| F-ARS-THC-MON-03 | SCOMのキャビン空気系統図は、キャビン温度コントローラにつながるキャビン温度センサとダクト温度センサ、キャビン温度選択器を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） |
| F-ARS-THC-MON-04 | 熱交換器下流のセンサの温度データはパネルO1の兼用のAIR TEMP計器へ直接送られ、SM SYS SUMM 1とSPEC 66 ENVIRONMENTにも表示される（SCOM 4.1節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/788） |
| F-ARS-THC-MON-05 | 熱交換器出口温度（V61T2635A、CAB HX AIROUT T）はAV BAY/CABIN AIR灯の入力の一つで、上限は145°Fである（訓練マニュアル3.5.3節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=83） |
| F-ARS-THC-MON-06 | 主C&Wのハードウェアチャネル114がキャビン熱交換器の空気温度に割り当てられ、限界外でAV BAY/CABIN AIR灯を点灯させる（SCOM 2.2節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/133） |
| F-ARS-THC-MON-07 | SPEC 66 ENVIRONMENTは、HX OUT T（+45〜+145°F）、CABIN T（+32〜+122°F）と、湿度分離器A・Bの運転状態（HUMID SEP、止まると下向き矢印）を表示する（訓練マニュアル3.5.1節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=81） |
| F-ARS-THC-MON-08 | キャビン湿度のトランスデューサはCABIN AIR信号調整器から給電されるが、その値はMCCだけが見る（訓練マニュアル3.5節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） |
| F-ARS-THC-MON-09 | 分離器の回転数が下がると「S66 HUMID SEP A(B)」の警報が出て、SPEC 66の表示から分離器の故障、回転数センサのディスクリートの故障、信号調整器の故障を切り分ける（MAL 6.2j）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=285） |
| F-ARS-THC-MON-10 | 熱交換器出口温度とキャビン温度がともに低く表示される場合は、キャビン温度コントローラ1の信号調整器の故障と判定する（MAL 6.4p）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=320） |
| F-ARS-THC-MON-11 | 運用飛行規則A17-152は、通常はキャビン温度トランスデューサでキャビン温度を測るが、トランスデューサは周囲の熱負荷の影響を受け、STS-103ではマルチメータより約7〜11°F高かったため、必要なら他の計測手段を使うとする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1941） |
| F-ARS-THC-MON-12 | STS-54ではARSは問題なく作動し、キャビン空気温度と相対湿度の最高値は80°Fと56%だった。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=18） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-THC-08 | キャビン熱交換器・凝縮 | 推進薬・流体 | 受信 | キャビン熱交換器の下流に空気出口温度センサを置き、熱交換器を出た空気の温度を測る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/788） | — |
| IF-THC-09 | 湿度分離器・凝縮水排出 | データ・指令 | 受信 | HUM SEP信号調整器が給電する回転数センサで、湿度分離器が正常に回っているかを検知する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） | — |
| IF-THC-10 | 温度制御弁・給気混合 | データ・指令 | 送信 | 有効なコントローラは、給気ダクトと還流ダクトの温度を検知して、乗員が選んだ温度に制御する。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=35）SCOMの系統図は、キャビン温度センサとダクト温度センサをキャビン温度コントローラにつないで示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） | — |
| IF-THC-11 | DPS・アビオニクス | データ・指令 | 送信 | キャビン熱交換器下流の空気出口温度をパネルO1の兼用のAIR TEMP計器（CAB HX OUT）へ直接送り、SM SYS SUMM 1とSPEC 66 ENVIRONMENTにも表示する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/788）この温度はパネルF7の黄色のAV BAY/CABIN AIR警報灯の入力で、145°Fを超えると点灯する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375） | 上位: IF-ARS-27 |
| IF-THC-12 | DPS・アビオニクス | データ・指令 | 送信 | 湿度分離器A・Bの運転状態（HUMID SEP）とキャビン温度（CABIN T）をSMへ送り、SPEC 66 ENVIRONMENTに表示する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=81）運転中の分離器の回転数が下がると、SMの警報「S66 HUMID SEP A(B)」が出る。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=285） | 上位: IF-ARS-27 |
| IF-THC-13 | 温湿度運用管理 | データ・指令 | 送信 | 熱交換器出口温度・キャビン温度・分離器の運転状態の表示と警報を、キャビン大気制御の喪失判定（A17-102）と故障処置に使う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1930） | — |
| IF-THC-18 | 電力系（EPS） | 電力（28 VDC） | 受信 | 遮断器AC3 φA SIG CONDR HUM SEPを通じて、湿度分離器の信号調整器（回転数センサに給電）にAC3 φAの交流電力を供給する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92）熱交換器空気出口温度とキャビン温度のセンサは、コントローラ1と同じCABIN CNTLR 1の遮断器から給電される。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） | 上位: IF-ARS-40 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| TH-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.5節（PDF p74〜83）：CABIN CNTLR 1の遮断器が熱交換器空気出口温度とキャビン温度のセンサに、HUM SEP信号調整器が分離器の回転数センサに給電すると述べ、HX OUT T・CABIN T・HUMID SEPの表示とC&W限界（CAB HX AIROUT T 145°F）を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） |
| TH-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Cabin Temperature Monitoring（PDF p375）と4.1節（p788）：熱交換器出口温度をAIR TEMP計器（CAB HX OUT）とSM SYS SUMM 1・SPEC 66に示し、145°F超でAV BAY/CABIN AIR灯が点灯すると示し、2.2節（p133）で熱交換器の空気温度をC&Wチャネル114とする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375） |
| TH-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-152B1（PDF p1940〜1941）：キャビン温度の計測にキャビン温度トランスデューサ・Micro-WIS・マルチメータを使えるとし、トランスデューサが周囲の熱負荷の影響を受けることを示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1941） |
| TH-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.2j（PDF p285）で回転数センサのディスクリートと信号調整器の故障の切り分けを示し、6.4p（p320）で熱交換器出口温度とキャビン温度がともに低い場合をコントローラ1の信号調整器の故障とする。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=320） |
| TH-10 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report | PDF p18：ARSは問題なく作動し、キャビン空気温度と相対湿度の最高値は80°Fと56%だったと記録する。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=18） |
| TH-17 | NSTS-37443 | STS-107 Space Shuttle Mission Report（2003年） | キャビン空気温度は平均76°F（打上げ時72°F）、湿度は平均約37.5%だったと記録する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-107%20Space%20Shuttle%20Mission%20Report.pdf） |
| TH-21 | USA006019 Rev. A（C&W 21002） | Caution and Warning（2008年） | 表7-3 ハードウェアC&W表（PDF p97）で、キャビン熱交換器出口温度（CAB HX OUT T）をチャネル114に割り当て、2.3.4節（p18）で、通常運転中の湿度分離器のファンが止まると表示に下向き矢印が出ると示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97） |
| TH-25 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | PDF p50：自動制御を使わなかった理由を、STS-1で環境の影響を受けたセンサが高温を示したことと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=50） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 熱交換器出口温度のC&W入力（チャネル114）は、ARS段ではキャビン空気循環のIF-ARS-25（AV BAY/CABIN AIR灯）の本文にも含まれる。本書では温度センサの出力として、キャビン温湿度制御の計測データのIF-ARS-27の下位（IF-THC-11）に置いた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/133）

> **注記** 検証メモ：SCOMのキャビン空気系統図（PDF p370）は相対湿度の範囲を30〜75%とし、湿度制御の本文（PDF p376）は30〜65%とする（SSD-FD-ARS-THC-001の注記と同じ）。キャビン湿度はMCCだけが監視するため、乗員は廃水タンクの増加率と結露で湿度制御を判断する（温湿度運用管理を参照）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370）

> **注記** キャビン湿度トランスデューサの電源（CABIN AIR信号調整器、AC1 φB）は、キャビンファン差圧とPPCO2のトランスデューサと共通である。電源のIFはIF-ARS-38・IF-CO2-07で表しているため、図30では新しいIFを設けない。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92）

## 6. 参考文献

1. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.5節 ARS Instrumentation and Displays（PDF p74） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74
2. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Cabin Air（系統図）（PDF p370） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370
3. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 4.1節 Instrument Markings（Panel O1 Meters）（PDF p788） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/788
4. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.5.3節 Caution and Warning（PDF p83） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=83
5. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 AV BAY/CABIN AIR（PDF p133） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/133
6. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.5.1節 図3-19 SPEC 66 ENVIRONMENT（PDF p81） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=81
7. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.2j HUMID SEP（PDF p285） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=285
8. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.4p H2O LOOP TEMP（続き）（PDF p320） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=320
9. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-152 Cabin Temperature Control and Management（続き）（PDF p1941） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1941
10. NASA-CR-194116 STS-54 Space Shuttle Mission Report（1993年） Environmental Control and Life Support System（PDF p18） — https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=18
11. JSC-12770 Vol. 3 Shuttle Flight Operations Manual – Environmental Control and Life Support Systems（1979年） 2.2.2節 ARS System Description（PDF p35） — https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=35
12. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Cabin Temperature Monitoring〜Cabin Air Humidity Control（PDF p375） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375
13. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-102 Cabin Atmospheric Control（PDF p1930） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1930
14. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表3-6 ECLSS controls (ARS)（続き）（PDF p92） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
