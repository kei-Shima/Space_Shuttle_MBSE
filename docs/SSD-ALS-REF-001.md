# エアロック支援系 機能別関連文書一覧

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-ALS-REF-001 |
| 表題 | エアロック支援系 機能別関連文書一覧 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-ALS-001 |
| 関連図 | SSD-SYS-ARC-001 図25 エアロック支援系 関連文書マトリクス |

## 1. 目的

エアロック支援系（ALS）の各下位機能に関係する公開文書を機能別に整理し、各機能説明書と図25 エアロック支援系 関連文書マトリクス（文書×機能マトリクス）の根拠とする。

## 2. 調査方法

SSD-ECLSS-REF-002の3.7節 エアロック支援系（ALS）の10件と、同一覧の他の節からALSの下位機能に関係する3件（A-06・B-06・N-01）の計13件を引き継ぎ（出典欄「REF-002（A-01）」の形）、今回の調査で8件を追加した（出典欄「新規」）。引き継いだ行も含め、各行の関連内容は下位機能ごとに書き分けた。訓練マニュアル（USA006020）、SCOM、運用飛行規則、故障処置手順（MAL）、SODB、飛行運用マニュアル（JSC-12770）、IFM・Orbit Opsチェックリスト、ミッション報告、IOA報告は原本で本文を確認し、関連内容に節とPDFの通し頁を示す。

## 3. 機能別関連文書

### 3.1 エアロック支援系 全般（6件）

機能説明書：SSD-FD-ECL-ALS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| AL-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 6.0節 External Airlock System（PDF p173〜195）：外部エアロックと付属区画、弁、空気・水の移送、ブースタファン、ヒータ、ハッチ、操作器、計測・表示、運用を解説し、出典をEnvironmental Systems Console Handbook Vol. 5（JSC-19935）とする。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=195） |
| AL-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.11節 External Airlock（PDF p451〜452）：外部エアロックがEMU 2着を収納し、減圧・再与圧、EVA機器の再充電、LCVGの水冷却、点検・着用・通信を支援すると示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/452） |
| AL-07 | 番号なし | NSTS 1988 News Reference Manual – Airlock Support | エアロック、EMU、SCUによる電力・酸素・冷却・水の供給と、EVA前の減圧と再与圧の手順を解説する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html） |
| AL-08 | IOA報告（1987年・1988年） | IOA: Analysis / Assessment of the life support and airlock support subsystems | 給水・代謝廃棄物・廃水・煙検知・消火を担うLSSと、EVAを支えるALSSの独立解析と、NASA FMEA/CILとの比較評価を扱う。（出典: https://www.science.gov/topicpages/a/analysis+results+support） |
| AL-14 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） | 2.1.3節（PDF p9）：初期の内部エアロックはEVAのために乗員室を減圧しなくて済むようにする区画で、トンネルアダプタが2つ目のエアロックとしてEVAの代替経路になると記す。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=9） |
| AL-21 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | C.12.2節（PDF p71）：エアロック支援系（ALSS）の評価でNASAのFMEAとIOAの解析が食い違った主な理由を、エアロックは非常用機器として分類すべきでないという考え方に置くと記す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=71） |

### 3.2 区画・減圧・再与圧（DEP）（15件）

