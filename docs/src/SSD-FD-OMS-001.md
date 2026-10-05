# 軌道制御系（OMS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-OMS-001 |
| 表題 | 軌道制御系（OMS）機能説明書 |
| 版・日付 | Rev. I／2026-10-04 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図2 オービタ サブシステム構成 |

## 1. 目的

軌道制御系の機能と、GN&C・RCS・EPSとのインタフェースを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-OMS-01 | OMSは、軌道投入、軌道の円化、軌道遷移、ランデブ、軌道離脱のための推力を供給し、各OMSポッドはRCSへ1,000 lb以上の推進薬を供給できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/641） |
| F-OMS-02 | OMSは後部胴体の両側にある独立した2つのポッドに収められ、ポッドには後部RCSも同居する（OMS/RCSポッド）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/641） |
| F-OMS-03 | 各ポッドにOMSエンジン1基と推進薬の加圧・貯蔵・分配機器があり、OMSエンジン1基だけでも噴射でき、左右のポッドを結ぶクロスフィード配管で一方のポッドの推進薬を他方のポッドのエンジンへ送れる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/641） |
| F-OMS-04 | 燃料はモノメチルヒドラジン、酸化剤は四酸化二窒素で、ヘリウムで加圧されて供給され、接触すると着火する（ハイパーゴリック）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/643） |
| F-OMS-05 | 各OMSエンジンの推力は6,087 lbである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/643） |
| F-OMS-06 | 軌道離脱噴射の目標データは地上で計算され、アップリンクで機上のGPCに格納される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/663） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ORB-04 | 誘導・航法・制御（GN&C） | データ・指令 | 受信 | 軌道投入後、GN&C系はRCSとOMSを用いてオービタの姿勢と並進を制御する。（出典: https://www.klabs.org/DEI/Processor/shuttle/sp-504/section_4/section_4_02_avionics_system_functions.htm）各OMSエンジンの2基のジンバルアクチュエータは、汎用コンピュータ（GPC）の制御信号で駆動される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/660） | 下位: IF-GNC-15 |
| IF-ORB-05 | 姿勢制御系（RCS） | 推進薬・流体 | 送信 | OMS－後部RCS連結により、軌道上では後部RCSがどちらのOMSポッドの推進薬も使える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/655） | 下位: IF-OMS-11 |
| IF-ORB-14 | 電力系（EPS） | 電力（28 VDC） | 受信（受電） | 3基の燃料電池は、打上げから着陸後の滑走終了まで、機体の28 V直流電力のすべてを発電する。（出典: https://www.spaceshuttleguide.com/system/electrical.htm）3基の燃料電池は独立した電源として動作し、それぞれが分離された28 V直流母線に同時に給電する。（出典: https://chemistry.beloit.edu/edetc/nanolab/fuelcell2/NASA%20Space%20Shuttle%20Fuel%20Cell%20Power%20Plants%20(2002).pdf） | 下位: IF-ECL-16 下位: IF-EPS-11 下位: IF-EPS-12 下位: IF-TCS-20 下位: IF-ECL-39 下位: IF-ECL-40 下位: IF-ECL-41 下位: IF-ECL-42 下位: IF-ECL-43 下位: IF-GNC-11 下位: IF-GNC-12 下位: IF-DPS-02 下位: IF-MPS-05 下位: IF-MPS-06 下位: IF-OMS-12 下位: IF-OMS-13 下位: IF-RCS-09 下位: IF-RCS-10 下位: IF-RCS-11 下位: IF-APU-17 下位: IF-APU-18 下位: IF-CT-12 下位: IF-CT-13 下位: IF-CW-01 下位: IF-PLS-01 下位: IF-PLS-02 下位: IF-MECH-01 |
| IF-ORB-41 | 警報系（C/W） | データ・指令 | 送信 | C/W系は、APU、データ処理系、ECLSS、電力系、飛行制御系、誘導・航法、油圧、主推進系、RCS、OMS、ペイロードとインタフェースを持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/113）主C/Wは、信号調整器または飛行前方MDMを経由してトランスデューサから最大120の入力を受ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115） | 下位: IF-GNC-20 下位: IF-DPS-11 下位: IF-MPS-07 下位: IF-MPS-08 下位: IF-OMS-14 下位: IF-OMS-15 下位: IF-OMS-16 下位: IF-RCS-12 下位: IF-RCS-13 下位: IF-RCS-14 下位: IF-RCS-15 下位: IF-APU-15 下位: IF-APU-16 下位: IF-CW-02 下位: IF-CW-03 |

