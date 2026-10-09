# 与圧運用管理（OPS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ECL-PCS-OPS-001 |
| 表題 | 与圧運用管理（OPS）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-PCS-001 |
| 関連図 | SSD-SYS-ARC-001 図18 圧力制御系 機能構成 |

## 1. 目的

PCSの系統の切替と飛行段階ごとの弁構成、ブリードオリフィスの管理、乗員室のO2濃度の限界、10.2 psia運用、乗員室漏れの判定と8 psia非常構成など、運用飛行規則と手順によるPCSの運用管理を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ECL-PCS-OPS-01 | PCS 1は打上げから飛行の中間点まで、PCS 2は中間点から終わりまで運用し、中間で行う冗長機器の点検で系統を切り替える（A17-251A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1964） |
| F-ECL-PCS-OPS-02 | 上昇・再突入では両系統の14.7 psiaキャビンレギュレータ入口弁とO2レギュレータ入口弁を閉じ、PCS 1のO2/N2制御弁を開、PCS 2を閉として、漏れが起きても8 psiaまでは補給せず窒素を節約し、酸素はすべてLESヘルメットへ送る。軌道上の構成は飛行1日目に行い、選んだ系統の入口弁を開いてO2/N2制御弁をAUTOにする（訓練マニュアル2.7.1・2.7.2節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=47） |
| F-ECL-PCS-OPS-03 | O2ブリードオリフィスはPPO2が3.20 psia未満なら飛行1日目の就寝前にLEHのクイックディスコネクトに取り付け、帰還日の軌道離脱準備で外す。キャビンレギュレータを低流量域に保ち、WCSの使用や切替による流量高の誤警報をなくすためである（A17-256）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1971） |
| F-ECL-PCS-OPS-04 | 乗員室のO2濃度は、14.7 psiaの運用では25.9%未満、10.2 psiaの運用では30.0%未満に保つ（A17-254A・B）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1967） |
| F-ECL-PCS-OPS-05 | 10.2 psia運用の減圧はエアロックの減圧弁で行い、10.2 psiaのキャビンレギュレータはないため、乗員室圧とPPO2を手動で管理する（訓練マニュアル2.7.3節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=48） |
| F-ECL-PCS-OPS-06 | 10.2 psia運用では、乗員室圧を10.0〜10.4 psia、PPO2を2.55〜2.80 psia（指示値）に保つ（A17-301）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1977） |
| F-ECL-PCS-OPS-07 | PPO2センサ3個のうち2個が故障している場合や、N2の総量が計画量、N2レッドライン、10.2から14.7 psiaへの再与圧量の和に満たない場合は、10.2 psiaへの減圧を行わない（A17-302B・C）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1979） |
| F-ECL-PCS-OPS-08 | 軌道離脱の前に乗員室を14.7 psiaへ再与圧し、複数のEVAでは最後のEVAまで10.2 psiaに留める。10.2から14.7 psiaへの再与圧には45 lbの窒素と11 lbの酸素が要る（A17-303・A17-304）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1981） |
| F-ECL-PCS-OPS-09 | 上昇中に隔離できない0.15 psia/minを超える漏れが起きれば最も早く帰還・着陸できる緊急中止とし、0.02〜0.15 psia/minならAOAとする（A17-201A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1955） |
| F-ECL-PCS-OPS-10 | 8 psia・165分の帰還能力は、LESヘルメットへ乗員1人あたり2.5 lb/hrの酸素を送れないとき、またはN2の総量がN2レッドライン（8 psiaの維持に要る量とタンクの計測誤差・残量の和）を下回ったときに失われる（A17-202）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1957） |
| F-ECL-PCS-OPS-11 | 漏れで消耗品が次の着陸機会まで14.7 psiaと8 psiaでの24時間の延長を賄えない場合や、火災・有害物質の漏洩でLES・QDMを長く着ける場合は、14.7 psiaキャビンレギュレータ入口弁を閉じて乗員室を8 psiaまで下げる（A17-255）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1970） |
| F-ECL-PCS-OPS-12 | 乗員室の気密喪失ではN2が尽きる前に着陸できる最も遅い軌道離脱点火時刻（Tmax）を定め、大気での再与圧までは8 psiaを最低の乗員室圧として保つ（A17-258）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1972） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-PCS-15 | 計測・表示・警報 | データ・指令 | 受信 | 14.7 psiaに換算した等価dP/dTを、上昇中の隔離できない漏れによる緊急中止（0.15 psia/min超）とAOA（0.02〜0.15 psia/min）の判定に使う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1955） | — |
| IF-PCS-16 | O2/N2マニホールド・PPO2制御 | データ・指令 | 送信 | 軌道上の構成では、選んだ系統の14.7 psiaキャビンレギュレータ入口弁とO2レギュレータ入口弁を開き、O2/N2制御弁をAUTOにする。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=47）上昇・再突入では両系統の14.7 psiaキャビンレギュレータ入口弁とO2レギュレータ入口弁を閉じ、PCS 1のO2/N2制御弁を開、PCS 2を閉とする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1964） | — |
| IF-PCS-17 | 酸素供給・分配 | データ・指令 | 送信 | PPO2が3.20 psia未満なら飛行1日目の就寝前にO2ブリードオリフィスをLEHのクイックディスコネクトに取り付け、帰還日の軌道離脱準備で外す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1971）直接O2弁の流れは、10.2 psiaの乗員室の維持といくつかの故障への対処に使う。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=33） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| PC-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 2.7節（PDF p47〜48）：上昇・再突入と軌道上のPCSの構成、O2ブリードオリフィス、飛行の中間での系統2への切替、10.2 psia運用の選択肢と手動での管理を解説する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=47） |
| PC-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Operations（PDF p403〜404）：上昇・軌道・再突入のPCSの構成、ブリードオリフィスの取付け、10.2 psia運用の選択肢と手動での管理、ISS飛行でのPCS 1構成の延期を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/403） |
| PC-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-201・202・251・254〜256・258（PDF p1955〜1973）とA17-301〜309（p1977〜1983）：気密の喪失と8 psia・165分の帰還能力、通常構成、O2濃度、8 psia非常構成、Tmax、10.2 psia運用の管理を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1964） |
| PC-04 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | ECLS SSR-8・FRP-1・FRP-3（PDF p345・p364・p366）：小さな乗員室漏れの隔離、手動での乗員室大気の管理、火災・有害物質・隔離できないO2漏れのときの乗員室のO2制御（Tmaxの決定）を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=366） |
| PC-06 | JSC-16730 | ECLSS Analysis of STS-1: 9-psia EVA Configuration | EVAに備えて乗員室圧を9 psiaとした構成での冷却能力をSECUREで評価した。（出典: https://ntrs.nasa.gov/citations/19800020542） |
| PC-10 | 番号なし | NSTS 1988 News Reference Manual – Airlock Support | EVA前に乗員室を14.7 psiaから12.5 psiaを経て10.2 psiaへ減圧する手順を記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html） |
| PC-16 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report | EVA準備での乗員室の10.2 psiへの減圧と、窒素の消費量から見た乗員室の漏れの少なさを記録する。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf） |
| PC-20 | NASA/TP-2011-216147 | Preventing Decompression Sickness Over Three Decades of Extravehicular Activity（Conkin、2011年） | 乗員室を10.2 psia・酸素26.5%とするシャトルの段階減圧プロトコルの手順と経緯を解説し、STS-41B（1984年）を初適用と記す。（出典: https://www.nasa.gov/wp-content/uploads/2023/03/conkin-prebreathe-overview-tp216147-2011.pdf） |
| PC-21 | NASA TM-58259 | Verification of an altitude decompression sickness protocol for Shuttle operations utilizing a 10.2 psi pressure stage（Waligora他、1984年） | 10.2 psia・酸素26.5%の段階減圧プリブリーズを検証した報告で、NASAのプリブリーズ文献目録で所在を確認した（本体PDFは未入手）。（出典: https://www.nasa.gov/wp-content/uploads/2023/03/prebreathe-library-summary-of-contents.pdf） |
| PC-25 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | L-5（PDF p205）：超音波漏れ検知器で漏れ箇所を探し、発泡材などで乗員室の漏れをふさぐ手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=205） |
| PC-26 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 5-20 PCS 1(2) CONFIG（PDF p130）：軌道上の構成で、選んだ系統のキャビンレギュレータ入口弁・O2レギュレータ入口弁・水タンク用N2レギュレータ入口弁だけを開き、O2/N2制御弁をAUTOにする手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=130） |
| PC-27 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | 3.4.6.1節（PDF p215）：最小の酸素分圧を8 psiaの乗員室で1.95 psia・14.7 psiaで2.7 psia、最小の乗員室全圧を8 psia、乗員室の酸素の最大割合を30%とする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=215） |
| PC-29 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.4.3節（PDF p51）：乗員室の漏れ率がSTS-1の2.7 lb/日に対して0.7 lb/日だったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=51） |
| PC-31 | JSC-19278 | STS-8 National Space Transportation Systems Program Mission Report（1983年） | PDF p8：乗員室の漏れがWCSに特定され、乗員が手動で乗員室圧を所望の値に保ったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf#page=8） |
| PC-32 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | PDF p30〜31：ISSへ移すGN2を増やすためドッキング直前まで14.7 psiaレギュレータを隔離し、EVAに備えて10.2 psiへ減圧し、ドッキング中はオービタが全体の圧力を制御したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=30） |
| PC-33 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | PDF p49：O2/N2制御盤の自動切替の点検は、乗員の予定、ISSとの合同のPCS運用、3回のEVAのため完了せず、飛行後にKSCで行うとしたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=49） |

