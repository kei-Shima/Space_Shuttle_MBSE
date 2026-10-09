# インタタンク（ITK）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ET-ITK-001 |
| 表題 | インタタンク（ITK）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ET-001 |
| 関連図 | SSD-SYS-ARC-001 図72 ET 機能構成 |

## 1. 目的

LO2・LH2タンクをつなぐインタタンクの構造、計装、地上アンビリカル板、SRBの前部結合を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ET-ITK-01 | インタタンクは鋼/アルミのセミモノコックの円筒構造で、両端のフランジでLO2タンクとLH2タンクをつなぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/68） |
| F-ET-ITK-02 | インタタンクはETの計装の部品を収め、地上設備のアームとつながるアンビリカル板（パージガス・危険ガスの検知・水素のボイルオフ）を持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/68） |
| F-ET-ITK-03 | インタタンクは飛行中にベントされる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/68） |
| F-ET-ITK-04 | インタタンクには前部のSRB/ET結合の推力ビームと金具があり、SRBの荷重をLO2・LH2タンクへ分配する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/68） |
| F-ET-ITK-05 | インタタンクは長さ270 in・直径331 in・重量12,100 lbである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/68） |
| F-ET-ITK-06 | ETの構造は推進薬タンクとなり、オービタ・SRBとの間で応力の荷重を受けて分配し、スペースシャトル全体の荷重経路の連続を与える。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=254） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ET-03 | LO2タンク | 構造・荷重 | 双方向 | インタタンクは両端のフランジでLO2タンクとLH2タンクをつなぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/68） | — |
| IF-ET-04 | LH2タンク | 構造・荷重 | 双方向 | インタタンクの前部のSRB/ET結合の推力ビームと金具は、SRBの荷重をLO2・LH2タンクへ分配する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/68） | — |
| IF-SRB-01 | ET結合・分離 | 構造・荷重 | 双方向 | 前部の結合点は、1本のボルトで保持されたSRBの玉とETの受けから成り、射場安全系のクロスストラップの配線も通す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/77） | 上位: IF-SYS-02 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| ET-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 1.3節 Intertank（PDF p68）：インタタンクの構造と役割を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/68） |
| ET-02 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 5.1.1節（PDF p254）：インタタンクの寸法・ベント・飛行中の圧力を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=254） |
| ET-07 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | （PDF p37）：インタタンクの電気機器と計装が満足に動いたことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=37） |
| ET-08 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | （PDF p31）：打上げ前の点検でインタタンクにひびが見られたことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=31） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 1.3 External Tank（USA007587 Rev. A CPN-1、PDF p68） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/68
2. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） 5.1.1 Structures Subsystem（PDF p254） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=254
3. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p77） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/77
4. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