## 4. 下位文書

| 文書番号 | 表題 |
|---|---|
| [SSD-FD-OMS-ENG-001](SSD-FD-OMS-ENG-001.md) | OMSエンジン・GN2系（ENG）機能説明書 |
| [SSD-FD-OMS-HE-001](SSD-FD-OMS-HE-001.md) | ヘリウム加圧（HE）機能説明書 |
| [SSD-FD-OMS-PSD-001](SSD-FD-OMS-PSD-001.md) | 推進薬貯蔵・分配（PSD）機能説明書 |
| [SSD-FD-OMS-XFD-001](SSD-FD-OMS-XFD-001.md) | クロスフィード・RCS連結（XFD）機能説明書 |
| [SSD-FD-OMS-TVC-001](SSD-FD-OMS-TVC-001.md) | 推力方向制御（ジンバル）（TVC）機能説明書 |
| [SSD-FD-OMS-THM-001](SSD-FD-OMS-THM-001.md) | 推進薬熱管理（THM）機能説明書 |
| [SSD-FD-OMS-OPS-001](SSD-FD-OMS-OPS-001.md) | 運用管理（規則・処置）（OPS）機能説明書 |

機能の構成は SSD-SYS-ARC-001 図52 OMS 機能構成、関係する公開文書は SSD-OMS-REF-001（図53 OMS 関連文書マトリクス）に示す。

## 5. 注記（出典間の相違・構成変更）

> **注記** 飛行フェーズとアボートモードごとの本系の稼働は、[SSD-OPS-PHASE-001](SSD-OPS-PHASE-001.md) の6節（ACT-OMS-01〜ACT-OMS-13）と図39 に示す。

> **注記** 出典の更新（1988年版・転載版 → SCOM OI-33）：1988年版の資料は、用途にアボート（ATO・AOA）も挙げ、後部RCSへの推進薬の供給を最大1,000 lbとしていた。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-oms.html）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/641）

> **注記** 出典の更新（1988年版・転載版 → SCOM OI-33）：1988年版の資料は、2つのポッドでOMSの冗長性を確保するとしていた。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-oms.html）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/641）

> **注記** 出典の更新（1988年版・転載版 → SCOM OI-33）：1988年版の資料は、各OMSエンジンの推力を6,000 lbとしていた。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-oms.html）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/643）

> **注記** 出典の更新（1988年版・転載版 → SCOM OI-33）：1988年版の資料は、1ポッドあたり1,000 lbまでとしていたが、SCOMは各OMSポッドからRCSへ1,000 lb以上を供給できるとしている（PDF p641）。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-oms.html）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/641）

> **注記** 下位の展開（7ブロック）を追加した。所有するIF-ORB-05（OMS→RCS）は、クロスフィード・RCS連結ブロックから後部RCSへOMS推進薬を送るインタコネクトの下位IFとして定めた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/655）

> **注記** IF-ORB-14（EPS所有）は代表として、交流モータ弁（タンク隔離弁・クロスフィード弁）へのAMC経由の交流電力と、ジンバルアクチュエータへの主母線の電力の2つの下位IFに分け、ほかの負荷（GN2制御弁、計装）の給電は文で示した。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/641）

> **注記** IF-ORB-41（C/W所有）は、エンジン異常（燃焼室圧）、推進薬タンク圧、ジンバル故障の3つのC/Wチャネルの下位IFに分けた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/133）

> **注記** IF-ORB-04の所有はSSD-FD-GNC-001のため下位IFを定義せず、GN&Cの下位IF（IF-GNC-15、ジンバル指令と点火・停止の指令）をTVCにつなぎ、噴射シーケンス・GPC位置の弁指令とエンジンの故障検知は各ブロックの文で示した。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/663）

