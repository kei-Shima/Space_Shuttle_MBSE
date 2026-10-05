# 給水・廃水系 機能別関連文書一覧

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-H2O-REF-001 |
| 表題 | 給水・廃水系 機能別関連文書一覧 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-H2O-001 |
| 関連図 | SSD-SYS-ARC-001 図21 給水・廃水系 関連文書マトリクス |

## 1. 目的

給水・廃水系（H2O）の各下位機能に関係する公開文書を機能別に整理し、各機能説明書と図21 給水・廃水系 関連文書マトリクス（文書×機能マトリクス）の根拠とする。

## 2. 調査方法

SSD-ECLSS-REF-002の3.5節 給水・廃水系（H2O）の9件と、同一覧の3.1節から給水・廃水系の下位機能に関係する2件（A-06・B-06）の計11件を引き継ぎ（出典欄「REF-002（A-01）」の形）、今回の調査で11件を追加した（出典欄「新規」）。引き継いだ行も含め、各行の関連内容は下位機能ごとに書き分けた。訓練マニュアル（USA006020）、SCOM、運用飛行規則、故障処置手順（MAL）、軌道運用チェックリスト、IFMチェックリスト、飛行運用マニュアル（JSC-12770）、SODB、IOA、ミッション報告は原本で本文を確認し、関連内容に節とPDFの通し頁を示す。

## 3. 機能別関連文書

### 3.1 給水・廃水系 全般（6件）

機能説明書：SSD-FD-ECL-H2O-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| WA-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 5章 Supply and Wastewater System（PDF p143）：給水タンクは燃料電池の生成水をFES冷却と乗員の飲用のために貯め、廃水タンクは乗員の液体廃棄物と湿度凝縮水を貯め、PCSの窒素で両方を加圧すると述べ、1.4節（p19）に他系とのIFを示す（訓練専用）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=143） |
| WA-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Supply and Waste Water Systems（PDF p393〜394）：給水系はFES冷却・飲用・衛生の水を供給し、給水タンク4基と廃水タンク1基が床下にあり、データはDISP 66とBFS THERMALで見られると示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/393） |
| WA-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | 第18章 SUPPLY WATER LOSS DEFINITIONS（PDF p2040〜）と第17章 WASTE WATER（p1990〜）：給水（A18-1〜62）と廃水（A17-451〜507）の喪失定義と管理を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2040） |
| WA-10 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS | 給水タンク4基と廃水タンク1基がミッドデッキ床下にあり、各タンクの使用可能容量は165 lbと記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| WA-11 | IOA報告（1987年・1988年） | IOA: Analysis / Assessment of the life support and airlock support subsystems | 給水・代謝廃棄物・廃水・煙検知・消火を担うLSSと、EVAを支えるALSSの独立解析と、NASA FMEA/CILとの比較評価を扱う（SSD-ECLSS-REF-002の記載による）。（出典: https://www.science.gov/topicpages/a/analysis+results+support） |
| WA-12 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.4節（PDF p77）：給水・廃水管理系のIFと、STS-1で給水タンク6基と廃水タンク1基を使う構成を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=77） |

### 3.2 生成水受入れ・処理（FCW）（12件）

機能説明書：SSD-FD-ECL-H2O-FCW-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| WA-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 5.1節（PDF p143）：生成水が圧力差で給水タンクへ送られ、水素分離器の銀パラジウム管が水素を真空ベントから船外へ出し、微生物フィルタがヨウ素を加えると解説する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=143） |
| WA-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p394〜395）：最大25 lb/hrの生成水、水リリーフ制御盤とタンクBへの冗長経路、pHセンサ、水素分離器（85%）、微生物フィルタ（約0.5 ppmのヨウ素）、1.5 psidの逆止弁を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/394） |
| WA-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A18-57A（PDF p2050）：STS-82で水素分離器のない代替経路から水素が入った事例と、EVA中のタンクCの隔離を記す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2050） |
| WA-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.5d H2O SPLY PRESS↑（PDF p327）：給水圧40 psia超で、タンクの過充填かA/B逆止弁の故障かを切り分ける。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=327） |
| WA-06 | NTRS 19850008615 | Other Challenges in the Development of the Orbiter Environmental Control Hardware | オービタECLSSの開発で見つかった問題と対策の一つとして、水/水素セパレータを扱う（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19850008615） |
| WA-08 | SAE 2006-01-2014 | Shuttle Potable Water Quality from STS-26 to STS-114 | 燃料電池の生成水は微生物チェック弁（MCV）でヨウ素を加えられて貯蔵タンクへ入ると記す（抄録で確認）。（出典: https://saemobilus.sae.org/content/2006-01-2014） |
| WA-09 | NTRS 19780014776 | Water system microbial check valve development | ヨウ素を含浸した樹脂の床で、飲料系と非飲料系をつないだときの微生物の移行を防ぐ逆止弁（MCV）の開発と試験を記す（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19780014776） |
| WA-10 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS | 3基の燃料電池が最大25 lb/hrの飲料水を生み、水素分離器2台で余剰水素の85%を除き、微生物フィルタで約0.5 ppmのヨウ素を加えると記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| WA-12 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.4.2節（PDF p79）：水素分離器と微生物フィルタ（約1/2 ppmのヨウ素）、1.5 psidの逆止弁を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=79） |
| WA-14 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist | FC H2O pH TEST（W-14、PDF p438）：生成水を小便器へ流してpHの表示を確かめる手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=438） |
| WA-16 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment（1988年） | C.12.2節（PDF p69）：燃料電池出口配管の流れの制限は燃料電池のデッドヘッドを招き、外部漏れは任務への影響にとどまると評価したと記す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=69） |
| WA-22 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | PDF p52：タンクA・Bが満杯の後にA/B逆止弁がすぐに開かず給水圧が40 psiaを超え、B/C逆止弁から生成水が代替経路を流れたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=52） |

