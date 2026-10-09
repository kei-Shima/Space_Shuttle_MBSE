# 給水貯蔵・分配（SPL）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ECL-H2O-SPL-001 |
| 表題 | 給水貯蔵・分配（SPL）機能説明書 |
| 版・日付 | Rev. A／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-H2O-001 |
| 関連図 | SSD-SYS-ARC-001 図20 給水・廃水系 機能構成 |

## 1. 目的

ミッドデッキ床下の給水タンク4基（A〜D）に燃料電池の生成水を貯め、出口マニホールドとクロスオーバ弁でFES給水系統A・B、エアロックのEMU給水、ギャレー、ダンプ配管へ分配する機能と、水量の管理、レッドライン、漏れ時の処置を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ECL-H2O-SPL-01 | 給水タンク4基（各165 lb）はミッドデッキ床下にあってPCSの窒素で加圧され、各タンクはベローズ、水量センサ、入口弁・出口弁、疎水性フィルタを持つ（訓練マニュアル5.1節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=143） |
| F-ECL-H2O-SPL-02 | 水量センサはタンクのベローズの位置から水量を示し、ベローズが漏れると表示は60〜70%付近にとどまる。疎水性フィルタは、漏れた水がN2マニホールドへ入るのを防ぐ（訓練マニュアル5.1節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=146） |
| F-ECL-H2O-SPL-03 | タンクAは処理水と未処理水を分けるため出口弁を通常閉じて乗員の飲用に充て、タンクB・C・DはFESの冷却に使われることが多い（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/395） |
| F-ECL-H2O-SPL-04 | 4基の出口は出口マニホールドにまとめられ、タンクBとCの間のクロスオーバ弁でA-B側とC-D側に分かれる。A-B側はFES給水系統A、EMU給水ライン、ダンプ配管に、C-D側はFES給水系統Bにつながる（訓練マニュアル5.1節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=145） |
| F-ECL-H2O-SPL-05 | FES給水系統Aの水はFESへ直接送られ、系統Bの水はパネルR11LのSUPPLY H2O B SPLY ISOL VLVスイッチで操作する隔離弁を経てFESへ送られる（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/398） |
| F-ECL-H2O-SPL-06 | FES給水配管は約100 ftあり、パネルL2のFLASH EVAP FEEDLINE HTRスイッチで冗長のサーモスタット制御ヒータを選んで凍結を防ぐ（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/400） |
| F-ECL-H2O-SPL-07 | 軌道上は燃料電池が飲用とFES冷却に要する以上の水を生むため、タンクA・Bのダンプと充填で水を管理する。ダンプは通常12時間ごとに最大210 lbまで行い、タンクAには乗員5人・96時間分として少なくとも76%（128 lb）を残す（訓練マニュアル5.1節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=146） |
| F-ECL-H2O-SPL-08 | タンクCは、ペイロードベイ扉を閉じたままの軌道離脱の見送りや緊急の軌道離脱でFESに使う予備として、通常満杯に保つ（訓練マニュアル5.1節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=145） |
| F-ECL-H2O-SPL-09 | 運用飛行規則は、軌道上の標準構成（タンクA入口開・出口閉、タンクB〜Dの入口・出口開、クロスオーバ弁開）と、ISSへの給水移送構成（タンクA・Bを結び、タンクB入口弁とクロスオーバ弁を閉じて遮断器を抜く）を定める（A18-57A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2049） |
| F-ECL-H2O-SPL-10 | ヨウ素がFESのコアを腐食させるため、タンクAの水を使うダンプとFES運転は最小にし、タンクAの水は飲用、非常時、着陸機会の確保に使う（A18-51）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2043） |
| F-ECL-H2O-SPL-11 | いつでも帰還できるための給水の最小量は175 lbm（165分の緊急軌道離脱の冷却に相当）とし、通常構成ではPLS点火の4時間前に281 lbmを確保する（A18-59）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2054） |
| F-ECL-H2O-SPL-12 | 乗員室に遊離した給水はIFMで直ちに処理し、修理できないか隔離できない漏れのあるタンクはベント・ダンプして隔離し、以後は使わない（A18-58）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2052） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-TCS-16 | フラッシュエバポレータ（FES） | 推進薬・流体 | 送信 | FES用の水は、飲料水タンクから給水系統A・Bを通じて供給される。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | 上位: IF-ECL-12 |
| IF-H2O-01 | 生成水受入れ・処理 | 推進薬・流体 | 受信 | 水素分離器と微生物フィルタを通った生成水をタンクAへ送り、タンクAが満杯か入口弁が閉じているときは1.5 psidの逆止弁を経てタンクB、さらにタンクC・Dへ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/395）閉塞に備えて、水素分離器を通らずにタンクBの入口マニホールドへ向かう冗長経路もある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/394） | — |
| IF-H2O-03 | 飲料水供給 | 推進薬・流体 | 送信 | タンクAの飲料水を、ギャレー給水弁を通してギャレーへ送る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=143）ギャレー給水弁へは、微生物フィルタの下流の給水が導かれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/395） | — |
| IF-H2O-04 | 船外ダンプ・クロスタイ | 推進薬・流体 | 送信 | 給水ダンプ配管はA-B側の出口マニホールドにつながり、タンクC・Dの水はクロスオーバ弁を経てダンプ配管へ送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/398）非常時は、廃水タンクに入れた給水をクロスタイ経由で給水系へ戻し、FESの冷却に使う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2044） | — |
| IF-H2O-05 | DPS・アビオニクス | データ・指令 | 送信 | 給水タンク量A〜Dと給水圧を、軌道上はPASS SMのSPEC 66に、上昇・再突入時はBFSのTHERMAL表示に送る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=158） | 上位: IF-ECL-35 |
| IF-H2O-06 | 直流配電（EPDC-DC） | 電力（28 VDC） | 受信 | パネルML86BのA・B列の遮断器は、パネルR11L・ML31Cで操作する給水・廃水系の電動弁を駆動する電力を供給する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=153）電動弁は電力を失うとその位置にとどまり、トークバックはバーバーポールを示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=152） | 上位: IF-ECL-41 |
| IF-H2O-13 | タンク加圧 | 推進薬・流体 | 受信 | 共通のH2O TK N2マニホールドから給水タンク4基のベローズを加圧し、水を系統へ押し出す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=150）打上げ時はタンクA供給弁を閉じてベント弁を開き、タンクAだけを乗員室圧にする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/395） | — |
| IF-ALS-03 | エアロック支援系：EMU補給・支援 | 推進薬・流体 | 送信 | 給水系のA・B出口系統の水を、フィルタ・逆止弁（EMUからオービタへの汚染を防ぐ）とその下流の給水遮断弁を通してエアロックへ送り、EMUの給水（昇華冷却用・飲用）に使う。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=176）給水タンクBの水は通常、FES給水系統AとエアロックのEMU給水に使われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/398） | 上位: IF-ECL-13 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| WA-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 5.1節（PDF p143〜146）：タンク4基（各165 lb）、出口マニホールドとクロスオーバ弁、FES給水系統A・BとEMU給水、12時間ごとのダンプとタンクCの予備、タンクAの最低量76%、ベローズの位置による水量表示を解説する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=145） |
| WA-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p394〜398）：タンクの容量・寸法、入口・出口弁とクロスオーバ弁、B供給隔離弁、EMU給水、ISSへのCWC充填の構成を示し、ECLSSの経験則（p419）で給水タンクの充填率（約6.5%/hr）を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/398） |
| WA-03 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 表3.4.6.2-1（PDF p220）：給水タンクを含む水・廃棄物管理サブシステムの構成品の温度限界を示す。（出典: https://ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=220） |
| WA-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A18-1・51・57〜59（PDF p2040〜2054）：給水タンクの喪失定義、タンクAの水の使用の最小化、軌道上のタンク構成、漏れの処置、給水レッドライン（175 lbm・281 lbm）を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2049） |
| WA-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | ECLS SSR-18・20（PDF p359〜363）：給水の小さな漏れの切り分けを、標準構成と給水移送構成について示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=359） |
| WA-07 | NTRS 20070023916 | Effects of Free Molecular Heating on the Shuttle ATCS | STS-121で自由分子加熱により放熱器出口温度が予測を上回り、FESで約50 lbの給水を余分に消費したと記す（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/20070023916） |
| WA-10 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS | 給水系統Aの水はFESへ直接、系統Bの水は隔離弁を経てFESへ送られると記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| WA-12 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.4.2節（PDF p79）：タンクの出口マニホールドとクロスオーバ弁を示し、タンクAの出口弁は飛行中に開かないとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=79） |
| WA-14 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist | FES SUPPLY, WASTE H2O（W-21、PDF p445）：給水系と廃水系をつないで、廃水タンクの水をFESに補給する手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=445） |
| WA-15 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist | NOMINAL H2O CONFIG（5-58、PDF p168）：給水移送の後に給水タンクを標準構成（タンクA出口閉、タンクB入口とクロスオーバ弁開）へ戻す手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=168） |
| WA-16 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment（1988年） | C.12.2節（PDF p69）：給水系（SWS）の漏れでFESへの給水を失う故障を、IOAは任務喪失（2R）として扱ったと記す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=69） |
| WA-21 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | PDF p50：ISSへの大量の移送のため給水の船外ダンプを行わず、給水をFESとISSへの移送で管理したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=50） |
| WA-22 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | PDF p53：タンクAの水量センサの一時的な表示の低下と、CWCに満たした給水のISSへの移送を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=53） |

