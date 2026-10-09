# インターチェンジャ・バイパス制御（ICH）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ARS-WCL-ICH-001 |
| 表題 | インターチェンジャ・バイパス制御（ICH）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-WCL-001 |
| 関連図 | SSD-SYS-ARC-001 図36 水冷却ループ 機能構成 |

## 1. 目的

3経路の合流水の一部をフレオン/水インターチェンジャへ送ってATCSのフレオン21冷却ループへ排熱し、残りをバイパス弁で迂回させてポンプ出口の混合水温を制御する機能と、流量の設定・熱負荷の不整合・凍結防止の制約を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ARS-WCL-ICH-01 | 3経路の合流水は再び2つに分かれ、一方はフレオン/水インターチェンジャで冷やされ、他方の温水はインターチェンジャと冷側の熱交換器を迂回してポンプパッケージで合流し、バイパス経路の弁が混合後のポンプ出口水温を制御する（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/379） |
| F-ARS-WCL-ICH-02 | 水冷却ループが集めた熱はインターチェンジャでATCSのフレオン冷却ループへ移され、インターチェンジャは有毒なフレオン21を乗員室の外に置くため乗員室外にあり、バイパス弁はインターチェンジャを通る流量を決める可変位置の分流弁である（訓練マニュアル3.3.5節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=68） |
| F-ARS-WCL-ICH-03 | インターチェンジャは対向流のプレートフィン熱交換器で、2系統の水ループと2系統のフレオンループがともに通り、フレオンループにとっては熱源となる（訓練マニュアル4.10節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=104） |
| F-ARS-WCL-ICH-04 | 手動モードでは乗員がH2O LOOP BYPASSスイッチのINCRでバイパス流量を増やし（インターチェンジャ流量は減る）、DECRで減らし、自動モードではバイパス制御器がポンプ出口温度を63°Fに保つよう弁を動かす（訓練マニュアル3.3.5節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=69） |
| F-ARS-WCL-ICH-05 | 自動モードでは、ポンプ出口温度が設定値63.0±2.5°Fを超えるとバイパス弁を閉じる向きに動かしてインターチェンジャへの流れを増やし、下回るとバイパス量を増やして排熱を減らす（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/379） |
| F-ARS-WCL-ICH-06 | バイパス弁は打上げ前にインターチェンジャ流量が約950 lb/hrとなるよう手動で調整され、制御は軌道投入後まで手動モードのままとする（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/380） |
| F-ARS-WCL-ICH-07 | 2ループを長時間同時に運転するとインターチェンジャの伝熱能力を超えて水ループに熱がたまり、インターチェンジャ経路の液冷服・チラー・キャビン・IMUの熱交換器の冷却能力が落ち、インターチェンジャ出口が63°Fに近づくとAv Bay経路の冷却も失われる（訓練マニュアル3.3.6節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=69） |
| F-ARS-WCL-ICH-08 | 上昇・再突入では、高熱負荷時のインターチェンジャでのフレオンと水の熱負荷の不整合でAUTOの制御が適切に働かないため、両ループともバイパス弁をMANとし、キャビンとアビオニクスの温度に最適な950±50 lb/hrに設定する（A18-151A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2061） |
| F-ARS-WCL-ICH-09 | 軌道上は、飛行データで不整合が予測ほど大きくないと分かったため稼働ループのバイパス弁をAUTOとし、STS-44ではループ2がAUTOで正常に動作した（A18-151B）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2062） |
| F-ARS-WCL-ICH-10 | ラジエータ制御器の低温保護は、ラジエータ出口温度が33±0.5°F未満になるとラジエータをバイパスし、停滞した水ループの水がインターチェンジャで凍るのを防ぐ（訓練マニュアル4.13節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=105） |
| F-ARS-WCL-ICH-11 | 両フレオンループの蒸発器出口温度が32°F未満になれば両水ループを運転し、両ループの運転と流量比例弁のICH位置で、インターチェンジャへのフレオン入口温度が6°Fに下がるまで水の凍結を防げる（A18-151C）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2062） |
| F-ARS-WCL-ICH-12 | インターチェンジャ流量が550 lb/hr未満になるとSM警報が出て、MANでバイパスを減らして流量が回復するかを確かめる（MAL 6.4o）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=316） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-WCL-02 | アビオニクス冷却経路 | 推進薬・流体 | 受信 | 3つの並列経路はインターチェンジャの上流で合流し、再び分かれて一方はインターチェンジャへ、他方はバイパス経路へ流れる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/378） | — |
| IF-WCL-03 | 冷側熱交換器 | 推進薬・流体 | 送信 | インターチェンジャで冷えた水を、液冷服熱交換器・飲料水チラー・キャビン熱交換器・IMU熱交換器へ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/379） | — |
| IF-WCL-05 | ポンプパッケージ | 推進薬・流体 | 送信 | バイパス経路の温水はインターチェンジャと冷側の熱交換器を迂回してポンプパッケージで冷側の水と合流し、その量でポンプ出口の混合水温が決まる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/379） | — |
| IF-WCL-06 | ポンプパッケージ | データ・指令 | 受信 | 自動モードでは、バイパス制御器がポンプ出口温度を設定値63.0±2.5°Fと比べてバイパス弁を開閉する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/379） | — |
| IF-WCL-08 | ループ計測・警報 | 推進薬・流体 | 送信 | インターチェンジャ経路の流量センサと出口温度センサで、インターチェンジャ流量と出口温度を計測する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=77） | — |
| IF-WCL-10 | ループ運用管理 | データ・指令 | 受信 | パネルL1のLOOP 1・2 BYPASS MODEスイッチで自動・手動を選び、手動ではMAN INCR/DECRスイッチでバイパス弁の位置を調整する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90） | — |
| IF-WCL-13 | 電力系（EPS） | 電力（28 VDC） | 受信 | バイパス弁を駆動するH2O CNTLRに、制御器1はAC3のA相、制御器2はAC1のA相からパネルL4の遮断器を通して給電する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92）H2O CNTLRはバイパス弁の駆動電力とポンプパッケージのすべての計装の電力を供給する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） | 上位: IF-ARS-36 |
| IF-WCL-20 | 熱交換器・コールドプレート網 | 熱 | 送信 | 水冷却ループが集めた熱を、インターチェンジャでATCSのフレオン冷却ループへ移す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=104）フレオン側は流量比例弁でペイロード熱交換器と並列に分けられてインターチェンジャへ流れ、インターチェンジャは中胴前方下部にある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382） | 上位: IF-TCS-01 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| WL-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.3.5〜3.3.6節（PDF p68〜69）と4.10節（p104）：乗員室外の対向流プレートフィンのインターチェンジャ、バイパス弁の手動・自動（ポンプ出口63°F）、地上で950 lb/hrに設定すること、2ループ運転での伝熱能力の不足を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=69） |
| WL-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p379〜380）：バイパス制御器の自動（ポンプ出口63.0±2.5°F）・手動の制御と、打上げ前の950 lb/hrの設定、2ループの長時間運転の不都合を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/379） |
| WL-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A18-151A〜C（PDF p2061〜2062）：上昇・再突入のMAN・950±50 lb/hr、軌道上のAUTO、蒸発器出口32°F未満での両ループ運転を定め、A18-251D（p2076）で流量比例弁のICH位置が水ループを介した冷却を最大にするとする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2061） |
| WL-04 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.4o・6.4p（PDF p316〜319）：インターチェンジャ流量の低下とポンプ出口温度の異常で、MANでバイパスを調整し、バイパス制御器の故障を判定する手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=316） |
| WL-06 | JSC-16720 | STS-1 ECLSS Consumables and Thermal Analysis | 1ループ運転でインターチェンジャ流量を950 lb/hr/ループとする前提で、ARS水ループの熱プロファイルを示す。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf） |
| WL-07 | JSC-16730 | ECLSS Analysis of STS-1: 9-psia EVA Configuration | STS-1の評価で、水ループのバイパス弁をゼロ流量に設定することの効果の再検討を提言する（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19800020542） |
| WL-08 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS | バイパス制御器が、ポンプ出口温度60.5°Fでバイパスを最大にし、65.5°Fで弁を全閉にすると記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| WL-10 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | AUTOではポンプ出口を63°Fに保つと記す。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| WL-12 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | ARS-170（C.13-6、PDF p108）：バイパス弁の手動オーバーライドの故障がバイパス弁の故障の最悪ケースの解析に含まれるとして、指摘を取り下げたと記す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=108） |
| WL-13 | NSTS-37443 | STS-107 Space Shuttle Mission Report（2003年） | SPACEHABを搭載したため稼働中の水冷却ループ2を手動バイパスとし、921〜1,024 lb/hrの流量でインターチェンジャでの熱移動を最大にしたと記録する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-107%20Space%20Shuttle%20Mission%20Report.pdf） |
| WL-15 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.2.2節（PDF p37）：バイパス制御器がポンプ出口温度60.5°Fでバイパスを最大、65.5°Fで全閉にすると示し、2.2.3節（p42）でインターチェンジャ流量を2ループ運転で約600 lb/hr、1ループで約950 lb/hrに設定するとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37） |
| WL-17 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 5-11 CABIN TEMP CONTROL（PDF p121）：キャビン温度を下げる手順に、ループ2のインターチェンジャ流量を最大にする段階と、ループ1・2の両方を最大流量にする段階を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=121） |
| WL-18 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.4.2節（PDF p50）：打上げ時のインターチェンジャの水流量をSTS-1より約125 lb/hr下げ、再突入に備えて870 lb/hrに再調整したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=50） |
| WL-19 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | PDF p32：水冷却ループ1のバイパス弁の機能点検を軌道上で行い、正常であったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=32） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：バイパス制御器の制御温度を、SCOM（PDF p379）は63.0±2.5°F、1979年の飛行運用マニュアル（PDF p37）と1988年のNews Reference Manualはポンプ出口60.5°Fでバイパス最大・65.5°Fで全閉とし、両者の範囲はほぼ一致する。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37）

