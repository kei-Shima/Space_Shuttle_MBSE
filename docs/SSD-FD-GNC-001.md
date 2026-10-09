# 誘導・航法・制御（GN&C）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-GNC-001 |
| 表題 | 誘導・航法・制御（GN&C）機能説明書 |
| 版・日付 | Rev. J／2026-10-08 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図2 オービタ サブシステム構成 |

## 1. 目的

GN&Cの機能と、DPS・RCS・OMS・APU/HYDとのインタフェースを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-GNC-01 | 機上の航法センサには、慣性計測装置（IMU）3台のほか、戦術航法装置（TACAN）、エアデータシステム、マイクロ波着陸システム（MLS）、電波高度計、GPSなどがある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/474） |
| F-GNC-02 | 2台のスタートラッカも航法系の一部である。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/avionics/gnc/） |
| F-GNC-03 | 軌道上では、スタートラッカで恒星の方位と仰角を測り、IMUを定期的にアラインメントする。（出典: https://www.klabs.org/DEI/Processor/shuttle/sp-504/section_4/section_4_02_avionics_system_functions.htm） |
| F-GNC-04 | 軌道投入後、GN&C系はRCSとOMSを用いてオービタの姿勢と並進を制御し、機上の状態ベクトルは地上から通信アップリンクで定期的に更新される。（出典: https://www.klabs.org/DEI/Processor/shuttle/sp-504/section_4/section_4_02_avionics_system_functions.htm） |
| F-GNC-05 | 上昇推力方向制御（ATVC）は、打上げ・第1段上昇中は3基のSSMEと2本のSRBの推力方向を、第2段上昇中はSSMEのみの推力方向を制御して、姿勢と軌道を制御する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/514） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ORB-02 | データ処理系（DPS） | データ・指令 | 双方向 | 上昇・再突入では、5台中4台のGPCに同一のPASSソフトウェアを搭載し、GN&C機能を同時・冗長に実行する。（出典: https://www.spaceshuttleguide.com/system/navigation.htm） | 下位: IF-DPS-03 下位: IF-DPS-04 下位: IF-DPS-22 |
| IF-ORB-03 | 姿勢制御系（RCS） | データ・指令 | 送信 | 軌道投入後、GN&C系はRCSとOMSを用いてオービタの姿勢と並進を制御する。（出典: https://www.klabs.org/DEI/Processor/shuttle/sp-504/section_4/section_4_02_avionics_system_functions.htm） | 下位: IF-GNC-14 |
| IF-ORB-04 | 軌道制御系（OMS） | データ・指令 | 送信 | 軌道投入後、GN&C系はRCSとOMSを用いてオービタの姿勢と並進を制御する。（出典: https://www.klabs.org/DEI/Processor/shuttle/sp-504/section_4/section_4_02_avionics_system_functions.htm）各OMSエンジンの2基のジンバルアクチュエータは、汎用コンピュータ（GPC）の制御信号で駆動される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/660） | 下位: IF-GNC-15 |
| IF-ORB-08 | 補助動力・油圧（APU/HYD） | 油圧 | 受信 | 各油圧系は、空力舵面（エレボン、ボディフラップ、ラダー／スピードブレーキ）の駆動に油圧を供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/83） | 下位: IF-APU-10 |
| IF-ORB-14 | 電力系（EPS） | 電力（28 VDC） | 受信（受電） | 3基の燃料電池は、打上げから着陸後の滑走終了まで、機体の28 V直流電力のすべてを発電する。（出典: https://www.spaceshuttleguide.com/system/electrical.htm）3基の燃料電池は独立した電源として動作し、それぞれが分離された28 V直流母線に同時に給電する。（出典: https://chemistry.beloit.edu/edetc/nanolab/fuelcell2/NASA%20Space%20Shuttle%20Fuel%20Cell%20Power%20Plants%20(2002).pdf） | 下位: IF-ECL-16 下位: IF-EPS-11 下位: IF-EPS-12 下位: IF-TCS-20 下位: IF-ECL-39 下位: IF-ECL-40 下位: IF-ECL-41 下位: IF-ECL-42 下位: IF-ECL-43 下位: IF-GNC-11 下位: IF-GNC-12 下位: IF-DPS-02 下位: IF-MPS-05 下位: IF-MPS-06 下位: IF-OMS-12 下位: IF-OMS-13 下位: IF-RCS-09 下位: IF-RCS-10 下位: IF-RCS-11 下位: IF-APU-17 下位: IF-APU-18 下位: IF-CT-12 下位: IF-CT-13 下位: IF-CW-01 下位: IF-PLS-01 下位: IF-PLS-02 下位: IF-MECH-01 |
| IF-ORB-21 | 主推進系（MPS） | データ・指令 | 送信 | オービタのFCSのATVCは、打上げと第1段上昇中は3基の主エンジンと2本のSRB、第2段上昇中は主エンジンのみの推力方向を定めて、姿勢と軌道を制御する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/514）ATVCの指令はGPCの飛行制御系が生成した位置指令に始まり、SSMEとSRBのサーボアクチュエータでノズルを首振りさせて終わる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/514） | 下位: IF-GNC-16 下位: IF-GNC-17 |
| IF-ORB-22 | 固体ロケットブースタ（SRB×2） | データ・指令 | 送信 | 誘導系からの指令はATVCドライバへ送られ、ドライバは指令に比例した信号を主エンジンとSRBの各サーボアクチュエータへ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/76）各FCSチャネルのATVCは、6つのSSMEドライバと4つのSRBドライバを持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/514） | 上位: IF-SYS-03 下位: IF-GNC-18 下位: IF-GNC-19 |
| IF-ORB-24 | 通信・追跡（C&T） | データ・指令 | 受信 | ランデブ時は、Ku帯レーダがセンサとして目標の角度・角速度・距離変化率を与え、GNCコンピュータのランデブ航法データを更新する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/177）自動追尾モードでは、Ku帯系がアンテナ角・角速度・距離・距離変化率をMDM経由で送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/177） | 下位: IF-CT-08 |
| IF-ORB-34 | 環境制御・生命維持（ECLSS） | 熱 | 受信 | IMUの強制空冷は3台のIMUすべてに供する3台のファンで行い、同時に使うのは1台である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/477）ベイファンは交流で動くGould製TACANを冷却し、冷却を失ったTACANは5分以内に短絡しうる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1467） | 下位: IF-ECL-32 |
| IF-ORB-41 | 警報系（C/W） | データ・指令 | 送信 | C/W系は、APU、データ処理系、ECLSS、電力系、飛行制御系、誘導・航法、油圧、主推進系、RCS、OMS、ペイロードとインタフェースを持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/113）主C/Wは、信号調整器または飛行前方MDMを経由してトランスデューサから最大120の入力を受ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115） | 下位: IF-GNC-20 下位: IF-DPS-11 下位: IF-MPS-07 下位: IF-MPS-08 下位: IF-OMS-14 下位: IF-OMS-15 下位: IF-OMS-16 下位: IF-RCS-12 下位: IF-RCS-13 下位: IF-RCS-14 下位: IF-RCS-15 下位: IF-APU-15 下位: IF-APU-16 下位: IF-CW-02 下位: IF-CW-03 |
| IF-ECL-32 | 大気再生系（ARS） | 熱 | 受信 | IMUの強制空冷は3台のIMUすべてに供する3台のファンで行い、同時に使うのは1台である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/477）ベイファンは交流で動くGould製TACANを冷却し、冷却を失ったTACANは5分以内に短絡しうる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1467） | 上位: IF-ORB-34 下位: IF-ARS-19 下位: IF-ARS-41 下位: IF-ARS-42 |
| IF-ARS-42 | ARS：水冷却ループ | 熱 | 送信 | Av Bay 3B の冷却表では、強制空冷・自然空冷の欄は該当なしで、水冷の機器はマスタタイミングユニット、Ku 帯信号処理器、HUD 電子装置 1・2、GPS 2 である。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=89） | 上位: IF-ECL-32 |

