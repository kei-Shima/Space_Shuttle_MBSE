# 廃棄物収集系（WCS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ECL-WCS-001 |
| 表題 | 廃棄物収集系（WCS）機能説明書 |
| 版・日付 | Rev. F／2026-10-09 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECLSS-001 |
| 関連図 | SSD-SYS-ARC-001 図3 ECLSS 機能構成 |

## 1. 目的

無重量環境での乗員の生物系廃棄物の収集・処理機能と、真空ベント系による気体の船外排出の機能を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ECL-WCS-01 | WCSは、無重量環境で乗員の生物系廃棄物を収集・処理する統合システムで、ミッドデッキの乗員出入口ハッチのすぐ後方に置かれる。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-ECL-WCS-02 | 糞便と紙類を収集・貯蔵・乾燥し、尿を処理して廃水タンクへ送り、エアロックからのEMU凝縮水も廃水タンクへ移す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-ECL-WCS-03 | 便器、小便器、ファンセパレータ、臭気・細菌フィルタ、真空ベントのクイックディスコネクト、制御器で構成される。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-ECL-WCS-04 | ファンセパレータは搬送空気から液体を分離し、液体は廃水タンクへ、空気は臭気・細菌フィルタを通って乗員室へ戻る。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-ECL-WCS-05 | ファンセパレータの制御にはDC電力、運転にはAC電力を使う。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-ECL-WCS-06 | 真空ベント系は、使っていない便器の固形廃棄物の乾燥のほか、ウェットトラッシュ区画の排気と、燃料電池の生成水から水素分離器が除いたH2の船外排出に使われる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=152） |
| F-ECL-WCS-07 | 臭気・細菌フィルタはアンモニアを除くよう設計され、EVA後の大気除染では便器を運転して乗員室の空気をフィルタに通す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1874） |
| F-ECL-WCS-08 | 廃棄物収集器の圧力を計測し、真空ベント隔離弁が閉で故障した場合は、この圧力で真空ベントのオリフィスからの排気を監視する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1989） |
| F-ECL-WCS-09 | WCSの便器や尿収集が使えない場合は、便はアポロ型の便袋、尿は男性用の採尿具（UCD）か女性用の吸収具（UAS）で集める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1988） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ECL-14 | 給水・廃水系（H2O） | 推進薬・流体 | 送信 | WCSは尿を処理して廃水タンクへ送り、ARSの廃水も廃水タンクへ移す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | 下位: IF-H2O-07 下位: IF-WCS-08 |
| IF-ECL-23 | 宇宙空間（船外） | 推進薬・流体 | 送信 | 軌道上の不使用時は便器を真空ベント系に開放し、固形物を乾燥させる。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | 下位: IF-WCS-09 |
| IF-ECL-26 | エアロック支援系（ALS） | 推進薬・流体 | 受信 | WCSは、エアロックからのEMU凝縮水を処理して廃水タンクへ移す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | 下位: IF-ALS-04 |
| IF-ECL-31 | 乗員室（制御対象） | 推進薬・流体 | 双方向 | WCSは乗員の生物系廃棄物をキャビン空気の気流で集め、ファンセパレータで分離した空気を臭気・細菌フィルタで浄化して乗員室へ戻す。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=433）ウェットトラッシュ区画の空気は真空ベント管から約3 lb/dayで船外へ排気される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/749） | 下位: IF-WCS-01 下位: IF-WCS-02 下位: IF-WCS-06 下位: IF-WCS-07 |
| IF-ECL-37 | データ処理系（DPS） | データ・指令 | 送信 | 真空ベントノズル温度（VAC VT NOZ T）をSMのDISP 66 ENVIRONMENTに表示する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/359） | 上位: IF-ORB-19 下位: IF-WCS-12 |
| IF-ECL-43 | 電力系（EPS） | 電力（28 VDC） | 受信 | ファンセパレータ1・2に、パネルMA73CのAC1・AC2 WCS FAN SEP遮断器（計6個）から三相交流を、パネルML86BのMNA・MNB WCS CNTLR遮断器から制御用の直流を供給する。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=487）真空ベント隔離弁にはMNAまたはMNBの直流を、真空ベント管のA・BヒータにはパネルML86BのH2O LINE HTR A・B遮断器から電力を供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/760） | 上位: IF-ORB-14 下位: IF-WCS-10 下位: IF-WCS-11 |

## 4. 下位文書

