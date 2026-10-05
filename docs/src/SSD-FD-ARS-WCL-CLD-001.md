# 冷側熱交換器（CLD）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ARS-WCL-CLD-001 |
| 表題 | 冷側熱交換器（CLD）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-WCL-001 |
| 関連図 | SSD-SYS-ARC-001 図36 水冷却ループ 機能構成 |

## 1. 目的

インターチェンジャで冷えた水を液冷服（LCVG）熱交換器・飲料水チラー・キャビン熱交換器・IMU熱交換器の順に通し、EMUの液冷服の冷却水、飲料水、キャビン空気、IMUの冷却空気から熱を受け取る機能を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ARS-WCL-CLD-01 | インターチェンジャで冷えた水は液冷服熱交換器、ギャレーの水チラー、キャビン熱交換器、IMU熱交換器の順に流れ、バイパス流と合流してポンプパッケージへ戻る（訓練マニュアル3.3節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=67） |
| F-ARS-WCL-CLD-02 | 液冷服（LCVG）熱交換器はエアロック内にあり、EVAの前後に液冷服を冷やす水ループを水冷却ループで冷却する（訓練マニュアル3.3.7節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=69） |
| F-ARS-WCL-CLD-03 | エアロックにはEMUごとに閉じた2系統のLCVG冷却ループが出入りし、SCUにつないだ液冷服を冷やす水は、LCVG熱交換器でオービタの水ループにより冷やされる（訓練マニュアル6.3節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=176） |
| F-ARS-WCL-CLD-04 | 飲料水チラーは、給水タンクからの乗員の飲料水を冷やす（訓練マニュアル3.3.8節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=70） |
| F-ARS-WCL-CLD-05 | ギャレー給水弁を開くと、給水は水冷却ループの飲料水チラーで冷やす経路と、チラーを迂回する経路に分かれる（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/400） |
| F-ARS-WCL-CLD-06 | キャビン熱交換器はキャビン空気が拾った熱をARSの水冷却ループへ移し、空気中の湿分は熱交換器のスラーパーバーに凝縮する（訓練マニュアル3.2.4節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=63） |
| F-ARS-WCL-CLD-07 | IMUファンの出口空気は、フライトデッキのIMU熱交換器で水冷却ループにより冷やされてから乗員室へ戻る（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） |
| F-ARS-WCL-CLD-08 | SODBは水チラーの最低作動温度を35°Fとし、系内の水が凍ると機器が損傷して運用できなくなるとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=217） |
| F-ARS-WCL-CLD-09 | EMUのファン・ポンプで液冷服配管の水をオービタのLCG熱交換器へ循環させれば、配管の圧力と温度を下げる非常手段になる（A15-202）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1870） |
| F-ARS-WCL-CLD-10 | IOAのCIL評価（1988年）は、LCVG熱交換器（ARS-199）についてNASAのより保守的な冗長性の定義と高い臨界度に同意し、指摘を取り下げた。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=114） |
| F-ARS-WCL-CLD-11 | STS-114では、ドッキング中にFESを止めていたためフレオンループの温度が軌道周期で変動し、液冷服の冷却ループの温度に表れた。通常この変動は、WCL 1の6分間の周期運転がLCGの流れと重なったときだけ見られる。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=62） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-THC-03 | 温湿度制御：キャビン熱交換器・凝縮 | 熱 | 受信 | キャビン熱交換器で、キャビン空気が拾った熱をARS水冷却ループへ移す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=63）水冷却ループの冷えた水は、液冷服熱交換器と飲料水チラーに続いてキャビン熱交換器を通る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/379） | 上位: IF-ARS-06 |
| IF-IMU-08 | IMU空冷：IMU熱交換器・ダクト | 熱 | 受信 | 暖まった空気をIMU熱交換器に通し、熱をARSの水冷却ループへ渡す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=66）水冷却ループでは、インターチェンジャで冷えた水がLCG熱交換器・水チラー・キャビン熱交換器を経てIMU熱交換器を流れる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=67） | 上位: IF-ARS-08 |
| IF-WCL-03 | インターチェンジャ・バイパス制御 | 推進薬・流体 | 受信 | インターチェンジャで冷えた水を、液冷服熱交換器・飲料水チラー・キャビン熱交換器・IMU熱交換器へ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/379） | — |
| IF-WCL-04 | ポンプパッケージ | 推進薬・流体 | 送信 | 冷側の熱交換器を出た水は、バイパス流と合流してポンプパッケージへ戻る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=67） | — |
| IF-WCL-21 | エアロック支援系：液冷服冷却ループ | 熱 | 受信 | EMUごとの閉じたLCVG冷却ループの水を、エアロック内のLCVG熱交換器でオービタの水冷却ループにより冷やす。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=176）水冷却ループの冷側経路は、インターチェンジャの直後に液冷服熱交換器を通る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/379） | 上位: IF-ARS-22 |
| IF-WCL-22 | 給水・廃水系：飲料水供給 | 熱 | 送信 | 冷側経路の飲料水チラーで、ギャレーへ送る給水の一方の経路を冷やす。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/400）飲料水チラーは給水タンクからの乗員の飲料水を冷やす。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=70） | 上位: IF-ARS-23 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| WL-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.3節（PDF p67）と3.3.7〜3.3.8節（p69〜70）：インターチェンジャで冷えた水が液冷服熱交換器・ギャレーの水チラー・キャビン熱交換器・IMU熱交換器を通ると述べ、エアロック内のLCVG熱交換器と飲料水チラーを解説する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=67） |
| WL-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p379・p400）：冷えた水が液冷服熱交換器・飲料水チラー・キャビン熱交換器・IMU熱交換器を通ると述べ、ギャレー給水の一方の経路がチラーを通るとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/400） |
| WL-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A15-202（PDF p1870）：EMUのファン・ポンプで液冷服配管の水をオービタのLCG熱交換器へ循環させ、配管の圧力と温度を下げる非常手段を示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1870） |
| WL-04 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | H2O LOOPS SCHEMATIC（PDF p288）と6.4p（p318）：冷側経路の液冷服熱交換器・水チラー・キャビン熱交換器・IMU熱交換器の配置と、キャビン熱交換器入口温度の低下の処置を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=288） |
| WL-08 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS | インターチェンジャを出た水がLCG熱交換器・キャビン熱交換器・IMU熱交換器を通ると記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| WL-11 | NASA-CR-134164（SP02T73） | Space Shuttle Atmospheric Revitalization Subsystem/Active Thermal Control Subsystem Computer Program（Users Manual）（Hamilton Standard、1973年） | ARS水と飲料水の温度を予測するチラーのモデルを加えたと記す。（出典: https://ntrs.nasa.gov/citations/19740006419） |
| WL-12 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | ARS-199（C.13-12、PDF p114）：LCVG熱交換器について、NASAのより保守的な冗長性の定義と高い臨界度にIOAが同意したと記す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=114） |
| WL-16 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | 表3.4.6.1-1（PDF p217）：水チラーの最低作動温度を35°Fとし、系内の水が凍ると機器が損傷するとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=217） |
| WL-20 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | PDF p62：ドッキング中にFESを止めていたため、フレオンループの温度変動が液冷服（LCG）の冷却ループの温度に表れたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=62） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：1988年のNews Reference Manual（エアロック支援の章）は液冷服熱交換器の熱がフレオン21冷却ループへ移されるとするが、訓練マニュアル（3.3節）とSCOM（PDF p379）は水冷却ループの冷側経路に置く。本書は一次資料に従った（親文書SSD-FD-ARS-WCL-001の注記と同じ）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/379）