機能説明書：SSD-FD-ECL-ALS-DEP-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| AL-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 6.2節（PDF p174〜175）と6.9.3節（p191〜192）：均圧弁（NORM 240 lb/hr・EMER 1,278 lb/hr）と減圧弁（5・0位置）を示し、ドッキング時の漏れ確認とEVA前の乗員室の10.2 psiaへの減圧（約30分）を述べる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=174） |
| AL-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.11節（PDF p452〜453）と2.9節（p369）：3枚のハッチの構造と、内側ハッチの均圧弁による再与圧、エアロック内からの船外排気による減圧、減圧弁による乗員室の10.2 psiaへの減圧を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/452） |
| AL-03 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.2.3節（PDF p78）：ハッチを開ける前の差圧の範囲（乗員室・エアロック間とエアロック・ペイロードベイ間のハッチは軌道上で0.2 psid以内）と、ハッチを閉じるときの差圧（0〜0.01 psid）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=78） |
| AL-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A15-13・A15-101（PDF p1846・p1855）：EVA乗員を与圧したエアロックの外に締め出さないことと、ハッチの漏れで減圧・再与圧できない場合のEVA能力の喪失を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1846） |
| AL-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | ECLS SSR-3（PDF p337）：乗員室の圧力が15.2 psiaを超えた場合に、エアロック減圧弁で乗員室を運用圧力まで減圧する手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=337） |
| AL-07 | 番号なし | NSTS 1988 News Reference Manual – Airlock Support | エアロックを2段階（5 psia、0 psia）で減圧してエアロック減圧弁から船外へ排気し、内側ハッチの均圧弁で乗員室と均圧して再与圧すると記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html） |
| AL-09 | NTRS 20130013499 | So Close Yet So Far: The Jammed Airlock Hatch of STS-80 | STS-80でのエアロックハッチの固着事例を扱う（表題と参照文献のみ確認）。（出典: https://ntrs.nasa.gov/api/citations/20130013499/downloads/20130013499.pdf） |
| AL-10 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report | EVA準備での乗員室の10.2 psiへの減圧とエアロック系の作動を記録する。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf） |
| AL-11 | NASA/TP-2011-216147 | Preventing Decompression Sickness Over Three Decades of Extravehicular Activity（Conkin、2011年） | 乗員室を10.2 psia・酸素26.5%とするシャトルの段階減圧プロトコルの手順と経緯を解説し、STS-41B（1984年）を初適用と記す。（出典: https://www.nasa.gov/wp-content/uploads/2023/03/conkin-prebreathe-overview-tp216147-2011.pdf） |
| AL-12 | NASA TM-58259 | Verification of an altitude decompression sickness protocol for Shuttle operations utilizing a 10.2 psi pressure stage（Waligora他、1984年） | 10.2 psia・酸素26.5%の段階減圧プリブリーズを検証した報告で、NASAのプリブリーズ文献目録で所在を確認した（本体は未入手）。（出典: https://www.nasa.gov/wp-content/uploads/2023/03/prebreathe-library-summary-of-contents.pdf） |
| AL-13 | NTRS 20140003729 | Evidence Report: Risk of Decompression Sickness (DCS) | シャトルの段階減圧からISSのキャンプアウト方式まで、減圧症予防プロトコルの経緯と根拠を整理する。（出典: https://ntrs.nasa.gov/api/citations/20140003729/downloads/20140003729.pdf） |
| AL-14 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） | 2.1.3節（PDF p9）：内部エアロックの内径63インチ・長さ83インチと、直径40インチのD字形ハッチ2枚を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=9） |
| AL-15 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | H-1 HATCH (B): JAMMED ACTUATOR/LINKAGE WORKAROUND（PDF p159）：B型ハッチのアクチュエータやリンクが固着した場合に、機構を組み替えてハッチを閉じ・密閉し、再び開けられるようにする手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=159） |
| AL-18 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | PDF p30：ドッキング中のベスティビュールの与圧・減圧と漏れ確認、EVAのための乗員室の10.2 psiaへの減圧、EVA後の14.7 psiaでのエアロックの再与圧を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=30） |
| AL-19 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | PDF p15〜16・p50：後部ハッチのラッチ掛けの難しさ（外側に手掛けがない）と、後部ハッチ右舷の均圧弁で減圧できなかった異常（IFA STS-114-V-15、キャップが通気口をふさいだと推定）を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=50） |

### 3.3 EMU補給・支援（SCU）（8件）

