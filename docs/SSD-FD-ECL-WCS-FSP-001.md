# ファンセパレータ・フィルタ（FSP）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ECL-WCS-FSP-001 |
| 表題 | ファンセパレータ・フィルタ（FSP）機能説明書 |
| 版・日付 | Rev. A／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-WCS-001 |
| 関連図 | SSD-SYS-ARC-001 図22 廃棄物収集系 機能構成 |

## 1. 目的

2台のファンセパレータで小便器・便器からの搬送空気と液体を遠心力で分離し、液体を廃水タンクへ送り、空気を臭気・細菌フィルタで浄化して乗員室へ戻す機能と、電源・喪失判定と保守を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ECL-WCS-FSP-01 | 尿と空気の混合物はファンセパレータに軸方向から入り、回転する衝突分離器が液体を回転貯液部の外壁へ飛ばす。遠心力で分離した液体は固定のピトー管から二重の逆止弁を経て廃水タンクへ送られ、各分離器の廃水出口の逆止弁は停止側の分離器を通る逆流を防ぐ（SCOM 2.25節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/759） |
| F-ECL-WCS-FSP-02 | 空気は回転室から引き出され、臭気・細菌フィルタを通ってキャビン空気と混ざり、乗員室へ戻る（SCOM 2.25節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/759） |
| F-ECL-WCS-FSP-03 | WMSのすべての気体はファンセパレータから臭気・細菌フィルタへ導かれてキャビン空気と混ざり、フィルタは飛行中に取り外して交換できる（SCOM 2.25節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/756） |
| F-ECL-WCS-FSP-04 | 臭気・細菌フィルタは長さ10インチ・直径7インチの円筒で、活性炭と、0.45 μmを超える粒子の99.999%を除くろ材を持つ。通常は飛行ごとに地上で交換し、予備1個をミッドデッキ床の区画に積む（1987年の飛行運用マニュアル）。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=440） |
| F-ECL-WCS-FSP-05 | 各ファンセパレータは回転室5,800 rpm、1相あたり115±5 Vの三相交流で働き、3 Aの遮断器と248°Fの過熱保護を持つ。臭気・細菌フィルタを通って乗員室へ戻る空気は毎分38 ft³である（1987年の飛行運用マニュアル3.17.4.4節）。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=477） |
| F-ECL-WCS-FSP-06 | ファンセパレータ1・2は、パネルMA73CのAC1・AC2 WCS FAN SEP遮断器（計6個）から三相交流を、パネルML86BのMNA・MNB WCS CNTLR遮断器（2個）から制御用の直流を受ける（IFMチェックリストW-61）。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=487） |
| F-ECL-WCS-FSP-07 | 交流の1相を失うと、WCSのファンセパレータは2相運転となり気流が低下する。EDO WCSの尿ファン・分離器は直流モータ（制御器の内部で交流を直流に変換）で、1相の喪失で尿ファンまたは分離器を失う（MAL EPS SSR-111）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=616） |
| F-ECL-WCS-FSP-08 | 直流または交流の電力を確立できないか、分離器があふれて回復できない場合は、WCSのセパレータを喪失とする。セパレータの主な機能は廃水をキャビン大気から分けることである（A17-351）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1984） |
| F-ECL-WCS-FSP-09 | 両方のファンセパレータがあふれて止まった場合に限り、廃水ダンプ系を使って分離器の出口を真空にさらし、出口圧力を下げて回復させる（IFMチェックリストW-70）。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=496） |
| F-ECL-WCS-FSP-10 | 臭気・細菌フィルタはWCSを通る気流からアンモニアを除くよう設計され、EVA後の大気除染では便器を運転してフィルタに最大の気流を流し、乗員室の空気はおよそ60分でフィルタを1巡する（A15-203）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1874） |
| F-ECL-WCS-FSP-11 | 火災の鎮火後は、WCSの活性炭フィルタ、ATCO、LiOHキャニスタで乗員室の大気を浄化する（SCOM 6.8節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/891） |
| F-ECL-WCS-FSP-12 | STS-65（EDO WCS）では、ファンセパレータ1が運転中に異音と臭気を出し、回転数が通常に達しなかったためファンセパレータ2に切り替えた。着陸後には、水タンクの再加圧で廃水タンクの液体が逆止弁を通って逆流し、ミッドデッキにあふれた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=34） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-H2O-07 | 給水・廃水系：廃水貯蔵 | 推進薬・流体 | 送信 | WCSで処理した尿と、エアロックからのEMU凝縮水を廃水タンクへ受け入れる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/755） | 上位: IF-ECL-14 |
| IF-WCS-03 | 尿・EMU凝縮水収集 | 推進薬・流体 | 受信 | 尿と空気の混合物（EVAを行う飛行ではEMU凝縮水を含む）を、ホースブロックで選んだ一方のファンセパレータへ送る。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=434） | — |
| IF-WCS-04 | 便器・固形廃棄物 | 推進薬・流体 | 受信 | 便器の搬送空気は疎水性の多孔質ライナを通って自由な液体と細菌を除かれ、ファンセパレータへ引かれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/759） | — |
| IF-WCS-06 | 乗員室（制御対象） | 推進薬・流体 | 送信 | ファンセパレータから出た空気を臭気・細菌フィルタに通し、キャビン空気と混ぜて乗員室へ戻す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/756）フィルタを通って乗員室へ戻る空気は毎分38 ft³である。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=477） | 上位: IF-ECL-31 |
| IF-WCS-10 | 電力系（EPS） | 電力（28 VDC） | 受信 | ファンセパレータ1・2に、パネルMA73CのAC1・AC2 WCS FAN SEP遮断器（計6個）から三相交流を、パネルML86BのMNA・MNB WCS CNTLR遮断器から制御用の直流を供給する。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=487）FAN SEP選択スイッチが1のとき主母線Aの直流がファンセパレータ1に、2のとき主母線Bの直流がファンセパレータ2に供給される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/758） | 上位: IF-ECL-43 |
| IF-WCS-13 | 制御・運用管理 | データ・指令 | 受信 | FAN SEP選択スイッチで使うファンセパレータを選び、MODEスイッチがAUTOのときは小便器のホースをクレードルから外すと選んだ分離器が起動する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/758）リミットスイッチが故障したときは、バイパススイッチで対応するリレーに直流を与えて分離器に交流を供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/760） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| WC-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.25節（PDF p755〜759）：ファンセパレータが遠心力で液体を分離してピトー管と逆止弁から廃水タンクへ送り、空気を臭気・細菌フィルタからキャビンへ戻すと示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/759） |
| WC-03 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.6.2節（PDF p219）：水・廃棄物管理系の制約として、ファンセパレータの2相（電気）運転を挙げ、表3.4.6.2-1（p220）で分離器の運転温度を32〜90°Fとする。（出典: https://ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=219） |
| WC-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-351（PDF p1984）：直流・交流の電力を確立できないか、分離器があふれて回復できない場合にWCSのセパレータを喪失とし、A15-203（p1874）でEVA後の除染にWCSの臭気・細菌フィルタを使う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1984） |
| WC-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | EPS SSR-111 Bus Loss: AC1 ΦA（PDF p616）：WCSのファンセパレータは2相運転で気流が低下し、EDO WCSの尿ファン・分離器は1相の喪失で使えなくなると注記する。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=616） |
| WC-08 | NTRS 19910065910 | The Extended Duration Orbiter Waste Collection System | EDO向けWCSが冗長ファンと尿分離器を持つと記す（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19910065910） |
| WC-11 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS | ファンセパレータが搬送空気から液体を分離し、液体は廃水タンクへ、空気は臭気・細菌フィルタを通って乗員室へ戻ると記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| WC-14 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） | 3.17.3.1節（PDF p439〜440）：2台のファンセパレータの遠心分離と逆止弁、空気中の液体の持ち出し0.1%以下、臭気・細菌フィルタ（活性炭と0.45 μmのろ材、予備1個）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=439） |
| WC-16 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | W-70 WCS Fan Sep 1(2) Clearing（PDF p496〜498）：両方のファンセパレータがあふれて止まったときに、出口を廃水ダンプ系で真空にさらして回復させる手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=496） |
| WC-19 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | PDF p187（飛行試験問題報告49）：便器の使用中は臭気の制御に活性炭フィルタとキャビンのLiOHキャニスタを使うと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=187） |
| WC-23 | NSTS-08292 | STS-65 Space Shuttle Mission Report（1994年） | PDF p33〜34：臭気・細菌フィルタの交換の困難、ファンセパレータ1の異常（回転数が上がらない）と2への切替、着陸後の廃水タンクから逆止弁を通る逆流を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=34） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：ファンセパレータの空気流量は、1987年の飛行運用マニュアルの本文（PDF p439）が合計37 ft³/min、性能の節（p476〜477）とIFMの系統図（W-6）が38 ft³/minとする。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=439）

