# LO2タンク（LOX）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ET-LOX-001 |
| 表題 | LO2タンク（LOX）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ET-001 |
| 関連図 | SSD-SYS-ARC-001 図72 ET 機能構成 |

## 1. 目的

ETの前方の液体酸素タンクの構造・圧力・供給と寸法を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ET-LOX-01 | ETは液体水素と液体酸素を収め、上昇中にオービタの3基のSSMEへ加圧して供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/67） |
| F-ET-LOX-02 | ETは前方のLO2タンク、電気部品の大半を収める与圧されないインタタンク、後方のLH2タンクの3つから成る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/67） |
| F-ET-LOX-03 | LO2タンクは化学切削のゴア・パネル・削り出し金具・リングコードを溶接したアルミのモノコック構造で、20〜22 psigで運用する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/68） |
| F-ET-LOX-04 | タンクは残液を減らし液の動きを抑える揺動防止・渦防止の装置を持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/68） |
| F-ET-LOX-05 | LO2は直径17 inの供給管でインタタンクを通ってETの外へ出て右後部のアンビリカルへ送られ、SSMEの104%運転で約2,787 lb/sで流れる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/68） |
| F-ET-LOX-06 | LO2タンクの二重くさびのノーズコーンは抗力と加熱を減らし、電気部品を収め、避雷針となる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/68） |
| F-ET-LOX-07 | LO2タンクは直径331 in・長さ592 in・空虚重量12,000 lbである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/68） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ET-01 | アンビリカル・弁・センサ | 推進薬・流体 | 送信 | LO2タンクは直径17 inの供給管につながり、LO2はインタタンクを通ってETの外へ出て右後部のET/オービタのアンビリカルへ送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/68） | — |
| IF-ET-03 | インタタンク | 構造・荷重 | 双方向 | インタタンクは両端のフランジでLO2タンクとLH2タンクをつなぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/68） | — |
| IF-ET-07 | 分離・投棄・飛行安全 | 推進薬・流体 | 受信 | タンブル系は分離の直前に作動し、LO2タンク前部の2 inの弁を開いて残りのガスを噴き出し、ETを回転させる推力とする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=346） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| ET-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 1.3節 Liquid Oxygen Tank（PDF p68）：LO2タンクの構造・圧力・供給管を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/68） |
| ET-02 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 5.1.1節（PDF p254）：LO2タンクの長さ・直径・容積を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=254） |
| ET-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A5-112（PDF p1062）：LO2の低レベル停止の前のLO2 NPSPを守る手動の推力低下を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1062） |
| ET-08 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | （PDF p31）：打上げ前の点検でLH2・LO2タンクに異常が無かったことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=31） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 1.3 External Tank（USA007587 Rev. A CPN-1、PDF p67） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/67
2. Shuttle Crew Operations Manual 1.3 External Tank（USA007587 Rev. A CPN-1、PDF p68） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/68
3. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） 5.4.3 Tumbling System（PDF p346） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=346
4. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
