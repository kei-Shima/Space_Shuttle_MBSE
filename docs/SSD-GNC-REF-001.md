# GN&C 機能別関連文書一覧

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-GNC-REF-001 |
| 表題 | GN&C 機能別関連文書一覧 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-GNC-001 |
| 関連図 | SSD-SYS-ARC-001 図47 GN&C 関連文書マトリクス |

## 1. 目的

GN&Cの各機能に関係する公開文書を機能別に整理し、各機能説明書と図47 GN&C 関連文書マトリクス（文書×機能マトリクス）の根拠とする。

## 2. 調査方法

乗員運用マニュアル（SCOM、OI-33）・運用飛行規則・故障処置手順・IOA の FMEA/CIL 評価などの公開文書を調べ、GN&Cの機能に関係する記述の頁を確かめた 15件を載せた（出典欄はすべて「新規」）。各文書の番号・表題・確認に使った URL は表の各行に、記述の頁は各欄の出典に示す。

## 3. 機能別関連文書

### 3.1 GN&C 全般（6件）

機能説明書：SSD-FD-GNC-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| GN-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.13節（PDF p469〜542）：誘導・航法・制御の定義、状態ベクトルと座標系、航法・飛行制御のハードウェア、DAP、運用、警報の要約と経験則を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/469） |
| GN-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | 第8章 A8-4（PDF p1351）：再突入に必須なGNC系の故障許容の考え方（故障許容をすべて失えば次のPLS、4台構成の系は1故障後も公称の終了まで）を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1351） |
| GN-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 8章 GNC（PDF p673）：IMUの基準回復とSSRの目次、MAL手順のないGNCの故障メッセージ（RM FAIL IMU、RM DLMA IMUなど）を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=673） |
| GN-04 | USA004488 Rev. B（IMU 21002） | Inertial Measurement Unit Workbook（2006年） | 1章（PDF p12〜13）：IMUの速度データが上昇・再突入の状態ベクトル伝播の主な源で、姿勢データは全段階の姿勢制御に使われ、各IMUは別々のFF MDMでGPCにつながると述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/IMU%20Workbook.pdf#page=13） |
| GN-05 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | 3.4.5.1節（PDF p172〜182）：GN&Cの機器の制約・限界（温度限界の表、自己点検の限界）と、超えた場合の結果を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=172） |
| GN-07 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | 付録C.4（PDF p52）：GNCの解析（故障モードワークシート141件・PCI 24件）をNASAの基準（FMEA 148件・CIL 36件）と比べ、CIL項目の相違はなかったとする。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=52） |

### 3.2 慣性計測・アライメント（INS）（9件）

機能説明書：SSD-FD-GNC-INS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| GN-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.13節 Navigation Hardware（PDF p474〜484）：3台のIMU（4軸ジンバル・スキュー配置・冗長28 VDC）、2台のスタートラッカ、COASとHUDによるアラインメントを解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/475） |
| GN-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A8-108〜110（PDF p1396〜1401）と第4章A4-151（p940）：HUD/COASの較正、スタートラッカの管理、IMUのアラインメント・ドリフト補償と、EIでの姿勢誤差0.5°の制限を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1398） |
| GN-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | GNC SSR-1〜3（PDF p680〜682）：IMUの起動と、HUDまたはスタートラッカの恒星データによるマトリクス（恒星）アラインメントの手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=680） |
| GN-04 | USA004488 Rev. B（IMU 21002） | Inertial Measurement Unit Workbook（2006年） | 2章（PDF p15〜32）：ジンバル・ジャイロ・レゾルバ・加速度計・スキュー・BITE・熱制御・電源・GPCとのインタフェース（IMU 1〜3はFF MDM 1〜3）とIMUの表示を解説する。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/IMU%20Workbook.pdf#page=28） |
| GN-05 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | 3.4.5.1節（PDF p172〜173）：スタートラッカの太陽・地平線からの離角と扉の作動時間、IMUの運転温度と入力電圧の制約を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=173） |
| GN-06 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 7章 GNC（PDF p191〜197）：スタートラッカによるIMUのアラインメント、IMU間のアラインメント、スター・オブ・オポチュニティのアラインメント、COAS・HUDの較正の手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=194） |
| GN-10 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.3.5.1〜2.3.5.2節（PDF p40）：スタートラッカの光学汚染と警報、RMによる3台のIMUの選択と速度・姿勢の追従のデータを記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=40） |
| GN-11 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） | 2.3.3.1節（PDF p23）：スタートラッカ・COAS・航法ベースの正常な動作と、航法ベースの安定性・水投棄中のスタートラッカの試験の結果を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=23） |
| GN-13 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | IMU・スタートラッカ（PDF p56）：IMUの加速度計の補償を1回、ドリフト補償を2回調整し、−Yスタートラッカは航法星を705回捕捉して495回逃したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=56） |