## 5. 注記（出典間の相違・構成変更）

> **注記** タンクの入口・出口弁、クロスオーバ弁、B供給隔離弁などの電動弁への給電（パネルML86Bの遮断器）はIF-H2O-06として示し、図20では図示を省略した。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=153）

> **注記** FES給水系統A・Bへの給水は図8のIF-TCS-16をそのまま用いた（同じ物理IFのため新しい番号を作らない）。IF-TCS-16の上位IFはIF-ECL-12である。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=145）

> **注記** 検証メモ：1979年の飛行運用マニュアルは、STS-1（OFT）で給水タンク6基（ミッドデッキ床上のE・Fを追加）と廃水タンク1基を使うとし、訓練マニュアルとSCOMは給水タンク4基とする。本書は4基とした。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=77）

> **注記** 給水タンクは、水の取出し・充填ができない、修理できない漏れがある、またはベローズが漏れる場合に喪失とする（A18-1）。ベローズの漏れで窒素が給水に入ると、FESの停止を招くためである。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2040）

## 6. 参考文献

1. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 5.0節・5.1節 Supply Water Storage System（PDF p143） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=143
2. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 5.1節 Supply Water Storage System（続き）（PDF p146） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=146
3. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Supply Water System（続き）（PDF p395） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/395
4. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 5.1節 Supply Water Storage System（続き）（PDF p145） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=145
5. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Tank Outlet Valves・Supply Water Dumps（PDF p398） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/398
6. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Contingency Crosstie・Galley Water Supply（PDF p400） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/400
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-57 On-Orbit Supply Water Tank Management（PDF p2049） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2049
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-51 Supply H2O Tank A Management（PDF p2043） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2043
9. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-59 Supply Water Redline（PDF p2054） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2054
10. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-58 Supply Water System Leak Management（PDF p2052） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2052
11. NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html
12. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Supply Water System（PDF p394） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/394
13. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-52 Supply/Waste Water Crossconnect（PDF p2044） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2044
14. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 5.6節 Supply and Wastewater System Instrumentation/Displays（PDF p158） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=158
15. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 5.5節 Supply and Wastewater System Controls（続き）（PDF p153） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=153
16. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 5.4節 Vacuum Vent System・5.5節 Supply and Wastewater System Controls（PDF p152） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=152
17. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 5.3節 Supply and Wastewater Pressurization System（PDF p150） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=150
18. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 6.3節 Air and Water Transfer（PDF p176） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=176
19. JSC-12770 Vol. 3 Shuttle Flight Operations Manual – Environmental Control and Life Support Systems（1979年） 2.4節 Supply and Waste H2O Management System（PDF p77） — https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=77
20. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-1 Supply Water Tank（PDF p2040） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2040

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-10-01 | IF-H2O-05 の上位を IF-ECL-35 に付け替え、IF-H2O-06 の上位を IF-ECL-41 に付け替え（Rev. M） |
