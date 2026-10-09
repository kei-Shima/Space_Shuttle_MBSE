# ペイロード保持ラッチ（PRL）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-PLS-PRL-001 |
| 表題 | ペイロード保持ラッチ（PRL）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-PLS-001 |
| 関連図 | SSD-SYS-ARC-001 図66 PLS 機能構成 |

## 1. 目的

ペイロードをペイロードベイに固定するPRLA・AKA・ブリッジ金具の構成と操作を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-PLS-PRL-01 | 展開しないペイロードはボルト止めの受動の保持具で、展開するペイロードはモータ駆動の能動の保持具で固定する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/702） |
| F-PLS-PRL-02 | オービタのペイロード保持系は、1回の飛行で最大3つのペイロードを3軸で支える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/702） |
| F-PLS-PRL-03 | 取付点は左右の縦通材とベイ底の中心線に3.933 in間隔にあり、縦通材の124点・キールの75点を展開するペイロードに使える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/702） |
| F-PLS-PRL-04 | ブリッジ金具はペイロードの荷重をオービタ構造へ伝え、PRLAとAKAの構造の取付面となる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/702） |
| F-PLS-PRL-05 | 1つのペイロードには通常3〜4個の縦通材のラッチがあり、X・Z方向の荷重を受ける2つの主ラッチと、Z方向だけを受ける安定ラッチから成る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/703） |
| F-PLS-PRL-06 | キールのラッチは側方の荷重を受け、閉じるとペイロードをY方向にベイの中心へ寄せるので、縦通材のラッチより先に閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/703） |
| F-PLS-PRL-07 | PAYLOAD RETENTION LATCHESスイッチをLATCHにすると、選んだラッチの2重の電動機に交流電力が加わって閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/705） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-PLS-04 | STR：中胴・ペイロードベイ | 構造・荷重 | 双方向 | ブリッジ金具は、ペイロードの荷重をオービタ構造へ伝え、PRLAとAKAの構造の取付面となる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/702） | 上位: IF-ORB-47 |
| IF-PLS-09 | PLS運用管理 | データ・指令 | 受信 | 展開するペイロードのPRLA・AKAは、回収が選択肢でなくなるまで閉じない。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1635） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| PL-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.21節 Payload Retention Mechanisms（PDF p702〜705）：取付点、ブリッジ金具、ラッチ、トラニオンを述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/702） |
| PL-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A10-281（PDF p1635）：PRLA・AKAの管理とEVAによる開閉を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1635） |
| PL-05 | JSC-48023 Rev. H PCN-20 | EVA Checklist（Generic） | PRLA OPEN/CLOSE（目次、PDF p50）：EVAでPRLAを開閉する手順があることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=50） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p702） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/702
2. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p703） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/703
3. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p705） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/705
4. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-281 PRLA'S/AKA'S（PDF p1635） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1635
5. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
