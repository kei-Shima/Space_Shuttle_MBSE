# 還流・ろ過（RTN）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-CAC-RTN-001 |
| 表題 | 還流・ろ過（RTN）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-28 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-CAC-001 |
| 関連図 | SSD-SYS-ARC-001 図16 キャビン空気循環 機能構成 |

## 1. 目的

乗員室の空気をフライトデッキ・ミッドデッキの還流ダクトから吸い込み、途中で電子機器を強制空冷し、デブリトラップと300ミクロンフィルタで粒子を除いてキャビンファンへ送る機能と、フィルタ清掃などの保守を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-CAC-RTN-01 | 循環空気はミッドデッキとフライトデッキの還流ダクトからフィルタへ引き込まれ、糸くずや毛髪などの粒子が除かれる（1979年の飛行運用マニュアル）。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=35） |
| F-CAC-RTN-02 | キャビンファンは電子機器のそばを通して空気を吸い込み、それらの機器を強制空冷する（訓練マニュアル3.2.1節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=58） |
| F-CAC-RTN-03 | 訓練マニュアル表3-1は、キャビン空気で強制空冷する機器（CRT、DEU、IDP、CCTVモニタ、RCU/VSUなど）と、自然対流で冷える機器を分けて示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=87） |
| F-CAC-RTN-04 | 暖まったキャビン空気は300ミクロンフィルタを通って、2台のキャビンファンの1台に吸い込まれる（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） |
| F-CAC-RTN-05 | IFMチェックリストの下部機器ベイ配置図（OV-103）は、キャビンファンの付近にデブリトラップとMD79Gのフィルタ点検口を、還流ダクトとしてフライトデッキからの還流空気とWCSからの還流空気を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=94） |
| F-CAC-RTN-06 | 軌道上のフィルタ清掃は、空気中の汚染を抑え、過熱による機器の損傷を防ぐために行い、キャビンファンのフィルタはMCCの指示があるときだけ清掃する（IFM 4-2）。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=98） |
| F-CAC-RTN-07 | キャビンファンのフィルタ清掃は、ファンを止めてMD79Gとフィルタ点検口を開け、専用工具で3枚のフィルタを清掃し、ファン再起動後にAV BAY/CAB AIR灯の消灯を確かめる。ファンが5分を超えて止まると電子機器が過熱するおそれがある（IFM 4-11）。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=107） |
| F-CAC-RTN-08 | WCS区画の後部隔壁にキャビン空気の吸込口があり、そのスクリーンは外さずに清掃する（IFM 4-4）。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=100） |
| F-CAC-RTN-09 | STS-8では浮遊するデブリが次第に増え、キャビンファンのフィルタを3回清掃して毎回青灰色の物質が捕集されたが、ろ過能力は保たれていた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf#page=14） |
| F-CAC-RTN-10 | RCRS搭載時は、キャビンファンの上流からキャビン空気の一部（ARSの全流量の約6%）をRCRSに通し、除去後の空気をファンのフィルタのすぐ上流に戻す（訓練マニュアル付録C.2.1）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=213） |
| F-CAC-RTN-11 | IOAのCIL評価（1988年）は、還流ダクト（ARS-3604X、NASA臨界度2/2）の流れの制限を、気流中の部品が目詰まりしたときと同じ影響として扱い、指摘を取り下げた。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=139） |
| F-CAC-RTN-12 | 両キャビンファンが故障して乗員室の空気が循環しない場合は、乗員室の煙検知を喪失とみなす（A17-2B）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1917） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-CAC-01 | 乗員室（制御対象） | 推進薬・流体 | 受信 | 乗員室の暖まった空気を、フライトデッキ（電子機器のそばを通る）とミッドデッキの還流ダクトから吸い込む。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=58）WCS区画からも還流空気を取り込む。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=94） | 上位: IF-ARS-09 |
| IF-CAC-02 | キャビンファン・逆止弁 | 推進薬・流体 | 送信 | 300ミクロンフィルタを通った空気を、2台のキャビンファンの入口へ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） | — |
| IF-CAC-03 | 再生式CO2除去装置（RCRS） | 推進薬・流体 | 送信 | RCRS搭載時は、キャビンファンの上流からキャビン空気の一部（ARSの全流量の約6%）をRCRSへ引き出し、除去後の空気をファンのフィルタのすぐ上流に戻す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=213）RCRSの流量は乗員数に応じて72 lb/hrまたは110 lb/hrに設定する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371） | 上位: IF-ARS-02 |
| IF-CAC-04 | 煙検知・消火系（FDS） | 推進薬・流体 | 送信 | フライトデッキの左還流ダクトにA群、右還流ダクトにB群の煙感知器があり、還流空気の煙を検知する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/118）C&Wの訓練マニュアルも、A群をフライトデッキの左還流ダクト、B群を右還流ダクトに置くとする。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=23） | 上位: IF-ARS-14 |
| IF-CAC-05 | DPS・アビオニクス | 熱 | 送信 | キャビンファンは還流空気を乗員室の電子機器のそばに通して吸い込み、強制空冷する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=58）CCTVのRCU・VSUはキャビンファンで強制空冷され、どちらも温度センサを持たない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/142） | 上位: IF-ARS-39 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| CA-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.2.1節（PDF p58）：ファンが電子機器のそばを通して空気を吸い込み強制空冷すると述べ、表3-1（p87）に対象機器を、付録C.2.1（p213）にRCRSがファン上流から吸い込みフィルタ上流へ戻すことを示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=58） |
| CA-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Cabin Air（PDF p370）：キャビン空気が300ミクロンフィルタを通ってファンに吸い込まれると述べ、系統図に吸気ダクト・デブリトラップ・フライトデッキのアビオニクスからの空気を示す。2.3節（p142）はRCU・VSUがキャビンファンで強制空冷されるとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） |
| CA-03 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | キャビン空気が300ミクロンフィルタを通って吸引されると記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html） |
| CA-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-2B（PDF p1917）：両ファンが故障して空気が循環しないと乗員室の煙検知を喪失とみなすと定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1917） |
| CA-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.1a CABIN FAN ∆P（PDF p260）：デブリトラップの閉塞確認と、IFMによるキャビンファンのフィルタ清掃を処置に含める。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=260） |
| CA-07 | NASA-CR-134164（SP02T73） | Space Shuttle Atmospheric Revitalization Subsystem/Active Thermal Control Subsystem Computer Program（Users Manual）（Hamilton Standard、1973年） | ARSキャビンガスループのモデル（2.3節）に、キャビンファン上流のアビオニクス発熱ノードを加えたと記す。（出典: https://ntrs.nasa.gov/citations/19740006419） |
| CA-08 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | ARS-3604X（C.13-37、PDF p139）：還流ダクトの流れの制限を、気流中の部品の目詰まりと同じ影響として扱い、指摘を取り下げたと記す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=139） |
| CA-10 | USA006019 Rev. A（C&W 21002） | Caution and Warning（2008年） | 3.3.2.1節（PDF p23）：A群の煙感知器をキャビンファン出口とフライトデッキの左還流ダクトに、B群を右還流ダクトに置くと示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=23） |
| CA-12 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.2.2節（PDF p35）：循環空気がミッドデッキとフライトデッキの還流ダクトからフィルタへ引き込まれ、糸くずや毛髪が除かれると示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=35） |
| CA-14 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | 4-2・4-11 Filter Cleaning（PDF p98・p107）：MCCの指示によるフィルタ清掃と、MD79Gからのキャビンファンのフィルタ（3枚）の清掃手順を示し、3-8（p94）でデブリトラップと還流ダクトの位置を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=107） |
| CA-15 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | 3.4.6.5節（PDF p225）：煙検知が働くには、各区画でファンとキャビンファンによる空気の循環が必要とする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=225） |
| CA-16 | JSC-19278 | STS-8 National Space Transportation Systems Program Mission Report（1983年） | PDF p14：浮遊デブリが増え、キャビンファンのフィルタを3回清掃して毎回青灰色の物質が捕集されたが、ろ過能力は保たれていたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf#page=14） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 訓練マニュアル図3-12では、還流口にPPO2センサとキャビン温度センサがある。これらは圧力制御系（PCS）とキャビン温湿度制御の計測として扱い、本機能には含めない。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=75）

