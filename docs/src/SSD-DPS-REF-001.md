# DPS 機能別関連文書一覧

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-DPS-REF-001 |
| 表題 | DPS 機能別関連文書一覧 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-DPS-001 |
| 関連図 | SSD-SYS-ARC-001 図49 DPS 関連文書マトリクス |

## 1. 目的

DPSの各機能に関係する公開文書を機能別に整理し、各機能説明書と図49 DPS 関連文書マトリクス（文書×機能マトリクス）の根拠とする。

## 2. 調査方法

乗員運用マニュアル（SCOM、OI-33）・運用飛行規則・故障処置手順・IOA の FMEA/CIL 評価などの公開文書を調べ、DPSの機能に関係する記述の頁を確かめた 15件を載せた（出典欄はすべて「新規」）。各文書の番号・表題・確認に使った URL は表の各行に、記述の頁は各欄の出典に示す。

## 3. 機能別関連文書

### 3.1 DPS 全般（6件）

機能説明書：SSD-FD-DPS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| DP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.6節（PDF p225〜282）：DPSの機能（GN&Cの支援、機体系の監視・制御、乗員と地上のためのデータ処理、誤りの検査、ペイロードの支援）と、GPC・MMU・データバス網・MDM・MEDS・MTUなどのハードウェアの構成を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/225） |
| DP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | 第7章 DATA SYSTEMS（PDF p1287〜1342）：GPC・データ経路の管理、BFSの管理、その他のDPSの管理、ペイロード固有の管理、EOMの冗長度要求、Go/No-Goの規則を収める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1287） |
| DP-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 5章 DPS（PDF p145〜146）：GPC、MMU/MTU、MDM、MCDS、PCMMU、MEDSの故障処置と、GPC故障回復手順（FRP）、DPSのSSRの目次を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=145） |
| DP-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.5.4節 Data Processing Subsystems（PDF p200）：DPSの機器の温度限界（表3.4.5.4-1・2を参照）と入力電力の制約を定める。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=200） |
| DP-05 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | 表1-1（PDF p13）：サブシステムごとのFMEA/CILの評価の概要で、DPSとBFSの件数をIOAとNASAで比べる。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13） |
| DP-12 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | PDF p51：DPSは異常なく機能し、着陸後にPASSの冗長セットが出した10件のGPCエラーはPASSのプログラムノートで説明されたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=51） |

### 3.2 汎用計算機・冗長セット（GPC）（9件）

機能説明書：SSD-FD-DPS-GPC-001

| ID | 文書番号 | 表題 | 関連内容 |
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

### 3.3 飛行ソフトウェア・MMU（FSW）（9件）

機能説明書：SSD-FD-DPS-FSW-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| DP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.6節 Software（PDF p244〜249）：PASSとBFSの構成、システムソフトウェアと応用ソフトウェア、主機能・OPS・メジャーモード、BFSのエンゲージを示し、p236〜237とp265〜267でMMUとOPS遷移を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/244） |
| DP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A7-51〜A7-53（PDF p1313〜1319）：BFSの故障・エンゲージ不可・疑わしい状態の定義と上昇・再突入と軌道上のBFSの管理を定め、A7-14〜A7-16でG3アーカイブ・SM OPS 4・GPCのメモリ書き込みを定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1313） |
| DP-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 5.2a I/O ERROR MMU 1(2)（PDF p156）：表示のロールイン、OPS遷移、SMチェックポイントの最中のMMUの入出力エラーの切り分けと、GPCの指令元の入れ替えを示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=156） |
| DP-05 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | C.7節 Backup Flight System（PDF p60）：1986〜1987年のCILの書き直しで、BFSを独立のサブシステムから外してDPSのCILに統合したことを記す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=60） |
| DP-06 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 4-6 G2 TO G8 TRANSITION（PDF p108）：飛行制御系の点検のためのG8へのOPS遷移（メモリ構成8、MMU 2台をON）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=108） |
| DP-07 | USA006019 Rev. A（C&W 21002） | Caution and Warning（2008年） | 4.5節 Backup C&W（PDF p70）：予備C&WはGPCのFDAまたはGNCのソフトウェアが限界外を検出してMDM経由でC&W系A・Bに信号を送るソフトウェアの系であり、限界はSPEC 60で変えられると述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=70） |
| DP-08 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | MMU CONTINGENCY PWRUP（PDF p250）：機体の電力の喪失で止まったMMUを、IFMのブレークアウトボックスと直流電源ケーブルで回復する手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=250） |
| DP-09 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.3.8節（PDF p42）：BFSは打上げ前にMM 101で4本すべての飛行重要ストリングでPASSに追従し、上昇・再突入ではすべてのメジャーモードを正しく進んだと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=42） |
| DP-14 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | PDF p51：BFSが車輪停止からOPS 000への遷移までの間に19件のGPCの「B1」エラーを記録し、ユーザノートで説明されたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=51） |

