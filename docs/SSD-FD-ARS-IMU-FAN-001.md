# IMUファン・逆止弁（FAN）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ARS-IMU-FAN-001 |
| 表題 | IMUファン・逆止弁（FAN）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-IMU-001 |
| 関連図 | SSD-SYS-ARC-001 図34 IMU空冷 機能構成 |

## 1. 目的

アビオニクスベイ1にある3台のIMUファン（A・B・C、通常1台）と各ファン出口の逆止弁によってIMUの冷却空気を送る機能と、電源・スイッチの構成、2相での起動・運転、逆止弁の故障の影響を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ARS-IMU-FAN-01 | IMUファンは3台あって通常は1台を運転し、各ファンは三相115 V ACの50 Wの電動機で駆動されて公称144 lb/hrを流し、2相の交流でも起動・運転できる（訓練マニュアル3.2.8節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=66） |
| F-ARS-IMU-FAN-02 | ファンはアビオニクスベイ1にあり、1台で3台のIMUすべてを冷却できるため通常は1台で足りる（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） |
| F-ARS-IMU-FAN-03 | 3台のファンは並列で、どの1台でも必要な流量が得られる（1979年の飛行運用マニュアル）。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37） |
| F-ARS-IMU-FAN-04 | SCOMのGNCの節は、強制空冷は3台のIMUに共通の3台のファンから成り、同時に使うのは1台で、3台は冗長のために設けるとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/477） |
| F-ARS-IMU-FAN-05 | 各ファン出口の逆止弁が非運転ファンを通る逆流を防ぎ、フラッパ式の逆止弁はファンが弁の前後に1 psiの差圧を生じると開く（訓練マニュアル3.2.8節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=66） |
| F-ARS-IMU-FAN-06 | パネルL1にIMU FAN A・B・Cの3個のスイッチ（ON–OFF）があってファンに電力を加え、同時に使うのは1個である（訓練マニュアル表3-6）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90） |
| F-ARS-IMU-FAN-07 | ファンA・B・Cは、パネルL4の各3個の遮断器からそれぞれAC1・AC2・AC3の三相電力をL1のスイッチを通して受ける（訓練マニュアル表3-6）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=91） |
| F-ARS-IMU-FAN-08 | IMUワークブックは、各IMUファンが別々の交流電源から給電され、スイッチはパネルL1、遮断器はパネルL4にあるとする。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/IMU%20Workbook.pdf#page=22） |
| F-ARS-IMU-FAN-09 | 運用飛行規則A17-154Aは、キャビンファンと改修型のアビオニクスファンを除く機器は2相で再起動できるとする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1948） |
| F-ARS-IMU-FAN-10 | IFMチェックリストのアビオニクスベイ1の配置図には、IMUファンのダクト（IMU FAN DUCTS）が示されている（IFM 3-4）。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=90） |
| F-ARS-IMU-FAN-11 | IOAのCIL評価（1988年）は、非運転ファン2台の逆止弁が故障するとIMU熱交換器を完全に迂回する空気の循環ループができ、2つの故障で乗員・機体の喪失に至るとして、NASAの臨界度に同意し指摘を取り下げた（ARS-277、逆止弁3個）。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=120） |
| F-ARS-IMU-FAN-12 | 消音器の追加でIMUファンの2,000 Hz付近の騒音は大きく下がり、その後4個の消音器は4室を持つ一体型の消音器に改められた（Goodman、NOISE-CON 2010）。（出典: https://ntrs.nasa.gov/api/citations/20090043801/downloads/20090043801.pdf#page=6） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-IMU-03 | 吸込み・IMU通風 | 推進薬・流体 | 受信 | IMUを通った空気を、3本のIMU出口ホースとIMUマニホールドを通してIMUファンの入口へ送る。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=175）ファンのすぐ上流には、ファン保護用の600ミクロンフィルタがある。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37） | — |
| IF-IMU-04 | IMU熱交換器・ダクト | 推進薬・流体 | 送信 | 運転中のファンは、出口の逆止弁を通して公称144 lb/hrの空気をIMU熱交換器へ送り、逆止弁は非運転ファンを通る逆流を防ぐ。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=66）ファンの出口空気は、フライトデッキにあるIMU熱交換器を流れる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） | — |
| IF-IMU-05 | ファン監視・表示 | データ・指令 | 送信 | IMU FAN信号調整器が給電する回転数センサでファンが正常に回っていることを確かめ、ΔPセンサでファンの差圧を測る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） | — |
| IF-IMU-06 | 電力系（EPS） | 電力（28 VDC） | 受信 | IMUファンA・B・CにはそれぞれAC1・AC2・AC3の三相115 V AC電力を、パネルL4の各3個の遮断器とパネルL1のIMU FANスイッチを通して供給する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=91）各IMUファンは別々の交流電源から給電される。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/IMU%20Workbook.pdf#page=22） | 上位: IF-ARS-35 |
| IF-IMU-07 | ファン運用管理 | データ・指令 | 受信 | 運用規則と故障処置手順に従い、パネルL1のIMU FAN A・B・Cスイッチで運転するファンを選び、入切する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90）ONの位置で対応するファンが回り、OFFの位置で止まる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| IM-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.2.8節（PDF p66）と表3-6（p90〜91）：3台のファン（通常1台、三相115 V AC・50 W、公称144 lb/hr、2相で起動・運転可）と出口のフラッパ式逆止弁（1 psiで開く）を解説し、L1のIMU FANスイッチとL4の遮断器（A＝AC1、B＝AC2、C＝AC3）を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=66） |
| IM-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p376）：ファンはAv Bay 1にあってL1のIMU FANスイッチで入切し、1台で3台のIMUを冷却でき、各ファン出口の逆止弁が非運転ファンの逆流を防ぐと示し、2.13節（p477）で3台を冗長のために設けるとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） |
| IM-03 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | L1のIMU FAN A・B・Cスイッチで各ファンを入切し、通常は1台で足り、各ファン出口の逆止弁が非運転ファンの逆流を防ぐと記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html） |
| IM-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-154A（PDF p1948〜1949）：キャビンファン以外の回転機器は1相を失えば代替機に切り替え、2相で再起動できると定め、根拠資料にIMUファンの仕様（SV 6416）を挙げる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1948） |
| IM-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.1d（PDF p264〜266）：公称構成（L4の遮断器AC1・AC2・AC3 IMU FAN A・B・C、ファンBを運転）と、逆止弁の開固着やファンのON離散信号の故障の切り分けを示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=264） |
| IM-07 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | 訓練マニュアルの抜粋として、IMUファン（三相115 V AC・50 W）が公称144 lb/hrを流し、2相で起動・運転でき、出口の逆止弁が逆流を防ぐと記す。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| IM-08 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | ARS-277（C.13-18、PDF p120）：非運転ファン2台の逆止弁が故障するとIMU熱交換器を迂回する循環ループができるとして、NASAの臨界度に同意し指摘を取り下げたと記す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=120） |
| IM-09 | USA004488 Rev. B（IMU 21002） | Inertial Measurement Unit Workbook（2006年） | 2.10節（PDF p22）：3台のファンが3台のIMUすべてに供し、1台で十分な流量が得られ、各ファンは別々の交流電源から給電され、スイッチはL1、遮断器はL4にあると述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/IMU%20Workbook.pdf#page=22） |
| IM-10 | NTRS 20090043801（JSC-CN-19306） | Noise Control in Space Shuttle Orbiter（Goodman、NOISE-CON 2010） | 本文PDF p6：消音器の追加でIMUファンの2,000 Hz付近の騒音が下がり、後に4個の消音器を4室の一体型消音器に改めたと記す。（出典: https://ntrs.nasa.gov/api/citations/20090043801/downloads/20090043801.pdf#page=6） |
| IM-12 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.2.2節（PDF p37）と2.2.3節（p40）：3台のIMUファンは並列で、どの1台でも必要な流量が得られ、L1のIMU FANスイッチで1台ずつ使うと示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=40） |
| IM-13 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | 3-4 AV BAY 1（PDF p90）：アビオニクスベイ1の配置図にIMUファンのダクトを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=90） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 逆止弁が開く差圧（1 psi）は訓練マニュアル（3.2.8節）だけに記され、SCOM（PDF p376）と1979年の飛行運用マニュアルには値がない。キャビンファンの逆止弁では資料間で値が異なる（SSD-FD-CAC-FAN-001の検証メモ）ため、この値も確認が必要である。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=66）

