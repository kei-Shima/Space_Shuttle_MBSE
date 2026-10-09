# オービタ・ドッキング系（ODS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-PLS-ODS-001 |
| 表題 | オービタ・ドッキング系（ODS）機能説明書 |
| 版・日付 | Rev. A／2026-10-04 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-PLS-001 |
| 関連図 | SSD-SYS-ARC-001 図66 PLS 機能構成 |

## 1. 目的

ISSへのドッキングに使う外部エアロック・トラス組立・APDSの構成と電源・制御を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-PLS-ODS-01 | ODSはISSへのドッキングに使い、外部エアロック・トラス組立・APDSの3つから成る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/673） |
| F-PLS-ODS-02 | ODSはペイロードベイの576隔壁の後方、トンネルアダプタの後ろにある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/673） |
| F-PLS-ODS-03 | 外部エアロックは、ドッキング後に2つの宇宙機の間の気密な通路となる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/674） |
| F-PLS-ODS-04 | トラス組立はドッキング系の構成品を収める構造の基盤で、ペイロードベイに取り付けられ、ランデブ・ドッキング用のカメラ・照明などを収める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/674） |
| F-PLS-ODS-05 | APDSは、ほぼ同じドッキング機構を両方の機体に付けて、捕獲・動的な減衰・整列・ハードドッキングを行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/674） |
| F-PLS-ODS-06 | 機構の主な構成品は12対の構造フックを持つ基部リング、3枚の花弁を持つ伸縮する案内リング、6つの電磁ブレーキなどで、オービタ側が能動、ISS側が受動である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/674） |
| F-PLS-ODS-07 | 後部飛行甲板の2つの操作パネルと外部エアロック床下の9つの電子箱が、機構に電力と論理制御を与える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/674） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-PLS-02 | 電力系：直流配電（EPS） | 電力（28 VDC） | 受信 | ドッキング系電源パネル（A6L）は、ODSに関係する母線の遮断器と、APDSの操作パネル・電子箱・ドッキング照明への電力のスイッチを持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/675） | 上位: IF-ORB-14 |
| IF-PLS-05 | STR：中胴・ペイロードベイ | 構造・荷重 | 双方向 | トラス組立はドッキング系の構成品を収める構造の基盤で、ペイロードベイに取り付けられる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/674） | 上位: IF-ORB-47 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| PL-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.19節（PDF p673〜682）：外部エアロック、トラス組立、APDSと電子箱を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/673） |
| PL-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A10-345（PDF p1653）：ドッキングに失敗したあとのAPDSの再構成を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1653） |
| PL-04 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | A-8 APDS DIRECT DRIVE USING BOB（目次、PDF p40）：APDSを分岐箱で直接駆動する手順があることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=40） |
| PL-07 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | （PDF p51）：ドッキングリングの最終位置などのドッキングの記録を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=51） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

> **注記** オービタドッキング系（ODS）の状態と遷移（図141）は [SSD-BEH-ORB-006](SSD-BEH-ORB-006.md) に示す（SysML v2 テキスト：SysML/SSD-BEH-ORB-006.sysml）。

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.19 Orbiter Docking System（USA007587 Rev. A CPN-1、PDF p673） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/673
2. Shuttle Crew Operations Manual 2.19 Orbiter Docking System（USA007587 Rev. A CPN-1、PDF p674） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/674
3. Shuttle Crew Operations Manual 2.19 Orbiter Docking System（USA007587 Rev. A CPN-1、PDF p675） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/675
4. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-10-04 | 系の状態遷移定義書その2 SSD-BEH-ORB-006 への参照を注記（Rev. AX） |
