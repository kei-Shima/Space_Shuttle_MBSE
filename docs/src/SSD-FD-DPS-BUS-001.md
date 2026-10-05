# データバス網・MDM（BUS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-DPS-BUS-001 |
| 表題 | データバス網・MDM（BUS）機能説明書 |
| 版・日付 | Rev. A／2026-10-04 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-DPS-001 |
| 関連図 | SSD-SYS-ARC-001 図48 DPS 機能構成 |

## 1. 目的

GPCと機体各系の間でシリアルデジタルの指令とデータを運ぶデータバス網（飛行重要・ペイロード・計装/PCMMU・計算機間通信など）と、オービタのMDM（FF・FA・PL・OI）による信号の変換、ストリングによる冗長、ポートモードを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-DPS-BUS-01 | データバス網はGPCと機体各系の間でシリアルデジタルの指令とデータを運び、飛行重要・ペイロード・打上げ・大容量記憶・表示/キーボード・計装/PCMMU・計算機間通信の7群から成る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/231） |
| F-DPS-BUS-02 | 計装/PCMMUバスを除く各群のバスは5台のGPCすべてにつながるが、各バスで指令を送るのは一度に1台のGPCで、受信は複数のGPCが同時にできる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/232） |
| F-DPS-BUS-03 | 飛行重要（FC）バスは8本で2本ずつFCストリングを作り、FC1〜4はFF MDM 4台・FA MDM 4台・IDP 4台・HUD 2台に、FC5〜8は同じFF・FA MDMとMEC 2台・EIU 3台につながる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/232） |
| F-DPS-BUS-04 | 同種のGNC機器は複数台が別々のMDMと飛行重要バスに配線され、1本のストリングを失っても通常の運用を続け、2本目を失っても安全に帰還できるよう機器を分けている。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/232） |
| F-DPS-BUS-05 | 上昇・再突入では冗長セットの4台のPASS GNC GPCにそれぞれ別のストリングを割り当て、各GPCは自分のストリングの指令元となり、他のGPCは聴取して4本すべてのデータの写しを得る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/233） |
| F-DPS-BUS-06 | ペイロードバス2本は5台のGPCをペイロードMDM 2台とPDIに結び、計装/PCMMUバス5本は各GPCに1本ずつ専用で、2台のPCMMUへダウンリストを送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/233） |
| F-DPS-BUS-07 | 計算機間通信（ICC）バスは5本で、PASSのGPCは入出力エラー、故障メッセージ、GPC STATUSマトリクスのデータ、キーボード入力、MTUの時刻、状態ベクトルなどを交換する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/234） |
| F-DPS-BUS-08 | MDMはGPCのシリアルデジタル指令を離散・デジタル・アナログの並列指令に変換し、逆に機体各系のデータをシリアルデジタルに変換してGPCへ送り、各MDMは別々のバスにつながる2つの冗長なMIAを持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/235） |
| F-DPS-BUS-09 | オービタのMDMは20台で、DPSのMDM 13台（FF 1〜4、FA 1〜4、PL 1・2、LF1・LM1・LA1）はGPCに直結し、残る7台は計装系のOI MDM（OF1〜4、OA1〜3）でPCMMUへ計装データを送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/235） |
| F-DPS-BUS-10 | ポートモードはMDMの使うMIAポートをソフトウェアで切り替える方法で、FC MDMは通常ポート1で動作し、ポート1が故障すると乗員がポート2を選び、ストリングの2台のMDMを同時に切り替える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/235） |
| F-DPS-BUS-11 | MDMはパネルO6のMDM PL1・PL2・FLT CRIT AFT・FLT CRIT FWDスイッチで2つの主母線から冗長に給電され、どちらの主母線または電源を失っても機能を失わず、電源を切るとサブシステムへの離散・アナログ指令がリセットされる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/236） |
| F-DPS-BUS-12 | FF・PL・LF・LM MDMは前方アビオニクスベイで水冷却ループの、LA・FA MDMは後部アビオニクスベイでフレオン冷却ループのコールドプレートで冷やされ、MDMは13×11×7 in、約38.5 lb、消費電力80 W未満である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/236） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ECL-25 | 能動熱制御系（ATCS） | 熱 | 受信 | フレオンは中胴のコールドプレート網と後部アビオニクスベイ4・5・6を通り、電子機器を冷却する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382） | 上位: IF-ORB-13 下位: IF-TCS-05 |
| IF-APU-25 | APU：主油圧ポンプ・供給 | データ・指令 | 送信 | DN で油圧系1の作動油が脚のアップロック・ストラット作動器と NWS 切替弁へ流れ、ブレーキ隔離弁は接地後の GPC 指令で開き、脚の隔離弁は約100 psi 未満では開閉できず、脚伸展弁2はブレーキ隔離弁2の下流にあり、切替弁は系1の故障で系2を選ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/553）GNC ソフトウェアは Mach 0.8 で脚伸展隔離弁を開き、ブレーキ隔離弁1・2・3は主脚の荷重感知後に MDM FA1・FA2・FA3 経由の GPC 指令で開く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/554） | 上位: IF-ORB-23 |
| IF-DPS-01 | 汎用計算機・冗長セット | データ・指令 | 双方向 | 各GPCのIOPはバス制御素子（BCE）で24本のデータバスにつながり、割り当てられたバスで機体各系へ指令を送り、応答データを受信・検証する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/227）上昇・再突入では冗長セットの各GPCが割り当てられたFCストリングの指令元となり、他のGNC GPCはそのストリングを聴取する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/233） | — |
| IF-DPS-03 | 誘導・航法・制御（GN&C） | データ・指令 | 双方向 | 各MDMは指令を割り当てられたGPCから受け、配線されたGNC機器から要求されたデータを取得してGPCへ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/235）同種のGNC機器は複数台が別々のMDMと飛行重要バスに配線され、冗長な機器は別々のストリングにある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/232） | 上位: IF-ORB-02 |
| IF-DPS-10 | 機械系（MECH） | データ・指令 | 送信 | GPC、DPSの項目入力または配線スイッチから出た機構の指令を、MDM経由でMCAへ送って電動アクチュエータの交流モータを入切する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/619）各アクチュエータのモータは別々のMDMから指令されるため、1台のMDMを失ってもアクチュエータ全体は失われない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/619） | 上位: IF-ORB-40 |
| IF-DPS-11 | 警報系（C/W） | データ・指令 | 送信 | 主C&Wの120入力のうち、5入力はGPCの入出力プロセッサから、15入力はMDMから受け、98入力はトランスデューサから直接受ける。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=57）一部の入力は、GPCから飛行前方（FF）MDMを経由して主C&Wに入る。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=57） | 上位: IF-ORB-41 |
| IF-DPS-14 | 上昇系インタフェース | データ・指令 | 双方向 | FC5〜8は、GPCを同じ4台のFF MDM・4台のFA MDMと、2台のMEC・3台のEIUに結ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/232）各データバスは各EIUの1つのMIAにつながり、公称の上昇構成ではGPC 1〜4がそれぞれFC5〜8に出力する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/587） | — |
| IF-DPS-19 | DPS運用管理 | データ・指令 | 受信 | MECO後のFC・ペイロードMDMの故障では、非普遍I/Oエラーの場合を除き、DPS UTILITY表示の項目入力でどの有効なOPSのどのメジャーモードでもポートモードによる回復を試みられる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1328）データ経路の故障の後は、MDMの電源を切って入れ直して出力をリセットする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1320） | — |
| IF-CT-05 | S帯PM・FM通信 | データ・指令 | 受信 | NSPはフォワードリンクの地上コマンドを解読し、FF MDM（NSP 1はFF 1、NSP 2はFF 3）を通して機上の計算機へ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/167）NSPはコマンドを検証してGPCが飛行重要MDMを通して要求したときにGPCへ送り、GPCも実行の前にコマンドを検証する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/234） | 上位: IF-ORB-01 |
| IF-CT-06 | 計装・ペイロード通信 | データ・指令 | 双方向 | 各GPCは専用の計装/PCMMUデータバスで自らのダウンリストを働いているPCMMUへ送り、PCMMUはこれをTFLに従って計装・ペイロードのデータとインタリーブする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/234）PCMMUはOIとPDIのデータを、機上の表示と故障検知（クラス3アラーム）のためにSMとBFSのGPCへ供給する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1705） | 上位: IF-ORB-01 |
| IF-CT-07 | C&T運用管理 | データ・指令 | 送信 | GCILで制御する通信系を組み替える指令は、GPCからPF MDMを経てGCILへ送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/160）ペイロード通信系への指令もペイロードMDM 1・2からGCILCを経て送られ、これらのMDMはオービタの指令にも使われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/180） | 上位: IF-ORB-01 |
| IF-CT-25 | CT：S帯PM・FM通信 | データ・指令 | 送信 | アンテナはアンテナ切替電子装置が GPC 制御・アップリンク指令・パネル C3 のスイッチで選び、切替指令は PF MDM を経て切替組立へ送られる。選択は STDN・AFSCF 地上局または TDRS への見通しの計算に基づく。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/163） | 上位: IF-ORB-01 |
| IF-DPS-21 | 表示・キーボード | データ・指令 | 送信 | FC バスは8本で2本ずつ FC ストリングをなす。FC1〜4 は GPC を FF MDM 4台・FA MDM 4台・IDP 4台・HUD 2台に、FC5〜8 は同じ FF・FA MDM と MEC 2台・EIU 3台に結ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/232）IDP は GPC 側で FC バス1〜4と DK バス1本につながり、MEDS 側で 1553B データバスを制御して MDU と ADC 1組に接続する。IDP は主母線から 28 V dc を受け、強制空冷される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/238） | — |
| IF-DPS-22 | GNC：乗員操縦・表示 | データ・指令 | 送信 | FC バスは8本で2本ずつ FC ストリングをなす。FC1〜4 は GPC を FF MDM 4台・FA MDM 4台・IDP 4台・HUD 2台に、FC5〜8 は同じ FF・FA MDM と MEC 2台・EIU 3台に結ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/232）HUD の表示データは GPC から FC バス1または2（CDR の HUD）、3または4（PLT の HUD）で送られ、パネル F6・F8 の HUD データバススイッチで選ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/304） | 上位: IF-ORB-02 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| DP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.6節 Data Bus Network・MDMs（PDF p231〜236）：7群のデータバス、FCストリング、ペイロード・計装/PCMMU・ICCバス、MDMの構成・ポートモード・電源・冷却を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/232） |
| DP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A7-102〜A7-105（PDF p1320〜1328）：PASSのデータバスの割当て、I/Oリセット、非普遍I/Oエラーの処置、MDMのポートモードを定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1327） |
| DP-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 5.3a I/O ERROR FF(FA)（PDF p166）：FC MDMの入出力エラーに対し、ポートの選択、G2FDのGPCの起動、ストリングの割り当て直しで、IOP・BCEの故障とMDMの故障を切り分ける。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=166） |
| DP-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.5.4節（PDF p200）：MDMの2つの入力電源は24 VDCを0.2秒超えて、22 VDCを2.0 ms超えて下回ってはならず、違反するとIOMの信号がすべて論理0になってMDMの電源が切れるとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=200） |
| DP-07 | USA006019 Rev. A（C&W 21002） | Caution and Warning（2008年） | 4.3節 Primary C&W（PDF p57）：主C&Wの120入力のうち5入力がGPCの入出力プロセッサから、15入力がMDMから来ることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=57） |
| DP-08 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | MDM CHANGEOUT（PDF p218）：電源の入れ直しとポートモードで直らない場合にFF1〜3をFF4と入れ替え、またはPL MDMを入れ替える手順（3時間）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=218） |
| DP-09 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.3.6節（PDF p42）：打上げ前に2台のMDMが故障し（交換用も不良）、OV-099のMDMを取り寄せて搭載したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=42） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 機体による違い：OV-105には改良型MDM（EMDM）が搭載され、他の機体はMDMの交換時にだけEMDMに替える（アトランティスは両方を搭載）。EMDMではMDM OUTPUTメッセージはGPCの問題である可能性が高い。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/236）

