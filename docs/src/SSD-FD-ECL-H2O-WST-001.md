# 廃水貯蔵（WST）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ECL-H2O-WST-001 |
| 表題 | 廃水貯蔵（WST）機能説明書 |
| 版・日付 | Rev. A／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-H2O-001 |
| 関連図 | SSD-SYS-ARC-001 図20 給水・廃水系 機能構成 |

## 1. 目的

湿度分離器の凝縮水と、廃棄物収集系からの尿・EMU凝縮水を窒素加圧の廃水タンクに衛生的に貯め、ダンプ配管へ送る機能と、廃水量の管理、CWCによる予備の容量、漏れ時の処置を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ECL-H2O-WST-01 | 廃水タンクは給水タンクと同じ形の1基で、ミッドデッキ床下にあり、乗員の液体廃棄物（尿）と湿度分離器の凝縮水を処分まで衛生的に貯める（訓練マニュアル5.2節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=148） |
| F-ECL-H2O-WST-02 | 廃水タンクの排出可能量は165 lb（残量3.3 lbを除く）で、給水タンクと同じ窒素源で加圧される（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/401） |
| F-ECL-H2O-WST-03 | 廃水はパネルML31CのWASTE H2O TANK 1 VLVスイッチで操作する入口弁から入り、入口弁を開けばタンクの廃水をダンプ配管へも送れる（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/401） |
| F-ECL-H2O-WST-04 | 凝縮水QDの追加に伴い、湿度分離器の共通出口はドレン配管経由で廃水タンクにつながり、出口（ドレン）弁を開くと凝縮水がタンクへ入り、凝縮水の収集時は弁を閉じてCWCへ流す（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/401） |
| F-ECL-H2O-WST-05 | 廃水タンクは量が80%に達する前に廃水ダンプ配管からダンプし、最後の着陸日を支える場合は最終着陸機会の2時間後に93（88）%以下となるようにする（運用飛行規則A17-503A・B）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1994） |
| F-ECL-H2O-WST-06 | 廃水の管理は、ダンプとCWCの使用を優先し、次いでクロスタイ経由の給水ノズルからのダンプ、飛行の早期終了、最後のEMU補給後に給水タンクBを予備の廃水タンクとすることの順とする（A17-503）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1995） |
| F-ECL-H2O-WST-07 | 廃水タンクは0（5）%までダンプしない。0%ではダンプ配管とベローズが真空になり、WCSと湿度分離器の逆止弁が開いて乗員室の漏れとなるおそれがある（A17-504）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1995） |
| F-ECL-H2O-WST-08 | 廃水タンクは、充填できない、タンクか入口マニホールドに修理できない漏れがある、98（93）%でダンプ能力を失った、またはベローズが漏れて廃液圧がH2O N2レギュレータ入口圧より5 psidを超えて高い場合に喪失とする（A17-451）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1990） |
| F-ECL-H2O-WST-09 | 過去の飛行で廃水の生成量は1人1日最大6.2 lbあり、ISSミッションではISSとの結合中の廃水ダンプを減らすため湿度凝縮水をCWCに集める（訓練マニュアル5.2節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=148） |
| F-ECL-H2O-WST-10 | 廃水タンクは1人1日約4.4%ずつ増え、尿と凝縮水の寄与はほぼ等しい（SCOM ECLSSの経験則）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/419） |
| F-ECL-H2O-WST-11 | 漏れのある廃水タンクはベントして乗員室と同圧にしてダンプし、湿度分離器とWCSのファンセパレータの液体をCWCで集める。通常の飛行はCWCを2個（各95 lbm）積み、7人の乗員で1個あたり約45時間分となる（A17-506B）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1999） |
| F-ECL-H2O-WST-12 | 廃水圧が13 psig未満か22 psig超でSMアラートが出ると、故障処置手順6.5cでベローズの損傷や、廃水量95%以上でのタンク満杯を切り分ける（MAL 6.5c）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=325） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-H2O-07 | 廃棄物収集系：ファンセパレータ | 推進薬・流体 | 受信 | WCSで処理した尿と、エアロックからのEMU凝縮水を廃水タンクへ受け入れる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/755） | 上位: IF-ECL-14 |
| IF-H2O-08 | 船外ダンプ・クロスタイ | 推進薬・流体 | 送信 | 廃水タンクの入口弁は出入口を兼ね、弁を開くとタンクの廃水を廃水ダンプ配管へ送れる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/401） | — |
| IF-H2O-09 | DPS・アビオニクス | データ・指令 | 送信 | 廃水タンク量と廃水圧をSPEC 66 ENVIRONMENTに送る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=160）廃水圧が13 psig未満か22 psig超で、S66 WASTE H2O PRESのSMアラートが出る。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=325） | 上位: IF-ECL-35 |
| IF-H2O-14 | タンク加圧 | 推進薬・流体 | 受信 | 同じN2マニホールドから廃水タンクを加圧する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/401） | — |
| IF-THC-05 | 温湿度制御：湿度分離器 | 推進薬・流体 | 受信 | 分離した凝縮水を、分離器の共通出口から排出ラインを経て廃水タンクへ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/401）ISS飛行では、軌道上で凝縮水をCWCへ切り替えて溜め、分離後に緊急クロスタイの廃水QDから機外へ捨てる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） | 上位: IF-ARS-12 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| WA-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 5.2節（PDF p148）：廃水タンク（給水タンクと同形）の入口弁とドレン弁、80%でのダンプ、CWCによる予備の容量、1人1日最大6.2 lbの生成量、ISSミッションでの凝縮水のCWC収集を解説する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=148） |
| WA-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p401〜403）：廃水タンク（165 lb）、入口弁とドレン弁、凝縮水QDとCWCによる凝縮水の収集を示し、経験則（p419）で廃水タンクの増加率（1人1日約4.4%）を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/401） |
| WA-03 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 表3.4.6.2-1（PDF p220）：廃水タンクを含む水・廃棄物管理サブシステムの構成品の温度限界を示す。（出典: https://ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=220） |
| WA-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-451・503・504・506（PDF p1990〜1999）：廃水タンクの喪失定義、80%でのダンプとCWC・クロスタイ・予備タンクの優先順位、最低量5%、漏れの処置を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1994） |
| WA-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.5c（PDF p325）：廃水圧（13〜22 psig）と廃水量95%以上の処置を示し、SSR-19（p361）で廃水の小さな漏れの切り分けを示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=325） |
| WA-10 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS | 廃水タンク（165 lb）の寸法と重量を記し、廃水系が湿度分離器と乗員からの廃水を貯めると記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| WA-12 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.4.3節（PDF p83）：廃水の液圧（13〜22 psig）と廃水タンク量90%超のSMアラートを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=83） |
| WA-14 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist | CWC OPS, WASTE（W-10、PDF p434）：廃水タンクが満杯でダンプできないときに、CWCへ廃水を貯める手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=434） |
| WA-15 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist | SHUTTLE CONDENSATE COLLECTION（5-43、PDF p153）：凝縮水QDとCWCによる凝縮水の収集と、廃水タンクのドレン弁の操作を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=153） |
| WA-18 | NSTS-08302 | STS-35 Space Shuttle Mission Report（1991年） | PDF p15：廃水の収集量は予測より26%多く、ダンプ配管の閉塞後はCWCと尿吸収具へ廃水を移して10日の飛行を終えたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=15） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：ドレン弁を、訓練マニュアル（5.2節）は地上整備専用で飛行中は閉・無給電とし、SCOM（PDF p401）は凝縮水QDの追加後は開いて凝縮水をタンクへ入れるとし、軌道運用チェックリスト（5-43、PDF p153）は凝縮水の収集中に閉じて終了後に開く。本書はSCOMと軌道運用チェックリストに従った。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=148）

