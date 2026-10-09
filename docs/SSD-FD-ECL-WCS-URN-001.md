# 尿・EMU凝縮水収集（URN）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ECL-WCS-URN-001 |
| 表題 | 尿・EMU凝縮水収集（URN）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-WCS-001 |
| 関連図 | SSD-SYS-ARC-001 図22 廃棄物収集系 機能構成 |

## 1. 目的

小便器（ホースと個人用ファンネル）で乗員の尿を搬送空気とともに集めてファンセパレータへ送る機能と、エアロックからのEMU凝縮水を同じ経路で受け入れる機能、プレフィルタの交換や尿前処理などの保守を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ECL-WCS-URN-01 | 小便器はホースに取り付けたファンネルで、男女とも使え、液体廃棄物を集めて廃水タンクへ運ぶ。液体の搬送気流はファンセパレータが作る（SCOM 2.25節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/755） |
| F-ECL-WCS-URN-02 | MODEスイッチがAUTOのとき、小便器のホースをクレードルから外すと選んだファンセパレータが働き、小便器を通して毎分10 ft³以上、コーヒー缶（紙類の収集容器）を通して毎分30 ft³のキャビン空気を引く（SCOM 2.25節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/758） |
| F-ECL-WCS-URN-03 | 1987年の飛行運用マニュアルは、無重量で液体を運ぶために気流を用い、尿の最大流量を0.09 lb/sとし、各乗員に個人用のファンネル（男性用は円錐形、女性用は細長い形）を用意するとする。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=434） |
| F-ECL-WCS-URN-04 | ファンネルの根元には、気流中の異物を捕らえる円錐形の使い捨てプレフィルタ（40メッシュのステンレス網）があり、少なくとも1日1回交換する（1987年の飛行運用マニュアル）。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=439） |
| F-ECL-WCS-URN-05 | EMU凝縮水の排出モードでは、MODEスイッチにガードをかぶせて停止を防ぎ、分離器があふれるおそれがあるため排出中は小便器を使わない。EMUの廃水はEVAを行う飛行だけエアロックの廃水弁から排出し、ほかは尿収集モードと同じである（SCOM 2.25節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/759） |
| F-ECL-WCS-URN-06 | EMU排出の配管はホースブロックの中央の管につながり、故障処置手順（ECLS 6.2b）はキャビン漏れの切り分けでこの管をふさぐ手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=274） |
| F-ECL-WCS-URN-07 | 1987年の飛行運用マニュアルは、尿の流量を公称0.05 lb/s・最大0.09 lb/s、1回の最大量を1.8 lb、水分の公称値を3.31 lb/人日とする。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=474） |
| F-ECL-WCS-URN-08 | 配管の閉塞・漏れや両方の分離器の喪失などで、いずれの経路でも尿を廃水系へ運べない場合は、WCSの尿収集を喪失とする（A17-352）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1984） |
| F-ECL-WCS-URN-09 | WCSの清掃では、プレフィルタを点検して1日1回または必要に応じて交換し、ホースブロックから外したホースのスクリーンを点検・清掃する（Orbit Operations Checklist）。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=405） |
| F-ECL-WCS-URN-10 | 尿前処理のため、プレフィルタハウジングとホースブロック延長の間にOxoneホース区間（OHS）を取り付け、定期的に交換する（Orbit Operations Checklist）。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=409） |
| F-ECL-WCS-URN-11 | STS-108では、STS-97のWCSで見つかった想定外の析出物に対処するため、アルカリ性と酸性の尿の固形物の生成を防ぐよう再設計したシャトル尿前処理組立（SUPA）を搭載した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=34） |
| F-ECL-WCS-URN-12 | STS-4では小便器の気流が飛行中に低下し、プレフィルタを1回清掃すると回復した。飛行後の点検でプレフィルタの30%が目詰まりしていた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=43） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-WCS-01 | 乗員室（制御対象） | 推進薬・流体 | 受信 | 乗員の尿を、小便器のファンネルからキャビン空気の搬送気流（毎分10 ft³以上）とともに吸い込む。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/758） | 上位: IF-ECL-31 |
| IF-WCS-03 | ファンセパレータ・フィルタ | 推進薬・流体 | 送信 | 尿と空気の混合物（EVAを行う飛行ではEMU凝縮水を含む）を、ホースブロックで選んだ一方のファンセパレータへ送る。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=434） | — |
| IF-ALS-04 | エアロック支援系：EMU補給・支援 | 推進薬・流体 | 受信 | EVAを行う飛行では、EMUの凝縮水をエアロックから受けてWCSで処理し、廃水タンクへ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/755）EMUの排水はエアロックの廃水弁から排出され、WCSはEMU排水モードで受ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/759） | 上位: IF-ECL-26 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| WC-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.25節 Operations（PDF p758〜759）：尿収集モードで選んだファンセパレータが小便器に毎分10 ft³以上の気流を作ると述べ、EMU凝縮水の排出モードでは分離器があふれるおそれから小便器を使わないとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/758） |
| WC-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-352（PDF p1984）：いずれの経路でも尿を廃水系へ運べない場合にWCSの尿収集を喪失とし、A17-404（p1988）でUCD・UASによる代替の採尿を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1984） |
| WC-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | ECLS 6.2b（PDF p274）：キャビン漏れの切り分けで、ホースブロックの中央の管（EMU排出）をふさぐ手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=274） |
| WC-10 | SAE 861003 | Shuttle Waste Management System Design Improvements and Flight Evaluation | 個人用の小便器（ファンネル）や尿収集の気流の増加などの改良を報告する（抄録で確認）。（出典: https://saemobilus.sae.org/content/861003） |
| WC-11 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS | WCSが尿を処理して廃水タンクへ送り、エアロックからのEMU凝縮水も廃水タンクへ移すと記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| WC-14 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） | 3.17.3.1節（PDF p434・p439）：小便器（ホースと個人用ファンネル）、無重量で液体を運ぶ気流、最大尿流量0.09 lb/s、円錐形のプレフィルタ（1日1回以上交換）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=434） |
| WC-16 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | W-65 WCS Fan Sep Failure（PDF p491〜495）：ファンセパレータの故障時に、小便器を廃水ダンプフィルタ経由で廃水ダンプ管へつないで使う手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=491） |
| WC-17 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | Cue Card 15-13 Urine Pretreat Changeout（PDF p409）：プレフィルタハウジングとホースブロック延長の間の尿前処理用ホース区間（OHS）を交換する手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=409） |
| WC-20 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） | PDF p43：小便器の気流が飛行中に低下し、プレフィルタの清掃で回復し、飛行後にプレフィルタの30%の目詰まりを確認したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=43） |
| WC-24 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | PDF p34：STS-97のWCSで見つかった想定外の析出物に対処するため再設計したシャトル尿前処理組立（SUPA）を搭載したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=34） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：1987年の飛行運用マニュアルの本文（PDF p434・p446）は小便器の気流を15 ft³/min（0.23 m³/min）と記すが、換算値は約8 ft³/minに当たり、同書の性能の節（3.17.4.3節）は小便器の必要気流を8 ft³/minとする。SCOM（2008年）は毎分10 ft³以上とする。本書はSCOMの値を用いた。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=475）