> **注記** 検証メモ：運用飛行規則A7-1001の表はペイロードMDMを「PF1-2」と記し、SCOMはペイロードMDM（PL MDM 1・2）を「payload forward MDMs」とも呼ぶ。本書は両者を同じ機器とした。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/233）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p231） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/231
2. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p232） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/232
3. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p233） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/233
4. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p234） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/234
5. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p235） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/235
6. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p236） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/236
7. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Active Thermal Control System（Freon Loops）（PDF p382） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382
8. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p227） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/227
9. Shuttle Crew Operations Manual 2.17 Mechanical Systems（USA007587 Rev. A CPN-1、PDF p619） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/619
10. USA006019 Rev. A C&W 21002 Caution and Warning 訓練マニュアル（2008） 4.3節 Primary C&W（PDF p57） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=57
11. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p587） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/587
12. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A7-105 MDM PORT MODING（PDF p1328） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1328
13. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A7-101 POWER CYCLING/MANAGEMENT（PDF p1320） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1320
14. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p167） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/167
15. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A11-74 PCM MASTER UNIT (PCMMU)（PDF p1705） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1705
16. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p160） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/160
17. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p180） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/180
18. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149
19. Shuttle Crew Operations Manual 2.14 Landing/Deceleration System（USA007587 Rev. A CPN-1、PDF p553） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/553
20. Shuttle Crew Operations Manual 2.14 Landing/Deceleration System（USA007587 Rev. A CPN-1、PDF p554） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/554
21. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p238） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/238
22. Shuttle Crew Operations Manual 2.7 Dedicated Display Systems（USA007587 Rev. A CPN-1、PDF p304） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/304
23. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p163） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/163

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-10-04 | 内部ブロック図の機能ブロックをまたぐ流れの IF IF-APU-25・IF-DPS-21・IF-DPS-22・IF-CT-25 を足した（GAP-09 の解消）（Rev. AU） |