| 文書番号 | 表題 |
|---|---|
| [SSD-FD-ECL-WCS-URN-001](SSD-FD-ECL-WCS-URN-001.md) | 尿・EMU凝縮水収集（URN）機能説明書 |
| [SSD-FD-ECL-WCS-CMD-001](SSD-FD-ECL-WCS-CMD-001.md) | 便器・固形廃棄物（CMD）機能説明書 |
| [SSD-FD-ECL-WCS-FSP-001](SSD-FD-ECL-WCS-FSP-001.md) | ファンセパレータ・フィルタ（FSP）機能説明書 |
| [SSD-FD-ECL-WCS-VAC-001](SSD-FD-ECL-WCS-VAC-001.md) | 真空ベント（VAC）機能説明書 |
| [SSD-FD-ECL-WCS-OPS-001](SSD-FD-ECL-WCS-OPS-001.md) | 制御・運用管理（OPS）機能説明書 |

## 5. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| A-04 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.25節 Waste Management System：固形廃棄物の収集・乾燥、尿と EMU凝縮水の廃水タンクへの移送、ファンセパレータ、真空ベント、代替の採便・採尿を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/755） |
| B-01 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | 廃棄物収集系・真空ベントの喪失定義（A17-351〜354）と管理（A17-401〜405：使用制約、代替の採便・採尿、真空ベント）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1984） |
| D-05 | NTRS 19850008615 | Other Challenges in the Development of the Orbiter Environmental Control Hardware | アンモニアボイラ、煙検知器、水/水素セパレータ、WCSの開発課題と解決策を扱う。（出典: https://ntrs.nasa.gov/citations/19850008615） |
| F-01 | SAE 901290 | Expanded capabilities of the Extended Duration Orbiter | 再生式CO2除去、N2供給、改良WCSなどのEDO向け改修を概説する。（出典: https://ntrs.nasa.gov/citations/19910065909） |
| F-04 | NTRS 19910065910 | The Extended Duration Orbiter Waste Collection System | 冗長ファンと尿分離器を持つEDO向けWCS。（出典: https://ntrs.nasa.gov/citations/19910065910） |
| G-05 | MDC H1360 | Improved Orbiter Waste Collection System Study（1984年） | 既存WCSの飛行中の使用上の問題を解決する改良概念を検討した。（出典: https://ntrs.nasa.gov/citations/19850009239） |
| G-06 | SAE 861003 | Shuttle Waste Management System Design Improvements and Flight Evaluation | 個人用ユリナル、尿収集気流の増加などの改良と飛行評価。（出典: https://saemobilus.sae.org/content/861003） |
| N-01 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS | 水冷却ループ、ATCS、給水・廃水、WCS、廃水タンクの構成と運用を解説する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| N-07 | IOA報告（1987年・1988年） | IOA: Analysis / Assessment of the life support and airlock support subsystems | 給水・代謝廃棄物・廃水・煙検知・消火を担うLSSと、EVAを支えるALSSの独立解析と、NASA FMEA/CILとの比較評価。（出典: https://www.science.gov/topicpages/a/analysis+results+support） |
| N-15 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report | EVA準備での乗員室10.2 psi減圧、エアロック系の作動、WCSの故障灯、窒素消費量から見た乗員室漏れの少なさなど、飛行中のECLSS実績を記録する。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf） |

## 6. 注記（出典間の相違・構成変更）

> **注記** Rev. Cで、下位の展開（図22）に合わせて、真空ベント系の役割、臭気・細菌フィルタによる大気浄化、収集器圧力の監視、代替の収集の各機能（F-ECL-WCS-06〜09）と、乗員室との上位IF（IF-ECL-31：排泄物とキャビン空気の吸込み、浄化空気の還気、ウェットトラッシュ区画の排気）を追加した（図3では図示省略）。1987年の飛行運用マニュアルの図3.17-1も、WCSのインタフェースとして乗員室の空気、電力、廃水系、真空ベント系、EMU/エアロックを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=433）

> **注記** 電力系とDPSとの下位IF（IF-WCS-10〜12）は、図3の段に対応するIFがないため、Rev. EのARSと同じく上位欄に既存のIF-EPS-12（交流）・IF-EPS-11（直流）・IF-ORB-19を示した。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=487）

> **注記** 検証メモ：IF-ECL-14はWCSがARSの廃水も廃水タンクへ移すとし、SCOM（PDF p755）も廃棄物管理系がARSの廃水を廃水タンクへ移すと記す。本パッケージでは湿度分離器の凝縮水をIF-ECL-07（下位IF-ARS-12）として扱っているため、IF-ECL-14の下位IFには尿とEMU凝縮水の移送（IF-H2O-07）と非常時の真空ベントとの相互接続（IF-WCS-08）だけを含めた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/755）

