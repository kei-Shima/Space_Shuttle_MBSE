# RMSアーム（ARM）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-PLS-ARM-001 |
| 表題 | RMSアーム（ARM）機能説明書 |
| 版・日付 | Rev. A／2026-10-03 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-PLS-001 |
| 関連図 | SSD-SYS-ARC-001 図66 PLS 機能構成 |

## 1. 目的

PDRSの機械の腕（RMS）の構成・関節駆動・電源・構造を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-PLS-ARM-01 | RMSはPDRSの機械の腕で、ペイロードの展開・回収、EVAの足場、宇宙ステーションの組立、ペイロードベイの点検に使い、最大586,000 lbを動かせる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/687） |
| F-PLS-ARM-02 | アームは6つの関節を構造部材（ブーム）でつなぎ、先端にエンドエフェクタを持ち、長さ50 ft 3 in・直径15 inである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/688） |
| F-PLS-ARM-03 | アームの重量は905 lb、系全体では994 lbである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/688） |
| F-PLS-ARM-04 | RMSは地上の重力の下では関節モータが腕の重さを動かせないため、無重量の環境でだけ運用できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/688） |
| F-PLS-ARM-05 | 各関節のモータはブレーキで静止状態に保たれ、ブレーキの解除には28 V DCを加え続ける必要がある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/690） |
| F-PLS-ARM-06 | 各関節のデジタルサーボ電力増幅器（SPA）は主母線Aの+28 V DCを関節の駆動に合わせ、肩の予備駆動増幅器は主母線Bの電力で選んだ関節を駆動する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/691） |
| F-PLS-ARM-07 | 上腕・下腕のブームは薄肉の黒鉛/エポキシ複合材の円管で、端のフランジはアルミ合金である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/692） |
| F-PLS-ARM-08 | 打上げ時は肩のブレースで肩ピッチの歯車列への荷重を抑え、軌道上で解除するが、軌道上で再びラッチすることはできない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/692） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-CT-11 | 閉回路テレビ | データ・指令 | 双方向 | RMSのエンドエフェクタの固定カメラ（ズーム可）と肘の下のパン・チルト付きカメラの映像をCCTVに取り込み、PDRSの作業を監視する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/695）ドッキングミッションでは、ODSに取り付けたCTVCをセンタラインカメラとして使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/138） | 上位: IF-ORB-49 |
| IF-PLS-01 | 電力系：直流配電（EPS） | 電力（28 VDC） | 受信 | 各関節のSPAは主母線Aの+28 V DCを関節の駆動に合わせ、肩の予備駆動増幅器は主母線Bの+28 V DCを使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/691） | 上位: IF-ORB-14 |
| IF-PLS-06 | RMS制御（MCIU・D&C） | データ・指令 | 双方向 | MCIUはSM GPC・表示操作部・RMSとの情報を交換・評価し、アームの電子装置（ABE）との通信のつながりを監視する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/688） | — |
| IF-PLS-07 | MPM・保持ラッチ・投棄 | 構造・荷重 | 受信 | 3つの台座の受け準備が整うと、保持ラッチのフックがRMSの打撃棒をつかんでアームを固定する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/699） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| PL-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.21節 Remote Manipulator System（PDF p687〜697）：アームの寸法・関節駆動・SPA・構造を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/690） |
| PL-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A12-115（PDF p1744）：ブレースが働かない関節があるときの運用の制約を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1744） |
| PL-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | PDRSの章の目次（PDF p24）：エンドエフェクタの故障に対する処置を挙げる。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=24） |
| PL-09 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | （PDF p10）：SRMSの肘カメラが正しく収納されていなかった事象を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=10） |
| PL-10 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | （PDF p9）：SRMSの初期化・点検と受け台前の位置への復帰を異常なく行った記録を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=9） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

> **注記** 遠隔操作アーム（RMS）の状態と遷移（図101）は [SSD-BEH-ORB-005](SSD-BEH-ORB-005.md) に示す（SysML v2 テキスト：model/SSD-BEH-ORB-005.sysml）。

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p687） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/687
2. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p688） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/688
3. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p690） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/690
4. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p691） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/691
5. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p692） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/692
6. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p695） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/695
7. Shuttle Crew Operations Manual 2.3 Closed Circuit Television（USA007587 Rev. A CPN-1、PDF p138） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/138
8. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p699） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/699
9. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-10-03 | 系の状態遷移定義書 SSD-BEH-ORB-005 への参照を注記（Rev. AI） |