### 3.4 データバス網・MDM（BUS）（7件）

機能説明書：SSD-FD-DPS-BUS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| DP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.6節 Data Bus Network・MDMs（PDF p231〜236）：7群のデータバス、FCストリング、ペイロード・計装/PCMMU・ICCバス、MDMの構成・ポートモード・電源・冷却を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/232） |
| DP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A7-102〜A7-105（PDF p1320〜1328）：PASSのデータバスの割当て、I/Oリセット、非普遍I/Oエラーの処置、MDMのポートモードを定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1327） |
| DP-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 5.3a I/O ERROR FF(FA)（PDF p166）：FC MDMの入出力エラーに対し、ポートの選択、G2FDのGPCの起動、ストリングの割り当て直しで、IOP・BCEの故障とMDMの故障を切り分ける。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=166） |
| DP-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.5.4節（PDF p200）：MDMの2つの入力電源は24 VDCを0.2秒超えて、22 VDCを2.0 ms超えて下回ってはならず、違反するとIOMの信号がすべて論理0になってMDMの電源が切れるとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=200） |
| DP-07 | USA006019 Rev. A（C&W 21002） | Caution and Warning（2008年） | 4.3節 Primary C&W（PDF p57）：主C&Wの120入力のうち5入力がGPCの入出力プロセッサから、15入力がMDMから来ることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=57） |
| DP-08 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | MDM CHANGEOUT（PDF p218）：電源の入れ直しとポートモードで直らない場合にFF1〜3をFF4と入れ替え、またはPL MDMを入れ替える手順（3時間）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=218） |
| DP-09 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.3.6節（PDF p42）：打上げ前に2台のMDMが故障し（交換用も不良）、OV-099のMDMを取り寄せて搭載したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=42） |

### 3.5 上昇系インタフェース（ASC）（4件）

機能説明書：SSD-FD-DPS-ASC-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| DP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.16節 Command and Data Flow（PDF p587〜589）：EIUによるエンジン指令の検証・中継と車両データ表の流れを示し、2.6節（p233・p236）で打上げデータバスとSRB MDMを、1.4節（p74）でMECによるSRBの点火を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/587） |
| DP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A7-104（PDF p1326）：FCバスにつながるMEC・EIUは再突入中は電源が切れ、上昇中はFC5〜8をストリングの割当て解除でしか安全化できないことを示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1326） |
| DP-09 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 表1-I（PDF p6）：打上げの事象として、GPCからのSRB点火指令（リフトオフ）、SRB分離指令、外部タンク分離指令の時刻を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=6） |
| DP-11 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | PDF p34：打上げ前にLPSでSSME 2の60 kbitデータの列パリティエラーが見られ、EIUの60 kbit回路（臨界度3）とLPSの間の伝送回路が疑われたが、GPCとSSME制御器の間のEIUの回路の問題ではないとされたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=34） |

### 3.6 表示・キーボード（MEDS）（8件）

機能説明書：SSD-FD-DPS-MEDS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| DP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.6節 MEDS（PDF p237〜256）：IDP・MDU・ADC・キーボードの構成、画面の形式とエッジキーのメニュー、MDUのポート再構成を示し、p257〜271で表示の階層、キー操作、故障メッセージを述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/237） |
| DP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A7-108・A7-109（PDF p1332〜1335）：DEU相当ロードの基準と、キーボード・MDU・IDPのIFMによる交換の基準を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1335） |
| DP-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 5.6d BIG X ACROSS MDU AND/OR POLL FAIL（PDF p207）：IDPが3秒間表示の更新指令を受けないと大きな「X」が、ポーリングを受けないとPOLL FAILが出ることを示し、その切り分けを示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=207） |
| DP-07 | USA006019 Rev. A（C&W 21002） | Caution and Warning（2008年） | 6章 表6-1 Status symbols（PDF p89）：DPS表示の状態記号（M・H・L・?・↑・↓）の意味を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=89） |
| DP-08 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | MEDS IDP CHANGEOUT AND CABLE SWAP（PDF p224）：故障したIDP 1・3をIDP 4と入れ替え、IDP 2の場合はケーブルだけをIDP 4へつなぎ替える手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=224） |
| DP-09 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.3.6節（PDF p42）：軌道上で表示装置（DU）1が消え、乗員がIFMで後部操縦席のDU 4と入れ替えたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=42） |
| DP-12 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | PDF p13：CDR 2 MDUの電源投入時に指令元のIDP 1がBITE故障を報告し、MDUの電源の入れ直しで一時的なエラー表示が消えたこと（副ポートの一時故障、IFA STS-114-V-10）を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=13） |
| DP-14 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | PDF p22：IDP 4が電源投入時にBITE故障メッセージとMSUの入出力エラーを出したが、その後は正常に動作したこと（IFA STS-125-V-10）を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=22） |

