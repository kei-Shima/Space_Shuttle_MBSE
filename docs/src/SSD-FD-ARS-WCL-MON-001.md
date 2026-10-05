# ループ計測・警報（MON）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ARS-WCL-MON-001 |
| 表題 | ループ計測・警報（MON）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-WCL-001 |
| 関連図 | SSD-SYS-ARC-001 図36 水冷却ループ 機能構成 |

## 1. 目的

水冷却ループのポンプ出口圧・差圧・出口温度・アキュムレータ量、インターチェンジャ流量・出口温度、キャビン熱交換器入口温度を計測し、パネルO1の計器、主C&WのH2O LOOP灯、SM表示とSM警報へ送る機能と、センサの電源・警報の限界を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ARS-WCL-MON-01 | H2O CNTLRはバイパス弁の駆動電力に加えてポンプパッケージのすべての計装（アキュムレータ量、ポンプ出口圧・出口温度・差圧）に給電し、H2O BYP LOOP 1 SNSRの信号調整器はループ1のインターチェンジャ流量センサとIMUファン差圧センサに、LOOP 2 SNSRはループ2のインターチェンジャ流量センサに給電する（訓練マニュアル3.5節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） |
| F-ARS-WCL-MON-02 | 水ループの計装は、ポンプ出口圧・ポンプ出口温度・ポンプ差圧・アキュムレータ量と、インターチェンジャ流量・インターチェンジャ出口温度・キャビン熱交換器入口温度である（訓練マニュアル図3-15）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=77） |
| F-ARS-WCL-MON-03 | SPEC 88 APU/ENVIRON THERM（SM OPS 2・4）は、各ループのポンプ出口圧（0〜150 psia）・出口温度・差圧（0〜60 psid）、インターチェンジャ流量（0〜1,400 lbm/hr）と出口温度、キャビン熱交換器入口温度、アキュムレータ量を表示する（訓練マニュアル3.5.1節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=82） |
| F-ARS-WCL-MON-04 | SM SYS SUMM 2（DISP 79、BFSとPASS SM OPS 2・4）は、THERM CNTLの欄にH2O PUMP P（0〜150 psia）を表示する（訓練マニュアル3.5.1節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=80） |
| F-ARS-WCL-MON-05 | パネルO1のH2O PUMP OUT PRESS計器はLOOP 1・LOOP 2の切替でポンプ出口圧を示し、SM DISP 88と同じトランスデューサを使う（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/380） |
| F-ARS-WCL-MON-06 | パネルF7の黄色のH2O LOOP灯は、ループ1のポンプ出口圧（V61P2600A）が19.5 psia未満か79.5 psia超、ループ2（V61P2700A）が45 psia未満か81 psia超で点灯し、常用のループ2は劣化を知らせるため限界を高く、通常止めておくループ1は非運転時の圧力を挟むように設定する（訓練マニュアル3.5.3節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=83） |
| F-ARS-WCL-MON-07 | H2O LOOP灯のハードウェアチャネルは、ループ1が105、ループ2が115である（SCOM 2.2節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/133） |
| F-ARS-WCL-MON-08 | ループ2のポンプ出口圧のSM警報の限界は、スイッチがONまたはGPCでポンプON指令があるときは50〜75 psia、OFFまたはON指令がないときは下限20 psiaで、スイッチ位置によるプレコンディショニングで選ばれる（C&W訓練マニュアル図5-2）。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=82） |
| F-ARS-WCL-MON-09 | SM警報は、ポンプ出口圧50 psia未満・75 psia超（非運転ループは20 psia未満）、ポンプ差圧33 psid未満・46 psid超（非運転ループは5 psid超）で出る（MAL 6.4l）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=307） |
| F-ARS-WCL-MON-10 | アキュムレータ量は20%未満・80%超でSM警報を出し、水量が正常ならアキュムレータ量10%の変化でポンプ出口圧が約1 psia変わる（MAL 6.4n）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=314） |
| F-ARS-WCL-MON-11 | インターチェンジャ出口温度35°F未満、キャビン熱交換器入口温度34°F未満、ポンプ出口温度45°F未満・90°F超でSM警報を出す（MAL 6.4p）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=318） |
| F-ARS-WCL-MON-12 | バイパス制御器を失うと、そのループの計装は流量と一部の温度を除いて失われ、ポンプ出口圧とアキュムレータ量を失うとフレオン/水のループ間漏れを検知できないため、そのループは必要な場合以外使わない（MAL ECLS SSR-4）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=339） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-WCL-07 | ポンプパッケージ | 推進薬・流体 | 受信 | ポンプパッケージのアキュムレータ量、ポンプ出口圧、ポンプ出口温度、ポンプ差圧のセンサで計測する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） | — |
| IF-WCL-08 | インターチェンジャ・バイパス制御 | 推進薬・流体 | 受信 | インターチェンジャ経路の流量センサと出口温度センサで、インターチェンジャ流量と出口温度を計測する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=77） | — |
| IF-WCL-11 | ループ運用管理 | データ・指令 | 送信 | ポンプ出口圧・アキュムレータ量・インターチェンジャ流量・ポンプ出口温度などを、ARS水ループの喪失判定（A18-101）とループ切替の判断に使う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2059） | — |
| IF-WCL-14 | 電力系（EPS） | 電力（28 VDC） | 受信 | パネルO14のH2O BYP LOOP 1 SNSR（MN A）はループ1のインターチェンジャ流量センサとIMUファン差圧センサに、パネルO15のLOOP 2 SNSR（MN B）はループ2のインターチェンジャ流量センサに給電する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=93） | 上位: IF-ARS-36 |
| IF-WCL-16 | DPS・アビオニクス | データ・指令 | 送信 | 各ループのポンプ出口圧を、主C&Wのハードウェアチャネル105・115（パネルF7のH2O LOOP灯）とパネルO1の計器へ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/133）ポンプ出口圧・差圧・出口温度、アキュムレータ量、インターチェンジャ流量と出口温度、キャビン熱交換器入口温度をSMへ送り、SPEC 88に表示する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=82） | 上位: IF-ARS-31 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| WL-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.5節（PDF p74〜83）：H2O CNTLRとH2O BYP LOOP SNSRによるセンサへの給電、水ループの計装（図3-15）、SPEC 88・SM SYS SUMM 2の表示、H2O LOOP灯の限界を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） |
| WL-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p380）と2.2節（p133）：パネルO1の計器、H2O LOOP灯の限界（ループ1は19.5／79.5 psia、ループ2は45／81 psia）とハードウェアチャネル105・115、DISP 88の表示を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/380） |
| WL-04 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.4l〜6.4p（PDF p307〜318）：H2O LOOP灯とSM警報の限界（ポンプ出口圧・差圧、アキュムレータ量、インターチェンジャ流量、各温度）と、計装の故障の切り分けを示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=307） |
| WL-08 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS | H2O LOOP灯の限界を、ループ1は45 psi未満・79.5 psi超、ループ2は45 psi未満・81 psi超とする。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| WL-14 | USA006019 Rev. A（C&W 21002） | Caution and Warning（2008年） | 図5-2（PDF p82）：ループ2のポンプ出口圧の警報限界がスイッチ位置で変わる（ONまたはGPCでON指令ありは50〜75 psia、それ以外は下限20 psia）ことを示し、表7-3（p97）でループ1・2のポンプ出口圧をチャネル105・115に割り当てる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=82） |
| WL-15 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.2.3節（PDF p42）：H2O LOOP灯の限界を両ループとも下限45 psia（上限はループ1が79.5、ループ2が81）とする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=42） |
| WL-18 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.4.2節（PDF p50）：較正曲線の違いから、機上の計器で950 lb/hrに合わせた流量が実際には775 lb/hr（STS-1は900 lb/hr）であったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=50） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：H2O LOOP灯のループ1の下限を、訓練マニュアル（3.5.3節）・SCOM（PDF p380）は19.5 psia、1979年の飛行運用マニュアル（PDF p42）と1988年のNews Reference Manualは45 psiaとする。現行の値は、ループ1を通常止めておく運用に合わせて非運転時の圧力を挟む19.5 psiaと判断した。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=42）

