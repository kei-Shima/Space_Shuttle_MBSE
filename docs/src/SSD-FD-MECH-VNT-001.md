# ベント・ETアンビリカル扉（VNT）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-MECH-VNT-001 |
| 表題 | ベント・ETアンビリカル扉（VNT）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-MECH-001 |
| 関連図 | SSD-SYS-ARC-001 図68 MECH 機能構成 |

## 1. 目的

与圧されない区画を外気と等圧にする能動ベント系と、ETのアンビリカルの開口を覆うET扉を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-MECH-VNT-01 | 能動ベント系は、大気中から真空へ移る間に与圧されない区画を外気と等圧にする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/621） |
| F-MECH-VNT-02 | 能動ベント系は胴体の左右各7つ、計14のベント口から成り、各扉は圧力シールと熱シールを持ち、電動アクチュエータで内側へ動く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/621） |
| F-MECH-VNT-03 | ベント扉は2モータ駆動でそれぞれ5秒で開閉し、一部の扉は地上のパージのための中間位置を持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/621） |
| F-MECH-VNT-04 | ベント扉はGNCのソフトウェアのシーケンスで操作し、秒読みのT-28秒にRSLSが開のシーケンスを呼ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/621） |
| F-MECH-VNT-05 | ETとオービタの燃料・電気のアンビリカルは機体下面の2つの後部の開口から入り、左の空洞に液体水素、右の空洞に液体酸素のアンビリカルがある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/623） |
| F-MECH-VNT-06 | ET分離後、ET扉を閉じて露出した開口を突入の加熱から守り、扉はTPSのタイルで覆われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/623） |
| F-MECH-VNT-07 | ET扉にはセンタラインラッチ（上昇中に扉を開いたまま保つ）とアップロックラッチ（閉じた扉を固定する）がある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/623） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-MECH-04 | 構造（STR） | 構造・荷重 | 双方向 | 能動ベント系は胴体の左右各7つ、計14のベント口から成る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/621） | 上位: IF-ORB-38 |
| IF-MECH-06 | 電動駆動（PDU・MCA） | 構造・荷重 | 受信 | 各ベント扉は、それぞれの電動アクチュエータで内側へ動かされる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/621） | — |
| IF-MECH-10 | MECH運用管理 | データ・指令 | 受信 | ベント扉は、マスタタイミングユニット・メジャーモードの移行・速度・DPSの項目入力で始まるGNCのソフトウェアのシーケンスで操作する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/621） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| ME-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.17節 Active Vent System・ET Umbilical Doors（PDF p621〜627）：ベント口とET扉を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/621） |
| ME-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A10-261（PDF p1631）：軌道上・突入のベント扉の管理を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1631） |
| ME-06 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | Vent Door Operations（PDF p67）：ベント扉の運用の制約を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=67） |
| ME-07 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | Mechanical Systems（PDF p56）：打上げ前のベント扉の操作、軌道投入後のET扉の閉鎖、突入準備のベント扉の位置変更の記録を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=56） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.17 Mechanical Systems（USA007587 Rev. A CPN-1、PDF p621） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/621
2. Shuttle Crew Operations Manual 2.17 Mechanical Systems（USA007587 Rev. A CPN-1、PDF p623） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/623
3. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
