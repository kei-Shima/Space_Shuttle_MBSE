# 電子・電力・射場安全（AVN）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-SRB-AVN-001 |
| 表題 | 電子・電力・射場安全（AVN）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-SRB-001 |
| 関連図 | SSD-SYS-ARC-001 図74 SRB 機能構成 |

## 1. 目的

SRBの統合電子組立（IEA）、オービタからの電力の分配、レートジャイロ、射場安全系を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-SRB-AVN-01 | 各SRBは前部スカートと結合リングに1つずつ統合電子組立（IEA）を持ち、後部IEAは点火の指令とノズルの推力方向制御のため前部IEAとオービタのアビオニクスにつながる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/72） |
| F-SRB-AVN-02 | 各IEAは多重化/多重分離器（MDM）を持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/72） |
| F-SRB-AVN-03 | SRBの電力はオービタの主直流母線A・B・CからSRB母線A・B・Cへ供給し、主母線Cが母線A・Bの、主母線Bが母線Cの予備となるので、オービタの主母線が1つ故障してもSRBの母線はすべて給電され続ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/75） |
| F-SRB-AVN-04 | SRBの直流電圧は公称28 V、上限32 V・下限24 Vである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/75） |
| F-SRB-AVN-05 | SRBのレートジャイロ組立（SRGA）は、入替え可能な中間値選択でSRBのピッチ・ヨーの角速度を与え、20回のミッション向けに設計されている。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/77） |
| F-SRB-AVN-06 | 射場安全系（RSS）は各SRBに1つあり、地上局からのarmとfireの2つの指令を受け、機体が打上げ軌道のレッドラインを外れたときだけ使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/77） |
| F-SRB-AVN-07 | 2本のSRBのRSSの分配器はクロスストラップされ、一方がarmや破壊の信号を受けると他方にも送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/78） |
| F-SRB-AVN-08 | 分離の手順でSRBのRSSの電源を切り、回収系の電源を入れる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/78） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-EPS-11 | 電力系：直流配電（EPS） | 電力（28 VDC） | 受信 | EPDCは、28 V直流電力をオービタ各系、SRB、外部タンク、ペイロードへ制御・分配する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） | 上位: IF-ORB-14 上位: IF-ORB-27 上位: IF-ORB-28 |
| IF-GNC-19 | DAP・飛行制御センサ | データ・指令 | 送信 | 各SRBの前部スカートにある2台のSRB RGAは、角速度に比例する電圧をフライトアフトMDMを経てGPCのSRB RGA SOPへ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/499）SRB RGAは1回の飛行より多く使ってはならない。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=178） | 上位: IF-ORB-22 |
| IF-DPS-07 | 上昇系インタフェース | データ・指令 | 受信 | 打上げデータバスで5台のGPCを左右のSRBにある4台のMDM（LL1・LL2・LR1・LR2）に結ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/233）SRB MDMはSRB内で受動のコールドプレートで冷やされ、オービタの主母線につながるSRBバスA・Bから給電される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/236） | 上位: IF-ORB-18 |
| IF-SRB-05 | 推力方向制御（HPU） | データ・指令 | 送信 | APUの制御器の電子装置は、ETの後部結合リングにあるSRBの後部IEAに置かれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/75） | — |
| IF-SRB-08 | 降下・回収 | 電力（28 VDC） | 送信 | 各SRBの回収用電池はRSSの系統Bと回収系に給電し、分離の手順で回収系の電源が入る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/78） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| SB-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 1.4節 Electrical Power Distribution・Range Safety System（PDF p75〜78）：電力・RGA・RSSを述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/75） |
| SB-02 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 6.2.1節（PDF p354）：オービタとSRBの電力の母線の電圧の特性を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=354） |
| SB-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A4-260（PDF p1001）：射場安全の破壊の基準を超えないための処置を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1001） |
| SB-04 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | （PDF p19）：Cバンド制御器（CBC）の4回目の飛行の記録を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=19） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p72） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/72
2. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p75） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/75
3. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p77） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/77
4. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p78） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/78
5. NSTS 1988 News Reference Manual – Electrical Power System（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eps.html
6. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p499） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/499
7. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） 3.4.5.1 GN&C Subsystems（SRB RGA Usage Limit）（PDF p178） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=178
8. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p233） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/233
9. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p236） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/236
10. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
