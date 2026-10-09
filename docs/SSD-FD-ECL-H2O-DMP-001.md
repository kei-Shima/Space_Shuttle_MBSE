# 船外ダンプ・クロスタイ（DMP）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ECL-H2O-DMP-001 |
| 表題 | 船外ダンプ・クロスタイ（DMP）機能説明書 |
| 版・日付 | Rev. B／2026-10-09 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-H2O-001 |
| 関連図 | SSD-SYS-ARC-001 図20 給水・廃水系 機能構成 |

## 1. 目的

給水・廃水をダンプ隔離弁とダンプ弁から、ヒータで保温した配管とノズルを通して船外へ捨てる機能と、給水・廃水のダンプ配管をつなぐ非常用クロスタイ、CWCへの排出、ノズル温度による制約と着氷への対策を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ECL-H2O-DMP-01 | 給水はダンプ隔離弁（乗員室内）とダンプ弁（中胴）を通して全タンクから船外へダンプでき、タンクC・Dの水はクロスオーバ弁を経てダンプする（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/398） |
| F-ECL-H2O-DMP-02 | SUPPLY H2O DUMP VLV ENABLE/NOZ HTRスイッチはダンプノズルのヒータとダンプ弁に給電し、ノズルヒータに電力がなければ給水ダンプ弁は開けない（訓練マニュアル5.5節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=152） |
| F-ECL-H2O-DMP-03 | 給水ダンプノズルの上流の配管はサーモスタット制御のA・Bヒータで凍結を防ぎ、ヒータに給電するパネルML86BのH2O LINE HTR A・B遮断器は廃水ダンプ配管と真空ベント配管のヒータにも給電する（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/400） |
| F-ECL-H2O-DMP-04 | 給水ダンプの前に非常用クロスタイの給水QDへパージ装置を付け、ダンプ後に乗員室の空気（約3 lb/hr）でダンプ弁の残水を除き、残水の凍結で弁が開いて水が漏れ出る現象を防ぐ（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/400） |
| F-ECL-H2O-DMP-05 | 給水・廃水ダンプ配管の隔離弁とダンプ弁の間には非常用クロスタイの接続があり、可撓ホースで両系をつないで一方のノズルから他方の水をダンプでき、CWC（公称95 lb）にも充填できる（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/400） |
| F-ECL-H2O-DMP-06 | 余剰の給水は、ダンプ配管、FES、クロスタイからCWCへ、廃水ダンプ配管の順に捨て、給水系の無菌性を保つ（運用飛行規則A18-55）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2047） |
| F-ECL-H2O-DMP-07 | 給水ダンプはノズル温度が100°F以上で始め、ノズル温度A・Bがともに90°F未満になれば中止して、以後そのノズルからのダンプを行わない（A18-56）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2048） |
| F-ECL-H2O-DMP-08 | 廃水ダンプはノズル温度150°F超で始め、ノズルヒータ作動中のノズル温度は周囲のタイルのはく離を防ぐため350°F以下とする（A17-505）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1996） |
| F-ECL-H2O-DMP-09 | 廃水ノズルに着氷を検知したときは、氷がなくなるまで両ノズルからのダンプを中止する。両ノズルは約6.5〜7.0 in離れており、廃水ノズルの着氷は給水ノズルの着氷を助長する（A17-502）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1993） |
| F-ECL-H2O-DMP-10 | 軌道運用チェックリストでは、給水ダンプはノズル温度が100°Fを超えてから（約5分）、廃水ダンプは250°Fを超えてから（約10分）ダンプ弁を開き、水量は毎分約1〜2%減る（5-6）。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=116） |
| F-ECL-H2O-DMP-11 | 給水ダンプ弁が故障した場合は、クロスタイの給水QDと廃水QDをY/Yホースでつなぎ、燃料電池の生成水の空き容量を作るため給水を廃水ダンプ配管から捨てる（IFM W-41）。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=465） |
| F-ECL-H2O-DMP-12 | STS-65では給水ダンプ中にノズル温度が50°Fへ急落してダンプを中止し、最大2ガロンの水が凍結したと推定され、13回の焼出しで氷を溶かして以後の給水はFESで捨てた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=32） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-H2O-04 | 給水貯蔵・分配 | 推進薬・流体 | 受信 | 給水ダンプ配管はA-B側の出口マニホールドにつながり、タンクC・Dの水はクロスオーバ弁を経てダンプ配管へ送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/398）非常時は、廃水タンクに入れた給水をクロスタイ経由で給水系へ戻し、FESの冷却に使う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2044） | — |
| IF-H2O-08 | 廃水貯蔵 | 推進薬・流体 | 受信 | 廃水タンクの入口弁は出入口を兼ね、弁を開くとタンクの廃水を廃水ダンプ配管へ送れる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/401） | — |
| IF-H2O-10 | 宇宙空間（船外） | 推進薬・流体 | 送信 | 給水はダンプ隔離弁（乗員室内）とダンプ弁（中胴）を開いて、ダンプノズルから船外へ捨てる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/398）廃水は廃水ダンプ隔離弁とダンプ弁を開いて、廃水ダンプノズルから船外へ捨てる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/401） | 上位: IF-ECL-22 |
| IF-H2O-11 | 直流配電（EPDC-DC） | 電力（28 VDC） | 受信 | パネルML86BのMNA H2O LINE HTR A・MNB H2O LINE HTR B遮断器から、給水・廃水ダンプ配管のヒータへ給電する（同じ遮断器が給電する真空ベント配管のヒータは廃棄物収集系のIF-WCS-11で扱う）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=153）DUMP VLV ENABLE/NOZ HTRスイッチをONにすると、ダンプノズルのヒータとダンプ弁スイッチに電力が入る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/399） | 上位: IF-ECL-41 |
| IF-H2O-12 | DPS・アビオニクス | データ・指令 | 送信 | 給水・廃水のダンプ配管温度とノズル温度A・BをSPEC 66に送る（同じ表示の真空ベントノズル温度は廃棄物収集系のIF-WCS-12で扱う）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=160）ダンプ配管温度が45°F未満か125°F超、またはノズル温度が250°F超でSMアラートが出る。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=325） | 上位: IF-ECL-35 |
| IF-WCS-08 | 廃棄物収集系：真空ベント | 推進薬・流体 | 双方向 | 真空ベント系が故障したときは、真空ベントQDと非常用クロスタイの廃水QDを移送ホースでつなぎ、廃水ダンプ管から排気する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/760）廃水タンクの弁が閉で故障した場合などは、同じQDを使ってARSの廃水（湿度分離器の凝縮水）を真空ベント管から船外へ捨てる。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=443） | 上位: IF-ECL-14 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| WA-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 5.1節（PDF p145）と5.5節（p152）：ダンプノズル・配管のヒータ、パージ装置、FESによる給水の消費、クロスタイとIFMによる予備のダンプを解説し、ノズルヒータに電力がないとダンプ弁が開かないと述べる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=145） |
| WA-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p398〜402）：給水・廃水のダンプ隔離弁・ダンプ弁とノズルヒータ、配管ヒータ、非常用クロスタイとCWC、給水ダンプ配管のパージ装置を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/399） |
| WA-03 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.1.3節（PDF p62）：軌道離脱前のボンドライン温度の上限を、給水ダンプノズル85°F、廃水ダンプノズル180°Fとする。（出典: https://ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=62） |
| WA-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A18-2・3・55・56とA17-452・502・505（PDF p1991〜2048）：ダンプ配管とダンプ能力の喪失定義、給水ダンプの方法の優先順位、ノズル温度の制約、着氷時のダンプの中止を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2047） |
| WA-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.5c（PDF p325〜326）：給水・廃水のダンプ配管温度（45〜125°F）とノズル温度（250°F超）の異常と、ヒータの切替えを示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=325） |
| WA-10 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS | 給水ダンプノズルのヒータが中胴でのノズルの凍結を防ぐと記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| WA-12 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.4.2節（PDF p79）と2.4.3節（p83）：出口マニホールドの非常用クロスタイと配管ヒータを示し、ダンプ配管・ノズル温度のSMアラートの限界を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=83） |
| WA-14 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist | SUPPLY H2O SYS BACKUP DUMP（W-41、PDF p465）：給水ダンプ弁の故障時に、廃水ダンプ配管から給水を捨てる手順を示し、W-56a（p481）で真空ベントと廃水ダンプ系の接続を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=465） |
| WA-15 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist | SUPPLY/WASTE WATER DUMP（5-3〜5-8、PDF p113〜118）：ダンプ前のSM限界の設定、ノズルヒータの作動、ノズル温度によるダンプの開始と終了、焼出しを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=116） |
| WA-17 | JSC-19278 | STS-8 National Space Transportation Systems Program Mission Report（1983年） | PDF p12：給水ダンプが一度開始しなかったが、1時間後にダンプ弁を再作動させて開始し、以後のダンプは成功したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf#page=12） |
| WA-18 | NSTS-08302 | STS-35 Space Shuttle Mission Report（1991年） | PDF p15：廃水ダンプの流量が回を追って低下し、4回目のダンプ中にダンプ配管とノズルが完全に閉塞したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=15） |
| WA-20 | NSTS-08292 | STS-65 Space Shuttle Mission Report（1994年） | PDF p32：給水ダンプノズルの着氷（最大2ガロンの凍結と推定、13回の焼出し）と、以後の給水をFESで捨てたことを記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=32） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SODB（1988年）は、熱防護系の制約として、軌道離脱前のボンドライン温度の上限を給水ダンプノズル85°F、廃水ダンプノズル180°Fとする。（出典: https://ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=62）

