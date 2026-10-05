# 能動熱制御系（ATCS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ECL-ATCS-001 |
| 表題 | 能動熱制御系（ATCS）機能説明書 |
| 版・日付 | Rev. G／2026-10-03 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECLSS-001 |
| 関連図 | SSD-SYS-ARC-001 図3 ECLSS 機能構成 |

## 1. 目的

機体の排熱を担う能動熱制御系の機能と、飛行フェーズごとのヒートシンクの使い分けを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ECL-ATCS-01 | ATCSは、ARSの熱を水／フレオン熱交換器で、燃料電池の熱を各燃料電池熱交換器で受け取り、ECLSS酸素供給ラインのPRSD酸素と油圧作動油を加温する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-ECL-ATCS-02 | 同一構成の2系統のフレオン21冷却ループ、アビオニクス用コールドプレート網、液液熱交換器、放熱器・フラッシュエバポレータ（FES）・アンモニアボイラの3種のヒートシンクから成る。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-ECL-ATCS-03 | 地上ではGSE熱交換器で排熱し、打上げ後約125秒でFESを起動し、軌道上でペイロードベイドアを開くまでFESで排熱する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-ECL-ATCS-04 | 軌道上は放熱器で排熱し、熱負荷と姿勢の組合せで放熱器の能力を超えるとFESが自動的に補助する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-ECL-ATCS-05 | 再突入では高度約100,000 ftまでFES、それ以下は地上冷却が接続されるまでアンモニアボイラで排熱する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-ECL-ATCS-06 | 基本構成の放熱器は21,500 Btu/hの排熱を想定し、4枚目のパネルを追加すると29,000 Btu/hとなる。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-ECL-ATCS-07 | フレオンは中胴のコールドプレート網と後部アビオニクスベイ4・5・6を通り、電子機器を冷却する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ECL-06 | 大気再生系（ARS） | 熱 | 受信 | 水冷却ループは、水とフレオン21冷却ループの熱交換器（インターチェンジャ）で熱をATCSへ渡す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | 下位: IF-TCS-01 |
| IF-ECL-09 | 電力系（EPS） | 熱 | 受信 | ATCSは、各燃料電池の熱交換器から熱を受け取る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/319） | 上位: IF-ORB-11 下位: IF-EPS-07 下位: IF-TCS-02 |
| IF-ECL-11 | 油圧系（APU/HYD） | 熱 | 双方向 | 軌道上の循環時はフレオン21ループがフレオン／油圧作動油熱交換器で油圧作動油を加温する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/102） | 上位: IF-ORB-12 下位: IF-TCS-03 |
| IF-ECL-12 | 給水・廃水系（H2O） | 推進薬・流体 | 受信 | FES用の水は、飲料水タンクから給水系統A・Bを通じて供給される。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | 下位: IF-TCS-16 |
| IF-ECL-21 | 宇宙空間（船外） | 熱 | 送信 | 軌道上は放熱器で排熱し、上昇・再突入はFES、高度約100,000 ft以下はアンモニアボイラで排熱する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | 下位: IF-TCS-12 下位: IF-TCS-13 下位: IF-TCS-14 |
| IF-ECL-24 | 圧力制御系（PCS／ARPCS） | 熱 | 送信 | フレオンの一方の流路はECLSS酸素リストリクタを通り、ECLSS用のPRSD酸素を40°Fに加温する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | 下位: IF-TCS-04 |
| IF-ECL-25 | DPS・アビオニクス | 熱 | 送信 | フレオンは中胴のコールドプレート網と後部アビオニクスベイ4・5・6を通り、電子機器を冷却する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382） | 上位: IF-ORB-13 下位: IF-TCS-05 |
| IF-ECL-28 | DPS・アビオニクス | データ・指令 | 受信 | FES制御器は上昇時の高度140,000 ft超でBFS計算機が自動でオンにし、再突入時の100,000 ftでオフにする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/389）アンモニア制御器は、オービタがMM 304で高度120,000 ftを降下通過するとき（RTLSアボートではMM 602への移行時）にBFS計算機がオンにする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/392） | 上位: IF-ORB-19 下位: IF-TCS-18 下位: IF-TCS-19 下位: IF-TCS-21 |
| IF-ECL-34 | 打上げ処理システム（KSC） | 熱 | 受信 | 着陸後に地上冷却が始まるとアンモニアボイラを止め、GSE熱交換器で排熱する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/392）射点ではパッド地上冷却系がGSE熱交換器を通じて機上ループを十分に冷やし、軌道到達までの熱容量を確保する。（出典: https://llis.nasa.gov/llis_lib/pdf/1045995main_ECLSSGroundCoolantSystemLL.pdf） | 上位: IF-ORB-32 下位: IF-TCS-15 |

