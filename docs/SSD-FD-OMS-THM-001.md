# 推進薬熱管理（THM）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-OMS-THM-001 |
| 表題 | 推進薬熱管理（THM）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-OMS-001 |
| 関連図 | SSD-SYS-ARC-001 図52 OMS 機能構成 |

## 1. 目的

OMSポッドの機器とクロスフィード配管の推進薬を凍結・過熱から守るヒータ区域（A・B系統）の構成、温度の監視と限界、ヒータ系統の運用規則を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-OMS-THM-01 | OMSの熱制御はOMS機器を囲むポッド内面のストリップヒータと断熱材で行い、クロスフィード配管は巻付けヒータと断熱材で調整され、ヒータがタンクと配管の推進薬の凍結を防ぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/659） |
| F-OMS-THM-02 | 各OMS/RCSポッドは8つのヒータ区域に分かれ、各区域のA・B素子は素子ごとのサーモスタットで55〜75°Fに制御され、パネルA14のRCS/OMS HEATERS LEFT POD・RIGHT PODのA AUTO・B AUTOスイッチで操作される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/659） |
| F-OMS-THM-03 | 後部胴体のクロスフィード配管は11のヒータ区域に分かれ、各区域をA・B系統が並列に加熱して制御サーモスタットが55〜75°Fに保ち、各回路には故障して入りっぱなしのヒータに備える過温度サーモスタットがある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/660） |
| F-OMS-THM-04 | ポッド内とクロスフィード配管のサーモスタット付近の温度センサの値は、SM SPEC 89 PRPLT THERMAL表示（POD・OMS CRSFDの項目）とテレメトリに送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/660） |
| F-OMS-THM-05 | OMSの推進薬の温度が40°F未満か100°F超になると推進薬タンクを喪失とし、これは安全に始動・運転できることが分かっているエンジンの設計仕様の範囲である（A6-2C）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1128） |
| F-OMS-THM-06 | クロスフィード配管の温度が40°F未満か125°F超になるとクロスフィード配管を喪失とし、30°F未満では酸化剤が凍って配管を破損・閉塞するおそれがある（A6-6A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1137） |
| F-OMS-THM-07 | ポッドのヒータはA・Bのパッチが重ねて貼られて両方を入れると剥離のおそれがあるため同時には使わず、クロスフィード配管のヒータはA・B回路を1本に巻いたもので両方を同時に入れられる（A6-251A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1229） |
| F-OMS-THM-08 | 上昇中（OPS 1）はポッドのヒータをすべて切り（ポッドは打上げ前に高温のGN2で温められる）、突入のための着席時からもポッドのヒータは切っておく（A6-254B・C）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1232） |
| F-OMS-THM-09 | クロスフィード配管のヒータは軌道上では一方（AかB）を入れ、突入のための着席時からはA・B両方を入れて突入中も入れたままにする（A6-255B・C）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1233） |
| F-OMS-THM-10 | 推進薬を含む機器を守る重要なヒータ回路はすべて冗長で、AとBの両方を失って姿勢でも熱の限界を保てなければ、次のPLSで突入する（A6-252）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1231） |
| F-OMS-THM-11 | 故障処置手順（MAL 11.3）は、SPEC 89やBFS THERMAL表示の限界外れに対してA14でもう一方のヒータ・サーモスタット回路へ切り替えて切り分け、ポッドでA・B回路を同時に使うとヒータが焼損すると注意する。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=791） |
| F-OMS-THM-12 | STS-114では左上部Yウェブの構造温度がSRB点火時から不規則な指示となり（IFA STS-114-V-03）、ヒータの性能は冗長な計測で監視された。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=42） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-OMS-10 | 運用管理（規則・処置） | データ・指令 | 受信 | 乗員はパネルA14のRCS/OMS HTRスイッチで左右ポッドとOMSクロスフィード配管のヒータのA・B系統を選び、軌道上でヒータ系統を切り替える。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=179）ヒータは飛行中に少なくとも1回は冗長な系統（AかB）へ切り替える（A6-251B）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1229） | — |
| IF-OMS-19 | 熱制御：受動熱制御（PTC） | 熱 | 受信 | ポッド内面のストリップヒータと断熱材、クロスフィード配管の巻付けヒータと断熱材が、OMSのタンクと配管の推進薬を凍結から守る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/659）各ポッドのヒータ区域のA・B素子は、素子ごとのサーモスタットで55〜75°Fに制御される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/659） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| OM-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.18節 Thermal Control（PDF p659〜660）：ポッドとクロスフィード配管のヒータ区域と温度の監視を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/659） |
| OM-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A6-251〜256（ヒータの一般規則、ポッドヒータ、ポッドとクロスフィード配管の温度管理、ヒータ性能の監視）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1234） |
| OM-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 11.3（PDF p790〜793）：SPEC 89とBFS THERMALのOMS推進薬・ポッドの温度の限界外れに対し、ヒータ・サーモスタット回路を切り替える手順と限界表を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=790） |
| OM-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | PDF p145：ポッドヒータのA・B系統のスイッチを同時にAUTOにしないこと（ヒータパッチの局部過熱と接着の破損）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=145） |
| OM-07 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 6-5 HEATER RECONFIG（PDF p179）：ポッドとクロスフィード配管のヒータをA・B系統の間で切り替える手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=179） |
| OM-10 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | PDF p42：左上部Yウェブの構造温度の不規則な指示（IFA STS-114-V-03）と冗長な計測による監視を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=42） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 本書の解釈：ポッドのヒータと断熱材の機器は受動熱制御（SSD-FD-TCS-PTC-001のF-TCS-PTC-03）でも記述され、ヒータの電力はEPSからIF-TCS-20で受ける。本書ではヒータ区域の構成とOMS推進薬の温度管理をOMSの機能として述べ、ヒータの熱は受動熱制御からの下位IFとして描き、電力のIFは重ねて描かない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/659）

> **注記** 検証メモ：OMS/RCSポッドのヒータ区域の数を、SCOM 2.18節（PDF p659）は8区域、SCOM 2.22節（PDF p727）は9区域とする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/727）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p659） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/659
2. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p660） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/660
3. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-2 OMS PROPELLANT TANK (OXIDIZER OR FUEL)（PDF p1128） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1128
4. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-6 OMS/RCS CROSSFEED LINE（PDF p1137） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1137
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-251 GENERAL（PDF p1229） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1229
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-254 OMS/RCS PODS TEMPERATURE MANAGEMENT（PDF p1232） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1232
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-255 OMS/RCS CROSSFEED LINES TEMPERATURE MANAGEMENT（PDF p1233） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1233
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-252 OMS/RCS POD HEATER（PDF p1231） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1231
9. JSC-48027 Rev. F Malfunction Procedures（MAL） 11.3b THRM PRPLT（PDF p791） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=791
10. STS-114 Mission Report Orbital Maneuvering System（続き）（PDF p42） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=42
11. JSC-48035 Rev. M PCN-10 Orbit Operations Checklist 6-5 Heater Reconfig（PDF p179） — https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=179
12. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p727） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/727
13. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