### 3.7 マスタタイミングユニット（MTU）（5件）

機能説明書：SSD-FD-DPS-MTU-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| DP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.6節 Master Timing Unit（PDF p240〜243）：2台の発振器と3つの累算器、GPCの時刻の照合、電源・スイッチ、MISSION TIME・EVENT TIMEの表示を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/240） |
| DP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A7-107（PDF p1330〜1331）：MTU/GPCのGMT誤差の管理（100 ms以下、15 msの更新）、うるう秒の不採用、年末のロールオーバ、発振器の手動切替を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1330） |
| DP-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 5.2d TIME MTU（PDF p162）：GPCのGMTの時刻源が変わったことを示すTIME MTUメッセージから、GPCの発振器のドリフト、MTUの発振器・累算器の故障、バスの雑音を切り分ける。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=162） |
| DP-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.5.5節 Instrumentation Subsystems（PDF p203）：MTUは運用前に12時間の暖機を要し、発振器の周波数の変化に1日あたりの上限があるとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=203） |
| DP-14 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | PDF p11：MTU累算器の不一致の報告は、ELOGの再確認とODRCのデータでMTU BITE故障表示が見つからなかったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=11） |

### 3.8 DPS運用管理（OPS）（7件）

機能説明書：SSD-FD-DPS-OPS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| DP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.6節 DPS Rules of Thumb（PDF p281）：同期できないGPCのHALT、OPS遷移の前のNBATの確認、IDPを複数のGPCに分散することなど、運用上の心得を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/281） |
| DP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A7-13・A7-201・A7-1001（PDF p1303〜1306、p1338〜1342）：GPCの主機能構成、EOMまで続けるための冗長度要求、DPSのGo/No-Go表を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1338） |
| DP-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | GPC FRP-7（PDF p239）：アビオニクスベイの冷却を失ったときに、G2・SM・BFSの機能を冷却の効くベイのGPCへ移すDPSの再構成を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=239） |
| DP-06 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 4-4 G2 SET EXPANSION（PDF p106）：G2FDのGPCをRUNにしてデュアル・トリプルG2のセットに広げる手順と、PASS GPCをRUNにする前後10秒はキーボード入力とスイッチ操作をしない注意を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=106） |
| DP-10 | JSC-19278 | STS-8 National Space Transportation Systems Program Mission Report（1983年） | PDF p8：GPC 1の同期の喪失はダンプの解析でCPUのレジスタの1ビットの欠落と分かり、回復したGPC 1は再突入で最も重要度の低いストリング4に置いたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf#page=8） |
| DP-13 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | PDF p13：GPC 3を除いたデュアルG2でランデブーを進めることにし、GPC 1・3のダンプを解析して、以後のGPC 3の使用に制約はないとしたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=13） |
| DP-15 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | PDF p13〜14：SM GPCのGPC 4の故障（IFA STS-135-V-08）でGPC 2をSM GPCにし、GPC 1・4のデータを地上へ降ろした後、IPLでGPC 4を回復してフリーズドライにしたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=13） |

## 4. 文書×機能マトリクス（全件）

| ID | 文書番号 | 表題 | 全般 | GPC | FSW | BUS | ASC | MEDS | MTU | OPS | 出典 | URL |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| DP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | ● | ● | ● | ● | ● | ● | ● | ● | 新規 | https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual |
| DP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | ● | ● | ● | ● | ● | ● | ● | ● | 新規 | https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf |
| DP-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | ● | ● | ● | ● |  | ● | ● | ● | 新規 | https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf |
| DP-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | ● | ● |  | ● |  |  | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf |
| DP-05 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | ● | ● | ● |  |  |  |  |  | 新規 | https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf |
| DP-06 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） |  | ● | ● |  |  |  |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf |
| DP-07 | USA006019 Rev. A（C&W 21002） | Caution and Warning（2008年） |  |  | ● | ● |  | ● |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf |
| DP-08 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） |  |  | ● | ● |  | ● |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf |
| DP-09 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） |  |  | ● | ● | ● | ● |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf |
| DP-10 | JSC-19278 | STS-8 National Space Transportation Systems Program Mission Report（1983年） |  | ● |  |  |  |  |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf |
| DP-11 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） |  |  |  |  | ● |  |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf |
| DP-12 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | ● |  |  |  |  | ● |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf |
| DP-13 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） |  | ● |  |  |  |  |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf |
| DP-14 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） |  |  | ● |  |  | ● | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf |
| DP-15 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） |  | ● |  |  |  |  |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
