# MPM・保持ラッチ・投棄（MPM）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-PLS-MPM-001 |
| 表題 | MPM・保持ラッチ・投棄（MPM）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-PLS-001 |
| 関連図 | SSD-SYS-ARC-001 図66 PLS 機能構成 |

## 1. 目的

アームを支えて展開・収納するMPM、アームを固定するMRL、アームを切り離す投棄系を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-PLS-MPM-01 | MPMはトルクチューブ、その上の台座、MRL、投棄系から成る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/698） |
| F-PLS-MPM-02 | 左舷のMPMは肩の取付点（X=679.5）とX=911.05・1189・1256.5の3つの台座から成り、各台座は2つの45°の受け台と保持ラッチを持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/698） |
| F-PLS-MPM-03 | MPMの駆動系は2重の冗長モータでトルクチューブを回し、アームを収納位置からペイロードベイ外の運用位置へ回転させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/698） |
| F-PLS-MPM-04 | アームは左舷の縦通材に沿って後・中・前の3か所でラッチされ、保持ラッチは冗長モータで駆動される2重の回転面である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/699） |
| F-PLS-MPM-05 | アームやOBSSを受け台に戻せないときは、ペイロードベイドアを閉められるよう投棄でき、左舷には肩と3つの台座の4つの分離点がある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/699） |
| F-PLS-MPM-06 | 肩の取付点の配線束は、支持部を分離する前に冗長な火工品式ギロチンで切断する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/699） |
| F-PLS-MPM-07 | 右舷のMPMの台座はOBSSを支え、前方のMPMはラッチ時にOBSSへヒータ電力を与える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/698） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-PLS-03 | STR：中胴・ペイロードベイ | 構造・荷重 | 双方向 | RMSはペイロードベイの左舷の縦通材に取り付け、受け台の3つのMPM台座のMRLで打上げ・突入の間アームを固定する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/687） | 上位: IF-ORB-47 |
| IF-PLS-07 | RMSアーム | 構造・荷重 | 送信 | 3つの台座の受け準備が整うと、保持ラッチのフックがRMSの打撃棒をつかんでアームを固定する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/699） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| PL-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.21節 Manipulator Positioning Mechanism（PDF p698〜701）：MPMの台座・トルクチューブ・MRL・投棄系を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/698） |
| PL-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A12-72（PDF p1734）：MPMの展開・収納の制約を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1734） |
| PL-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 12.5 MPM/MRL（PDF p24）：MPMの展開・収納の表示が正常でないときの処置を挙げる。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=24） |
| PL-04 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | MPM CONTINGENCY DEPLOY/STOW（目次、PDF p42）：MPMを非常時に展開・収納する手順があることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=42） |
| PL-05 | JSC-48023 Rev. H PCN-20 | EVA Checklist（Generic） | MPM STOW/DEPLOY（目次、PDF p50）：EVAでMPMを収納・展開する手順があることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=50） |
| PL-06 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | （PDF p126）：MPMが不意に動かないよう遮断器を抜いて安全にする手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=126） |
| PL-08 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | （PDF p11）：左舷・右舷のMPMを展開した時刻とOBSSとの間隔の確認を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=11） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p698） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/698
2. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p699） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/699
3. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p687） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/687
4. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