## 4. 下位文書

| 文書番号 | 表題 |
|---|---|
| [SSD-FD-GNC-INS-001](SSD-FD-GNC-INS-001.md) | 慣性計測・アライメント（INS）機能説明書 |
| [SSD-FD-GNC-NAS-001](SSD-FD-GNC-NAS-001.md) | 航法援助・エアデータ（NAS）機能説明書 |
| [SSD-FD-GNC-GNS-001](SSD-FD-GNC-GNS-001.md) | 誘導・航法演算（GNS）機能説明書 |
| [SSD-FD-GNC-FCS-001](SSD-FD-GNC-FCS-001.md) | DAP・飛行制御センサ（FCS）機能説明書 |
| [SSD-FD-GNC-ACT-001](SSD-FD-GNC-ACT-001.md) | 舵面・推力方向制御駆動（ACT）機能説明書 |
| [SSD-FD-GNC-CCD-001](SSD-FD-GNC-CCD-001.md) | 乗員操縦・表示（CCD）機能説明書 |
| [SSD-FD-GNC-OPS-001](SSD-FD-GNC-OPS-001.md) | GNC運用管理（OPS）機能説明書 |

機能の構成は SSD-SYS-ARC-001 図46 GN&C 機能構成、関係する公開文書は SSD-GNC-REF-001（図47 GN&C 関連文書マトリクス）に示す。