> **注記** ファンの仕様書（Hamilton Standard SVHS 6416）は運用飛行規則A17-104の根拠資料に挙げられているが、公開資料では確認できなかった。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1933）

## 6. 参考文献

1. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.2.8節 Inertial Measurement Unit Fans（PDF p66） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=66
2. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Inertial Measurement Unit (IMU) Cooling（PDF p376） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376
3. JSC-12770 Vol. 3 Shuttle Flight Operations Manual – Environmental Control and Life Support Systems（1979年） 2.2.2節 ARS System Description（IMU冷却）（PDF p37） — https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37
4. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.13節 IMU Thermal Control（PDF p477） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/477
5. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表3-6 ECLSS controls (ARS)（PDF p90） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90
6. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表3-6 ECLSS controls (ARS)（続き）（PDF p91） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=91
7. USA004488 Rev. B（IMU 21002） Inertial Measurement Unit Workbook（訓練ワークブック、2006年） 2.10節 Thermal Controls（PDF p22） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/IMU%20Workbook.pdf#page=22
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-154 Management of Degraded Rotating Equipment（PDF p1948） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1948
9. JSC-48025 Rev. F PCN-13 In-Flight Maintenance (IFM) Checklist 3-4 Av Bay 1（PDF p90） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=90
10. NASA-CR-185524 Vol. 2 Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） C.13-18 ARS-277 Check Valve (3)（PDF p120） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=120
11. NTRS 20090043801（JSC-CN-19306） Noise Control in Space Shuttle Orbiter（Goodman、NOISE-CON 2010） B. Path Control（続き）（PDF p6） — https://ntrs.nasa.gov/api/citations/20090043801/downloads/20090043801.pdf#page=6
12. JSC-48025 Rev. F PCN-13 In-Flight Maintenance (IFM) Checklist I-3 IMU Contingency Cooling（続き）（PDF p175） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=175
13. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.5節 ARS Instrumentation and Displays（PDF p74） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74
14. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-104 IMU Fan（PDF p1933） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1933

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
