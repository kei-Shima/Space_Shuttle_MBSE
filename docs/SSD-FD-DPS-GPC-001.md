# 汎用計算機・冗長セット（GPC）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-DPS-GPC-001 |
| 表題 | 汎用計算機・冗長セット（GPC）機能説明書 |
| 版・日付 | Rev. A／2026-10-03 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-DPS-001 |
| 関連図 | SSD-SYS-ARC-001 図48 DPS 機能構成 |

## 1. 目的

5台のGPC（IBM AP-101S）のハードウェア構成・電源・冷却・制御スイッチと、冗長セット・共通セット・単独の運用モード、同期と故障票による故障の検知・表示を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-DPS-GPC-01 | オービタには同一のIBM AP-101S型GPCが5台あり、データバス網を通じて接続機器とデータを送受信し、機上のデータ処理の主体となるソフトウェアを収める（SCOM 2.6節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/226） |
| F-DPS-GPC-02 | GPC 1・4は中デッキ前方のアビオニクスベイ1、GPC 2・5はベイ2、GPC 3は中デッキ後方のベイ3にあり、アビオニクスベイのファン（各ベイ2台、同時に使うのは1台）による強制空冷を受ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/227） |
| F-DPS-GPC-03 | アビオニクスベイのファンが2台とも故障すると、GPCは25分（14.7 psi）または17分（10.2 psi）で過熱し、以後の動作は保証されない（SCOM 2.6節の注意）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/227） |
| F-DPS-GPC-04 | 各GPCは中央処理装置（CPU）と入出力プロセッサ（IOP）を1つの筐体に収め、筐体は19.55×7.62×10.2 in、質量は約60 lbである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/227） |
| F-DPS-GPC-05 | 主記憶は揮発性であるが、GPCの電源断の間は電池パックが内容を保持し、記憶容量256 kフルワードのうち通常は下位128 kフルワードをソフトウェアの処理に使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/227） |
| F-DPS-GPC-06 | IOPはバス制御素子（BCE）で24本のデータバスにつながり、機体各系への指令を整形・送信し、応答データを受信・検証して、CPUや他のGPCとのインタフェースの状態を保つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/227） |
| F-DPS-GPC-07 | 各GPCのGENERAL PURPOSE COMPUTER POWERスイッチ（パネルO6）はESS 1BC・2CA・3ABの電力でRPCを働かせてMN A・B・Cの直流で給電し、GPCごとにRPCが3個あるため主母線または必須母線を2つ失っても正常に動作し、1台の消費電力は560 Wである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/227） |
| F-DPS-GPC-08 | OUTPUTスイッチ（BACKUP・NORMAL・TERMINATE）はGPCが飛行重要バスへ出力するのをハードウェアで禁止でき、PASSのGNC GPCはNORMAL、BFSのGPC 5はBACKUP、軌道上のSM GPCはTERMINATEとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/228） |
| F-DPS-GPC-09 | MODEスイッチ（RUN・STBY・HALT）でGPCがソフトウェアを処理できるかを決め、他と同期できないGPCは誤った指令を出さないようできるだけ早く電源を切るかHALTにする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/228） |
| F-DPS-GPC-10 | GPCの運用モードには冗長セット・共通セット・単独（simplex）があり、冗長セットでは2台以上のGPCが同じ入力で同じGNCソフトウェアを実行して同じ出力を出し、SMとペイロードの主機能は常に単独のGPCで処理する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/229） |
| F-DPS-GPC-11 | 冗長セットの各GPCは同期した段階で動作して処理結果を毎秒数百回照合し、同期点を満たさないGPCは残りのGPCが直ちに冗長セットから票決で外す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/230） |
| F-DPS-GPC-12 | GPC STATUSマトリクス（パネルO1の5×5の灯）は各GPCの故障票を示し、黄色の対角灯（自己故障）が点灯するとパネルF7のGPC警報灯とMASTER ALARMが点灯し、DPS表示にGPCの故障メッセージが出る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/230） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ECL-08 | 大気再生系（ARS） | 熱 | 受信 | 水冷却ループは、3つのアビオニクスベイの空気／水熱交換器とコールドプレートを通じて電子機器を冷却する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/378） | 上位: IF-ORB-13 下位: IF-ARS-17 下位: IF-ARS-20 下位: IF-ARS-39 |
| IF-DPS-01 | データバス網・MDM | データ・指令 | 双方向 | 各GPCのIOPはバス制御素子（BCE）で24本のデータバスにつながり、割り当てられたバスで機体各系へ指令を送り、応答データを受信・検証する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/227）上昇・再突入では冗長セットの各GPCが割り当てられたFCストリングの指令元となり、他のGNC GPCはそのストリングを聴取する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/233） | — |
| IF-DPS-02 | 電力系（EPS） | 電力（28 VDC） | 受信 | 各GPCには、パネルO6の電源スイッチでESS 1BC・2CA・3ABの電力により働くRPCを通じて、MN A・B・Cの3つの主母線から直流電力を供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/227）1台の消費電力は560 Wで、主母線または必須母線を2つ失ってもGPCは正常に動作する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/227） | 上位: IF-ORB-14 |
| IF-DPS-15 | 飛行ソフトウェア・MMU | データ・指令 | 受信 | IPL後のGPCにはシステムソフトウェアだけがあり、応用ソフトウェアはOPS遷移の際にMMUからロードする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/265）各MMUは1本の大容量記憶データバスにだけつながり、そのバスは5台のGPCすべてにつながる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/237） | — |
| IF-DPS-16 | マスタタイミングユニット | データ・指令 | 受信 | MTUは累算器を通じて、要求に応じてシリアルデジタルの時刻データ（GMT/MET）をGPCへ出す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/240）GPCは毎秒、累算器の時刻を自身の内部時刻と照合し、差が1 ms未満なら内部時計を累算器の時刻に合わせる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/241） | — |
| IF-DPS-17 | 表示・キーボード | データ・指令 | 双方向 | 4本の表示/キーボード（DK）データバスはIDPごとに1本あって5台のGPCそれぞれにつながり、どのGPCが指令元になるかはMAJ FUNCスイッチ、メモリ構成、GPC/CRTキー入力などで決まる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/233）IDPはDKバスで受けたデータでDPS表示を更新し、GPCにポーリングされると乗員の入力とMEDSの状態を送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/249） | — |
| IF-DPS-18 | DPS運用管理 | データ・指令 | 双方向 | 故障したGPCは、上昇・再突入ではMODEスイッチでHALTにし、それ以外では電源を切り、軌道上ではDPSを構成し直して回復を試みる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1293）GPCの故障は、搭載と地上の監視により、冗長セットの故障・分裂、GPC故障、データ経路の故障として宣言する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1289） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| DP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.6節 General Purpose Computers（PDF p226〜231）：5台のAP-101S、CPU/IOP、パネルO6のスイッチ、冗長セット・共通セット・単独のモード、故障票とGPC STATUSマトリクスを示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/229） |
| DP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A7-1〜A7-4（PDF p1289〜1294）：冗長セットの故障・分裂、GPC故障、データ経路の故障を定義し、回復不能・一時故障のGPCの定義と故障したGPCの処置を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1292） |
| DP-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | GPC FRP-1 SINGLE GPC FAIL（PDF p218）：軌道上の単独のGPC故障に対して、ソフトウェア・ハードウェアのダンプ、IPLによる回復、回復したGPCの役割の決め方を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=218） |
| DP-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.5.4節（PDF p200）：DEU/GPCの入力電圧が15 V/17.5 Vを400 μs超えて下回るとDEU/GPCが停止シーケンスに入るとし、電源の入れ直しに伴う熱応力による故障率の増加を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=200） |
| DP-05 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | C.15節 Data Processing System（PDF p74）：DPSのハードウェアの解析をNASAのPost 51-Lの基準（FMEA 78件・CIL 25件）と比べ、DPSの外の故障モードを含めた4件のFMEAの是正を勧める。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=74） |
| DP-06 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 4-2 G2 SET CONTRACTION（PDF p104）：冗長なGNC GPCにG2のソフトウェアを格納してフリーズドライ（G2FD）にし、MODEスイッチをSTBY・HALTにする手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=104） |
| DP-10 | JSC-19278 | STS-8 National Space Transportation Systems Program Mission Report（1983年） | PDF p13：軌道上でGPC 1・2が冗長セットで同期を失った（共通セットには残った）が、GPC 1をIPLで回復し、再突入ではGPC 1とGPC 4のストリングの割当てを入れ替えたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf#page=13） |
| DP-13 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | PDF p54：ランデブーのためにトリプルG2へ共通セットを広げる際、GPC 3が予期せず共通セットから外れたが、ユーザノートで説明のつく事象とされたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=54） |
| DP-15 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | PDF p10：ランデブー前のGroup Bの電源投入でGPC 3が共通セットに加わった後にHALTになり、IPLの再ロードで回復したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=10） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：親の説明書のF-DPS-03は上昇・再突入の冗長セットを4台のGPCとするが、SCOMは冗長セットを2台以上のGPCが同じGNCソフトウェアを実行するモードと定義し、軌道上の非臨界期間はGNCに1〜2台を使うとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/229）

> **注記** 故障したGPCの記憶内容は、パネルM042FのGPC MEMORY DUMPスイッチを使うハードウェア起動の単独メモリダンプ（HISAM、2〜8分）で取り出せる。本書ではダンプの基準（A7-17）を運用管理（OPS）の規則として扱う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/231）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

> **注記** GPC（汎用計算機）の状態と遷移（図98）は [SSD-BEH-ORB-005](SSD-BEH-ORB-005.md) に示す（SysML v2 テキスト：SysML/SSD-BEH-ORB-005.sysml）。

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p226） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/226
2. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p227） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/227
3. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p228） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/228
4. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p229） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/229
5. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p230） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/230
6. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Water Loop Flow（PDF p378） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/378
7. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p233） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/233
8. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p265） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/265
9. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p237） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/237
10. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p240） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/240
11. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.6節 Master Timing Unit（PDF p241） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/241
12. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p249） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/249
13. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A7-3 GPC FAILURE（PDF p1293） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1293
14. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A7-1 PASS DPS FAILURE（PDF p1289） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1289
15. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p231） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/231
16. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-10-03 | 系の状態遷移定義書 SSD-BEH-ORB-005 への参照を注記（Rev. AI） |