## 5. 注記（出典間の相違・構成変更）

> **注記** 構成変更：STS-118（エンデバー）は、従来の3台のTACANに代えて3台のGPS受信機を搭載した最初のシャトル飛行である。本図は1988年版資料の構成（TACAN）で記載している。（出典: https://science.gov/topicpages/i/in-vehicle+navigation+units）

> **注記** 飛行フェーズとアボートモードごとの本系の稼働は、[SSD-OPS-PHASE-001](SSD-OPS-PHASE-001.md) の6節（ACT-GNC-01〜ACT-GNC-14）と図39 に示す。

> **注記** 出典の更新（1988年版・転載版 → SCOM OI-33）：1988年版の資料は、航法援助装置をIMU 3台、TACAN 3台、エアデータプローブ2組、マイクロ波走査ビーム着陸システム（MSBLS）3台、電波高度計2台としており、GPSを含んでいなかった。（出典: http://w.16streets.com/39-B/HTML%20Pages/shuttle/technology/sts-newsref/sts-gnnc.html）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/474）

> **注記** 下位の展開（7件）を追加した。IF-ORB-21（MPS）はATVCによるSSMEのTVC作動器への指令（舵面・推力方向制御駆動→MPS）と誘導のスロットル指令（誘導・航法演算→MPS）の2つの下位IFに分けた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/523）

> **注記** IF-ORB-22（SRB）はATVCによるSRBのTVC作動器への指令（舵面・推力方向制御駆動→SRB）と、SRB RGAの角速度（SRB→DAP・飛行制御センサ）の2つの下位IFに分けた。親の行の方向は送信であるが、SRB RGAの角速度はSRBから受信するため、下位では受信のIFも含めた（本書の解釈）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/499）

> **注記** 地上のTACAN/VORTAC局・MLS地上局・GPS衛星からの電波の受信は、親のIF行（IF-ORB・IF-SYS）に当たる行がないため、上位を付けない下位IF（地上航法局→航法援助・エアデータ）とした。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/484）

> **注記** IF-ORB-34（ECLSSからの熱）は、物理的に同じ下位IF IF-ECL-32（IMUの強制空冷とTACANのベイ空冷）を再利用して描き、新しい番号を付けない。RGA・ASA・ATVCのフレオンのコールドプレートによる冷却は既存のIF-TCS-05（SSD-FD-TCS-HX-001の所有）に当たるため、本書では定義しない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/498）

> **注記** IF-ORB-14の電力は、IMUと扉モータ（電力系→慣性計測・アライメント）、MLSとGPS（電力系→航法援助・エアデータ）の2本を代表として描き、RGA・AA・ASA・ATVC・DDUの電源は下位説明書の機能の文で示した。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/497）

> **注記** IF-ORB-02（DPS）・IF-ORB-08（APU/HYD）・IF-ORB-24（C&T）は所有側の親が下位IFを定めるため、本書では下位IFを定義せず、所有側の下位IFを同じ番号で参照する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/495）

> **注記** 検証メモ：IMUの型式について、運用飛行規則（A8-12・A8-57）はKT-70型とHAINS型に触れるが、SCOM（OI-33）の2.13節は型式を記していない。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1374）

> **注記** GN&Cの要求（L2）と、本書と下位の説明書の機能行とのトレースは [SSD-REQ-GNC-001](SSD-REQ-GNC-001.md) に示す。

