# 大気再生系（ARS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ECL-ARS-001 |
| 表題 | 大気再生系（ARS）機能説明書 |
| 版・日付 | Rev. L／2026-10-09 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECLSS-001 |
| 関連図 | SSD-SYS-ARC-001 図3 ECLSS 機能構成 |

## 1. 目的

乗員室空気の循環・浄化・温湿度制御と、水冷却ループによるアビオニクス冷却の機能を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ECL-ARS-01 | ARSは相対湿度を30〜75%に制御し、二酸化炭素と一酸化炭素を無害な濃度に保ち、乗員室の温度と換気を制御し、フライトデッキとミッドデッキの電子機器を冷却する。（出典: https://science.ksc.nasa.gov/shuttle/technology/sts-newsref/sts_eclss.html） |
| F-ECL-ARS-02 | キャビンファンが吸い込んだ空気はフィルタで粒子を除かれ、一部は水酸化リチウムキャニスタでCO2と臭気を除去された後、キャビン熱交換器で水冷却ループにより冷却される。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| F-ECL-ARS-03 | 熱交換器で凝縮した水分は湿度分離器（ファンセパレータ）で吸い出されて廃水タンクへ送られ、その量は最大で毎時約4 lbである。（出典: https://science.ksc.nasa.gov/shuttle/technology/sts-newsref/sts_eclss.html） |
| F-ECL-ARS-04 | キャビン熱交換器を出た空気の一部は一酸化炭素除去装置へ送られ、一酸化炭素が二酸化炭素に変換される。（出典: https://science.ksc.nasa.gov/shuttle/technology/sts-newsref/sts_eclss.html） |
| F-ECL-ARS-05 | 乗員室容積2,300 ft³に対して毎分330 ft³の空気を循環させ、約7分で室内空気が1回入れ替わる。（出典: https://science.ksc.nasa.gov/shuttle/technology/sts-newsref/sts_eclss.html） |
| F-ECL-ARS-06 | 独立した2系統の水冷却ループがあり、ループ1はポンプ2台、ループ2はポンプ1台を持つ。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-ECL-ARS-07 | 水冷却ループは、キャビン熱交換器、3つのアビオニクスベイの熱交換器とコールドプレート、IMU熱交換器、液冷服熱交換器、飲料水チラーの熱を集め、水／フレオン熱交換器でATCSへ渡す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-ECL-ARS-08 | 長期滞在（EDO）飛行では、水酸化リチウムの代わりに再生式CO2除去装置（RCRS）を使う場合がある。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| F-ECL-ARS-09 | RCRSは固体アミンでCO2と水蒸気を吸着して真空へ脱着し、30分周期でベッドを切り替える。（出典: https://saemobilus.sae.org/content/901292） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ECL-05 | 乗員室（制御対象） | 推進薬・流体 | 双方向 | ARSは相対湿度を30〜75%に制御し、二酸化炭素と一酸化炭素を無害な濃度に保ち、乗員室の温度と換気を制御する。（出典: https://science.ksc.nasa.gov/shuttle/technology/sts-newsref/sts_eclss.html） | 下位: IF-ARS-09 下位: IF-ARS-10 下位: IF-ARS-11 |
| IF-ECL-06 | 能動熱制御系（ATCS） | 熱 | 送信 | 水冷却ループは、水とフレオン21冷却ループの熱交換器（インターチェンジャ）で熱をATCSへ渡す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | 下位: IF-TCS-01 |
| IF-ECL-07 | 給水・廃水系（H2O） | 推進薬・流体 | 送信 | 廃水タンクは、ARSの湿度分離器と廃棄物収集系から廃水を受け入れる。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | 下位: IF-ARS-12 |
| IF-ECL-08 | DPS・アビオニクス | 熱 | 送信 | 水冷却ループは、3つのアビオニクスベイの空気／水熱交換器とコールドプレートを通じて電子機器を冷却する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/378） | 上位: IF-ORB-13 下位: IF-ARS-17 下位: IF-ARS-20 下位: IF-ARS-39 |
| IF-ECL-15 | エアロック支援系（ALS） | 熱 | 受信 | 水冷却ループの経路には液冷服（LCG）熱交換器が含まれる。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | 下位: IF-ARS-22 |
| IF-ECL-27 | エアロック支援系（ALS） | 推進薬・流体 | 送信 | EVA以外の期間は、空気循環系がダクトを通じてエアロックへ調整空気を送る。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html） | 下位: IF-ARS-13 |
| IF-ECL-29 | DPS・アビオニクス | データ・指令 | 双方向 | スイッチをGPC位置にすると、GPCが水冷却ループのポンプを指令する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/378）ポンプの出口圧力とポンプ前後の差圧はシステム管理用GPCへ送られ、DPS表示（DISP 88 APU/ENVIRON THERM）に表示される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/380）キャビン熱交換器下流の温度センサのデータはAIR TEMP計器に直接送られ、SM SYS SUMM 1とSPEC 66 ENVIRONMENTにも表示される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/788）キャビン空気のCO2分圧（PPCO2）をSM GPCへ送り、SM OPS 2・4のDISP 66（ENVIRONMENT）に表示する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=81） | 上位: IF-ORB-19 下位: IF-ARS-30 下位: IF-ARS-31 下位: IF-ARS-25 下位: IF-ARS-26 下位: IF-ARS-27 下位: IF-ARS-28 下位: IF-ARS-29 下位: IF-ARS-37 |
| IF-ECL-32 | 誘導・航法・制御（GN&C） | 熱 | 送信 | IMUの強制空冷は3台のIMUすべてに供する3台のファンで行い、同時に使うのは1台である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/477）ベイファンは交流で動くGould製TACANを冷却し、冷却を失ったTACANは5分以内に短絡しうる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1467） | 上位: IF-ORB-34 下位: IF-ARS-19 下位: IF-ARS-41 下位: IF-ARS-42 |
| IF-ECL-33 | 電力系（EPS） | 熱 | 送信 | 前方アビオニクスベイ1〜3のインバータ分配組立は空冷である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/340）前方アビオニクスベイ1〜3の電力制御組立・負荷制御組立・モータ制御組立・インバータはコールドプレートに搭載され、水冷却ループで冷却される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/340） | 上位: IF-ORB-35 下位: IF-ARS-18 下位: IF-ARS-21 |
| IF-ECL-39 | 電力系（EPS） | 電力（28 VDC） | 受信 | キャビンファンは三相115 V AC電動機（495 W）で駆動される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370）ベイファンは三相交流母線から給電され、各ベイの2台のファンは別々の母線につながる（ベイ1のファンA・BはAC1・AC2、ベイ2はAC2・AC3、ベイ3はAC3・AC1）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=261） | 上位: IF-ORB-14 下位: IF-ARS-32 下位: IF-ARS-33 下位: IF-ARS-34 下位: IF-ARS-35 下位: IF-ARS-36 下位: IF-ARS-38 下位: IF-ARS-40 |
| IF-TCS-01 | 熱交換器・コールドプレート網 | 熱 | 送信 | ATCSは、水冷却ループとフレオン21冷却ループの熱交換器（インターチェンジャ）でARSの熱を受け取る。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | 上位: IF-ECL-06 下位: IF-WCL-20 |

