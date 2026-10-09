# 前胴・前部RCSモジュール（FWD）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-STR-FWD-001 |
| 表題 | 前胴・前部RCSモジュール（FWD）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-STR-001 |
| 関連図 | SSD-SYS-ARC-001 図70 STR 機能構成 |

## 1. 目的

乗員室を囲む前胴と、前部RCSモジュール・ノーズキャップ・前部のET結合金具の構造を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-STR-FWD-01 | オービタの構造は9つの主要区分（前胴・翼・中胴・PLBD・後胴・前部RCS・垂直尾翼・OMS/RCSポッド・ボディフラップ）に分かれ、大部分は通常のアルミニウムで再使用の表面断熱材に守られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/51） |
| F-STR-FWD-02 | 前胴は上下の部分から成って与圧乗員室を囲み、前部RCSモジュール・ノーズキャップ・前脚格納部・前脚・前脚扉を支える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/51） |
| F-STR-FWD-03 | 前胴は2024アルミ合金のスキン・ストリンガのパネル・フレーム・隔壁で造られ、主フレームの間隔は30〜36 inである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/51） |
| F-STR-FWD-04 | ノーズキャップは強化炭素・炭素（RCC）の再使用TPSで、ノーズキャップと構造の境に熱障壁を持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/52） |
| F-STR-FWD-05 | 前部のオービタ/ET結合金具は、Xo=378隔壁と前脚格納部の後方の外板構造にある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/52） |
| F-STR-FWD-06 | 前部RCSモジュールは16本の留め具で前胴の機首部と前部隔壁に固定され、取付け・取外しができる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/53） |
| F-STR-FWD-07 | 前胴は、Xo=582の柔軟な膜でペイロードベイと仕切られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/53） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-STR-01 | ET：LH2タンク | 構造・荷重 | 双方向 | 前部のオービタ/ET結合金具は、Xo=378隔壁と前脚格納部の後方の外板構造にある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/52） | 上位: IF-ORB-36 |
| IF-STR-04 | 乗員室（与圧）・窓 | 構造・荷重 | 受信 | 乗員室は、熱伝導を小さくするため前胴の中に4つの取付点だけで支えられる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/53） | — |
| IF-STR-05 | 中胴・ペイロードベイ | 構造・荷重 | 双方向 | 中胴の前後の端は開いていて、補強した外板と縦通材が前胴・後胴の隔壁と結合する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/59） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| ST-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 1.2節 Forward Fuselage（PDF p51〜53）：前胴・ノーズキャップ・前部RCSモジュールを述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/51） |
| ST-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A10-381（PDF p1658）：熱ペインの故障の定義とアボートの判断を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1658） |
| ST-05 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | （PDF p17）：窓の断熱ブランケットの重点点検の記録を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=17） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p51） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/51
2. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p52） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/52
3. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p53） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/53
4. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p59） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/59
5. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