> **注記** OMSの計測データをMDM経由でGPCへ返すDPSとのIFは、親の表にOMSとDPSのIF行がないため上位IFなしとした（SCOMはOMSの重要なインタフェースとしてDPSとEPSを挙げる）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/641）

> **注記** ジンバルリングからポッド・オービタへの推力の伝達（構造）と、受動熱制御のヒータからの熱は、親のIF行（IF-ORB-04・05・14・41）に収まらないため上位IFなしとした。ヒータの電力はEPSのIF-TCS-20（EPS→受動熱制御）にあるため重ねて描かない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/660）

> **注記** 検証メモ：SCOM 2.2節（PDF p133）はLEFT OMS灯のハードウェアのチャネルを37・47・57と7・17・27の両方で記すが、C&W訓練マニュアルの表7-3（PDF p97）では7・17・27が左、37・47・57が右である。本書は表7-3に従った。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/133）

> **注記** OMSの要求（L2）と、本書と下位の説明書の機能行とのトレースは [SSD-REQ-OMS-001](SSD-REQ-OMS-001.md) に示す。

> **注記** OMSの FMEA・CIL（IOA の件数・CIL 課題の評価ワークシート・[CIL] の規則）は [SSD-FMEA-OMS-001](SSD-FMEA-OMS-001.md) に示す。

> **注記** 軌道操縦系（OMS）の状態と遷移（図136）は [SSD-BEH-ORB-006](SSD-BEH-ORB-006.md) に示す（SysML v2 テキスト：model/SSD-BEH-ORB-006.sysml）。

## 6. 参考文献

1. NSTS 1988 News Reference Manual – Orbital Maneuvering System（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-oms.html
2. NASA SP-504 Section 4 – Avionics System Functions（klabs 転載） — https://www.klabs.org/DEI/Processor/shuttle/sp-504/section_4/section_4_02_avionics_system_functions.htm
3. Space Shuttle Guide – Electrical System — https://www.spaceshuttleguide.com/system/electrical.htm
4. NASA Space Shuttle Fuel Cell Power Plants（2002、Beloit College 転載） — https://chemistry.beloit.edu/edetc/nanolab/fuelcell2/NASA%20Space%20Shuttle%20Fuel%20Cell%20Power%20Plants%20(2002).pdf
5. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p113） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/113
6. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Caution and Warning Power Supply（PDF p115） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115
7. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p641） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/641
8. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p643） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/643
9. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p663） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/663
10. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p660） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/660
11. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p655） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/655
12. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 AV BAY/CABIN AIR（PDF p133） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/133

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-25 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-30 | 上位の IF の補完に伴い IF-ORB-41 を追加（Rev. I） |
| Rev. B | 2026-10-01 | 運用フェーズ・モードの定義書 SSD-OPS-PHASE-001 と図39 への参照を注記（Rev. J） |
| Rev. C | 2026-10-01 | IF-ORB-14 の上位・下位を所有文書（SSD-FD-EPS-001）にそろえた（Rev. M） |
| Rev. D | 2026-10-01 | 出典を乗員運用マニュアル（SCOM、OI-33）の頁に更新（8文。うち本文を改めた4文に注記）（Rev. Q） |
| Rev. E | 2026-10-01 | 下位機能説明書（7件）と図への展開を追加し、IF-ORB-05・14・41を下位IF（6件）に分け、IF-ORB-04はGN&Cの下位IFを用いることとした（Rev. R） |
| Rev. F | 2026-10-02 | IF-ORB-14 に下位 IF（IF-CW-01 ほか4件）を付記、IF-ORB-41 に下位 IF（IF-CW-02・IF-CW-03）を付記（Rev. V） |
| Rev. G | 2026-10-02 | 要求文書 SSD-REQ-OMS-001 への参照を注記（Rev. W） |
| Rev. H | 2026-10-02 | 故障解析表 SSD-FMEA-OMS-001 への参照を注記（Rev. X） |
| Rev. I | 2026-10-04 | 系の状態遷移定義書その2 SSD-BEH-ORB-006 への参照を注記（Rev. AX） |
