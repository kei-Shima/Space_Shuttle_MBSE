# 制動・操向・減速傘（DEC）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-MECH-DEC-001 |
| 表題 | 制動・操向・減速傘（DEC）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-MECH-001 |
| 関連図 | SSD-SYS-ARC-001 図68 MECH 機能構成 |

## 1. 目的

接地後の減速と方向の制御を受け持つドラッグシュート・主輪のブレーキ・前輪操向を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-MECH-DEC-01 | 接地後、乗員はドラッグシュートを展開し、制動と前輪操向を始める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/543） |
| F-MECH-DEC-02 | ドラッグシュートは垂直尾翼の基部に収め、機首下げの前にCDRかPLTの冗長な指令で展開し、主エンジンのベルを守るため対地60（±20） ktで投棄する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/546） |
| F-MECH-DEC-03 | 展開時は火工品で収納部の扉を外し、モータが9 ftのパイロットシュートを出し、それが40 ftの主傘を引き出す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/547） |
| F-MECH-DEC-04 | 4つの主輪はそれぞれ電気油圧式のディスクブレーキとアンチスキッドを持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/547） |
| F-MECH-DEC-05 | 制動は油圧系1・2を能動、系3を予備とし、3つの主直流電気系をすべて使う冗長な構成で、主脚の荷重を検知して約1.9秒後から効く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/547） |
| F-MECH-DEC-06 | 前脚の油圧操向アクチュエータはラダーペダルの電子指令に応じ、GPCモードとキャスタモードがある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/551） |
| F-MECH-DEC-07 | 前輪操向は、主脚接地（WOW）・ピッチ角0°未満・前脚接地（WONG）の条件がそろってから有効になる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/551） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-APU-11 | 主油圧ポンプ・供給 | 油圧 | 受信 | 油圧系1の圧力を前脚・主脚のアップロックのアクチュエータへ送って脚を展開させ、油圧系1・2（系3が予備）を主脚ブレーキへ、油圧系1・2を前輪操舵へ供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/553）ブレーキ隔離弁1・2・3は、主脚の接地を感知した後のGPC指令で開く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/553） | 上位: IF-ORB-39 |
| IF-MECH-07 | 降着装置 | データ・指令 | 受信 | 各主脚の3つのセンサが主脚の接地を検知してWOWを設定し、前輪操向とブレーキの条件になる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/551） | — |
| IF-MECH-09 | MECH運用管理 | データ・指令 | 受信 | ドラッグシュートは、機首下げの前にCDRかPLTの冗長な指令で手動で展開する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/546） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| ME-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.14節 Drag Chute・Brakes・Nose Wheel Steering（PDF p546〜552）：減速と方向の制御を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/546） |
| ME-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A10-146（PDF p1603）：制動の規則を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1603） |
| ME-04 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | B-1 BRAKE ANTISKID CONTROL COMMAND INHIBIT（目次、PDF p40）：ブレーキのアンチスキッドの指令を禁止する手順があることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=40） |
| ME-08 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | （PDF p18）：ドラッグシュートの展開と投棄の時刻を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=18） |
| ME-09 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | （PDF p15）：ドラッグシュートの結束の一部が切れた異常を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=15） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.14 Landing/Deceleration System（USA007587 Rev. A CPN-1、PDF p543） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/543
2. Shuttle Crew Operations Manual 2.14 Landing/Deceleration System（USA007587 Rev. A CPN-1、PDF p546） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/546
3. Shuttle Crew Operations Manual 2.14 Landing/Deceleration System（USA007587 Rev. A CPN-1、PDF p547） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/547
4. Shuttle Crew Operations Manual 2.14 Landing/Deceleration System（USA007587 Rev. A CPN-1、PDF p551） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/551
5. Shuttle Crew Operations Manual 2.14 Landing/Deceleration System（USA007587 Rev. A CPN-1、PDF p553） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/553
6. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