### 3.3 航法援助・エアデータ（NAS）（9件）

機能説明書：SSD-FD-GNC-NAS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| GN-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.13節（PDF p484〜495）：TACAN・GPS（OV-105の3系統）・エアデータ系（プローブ2本・ADTA 4台）・MLS・電波高度計の構成、運用、冗長管理を解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/484） |
| GN-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A8-111（PDF p1402〜1403）・A8-115（p1407）・A8-18（p1358〜1360）：エアデータのG&Cへの取り込み、単一系統GPSの使用条件、着陸に要るMSBLSの数を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1407） |
| GN-05 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | 3.4.5.1節（PDF p173）：着氷のおそれがあるときのエアデータプローブのヒータと、TACAN 120秒・MSBLS 180秒・電波高度計180秒の暖機時間を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=173） |
| GN-06 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 7章（PDF p225〜227）：GPSの電源投入・初期化、自己点検と、GPSを航法に取り込む条件（FOMなど）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=227） |
| GN-07 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | 付録C.7（PDF p57）：BFSの評価で、NASAの基準がIMU・ADTA・エアデータプローブのCIL項目を含んでいたことを記す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=57） |
| GN-10 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.3.5.3〜2.3.5.5節（PDF p41）：TACANの方位の跳び（マルチパス）、MSBLSの捕捉（約16,500 ft）、電波高度計の前脚の反射による誤指示を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=41） |
| GN-12 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | ADTA（PDF p52）：4台のADTAが正常で、エアデータプローブを約マッハ4.7で展開し、約マッハ2.6でGN&Cに取り込んだと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=52） |
| GN-13 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | ADTA・GPS（PDF p56）：ADTAの正常な動作と、電源投入中のGPSの正常な性能を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=56） |
| GN-15 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | GPS（PDF p46）：打上げの約4時間46分前にGPSの電源を入れ、プラズマ領域の高FOMの期間が取込み前に解消したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=46） |

### 3.4 誘導・航法演算（GNS）（5件）

機能説明書：SSD-FD-GNC-GNS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| GN-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.13節 Operations（PDF p523〜532）：各飛行段階の航法（Super-G、3つの状態ベクトル、カルマンフィルタ、GPSの取り込み）と誘導（PEG 1・4・7、UNIV PTG、再突入・TAEM・A/L）を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/528） |
| GN-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | 第4章 A4-57（PDF p888）・A4-203〜206（p963〜977）：上昇・再突入の航法の更新、GPSによる修正、デルタステートの更新、航法フィルタのAIF管理を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=971） |
| GN-04 | USA004488 Rev. B（IMU 21002） | Inertial Measurement Unit Workbook（2006年） | 3章（PDF p36〜46）：REFSMMATと恒星・IMU間・マトリクスの3種のアラインメント、上昇・軌道上・再突入での航法へのIMUデータの使い方を述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/IMU%20Workbook.pdf#page=39） |
| GN-11 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） | 2.3.2.1節（PDF p23）：オートランドの作動（約9,600 ftで作動、50秒間制御）と外側グライドスロープの追従を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=23） |
| GN-15 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | GPS航法（PDF p46）：単一系統GPSの飛行の計画どおり、高速Cバンド追跡で確かめた後にMM 304でGPSの状態ベクトルをPASSとBFSに取り込み、航法の残差が大きく減ったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=46） |

### 3.5 DAP・飛行制御センサ（FCS）（8件）

