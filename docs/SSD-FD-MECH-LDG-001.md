# 降着装置（LDG）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-MECH-LDG-001 |
| 表題 | 降着装置（LDG）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-MECH-001 |
| 関連図 | SSD-SYS-ARC-001 図68 MECH 機能構成 |

## 1. 目的

前脚・主脚の構成、展開の方式（油圧・火工品）、緩衝支柱と展開の操作を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-MECH-LDG-01 | 降着装置は前脚と左右の主脚の3脚式で、前脚は前胴の下部、主脚は中胴に隣接する左右の翼の下部にあり、各脚は緩衝支柱と2つの車輪・タイヤを持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/543） |
| F-MECH-LDG-02 | 前脚は2枚、各主脚は1枚の扉を持ち、脚を下ろすと扉が自動で開く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/543） |
| F-MECH-LDG-03 | 展開を指令すると油圧系1の圧力でアップロックフックが外れ、脚はばね・油圧アクチュエータ・空気力・重力で下がり、10秒以内に下げ位置でロックされる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/544） |
| F-MECH-LDG-04 | 油圧系1の圧力が無いときは、指令の1秒後に各脚のアップロックフックの火工品が自動でフックを外す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/544） |
| F-MECH-LDG-05 | 脚は高度300±100 ft、最大312 KEASで展開する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/544） |
| F-MECH-LDG-06 | 脚は地上作業でだけ格納でき、飛行中には引き込めない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/544） |
| F-MECH-LDG-07 | 緩衝支柱は空気/油式の緩衝器で、着陸の衝撃を和らげる主な手段である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/544） |
| F-MECH-LDG-08 | ARMボタンで脚の展開弁の継電器を準備して火工品の制御器を活性化し、DNボタンで油圧系1・2の展開弁を開く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/552） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-MECH-03 | 構造（STR） | 構造・荷重 | 双方向 | 前脚は前胴の下部、主脚は中胴に隣接する左右の翼の下部に収められる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/543） | 上位: IF-ORB-38 |
| IF-MECH-07 | 制動・操向・減速傘 | データ・指令 | 送信 | 各主脚の3つのセンサが主脚の接地を検知してWOWを設定し、前輪操向とブレーキの条件になる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/551） | — |
| IF-MECH-08 | MECH運用管理 | データ・指令 | 受信 | 脚の展開は、CDR（パネルF6）またはPLT（パネルF8）がLANDING GEAR ARMボタン、続いてDNボタンを押して始める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/552） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| ME-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.14節 Landing Gear（PDF p543〜545）：脚の構成、展開、緩衝支柱を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/543） |
| ME-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A10-1001 C（PDF p1665）：脚の油圧・火工品の展開系の喪失の判定を示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1665） |
| ME-08 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | （PDF p18）：主脚・前脚の接地の時刻を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=18） |
| ME-10 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | （PDF p17）：前脚扉のタイルの損傷の点検の記録を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=17） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.14 Landing/Deceleration System（USA007587 Rev. A CPN-1、PDF p543） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/543
2. Shuttle Crew Operations Manual 2.14 Landing/Deceleration System（USA007587 Rev. A CPN-1、PDF p544） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/544
3. Shuttle Crew Operations Manual 2.14 Landing/Deceleration System（USA007587 Rev. A CPN-1、PDF p552） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/552
4. Shuttle Crew Operations Manual 2.14 Landing/Deceleration System（USA007587 Rev. A CPN-1、PDF p551） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/551
5. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