> **注記** 湿度分離器の凝縮水の受入れは図12のIF-ARS-12をそのまま用いた（同じ物理IFのため新しい番号を作らない）。IF-ARS-12の上位IFはIF-ECL-07である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375）

> **注記** WCSは尿とエアロックからのEMU凝縮水を廃水タンクへ移す（SCOM 2.25節）。これらはIF-ECL-14の下位（IF-H2O-07）にまとめた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/755）

> **注記** 廃水タンクの弁（パネルML31C）もパネルML86Bの遮断器から給電されるが、図20では給電のIFを給水貯蔵・分配（IF-H2O-06）と船外ダンプ・クロスタイ（IF-H2O-11）で代表させた。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=153）

## 6. 参考文献

1. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 5.2節 Wastewater Storage System（PDF p148） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=148
2. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Galley Water Supply・Waste Water System（PDF p401） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/401
3. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-503 Waste Water Storage（PDF p1994） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1994
4. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-503（続き）・A17-504 Minimum Waste Tank Quantity After Dumping（PDF p1995） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1995
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-451 Waste Water Tank（PDF p1990） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1990
6. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 ECLSS Rules of Thumb（PDF p419） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/419
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-506 Waste Water System Leak Management（続き）（PDF p1999） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1999
8. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.5c WASTE H2O PRESS・DMP LN T・NOZ T（PDF p325） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=325
9. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.25節 Waste Management System（PDF p755） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/755
10. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 図5-13 SPEC 66 ENVIRONMENT（PDF p160） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=160
11. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Cabin Air Humidity Control（ATCO）（PDF p376） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376
12. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Humidity Separators（PDF p375） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375
13. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 5.5節 Supply and Wastewater System Controls（続き）（PDF p153） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=153

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-10-01 | IF-H2O-09 の上位を IF-ECL-35 に付け替え（Rev. M） |
