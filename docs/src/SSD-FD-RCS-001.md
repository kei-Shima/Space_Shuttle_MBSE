# 姿勢制御系（RCS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-RCS-001 |
| 表題 | 姿勢制御系（RCS）機能説明書 |
| 版・日付 | Rev. I／2026-10-04 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図2 オービタ サブシステム構成 |

## 1. 目的

姿勢制御系の機能と、GN&C・OMS・EPSとのインタフェースを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-RCS-01 | RCSは、前部・左・右の3つのモジュールに分かれて配置されている。（出典: https://www.ibiblio.org/apollo/Shuttle/TD0340%20-%20RCS%202102A%20-%20Reaction%20Control%20System%20Training%20Manual.pdf） |
| F-RCS-02 | 噴射器は計44基で、主噴射器38基（各870 lb）とバーニア噴射器6基（各24 lb）から成る。（出典: https://www.ibiblio.org/apollo/Shuttle/TD0340%20-%20RCS%202102A%20-%20Reaction%20Control%20System%20Training%20Manual.pdf） |
| F-RCS-03 | バーニア噴射器は、軌道上の精密な姿勢制御にのみ使用される。（出典: https://www.ibiblio.org/apollo/Shuttle/TD0340%20-%20RCS%202102A%20-%20Reaction%20Control%20System%20Training%20Manual.pdf） |
| F-RCS-04 | 前部RCSは主噴射器14基とバーニア2基を、後部の各モジュールは主噴射器12基とバーニア2基を持つ。（出典: https://www.ibiblio.org/apollo/Shuttle/TD0340%20-%20RCS%202102A%20-%20Reaction%20Control%20System%20Training%20Manual.pdf） |
| F-RCS-05 | 酸化剤は四酸化二窒素、燃料はモノメチルヒドラジンで、いずれも常温で貯蔵でき接触で着火するハイパーゴリック推進薬である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/718） |
| F-RCS-06 | OMS-2噴射後は、残留速度の打ち消し、姿勢保持、軌道上運用のための小さな並進に使用される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/733） |
| F-RCS-07 | OMSエンジンが故障した場合は、OMS－後部RCS連結でOMS推進薬を後部RCSへ送り、後部RCSの+X噴射器で予定の噴射を完了できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/663） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ORB-03 | 誘導・航法・制御（GN&C） | データ・指令 | 受信 | 軌道投入後、GN&C系はRCSとOMSを用いてオービタの姿勢と並進を制御する。（出典: https://www.klabs.org/DEI/Processor/shuttle/sp-504/section_4/section_4_02_avionics_system_functions.htm） | 下位: IF-GNC-14 |
| IF-ORB-05 | 軌道制御系（OMS） | 推進薬・流体 | 受信 | OMS－後部RCS連結により、軌道上では後部RCSがどちらのOMSポッドの推進薬も使える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/655） | 下位: IF-OMS-11 |
| IF-ORB-14 | 電力系（EPS） | 電力（28 VDC） | 受信（受電） | 3基の燃料電池は、打上げから着陸後の滑走終了まで、機体の28 V直流電力のすべてを発電する。（出典: https://www.spaceshuttleguide.com/system/electrical.htm）3基の燃料電池は独立した電源として動作し、それぞれが分離された28 V直流母線に同時に給電する。（出典: https://chemistry.beloit.edu/edetc/nanolab/fuelcell2/NASA%20Space%20Shuttle%20Fuel%20Cell%20Power%20Plants%20(2002).pdf） | 下位: IF-ECL-16 下位: IF-EPS-11 下位: IF-EPS-12 下位: IF-TCS-20 下位: IF-ECL-39 下位: IF-ECL-40 下位: IF-ECL-41 下位: IF-ECL-42 下位: IF-ECL-43 下位: IF-GNC-11 下位: IF-GNC-12 下位: IF-DPS-02 下位: IF-MPS-05 下位: IF-MPS-06 下位: IF-OMS-12 下位: IF-OMS-13 下位: IF-RCS-09 下位: IF-RCS-10 下位: IF-RCS-11 下位: IF-APU-17 下位: IF-APU-18 下位: IF-CT-12 下位: IF-CT-13 下位: IF-CW-01 下位: IF-PLS-01 下位: IF-PLS-02 下位: IF-MECH-01 |
| IF-ORB-41 | 警報系（C/W） | データ・指令 | 送信 | C/W系は、APU、データ処理系、ECLSS、電力系、飛行制御系、誘導・航法、油圧、主推進系、RCS、OMS、ペイロードとインタフェースを持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/113）主C/Wは、信号調整器または飛行前方MDMを経由してトランスデューサから最大120の入力を受ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115） | 下位: IF-GNC-20 下位: IF-DPS-11 下位: IF-MPS-07 下位: IF-MPS-08 下位: IF-OMS-14 下位: IF-OMS-15 下位: IF-OMS-16 下位: IF-RCS-12 下位: IF-RCS-13 下位: IF-RCS-14 下位: IF-RCS-15 下位: IF-APU-15 下位: IF-APU-16 下位: IF-CW-02 下位: IF-CW-03 |

