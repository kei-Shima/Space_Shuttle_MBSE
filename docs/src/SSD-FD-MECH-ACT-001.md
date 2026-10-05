# 電動駆動（PDU・MCA）（ACT）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-MECH-ACT-001 |
| 表題 | 電動駆動（PDU・MCA）（ACT）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-MECH-001 |
| 関連図 | SSD-SYS-ARC-001 図68 MECH 機能構成 |

## 1. 目的

機械系の構成品を動かす電動アクチュエータ（PDU）と、その電力・指令を受け持つモータ制御組立（MCA）を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-MECH-ACT-01 | 機械系はオービタの展開・収納・開閉する構成品で、それぞれを電動または油圧のアクチュエータが動かす。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/619） |
| F-MECH-ACT-02 | 機械系には能動ベント系・ETアンビリカル扉・ペイロードベイドア・展開式放熱器・着陸減速系があり、放熱器は2.9節、着陸減速系は2.14節で扱われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/619） |
| F-MECH-ACT-03 | 電動アクチュエータ（PDU）は2つの3相交流モータ・ブレーキ・差動組立・歯車箱・リミットスイッチを持ち、ET扉のセンタラインラッチ以外はトルクリミッタも持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/619） |
| F-MECH-ACT-04 | アクチュエータのモータとリミットスイッチの電力はモータ制御組立（MCA）から供給され、MCAはパネルMA73CのMCA LOGICスイッチと遮断器で給電される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/619） |
| F-MECH-ACT-05 | 通常はアクチュエータの2つの交流モータが同時に動き（2モータ駆動）、1つだけで動かすと所定の位置まで2倍の時間がかかる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/619） |
| F-MECH-ACT-06 | MCAへのモータの入切の指令は、GPC、DPSの項目入力、またはハードワイヤのスイッチから出る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/619） |
| F-MECH-ACT-07 | 機械系を操作するときは常にタイマを使い、1モータの時間を過ぎても所定の状態にならなければ駆動の指令を続けない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/640） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-DPS-10 | データバス網・MDM | データ・指令 | 受信 | GPC、DPSの項目入力または配線スイッチから出た機構の指令を、MDM経由でMCAへ送って電動アクチュエータの交流モータを入切する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/619）各アクチュエータのモータは別々のMDMから指令されるため、1台のMDMを失ってもアクチュエータ全体は失われない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/619） | 上位: IF-ORB-40 |
| IF-MECH-01 | 電力系：直流配電（EPS） | 電力（28 VDC） | 受信 | アクチュエータのモータとリミットスイッチの電力は、モータ制御組立（MCA）から供給される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/619） | 上位: IF-ORB-14 |
| IF-MECH-05 | ペイロードベイドア | 構造・荷重 | 送信 | 各ドアは2つの3相交流モータを持つ1つの電動アクチュエータで開閉し、各ラッチギャングも1つの電動アクチュエータで駆動される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/627） | — |
| IF-MECH-06 | ベント・ETアンビリカル扉 | 構造・荷重 | 送信 | 各ベント扉は、それぞれの電動アクチュエータで内側へ動かされる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/621） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| ME-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.17節 Electromechanical Actuators（PDF p619〜620）：PDUの構成とMCAからの電力・指令を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/619） |
| ME-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A10-161（PDF p1605）：駆動機構の喪失の定義を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1605） |
| ME-04 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | P-42 PAYLOAD BAY DOOR SYS ENABLE RECOVERY（目次、PDF p42）：PLBDの駆動系の有効化を回復する手順があることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=42） |
| ME-05 | JSC-48023 Rev. H PCN-20 | EVA Checklist（Generic） | PLBD DRIVE CUT（目次、PDF p50）：EVAでPLBDの駆動系を切り離す手順があることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=50） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.17 Mechanical Systems（USA007587 Rev. A CPN-1、PDF p619） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/619
2. Shuttle Crew Operations Manual 2.17 Mechanical Systems（USA007587 Rev. A CPN-1、PDF p640） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/640
3. Shuttle Crew Operations Manual 2.17 Mechanical Systems（USA007587 Rev. A CPN-1、PDF p627） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/627
4. Shuttle Crew Operations Manual 2.17 Mechanical Systems（USA007587 Rev. A CPN-1、PDF p621） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/621
5. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