機能説明書：SSD-FD-ECL-ALS-SCU-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| AL-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 6.3節（PDF p176〜177）：EMU補給用のO2配管（900 psi、AW82BのEMU OXYGENスイッチ、床のEMU O2隔離弁）と、フィルタ・逆止弁・給水遮断弁を通る給水、廃水戻りラインへのアレージダンプを示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=176） |
| AL-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.11節（PDF p447〜449・p456）：SCU（水ホース3本、高圧O2ホース、電線、水圧調整器）の機能、EMUマウント、PLSSのO2充填（850±50 psig）と給水タンクの再充填を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/456） |
| AL-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A15-152・A15-204（PDF p1866・p1876〜1878）：消耗品が残り30分でSCUに接続することと、O2補給・給水の再充填の温度制約、バッテリ充電に制約がないことを定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1866） |
| AL-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | ECLS SSR-20（PDF p362）とEPS SSR-10（p464）：給水の小漏れの切り分けでARLK H2O S/O VLVを閉じて外部エアロックの水移送配管の漏れを判定する手順と、主母線A喪失時にEMUの電源・充電器を主母線Bに切り替える手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=362） |
| AL-06 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS | タンクA・Bの水がエアロックでのEMU補給に使われ、WCSがエアロックからのEMU凝縮水を処理して廃水タンクへ移すと記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| AL-07 | 番号なし | NSTS 1988 News Reference Manual – Airlock Support | SCUを介してEMUへ電力・酸素・水を供給し、酸素はエアロック盤AW82Bから900±500 psiaで、電力はAW18Hから17±0.5 VDC・5 Aで供給すると記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html） |
| AL-16 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 5-20 PCS 1(2) CONFIG（PDF p130）：PCS構成の確認で、ミッドデッキ床のEMU O2 ISOL VLVが閉であることを確かめる。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=130） |
| AL-17 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） | PDF p24：EMUの実演で生じた通信雑音の原因を、EMUを収納・着脱時に拘束するエアロックのアダプタ板とEMUの緩い嵌合とし、緩い嵌合は取り外しやすさのための設計どおりと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=24） |

### 3.4 液冷服冷却ループ（LCG）（6件）

機能説明書：SSD-FD-ECL-ALS-LCG-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| AL-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.3.7節（PDF p69）と6.3節（p176）：エアロック内のLCVG熱交換器と、EMUごとの2本の閉じたLCVG冷却ループをオービタの水ループで冷却することを示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=69） |
| AL-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.11節（PDF p448）と2.9節（p379）：EMUの液体輸送系がLCVGに約240 lb/hrを循環させ船内ではSCUを通してオービタの熱交換器へも流すことと、液冷服熱交換器が水冷却ループの冷側経路にあることを示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/448） |
| AL-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A15-202・A18-61・A18-62（PDF p1870〜1871・p2057〜2058）：LCG配管の圧力・温度上昇時のEMUによる冷却、配管の喪失定義（28.1・18 psig）、対処の優先順位を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1870） |
| AL-06 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS | 水冷却ループの経路に液冷服（LCG）熱交換器が含まれると記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| AL-07 | 番号なし | NSTS 1988 News Reference Manual – Airlock Support | SCUを介して液冷服を冷却すると記し、液冷服熱交換器の熱がフレオン21冷却ループへ移されるとする（SSD-FD-ECL-ALS-001の注記を参照）。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html） |
| AL-18 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | PDF p39：EVA中は機体姿勢が穏やかだったため、外部エアロックの補給配管が限界内に十分収まったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=39） |

### 3.5 換気・ブースタファン（VNT）（8件）

機能説明書：SSD-FD-ECL-ALS-VNT-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| AL-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 6.4節（PDF p178〜179）：ブースタファン2台（三相115 V AC・180 W、541〜767 lb/hr、MO13Q）とダクトの機能（湿度制御、ガスのよどみ防止、結露防止、床下アビオニクスベイの熱調整、ISS・モジュールへの送気）を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=178） |
| AL-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.11節（PDF p456）と5.2節（p829）：EVA以外の期間はダクトとブースタファンで調整空気を送り、軌道投入後にダクトとブースタファンを設置すると示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/456） |
| AL-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A15-203B（PDF p1873）：EVA後の乗員室大気の除染で、ハッチを開けた後にブースタファンとダクトをできるだけ早く設置・起動すると定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1873） |
| AL-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | EPS SSR-110・SSR-120（PDF p612・p623）：AC1（AC2）母線の喪失でエアロック・トンネルのファンA（B）を失い、稼働中のファンを切り替えると示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=612） |
| AL-07 | 番号なし | NSTS 1988 News Reference Manual – Airlock Support | EVA以外の期間は、空気循環系がダクトを通じてエアロックへ調整空気を送ると記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html） |
| AL-15 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | 4-2 Filter Cleaning（PDF p98）：キャビン・アビオニクスベイ・ブースタファンのフィルタ清掃はMCCの指示がない限り行わないとする。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=98） |
| AL-18 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | PDF p31：ブースタファンAが3相とも正常に起動し、飛行中はファンAだけを運転したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=31） |
| AL-20 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | PDF p51：飛行後に、ブースタファンのバイパスダクトが打上げ前に誤って収納されていたことが見つかったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=51） |