> **注記** SCOM（PDF p375）も、キャビン空気がキャビン熱交換器で水冷却ループへ熱を移すとする。キャビン熱交換器・IMU熱交換器・Av Bayの熱交換器は空気側の機能の機器でもあり、ARS段ではキャビン温湿度制御・IMU空冷・アビオニクスベイ空冷の説明書がIF-ARS-06・08・07を所有するため、図36ではこれらの熱のIFに新しい番号を作らず、所有側の下位IF（無ければIF-ARS-06・07・08）をそのまま示した。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375）

> **注記** 熱交換器の名称は資料で異なり、訓練マニュアルはgalley water chiller・LCVG HX、SCOMはpotable water chiller・liquid-cooled garment heat exchangerとする。本書では飲料水チラー・液冷服（LCVG）熱交換器とした。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=67）

## 6. 参考文献

1. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.3節 図3-7 H2O coolant loop 1（PDF p67） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=67
2. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.3.5〜3.3.7節 Interchanger・Interchanger Mismatch・Liquid-Cooled Garment Heat Exchanger（PDF p69） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=69
3. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 6.3節 Air and Water Transfer（PDF p176） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=176
4. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.3.8節 Water Chiller（PDF p70） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=70
5. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Supply Water（Galley Supply Valve）（PDF p400） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/400
6. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.2.4節 Cabin Heat Exchanger（PDF p63） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=63
7. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Avionics Bay Cooling・Inertial Measurement Unit Cooling（PDF p376） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376
8. JSC-08934 Vol. 1 Rev. E Shuttle Operational Data Book – Shuttle Systems Performance and Constraints Data（1988年） 表3.4.6.1-1 ARS Temperature Limits（PDF p217） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=217
9. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-202 External Airlock LCG Pressure and Temperature Management Using the EMU（PDF p1870） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1870
10. NASA-CR-185524 Vol. 2 Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） C.13-12 ARS-199 LCVG Heat Exchanger（PDF p114） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=114
11. JSC-63290 STS-114 Space Shuttle Mission Report（2006年） Extravehicular Activity Equipment Evaluation（PDF p62） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=62
12. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Water Loop Flow（続き）・Bypass Control（PDF p379） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/379
13. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.3節 Atmospheric Revitalization System Water（PDF p66） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=66
14. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Cabin Air Humidity Control（PDF p375） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