> **注記** SCOMの計器の標示は両ループのポンプ出口圧の通常範囲を55〜65 psia（緑）とし、センサのデータはDSCを通して計器へ、MDMを通してSM SYS SUMM 2とSPEC 88へ送られる（SCOM 4.1節）。BFSで得られる水ループの値はポンプ出口圧だけである（MAL 6.4l、PDF p308）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/788）

> **注記** C&W訓練マニュアルの表7-3も、ハードウェアC&Wのチャネル105・115をループ1・2のポンプ出口圧に割り当てる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97）

> **注記** STS-2では、較正曲線の違いから、機上の計器で950 lb/hrに合わせたインターチェンジャ流量が実際には775 lb/hr（STS-1は900 lb/hr）であり、アビオニクスベイが暖かくなった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=50）

> **注記** 流量センサの直流電源（H2O BYP LOOP 1・2 SNSR、MN A・MN B）はEPS段ではIF-EPS-11（直流の配電）に当たるが、ARS段に水冷却ループの直流電源のIFがないため、IF-WCL-14をIF-ARS-36（上位IF-EPS-12、交流）の下位とした（SSD-FD-ARS-RCRS-001のIF-ARS-33と同じ扱い）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=93）

## 6. 参考文献

1. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.5節 ARS Instrumentation and Displays（PDF p74） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74
2. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 図3-15 H2O coolant loop instrumentation（PDF p77） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=77
3. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.5.1節 図3-20 SPEC 88 APU/ENVIRON THERMAL（PDF p82） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=82
4. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.5.1節 図3-18 SM SYS SUMM 2（PDF p80） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=80
5. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Accumulator・H2O PUMP OUT PRESS・Caution and Warning（PDF p380） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/380
6. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.5.2〜3.5.3節 Dedicated Displays・Caution and Warning（PDF p83） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=83
7. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 H2O LOOP (Y)（PDF p133） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/133
8. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 5.2.2節 図5-2 Preconditioning（PDF p82） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=82
9. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.4l H2O PUMP P（PDF p307） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=307
10. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.4n H2O ACCUM QTY（PDF p314） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=314
11. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.4p H2O ICH OUT T・CAB HX IN T・PUMP OUT T（PDF p318） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=318
12. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS SSR-4 RECONFIG TO ALT H2O LOOP（PDF p339） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=339
13. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-101 ARS Water Loop（PDF p2059） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2059
14. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表3-6 ECLSS controls (ARS)（完）（PDF p93） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=93
15. JSC-12770 Vol. 3 Shuttle Flight Operations Manual – Environmental Control and Life Support Systems（1979年） 2.2.3節 ARS Displays and Controls（H2O LOOP 灯）（PDF p42） — https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=42
16. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 4.1節 Instrument Markings（H2O Pump Out Pressure）（PDF p788） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/788
17. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 表7-3 Hardware C&W（PDF p97） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97
18. JSC-17959 STS-2 Orbiter Mission Report（1982年） 2.4.2節 Air Revitalization Subsystem（PDF p50） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=50

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
