# 医療・生体・放射線（MED）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-CREW-MED-001 |
| 表題 | 医療・生体・放射線（MED）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-CREW-001 |
| 関連図 | SSD-SYS-ARC-001 図64 CREW 機能構成 |

## 1. 目的

飛行中の医療（SOMS）、生体計測、放射線計測、空気サンプリングの装備を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-CREW-MED-01 | SOMSは軽い病気やけがの飛行中の治療と、重い傷病者を地球に帰るまで安定させるためのもので、主に用途別のサブパックに分けた医療キットから成る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/218） |
| F-CREW-MED-02 | SOMSの多くは中甲板のロッカー1つにまとめて収め、使うときに取り出してベルクロで取り付ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/218） |
| F-CREW-MED-03 | 蘇生器は中甲板のパネルMO32M・MO69Mと飛行甲板のパネルC6でオービタの酸素供給につなぎ、100%の補助酸素を手動または要求流量で与える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/219） |
| F-CREW-MED-04 | 汚染除去キット（CCK）の非常用洗眼器はギャレーの清水につないで、化学やけどや煙で傷んだ目を洗う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/219） |
| F-CREW-MED-05 | 生体計測系（OBS）は乗員の心電図の信号をアビオニクスに送り、デジタルデータにして実時間で地上へ送るか記録する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/220） |
| F-CREW-MED-06 | 各乗員は飛行の間ずっと受動線量計を身に着け、太陽フレアなどのときは能動線量計を読み出す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/222） |
| F-CREW-MED-07 | 空気サンプリングは、採気容器（GSC）による飛行後の分析と、一酸化炭素・シアン化水素・塩化水素の実時間の分析の2つの方式がある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/223） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-CREW-02 | ECLSS：ギャレー給水 | 推進薬・流体 | 受信 | 汚染除去キットの非常用洗眼器は、ギャレーの清水につないで目を洗う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/219） | 上位: IF-ORB-44 |
| IF-CREW-04 | ECLSS：酸素供給 | 推進薬・流体 | 受信 | 蘇生器は取り出したあと、中甲板のパネルMO32M・MO69Mと飛行甲板のパネルC6でオービタの酸素供給につなぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/219） | — |
| IF-CREW-05 | C&T：計装・ペイロード通信 | データ・指令 | 送信 | 生体計測系の心電図の信号はアビオニクスでデジタルデータに変え、実時間で地上へ送るか記録してあとで送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/220） | — |
| IF-CREW-09 | 収納・拘束 | 構造・荷重 | 受信 | SOMSの多くは中甲板のロッカー1つにまとめて収め、使うときに取り出して取り付ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/218） | — |
| IF-CREW-10 | 乗員系運用管理 | データ・指令 | 受信 | 機上の診断装置と乗員からの情報で、管制センターの航空医官と相談して傷病を診断・治療する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/220） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| CS-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.5節 SOMS・OBS（PDF p218〜221）：医療キット、蘇生器、生体計測を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/218） |
| CS-02 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） | 3.19節 Shuttle Orbiter Medical System（PDF p503〜）：2つのキットから成るSOMSの目的と構成を述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=503） |
| CS-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A13-22（PDF p1758）：医療キットの使用の承認と記録を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1758） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.5 Crew Systems（USA007587 Rev. A CPN-1、PDF p218） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/218
2. Shuttle Crew Operations Manual 2.5 Crew Systems（USA007587 Rev. A CPN-1、PDF p219） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/219
3. Shuttle Crew Operations Manual 2.5 Crew Systems（USA007587 Rev. A CPN-1、PDF p220） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/220
4. Shuttle Crew Operations Manual 2.5 Crew Systems（USA007587 Rev. A CPN-1、PDF p222） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/222
5. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.5節 Crew Systems（CSA-CP）（PDF p223） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/223
6. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
