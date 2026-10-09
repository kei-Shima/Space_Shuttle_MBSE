# DPS運用管理（OPS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-DPS-OPS-001 |
| 表題 | DPS運用管理（OPS）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-DPS-001 |
| 関連図 | SSD-SYS-ARC-001 図48 DPS 機能構成 |

## 1. 目的

運用飛行規則第7章と故障処置手順・軌道上運用チェックリストによるDPSの運用管理（GPCの主機能構成、故障の判定と回復、データ経路の再構成、BFSの管理、冗長度要求とGo/No-Go）を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-DPS-OPS-01 | 軌道上の公称のGPC構成は、GPC 1がGNC 2、GPC 2がGNC 2（電力節約のためフリーズドライ可）、GPC 3がGNC 2（またはGNC 3）のフリーズドライ、GPC 4がSM 2、GPC 5がBFSである（A7-13A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1303） |
| F-DPS-OPS-02 | 上昇・再突入の動的段階で冗長セットが故障した場合は、機体の制御を取り戻すためBFSをエンゲージする（A7-8）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1298） |
| F-DPS-OPS-03 | 故障したGPCは、上昇（MM 102〜104）・再突入（MM 304・305・601〜603）ではできるだけ早くHALTにし、それ以外ではできるだけ早く電源を切り、軌道上ではA7-13・A7-102に従ってDPSを構成して回復を試みる（A7-3）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1293） |
| F-DPS-OPS-04 | IPLに応答しないGPC、原因不明で2回以上故障したGPC、FCまたはICCのBCE受信器が故障したGPCは回復不能とし、冗長セット・共通セットにもBFSにも使わない（A7-2）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1292） |
| F-DPS-OPS-05 | 一時故障のGPCは、軌道上では安全上重要な運用を除いて冗長なGNC GPCに使い、電力節約のためフリーズドライのGNC 2にもでき、再突入に使うときはストリング4を割り当てる（A7-13C）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1304） |
| F-DPS-OPS-06 | ランデブー・近傍運用、ペイロード回収、有人自由飛行体を伴うEVA、安全上重要なOMS/RCS噴射には冗長なGNC GPCを要し、BFSはPASSのDPS冗長度要求に数えない（A7-11・A7-12）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1302） |
| F-DPS-OPS-07 | 2台のGNC GPCでの軌道上の公称のストリング割当ては、ストリング1・3を一方、2・4を他方とし、一方のGNC GPCが故障しても連続して機体を制御できるようにする（A7-102C）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1321） |
| F-DPS-OPS-08 | MM 102ではFC・ペイロードMDMのポートモードは重要な系の能力を回復するために必要な場合だけ行い、MM 102後〜MECO前は重要な能力の回復か2つ目の故障の後に行える（A7-105A・B）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1327） |
| F-DPS-OPS-09 | EOMまで続けるには、回復不能と宣言したGPCが1台以内であること、必要なLRUと表示の冗長度を支えるデータ経路、軌道離脱用PASSソフトウェアの独立した2つの源（MMU 2台、またはG3アーカイブ／G3フリーズドライのGPCとMMU 1台）を要する（A7-201）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1338） |
| F-DPS-OPS-10 | DPSのGo/No-Go表の根拠では、多重故障は一般的な故障の兆候でありうるとしてGPC 2台・IDP 2台（MEDSの機体）の喪失でMDFとし、MMU 2台の喪失も以後のGPC・DEUの回復ができなくなるためMDFとする（A7-1001）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1341） |
| F-DPS-OPS-11 | 軌道上で単独のGPCが故障した場合は、動作中のPASS GPCのソフトウェアダンプと故障GPCのハードウェアダンプ（HISAM）を取ってIPLで回復を試み、回復したGPCを冗長なG2・G2FD・SMのいずれかにする（GPC FRP-1）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=218） |
| F-DPS-OPS-12 | アビオニクスベイの冷却を失った場合は、GPCの過熱を防ぐためG2・SM・BFSの機能を冷却の効くベイのGPCへ移し、冷却のないベイのGPCにはG3FD・G2FDを置いてHALTにする（GPC FRP-7）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=239） |
| F-DPS-OPS-13 | STS-135では乗員睡眠中にSM GPCであったGPC 4が故障してMASTER ALARMが出たため、GPC 2をPASSのSM GPCに割り当て直してDPSを安定な構成に戻した（IFA STS-135-V-08）。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=13） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-DPS-18 | 汎用計算機・冗長セット | データ・指令 | 双方向 | 故障したGPCは、上昇・再突入ではMODEスイッチでHALTにし、それ以外では電源を切り、軌道上ではDPSを構成し直して回復を試みる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1293）GPCの故障は、搭載と地上の監視により、冗長セットの故障・分裂、GPC故障、データ経路の故障として宣言する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1289） | — |
| IF-DPS-19 | データバス網・MDM | データ・指令 | 送信 | MECO後のFC・ペイロードMDMの故障では、非普遍I/Oエラーの場合を除き、DPS UTILITY表示の項目入力でどの有効なOPSのどのメジャーモードでもポートモードによる回復を試みられる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1328）データ経路の故障の後は、MDMの電源を切って入れ直して出力をリセットする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1320） | — |
| IF-DPS-20 | マスタタイミングユニット | データ・指令 | 送信 | MTUとGPCのGMTの誤差は、SPEC 2 TIMEが使えるときは100 ms以下に保ち、誤差がその閾値を超えたら15 msの更新を行う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1330）MTUのBITEビット4が立ってMCCがMTUの時刻差の増加を見た場合などは、MECO後からHAC進入までの間に発振器を手動で切り替える。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1331） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| DP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.6節 DPS Rules of Thumb（PDF p281）：同期できないGPCのHALT、OPS遷移の前のNBATの確認、IDPを複数のGPCに分散することなど、運用上の心得を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/281） |
| DP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A7-13・A7-201・A7-1001（PDF p1303〜1306、p1338〜1342）：GPCの主機能構成、EOMまで続けるための冗長度要求、DPSのGo/No-Go表を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1338） |
| DP-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | GPC FRP-7（PDF p239）：アビオニクスベイの冷却を失ったときに、G2・SM・BFSの機能を冷却の効くベイのGPCへ移すDPSの再構成を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=239） |
| DP-06 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 4-4 G2 SET EXPANSION（PDF p106）：G2FDのGPCをRUNにしてデュアル・トリプルG2のセットに広げる手順と、PASS GPCをRUNにする前後10秒はキーボード入力とスイッチ操作をしない注意を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=106） |
| DP-10 | JSC-19278 | STS-8 National Space Transportation Systems Program Mission Report（1983年） | PDF p8：GPC 1の同期の喪失はダンプの解析でCPUのレジスタの1ビットの欠落と分かり、回復したGPC 1は再突入で最も重要度の低いストリング4に置いたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf#page=8） |
| DP-13 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | PDF p13：GPC 3を除いたデュアルG2でランデブーを進めることにし、GPC 1・3のダンプを解析して、以後のGPC 3の使用に制約はないとしたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=13） |
| DP-15 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | PDF p13〜14：SM GPCのGPC 4の故障（IFA STS-135-V-08）でGPC 2をSM GPCにし、GPC 1・4のデータを地上へ降ろした後、IPLでGPC 4を回復してフリーズドライにしたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=13） |

