# クロスフィード・RCS連結（XFD）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-OMS-XFD-001 |
| 表題 | クロスフィード・RCS連結（XFD）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-OMS-001 |
| 関連図 | SSD-SYS-ARC-001 図52 OMS 機能構成 |

## 1. 目的

左右のポッドを結ぶクロスフィード配管・弁で一方のポッドの推進薬を他方のエンジンへ送るOMSクロスフィードと、同じ配管で後部RCSへOMS推進薬を送るOMS－RCSインタコネクト、その計量と管理を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-OMS-XFD-01 | 一方のポッドのOMSエンジンに他方のポッドの推進薬を送ることをOMSクロスフィードといい、ポッド間の推進薬重量の均衡を取るときや、エンジンまたはタンクが故障したときに行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/655） |
| F-OMS-XFD-02 | クロスフィード配管はタンク隔離弁と二元推進薬弁の間で左右のOMS推進薬配管を結び、各配管には並列2個のクロスフィード弁があって推進薬の冗長な流路となる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/655） |
| F-OMS-XFD-03 | クロスフィードを組むときは受け側のタンク隔離弁を閉じ（左右のタンクは通常は直接つながない）、供給側と受け側のクロスフィード弁を開いて一方のタンクから他方のエンジンへの流路を作る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/655） |
| F-OMS-XFD-04 | OMSクロスフィード、RCSクロスフィード、OMS－RCSインタコネクトには同じクロスフィード配管を使い、RCSクロスフィード弁がRCSの推進薬配管をこの配管につなぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/656） |
| F-OMS-XFD-05 | インタコネクトはRCSタンク隔離弁を閉じてRCSクロスフィード弁を開いた後にOMSクロスフィード弁の1個（B弁）を開き、非供給側のOMSクロスフィード弁を閉じたままにする順序で組み、OMSとRCSのタンクが直接つながるのを防ぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/656） |
| F-OMS-XFD-06 | インタコネクトは通常1つのOMSポッドが両側のRCSに供給するもので軌道上では手動で組まれ、最も重要な用途は上昇アボートで、そのときは自動で組まれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/656） |
| F-OMS-XFD-07 | RCSタンクはOMSエンジンが必要とする流量を支えられないため、後部RCSからOMSへ推進薬を送ることはない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/658） |
| F-OMS-XFD-08 | クロスフィード配管の圧力変換器は計測誤差（34 psia）が大きいため、軌道上ではRCSマニホールドの圧力でクロスフィード配管の状態を確かめてからタンクから再加圧し、酸化剤49 psia・燃料35 psia未満なら配管を故障とする（A6-61B）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1199） |
| F-OMS-XFD-09 | 軌道上のインタコネクトはORBITAL DAPでFREEを選んでから、パネルO7で後部RCSタンク隔離弁を閉じてRCSクロスフィード弁を開き、O8で供給側のOMSクロスフィード弁Bを開いて、SPEC 23のOMS PRESS ENAで計量を始める手順で組む。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/658） |
| F-OMS-XFD-10 | インタコネクト中のOMS推進薬の使用量はRCSジェットの作動回数から噴射時間の積分で求められ、計量シーケンスが左右のOMS推進薬の累計を保持する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/659） |
| F-OMS-XFD-11 | OMSタンクを自動で再加圧するソフトウェアもあるが、OMSやRCSの漏れに推進薬を送り続けるため通常は使わない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/658） |
| F-OMS-XFD-12 | SODBは、OMS－RCSインタコネクトを上昇アボート（正の+X沈降力がある場合）、OMS噴射中、軌道上の運用に限り、加速度や推進薬量が制約を外れる突入の段階では認めない。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=142） |
| F-OMS-XFD-13 | 推進薬が故障したときの混合クロスフィード（OMS SSR-1）では、メモリの読み書きでタンク隔離弁とクロスフィード弁の指令を設定し、使えるタンクを反対側のエンジンにつなぐ。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=794） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-OMS-03 | 推進薬貯蔵・分配 | 推進薬・流体 | 受信 | 供給側ポッドのタンク隔離弁とOMSクロスフィード弁A（またはB）の組を開き、そのポッドの燃料と酸化剤を左右のポッドを結ぶクロスフィード配管へ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/656） | — |
| IF-OMS-04 | OMSエンジン・GN2系 | 推進薬・流体 | 送信 | 受け側ポッドのクロスフィード弁の組を開くと、他方のポッドの燃料と酸化剤がそのポッドのOMSエンジンへ送られ、受け側のタンク隔離弁は閉じておく。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/656）クロスフィードで噴射するときは一方のポッドのタンク隔離弁（2個）を開、他方を閉とし、左右のOMSクロスフィード弁B（2個）を開とする。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=235） | — |
| IF-OMS-08 | 運用管理（規則・処置） | データ・指令 | 受信 | 乗員はパネルO8のLEFT・RIGHT OMS CROSSFEED A・Bスイッチで燃料・酸化剤のクロスフィード弁の組を開閉し、軌道上のインタコネクトはO7のRCSスイッチとあわせて手動で組む。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/655）スイッチがGPC位置のときは、A・Bの燃料・酸化剤弁の組がオービタの計算機の指令で自動的に開閉される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/656） | — |
| IF-OMS-11 | RCS：推進薬貯蔵・分配 | 推進薬・流体 | 送信 | OMS－RCSインタコネクトでは、OMSクロスフィード配管とRCSクロスフィード弁を通して、どちらかのOMSポッドの推進薬を後部RCSジェットへ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/656）OMSエンジンが故障した場合は、インタコネクトでOMS推進薬を後部RCSへ送り、後部RCSの+Xジェットで予定のOMS噴射を完了できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/663） | 上位: IF-ORB-05 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| OM-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.18節 Crossfeeds and Interconnects（PDF p655〜659）：OMSクロスフィードとOMS－RCSインタコネクトの構成、手順、計量を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/655） |
| OM-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A6-6（クロスフィード配管の喪失定義）、A6-54（故障タンクからの供給の制約）、A6-61B（クロスフィード配管の再加圧）、A6-62（弁の連続給電）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1199） |
| OM-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | OMS SSR-1（PDF p794〜797）：推進薬の故障時にメモリの読み書きで弁を設定し、使えるタンクを反対側のエンジンにつなぐ混合クロスフィードの手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=794） |
| OM-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | PDF p141〜142・p145：OMSタンク同士を接続しないこと、インタコネクトを許す条件、クロスフィード配管を使える圧力（蒸気圧と計測誤差）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=145） |
| OM-07 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 9-3〜9-4（PDF p235〜236）：クロスフィード噴射とストレートフィードの弁構成と、噴射後にインタコネクトで供給する構成を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=236） |
| OM-09 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | PDF p17：OMS－RCSインタコネクトを左右のポッドから各1回使ったことと、クロスフィード弁の閉位置表示の故障を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=17） |
| OM-11 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | OMS節（PDF p27）：OMS推進薬23,313 lbmのうち2,188.8 lbmをインタコネクトでRCSへ供給したことを記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=27） |
| OM-13 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | OMS節（PDF p42）：OMSからRCSへのインタコネクトの使用量（左0.468%・60.61 lb、右0.948%・122.77 lb）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=42） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 本書の解釈：クロスフィード配管とOMSクロスフィード弁はRCSクロスフィードにも使われる共用の流路であるが、本書ではOMSの機能として扱い、RCSの推進薬配管をこの配管につなぐRCSクロスフィード弁（1/2、3/4/5）はRCSの機能とした。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/656）

> **注記** STS-2では左OMSのBレグのクロスフィード弁の閉位置表示が故障して弁モータに電力がかかり続け、スイッチをGPC位置にして電力を除いた（連続給電の扱いはA6-62に定められている）。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=17）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p655） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/655
2. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p656） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/656
3. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p658） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/658
4. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-61 RCS MANIFOLD/OMS CROSSFEED LINE REPRESSURIZATION [CIL]（PDF p1199） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1199
5. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p659） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/659
6. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） 3.4.3.3節 Orbital Maneuvering Subsystem（7. OMS Operation in Interconnect/Crossfeed）（PDF p142） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=142
7. JSC-48027 Rev. F Malfunction Procedures（MAL） OMS SSR-1 MIXED XFD: OMS PRPLT FAILURE（PDF p794） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=794
8. Orbit Operations Checklist Rev M PCN-10 9-3 ON-ORBIT OMS BURN（続き）（PDF p235） — https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=235
9. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p663） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/663
10. STS-2 Orbiter Mission Report 2.1.2節 Orbital Maneuvering System（続き）（PDF p17） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=17
11. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
