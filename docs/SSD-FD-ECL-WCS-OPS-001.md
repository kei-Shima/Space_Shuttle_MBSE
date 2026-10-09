# 制御・運用管理（OPS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ECL-WCS-OPS-001 |
| 表題 | 制御・運用管理（OPS）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-WCS-001 |
| 関連図 | SSD-SYS-ARC-001 図22 廃棄物収集系 機能構成 |

## 1. 目的

WCSの制御器（MODE・FAN SEP・バイパススイッチ、VACUUM VALVE）による構成の切替と、使用制約、喪失時の代替の収集、真空ベント系の管理、電源喪失・キャビン漏れ時の操作、清掃など、運用飛行規則と手順書によるWCSの運用管理を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ECL-WCS-OPS-01 | WCSの制御器はVACUUM VALVE、FAN SEP選択スイッチ、MODEスイッチ、ファンセパレータのバイパススイッチ、COMMODE CONTROLハンドルである。MODEスイッチとハンドルは機械的に連動して望ましくない構成を防ぎ、ほかの制御器は独立に働く（SCOM 2.25節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/758） |
| F-ECL-WCS-OPS-02 | 不使用時は、COMMODE CONTROLハンドルをOFF（後ろ・下）、FAN SEPを1、MODEをOFF（尿収集弁を閉）、両方のバイパススイッチをOFF、VACUUM VALVEをOPENとし、便器を真空にさらして廃棄物を乾燥・消毒する（1987年の飛行運用マニュアル）。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=446） |
| F-ECL-WCS-OPS-03 | レバーロック式のFAN SEP 1・2 BYPASSスイッチは、FAN SEPまたはMODEスイッチ内のリミットスイッチの故障を手動で迂回し、対応するリレーに直流を与えてファンセパレータに交流を供給する。両方を同時にONにせず、使う前にFAN SEPとホースブロックを同じ分離器に合わせる（SCOM 2.25節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/760） |
| F-ECL-WCS-OPS-04 | ファンセパレータの切替では、ホースをクレードルに収めてFAN SEP選択スイッチをOFFにし、ホースブロックを切替先に合わせてから選択スイッチを切り替え、切替先の分離器が30秒回った後に通常どおり使う（Orbit Operations Checklist）。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=405） |
| F-ECL-WCS-OPS-05 | 乗員室の再与圧中（N2の大流量でO2濃度が下がりうる）と、EMUの排水中（分離器の最大廃水流量0.09 lbm/sを超えてあふれる）はWCSを使わない（A17-401）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1987） |
| F-ECL-WCS-OPS-06 | インラインフィルタからWCS/廃水系の境界のQDまでの尿配管に修理できない漏れがある場合は、乗員室に水が漏れないよう、WCSで液体を運ばない（A17-402）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1987） |
| F-ECL-WCS-OPS-07 | 便器を失った場合はアポロ型の便袋で、尿収集を失った場合は男性用の採尿具（UCD）か女性用の吸収具（UAS）で代替する。標準の搭載量は便袋40枚、UCD 58個・UAS 36個で、少なくともPLS＋2日分に当たる（A17-403・404）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1988） |
| F-ECL-WCS-OPS-08 | 隔離弁が閉で故障した場合は、収集器圧力で真空ベントのオリフィスからの排気を監視する。真空ベント機能を失った場合は、WCSの真空弁を再突入まで開いたままにし、非常時の真空ベント運用のIFMで機能を回復するまで便器の使用を止める。真空弁を閉じると真空ベント管内に数分で可燃性の混合気ができるため、閉じてはならない（A17-405）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1989） |
| F-ECL-WCS-OPS-09 | 飛行継続の判断（A17-1001）では、WCSがない場合は少なくともPLS＋2日（3日）分の袋が要り、飛行の終了時期は排泄の頻度、乗員の人数・性別、代替の収集具の数で決まる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2034） |
| F-ECL-WCS-OPS-10 | AC1母線を失った場合はWCSのファンセパレータ1が止まるため、ホースをクレードルに収め、ホースブロックとFAN SEP選択スイッチをファンセパレータ2に切り替える（MAL EPS SSR-110）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=612） |
| F-ECL-WCS-OPS-11 | 小さなキャビン漏れの切り分けでは、MCCの指示でCOMMODE CNTLを下げ、WCSのVAC VLVと真空ベント隔離弁を閉じ、小便器のホースとホースブロックを外してEMU排出の中央管をテープでふさぐ（MAL ECLS SSR-8）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=345） |
| F-ECL-WCS-OPS-12 | 使用後はウェットワイプでWCSを清掃し、1日1回は消毒用ワイプで消毒する。小便器のファンネルも毎日消毒できる（SCOM 2.25節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/759） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-WCS-13 | ファンセパレータ・フィルタ | データ・指令 | 送信 | FAN SEP選択スイッチで使うファンセパレータを選び、MODEスイッチがAUTOのときは小便器のホースをクレードルから外すと選んだ分離器が起動する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/758）リミットスイッチが故障したときは、バイパススイッチで対応するリレーに直流を与えて分離器に交流を供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/760） | — |
| IF-WCS-14 | 便器・固形廃棄物 | データ・指令 | 送信 | MODEスイッチをOFFから動かすまでCOMMODE CONTROLハンドルを操作できないよう、機械的に連動させる。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=474）SCOMでは、MODEスイッチをCOMMODE/MANUAL/EMUにしないとハンドルを前へ押せない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/759） | — |
| IF-WCS-15 | 真空ベント | データ・指令 | 送信 | WCSのVACUUM VALVEで便器への真空ベント管を開閉し、軌道上は通常開き、打上げ・再突入とWCSの空気漏れなどの非常時に閉じる。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=468）真空ベント隔離弁はパネルML31CのWASTE H2O VACUUM VENT ISOL VLV CONTROLスイッチで開閉する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/760） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| WC-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 表5-1（PDF p168〜169）：パネルML86BのMNA・MNB WCS CNTLR遮断器がWCSの制御器に、MNA・MNB VAC VENT ISOL VLV遮断器が真空ベント隔離弁に電力を供給すると示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=168） |
| WC-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.25節（PDF p758・p760）：VACUUM VALVE・FAN SEP・MODE・バイパススイッチとCOMMODE CONTROLハンドルの操作、ファンセパレータの切替、代替の採便・採尿（アポロ型便袋、UCD、Pull-Ups）を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/758） |
| WC-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-401〜405（PDF p1987〜1989）：乗員室の再与圧中とEMUの排水中の使用禁止、尿配管の漏れの扱い、代替の採便・採尿、真空ベント系の管理を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1987） |
| WC-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | EPS SSR-110 Bus Loss: AC1（PDF p612）とECLS SSR-8（p345）：母線の喪失時のファンセパレータの切替と、小さなキャビン漏れの切り分けでのWCSの操作を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=612） |
| WC-11 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS | ファンセパレータの制御にDC電力、運転にAC電力を使うと記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| WC-14 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） | 表3.17-1（PDF p467〜473）：MODE・COMMODE CONTROL・VACUUM VALVE・FAN SEP・バイパスの各操作と、MN A・MN B WCS CNTRL、AC1・AC2 WCS FAN SEPの遮断器の機能を示し、3.17.4.1節（p474）で連動機構を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=469） |
| WC-17 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | Cue Card 15-9 Fan Sep Switching・WCS Cleaning（PDF p405）：ファンセパレータの切替、プレフィルタ・ホースのスクリーン・座面の清掃、UCD・アポロ型便袋による代替の収集を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=405） |
| WC-21 | JSC-19278 | STS-8 National Space Transportation Systems Program Mission Report（1983年） | PDF p12：漏れを抑えるため就寝中に真空ベント弁を閉じる手順をとり、手動の再与圧が増えたほかは飛行に影響がなかったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf#page=12） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：女性の代替の採尿具を、運用飛行規則A17-404は尿吸収具（UAS）、SCOM（2008年、PDF p760）は大人用おむつを改良したPull-Upsとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/760）