> **注記** WCSには、初期の型、STS-35で初めて飛行した改良型（DTO 329）、長期滞在用のEDO WCSがある。下位の説明書は主にSCOM（2008年）が記すWCSに基づき、EDO WCSとの違いは各説明書の注記に示した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=15）

> **注記** 真空ベント管には、WCSの便器とウェットトラッシュ区画のほか、水素分離器のH2（IF-H2O-02）、RCRSの再生排気（IF-RCRS-03）、PCSのN2レギュレータの逃し弁（IF-PCS-09）、客室パージ弁もつながる。図22では客室パージ弁を除き、隣の展開と同じ物理IFをその番号のまま描いた。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=215）

> **注記** EMU凝縮水の受入れ（IF-ALS-04）と廃水タンクへの移送（IF-H2O-07）は、エアロック支援系・給水・廃水系の展開と同じ物理IFのため、図22でもその番号のまま描き、新しい番号を作らなかった。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/759）

> **注記** 下位（第3段・第4段）の機能行の L3 要求（REQ-WCS-nn）とトレースは [SSD-RQL-ECL-001](SSD-RQL-ECL-001.md) に示す（SysML v2 テキスト：SysML/SSD-RQL-ECL-001.sysml）。

> **注記** 廃棄物収集系（WCS）の状態と遷移（図171）は [SSD-BEH-ORB-007](SSD-BEH-ORB-007.md) に示す（SysML v2 テキスト：SysML/SSD-BEH-ORB-007.sysml）。

> **注記** 廃棄物収集系（WCS）の機能の故障モード（FMX-WCS-nn）は [SSD-FMX-ECL-001](SSD-FMX-ECL-001.md) に示す（SysML v2 テキスト：SysML/SSD-FMX-ECL-001.sysml）。

## 7. 参考文献

1. NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html
2. JSC-12770 Vol. 12 Basic Rev. B Shuttle Flight Operations Manual – Crew Systems（1987年） 図3.17-1 Waste Collection System interfaces（PDF p433） — https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=433
3. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.24節 Wet Trash Compartment（PDF p749） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/749
4. JSC-48025 Rev. F PCN-13 In-Flight Maintenance (IFM) Checklist W-61 WCS Failed Commode Cntl Vlv（PDF p487） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=487
5. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.25節 Waste Management System（Description）（PDF p755） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/755
6. NSTS-08302 STS-35 Space Shuttle Mission Report（1991年） Waste Collection System（DTO 329）（PDF p15） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=15
7. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.2.2 RCRS Hardware（PDF p215） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=215
8. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.25節 Operations（続き）（PDF p759） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/759
9. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 5.4節 Vacuum Vent System（PDF p152） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=152
10. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-203 Cabin Atmosphere Decontamination Following EVA（PDF p1874） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1874
11. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-405 Vacuum Vent Systems Management [CIL]（PDF p1989） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1989
12. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-403・404 Alternate Fecal/Urine Collection（PDF p1988） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1988
13. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p359） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/359
14. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.25節 Vacuum Vent System・Alternative Waste Collection（PDF p760） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/760

## 8. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-25 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-25 | 関連文書にB-01（NSTS-12820 Vol. A 運用飛行規則）を追加 |
| Rev. B | 2026-09-26 | 関連文書にA-04（Shuttle Crew Operations Manual、USA007587 Rev. A CPN-1）を追加 |
| Rev. C | 2026-09-30 | 下位機能説明書（5件）と図22・図23への展開を追加し、機能（F-ECL-WCS-06〜09）と乗員室との上位IF（IF-ECL-31）を追加、IF-ECL-14・23・26とIF-ECL-31に下位IFを付記、注記・検証メモ（上位IFの扱い、ARS廃水の扱い、WCSの型、真空ベント管の共用）を追加 |
| Rev. D | 2026-10-01 | IF-ECL-37 を追加、IF-ECL-43 を追加（Rev. M） |
| Rev. E | 2026-10-08 | ECLSS 下位要求書 SSD-RQL-ECL-001 への参照を注記（Rev. BK） |
| Rev. F | 2026-10-09 | ECLSS の状態遷移と活動定義書 SSD-BEH-ORB-007 への参照を注記、ECLSS の故障モード定義書 SSD-FMX-ECL-001 への参照を注記（Rev. BL） |