### 3.6 配管・構造ヒータ（HTR）（8件）

機能説明書：SSD-FD-ECL-ALS-HTR-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| AL-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 6.5節（PDF p179〜180）と6.9.2節（p191）：6本の水配管の2区域・3系統のヒータ、外殻の3区域の構造ヒータ、ベスティビュールヒータ、ML86Bの遮断器とMNA・MNBの切替え運用を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=179） |
| AL-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 5.2節（PDF p828）：軌道投入後の作業でエアロックのヒータを入れると示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/828） |
| AL-03 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.6.4節 Airlock Support Subsystem（PDF p224）：EVA中は断熱ハッチカバーを閉じておかないと、H2OパネルとEMUのSCUが凍るおそれがあるとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=224） |
| AL-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A15-201・A18-60・A18-301・A18-304・A18-306（PDF p1869・p2055〜2056・p2093〜2096）：ハッチ断熱カバー、水配管の喪失定義、ヒータを入れる時期、計測喪失時の両系統運転、ヒータ喪失時の姿勢管理を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2055） |
| AL-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | ECLS 6.7a・6.7b（PDF p328〜329）：EXT A/L H2O LN T・EXT A/L STRUC Tの警報で、ヒータの電源喪失やサーモスタットの故障を切り分け、代わりの電源・系統に切り替える手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=328） |
| AL-16 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 6-5 HEATER RECONFIG（PDF p179）：軌道上のヒータ再構成で、ML86Bの外部エアロックヒータ（配管区域1・2と構造区域1〜3）の遮断器をMNAとMNBで入れ替える。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=179） |
| AL-18 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | PDF p30：飛行中の点検で外部エアロックの水配管ヒータをA系統からB系統へ切り替え、C系統は不要だったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=30） |
| AL-19 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | PDF p50：構造ヒータの全系統を飛行中監視して正常を確かめ、ベスティビュールヒータの点検はMNAだけで行ったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=50） |

### 3.7 計測・表示（MON）（4件）

機能説明書：SSD-FD-ECL-ALS-MON-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| AL-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 6.8節（PDF p187〜190）：センサの構成、ハッチ両側の差圧計、SPEC 177 EXTERNAL AIRLOCK（SM OPS 2）の表示項目と範囲を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=189） |
| AL-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p359）と4.1節（p790）：SM DISP 66のエアロック圧力（AIRLK P）を示し、乗員室の圧力表示の予備に使えるとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/359） |
| AL-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-302A・A10-342A（PDF p1977・p1645）：エアロック・船外間差圧から求める乗員室圧力の誤差（±2.0 psi）と、外部エアロックの圧力をドッキング機構のアビオニクス箱の雰囲気圧とみなす制約を示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1977） |
| AL-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | ECLS 6.2b（PDF p271）とCOMM SSR-10（p87）：AIRLK P・EXT A/L PRESSを乗員室圧力の予備に使うことと、MDM喪失時に失う外部エアロックの計測を示し、6章目次（p258）はSPEC 177の故障メッセージに対応手順がないとする。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=271） |

## 4. 文書×機能マトリクス（全件）