## 4. 下位文書

| 文書番号 | 表題 |
|---|---|
| [SSD-FD-TCS-FCL-001](SSD-FD-TCS-FCL-001.md) | フレオン21冷却ループ（FCL）機能説明書 |
| [SSD-FD-TCS-HX-001](SSD-FD-TCS-HX-001.md) | 熱取得：熱交換器・コールドプレート網（HX）機能説明書 |
| [SSD-FD-TCS-RAD-001](SSD-FD-TCS-RAD-001.md) | 放熱器（RAD）機能説明書 |
| [SSD-FD-TCS-FES-001](SSD-FD-TCS-FES-001.md) | フラッシュエバポレータ（FES）機能説明書 |
| [SSD-FD-TCS-NH3-001](SSD-FD-TCS-NH3-001.md) | アンモニアボイラ（NH3）機能説明書 |
| [SSD-FD-TCS-GSE-001](SSD-FD-TCS-GSE-001.md) | GSE熱交換器・地上冷却（GSE）機能説明書 |

## 5. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| A-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | PCS・ARS・ATCS・給水/廃水の4系統と外部エアロックを解説し、付録CにEDO改修を収録する。訓練専用で、運用データの出典には使わないよう明記されている。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf） |
| A-04 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節「Active Thermal Control System」：2系統のフレオン冷却ループ、コールドプレートと熱交換器、放熱器と流量制御、FES、アンモニアボイラを示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/380） |
| B-01 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | ARS水ループの喪失定義と管理（A18-101・151）と、フレオン冷却ループ・FES・アンモニアボイラ・放熱器流量制御の喪失定義と管理（A18-201〜257）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2059） |
| D-05 | NTRS 19850008615 | Other Challenges in the Development of the Orbiter Environmental Control Hardware | アンモニアボイラ、煙検知器、水/水素セパレータ、WCSの開発課題と解決策を扱う。（出典: https://ntrs.nasa.gov/citations/19850008615） |
| D-06 | NTRS 19850008614 | Challenges in the Development of the Orbiter ATCS | 多ループ熱交換器の最適化、FES、統合ATCS試験を解説する。（出典: https://ntrs.nasa.gov/citations/19850008614） |
| E-01 | JSC-16720 | STS-1 ECLSS Consumables and Thermal Analysis | STS-1のECLSS・熱解析で、大気ガス、アンモニア、LiOHの収支表を含む。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf） |
| G-01 | NTRS 19810005651 | Thermal Vacuum Performance Testing of the Orbiter Radiator System | 1979年のJSCチャンバAでのラジエータ熱真空試験。（出典: https://ntrs.nasa.gov/api/citations/19810005651/downloads/19810005651.pdf） |
| G-02 | NTRS 19810005632 | Orbiter Integrated Active Thermal Control Subsystem Test | GSE熱交換器・FES・ラジエータ・アンモニアボイラを含むATCS統合熱真空試験。（出典: https://ntrs.nasa.gov/api/citations/19810005632/downloads/19810005632.pdf） |
| G-03 | NTRS 19810005631 | Thermodynamic performance testing of the orbiter flash evaporator system | 開発用FESの熱真空試験とATCS統合試験での組合せ試験。（出典: https://ntrs.nasa.gov/citations/19810005631） |
| G-04 | NTRS 20070023916 | Effects of Free Molecular Heating on the Shuttle ATCS | STS-121で自由分子加熱によりFES給水を約50 lbm余分に消費し、ラジエータ熱流束モデルを改訂した。（出典: https://ntrs.nasa.gov/citations/20070023916） |
| H-03 | NTRS 19900002466 | IOA: Analysis of the Active Thermal Control Subsystem | ATCSの独立FMEA/CIL解析。（出典: https://ntrs.nasa.gov/citations/19900002466） |
| H-04 | NTRS 19900001663 | IOA: Assessment of the ATCS FMEA/CIL（1988年） | H-03の結果をNASA・プライム契約者のFMEA/CILと比較評価する。（出典: https://ntrs.nasa.gov/api/citations/19900001663/downloads/19900001663.pdf） |
| N-01 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS | 水冷却ループ、ATCS、給水・廃水、WCS、廃水タンクの構成と運用を解説する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| N-16 | NTRS抄録（1974年） | Orbiter ECLSS support of Shuttle payloads（Jaax他） | 大気再生、乗員生命維持、能動熱制御の各機能を、自動衛星・Spacelab・国防総省ミッションのペイロード支援の観点から記述する。（出典: https://www.science.gov/topicpages/s/shuttle+orbiter+payload） |
| N-17 | 番号なし | Shuttle Reference: ECLSS Overview | ECLSSの構成系統、乗員室の圧力・組成、FES・アンモニアボイラによる排熱の運用を概説する。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/overview.html） |
| N-19 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | PCS・ARS・ATCS・給水/廃水の各系の構成と相互インタフェース（PRSDからのO2供給、N2による水タンク加圧など）を解説する。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |

## 6. 注記（出典間の相違・構成変更）

> **注記** 出典の更新（1988年版・転載版 → SCOM OI-33）：1988年版の資料は、100,000 ft通過時にBFS計算機がオンにするとしていた。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/392）

> **注記** 出典の更新（1988年版・転載版 → SCOM OI-33）：1988年版の資料は、打上げ前・上昇・大気圏飛行中は油圧系の余剰熱をフレオン21ループへ移すとも述べていた。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/102）

> **注記** 能動熱制御系（ATCS）の状態と遷移（図102）は [SSD-BEH-ORB-005](SSD-BEH-ORB-005.md) に示す（SysML v2 テキスト：model/SSD-BEH-ORB-005.sysml）。

> **注記** ATCS のフレオン冷却ループが通る機器の順と、流れる冷却材・熱の量は [SSD-IBD-ORB-001](SSD-IBD-ORB-001.md) に示す（SysML v2 テキスト：model/SSD-IBD-ORB-001.sysml）。

## 7. 参考文献

1. NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html
2. NASA LLIS – ECLSS Ground Coolant Systems（教訓文書） — https://llis.nasa.gov/llis_lib/pdf/1045995main_ECLSSGroundCoolantSystemLL.pdf
3. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Active Thermal Control System（Freon Loops）（PDF p382） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382
4. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p319） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/319
5. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p102） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/102
6. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p389） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/389
7. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p392） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/392

## 8. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-25 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-25 | 下位機能説明書（6件）と図8への展開を追加 |
| Rev. B | 2026-09-25 | 関連文書にB-01（NSTS-12820 Vol. A 運用飛行規則）を追加 |
| Rev. C | 2026-09-26 | 関連文書にA-04（Shuttle Crew Operations Manual、USA007587 Rev. A CPN-1）を追加 |
| Rev. D | 2026-09-30 | 上位の IF の補完に伴い IF-ECL-34 を追加（Rev. I） |
| Rev. E | 2026-10-01 | 出典を乗員運用マニュアル（SCOM、OI-33）の頁に更新（7文。うち本文を改めた2文に注記）（Rev. Q） |
| Rev. F | 2026-10-03 | 系の状態遷移定義書 SSD-BEH-ORB-005 への参照を注記（Rev. AI） |
| Rev. G | 2026-10-03 | 内部ブロック・流れ定義書 SSD-IBD-ORB-001 への参照を注記（Rev. AN） |