## 4. 下位文書

| 文書番号 | 表題 |
|---|---|
| [SSD-FD-ARS-CAC-001](SSD-FD-ARS-CAC-001.md) | キャビン空気循環（CAC）機能説明書 |
| [SSD-FD-ARS-CO2-001](SSD-FD-ARS-CO2-001.md) | CO2・CO除去（LiOH・ATCO）機能説明書 |
| [SSD-FD-ARS-RCRS-001](SSD-FD-ARS-RCRS-001.md) | 再生式CO2除去装置（RCRS）機能説明書 |
| [SSD-FD-ARS-THC-001](SSD-FD-ARS-THC-001.md) | キャビン温湿度制御（THC）機能説明書 |
| [SSD-FD-ARS-AVB-001](SSD-FD-ARS-AVB-001.md) | アビオニクスベイ空冷（AVB）機能説明書 |
| [SSD-FD-ARS-IMU-001](SSD-FD-ARS-IMU-001.md) | IMU空冷（IMU）機能説明書 |
| [SSD-FD-ARS-WCL-001](SSD-FD-ARS-WCL-001.md) | 水冷却ループ（WCL）機能説明書 |

## 5. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| A-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | PCS・ARS・ATCS・給水/廃水の4系統と外部エアロックを解説し、付録CにEDO改修を収録する。訓練専用で、運用データの出典には使わないよう明記されている。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf） |
| A-04 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節「Atmospheric Revitalization System」：キャビン空気の循環、LiOHキャニスタ・RCRSによるCO2除去、キャビンの温度・湿度制御、アビオニクスベイ・IMUの冷却、水冷却ループを示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369） |
| B-01 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | ARS空気系の喪失定義（A17-101〜106：キャビンファン、アビオニクスベイ冷却、RCRS）と管理（A17-151〜158：キャビン温度、RCRS停止基準、LiOHレッドライン）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1929） |
| E-01 | JSC-16720 | STS-1 ECLSS Consumables and Thermal Analysis | STS-1のECLSS・熱解析で、大気ガス、アンモニア、LiOHの収支表を含む。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf） |
| E-02 | JSC-16730 | ECLSS Analysis of STS-1: 9-psia EVA Configuration | 乗員室圧を9 psiaとした場合の冷却能力をSECUREで評価した。（出典: https://ntrs.nasa.gov/citations/19800020542） |
| F-01 | SAE 901290 | Expanded capabilities of the Extended Duration Orbiter | 再生式CO2除去、N2供給、改良WCSなどのEDO向け改修を概説する。（出典: https://ntrs.nasa.gov/citations/19910065909） |
| F-02 | SAE 901292 | The EDO Regenerable CO2 Removal System | RCRSは固体アミンでCO2と水蒸気を吸着して真空へ脱着し、30分周期でベッドを切り替える。（出典: https://saemobilus.sae.org/content/901292） |
| F-03 | SAE 932294 | Development and Flight Status Report on the EDO RCRS | RCRSの開発・認定試験とSTS-50/52/55での飛行実証を報告する。（出典: https://saemobilus.sae.org/content/932294） |
| N-01 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS | 水冷却ループ、ATCS、給水・廃水、WCS、廃水タンクの構成と運用を解説する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| N-03 | NTRS 19750056784 | The shuttle orbiter cabin atmospheric revitalization systems | ARPCSの2ガス方式とARSの構成を示し、1973年以降の設計変更（水冷却ループのサブリメータ撤去など）を列挙する。（出典: https://ntrs.nasa.gov/citations/19750056784） |
| N-16 | NTRS抄録（1974年） | Orbiter ECLSS support of Shuttle payloads（Jaax他） | 大気再生、乗員生命維持、能動熱制御の各機能を、自動衛星・Spacelab・国防総省ミッションのペイロード支援の観点から記述する。（出典: https://www.science.gov/topicpages/s/shuttle+orbiter+payload） |
| N-19 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | PCS・ARS・ATCS・給水/廃水の各系の構成と相互インタフェース（PRSDからのO2供給、N2による水タンク加圧など）を解説する。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |

