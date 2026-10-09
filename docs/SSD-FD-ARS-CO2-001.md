# CO2・CO除去（LiOH・ATCO）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ARS-CO2-001 |
| 表題 | CO2・CO除去（LiOH・ATCO）機能説明書 |
| 版・日付 | Rev. C／2026-10-09 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-ARS-001 |
| 関連図 | SSD-SYS-ARC-001 図12 ARS 機能構成 |

## 1. 目的

水酸化リチウム（LiOH）キャニスタによるCO2と臭気の除去、常温触媒酸化器（ATCO）によるCOの除去の機能と、CO2分圧（PPCO2）の計測、キャニスタの交換・予備管理の規則を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ARS-CO2-01 | キャビンファンを出た約1,400 lb/hrの空気のうち、ダクト内のオリフィスで約120 lb/hrずつを2個のLiOHキャニスタへ分流し、LiOHがCO2を、活性炭が臭気と微量汚染物質を除去するもので、LiOHキャニスタはオービタのCO2制御の主手段である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） |
| F-ARS-CO2-02 | キャニスタは所定のスケジュールで通常1日1〜2回（大人数の乗員ではより頻繁に）、ミッドデッキ床のアクセスドアから交換する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） |
| F-ARS-CO2-03 | 各キャニスタの定格は48 man-hoursで、予備は最大30個をキャビン熱交換器と水タンクの間の床下ロッカーに収納する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） |
| F-ARS-CO2-04 | キャニスタ交換中はキャビンファンを止める（ファンが巻き上げたLiOH粉塵で目や鼻の刺激が生じた例があり、湿度分離器故障の一因の可能性もある）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） |
| F-ARS-CO2-05 | キャビン熱交換器を出た再生・調整済み空気の一部はCO除去装置ATCO（常温触媒酸化器）へ送られ、COがCO2に変換される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） |
| F-ARS-CO2-06 | 火災の鎮火後はWCSのチャコールフィルタ、ATCO、LiOHキャニスタで燃焼生成物をキャビン大気から除去する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/891） |
| F-ARS-CO2-07 | LiOHキャニスタは通常、就寝前と起床後、またはPPCO2が7.6（6.1）mmHg以上と確認されたときに交換する（A17-151C）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1938） |
| F-ARS-CO2-08 | 未使用のLiOHキャニスタを最低2日分予備に保持してPPCO2 7.6 mmHgを上限として守り、目安として7.6 mmHgで2日分に要する個数は乗員数に等しい（1個で約50 man-hours）（A17-157）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1952） |
| F-ARS-CO2-09 | ARSがPPCO2を15 mmHg未満に保てない場合は乗員がQDMを着用して次のPLSで飛行を終了し、7.6〜15 mmHgでは全作業計画をFCRの航空医官が評価する（A13-52）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1775） |
| F-ARS-CO2-10 | CO2・湿度制御の代替手段は、エアロック減圧弁によるキャビンのパージ（または部分排気）である（A17-1001 注[10]）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2034） |
| F-ARS-CO2-11 | キャビン空気のCO2分圧（PPCO2）は、LiOHキャニスタへの分岐の手前のダクトに接続したトランスデューサで測り、SM OPS 2・4のSM表示DISP 66（ENVIRONMENT）に表示する（訓練マニュアル3.5節・図3-12）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=81） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ARS-01 | キャビン空気循環 | 推進薬・流体 | 受信 | キャビンファン出口の空気の一部を、ダクト内のオリフィスで約120 lb/hrずつ2個のLiOHキャニスタへ分流し、通過後の空気は主流に戻ってキャビン熱交換器へ向かう。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） | 下位: IF-CO2-01 |
| IF-ARS-05 | キャビン温湿度制御 | 推進薬・流体 | 受信 | キャビン熱交換器を出た再生・調整済み空気の一部をATCOへ送り、COをCO2に変換する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376）ATCOを通った空気は調整済み空気とともに乗員室へ戻り、生じたCO2は循環してLiOHキャニスタで除去される。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf） | 下位: IF-CO2-05 |
| IF-ARS-37 | DPS・アビオニクス | データ・指令 | 送信 | キャビン空気のCO2分圧（PPCO2）をSM GPCへ送り、SM OPS 2・4のDISP 66（ENVIRONMENT）に表示する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=81） | 上位: IF-ECL-29 下位: IF-CO2-06 |
| IF-ARS-38 | 電力系（EPS） | 電力（28 VDC） | 受信 | AC1 φBの交流電力をCABIN AIR信号調整器に供給する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92）この信号調整器がPPCO2トランスデューサに給電する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） | 上位: IF-ECL-39 下位: IF-CO2-07 |

## 4. 下位文書

| 文書番号 | 表題 |
|---|---|
| [SSD-FD-CO2-ABS-001](SSD-FD-CO2-ABS-001.md) | 吸収器装着部（ABS）機能説明書 |
| [SSD-FD-CO2-CAN-001](SSD-FD-CO2-CAN-001.md) | 交換式キャニスタ（CAN）機能説明書 |
| [SSD-FD-CO2-ATCO-001](SSD-FD-CO2-ATCO-001.md) | 常温触媒酸化器（ATCO）機能説明書 |
| [SSD-FD-CO2-MON-001](SSD-FD-CO2-MON-001.md) | CO2・CO監視（MON）機能説明書 |
| [SSD-FD-CO2-STW-001](SSD-FD-CO2-STW-001.md) | 予備キャニスタ収納・交換管理（STW）機能説明書 |

