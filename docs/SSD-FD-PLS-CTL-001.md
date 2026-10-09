# RMS制御（MCIU・D&C）（CTL）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-PLS-CTL-001 |
| 表題 | RMS制御（MCIU・D&C）（CTL）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-PLS-001 |
| 関連図 | SSD-SYS-ARC-001 図66 PLS 機能構成 |

## 1. 目的

RMSの制御を受け持つMCIU・手動制御器・表示操作部と、組込み試験・操作員の分担を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-PLS-CTL-01 | MCIUの主な機能はSM GPC・表示操作部・RMSとの情報の交換と評価で、データの処理、故障への対応、エンドエフェクタの自動捕獲・解放の論理を受け持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/689） |
| F-PLS-CTL-02 | RMSの飛行では予備のMCIUを積むのが普通で、故障したMCIUを飛行中に交換できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/689） |
| F-PLS-CTL-03 | 並進ハンドコントローラ（THC）は、ソフトウェアで定めた分解点（POR）の3次元の直線運動を手動で指令する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/689） |
| F-PLS-CTL-04 | 回転ハンドコントローラ（RHC）はピッチ・ヨー・ロールの指令を出し、握りに速度保持・速度切替・捕獲/解放のスイッチを持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/689） |
| F-PLS-CTL-05 | 軌道上の運用は2人の操作員で行い、R1は左舷の後部飛行甲板でアームの軌跡を、R2は右舷でDPSの入力・PRLA・カメラを操作する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/688） |
| F-PLS-CTL-06 | RMSは組込み試験で重大な故障を検知し、パネルA8Uの表示灯とDPS表示に出し、テレメトリで地上へ送れる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/688） |
| F-PLS-CTL-07 | MCIUは、ABE・表示操作部・SM GPCとの通信のつながり、エンドエフェクタの機能、自身の健全性を監視する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/688） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-DPS-13 | 飛行ソフトウェア・MMU | データ・指令 | 双方向 | RMSのMCIUは、SM GPC、表示・操作器、RMSの間の情報のやり取りを取り扱って評価する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/689）打上げデータバス1は、軌道上でSM GPCがRMSの制御器とのインタフェースに使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/233） | 上位: IF-ORB-48 |
| IF-PLS-06 | RMSアーム | データ・指令 | 双方向 | MCIUはSM GPC・表示操作部・RMSとの情報を交換・評価し、アームの電子装置（ABE）との通信のつながりを監視する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/688） | — |
| IF-PLS-08 | PLS運用管理 | データ・指令 | 受信 | RMSの運用の前に、肩のブレースの解除、MPMの展開、SPEC 94の呼出しとSM GPCとのインタフェースの確立を行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/705） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| PL-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.21節 MCIU・THC・RHC（PDF p689〜690）：MCIUの機能と手動制御器を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/689） |
| PL-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A12-9（PDF p1730）：MCIUの組込み試験の無効化の扱いを定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1730） |
| PL-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | PDRSの章の目次（PDF p23）：C/WのMCIU灯やGPCデータ灯に対する処置を挙げる。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=23） |
| PL-04 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | R-29 MCIU CHANGEOUT（目次、PDF p42）：故障したMCIUを予備と交換する手順があることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=42） |
| PL-07 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | （PDF p44）：MCIUのテレメトリデータに関する飛行中の事象を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=44） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p689） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/689
2. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p688） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/688
3. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p233） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/233
4. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p705） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/705
5. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
