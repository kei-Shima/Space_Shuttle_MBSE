# アンモニアボイラ（NH3）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-TCS-NH3-001 |
| 表題 | アンモニアボイラ（NH3）機能説明書 |
| 版・日付 | Rev. C／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-ATCS-001 |
| 関連図 | SSD-SYS-ARC-001 図8 熱制御 機能構成 |

## 1. 目的

再突入後半から地上冷却接続までの排熱を担うアンモニアボイラの機能を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-TCS-NH3-01 | アンモニアボイラは、アンモニアの低い沸点を利用して、高度100,000 ft以下の再突入中にフレオン21ループを冷却する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-TCS-NH3-02 | 独立した2系統のアンモニア貯蔵・制御系が、1つの共通ボイラへ供給する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-TCS-NH3-03 | 各タンクは49 lbのアンモニアを持ち、ヘリウムで550〜83 psiaに加圧される。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-TCS-NH3-04 | 制御器はボイラ出口のフレオン温度を34°Fに保ち、31°Fを10秒超下回ると主制御器から副制御器へ自動で切り替わる。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-TCS-NH3-05 | 運転は着陸・滑走後も続き、地上冷却カートがGSE熱交換器に接続されるまで排熱する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-TCS-NH3-06 | 初期の飛行では、アンモニアボイラ系の問題も報告されている。（出典: https://ntrs.nasa.gov/citations/19920039157） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-TCS-10 | フレオン21冷却ループ×2 | 熱 | 受信 | アンモニアボイラは、再突入で高度100,000 ftを下回ってからフレオン21ループを冷却する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | — |
| IF-TCS-14 | 宇宙空間（船外） | 推進薬・流体 | 送信 | 気化したアンモニアは、垂直尾翼の右下付近の上部後部胴体から船外へ排出される。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | 上位: IF-ECL-21 |
| IF-TCS-19 | DPS・アビオニクス | データ・指令 | 受信 | 選択したアンモニア制御器（通常はB）は、オービタがMM 304で高度120,000 ftを降下通過するときにBFS計算機がオンにする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/392） | 上位: IF-ECL-28 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| TC-01 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS | フレオンループの流路、放熱器・FES・アンモニアボイラ・GSE熱交換器の構成と運用を解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382） |
| TC-03 | SAE 911366（NTRS 19920039157） | Shuttle Orbiter ATCS design and flight experience | 最初の39飛行の運用と、フレオン流量低下・FES不具合・アンモニアボイラ系の問題と対策を述べる。（出典: https://ntrs.nasa.gov/citations/19920039157） |
| TC-07 | NTRS 19810005632 | Orbiter Integrated Active Thermal Control Subsystem Test | GSE熱交換器・FES・ラジエータ・アンモニアボイラを含むATCS統合熱真空試験。（出典: https://ntrs.nasa.gov/api/citations/19810005632/downloads/19810005632.pdf） |
| TC-12 | JSC-16720 | STS-1 ECLSS Consumables and Thermal Analysis | STS-1の熱解析で、アンモニアなどの収支表を含む。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf） |
| TC-26 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | アンモニアボイラの喪失定義（A18-207）と管理（A18-253）、NH3レッドライン（A18-254）、着陸後のNH3終了（A18-257・A16-54）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2072） |
| TC-27 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節「Ammonia Boilers」：貯蔵タンク、主制御器・副制御器と制御センサを示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/391） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 出典の更新（1988年版・転載版 → SCOM OI-33）：1988年版の資料は、アンモニア制御器Aを高度100,000 ft通過時にBFS計算機がオンにするとしていた。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/392）

## 6. 参考文献

1. NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html
2. NTRS 19920039157 Shuttle Orbiter ATCS design and flight experience（SAE 911366） — https://ntrs.nasa.gov/citations/19920039157
3. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p392） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/392
4. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Active Thermal Control System（Freon Loops）（PDF p382） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-25 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-25 | 関連文書にTC-26（NSTS-12820 Vol. A 運用飛行規則）を追加 |
| Rev. B | 2026-09-26 | 関連文書にTC-27（Shuttle Crew Operations Manual、USA007587 Rev. A CPN-1）を追加 |
| Rev. C | 2026-10-01 | 出典を乗員運用マニュアル（SCOM、OI-33）の頁に更新（2文。うち本文を改めた1文に注記）（Rev. Q） |