> **注記** 非常時は、廃水ダンプ配管とWCSの真空ベントQDをつないで真空ベントの代わりにする手順がある（IFM W-56a）。真空ベントは廃棄物収集系の設備として扱い（IF-ECL-23）、この接続は図22のIF-WCS-08（上位IF-ECL-14）として図20にもその番号のまま示した。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=481）

> **注記** 給水・廃水のダンプ配管温度とノズル温度のSPEC 66への送出（IF-H2O-12）は、図20では図示を省略した。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=325）

> **注記** 給水・廃水のダンプの活動（図174）は [SSD-BEH-ORB-007](SSD-BEH-ORB-007.md) に示す（SysML v2 テキスト：SysML/SSD-BEH-ORB-007.sysml）。

## 6. 参考文献

1. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Tank Outlet Valves・Supply Water Dumps（PDF p398） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/398
2. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 5.4節 Vacuum Vent System・5.5節 Supply and Wastewater System Controls（PDF p152） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=152
3. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Contingency Crosstie・Galley Water Supply（PDF p400） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/400
4. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-55 Supply Water Dump（PDF p2047） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2047
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-56 Supply Water Dump Nozzle Temperature Constraint（PDF p2048） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2048
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-505 Waste Water Dump Nozzle Temperature Constraints（PDF p1996） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1996
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-501 Alternate Pressure Valve Management・A17-502 Waste Dump Nozzle Ice Formation（PDF p1993） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1993
8. JSC-48035 Rev. M PCN-10 Orbit Operations Checklist 5-6 Supply/Waste Water Dump（PDF p116） — https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=116
9. JSC-48025 Rev. F PCN-13 In-Flight Maintenance (IFM) Checklist W-41 Supply H2O Sys Backup Dump – TK A,B（PDF p465） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=465
10. NSTS-08292 STS-65 Space Shuttle Mission Report（1994年） Environmental Control and Life Support Subsystem（PDF p32） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=32
11. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-52 Supply/Waste Water Crossconnect（PDF p2044） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2044
12. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Galley Water Supply・Waste Water System（PDF p401） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/401
13. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 5.5節 Supply and Wastewater System Controls（続き）（PDF p153） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=153
14. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Supply Water Dumps（続き）（PDF p399） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/399
15. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 図5-13 SPEC 66 ENVIRONMENT（PDF p160） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=160
16. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.5c WASTE H2O PRESS・DMP LN T・NOZ T（PDF p325） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=325
17. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.25節 Vacuum Vent System・Alternative Waste Collection（PDF p760） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/760
18. JSC-12770 Vol. 12 Basic Rev. B Shuttle Flight Operations Manual – Crew Systems（1987年） 3.17.3.2〜3.17.3.3節 Solids Processing Assembly・Vacuum Vent QD（PDF p443） — https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=443
19. JSC-08934 Vol. 1 Rev. E Shuttle Operational Data Book – Shuttle Systems Performance and Constraints Data（1988年） 3.4.1.3節 Thermal Protection Subsystem（PDF p62） — https://ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=62
20. JSC-48025 Rev. F PCN-13 In-Flight Maintenance (IFM) Checklist W-56a Interconnect Vacuum Vent and Waste Water Dump Systems（PDF p481） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=481

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-10-01 | IF-H2O-12 の上位を IF-ECL-35 に付け替え、IF-H2O-11 の上位を IF-ECL-41 に付け替え（Rev. M） |
| Rev. B | 2026-10-09 | ECLSS の状態遷移と活動定義書 SSD-BEH-ORB-007 への参照を注記（Rev. BL） |