> **注記** EDO WCSは尿ファン・尿分離器・便器ファンを別に持ち、AC1母線の喪失で失う機器にUrine Sep 1・Urine Fan 1・Commode Fan 1が挙がる（MAL EPS SSR-110）。SSD-ECLSS-REF-002のF-04（抄録）も、EDO向けWCSが冗長ファンと尿分離器を持つとする。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=612）

> **注記** 有害物質の漏れ（レベル4）への対処では、WCSの臭気・細菌フィルタと既設のLiOH・活性炭キャニスタでも大気を浄化できるとする（A13-155）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1807）

> **注記** STS-2の報告は、便器の使用中は臭気の制御に活性炭フィルタとキャビンのLiOHキャニスタを使うと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=187）

> **注記** 分離した尿とEMU凝縮水の廃水タンクへの移送はIF-H2O-07（上位IF-ECL-14）として示した。給水・廃水系の展開（図20）と同じ物理IFのため、その番号のまま用いた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/755）

## 6. 参考文献

1. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.25節 Operations（続き）（PDF p759） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/759
2. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.25節 Waste Management System（系統図）（PDF p756） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/756
3. JSC-12770 Vol. 12 Basic Rev. B Shuttle Flight Operations Manual – Crew Systems（1987年） 3.17.3.1節 Odor/Bacteria Filter（PDF p440） — https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=440
4. JSC-12770 Vol. 12 Basic Rev. B Shuttle Flight Operations Manual – Crew Systems（1987年） 3.17.4.4節 Metabolic Waste Processing（Fan/water separator・Odor/bacteria filter）（PDF p477） — https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=477
5. JSC-48025 Rev. F PCN-13 In-Flight Maintenance (IFM) Checklist W-61 WCS Failed Commode Cntl Vlv（PDF p487） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=487
6. JSC-48027 Rev. F Malfunction Procedures（MAL） EPS SSR-111 Bus Loss: AC1 ΦA（注記）（PDF p616） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=616
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-351・352 WCS Separator・WCS Urine Collection（PDF p1984） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1984
8. JSC-48025 Rev. F PCN-13 In-Flight Maintenance (IFM) Checklist W-70 WCS Fan Sep 1(2) Clearing（PDF p496） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=496
9. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-203 Cabin Atmosphere Decontamination Following EVA（PDF p1874） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1874
10. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 6.8節 Systems Failures（PDF p891） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/891
11. NSTS-08292 STS-65 Space Shuttle Mission Report（1994年） Anomalies（odor）（PDF p34） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=34
12. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.25節 Waste Management System（Description）（PDF p755） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/755
13. JSC-12770 Vol. 12 Basic Rev. B Shuttle Flight Operations Manual – Crew Systems（1987年） 3.17.3.1節 Fluid Processing Assembly（PDF p434） — https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=434
14. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.25節 Operations（PDF p758） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/758
15. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.25節 Vacuum Vent System・Alternative Waste Collection（PDF p760） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/760
16. JSC-12770 Vol. 12 Basic Rev. B Shuttle Flight Operations Manual – Crew Systems（1987年） 3.17.3.1節 Fan Separator Assembly・Urinal Prefilter（PDF p439） — https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=439
17. JSC-48027 Rev. F Malfunction Procedures（MAL） EPS SSR-110 Bus Loss: AC1（PDF p612） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=612
18. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A13-155 Orbiter Hazardous Substance Spill Response（続き）（PDF p1807） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1807
19. JSC-17959 STS-2 Orbiter Mission Report（1982年） Odor（ECLSS）（PDF p187） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=187

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-10-01 | IF-WCS-10 の上位を IF-ECL-43 に付け替え（Rev. M） |
