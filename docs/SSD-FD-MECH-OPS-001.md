# MECH運用管理（OPS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-MECH-OPS-001 |
| 表題 | MECH運用管理（OPS）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-MECH-001 |
| 関連図 | SSD-SYS-ARC-001 図68 MECH 機能構成 |

## 1. 目的

機械系の駆動機構の喪失の定義、PLBD・ベント扉・ET扉の管理、MMACSのGo/No-Goなどの飛行規則を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-MECH-OPS-01 | MMACSのGo/No-Go基準は、PLBD駆動モータを扉あたり2基、ラッチ駆動モータをギャングあたり2基として扱い、脚の展開系・制動・前輪操向の判定条件を示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1665） |
| F-MECH-OPS-02 | ベント扉・PLBD・放熱器・ET扉・ペイロード保持ラッチなどの駆動機構は冗長のため2つのモータを持ち、駆動時間が1モータの時間を超えると故障とみなす。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1605） |
| F-MECH-OPS-03 | ラッチギャングに閉用のモータが2基そろっていなくても、冗長側のモータで閉じられるので機体はフェイルセーフで、1つのギャングが外れたままでも突入できる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1622） |
| F-MECH-OPS-04 | 軌道上ではベント扉を通常すべて開けておき、扉1・2の閉の冗長を失ったときは反対側の扉に開の冗長があれば閉じる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1631） |
| F-MECH-OPS-05 | ET扉の閉の項目入力は、手動の閉操作がうまくいかず、センタラインラッチが収納されて両方の扉のラッチの準備が確かめられたとき、またはAOAのときだけ使う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1629） |
| F-MECH-OPS-06 | MMACSのGo/No-Go基準は、脚の油圧・火工品の展開系の2つの喪失で次のPLSとし、制動・前輪操向による方向制御はゼロ故障許容を判定条件とする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1665） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-MECH-08 | 降着装置 | データ・指令 | 送信 | 脚の展開は、CDR（パネルF6）またはPLT（パネルF8）がLANDING GEAR ARMボタン、続いてDNボタンを押して始める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/552） | — |
| IF-MECH-09 | 制動・操向・減速傘 | データ・指令 | 送信 | ドラッグシュートは、機首下げの前にCDRかPLTの冗長な指令で手動で展開する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/546） | — |
| IF-MECH-10 | ベント・ETアンビリカル扉 | データ・指令 | 送信 | ベント扉は、マスタタイミングユニット・メジャーモードの移行・速度・DPSの項目入力で始まるGNCのソフトウェアのシーケンスで操作する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/621） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| ME-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.17節 Rules of Thumb（PDF p640）：機械系の操作でタイマを使う要点を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/640） |
| ME-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A10-241（PDF p1629）：ET扉の閉の項目入力を使う条件を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1629） |
| ME-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | MECHの章の目次（PDF p22）：非常時のPLBDの閉鎖の手順を挙げる。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=22） |
| ME-07 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | Mechanical Systems（PDF p56）：上昇中は機械系が作動しないことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=56） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-1001 MMACS Go/No-Go Criteria（PDF p1665） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1665
2. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-161 DRIVE MECHANISMS LOSS DEFINITIONS（PDF p1605） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1605
3. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-209 PLBD Rule Reference Matrix（PDF p1622） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1622
4. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-261 VENT DOOR MANAGEMENT（PDF p1631） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1631
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-241 ET UMBILICAL DOOR KEYBOARD ENTRY（PDF p1629） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1629
6. Shuttle Crew Operations Manual 2.14 Landing/Deceleration System（USA007587 Rev. A CPN-1、PDF p552） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/552
7. Shuttle Crew Operations Manual 2.14 Landing/Deceleration System（USA007587 Rev. A CPN-1、PDF p546） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/546
8. Shuttle Crew Operations Manual 2.17 Mechanical Systems（USA007587 Rev. A CPN-1、PDF p621） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/621
9. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