機能説明書：SSD-FD-GNC-FCS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| GN-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.13節（PDF p495〜499・p516〜523）：AA・RGA・SRB RGAと、遷移DAP・軌道DAP（RCS DAP・OMS TVC DAP）・エアロジェットDAPを解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/516） |
| GN-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A8-5（PDF p1352）・A8-19（p1361）・A8-102（p1386）・A8-113（p1404〜1406）：AAの故障許容、ヨージェットのダウンモード、RGAの管理、OMS TVCの管理を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1386） |
| GN-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | GNC SSR-8（PDF p683）：単発噴射の設定だけを行ってOMSの推力ベクトルを重心に通し、OMSをジンバルの電源・データ経路の故障から守る手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=683） |
| GN-05 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | 3.4.5.1節（PDF p177〜178）：RGAの使用前2分の暖機と、SRB RGAを1回の飛行に限って使うことを定める。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=177） |
| GN-06 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 7章 FCS CHECKOUT（PDF p211〜213）：RGA・ADTAのセンサ試験と、限界を外れたLRUの選択解除を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=211） |
| GN-10 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.3.5.6節 Controls（PDF p41）：AAとRGAの性能が安定し、チャネル間の差が故障検出のしきい値の40%を超えなかったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=41） |
| GN-12 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | 飛行制御系（PDF p52）：OPS 8のFCS点検で、舵面の駆動・チャネル試験・ORGAとAAの試験・DDU/操縦装置のデータに異常がなかったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=52） |
| GN-14 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | 飛行制御系（PDF p53）：4台のORGAと4台のSRGAの出力が互いに追従し、SMRDの脱落がなく、4台のAAも正常に追従したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=53） |

### 3.6 舵面・推力方向制御駆動（ACT）（7件）

機能説明書：SSD-FD-GNC-ACT-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| GN-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.13節（PDF p510〜515）：4台のASAによる舵面の駆動とFCSチャネルの切り離し、4台のATVCによるSSME・SRBの推力方向制御を解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/510） |
| GN-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A8-104（PDF p1388〜1389）・A8-107（p1393〜1396）・A8-112（p1404）：FCS点検（二次アクチュエータ点検）、FCSチャネルの管理、APU起動前のASAの投入を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1393） |
| GN-05 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | 3.4.5.1節（PDF p174〜176・p180）：油圧作動中に電源を切ってよいASA・ATVCの台数、アクチュエータの最少チャネル数、指令の段差の制限、FCSチャネルスイッチの同時操作の回避を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=174） |
| GN-06 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 7章（PDF p228）：点検のためのエレボンの位置決め（ASAの電源・FCSチャネル・油圧循環ポンプの構成）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=228） |
| GN-07 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | 付録C.2（PDF p44〜50）：ボディフラップ・ラダー/スピードブレーキ・エレボン・主エンジン（ATVC）のアクチュエータの評価で、IOAとNASAの故障モードがすべて一致したとする。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=50） |
| GN-12 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | 飛行制御系（PDF p52）：再突入で全舵面のアクチュエータが正常に動き、二次差圧が等化しきい値内で、位置がGPCの指令に追従したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=52） |
| GN-14 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | 飛行制御系（PDF p53）：SSMEの点火シーケンス中の電気的な異常でASA 1を失い（IFA STS-125-V-02）、FCSチャネル1に給電しないまま再突入したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=53） |

### 3.7 乗員操縦・表示（CCD）（9件）