## 5. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| AR-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.2.2節・3.2.6節：オリフィスで各約120 lb/hrを流す2個のLiOHキャニスタ（活性炭で臭気を除去、予備最大30個、交換中はキャビンファン停止）と、COをCO2に変えるATCO（触媒は白金2%・炭素担体）を解説する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf） |
| AR-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Lithium Hydroxide Canisters（PDF p370）とATCOの段落（p376）：オリフィスで各約120 lb/hrを2個のLiOHキャニスタへ流してCO2を、活性炭で臭気・微量汚染物を除き（1個48 man-hours、予備最大30個）、熱交換器出口空気の一部をATCOへ送ってCOをCO2に変えると示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） |
| AR-03 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | 2個のLiOHキャニスタでCO2を、活性炭で臭気・微量汚染物を除き、キャニスタを12時間ごと（乗員7名では11時間ごと）に交互に交換し、熱交換器出口空気の一部をCO除去装置へ送ると記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html） |
| AR-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-151 Cabin Atmosphere Control（PDF p1938）：LiOHキャニスタは就寝前後またはPPCO2が7.6（6.1）mmHg以上で交換すると定め、A17-157（p1952）で未使用LiOH 2日分の予備とPPCO2 7.6 mmHgの保護、A17-158（p1953）で使用済みキャニスタの再使用を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1938） |
| AR-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.8b PPCO2（PDF p333）：CO2分圧が7.6 mmHgを超えた場合の処置を、RCRS搭載の有無とLiOH交換予定で分岐して示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf） |
| AR-06 | NASA CR-1981 | Space Shuttle EC/LSS（Hamilton Standard、1972年） | 選定系統（表1、p5）でCO2制御にLiOHベッド、臭気・微量汚染物に活性炭ベッドを採用し、日常の機上整備をLiOHカートリッジの交換だけにしたと述べる。（出典: https://ntrs.nasa.gov/api/citations/19720017476/downloads/19720017476.pdf） |
| AR-08 | JSC-16720 | STS-1 ECLSS Consumables and Thermal Analysis | STS-1のLiOH収支（搭載6個、うち不測時予備1個）と、打上げ後5.5時間での装着と交換時刻の前提を示す。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf） |
| AR-10 | SAE 901290 | Expanded capabilities of the Extended Duration Orbiter | EDOの改修として、搭載するLiOHを減らす方法を挙げる（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19910065909） |
| AR-15 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report | STS-54でARSは問題なく作動し、CO2分圧を3.50 mmHg未満に保ったと記録する。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf） |
| AR-17 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | オリフィスで各約120 lb/hrを2個のLiOHキャニスタへ流してCO2と臭気を除き、ATCO（白金2%・炭素担体）でCOを除くと記す。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| AR-22 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | LiOHキャニスタ（ARS-301A、C.13-20）について、NASAのより保守的な機能・冗長の定義による高い臨界度にIOAが同意したと記す。（出典: https://ntrs.nasa.gov/citations/19900001639） |
| AR-27 | SAE 2003-01-2491 | The Lithium Hydroxide Management Plan for Removing Carbon Dioxide from the Space Shuttle while Docked to the International Space Station（Williams他、2003年） | 係留中のシャトルとISSの大気をISSのVozdukhとCDRAだけで制御できることをUF-1/STS-108の試験で示し、シャトル用LiOHキャニスタの打上げ量を減らす管理計画を述べる（抄録で確認）。（出典: https://saemobilus.sae.org/papers/lithium-hydroxide-management-plan-removing-carbon-dioxide-space-shuttle-docked-international-space-station-2003-01-2491） |
| AR-28 | NSTS-37443 | STS-107 Space Shuttle Mission Report（2003年） | 軌道上のCO2分圧は平均3.0 mmHg、最高6.47 mmHgだったと記録する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-107%20Space%20Shuttle%20Mission%20Report.pdf） |
| AR-29 | NASA/TM-2005-214007 | Designing For Human Presence in Space: An Introduction to ECLSS – Appendix I, Update（Wieland、2005年） | 表1（p5〜6）のオービタ欄で、2個のLiOHキャニスタに同時に空気を流し乗員数に応じて交換すること、微量汚染物を活性炭で除きATCOでCOをCO2に変えることを記す。（出典: https://ntrs.nasa.gov/citations/20060005209） |
| AR-33 | NTRS 20100021976（JSC-CN-20224） | Overview of Carbon Dioxide Control Issues During International Space Station/Space Shuttle Joint Docked Operations（Matty、2010年） | ISS係留中は両機が大気を共有するため、シャトルのLiOHキャニスタ（未使用約7 lb、使用後約9 lb）の使用を主に就寝前後に限ってISSのCDRA・VozdukhにCO2除去を分担させ、ISSに備蓄したキャニスタで搭載数の過不足を調整すると述べる。（出典: https://ntrs.nasa.gov/citations/20100021976） |
| AR-34 | NTRS 20100025551（JSC-CN-20953） | Advanced Catalysts for the Ambient Temperature Oxidation of Carbon Monoxide and Formaldehyde（Nalette他、2010年） | NASAが1970年代にシャトルの常温CO酸化触媒として白金2%・炭素担体を選んだと述べ、シャトルの設計空間速度での新しい触媒の試験から現行のATCO反応器には大きな余裕があると結論する。（出典: https://ntrs.nasa.gov/citations/20100025551） |
| AR-36 | NTRS 20110003653（JSC-CN-22727） | Manned Mission Planning Considerations when Using a Non-Regenerable CO2 Removal System（DeSimpelaere、2011年） | シャトルの主なCO2除去手段であるLiOHキャニスタ方式について、再生式でなく選ばれた理由と、気流、LiOH粉塵、質量と収納、交換時期、物流管理などの運用上の教訓をまとめる（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/20110003653） |