> **注記** 故障処置手順は、WCSとEDO WCSで操作を分けて示し、EDO WCSではURINAL SELとURINE DIVERTER VLVで尿の系統を切り替える（MAL EPS SSR-110）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=612）

> **注記** IOAのFMEA/CIL評価（1988年）は、別の故障が重なれば代替の収集手段が要りうるWCSの「off nominal」な故障を臨界度3/2Rとしたが、NASAのFMEAはミッションに必須でない故障としていた。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=69）

## 6. 参考文献

1. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.25節 Operations（PDF p758） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/758
2. JSC-12770 Vol. 12 Basic Rev. B Shuttle Flight Operations Manual – Crew Systems（1987年） 3.17.3.4節 WCS Operating Modes（PDF p446） — https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=446
3. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.25節 Vacuum Vent System・Alternative Waste Collection（PDF p760） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/760
4. JSC-48035 Rev. M PCN-10 Orbit Operations Checklist Cue Card 15-9 Fan Sep Switching・WCS Cleaning（PDF p405） — https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=405
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-401・402 WCS Usage Constraint・Leaking WCS Water Lines（PDF p1987） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1987
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-403・404 Alternate Fecal/Urine Collection（PDF p1988） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1988
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-405 Vacuum Vent Systems Management [CIL]（PDF p1989） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1989
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-1001 Life Support Go/No-Go Criteria（注[13]）（PDF p2034） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2034
9. JSC-48027 Rev. F Malfunction Procedures（MAL） EPS SSR-110 Bus Loss: AC1（PDF p612） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=612
10. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS SSR-8 Small Cabin-Leak Isol（PDF p345） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=345
11. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.25節 Operations（続き）（PDF p759） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/759
12. JSC-12770 Vol. 12 Basic Rev. B Shuttle Flight Operations Manual – Crew Systems（1987年） 3.17.4.1〜3.17.4.2節 Commode Interlocks・Waste Production Quantities（PDF p474） — https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=474
13. JSC-12770 Vol. 12 Basic Rev. B Shuttle Flight Operations Manual – Crew Systems（1987年） 表3.17-1 WCS display and control functions（VACUUM VALVE）（PDF p468） — https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=468
14. NASA-CR-185550 Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） C.12.2節 Life Support and Airlock Support System（PDF p69） — https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=69

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