機能説明書：SSD-FD-GNC-CCD-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| GN-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.7節 Dedicated Display Systems（PDF p283〜307）と2.13節（p499〜509）：PFD（ADI・HSI）・SPI・HUD・DDUと、RHC・THC・RPTA・SBTC・ボディフラップ/トリムスイッチを解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/283） |
| GN-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A8-6（PDF p1352）・A8-101（p1385）・A8-105（p1390）：操縦装置・FCSスイッチの故障許容、ビープトリムによるデローテーション、RHCの2チャネル故障時の扱いを定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1390） |
| GN-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | GNC SSR-9（PDF p684）：OPS 2でTHCの開故障の接点をRMで選択解除する手順（MCCの指示による）を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=684） |
| GN-05 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | 3.4.5.1節（PDF p179）：FLT CNTLR POWERスイッチの投入時の過渡出力によるRCSの誤噴射を防ぐ手順上の制約を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=179） |
| GN-06 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 7章 FCS CHECKOUT（PDF p218〜223）：THC・SBTC・ラダーペダル・RHCの作動点検と、故障した接点・変換器の選択解除を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=218） |
| GN-07 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | 付録C.3（PDF p52）：表示・制御系の解析（故障モードワークシート134件・PCI 8件）をNASAの基準（FMEA 264件・CIL 21件）と比べ、改訂後のCILに全面的に同意したとする。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=52） |
| GN-09 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | R章（PDF p345〜350）：RHCの取外し・取付けと、DDUの遮断器を入れた後のRHCの作動・極性の試験の手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=350） |
| GN-11 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） | 2.3.2.2節（PDF p23）：再突入・着陸の間スピードブレーキを手動のままとし、手動で格納した経過を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=23） |
| GN-14 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | 飛行制御系（PDF p53）：DDUと操縦装置の動作が正常で、RHCとTHCのチャネルの追従が正常だったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=53） |

### 3.8 GNC運用管理（OPS）（6件）

機能説明書：SSD-FD-GNC-OPS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| GN-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.13節（PDF p533・p542）：GNCの警報の要約と、選択フィルタの管理・FCSチャネルの管理などのGNCの経験則を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/533） |
| GN-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A8-1001（PDF p1409〜1423）：操縦装置・TVC・舵面・センサ・専用表示ごとに、MDF・次のPLS・初日のPLSとする故障数とその根拠を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1409） |
| GN-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | GNC FRP-1〜3（PDF p676〜678）：GNC GPCの再IPL後などのIMUの基準回復と、良いIMUを基準にした回復の手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=676） |
| GN-04 | USA004488 Rev. B（IMU 21002） | Inertial Measurement Unit Workbook（2006年） | 4章（PDF p48〜52）：IMUの冗長管理（選択フィルタとFDIR）と、3台では中間値選択、2台ではしきい値とBITEによる判定、解けなければジレンマとすることを解説する。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/IMU%20Workbook.pdf#page=48） |
| GN-06 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 7章 FCS CHECKOUT（PDF p203）：FCS点検のための表示・DPSの構成と、RGA・ADTA・ASA・ATVC・航法援助装置の電源投入を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=203） |
| GN-08 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 7.5節 Hardware C&W Table（PDF p97）：主C&Wのチャネルの表に、IMU・ADTA・RGA/AA・L RHC・R/AFT RHC・FCS SATURATION・FCS CH BYPASS・OMS TVCを挙げる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97） |

## 4. 文書×機能マトリクス（全件）

| ID | 文書番号 | 表題 | 全般 | INS | NAS | GNS | FCS | ACT | CCD | OPS | 出典 | URL |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| GN-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | ● | ● | ● | ● | ● | ● | ● | ● | 新規 | https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual |
| GN-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | ● | ● | ● | ● | ● | ● | ● | ● | 新規 | https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf |
| GN-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | ● | ● |  |  | ● |  | ● | ● | 新規 | https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf |
| GN-04 | USA004488 Rev. B（IMU 21002） | Inertial Measurement Unit Workbook（2006年） | ● | ● |  | ● |  |  |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/IMU%20Workbook.pdf |
| GN-05 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | ● | ● | ● |  | ● | ● | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf |
| GN-06 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） |  | ● | ● |  | ● | ● | ● | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf |
| GN-07 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | ● |  | ● |  |  | ● | ● |  | 新規 | https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf |
| GN-08 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） |  |  |  |  |  |  |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf |
| GN-09 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） |  |  |  |  |  |  | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf |
| GN-10 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） |  | ● | ● |  | ● |  |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf |
| GN-11 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） |  | ● |  | ● |  |  | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf |
| GN-12 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） |  |  | ● |  | ● | ● |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf |
| GN-13 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） |  | ● | ● |  |  |  |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf |
| GN-14 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） |  |  |  |  | ● | ● | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf |
| GN-15 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） |  |  | ● | ● |  |  |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