### 3.3 給水貯蔵・分配（SPL）（13件）

機能説明書：SSD-FD-ECL-H2O-SPL-001

| ID | 文書番号 | 表題 | 関連内容 |
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

### 3.4 飲料水供給（GAL）（11件）

機能説明書：SSD-FD-ECL-H2O-GAL-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| WA-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.3.8節（PDF p70）と1.4節（p19）：チラーが乗員の飲料水を冷やすと述べ、ARSが給水を冷やして冷たい飲料水を供給することを給水・廃水系のIFに挙げる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=70） |
| WA-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p400〜401）：ギャレー給水弁、チラーを通る冷水経路と常温経路、Apollo給水器を示し、2.12節（p465〜466）でギャレーの復水ステーションと補助ポートを示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/400） |
| WA-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-551（PDF p2001〜2002）：GIRA・LIRSの取付け・取外し、GIRA使用中の常温・温水の摂取制限、就寝時の構成を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2001） |
| WA-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.2i（PDF p284）：水タンクの窒素加圧を失ったときのギャレーへの給水圧への影響を注記する。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=284） |
| WA-08 | SAE 2006-01-2014 | Shuttle Potable Water Quality from STS-26 to STS-114 | 乗員はギャレーの復水装置から飲料水を取り、飲む前にヨウ素除去装置でヨウ素を除くと記し、軌道上の飲料水が水質要求を満たしたとする（抄録で確認）。（出典: https://saemobilus.sae.org/content/2006-01-2014） |
| WA-10 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS | ギャレーの搭載時は給水をギャレーへ送り、冷水を45〜55°Fで供給すると記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| WA-13 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） | 3.15節（PDF p363）：個人衛生用の水をギャレーの補助ポートまたは給水器から12 ftのホースで取り出し、上流の微生物チェック弁で逆汚染を防ぐと示す。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=363） |
| WA-14 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist | GALLEY, FAILED SUPPLY LINE, BYPASS（W-28、PDF p452）：ギャレー給水配管の故障時に、微生物フィルタを逆流させてタンクAから給水する手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=452） |
| WA-15 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist | GIRAの取付け（5-53、PDF p163）：常温ラインへのMCVと冷水ラインへのACTEXの接続を示し、夜間・朝の構成（5-55）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=163） |
| WA-19 | NSTS-08291 | STS-59 Space Shuttle Mission Report（1994年） | PDF p31：ギャレーの温水・冷水に気泡が混じり、オービタの給水系からの気体の混入ではなく、給水時のベンチュリ効果によると判断したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-59%20Space%20Shuttle%20Mission%20Report.pdf#page=31） |
| WA-21 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | PDF p51：19個のCWCに給水を満たし、18個（計1,739.7 lb）をISSへ移送したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=51） |

### 3.5 廃水貯蔵（WST）（10件）

機能説明書：SSD-FD-ECL-H2O-WST-001

| ID | 文書番号 | 表題 | 関連内容 |
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

### 3.6 船外ダンプ・クロスタイ（DMP）（12件）

機能説明書：SSD-FD-ECL-H2O-DMP-001

| ID | 文書番号 | 表題 | 関連内容 |
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

### 3.7 タンク加圧（PRS）（6件）

機能説明書：SSD-FD-ECL-H2O-PRS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| WA-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 5.3節（PDF p150〜151）：窒素を15.5〜17.0 psigに下げるレギュレータ（1 lb/hr）とリリーフ弁（18.5±1.5 psig）、打上げ時のタンクAのベント、漏れ時の減圧、代替加圧弁を解説する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=150） |
| WA-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p395〜396）：窒素系統1・2による15.5〜17.0 psigの加圧とリリーフ弁、打上げ時のタンクAの減圧、H2O ALTERNATE PRESSスイッチによる代替加圧を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/395） |
| WA-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A18-54（PDF p2046）とA17-501（p1993）：打上げ時のタンクAのベントと再加圧の時期、代替加圧弁を通常閉とすることを定め、A17-506C（p1999）で窒素漏れ時の処置を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2046） |
| WA-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.2i H2O TK N2 P↓（PDF p283〜284）とSSR-17（p358）：水タンクN2圧の低下の切り分けと、水タンクの再加圧・減圧の手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=283） |
| WA-10 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS | 窒素系統1・2のいずれかで各タンクを16 psigの窒素で加圧すると記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| WA-12 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.4.2節（PDF p79〜80）：水タンクを窒素で16.0 psigに加圧し、タンクAの隔離弁とベント弁が連動すると示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=79） |