## 6. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：LiOHキャニスタ1個の容量を、SCOMは48 man-hours（PDF p370、経験則はPDF p419）とし、運用飛行規則A17-157は約50 man-hoursとする。本書はそれぞれの値を出典どおりに記す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1952）

> **注記** 図12ではCO2・CO除去の出口を独立のIFとして描いていない。LiOHキャニスタはキャビンファンとキャビン熱交換器の間のダクトにあり（SCOMのキャビン空気系統図、PDF p370）、通過した空気は主流に戻る。ATCOで生じたCO2は乗員室の空気とともに循環してLiOHキャニスタで除去される（訓練マニュアル、関連文書AR-01の3.2.6節）。IF-ARS-01・IF-ARS-05の内容に通過後の流れを記した。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370）

> **注記** 検証メモ：F-ARS-CO2-05はATCOをキャビン熱交換器出口の常設装置とする（SCOM PDF p376、訓練マニュアル3.2.6節）が、運用飛行規則A13-152C・A15-203は「ATCOキャニスタ」をLiOHキャニスタのスロットに装着すると定める。下位文書では、常設のATCOをSSD-FD-CO2-ATCO-001、ATCOキャニスタをSSD-FD-CO2-CAN-001（派生型）で扱った。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1798）

> **注記** Rev. AでCO2分圧の計測（PPCO2トランスデューサ）を本機能に割り当て、DPSへのデータIF（IF-ARS-37）とEPSからの電源IF（IF-ARS-38）を追加した（図12では図示省略）。トランスデューサはLiOHキャニスタへの分岐の手前のダクトに接続されている（訓練マニュアル図3-12）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=75）

> **注記** LiOH キャニスタの交換の活動（図173）は [SSD-BEH-ORB-007](SSD-BEH-ORB-007.md) に示す（SysML v2 テキスト：SysML/SSD-BEH-ORB-007.sysml）。

## 7. 参考文献

1. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p370） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370
2. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p376） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376
3. Shuttle Crew Operations Manual 6.8 Systems Failures（USA007587 Rev. A CPN-1、PDF p891） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/891
4. Space Shuttle Operational Flight Rules Vol. A – All Flights A17-151 Cabin Atmosphere Control（NSTS-12820 PCN-1、PDF p1938） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1938
5. Space Shuttle Operational Flight Rules Vol. A – All Flights A17-156 RCRS Manual Shutdown Criteria・A17-157 LiOH Redline Determination（NSTS-12820 PCN-1、PDF p1952） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1952
6. Space Shuttle Operational Flight Rules Vol. A – All Flights A13-52 PPCO2 Constraint（NSTS-12820 PCN-1、PDF p1775） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1775
7. Space Shuttle Operational Flight Rules Vol. A – All Flights A17-1001 Life Support Go/No-Go Criteria（NSTS-12820 PCN-1、PDF p2034） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2034
8. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf
9. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.5.1節 図3-19 SPEC 66 ENVIRONMENT（PDF p81） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=81
10. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表3-6 ECLSS controls (ARS)（PDF p92） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92
11. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.5節 ARS Instrumentation and Displays（PDF p74） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74
12. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A13-152 Cabin Atmosphere Contamination（PDF p1798） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1798
13. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 図3-12 Cabin air system instrumentation（PDF p75） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=75

## 8. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-26 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-28 | 下位機能説明書（5件）と図14・図15への展開を追加し、PPCO2計測の機能（F-ARS-CO2-11）とIF-ARS-37・38を追加、IF-ARS-01・05・37・38に下位IF（IF-CO2）を付記、検証メモ（ATCOの構成）と注記（PPCO2計測の割当て）を追加 |
| Rev. B | 2026-10-01 | IF-ARS-38 の上位を IF-ECL-39 に付け替え、IF-ARS-37 の上位を IF-ECL-29 に付け替え（Rev. M） |
| Rev. C | 2026-10-09 | ECLSS の状態遷移と活動定義書 SSD-BEH-ORB-007 への参照を注記（Rev. BL） |
