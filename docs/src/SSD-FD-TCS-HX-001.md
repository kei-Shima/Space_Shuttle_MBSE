# 熱取得：熱交換器・コールドプレート網（HX）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-TCS-HX-001 |
| 表題 | 熱取得：熱交換器・コールドプレート網（HX）機能説明書 |
| 版・日付 | Rev. E／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-ATCS-001 |
| 関連図 | SSD-SYS-ARC-001 図8 熱制御 機能構成 |

## 1. 目的

他系の熱をフレオンループへ取り込む熱交換器とコールドプレート網の機能を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-TCS-HX-01 | ATCSは、水／フレオン熱交換器でARSの熱を、各燃料電池熱交換器で燃料電池の熱を受け取り、ECLSS酸素供給ラインのPRSD酸素と油圧作動油を加温する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-TCS-HX-02 | 開発では、フレオン冷却ループと他の5つの機体系の間で熱をやり取りする最適化された熱交換器が開発された。（出典: https://ntrs.nasa.gov/citations/19850008614） |
| F-TCS-HX-03 | 油圧熱交換器は、軌道上の循環時は作動油を加温し、打上げ前・上昇・大気圏飛行中は油圧系の余剰熱をフレオンへ移す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-TCS-HX-04 | フレオンポンプ、ARSインターチェンジャ、燃料電池熱交換器、ペイロード熱交換器、中胴コールドプレートは中胴前部の下部にある。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-TCS-HX-05 | 後部アビオニクスベイ4・5・6の電子機器とレートジャイロ組立も、フレオンのコールドプレートで冷却される。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-EPS-07 | 燃料電池発電装置（FCP×3） | 熱 | 受信 | 燃料電池の冷却材（フッ素系炭化水素）は、燃料電池熱交換器を通じてスタックの排熱を中胴のフレオン21冷却ループへ移す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） | 上位: IF-ECL-09 |
| IF-EPS-14 | 直流配電（EPDC-DC） | 熱 | 送信 | 中胴の電気部品はコールドプレートに取り付けられフレオン21ループで冷却され、前部アビオニクスベイ1〜3の電力・負荷・モータ制御組立とインバータは水冷却ループで冷却され、インバータ配電組立は空冷である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/340） | 上位: IF-ORB-35 |
| IF-TCS-01 | 大気再生系：水冷却ループ | 熱 | 受信 | ATCSは、水冷却ループとフレオン21冷却ループの熱交換器（インターチェンジャ）でARSの熱を受け取る。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | 上位: IF-ECL-06 下位: IF-WCL-20 |
| IF-TCS-02 | 電力系：燃料電池 | 熱 | 受信 | フレオンは燃料電池熱交換器と中胴のコールドプレート網を並列に流れ、燃料電池の排熱を受け取る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382） | 上位: IF-ECL-09 |
| IF-TCS-03 | 油圧系（APU/HYD） | 熱 | 双方向 | 軌道上の循環時はフレオンがフレオン／油圧作動油熱交換器で油圧作動油を加温する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/102） | 上位: IF-ECL-11 |
| IF-TCS-04 | 圧力制御系：PRSD O2 | 熱 | 送信 | フレオンの一方の流路はECLSS酸素リストリクタを通り、ECLSS用のPRSD酸素を40°Fに加温する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | 上位: IF-ECL-24 |
| IF-TCS-05 | DPS・アビオニクス | 熱 | 送信 | フレオンは中胴のコールドプレート網と後部アビオニクスベイ4・5・6、レートジャイロ組立のコールドプレートを通り、電子機器を冷却する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382） | 上位: IF-ECL-25 |
| IF-TCS-06 | ペイロード | 熱 | 送信 | フレオンの流路は流量配分弁を経てペイロード熱交換器とARSインターチェンジャへ並列に流れる。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | — |
| IF-TCS-07 | フレオン21冷却ループ×2 | 熱 | 双方向 | ATCSは同一構成の2系統のフレオン21冷却ループ、アビオニクス用コールドプレート網、液液熱交換器、3種のヒートシンクから成る。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| TC-01 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS | フレオンループの流路、放熱器・FES・アンモニアボイラ・GSE熱交換器の構成と運用を解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382） |
| TC-05 | NTRS 19850008614 | Challenges in the Development of the Orbiter ATCS | 他の5系統と熱交換する最適化熱交換器とFESの開発を述べる。（出典: https://ntrs.nasa.gov/citations/19850008614） |
| TC-15 | NTRS 19900001618 | IOA: Analysis of the Hydraulics/Water Spray Boiler subsystem | 油圧系の独立解析で、フレオン熱交換器を構成品に含む。（出典: https://ntrs.nasa.gov/api/citations/19900001618/downloads/19900001618.pdf） |
| TC-24 | 番号なし | NSTS 1988 News Reference Manual – Electrical Power System | 燃料電池熱交換器とフレオンループのIF、生成水配管の凍結防止ヒータを記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） |
| TC-26 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | ARS水ループの喪失定義と管理（A18-101・151：インターチェンジャ流量とアビオニクスベイのコールドプレート温度）と、熱交換器漏れのGo/No-Go（A18-1001 C.10）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2059） |
| TC-27 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節のATCS：燃料電池熱交換器、中部胴体・後部アビオニクスベイのコールドプレート、カーゴ熱交換器、ペイロード熱交換器、ARSのフレオン/水インターチェンジャを順に流れる経路を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 出典の更新（1988年版・転載版 → SCOM OI-33）：1988年版の資料は、前部アビオニクスベイの配電組立が水冷却ループで冷却されるとしていた。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/340）

> **注記** 出典の更新（1988年版・転載版 → SCOM OI-33）：1988年版の資料は、フレオンが3基の燃料電池熱交換器を並列に流れるとしていた。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382）

> **注記** 出典の更新（1988年版・転載版 → SCOM OI-33）：1988年版の資料は、打上げ前・上昇・大気圏飛行中は油圧系の余剰熱をフレオンへ移すとも述べていた。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/102）

## 6. 参考文献

1. NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html
2. NTRS 19850008614 Challenges in the Development of the Orbiter ATCS — https://ntrs.nasa.gov/citations/19850008614
3. NSTS 1988 News Reference Manual – Electrical Power System（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eps.html
4. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p340） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/340
5. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Active Thermal Control System（Freon Loops）（PDF p382） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382
6. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p102） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/102

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-25 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-25 | 関連文書にTC-26（NSTS-12820 Vol. A 運用飛行規則）を追加 |
| Rev. B | 2026-09-26 | 関連文書にTC-27（Shuttle Crew Operations Manual、USA007587 Rev. A CPN-1）を追加 |
| Rev. C | 2026-09-30 | IF-TCS-01に下位IF（IF-WCL-20）を付記 |
| Rev. D | 2026-09-30 | IF-EPS-14 に上位 IF-ORB-35 を付記（Rev. I） |
| Rev. E | 2026-10-01 | 出典を乗員運用マニュアル（SCOM、OI-33）の頁に更新（5文。うち本文を改めた3文に注記）（Rev. Q） |