## 5. 注記（出典間の相違・構成変更）

> **注記** EVA前の10.2 psiaへの減圧はエアロックの減圧弁で行う（SCOM PDF p369）。この経路はエアロック支援系と乗員室のIF（IF-ECL-17）で表しているため、図18では新しいIFを設けない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369）

> **注記** 手動での乗員室大気の管理（MAL ECLS FRP-1）は、PCS 1から窒素、PCS 2から酸素を流し、代謝分をブリードオリフィスで補う構成とする。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=364）

> **注記** 検証メモ：乗員室のO2濃度の上限を、SODB（PDF p215）は30%、運用飛行規則A17-254は14.7 psiaで25.9%、10.2 psiaで30.0%とする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=215）

> **注記** STS-8では乗員室の漏れがWCSに特定され、乗員が手動で乗員室圧を所望の値に保った（STS-8ミッション報告）。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf#page=8）

> **注記** SCOMは、飛行の初めに10.2 psiaへの減圧を予定する場合、消耗品を節約するためPCS 1の構成を10.2 psia運用が終わるまで遅らせることがあるとする（オービタのO2・N2でISSを再与圧・補給する飛行など）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/404）

## 6. 参考文献

1. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-251 Normal PCS Configuration（PDF p1964） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1964
2. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 2.7.1〜2.7.2節 Ascent・Orbit（PDF p47） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=47
3. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-256 O2 Bleed Orifice Management・A17-257 N2 System Management（PDF p1971） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1971
4. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-254 Cabin O2 Concentration（PDF p1967） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1967
5. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 2.7.3〜2.7.4節 10.2 psia Cabin・Entry（PDF p48） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=48
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-301 Cabin Atmosphere Management・A17-302 10.2 psia Cabin Depressurization Constraints（PDF p1977） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1977
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-302 10.2 psia Cabin Depressurization Constraints（続き）（PDF p1979） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1979
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-303 Cabin Repressurization Prior to Deorbit・A17-304（PDF p1981） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1981
9. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-201 Cabin Pressure Integrity（PDF p1955） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1955
10. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-202 8 psia Cabin Contingency 165-Minute Return Capability（PDF p1957） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1957
11. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-255 8 psia Emergency Cabin Configuration（PDF p1970） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1970
12. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-258 Loss of Cabin Integrity Tmax Definition and TIG Selection（PDF p1972） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1972
13. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 2.5節 Pressure Control System Controls（PDF p33） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=33
14. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Vent Isolation and Vent Valves・Negative Pressure Relief Valves・Water Tank Regulator Inlet Valve（PDF p369） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369
15. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS FRP-1 Manual Cabin Atmosphere Management（PDF p364） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=364
16. JSC-08934 Vol. 1 Rev. E Shuttle Operational Data Book – Shuttle Systems Performance and Constraints Data（1988年） 3.4.6.1節 Atmospheric Revitalization Subsystem（PDF p215） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=215
17. JSC-19278 STS-8 National Space Transportation Systems Program Mission Report（1983年） Flight Summary（cabin pressure leak）（PDF p8） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf#page=8
18. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Operations（PDF p404） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/404

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
