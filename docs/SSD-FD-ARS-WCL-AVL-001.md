# アビオニクス冷却経路（AVL）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ARS-WCL-AVL-001 |
| 表題 | アビオニクス冷却経路（AVL）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-WCL-001 |
| 関連図 | SSD-SYS-ARC-001 図36 水冷却ループ 機能構成 |

## 1. 目的

ポンプ下流で3つの並列経路に分かれた水で、前方アビオニクスベイ1・2・3A・3Bの空気/水熱交換器とコールドプレート、フライトデッキのMDMコールドプレートを冷却し、窓・ハッチのシールを熱調整する機能と、各経路の冷却対象・流量の制約を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ARS-WCL-AVL-01 | ポンプ下流で流れは3つの並列経路に分かれ、第1はAv Bay 1の空気/水熱交換器とコールドプレート、第2はAv Bay 2の空気/水熱交換器とコールドプレートと乗員室窓の熱調整、第3はフライトデッキのMDMコールドプレート、Av Bay 3Aの空気/水熱交換器とコールドプレート、Av Bay 3Bのコールドプレートを通り、インターチェンジャの上流で合流する（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/378） |
| F-ARS-WCL-AVL-02 | 各ベイと乗員室の一部の電子機器はコールドプレートに取り付けられ、各ベイの棚のコールドプレートは水冷却ループの流れに対して直並列に接続される（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/377） |
| F-ARS-WCL-AVL-03 | Av Bay 1経路はベイの熱交換器で空気の熱を拾った後25 ft²のコールドプレートを冷やし、Av Bay 2経路は熱交換器と30 ft²のコールドプレートを冷やすとともに、オービタのすべての窓の周りのシールを熱調整する（訓練マニュアル3.3.2〜3.3.3節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=68） |
| F-ARS-WCL-AVL-04 | Av Bay 3経路は一部の水でMDMコールドプレートを冷やし大半はこれを迂回した後、Av Bay 3A（熱交換器と32 ft²のコールドプレート）と、水冷の機器だけを収めた別区画のAv Bay 3B（5 ft²のコールドプレート）に分かれる（訓練マニュアル3.3.4節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=68） |
| F-ARS-WCL-AVL-05 | 訓練マニュアルの表3-2〜3-5は、Av Bay 1・2・3A・3Bの機器を強制空冷・自然対流・水冷に分けて示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=88） |
| F-ARS-WCL-AVL-06 | マスタタイミングユニット（MTU）はミッドデッキのAv Bay 3Bにあり、水冷却ループのコールドプレートで冷却される（SCOM 2.6節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/241） |
| F-ARS-WCL-AVL-07 | 前方ベイ1〜3の電力制御組立・負荷制御組立・モータ制御組立・インバータはコールドプレートに搭載されて水冷却ループで冷却され、インバータ分配組立は空冷である（SCOM 2.8節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/340） |
| F-ARS-WCL-AVL-08 | ドッキング用投光器とフォワードバルクヘッド投光器は水冷却ループで冷やすコールドプレートを使い、OV-104にだけ残り、OV-103・OV-105からは水ループのコールドプレートの問題で撤去された（SCOM 2.15節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/574） |
| F-ARS-WCL-AVL-09 | MIN BYP位置でインターチェンジャ流量を600 lb/hr以上に保てないと、通常の再突入（GPC 5台）でAv Bay 2のコールドプレートを上限130°F未満に保てず、ベイの熱交換器を出る空気はポンプ出口の水より約10°F高いため、ポンプ出口温度を85°F未満に保てないと機器が過熱しうる（A18-101B・C）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2059） |
| F-ARS-WCL-AVL-10 | あるAv Bayの温度が上がる原因には、そのベイを通る水ループ経路の流れの制限もありうる（訓練マニュアル付録B.6）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=207） |
| F-ARS-WCL-AVL-11 | IOAのCIL評価（1988年）は、窓の熱調整系（ARS-194）の故障はシールの喪失につながるとし、オービタの全シールを扱うNASAのFMEAで評価済みであることを確認した。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=112） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-AVB-10 | アビオニクスベイ空冷：ベイ熱交換器 | 熱 | 受信 | 各ベイの空気/水熱交換器で、水冷却ループがファン出口空気から熱を受け取る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=68）熱交換器を出る空気は、水冷却ループのポンプ出口温度より約10°F高い（A18-101C）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2059） | 上位: IF-ARS-07 |
| IF-WCL-01 | ポンプパッケージ | 推進薬・流体 | 受信 | ポンプパッケージを出た水は、Av Bay 1、Av Bay 2と窓、MDMとAv Bay 3A・3Bの3つの並列経路に分かれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/378） | — |
| IF-WCL-02 | インターチェンジャ・バイパス制御 | 推進薬・流体 | 送信 | 3つの並列経路はインターチェンジャの上流で合流し、再び分かれて一方はインターチェンジャへ、他方はバイパス経路へ流れる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/378） | — |
| IF-WCL-17 | DPS・アビオニクス | 熱 | 送信 | 前方アビオニクスベイのFF・PL・LF・LM MDMを、水冷却ループのコールドプレートで冷却する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/236）ミッドデッキのAv Bay 3Bにあるマスタタイミングユニットも、水冷却ループのコールドプレートで冷却する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/241） | 上位: IF-ARS-20 |
| IF-WCL-18 | 電力系（EPS） | 熱 | 送信 | 前方アビオニクスベイ1〜3の電力制御組立・負荷制御組立・モータ制御組立・インバータを、コールドプレートで冷却する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/340） | 上位: IF-ARS-21 |
| IF-WCL-19 | 乗員室（制御対象） | 熱 | 送信 | Av Bay 2経路の水で、オービタのすべての窓の周りのシールを熱調整する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=68）IOAのCIL評価は、ハッチの熱調整系（ARS-191）の故障もシールの故障につながるとする。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=110） | 上位: IF-ARS-24 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| WL-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.3.2〜3.3.4節（PDF p68）と表3-2〜3-5（p88〜89）：Av Bay 1・2・3A・3Bの各経路の熱交換器とコールドプレート（25・30・32・5 ft²）、窓のシールの熱調整、MDMコールドプレートと、ベイごとの水冷の機器を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=68） |
| WL-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p377〜378）：コールドプレートの直並列接続と、ポンプ下流の3つの並列経路（Av Bay 1、Av Bay 2と窓、MDMとAv Bay 3A・3B）を示し、2.6節（p236・p241）と2.8節（p340）でMDM・MTU・配電機器のコールドプレート冷却を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/378） |
| WL-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A18-101B・C（PDF p2059）：インターチェンジャ流量600 lb/hr未満ではAv Bay 2のコールドプレートを130°F未満に保てないとし、A18-1001B（p2149）で交流インバータが水ループで能動的に冷やされるとする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2059） |
| WL-04 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.1b AV BAY TEMP（PDF p261）：ベイの温度が下がらない場合に水ループを切り替え、水ループの劣化を判定する手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=261） |
| WL-08 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS | ポンプ下流の3並列経路のうちAv Bay 2の経路がペイロードベイ投光器のコールドプレートと窓の熱調整も通り、各ベイの棚のコールドプレートが直並列に接続されると記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| WL-11 | NASA-CR-134164（SP02T73） | Space Shuttle Atmospheric Revitalization Subsystem/Active Thermal Control Subsystem Computer Program（Users Manual）（Hamilton Standard、1973年） | 水冷却ループのモデルに窓の冷却回路を加えたと記す。（出典: https://ntrs.nasa.gov/citations/19740006419） |
| WL-12 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | ARS-189・191・194・195（C.13-7〜11、PDF p109〜113）：Av Bay 2のオリフィス、ハッチと窓の熱調整系、ペイロードベイ投光器のコールドプレートの評価を記す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=112） |
| WL-15 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.2.2節（PDF p37）：Av Bay 1経路がハッチも熱調整し、MDMコールドプレートを迂回する水が並列のオリフィスを通ると示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37） |
| WL-16 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | 表3.4.6.1-1（PDF p217）：アビオニクス熱交換器の作動温度の範囲を35〜130°Fとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=217） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 1979年の飛行運用マニュアルは、Av Bay 1経路がハッチも熱調整し、MDMコールドプレートを迂回する水は並列のオリフィスを通るとする。IOAのCIL評価もハッチの熱調整系（ARS-191・192）とAv Bay 2のオリフィス（ARS-189）を扱っている。図36ではハッチと窓のシールの熱調整を、乗員室への1つのIF（IF-WCL-19）で示した。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37）