| ID | 文書番号 | 表題 | 全般 | DEP | SCU | LCG | VNT | HTR | MON | 出典 | URL |
|---|---|---|---|---|---|---|---|---|---|---|---|
| AL-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | ● | ● | ● | ● | ● | ● | ● | REF-002（A-01） | https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf |
| AL-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | ● | ● | ● | ● | ● | ● | ● | REF-002（A-04） | https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual |
| AL-03 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 |  | ● |  |  |  | ● |  | REF-002（A-06） | https://ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf |
| AL-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights |  | ● | ● | ● | ● | ● | ● | REF-002（B-01） | https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf |
| AL-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） |  | ● | ● |  | ● | ● | ● | REF-002（B-06） | https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf |
| AL-06 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS |  |  | ● | ● |  |  |  | REF-002（N-01） | https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html |
| AL-07 | 番号なし | NSTS 1988 News Reference Manual – Airlock Support | ● | ● | ● | ● | ● |  |  | REF-002（N-02） | https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html |
| AL-08 | IOA報告（1987年・1988年） | IOA: Analysis / Assessment of the life support and airlock support subsystems | ● |  |  |  |  |  |  | REF-002（N-07） | https://www.science.gov/topicpages/a/analysis+results+support |
| AL-09 | NTRS 20130013499 | So Close Yet So Far: The Jammed Airlock Hatch of STS-80 |  | ● |  |  |  |  |  | REF-002（N-14） | https://ntrs.nasa.gov/api/citations/20130013499/downloads/20130013499.pdf |
| AL-10 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report |  | ● |  |  |  |  |  | REF-002（N-15） | https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf |
| AL-11 | NASA/TP-2011-216147 | Preventing Decompression Sickness Over Three Decades of Extravehicular Activity（Conkin、2011年） |  | ● |  |  |  |  |  | REF-002（N-20） | https://www.nasa.gov/wp-content/uploads/2023/03/conkin-prebreathe-overview-tp216147-2011.pdf |
| AL-12 | NASA TM-58259 | Verification of an altitude decompression sickness protocol for Shuttle operations utilizing a 10.2 psi pressure stage（Waligora他、1984年） |  | ● |  |  |  |  |  | REF-002（N-21） | https://www.nasa.gov/wp-content/uploads/2023/03/prebreathe-library-summary-of-contents.pdf |
| AL-13 | NTRS 20140003729 | Evidence Report: Risk of Decompression Sickness (DCS) |  | ● |  |  |  |  |  | REF-002（N-22） | https://ntrs.nasa.gov/api/citations/20140003729/downloads/20140003729.pdf |
| AL-14 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） | ● | ● |  |  |  |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf |
| AL-15 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） |  | ● |  |  | ● |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf |
| AL-16 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） |  |  | ● |  |  | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf |
| AL-17 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） |  |  | ● |  |  |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf |
| AL-18 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） |  | ● |  | ● | ● | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf |
| AL-19 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） |  | ● |  |  |  | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf |
| AL-20 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） |  |  |  |  | ● |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf |
| AL-21 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | ● |  |  |  |  |  |  | 新規 | https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf |

## 5. 注記（出典間の相違・構成変更）

> **注記** AL-02（SCOM）の関連内容に示す頁はUSA007587 Rev. A CPN-1のPDF通し頁で、出典URLの末尾の番号と一致する。AL-04（運用飛行規則）は同じくNSTS-12820 Vol. A PCN-1のPDF通し頁である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/452）

> **注記** AL-06・AL-07（1988年版News Reference Manual）は頁のないWeb転載で、関連内容はSSD-FD-ECL-ALS-001とSSD-ECLSS-REF-002の記述（同資料を出典とする）に基づく。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html）

> **注記** AL-08（IOA、Science.govの抄録）・AL-09（STS-80のハッチ固着）・AL-12（TM-58259）は、SSD-ECLSS-REF-002と同じく本文を確認していない（抄録・表題・文献目録による）。（出典: https://ntrs.nasa.gov/api/citations/20130013499/downloads/20130013499.pdf）

> **注記** AL-03（SODB）の出典URLはSSD-ECLSS-REF-002のA-06と同じwwwなしのibiblio URLで、関連内容の頁の出典はwww付きの同じファイルを示す。（出典: https://ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf）

> **注記** 区画の容積は資料で異なる（SSD-FD-ECL-ALS-DEP-001の注記を参照）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=195）

## 6. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（21件） |
