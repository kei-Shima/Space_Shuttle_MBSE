# フラッシュエバポレータ（FES）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-TCS-FES-001 |
| 表題 | フラッシュエバポレータ（FES）機能説明書 |
| 版・日付 | Rev. C／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-ATCS-001 |
| 関連図 | SSD-SYS-ARC-001 図8 熱制御 機能構成 |

## 1. 目的

水の蒸発で排熱するフラッシュエバポレータの機能と制御を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-TCS-FES-01 | FESは上昇時の高度140,000 ft超で排熱し、軌道上では必要に応じて放熱器を補い、軌道離脱・再突入では高度約100,000 ftまで排熱する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-TCS-FES-02 | 1つの筐体に高負荷蒸発器とトッピング蒸発器があり、高負荷蒸発器は冷却能力が大きいが排気が左側のみで推力を生じる。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-TCS-FES-03 | フィン付きの芯に水を噴霧して蒸発させ、水1 lbあたり約1,000 Btuの熱を奪う。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-TCS-FES-04 | 水は飲料水タンクから給水系統A・Bで供給され、主制御器A・Bは出口温度を39°F、副制御器は62°Fに制御する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-TCS-FES-05 | トッピング蒸発器は、軌道上で余剰の飲料水を捨てるためにも使える。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-TCS-FES-06 | STS-26とSTS-34では、FESの運用上の不具合が発生した。（出典: https://ntrs.nasa.gov/citations/19920039157） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-TCS-09 | フレオン21冷却ループ×2 | 熱 | 受信 | FESは上昇時の高度140,000 ft超でフレオン21ループの熱を排出し、軌道上では必要に応じて放熱器を補い、軌道離脱・再突入では高度約100,000 ftまで排熱する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | — |
| IF-TCS-13 | 宇宙空間（船外） | 推進薬・流体 | 送信 | トッピング蒸発器の蒸気は後部胴体両側の2つのソニックノズルから排出され、推力を生じない。高負荷蒸発器の蒸気は左側の1つのノズルから排出される。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | 上位: IF-ECL-21 |
| IF-TCS-16 | 給水・廃水系（ECLSS） | 推進薬・流体 | 受信 | FES用の水は、飲料水タンクから給水系統A・Bを通じて供給される。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | 上位: IF-ECL-12 |
| IF-TCS-18 | DPS・アビオニクス | データ・指令 | 受信 | FES制御器はGPC位置では、上昇時の高度140,000 ft超でBFS計算機が自動でオンにし、再突入時の100,000 ftでオフにする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/389） | 上位: IF-ECL-28 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| TC-01 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS | フレオンループの流路、放熱器・FES・アンモニアボイラ・GSE熱交換器の構成と運用を解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382） |
| TC-02 | 番号なし | Shuttle Reference: Active Thermal Control System | ATCSの構成とヒートシンクの使い分けを解説する。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/atcs.html） |
| TC-03 | SAE 911366（NTRS 19920039157） | Shuttle Orbiter ATCS design and flight experience | 最初の39飛行の運用と、フレオン流量低下・FES不具合・アンモニアボイラ系の問題と対策を述べる。（出典: https://ntrs.nasa.gov/citations/19920039157） |
| TC-05 | NTRS 19850008614 | Challenges in the Development of the Orbiter ATCS | 他の5系統と熱交換する最適化熱交換器とFESの開発を述べる。（出典: https://ntrs.nasa.gov/citations/19850008614） |
| TC-07 | NTRS 19810005632 | Orbiter Integrated Active Thermal Control Subsystem Test | GSE熱交換器・FES・ラジエータ・アンモニアボイラを含むATCS統合熱真空試験。（出典: https://ntrs.nasa.gov/api/citations/19810005632/downloads/19810005632.pdf） |
| TC-08 | NTRS 19810005631 | Thermodynamic performance testing of the orbiter flash evaporator system | 開発用FESの熱真空試験とATCS統合試験での組合せ試験。（出典: https://ntrs.nasa.gov/citations/19810005631） |
| TC-09 | NTRS 20070023916 | Effects of Free Molecular Heating on the Shuttle ATCS | STS-121で自由分子加熱によりFES給水を余分に消費し、ラジエータ熱流束モデルを改訂した。（出典: https://ntrs.nasa.gov/citations/20070023916） |
| TC-13 | NTRS 19730009157 | EC/LSS thermal control system study for the space shuttle（1972年） | 排熱方式の重量解析を行い、蒸気圧縮式と多流体噴霧式フラッシュエバポレータを有望と選定した。（出典: https://ntrs.nasa.gov/citations/19730009157） |
| TC-14 | NTRS抄録（1972〜1976年） | Shuttle flash evaporator prototype and system testing | シャトル用フラッシュエバポレータの試作機の開発と、JSCでのシステム試験を扱う。（出典: https://www.science.gov/topicpages/f/flash+evaporator+system） |
| TC-26 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | トッピング・高負荷エバポレータ、FES制御器、給水ラインの喪失定義（A18-202〜206）とFESの管理（A18-252）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2067） |
| TC-27 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節「Flash Evaporator System」：FES制御器、自動停止、温度監視、ヒータ、FESによる水ダンプを示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/389） |

## 5. 参考文献

1. NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html
2. NTRS 19920039157 Shuttle Orbiter ATCS design and flight experience（SAE 911366） — https://ntrs.nasa.gov/citations/19920039157
3. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p389） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/389
4. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Active Thermal Control System（Freon Loops）（PDF p382） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382

## 6. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-25 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-25 | 関連文書にTC-26（NSTS-12820 Vol. A 運用飛行規則）を追加 |
| Rev. B | 2026-09-26 | 関連文書にTC-27（Shuttle Crew Operations Manual、USA007587 Rev. A CPN-1）を追加 |
| Rev. C | 2026-10-01 | 出典を乗員運用マニュアル（SCOM、OI-33）の頁に更新（2文）（Rev. Q） |
