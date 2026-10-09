# LH2タンク（LH2）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ET-LH2-001 |
| 表題 | LH2タンク（LH2）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ET-001 |
| 関連図 | SSD-SYS-ARC-001 図72 ET 機能構成 |

## 1. 目的

ETの後方の液体水素タンクの構造・圧力・供給と、オービタ・SRBとの結合部を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ET-LH2-01 | LH2タンクは溶接した胴の区分・5つの主リングフレーム・前後の楕円ドームから成るアルミのセミモノコック構造で、32〜34 psiaで運用する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/69） |
| F-ET-LH2-02 | タンクは渦防止のバッフルとサイフォンの出口を持ち、LH2を直径17 inの管で左後部のアンビリカルへ送り、SSMEの104%運転で465 lb/sで流れる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/69） |
| F-ET-LH2-03 | LH2タンクの前端にET/オービタの前部結合のポッド支柱、後端に2つの後部結合のボール金具とSRB/ETの後部安定支柱の取付けがある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/69） |
| F-ET-LH2-04 | LH2タンクは直径331 in・長さ1,160 in・容積53,518 ft3・乾燥重量29,000 lbである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/69） |
| F-ET-LH2-05 | 6:1の混合比に必要な量より1,100 lb多いLH2を積み、MECOの推進薬比を燃料過多にしてエンジンの浸食を防ぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/69） |
| F-ET-LH2-06 | LH2タンクのアレージ圧が27.7 psia未満ならLH2 ULLAGE PRESSスイッチで手動で制御し、ベント/リリーフ弁の低い作動圧を避けるため35 psiaを超えないようにする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1091） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-STR-01 | 前胴・前部RCSモジュール | 構造・荷重 | 双方向 | 前部のオービタ/ET結合金具は、Xo=378隔壁と前脚格納部の後方の外板構造にある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/52） | 上位: IF-ORB-36 |
| IF-STR-02 | 後胴・推力構造・ポッド | 構造・荷重 | 双方向 | オービタ/ETの2つの後部結合点は、後胴の縦通材の金具で結合する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/61） | 上位: IF-ORB-36 |
| IF-ET-02 | アンビリカル・弁・センサ | 推進薬・流体 | 送信 | LH2タンクのサイフォンの出口から、LH2を直径17 inの管で左後部のアンビリカルへ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/69） | — |
| IF-ET-04 | インタタンク | 構造・荷重 | 双方向 | インタタンクの前部のSRB/ET結合の推力ビームと金具は、SRBの荷重をLO2・LH2タンクへ分配する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/68） | — |
| IF-ET-05 | ET熱防護 | 熱 | 受信 | LH2タンクの取付部には、空気にさらされる金属の液化を防ぎ、LH2への熱の流れを減らす断熱材を使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/69） | — |
| IF-SRB-02 | ET結合・分離 | 構造・荷重 | 双方向 | 後部の結合点は上・斜め・下の3本の支柱から成り、上の支柱はSRBとETからオービタへのアンビリカルも通す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/77） | 上位: IF-SYS-02 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| ET-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 1.3節 Liquid Hydrogen Tank（PDF p69）：LH2タンクの構造・圧力・結合部を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/69） |
| ET-02 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 5.1.1節（PDF p254）：LH2タンクの長さ・直径・容積を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=254） |
| ET-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A5-154（PDF p1091）：LH2タンクの加圧の手動の制御を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1091） |
| ET-06 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | （PDF p9）：極低温の充填中にLH2のECOセンサの回路が湿りに故障した事象を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=9） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 1.3 External Tank（USA007587 Rev. A CPN-1、PDF p69） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/69
2. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A5-154 LH2 TANK PRESSURIZATION [CIL]（PDF p1091） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1091
3. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p52） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/52
4. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p61） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/61
5. Shuttle Crew Operations Manual 1.3 External Tank（USA007587 Rev. A CPN-1、PDF p68） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/68
6. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p77） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/77
7. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
