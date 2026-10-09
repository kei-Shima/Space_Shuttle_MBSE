# PLS運用管理（OPS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-PLS-OPS-001 |
| 表題 | PLS運用管理（OPS）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-PLS-001 |
| 関連図 | SSD-SYS-ARC-001 図66 PLS 機能構成 |

## 1. 目的

RMS・MPM・PRLA・APDSの運用の手順と、ロボティクス・機械系の飛行規則（Go/No-Go・EVAによる冗長・投棄）を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-PLS-OPS-01 | RMSの運用の前に肩のブレースを解除し、荷物を持つ運用ではMPMを展開しておく。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/705） |
| F-PLS-OPS-02 | RMSの点検は約1時間の手順で1飛行に1回だけ行い、問題に対処する時間を取るためできるだけ早く組む。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/705） |
| F-PLS-OPS-03 | RMSのGo/No-Go基準は、肩のブレースの解除・投棄系・MPMの収納モータ・MRLなどの喪失の数について、受け台から出す・荷物なし・つかむ・荷物ありの各運用を続けられるかを示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1753） |
| F-PLS-OPS-04 | EVAは、PDRS（エンドエフェクタの解放、MPMの収納、MRLのラッチ、肩のブレースの解除、RMSの受け台への収納）の故障に対して冗長の1段として扱われる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=590） |
| F-PLS-OPS-05 | RMSとペイロードを投棄しなければならないときは、宇宙に浮かぶ物体を減らすため、できる限り1つにまとめて投棄する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1752） |
| F-PLS-OPS-06 | 回収の可能性を残すため、展開するペイロードのPRLA・AKAは回収が選択肢でなくなるまで閉じず、故障したPRLAはEVAで開閉することを考える。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1635） |
| F-PLS-OPS-07 | CCTVのカメラは肝心なときに故障しやすいので、RMSの運用には少なくとも2つのよいカメラの視野を用意する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/715） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-EVA-12 | 非常時の手順 | 構造・荷重 | 受信 | RMS・PRLAの故障時に、RMSの固縛、MPMの手動での格納・展開、関節の位置合わせ、グラプル軸の解放、PRLAの手動での開閉をEVAで行う。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=173）ODSとPMAの捕獲ラッチも、EVAで手動で解放できる。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=189） | — |
| IF-PLS-08 | RMS制御（MCIU・D&C） | データ・指令 | 送信 | RMSの運用の前に、肩のブレースの解除、MPMの展開、SPEC 94の呼出しとSM GPCとのインタフェースの確立を行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/705） | — |
| IF-PLS-09 | ペイロード保持ラッチ | データ・指令 | 送信 | 展開するペイロードのPRLA・AKAは、回収が選択肢でなくなるまで閉じない。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1635） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| PL-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.21節 Operations・Rules of Thumb（PDF p705〜716）：初期化・電源投入・点検の手順と運用の要点を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/715） |
| PL-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A12-1001（PDF p1753）：RMSの各運用を続けるためのGo/No-Go基準を示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1753） |
| PL-05 | JSC-48023 Rev. H PCN-20 | EVA Checklist（Generic） | RMS/PRLA CONTINGENCY EVA（PDF p173）：RMS・PRLAの故障に対する非常時のEVAの手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=173） |
| PL-09 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | （PDF p12）：SRMSの電源投入と点検を問題なく行い、OBSSを取り出した記録を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=12） |
| PL-10 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | （PDF p9）：SRMSの軌道上の初期化と点検を終えた時刻を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=9） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p705） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/705
2. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A12-1001 RMS GO/NO-GO CRITERIA（PDF p1753） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1753
3. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A2-104 Systems Redundancy Requirements（PDF p590） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=590
4. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A12-182 RMS/PAYLOAD JETTISON（PDF p1752） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1752
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-281 PRLA'S/AKA'S（PDF p1635） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1635
6. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p715） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/715
7. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 14-3 RMS/PRLA CONTINGENCY EVA（PDF p173） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=173
8. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 14-19 CAPTURE LATCH MANUAL RELEASE (ODS/PMA)（PDF p189） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=189
9. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