> **注記** SSD-ECLSS-REF-002のG-06（SAE 861003、抄録）は、個人用の小便器（ファンネル）や尿収集の気流の増加などの改良とその飛行評価を報告する（本文は未確認）。（出典: https://saemobilus.sae.org/content/861003）

> **注記** エアロックからのEMU凝縮水の受入れはIF-ALS-04（上位IF-ECL-26）として示した。エアロック支援系の展開（図24）と同じ物理IFのため、その番号のまま用いた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/759）

## 6. 参考文献

1. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.25節 Waste Management System（Description）（PDF p755） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/755
2. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.25節 Operations（PDF p758） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/758
3. JSC-12770 Vol. 12 Basic Rev. B Shuttle Flight Operations Manual – Crew Systems（1987年） 3.17.3.1節 Fluid Processing Assembly（PDF p434） — https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=434
4. JSC-12770 Vol. 12 Basic Rev. B Shuttle Flight Operations Manual – Crew Systems（1987年） 3.17.3.1節 Fan Separator Assembly・Urinal Prefilter（PDF p439） — https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=439
5. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.25節 Operations（続き）（PDF p759） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/759
6. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.2b CABIN P LOW/dP/dT（続き）（PDF p274） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=274
7. JSC-12770 Vol. 12 Basic Rev. B Shuttle Flight Operations Manual – Crew Systems（1987年） 3.17.4.1〜3.17.4.2節 Commode Interlocks・Waste Production Quantities（PDF p474） — https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=474
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-351・352 WCS Separator・WCS Urine Collection（PDF p1984） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1984
9. JSC-48035 Rev. M PCN-10 Orbit Operations Checklist Cue Card 15-9 Fan Sep Switching・WCS Cleaning（PDF p405） — https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=405
10. JSC-48035 Rev. M PCN-10 Orbit Operations Checklist Cue Card 15-13 Urine Pretreat Changeout（PDF p409） — https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=409
11. NSTS-37436 STS-108 Space Shuttle Mission Report（2002年） Supply and Waste Water・Waste Collection Subsystem（PDF p34） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=34
12. JSC-18553 STS-4 Orbiter Mission Report（1982年） Waste Management（PDF p43） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=43
13. JSC-12770 Vol. 12 Basic Rev. B Shuttle Flight Operations Manual – Crew Systems（1987年） 3.17.4.3節 Metabolic Waste Collection（PDF p475） — https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=475
14. SAE 861003 Shuttle Waste Management System Design Improvements and Flight Evaluation — https://saemobilus.sae.org/content/861003

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