## 5. 注記（出典間の相違・構成変更）

> **注記** STS-135ではその後GPC 1・4のデータを地上へ降ろして解析し、IPLの再ロードでGPC 4を回復してフリーズドライの状態にした。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=14）

> **注記** 検証メモ：運用飛行規則A7-1001の表（PDF p1340）は抽出テキストでは要求数の記号が読めないため、本書ではGPC・IDP・MMUの喪失の扱いを規則の根拠の文（PDF p1341〜1342）から記した。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1340）

> **注記** GPC 3台の喪失は一般的な問題の兆候でありうるうえ、さらに1台故障すると1台のPASS GPCで再突入することになるため、NEXT PLSとする（A7-1001の根拠）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1342）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A7-13 GPC MAJOR FUNCTION CONFIGURATION（PDF p1303） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1303
2. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A7-8 REDUNDANT SET FAILURE（PDF p1298） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1298
3. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A7-3 GPC FAILURE（PDF p1293） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1293
4. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A7-2 UNRECOVERABLE GPC（PDF p1292） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1292
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A7-13 GPC MAJOR FUNCTION CONFIGURATION（PDF p1304） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1304
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A7-11 GNC GPC REDUNDANCY REQUIREMENTS（PDF p1302） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1302
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A7-102 PASS DATA BUS ASSIGNMENT CRITERIA（PDF p1321） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1321
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A7-105 MDM PORT MODING（PDF p1327） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1327
9. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A7-201 DPS Redundancy Requirements（PDF p1338） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1338
10. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A7-1001 DPS GO/NO-GO MATRIX（PDF p1341） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1341
11. JSC-48027 Rev. F Malfunction Procedures（MAL） GPC FRP-1 SINGLE GPC FAIL（PDF p218） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=218
12. JSC-48027 Rev. F Malfunction Procedures（MAL） GPC FRP-7 DPS RECONFIG FOR LOSS OF AV BAY COOLING（PDF p239） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=239
13. STS-135 Mission Report Flight Day 7（GPC 4 failure）（PDF p13） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=13
14. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A7-1 PASS DPS FAILURE（PDF p1289） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1289
15. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A7-105 MDM PORT MODING（PDF p1328） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1328
16. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A7-101 POWER CYCLING/MANAGEMENT（PDF p1320） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1320
17. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A7-107 TIME MANAGEMENT（PDF p1330） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1330
18. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A7-107 TIME MANAGEMENT（PDF p1331） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1331
19. JSC 37461 STS-135 Space Shuttle Mission Report（2011年） Flight Day 8〜9（IFA STS-135-V-05）（PDF p14） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=14
20. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A7-1001 DPS GO/NO-GO MATRIX（PDF p1340） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1340
21. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A7-1001 DPS GO/NO-GO MATRIX（PDF p1342） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1342
22. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