> **注記** GN&Cの FMEA・CIL（IOA の件数・CIL 課題の評価ワークシート・[CIL] の規則）は [SSD-FMEA-GNC-001](SSD-FMEA-GNC-001.md) に示す。

## 6. 参考文献

1. NSTS 1988 News Reference Manual – Guidance, Navigation and Control（16streets 転載） — http://w.16streets.com/39-B/HTML%20Pages/shuttle/technology/sts-newsref/sts-gnnc.html
2. NASA Human Space Flight – Shuttle Reference: GN&C — https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/avionics/gnc/
3. NASA SP-504 Section 4 – Avionics System Functions（klabs 転載） — https://www.klabs.org/DEI/Processor/shuttle/sp-504/section_4/section_4_02_avionics_system_functions.htm
4. Science.gov（NTRS抄録：Operational Use of GPS Navigation for Space Shuttle Entry） — https://science.gov/topicpages/i/in-vehicle+navigation+units
5. Space Shuttle Guide – Guidance, Navigation and Control — https://www.spaceshuttleguide.com/system/navigation.htm
6. Space Shuttle Guide – Electrical System — https://www.spaceshuttleguide.com/system/electrical.htm
7. NASA Space Shuttle Fuel Cell Power Plants（2002、Beloit College 転載） — https://chemistry.beloit.edu/edetc/nanolab/fuelcell2/NASA%20Space%20Shuttle%20Fuel%20Cell%20Power%20Plants%20(2002).pdf
8. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p514） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/514
9. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p76） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/76
10. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p177） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/177
11. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p477） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/477
12. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A9-154 AC Load Management During Ascent（続き）（PDF p1467） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1467
13. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p113） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/113
14. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Caution and Warning Power Supply（PDF p115） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115
15. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p474） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/474
16. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p660） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/660
17. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p83） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/83
18. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p523） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/523
19. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p499） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/499
20. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.13節 TACAN（PDF p484） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/484
21. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p498） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/498
22. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p497） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/497
23. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p495） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/495
24. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A8-57 Prelaunch IMU Hold（PDF p1374） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1374
25. USA006020 Rev. B ECLSS 21002 訓練マニュアル （PDF p89） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=89

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-25 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-30 | 上位の IF の補完に伴い IF-ORB-21・IF-ORB-22・IF-ORB-24・IF-ORB-34・IF-ORB-41・IF-ECL-32 を追加（Rev. I） |
| Rev. B | 2026-10-01 | 運用フェーズ・モードの定義書 SSD-OPS-PHASE-001 と図39 への参照を注記（Rev. J） |
| Rev. C | 2026-10-01 | IF-ORB-14 の上位・下位を所有文書（SSD-FD-EPS-001）にそろえた（Rev. M） |
| Rev. D | 2026-10-01 | 出典を乗員運用マニュアル（SCOM、OI-33）の頁に更新（4文。うち本文を改めた1文に注記）（Rev. Q） |
| Rev. E | 2026-10-01 | 下位機能説明書（7件）と図への展開を追加し、IF-ORB-03・IF-ORB-04・IF-ORB-14・IF-ORB-21・IF-ORB-22・IF-ORB-41に下位IF（IF-GNC）を付記、IF-ORB-02・IF-ORB-08・IF-ORB-24は所有側の下位IFを参照、IF-ECL-32を再利用、注記・検証メモ（下位IFの分け方、IF-ORB-22の方向、航法電波のIF、冷却のIF、電力の代表線、IMUの型式）を追加（Rev. R） |
| Rev. F | 2026-10-02 | IF-ORB-14 に下位 IF（IF-CW-01 ほか4件）を付記、IF-ORB-41 に下位 IF（IF-CW-02・IF-CW-03）を付記（Rev. V） |
| Rev. G | 2026-10-02 | 要求文書 SSD-REQ-GNC-001 への参照を注記（Rev. W） |
| Rev. H | 2026-10-02 | 故障解析表 SSD-FMEA-GNC-001 への参照を注記（Rev. X） |
| Rev. I | 2026-10-04 | IF-ORB-02 に下位 IF-DPS-22 を付記した（Rev. AU） |
| Rev. J | 2026-10-08 | 内部ブロック図の機能ブロックをまたぐ流れの IF IF-ARS-42 を足した（GAP-09 の解消）、IF-ECL-32 に下位 IF-ARS-42 を付記した（Rev. BI） |
