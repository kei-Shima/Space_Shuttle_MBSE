# 照明（LTG）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-CREW-LTG-001 |
| 表題 | 照明（LTG）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-CREW-001 |
| 関連図 | SSD-SYS-ARC-001 図64 CREW 機能構成 |

## 1. 目的

機内の照明（投光照明・パネル照明・非常照明）と機外の投光照明の構成・電源・運用を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-CREW-LTG-01 | 照明系は機内と機外の照明から成り、機内照明は投光照明・パネル照明・計器照明・数字表示・表示灯である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/561） |
| F-CREW-LTG-02 | 非常照明は、必須母線からの別の電源入力で給電される特定の照明器具である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/561） |
| F-CREW-LTG-03 | 中甲板の天井には8つの投光照明器具があり、パネルMO13QのMID DECK FLOODSスイッチで個別に入切する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/562） |
| F-CREW-LTG-04 | 機外の投光照明は、ペイロードベイドアの操作・EVA・RMSの操作・ステーションキーピング・ドッキングの視界を良くする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/574） |
| F-CREW-LTG-05 | ペイロードベイの投光照明はメタルハライド灯で、各灯に高電圧を作るDC/DC電源があり、電力は中部電力制御組立から10 Aの遠隔電力制御器で供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/574） |
| F-CREW-LTG-06 | メタルハライド灯の電源は、フレオンループで冷やす投光照明電子組立に取り付けられる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/574） |
| F-CREW-LTG-07 | 操縦室の照明をすべて点けると消費電力は1〜2 kWになり、ペイロードベイの投光照明は点けたら10分以上点けたままにする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/576） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-CREW-06 | 電力系：直流配電（EPS） | 電力（28 VDC） | 受信 | 非常照明の器具は、必須母線からの別の電源入力で給電される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/561）ペイロードベイの投光照明の電力は、中部電力制御組立から10 Aの遠隔電力制御器を通して供給される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/574） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| CS-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.15節（PDF p561〜576）：機内・機外の照明、非常照明、操作パネル、運用の要点を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/561） |
| CS-02 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） | 3.26節 Lighting（PDF p591〜）：機内・機外の照明の目的と表示灯の色の区分を述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=591） |
| CS-05 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | 3-7 AV BAY 3B AND WCS COMPARTMENT（PDF p93）：廃棄物処理区画の投光照明の取付けねじの位置を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=93） |
| CS-06 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | （PDF p22）：6つのペイロードベイ投光照明を点けたときの電流の増え方から、中部左舷の投光照明の不具合を見つけた例を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=22） |
| CS-07 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | （PDF p13）：ペイロードベイ投光照明1灯の電流が約6.6 Aであることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=13） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.15 Lighting System（USA007587 Rev. A CPN-1、PDF p561） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/561
2. Shuttle Crew Operations Manual 2.15 Lighting System（USA007587 Rev. A CPN-1、PDF p562） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/562
3. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.15節 Exterior Lighting（PDF p574） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/574
4. Shuttle Crew Operations Manual 2.15 Lighting System（USA007587 Rev. A CPN-1、PDF p576） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/576
5. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