## 4. 下位文書

| 文書番号 | 表題 |
|---|---|
| [SSD-FD-RCS-HEP-001](SSD-FD-RCS-HEP-001.md) | ヘリウム加圧（HEP）機能説明書 |
| [SSD-FD-RCS-PRP-001](SSD-FD-RCS-PRP-001.md) | 推進薬貯蔵・分配（PRP）機能説明書 |
| [SSD-FD-RCS-JET-001](SSD-FD-RCS-JET-001.md) | 主・バーニア噴射器（JET）機能説明書 |
| [SSD-FD-RCS-RJD-001](SSD-FD-RCS-RJD-001.md) | 噴射器駆動回路（RJD）機能説明書 |
| [SSD-FD-RCS-HTR-001](SSD-FD-RCS-HTR-001.md) | 熱制御（ヒータ）（HTR）機能説明書 |
| [SSD-FD-RCS-RM-001](SSD-FD-RCS-RM-001.md) | 噴射器冗長管理（RM）機能説明書 |
| [SSD-FD-RCS-OPS-001](SSD-FD-RCS-OPS-001.md) | RCS運用管理（OPS）機能説明書 |

機能の構成は SSD-SYS-ARC-001 図54 RCS 機能構成、関係する公開文書は SSD-RCS-REF-001（図55 RCS 関連文書マトリクス）に示す。

## 5. 注記（出典間の相違・構成変更）

> **注記** 飛行フェーズとアボートモードごとの本系の稼働は、[SSD-OPS-PHASE-001](SSD-OPS-PHASE-001.md) の6節（ACT-RCS-01〜ACT-RCS-12）と図39 に示す。

> **注記** 出典の更新（1988年版・転載版 → SCOM OI-33）：1988年版の資料は、1ポッドあたり1,000 lbまでとしていたが、SCOMは各OMSポッドからRCSへ1,000 lb以上を供給できるとしている（PDF p641）。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-oms.html）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/641）

> **注記** Rev. Rで下位の展開（7件）を追加した。IF-ORB-14（EPS→RCS）は交流電動弁の電力（IF-RCS-09）、RJDの電源（IF-RCS-10）、ヒータの電力（IF-RCS-11）の3つの下位IFに、IF-ORB-41（RCS→C/W）はタンク圧・漏れ（IF-RCS-12）、噴射器の故障（IF-RCS-13）、ヘリウム圧（IF-RCS-14）、推進薬・構造の温度（IF-RCS-15）の4つの下位IFに分けた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/735）

> **注記** IF-ORB-03（GN&C→RCS）とIF-ORB-05（OMS→RCS）の所有はそれぞれSSD-FD-GNC-001とSSD-FD-OMS-001であるため、本書では下位IFを定義せず、所有側の下位IFを噴射器駆動回路（RJD）と推進薬貯蔵・分配（PRP）につなぐ。噴射器冗長管理（RM）とDAPの噴射器可用表のやり取りはGPC内のソフトウェアどうしのため、文で示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/732）

> **注記** ヒータの電力の下位IF（IF-RCS-11）は噴射器ヒータと前部モジュールのヒータを主に指し、OMS/RCSポッドのヒータの電力はSSD-FD-TCS-PTC-001のIF-TCS-20と同じ物理IFであるため、新しい番号を付けていない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/727）

> **注記** 推進薬・ヘリウムの圧力・温度などの計測値はMDMを通してGPCとテレメトリへ送られるが、親文書にDPSとのIFの行がないため、DPSとの下位IFは設けず、RCSの表示（GNC SYS SUMM 2・SPEC 23）は各下位機能の文で示した。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/742）

> **注記** 検証メモ：推進薬タンクのアレージ圧で警報灯が点灯する上限を、SCOM 2.22節の推進薬系の説明（PDF p721）は300 psia、同じ節のC&Wの要約（PDF p735）は312 psiaとする。本書のIF-RCS-12はC&Wの要約とF(L,R) RCS TK Pメッセージの上限（312 psi）に合わせた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/721）