## 6. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：1988年版マニュアルのECLSS章は、ARSが相対湿度を30〜75%に制御すると記す一方、同じ章の湿度分離器の説明では30〜65%に維持されるとしており、同一資料内で値が一致しない。設計値として使う場合は一次資料（訓練マニュアル・SODB）で確認すること。（出典: https://science.ksc.nasa.gov/shuttle/technology/sts-newsref/sts_eclss.html）

> **注記** 検証メモ：F-ECL-ARS-09（SAE 901292の抄録）はRCRSのベッド切替を30分周期とするが、SCOM（USA007587 Rev. A CPN-1）は13分ごとに吸着と再生を切り替え、完全な1サイクルを26分とする。下位のSSD-FD-ARS-RCRS-001はSCOMの値を用いた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371）

> **注記** 検証メモ：F-ECL-ARS-01の相対湿度30〜75%はSCOMのキャビン空気系統図（PDF p370）と一致するが、SCOMの湿度制御の本文（PDF p376）とECLSS要約（PDF p407）は30〜65%とする。下位のSSD-FD-ARS-THC-001は本文の値を用いた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376）

> **注記** 出典の更新（1988年版・転載版 → SCOM OI-33）：1988年版の資料は、ポンプ入口・出口圧力をCRTに表示するとしていた。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/380）