> **注記** 検証メモ：訓練マニュアルの表3-6は、BYPASS MODEスイッチの備考を「Auto not used」とするが、同じマニュアルの3.6.2節（PDF p85）・SCOM・運用飛行規則A18-151Bは軌道上で稼働ループをAUTOにするとする。本書は運用飛行規則に従った。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90）

> **注記** 流量比例弁はATCS側の機器で、ICH位置ではインターチェンジャへのフレオン流量が約4,800 lb/hr（P/L位置では約3,000 lb/hr）となり、水ループを介したキャビンとアビオニクスベイの冷却が最大になる（A18-251D）。本書では外部ブロック（熱交換器・コールドプレート網）の側の条件として扱った。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2076）

> **注記** IOAのCIL評価（1988年）は、バイパス弁の手動オーバーライド（ARS-170）の故障がバイパス弁の故障の最悪ケースの解析に含まれるとして、指摘を取り下げた。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=108）

## 6. 参考文献

1. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Water Loop Flow（続き）・Bypass Control（PDF p379） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/379
2. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.3.1〜3.3.5節 Water Pumps〜Water/Freon Interchanger（PDF p68） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=68
3. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 4.10節 Water/Freon Interchanger（PDF p104） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=104
4. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.3.5〜3.3.7節 Interchanger・Interchanger Mismatch・Liquid-Cooled Garment Heat Exchanger（PDF p69） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=69
5. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Accumulator・H2O PUMP OUT PRESS・Caution and Warning（PDF p380） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/380
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-151A ARS Water Loop（PDF p2061） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2061
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-151B〜D ARS Water Loop（続き）（PDF p2062） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2062
8. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 4.13節 Radiators（PDF p105） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=105
9. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.4o H2O ICH FLOW（PDF p316） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=316
10. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Water Loop Pumps・Water Loop Flow（PDF p378） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/378
11. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 図3-15 H2O coolant loop instrumentation（PDF p77） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=77
12. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表3-6 ECLSS controls (ARS)（PDF p90） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90
13. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表3-6 ECLSS controls (ARS)（続き）（PDF p92） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92
14. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.5節 ARS Instrumentation and Displays（PDF p74） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74
15. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Active Thermal Control System（Freon Loops）（PDF p382） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382
16. JSC-12770 Vol. 3 Shuttle Flight Operations Manual – Environmental Control and Life Support Systems（1979年） 2.2.2節 ARS System Description（水冷却ループ）（PDF p37） — https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37
17. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-251D・E Freon Coolant Loops（続き）（PDF p2076） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2076
18. NASA-CR-185524 Vol. 2 Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） C.13-6 ARS-170 Manual Override for Bypass Valve（PDF p108） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=108

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