> **注記** 1988年のNews Reference Manualは、Av Bay 2経路にペイロードベイ投光器のコールドプレートを含め、訓練マニュアルの水ループ計装図（図3-15）にもPL Bay Floodsが示される。投光器は照明系の機器で本パッケージに説明書がないため、外部ブロックとIFは設けなかった。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html）

> **注記** IOAは、ペイロードベイ投光器のコールドプレート（ARS-195）の故障を、NASAのFMEAがフライトデッキのMDMのコールドプレートの故障と一括して最悪の臨界度で扱っていることを確認した。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=113）

## 6. 参考文献

1. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Water Loop Pumps・Water Loop Flow（PDF p378） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/378
2. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Water Coolant Loop System（PDF p377） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/377
3. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.3.1〜3.3.5節 Water Pumps〜Water/Freon Interchanger（PDF p68） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=68
4. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表3-2・3-3 Av Bay 1・2 equipment-cooling matrix（PDF p88） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=88
5. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.6節 Master Timing Unit（PDF p241） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/241
6. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.8節 Component Cooling（PDF p340） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/340
7. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.15節 Exterior Lighting（PDF p574） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/574
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-101 ARS Water Loop（PDF p2059） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2059
9. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録B.6 Av Bay Failure Recognition（続き）（PDF p207） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=207
10. NASA-CR-185524 Vol. 2 Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） C.13-10 ARS-194 Window Thermal Conditioning System（PDF p112） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=112
11. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.6節 Multiplexers/Demultiplexers（PDF p236） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/236
12. NASA-CR-185524 Vol. 2 Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） C.13-8 ARS-191 Hatch, Thermal Conditioning System（PDF p110） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=110
13. JSC-12770 Vol. 3 Shuttle Flight Operations Manual – Environmental Control and Life Support Systems（1979年） 2.2.2節 ARS System Description（水冷却ループ）（PDF p37） — https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37
14. NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html
15. NASA-CR-185524 Vol. 2 Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） C.13-11 ARS-195 Payload Bay Flood Light Cold Plate（PDF p113） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=113

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
