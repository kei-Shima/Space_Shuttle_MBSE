# 運用管理（規則・処置）（OPS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-OMS-OPS-001 |
| 表題 | 運用管理（規則・処置）（OPS）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-OMS-001 |
| 関連図 | SSD-SYS-ARC-001 図52 OMS 機能構成 |

## 1. 目的

OMS噴射の選択と実施手順、噴射シーケンス、推進薬の予算とレッドライン、重心の管理、故障時の構成の切替とGo/No-Go基準など、運用飛行規則と手順書によるOMSの運用管理を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-OMS-OPS-01 | 6 fps未満の速度変化にはRCSを使い、6 fpsを超える場合はエンジンの寿命の点で始動回数を減らすため1基の噴射が好まれ、大きな速度変化や重要な噴射には2基を使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/641） |
| F-OMS-OPS-02 | OMS噴射はMM 104、105、202、302でのみ行え、OMSの推進薬投棄はMM 102、103、304、601、602で行える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/643） |
| F-OMS-OPS-03 | 乗員はMNVR表示で2基・1基・RCSを選び、PEG 4またはPEG 7の目標を入れて誘導に噴射解を計算させ、点火の15秒前に点滅するEXECの表示でEXECキーを押して点火を許可する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/642） |
| F-OMS-OPS-04 | 噴射シーケンスは選ばれたエンジンに応じてヘリウム蒸気隔離弁とGN2制御弁を開く指令を出し、エンジン故障フラグを監視して、乗員がOMS ENGスイッチをOFFにして故障を確認すると停止指令を出す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/663） |
| F-OMS-OPS-05 | 軌道上のOMS噴射の準備ではOMS/MPS表示でヘリウムタンク圧が1,500 psiaを超え、N2タンク圧が564 psiaを超えることを確かめ、限界内でなければ噴射しない。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=234） |
| F-OMS-OPS-06 | OMSのレッドラインはタンク内に捕捉される644 lb、分散、急角度の軌道離脱のΔV、軌道離脱の延期日（156 lb）、エンジン故障（106 lb）などを確保し、違反して推進薬の融通もできなければ次のPLSで軌道離脱する（A6-303A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1249） |
| F-OMS-OPS-07 | OMSの推進薬は左右のポッドの不均衡でY方向の重心のずれをゼロにするよう管理され、インタコネクトの予定は軌道離脱の前の重心を改善するために変更できる（A6-353B）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1277） |
| F-OMS-OPS-08 | 着陸時のOMS推進薬は各ポッド22%以下とし、1,000 lb（約8%）のOMS推進薬はX方向の重心を1.5インチ後方へ、Y方向を0.5インチ左右へ動かす。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/671） |
| F-OMS-OPS-09 | OMSの故障管理（A6-51）は、ヘリウムタンク・ヘリウムレグ・GN2タンク・GN2アキュムレータ・推進薬タンク・入口配管・エンジンの1〜2箇所の漏れや故障について、上昇の段階ごとの処置と噴射の構成（2基2ポッドTETP、1基良好ポッドSEGPなど）を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1143） |
| F-OMS-OPS-10 | 1基のOMSエンジンを失った場合は残るOMSエンジンとRCSの+Xジェット4基が残り2つの軌道離脱手段となり、+Xジェットを噴射したことがなければEOMまで続ける前に試験噴射する（A6-107B）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1210） |
| F-OMS-OPS-11 | OMS/RCSのGo/No-Go基準では、OMSエンジン2基の喪失、推進薬タンク1基の漏れ、入口配管1本の漏れ、クロスフィードの2流路の喪失が次のPLSで突入する理由になる（A6-1001）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1285） |
| F-OMS-OPS-12 | OMS噴射中は44.8 kbpsの高速GNCダウンリストが必要で、OMSのPcや入口圧など故障モードの判定に要る値は低速のダウンリストにないためである（A6-103）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1204） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-OMS-06 | OMSエンジン・GN2系 | データ・指令 | 送信 | 乗員は各噴射の前にパネルC3のOMS ENGスイッチをARM/PRESSにしてGN2の圧力隔離弁を開き、それ以外のときはOFFにしておく。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/647）GN2の制御弁1・2は、C3のOMS ENGスイッチがARMかARM/PRESSで、O14（左）・O16（右）のOMS ENG VLVスイッチがONのときに計算機の指令で開く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/648） | — |
| IF-OMS-07 | ヘリウム加圧 | データ・指令 | 送信 | 乗員はパネルO8のLEFT・RIGHT OMS He PRESS/VAPOR ISOLスイッチA・Bで、ヘリウム圧力弁と蒸気隔離弁を手動で開閉するか、GPC位置にして噴射シーケンスの自動制御に任せる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/650）AかBのどちらかのスイッチがOPENなら両方の蒸気隔離弁が開き、両方がCLOSEなら両方が閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/651） | — |
| IF-OMS-08 | クロスフィード・RCS連結 | データ・指令 | 送信 | 乗員はパネルO8のLEFT・RIGHT OMS CROSSFEED A・Bスイッチで燃料・酸化剤のクロスフィード弁の組を開閉し、軌道上のインタコネクトはO7のRCSスイッチとあわせて手動で組む。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/655）スイッチがGPC位置のときは、A・Bの燃料・酸化剤弁の組がオービタの計算機の指令で自動的に開閉される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/656） | — |
| IF-OMS-09 | 推進薬貯蔵・分配 | データ・指令 | 受信 | トータライザの全量はパネルO3のRCS/OMS PRPLT QTY表示に、後室プローブの量はGNC SYS SUMM 2のOMS AFT QTYに示され、推進薬の予算とレッドラインの管理に使われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/653）OMSの使用可能推進薬は、計測した量から配管・タンクに捕捉される量と分散を差し引いて定義される（A6-301）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1246） | — |
| IF-OMS-10 | 推進薬熱管理 | データ・指令 | 送信 | 乗員はパネルA14のRCS/OMS HTRスイッチで左右ポッドとOMSクロスフィード配管のヒータのA・B系統を選び、軌道上でヒータ系統を切り替える。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=179）ヒータは飛行中に少なくとも1回は冗長な系統（AかB）へ切り替える（A6-251B）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1229） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| OM-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.18節 Operations・OMS Summary Data・OMS Rules of Thumb（PDF p663〜671）：噴射シーケンス、上昇・軌道離脱の運用、要約と経験則を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/671） |
| OM-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A6-51（故障管理）、A6-303（OMSレッドライン）、A6-351〜358（推進薬管理の表、予算の基本則、重心管理、軌道離脱計画）、A6-1001を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1274） |
| OM-07 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 9章 ON-ORBIT OMS BURN（PDF p234〜236）：軌道上のOMS噴射の準備、目標の入力、噴射、噴射後の再構成の手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=234） |
| OM-11 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | PDF p27：8回のOMS噴射の時刻、ΔV、噴射時間、軌道と、2基・ストレートフィードの軌道離脱噴射を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=27） |
| OM-12 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | PDF p45：OMSアシストから軌道離脱までの8回の噴射の構成、時刻、噴射時間、ΔVを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=45） |
| OM-13 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | PDF p42：最終飛行の8回のOMS噴射（OMSアシストから軌道離脱まで）の構成とΔVを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=42） |
| OM-14 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | OMS節（PDF p43）：OMSは正常に機能して飛行中の異常はなく、OMS-2以後の噴射の構成とΔVを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=43） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 故障処置手順（MAL）の11章には、S89 L(R) OMS TEMP、G23 OMS/RCS QTY、L(R) OMS GMBL、L(R) OMS VLV、L(R) OMS QTY、L(R) OMS PCの故障メッセージに対応する手順がない（PDF p777）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=777）

