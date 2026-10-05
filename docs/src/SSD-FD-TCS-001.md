# 熱制御（能動・受動）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-TCS-001 |
| 表題 | 熱制御（能動・受動）機能説明書 |
| 版・日付 | Rev. D／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図8 熱制御 機能構成 |

## 1. 目的

オービタの熱制御を、能動系（ATCS）と受動系（断熱・ヒータ・パージ）を合わせた横断的な機能として示し、図8と下位の機能説明書への索引とする。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-TCS-01 | ATCSは、2系統のフレオン21冷却ループ、アビオニクス用コールドプレート網、液液熱交換器、放熱器・FES・アンモニアボイラの3種のヒートシンクから成る。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/atcs.html） |
| F-TCS-02 | オービタ内部の温度は、断熱材、ヒータ、パージによっても管理される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/65） |
| F-TCS-03 | オービタの外面温度は、約90分の軌道1周ごとに−200°Fから+200°Fまで変動する。（出典: https://www3.nasa.gov/centers/kennedy/pdf/167473main_TPS-08.pdf） |
| F-TCS-04 | ペイロードベイドアは、軌道到達後まもなく開かれ、機体各系の排熱のためにECLSSの放熱器を露出させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405） |

## 3. インタフェース

この文書は横断的な索引であり、インタフェースは下位の各機能説明書に記載する。

## 4. 下位文書

| 文書番号 | 表題 |
|---|---|
| [SSD-FD-TCS-FCL-001](SSD-FD-TCS-FCL-001.md) | フレオン21冷却ループ（FCL）機能説明書 |
| [SSD-FD-TCS-HX-001](SSD-FD-TCS-HX-001.md) | 熱取得：熱交換器・コールドプレート網（HX）機能説明書 |
| [SSD-FD-TCS-RAD-001](SSD-FD-TCS-RAD-001.md) | 放熱器（RAD）機能説明書 |
| [SSD-FD-TCS-FES-001](SSD-FD-TCS-FES-001.md) | フラッシュエバポレータ（FES）機能説明書 |
| [SSD-FD-TCS-NH3-001](SSD-FD-TCS-NH3-001.md) | アンモニアボイラ（NH3）機能説明書 |
| [SSD-FD-TCS-GSE-001](SSD-FD-TCS-GSE-001.md) | GSE熱交換器・地上冷却（GSE）機能説明書 |
| [SSD-FD-TCS-PTC-001](SSD-FD-TCS-PTC-001.md) | 受動熱制御（PTC：断熱・ヒータ・パージ）機能説明書 |

## 5. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| TC-01 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS | フレオンループの流路、放熱器・FES・アンモニアボイラ・GSE熱交換器の構成と運用を解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382） |
| TC-02 | 番号なし | Shuttle Reference: Active Thermal Control System | ATCSの構成とヒートシンクの使い分けを解説する。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/atcs.html） |
| TC-07 | NTRS 19810005632 | Orbiter Integrated Active Thermal Control Subsystem Test | GSE熱交換器・FES・ラジエータ・アンモニアボイラを含むATCS統合熱真空試験。（出典: https://ntrs.nasa.gov/api/citations/19810005632/downloads/19810005632.pdf） |
| TC-10 | NTRS 19900002466 | IOA: Analysis of the Active Thermal Control Subsystem | ATCSの独立FMEA/CIL解析。（出典: https://ntrs.nasa.gov/citations/19900002466） |
| TC-11 | NTRS 19900001663 | IOA: Assessment of the ATCS FMEA/CIL | ATCS解析の結果をNASA・契約者のFMEA/CILと比較評価する。（出典: https://ntrs.nasa.gov/api/citations/19900001663/downloads/19900001663.pdf） |
| TC-13 | NTRS 19730009157 | EC/LSS thermal control system study for the space shuttle（1972年） | 排熱方式の重量解析を行い、蒸気圧縮式と多流体噴霧式フラッシュエバポレータを有望と選定した。（出典: https://ntrs.nasa.gov/citations/19730009157） |
| TC-26 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | 全飛行共通の運用飛行規則。第18章 THERMAL（56規則）が熱制御を扱い、Go/No-Go基準はA18-1001、熱姿勢制約はA18-451、冷却機器の最大停止時間はA18-501。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2147） |
| TC-27 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | OI-33時点の乗員向け運用マニュアル（USA007587 Rev. A CPN-1、SFOC-FL0884の後継）。2.9節の能動熱制御系（ATCS）がオービタの排熱を担い、受動熱制御（断熱材・コーティング・ヒータ）は1.2節にある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/380） |

## 6. 注記（出典間の相違・構成変更）

> **注記** TPSの要求（L2）と、本書の機能行とのトレースは [SSD-REQ-TPS-001](SSD-REQ-TPS-001.md) に示す。

## 7. 参考文献

1. NASA Human Space Flight – Shuttle Reference: Active Thermal Control System — https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/atcs.html
2. NASA Facts – Orbiter Thermal Protection System（KSC） — https://www3.nasa.gov/centers/kennedy/pdf/167473main_TPS-08.pdf
3. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p65） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/65
4. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p405） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405
5. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Active Thermal Control System（Freon Loops）（PDF p382） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382

## 8. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-25 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-25 | 関連文書にTC-26（NSTS-12820 Vol. A 運用飛行規則）を追加 |
| Rev. B | 2026-09-26 | 関連文書にTC-27（Shuttle Crew Operations Manual、USA007587 Rev. A CPN-1）を追加 |
| Rev. C | 2026-10-01 | 出典を乗員運用マニュアル（SCOM、OI-33）の頁に更新（3文）（Rev. Q） |
| Rev. D | 2026-10-02 | 要求文書 SSD-REQ-TPS-001 への参照を注記（Rev. W） |
