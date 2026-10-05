# 居住・衛生（HAB）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-CREW-HAB-001 |
| 表題 | 居住・衛生（HAB）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-CREW-001 |
| 関連図 | SSD-SYS-ARC-001 図64 CREW 機能構成 |

## 1. 目的

乗員の被服・衛生・睡眠・運動・清掃の装備と、その使い方を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-CREW-HAB-01 | 乗員の被服は飛行前に各乗員が必須・任意の装備の一覧から選び、軌道上ではズボン・上着・シャツ・睡眠用ショーツなどを着る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/209） |
| F-CREW-HAB-02 | 洗顔用の常温の温水はギャレーの補助ポートにつないだ個人衛生ホース（PHH）から得て、ほかの衛生用品は中甲板のロッカーなどに収める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/209） |
| F-CREW-HAB-03 | 1日は通常8時間の睡眠と16時間の活動に分ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/209） |
| F-CREW-HAB-04 | 睡眠設備は寝袋とライナー、または寝台ごとに寝袋1つとライナー2つの固定式睡眠ステーションで、寝袋は中甲板右舷の壁に取り付けて軌道上で移す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/210） |
| F-CREW-HAB-05 | 24時間運用のミッションでは4段の固定式睡眠ステーションを中甲板右舷に置き、各段は照明と換気の吸気口・排気口を持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/210） |
| F-CREW-HAB-06 | 運動は心肺機能の低下と骨・筋肉の減少を防ぐためで、主な器具は中甲板の床のスタッドに取り付ける自転車エルゴメータ（CE）である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/212） |
| F-CREW-HAB-07 | 各乗員は1日に何度か5〜15分の清掃作業（廃棄物処理区画・食事区域・空気フィルタの清掃、ごみ処理、LiOHキャニスタの交換）を行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/212） |
| F-CREW-HAB-08 | 中甲板の床下の8 ft3の湿ったごみの収納区画（Volume F）は、臭気を抑えるため船外へ約3 lb/日で排気する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/213） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-CREW-01 | ECLSS：ギャレー給水 | 推進薬・流体 | 受信 | 洗顔用の常温の温水は、ギャレーの補助ポートにつないだ個人衛生ホース（PHH）から得る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/209） | 上位: IF-ORB-44 |
| IF-CREW-08 | 収納・拘束 | 構造・荷重 | 受信 | 個人の衛生用品は打上げ時に中甲板のロッカーや収納袋に収め、軌道上で取り出して使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/209） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| CS-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.5節 Sleeping Provisions（PDF p209〜211）：睡眠の時間の割り振り、寝袋と固定式睡眠ステーションを述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/210） |
| CS-02 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） | 3.15節 Personal Hygiene Provisions（PDF p359〜）：個人衛生ホース・衛生キット・タオルなどを述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=359） |
| CS-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A13-33（PDF p1771）：処方の運動を組む頻度と運動の内容を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1771） |
| CS-04 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | CYCLE ERGOMETER OPS（PDF p87）：エルゴメータを床から外して運動の場所の座席スタッドに取り付ける手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=87） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.5 Crew Systems（USA007587 Rev. A CPN-1、PDF p209） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/209
2. Shuttle Crew Operations Manual 2.5 Crew Systems（USA007587 Rev. A CPN-1、PDF p210） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/210
3. Shuttle Crew Operations Manual 2.5 Crew Systems（USA007587 Rev. A CPN-1、PDF p212） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/212
4. Shuttle Crew Operations Manual 2.5 Crew Systems（USA007587 Rev. A CPN-1、PDF p213） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/213
5. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