> **注記** CO2 の除去と温湿度の制御の時間変化のモデルは [SSD-ATM-ORB-001](SSD-ATM-ORB-001.md) に示す（SysML v2 テキスト：SysML/SSD-ATM-ORB-001.sysml）。

> **注記** 下位（第3段・第4段）の機能行の L3 要求（REQ-ARS-nn）とトレースは [SSD-RQL-ECL-001](SSD-RQL-ECL-001.md) に示す（SysML v2 テキスト：SysML/SSD-RQL-ECL-001.sysml）。

> **注記** 大気再生系（ARS）の状態と遷移（図168）は [SSD-BEH-ORB-007](SSD-BEH-ORB-007.md) に示す（SysML v2 テキスト：SysML/SSD-BEH-ORB-007.sysml）。

## 7. 参考文献

1. NSTS 1988 News Reference Manual – Environmental Control and Life Support System（NASA KSC） — https://science.ksc.nasa.gov/shuttle/technology/sts-newsref/sts_eclss.html
2. Space Shuttle Guide – Environmental Systems — https://www.spaceshuttleguide.com/system/environmental%20Controls.htm
3. NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html
4. SAE 901292 The Extended Duration Orbiter Regenerable CO2 Removal System — https://saemobilus.sae.org/content/901292
5. NSTS 1988 News Reference Manual – Airlock Support（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html
6. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p371） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371
7. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p376） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376
8. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p477） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/477
9. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A9-154 AC Load Management During Ascent（続き）（PDF p1467） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1467
10. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p340） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/340
11. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p370） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370
12. JSC-48027 Rev. F Malfunction Procedures（MAL）6.1b AV BAY TEMP（PDF p261） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=261
13. Shuttle Crew Operations Manual 4.1 Instrument Markings（USA007587 Rev. A CPN-1、PDF p788） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/788
14. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.5.1節 図3-19 SPEC 66 ENVIRONMENT（PDF p81） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=81
15. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Water Loop Flow（PDF p378） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/378
16. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p380） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/380

## 8. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-25 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-25 | 熱制御とのIF（IF-TCS-01）を追記 |
| Rev. B | 2026-09-25 | 関連文書にB-01（NSTS-12820 Vol. A 運用飛行規則）を追加 |
| Rev. C | 2026-09-26 | 関連文書にA-04（Shuttle Crew Operations Manual、USA007587 Rev. A CPN-1）を追加 |
| Rev. D | 2026-09-26 | 下位機能説明書（7件）と図12・図13への展開を追加し、IF-ECL-05・07・08・15・27・29に下位IF（IF-ARS）を付記、検証メモ（RCRSの切替周期・相対湿度の範囲）を追加 |
| Rev. E | 2026-09-28 | IF-ECL-08に下位IF（IF-ARS-39）を付記 |
| Rev. F | 2026-09-30 | 上位の IF の補完に伴い IF-ECL-32・IF-ECL-33 を追加（Rev. I） |
| Rev. G | 2026-10-01 | IF-ECL-39 を追加、IF-ECL-29 に ARS の計測の文と下位を付記、IF-ECL-29 に下位 IF-ARS-25・IF-ARS-26・IF-ARS-27・IF-ARS-28・IF-ARS-29・IF-ARS-37 を付記、IF-TCS-01 の上位・下位を所有文書（SSD-FD-TCS-HX-001）にそろえた（Rev. M） |
| Rev. H | 2026-10-01 | 出典を乗員運用マニュアル（SCOM、OI-33）の頁に更新（3文。うち本文を改めた1文に注記）（Rev. Q） |
| Rev. I | 2026-10-08 | IF-ECL-32 に下位 IF-ARS-42 を付記した（Rev. BI） |
| Rev. J | 2026-10-08 | キャビン大気の動的モデル定義書 SSD-ATM-ORB-001 への参照を注記（Rev. BJ） |
| Rev. K | 2026-10-08 | ECLSS 下位要求書 SSD-RQL-ECL-001 への参照を注記（Rev. BK） |
| Rev. L | 2026-10-09 | ECLSS の状態遷移と活動定義書 SSD-BEH-ORB-007 への参照を注記（Rev. BL） |