> **注記** 検証メモ：A6-303の軌道離脱レッドラインのうち分散、急角度のΔV、軌道離脱準備、天候による延期日、追加の軌道離脱機会、重心のバラストはTBDとされ、飛行ごとに定まる（PDF p1249）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1249）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p641） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/641
2. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p643） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/643
3. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p642） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/642
4. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p663） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/663
5. Orbit Operations Checklist Rev M PCN-10 9-2 ON-ORBIT OMS BURN（PDF p234） — https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=234
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-303 OMS REDLINES [CIL]（PDF p1249） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1249
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-353 CG MANAGEMENT（PDF p1277） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1277
8. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p671） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/671
9. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-51 OMS FAILURE MANAGEMENT [CIL]（PDF p1143） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1143
10. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-107 OMS ENGINE FAILURE MANAGEMENT（PDF p1210） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1210
11. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-1001 OMS/RCS Go/No-Go Criteria（PDF p1285） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1285
12. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-102 OMS PROPELLANT SETTLING REQUIREMENT（PDF p1204） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1204
13. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p647） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/647
14. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p648） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/648
15. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p650） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/650
16. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p651） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/651
17. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p655） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/655
18. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p656） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/656
19. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p653） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/653
20. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-301 OMS USABLE PROPELLANT（PDF p1246） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1246
21. JSC-48035 Rev. M PCN-10 Orbit Operations Checklist 6-5 Heater Reconfig（PDF p179） — https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=179
22. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-251 GENERAL（PDF p1229） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1229
23. JSC-48027 Rev. F Malfunction Procedures（MAL） 11 OMS（索引）（PDF p777） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=777
24. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