> **注記** 検証メモ：RCRSの吸込み位置を、訓練マニュアル付録C.2.1はキャビンファンの上流とし、SCOM（PDF p371）はRCRSを通った空気がキャビン熱交換器へ送られると記す。本書は訓練マニュアルに従い、RCRSへのIF（IF-CAC-03）を還流・ろ過から出した。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371）

## 6. 参考文献

1. JSC-12770 Vol. 3 Shuttle Flight Operations Manual – Environmental Control and Life Support Systems（1979年） 2.2.2節 ARS System Description（PDF p35） — https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=35
2. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.2.1節 Cabin Fan・図3-1 Cabin air system（PDF p58） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=58
3. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表3-1 Cabin air-cooled equipment cooling matrix（PDF p87） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=87
4. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Cabin Air（PDF p370） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370
5. JSC-48025 Rev. F PCN-13 In-Flight Maintenance (IFM) Checklist 3-8 Lower Equipment Bay (OV103)（PDF p94） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=94
6. JSC-48025 Rev. F PCN-13 In-Flight Maintenance (IFM) Checklist 4-2 Filter Cleaning（PDF p98） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=98
7. JSC-48025 Rev. F PCN-13 In-Flight Maintenance (IFM) Checklist 4-11 Filter Cleaning（Middeck Floor）（PDF p107） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=107
8. JSC-48025 Rev. F PCN-13 In-Flight Maintenance (IFM) Checklist 4-4 Filter Cleaning（Middeck Floor・WCS）（PDF p100） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=100
9. JSC-19278 STS-8 National Space Transportation Systems Program Mission Report（1983年） Cabin Debris（PDF p14） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf#page=14
10. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.2.1 Carbon Dioxide Removal（PDF p213） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=213
11. NASA-CR-185524 Vol. 2 Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） C.13-37 ARS-3604X Return Air Ducts（PDF p139） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=139
12. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-2 Smoke Detection Loss Definition（PDF p1917） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1917
13. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Regenerable Carbon Dioxide Removal System（PDF p371） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371
14. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Smoke Detection（PDF p118） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/118
15. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 3.3.2.1節 Smoke Detector Locations（PDF p23） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=23
16. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.3節 Video Processing Equipment（PDF p142） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/142
17. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 図3-12 Cabin air system instrumentation（PDF p75） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=75

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-28 | 初版作成（公開資料に基づく検討用） |