> **注記** 検証メモ：バーニアの連続噴射の上限を、SCOMと運用飛行規則A6-153は275秒、SODB（3.4.3.2）は125秒とする。A6-153はHubbleのリブーストに向けたWSTFの試験で275秒の噴射が熱的な制約を超えないことを確かめたとしており、本書はSCOMと規則の値を用いた。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1213）

> **注記** 検証メモ：最大ブローダウンの推進薬量を、SCOMは前部22%・後部24%、A6-52は前部23%・後部24%、A6-201は酸化剤22%・燃料23%とする（SSD-FD-RCS-HEP-001の検証メモ）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1178）

> **注記** 本書の解釈：RMとPVT計量はGPCのソフトウェアで実行されるが、SCOM 2.22節の構成に従ってRCSの下位機能（RM・PRP）とし、DAPの噴射器選択論理はGN&Cの機能とした。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/732）

> **注記** RCSの要求（L2）と、本書と下位の説明書の機能行とのトレースは [SSD-REQ-RCS-001](SSD-REQ-RCS-001.md) に示す。

> **注記** RCSの FMEA・CIL（IOA の件数・CIL 課題の評価ワークシート・[CIL] の規則）は [SSD-FMEA-RCS-001](SSD-FMEA-RCS-001.md) に示す。

> **注記** 姿勢制御系（RCS）の状態と遷移（図137）は [SSD-BEH-ORB-006](SSD-BEH-ORB-006.md) に示す（SysML v2 テキスト：model/SSD-BEH-ORB-006.sysml）。

## 6. 参考文献

1. Reaction Control System Training Manual RCS 2102A（NASA、ibiblio 転載） — https://www.ibiblio.org/apollo/Shuttle/TD0340%20-%20RCS%202102A%20-%20Reaction%20Control%20System%20Training%20Manual.pdf
2. NSTS 1988 News Reference Manual – Orbital Maneuvering System（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-oms.html
3. NASA SP-504 Section 4 – Avionics System Functions（klabs 転載） — https://www.klabs.org/DEI/Processor/shuttle/sp-504/section_4/section_4_02_avionics_system_functions.htm
4. Space Shuttle Guide – Electrical System — https://www.spaceshuttleguide.com/system/electrical.htm
5. NASA Space Shuttle Fuel Cell Power Plants（2002、Beloit College 転載） — https://chemistry.beloit.edu/edetc/nanolab/fuelcell2/NASA%20Space%20Shuttle%20Fuel%20Cell%20Power%20Plants%20(2002).pdf
6. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p113） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/113
7. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Caution and Warning Power Supply（PDF p115） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115
8. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p718） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/718
9. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p733） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/733
10. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p663） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/663
11. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p655） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/655
12. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p641） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/641
13. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p735） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/735
14. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p732） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/732
15. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p727） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/727
16. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p742） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/742
17. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p721） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/721
18. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-153 RCS JET MAXIMUM BURN TIME（PDF p1213） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1213
19. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-52 RCS FAILURE MANAGEMENT（PDF p1178） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1178

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-25 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-30 | 上位の IF の補完に伴い IF-ORB-41 を追加（Rev. I） |
| Rev. B | 2026-10-01 | 運用フェーズ・モードの定義書 SSD-OPS-PHASE-001 と図39 への参照を注記（Rev. J） |
| Rev. C | 2026-10-01 | IF-ORB-14 の上位・下位を所有文書（SSD-FD-EPS-001）にそろえた（Rev. M） |
| Rev. D | 2026-10-01 | 出典を乗員運用マニュアル（SCOM、OI-33）の頁に更新（4文。うち本文を改めた1文に注記）（Rev. Q） |
| Rev. E | 2026-10-01 | 下位機能説明書（7件）と図への展開を追加し、IF-ORB-14・IF-ORB-41に下位IF（IF-RCS-09〜15）を付記、IF-ORB-03・IF-ORB-05は所有側の下位IFを参照、注記・検証メモ（下位IFの分け方、ポッドヒータの電力、DPSとのIF、警報灯の圧力の上限、バーニアの噴射時間、最大ブローダウン量、RMの扱い）を追加（Rev. R） |
| Rev. F | 2026-10-02 | IF-ORB-14 に下位 IF（IF-CW-01 ほか4件）を付記、IF-ORB-41 に下位 IF（IF-CW-02・IF-CW-03）を付記（Rev. V） |
| Rev. G | 2026-10-02 | 要求文書 SSD-REQ-RCS-001 への参照を注記（Rev. W） |
| Rev. H | 2026-10-02 | 故障解析表 SSD-FMEA-RCS-001 への参照を注記（Rev. X） |
| Rev. I | 2026-10-04 | 系の状態遷移定義書その2 SSD-BEH-ORB-006 への参照を注記（Rev. AX） |