## 4. 文書×機能マトリクス（全件）

| ID | 文書番号 | 表題 | 全般 | FCW | SPL | GAL | WST | DMP | PRS | 出典 | URL |
|---|---|---|---|---|---|---|---|---|---|---|---|
| WA-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | ● | ● | ● | ● | ● | ● | ● | REF-002（A-01） | https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf |
| WA-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | ● | ● | ● | ● | ● | ● | ● | REF-002（A-04） | https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual |
| WA-03 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 |  |  | ● |  | ● | ● |  | REF-002（A-06） | https://ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf |
| WA-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | ● | ● | ● | ● | ● | ● | ● | REF-002（B-01） | https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf |
| WA-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） |  | ● | ● | ● | ● | ● | ● | REF-002（B-06） | https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf |
| WA-06 | NTRS 19850008615 | Other Challenges in the Development of the Orbiter Environmental Control Hardware |  | ● |  |  |  |  |  | REF-002（D-05） | https://ntrs.nasa.gov/citations/19850008615 |
| WA-07 | NTRS 20070023916 | Effects of Free Molecular Heating on the Shuttle ATCS |  |  | ● |  |  |  |  | REF-002（G-04） | https://ntrs.nasa.gov/citations/20070023916 |
| WA-08 | SAE 2006-01-2014 | Shuttle Potable Water Quality from STS-26 to STS-114 |  | ● |  | ● |  |  |  | REF-002（G-07） | https://saemobilus.sae.org/content/2006-01-2014 |
| WA-09 | NTRS 19780014776 | Water system microbial check valve development |  | ● |  |  |  |  |  | REF-002（G-08） | https://ntrs.nasa.gov/citations/19780014776 |
| WA-10 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS | ● | ● | ● | ● | ● | ● | ● | REF-002（N-01） | https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html |
| WA-11 | IOA報告（1987年・1988年） | IOA: Analysis / Assessment of the life support and airlock support subsystems | ● |  |  |  |  |  |  | REF-002（N-07） | https://www.science.gov/topicpages/a/analysis+results+support |
| WA-12 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | ● | ● | ● |  | ● | ● | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf |
| WA-13 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） |  |  |  | ● |  |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf |
| WA-14 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist |  | ● | ● | ● | ● | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf |
| WA-15 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist |  |  | ● | ● | ● | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf |
| WA-16 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment（1988年） |  | ● | ● |  |  |  |  | 新規 | https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf |
| WA-17 | JSC-19278 | STS-8 National Space Transportation Systems Program Mission Report（1983年） |  |  |  |  |  | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf |
| WA-18 | NSTS-08302 | STS-35 Space Shuttle Mission Report（1991年） |  |  |  |  | ● | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf |
| WA-19 | NSTS-08291 | STS-59 Space Shuttle Mission Report（1994年） |  |  |  | ● |  |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-59%20Space%20Shuttle%20Mission%20Report.pdf |
| WA-20 | NSTS-08292 | STS-65 Space Shuttle Mission Report（1994年） |  |  |  |  |  | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf |
| WA-21 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） |  |  | ● | ● |  |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf |
| WA-22 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） |  | ● | ● |  |  |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf |

## 5. 注記（出典間の相違・構成変更）

> **注記** WA-02（SCOM）の関連内容に示す頁はUSA007587 Rev. A CPN-1のPDF通し頁で、出典URLの末尾の番号と一致する。WA-04（運用飛行規則）は同じくNSTS-12820 Vol. A PCN-1のPDF通し頁である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/394）

> **注記** WA-06〜WA-09は、書誌ページ（NTRS・SAE Mobilus）の抄録で内容を確認したもので、本文は未確認である。WA-10（1988年版マニュアル）は転載ページの本文で確認した。WA-11（Science.govの検索結果ページ）は今回の調査では接続できなかったため、SSD-ECLSS-REF-002の記載のまま引き継いだ。（出典: https://ntrs.nasa.gov/citations/19850008615）

> **注記** 検証メモ：水タンクの窒素加圧の値は資料で異なり、WA-01・WA-02は15.5〜17.0 psig、WA-02のPCSの節（PDF p361）は17 psig、WA-10は16 psig、WA-12は16.0 psigとする（SSD-FD-ECL-H2O-PRS-001の注記を参照）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/361）

> **注記** 検証メモ：ギャレーの冷水の温度を、WA-02（SCOM 2.12節、PDF p465）は40〜60°F、WA-10は45〜55°Fとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/465）

> **注記** 検証メモ：WA-12（1979年の飛行運用マニュアル）はSTS-1で給水タンク6基（床上のE・Fを追加）を使うとし、他の資料は4基とする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=77）

## 6. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（22件） |
