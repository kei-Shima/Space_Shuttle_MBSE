# ARS 機能別関連文書一覧

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-ARS-REF-001 |
| 表題 | ARS 機能別関連文書一覧 |
| 版・日付 | 初版（Rev. -）／2026-09-26 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-ARS-001 |
| 関連図 | SSD-SYS-ARC-001 図13 ARS 関連文書マトリクス |

## 1. 目的

大気再生系（ARS）の各下位機能に関係する公開文書を機能別に整理し、各機能説明書と図13 ARS 関連文書マトリクス（文書×機能マトリクス）の根拠とする。

## 2. 調査方法

SSD-ECLSS-REF-002の3.3節 大気再生系（ARS）の12件と、同一覧の他の節からARSの下位機能に関係する5件（A-07・B-06・D-01・D-04・N-15）の計17件を引き継ぎ（出典欄「REF-002（A-01）」の形）、今回の調査で19件を追加した（出典欄「新規」）。各文書の番号・表題・確認に使ったURLは表の各行に示す。AR-02（Shuttle Crew Operations Manual、USA007587 Rev. A CPN-1）とAR-04（NSTS-12820 Vol. A 運用飛行規則）は原本で本文を確認し、列ごとの関連内容に節・規則番号とPDFの通し頁を示す。

## 3. 機能別関連文書

### 3.1 ARS 全般（9件）

機能説明書：SSD-FD-ECL-ARS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| AR-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3章 Atmospheric Revitalization System：ARSはキャビン・アビオニクスベイ・IMUに空気を循環させるファン網と、空気/水熱交換器とコールドプレートで集めた熱をATCSのフレオンループへ渡す水冷却ループから成ると解説する（訓練専用）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf） |
| AR-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Atmospheric Revitalization System（PDF p369）：ARSは空気と水を循環させて熱・相対湿度・CO2・COを制御し、キャビンのアビオニクスを冷却すると述べ、運用（p404）に打上げ時の構成、要約（p407）に相対湿度30〜65%の維持と空気ろ過・換気を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369） |
| AR-03 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | ECLSS章の大気再生の節で、キャビン空気の循環、CO2・CO除去、温度・湿度制御、アビオニクスベイとIMUの冷却を解説し、水冷却ループは別ページへリンクする。（出典: https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html） |
| AR-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-1001 Life Support Go/No-Go Criteria（PDF p2032）：ARS空気系（キャビンファン、アビオニクスベイ冷却、IMUファン）とキャビン大気（CO2・温度・湿度制御、RCRS）の喪失時の飛行継続判断を規定し、注記（p2034）でベイの両ファン喪失は軌道到達可とする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2032） |
| AR-07 | SAE 921348 | Shuttle Orbiter ECLSS – Flight experience（1992年） | キャビン大気の汚染ガス除去とキャビン・機器の温度制御を含む6主要サブシステムの設計と45飛行の運用実績、主な飛行中の不具合と設計・手順の改修をまとめる（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19930057510） |
| AR-14 | NTRS 19750056784 | The shuttle orbiter cabin atmospheric revitalization systems | ARSが水冷却ループ、キャビンのCO2・臭気・湿度・温度の制御、アビオニクス冷却から成ると示す（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19750056784） |
| AR-16 | NTRS抄録（1974年） | Orbiter ECLSS support of Shuttle payloads（Jaax他） | オービタECLSSの大気再生・乗員生命維持・能動熱制御の機能・性能仕様と系統図を示し、自動衛星・Spacelab・国防総省ミッションのペイロード支援能力を熱力学解析で評価する（抄録で確認）。（出典: https://www.science.gov/topicpages/s/shuttle+orbiter+payload） |
| AR-17 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | 訓練マニュアルの抜粋として、ARSの空気系と水冷却ループの構成・数値を解説する。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| AR-22 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | 付録C.13節（PDF p103〜141）にARSのIOA評価ワークシートを収録し、NASAのFMEA/CILとの臨界度の相違と、CIL課題の解決と根拠を項目ごとに示す。（出典: https://ntrs.nasa.gov/citations/19900001639） |

### 3.2 キャビン空気循環（CAC）（11件）

機能説明書：SSD-FD-ARS-CAC-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| AR-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.2.1節 Cabin Fan：2台のキャビンファン（通常1台、三相115 V AC・495 W、公称1,400 lb/hr）と各ファン出口の逆止弁、2相では起動できないが運転中は継続する特性を解説する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf） |
| AR-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Cabin Air Flow・Cabin Air（PDF p369〜370）：空気系機器はダクトを除きミッドデッキ床下にあり、2,300 ft³を330 cfmで約7分ごとに換気し、300ミクロンフィルタ経由で2台のキャビンファン（三相115 V AC・495 W、公称1,400 lb/hr、通常1台）が吸引すると示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369） |
| AR-03 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | キャビン空気を300ミクロンフィルタ経由で2台のキャビンファンの1台で吸引し、2,300 ft³を330 cfmで約7分ごとに換気すると記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html） |
| AR-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-101 Cabin Fan（PDF p1929）：ファンΔPが4.20（4.49）in H2O未満または6.80（6.51）in H2O超で乗員が気流喪失を確認すれば喪失とし（最低必要流量1,400 lb/hr）、A17-153（p1947）で差圧センサ喪失時の就寝中の両ファン運転、A17-154（p1948）で劣化した回転機器の管理を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1929） |
| AR-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.1a CABIN FAN ΔP（PDF p260）：キャビンファンΔP異常時の処置（逆止弁の開固着の判定、就寝時の両ファン運転、ダクトの漏れ・閉塞の確認）を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf） |
| AR-17 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | キャビンファン（2台のうち1台、三相115 V AC・495 W）が公称1,400 lb/hrでキャビン空気ダクトに空気を流すと記す。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| AR-18 | NASA-CR-134164（SP02T73） | Space Shuttle Atmospheric Revitalization Subsystem/Active Thermal Control Subsystem Computer Program（Users Manual）（Hamilton Standard、1973年） | ARSキャビンガスループのモデル（2.3節）に、ファン入口温度と体積流量によるガス流量の収束計算とキャビンファン上流のアビオニクス発熱ノードを加え、LiOHをキャビン熱交換器と直列の位置に移した。（出典: https://ntrs.nasa.gov/citations/19740006419） |
| AR-22 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | キャビンファン組立（ARS-3061X、C.13-35）の評価ワークシートを示す。（出典: https://ntrs.nasa.gov/citations/19900001639） |
| AR-29 | NASA/TM-2005-214007 | Designing For Human Presence in Space: An Introduction to ECLSS – Appendix I, Update（Wieland、2005年） | 米国宇宙機ECLSSの比較表（表1、p8）のオービタ欄で、換気をキャビンファンと換気ダクトで行うと記す。（出典: https://ntrs.nasa.gov/citations/20060005209） |
| AR-31 | USA006019 Rev. A（C&W 21002） | Caution and Warning（2008年） | 表7-3 ハードウェアC&W表（PDF p97）で、キャビンファンΔPをハードウェアC&Wのチャネル74に割り当てる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf） |
| AR-32 | NTRS 20090043801（JSC-CN-19306） | Noise Control in Space Shuttle Orbiter（Goodman、NOISE-CON 2010） | オービタにはキャビンARS・IMU冷却・3つのアビオニクスベイ冷却の5つの閉ループ送風冷却系があり、1980年のKSCでの試験ではキャビンファンが両デッキの主な騒音源になったと記す。（出典: https://ntrs.nasa.gov/citations/20090043801） |

### 3.3 CO2・CO除去（CO2）（17件）

機能説明書：SSD-FD-ARS-CO2-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| AR-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.2.2節・3.2.6節：オリフィスで各約120 lb/hrを流す2個のLiOHキャニスタ（活性炭で臭気を除去、予備最大30個、交換中はキャビンファン停止）と、COをCO2に変えるATCO（触媒は白金2%・炭素担体）を解説する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf） |
| AR-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Lithium Hydroxide Canisters（PDF p370）とATCOの段落（p376）：オリフィスで各約120 lb/hrを2個のLiOHキャニスタへ流してCO2を、活性炭で臭気・微量汚染物を除き（1個48 man-hours、予備最大30個）、熱交換器出口空気の一部をATCOへ送ってCOをCO2に変えると示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） |
| AR-03 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | 2個のLiOHキャニスタでCO2を、活性炭で臭気・微量汚染物を除き、キャニスタを12時間ごと（乗員7名では11時間ごと）に交互に交換し、熱交換器出口空気の一部をCO除去装置へ送ると記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html） |
| AR-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-151 Cabin Atmosphere Control（PDF p1938）：LiOHキャニスタは就寝前後またはPPCO2が7.6（6.1）mmHg以上で交換すると定め、A17-157（p1952）で未使用LiOH 2日分の予備とPPCO2 7.6 mmHgの保護、A17-158（p1953）で使用済みキャニスタの再使用を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1938） |
| AR-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.8b PPCO2（PDF p333）：CO2分圧が7.6 mmHgを超えた場合の処置を、RCRS搭載の有無とLiOH交換予定で分岐して示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf） |
| AR-06 | NASA CR-1981 | Space Shuttle EC/LSS（Hamilton Standard、1972年） | 選定系統（表1、p5）でCO2制御にLiOHベッド、臭気・微量汚染物に活性炭ベッドを採用し、日常の機上整備をLiOHカートリッジの交換だけにしたと述べる。（出典: https://ntrs.nasa.gov/api/citations/19720017476/downloads/19720017476.pdf） |
| AR-08 | JSC-16720 | STS-1 ECLSS Consumables and Thermal Analysis | STS-1のLiOH収支（搭載6個、うち不測時予備1個）と、打上げ後5.5時間での装着と交換時刻の前提を示す。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf） |
| AR-10 | SAE 901290 | Expanded capabilities of the Extended Duration Orbiter | EDOの改修として、搭載するLiOHを減らす方法を挙げる（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19910065909） |
| AR-15 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report | STS-54でARSは問題なく作動し、CO2分圧を3.50 mmHg未満に保ったと記録する。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf） |
| AR-17 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | オリフィスで各約120 lb/hrを2個のLiOHキャニスタへ流してCO2と臭気を除き、ATCO（白金2%・炭素担体）でCOを除くと記す。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| AR-22 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | LiOHキャニスタ（ARS-301A、C.13-20）について、NASAのより保守的な機能・冗長の定義による高い臨界度にIOAが同意したと記す。（出典: https://ntrs.nasa.gov/citations/19900001639） |
| AR-27 | SAE 2003-01-2491 | The Lithium Hydroxide Management Plan for Removing Carbon Dioxide from the Space Shuttle while Docked to the International Space Station（Williams他、2003年） | 係留中のシャトルとISSの大気をISSのVozdukhとCDRAだけで制御できることをUF-1/STS-108の試験で示し、シャトル用LiOHキャニスタの打上げ量を減らす管理計画を述べる（抄録で確認）。（出典: https://saemobilus.sae.org/papers/lithium-hydroxide-management-plan-removing-carbon-dioxide-space-shuttle-docked-international-space-station-2003-01-2491） |
| AR-28 | NSTS-37443 | STS-107 Space Shuttle Mission Report（2003年） | 軌道上のCO2分圧は平均3.0 mmHg、最高6.47 mmHgだったと記録する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-107%20Space%20Shuttle%20Mission%20Report.pdf） |
| AR-29 | NASA/TM-2005-214007 | Designing For Human Presence in Space: An Introduction to ECLSS – Appendix I, Update（Wieland、2005年） | 表1（p5〜6）のオービタ欄で、2個のLiOHキャニスタに同時に空気を流し乗員数に応じて交換すること、微量汚染物を活性炭で除きATCOでCOをCO2に変えることを記す。（出典: https://ntrs.nasa.gov/citations/20060005209） |
| AR-33 | NTRS 20100021976（JSC-CN-20224） | Overview of Carbon Dioxide Control Issues During International Space Station/Space Shuttle Joint Docked Operations（Matty、2010年） | ISS係留中は両機が大気を共有するため、シャトルのLiOHキャニスタ（未使用約7 lb、使用後約9 lb）の使用を主に就寝前後に限ってISSのCDRA・VozdukhにCO2除去を分担させ、ISSに備蓄したキャニスタで搭載数の過不足を調整すると述べる。（出典: https://ntrs.nasa.gov/citations/20100021976） |
| AR-34 | NTRS 20100025551（JSC-CN-20953） | Advanced Catalysts for the Ambient Temperature Oxidation of Carbon Monoxide and Formaldehyde（Nalette他、2010年） | NASAが1970年代にシャトルの常温CO酸化触媒として白金2%・炭素担体を選んだと述べ、シャトルの設計空間速度での新しい触媒の試験から現行のATCO反応器には大きな余裕があると結論する。（出典: https://ntrs.nasa.gov/citations/20100025551） |
| AR-36 | NTRS 20110003653（JSC-CN-22727） | Manned Mission Planning Considerations when Using a Non-Regenerable CO2 Removal System（DeSimpelaere、2011年） | シャトルの主なCO2除去手段であるLiOHキャニスタ方式について、再生式でなく選ばれた理由と、気流、LiOH粉塵、質量と収納、交換時期、物流管理などの運用上の教訓をまとめる（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/20110003653） |

### 3.4 再生式CO2除去装置（RCRS）（13件）

機能説明書：SSD-FD-ARS-RCRS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| AR-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 付録C（C.2節）：固体アミン（PEI）ベッドを熱と真空排気で再生するRCRSの原理とvolume Dの配置・構成部品を示し、RCRSはその後OV-105から撤去されたと記す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf） |
| AR-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Regenerable Carbon Dioxide Removal System（PDF p371〜373）：OV-105のRCRS（歴史的情報）は固体アミン（PEI）ベッド2個を13分ごとに吸着と再生（熱と真空）で切り替え、流量制御弁で72/110 lb/hrを選び、MO51Fで操作しSPEC 66で監視すると示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371） |
| AR-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-106 RCRS Loss Definition（PDF p1937）：PPCO2を7.6 mmHg未満に保てないかPPCO2の把握を失うと喪失とし、A17-155（p1950）で上昇・再突入中の停止と軌道上の起動・停止時期、A17-156（p1952）で火災後の手動停止を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1937） |
| AR-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.8a CO2 CNTLR 1(2)（PDF p330）：S66 CO2 RL SYS MALF警報時に、MO51Fの表示灯とSPEC 66からRCRSコントローラの故障を判定する手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf） |
| AR-10 | SAE 901290 | Expanded capabilities of the Extended Duration Orbiter | EDO向けに提案した再生式CO2除去装置の構成・運用・配置を詳しく説明する（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19910065909） |
| AR-11 | SAE 901292 | The EDO Regenerable CO2 Removal System | 固体アミンでCO2と水蒸気を吸着して宇宙の真空へ脱着し、30分周期でベッドを切り替え、乗員4〜7名に対応するRCRSの開発を述べる（抄録で確認）。（出典: https://saemobilus.sae.org/content/901292） |
| AR-12 | SAE 932294 | Development and Flight Status Report on the EDO RCRS | Hamilton Standardが開発したRCRSの設計・性能と1991〜1992年の開発・認定試験、STS-50・52・55でのオービタとSpacelabのCO2除去の飛行結果を報告する（抄録で確認）。（出典: https://saemobilus.sae.org/content/932294） |
| AR-20 | NASA-CR-160224 | Flight prototype CO2 and humidity control system（Hamilton Standard、1979年） | シャトル向けに開発した再生式CO2・湿度制御装置の飛行試作で、吸着剤HS-Cの2ベッドを交互に吸着と宇宙真空への脱着に切り替え、CO2分圧と湿度を制御できることを試験で確認した（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19790017589） |
| AR-21 | SAE 851374 | Performance and endurance testing of a prototype carbon dioxide and humidity control system for Space Shuttle extended mission capability（Lin・Cusick、1985年） | 1980年にJSCへ納入された4〜10人用の再生式CO2・湿度制御装置の飛行試作機を試験し、LiOH方式より大幅に軽く、無整備で最長60日運転できることを示した（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19860038819） |
| AR-25 | NASA-CR-193057 | STS-50 Space Shuttle Mission Report（1992年） | RCRSの初飛行で、軌道投入後25時間は正常に運転したが6回停止してLiOHキャニスタに切り替え、JSCで再現・検証した機上整備手順で単系運転を回復し以後正常に運転したと記録する。（出典: https://ntrs.nasa.gov/citations/19930016803） |
| AR-29 | NASA/TM-2005-214007 | Designing For Human Presence in Space: An Introduction to ECLSS – Appendix I, Update（Wieland、2005年） | 表1（p5）のオービタ欄で、長期ミッションではアミン系のRCRSでCO2と一部の水分を除いて宇宙へ排出できると記す。（出典: https://ntrs.nasa.gov/citations/20060005209） |
| AR-32 | NTRS 20090043801（JSC-CN-19306） | Noise Control in Space Shuttle Orbiter（Goodman、NOISE-CON 2010） | 1990年にEDO向けRCRSへ消音器を追加したと記す。（出典: https://ntrs.nasa.gov/citations/20090043801） |
| AR-36 | NTRS 20110003653（JSC-CN-22727） | Manned Mission Planning Considerations when Using a Non-Regenerable CO2 Removal System（DeSimpelaere、2011年） | EDO改修で搭載した固体アミンの再生式吸収装置にも触れる（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/20110003653） |

### 3.5 キャビン温湿度制御（THC）（19件）

機能説明書：SSD-FD-ARS-THC-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| AR-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.2.3〜3.2.5節：キャビン温度制御弁とコントローラ2台（弁は手動では4つの固定位置のいずれかで固定され、自動では全COOLから全HOTまで最大4分で動く）、slurperバーで凝縮水を集めるキャビン熱交換器、凝縮水を廃水タンク（ISSミッションではCWC）へ送る湿度分離器を解説する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf） |
| AR-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Cabin Air Temperature Control〜Cabin Air Humidity Control（PDF p374〜376）：バイパス弁が空気の0〜70%をキャビン熱交換器から迂回させ（全COOL約65°F、全WARM約80°F）、凝縮水はslurperから2台のファンセパレータ（通常1台、約1〜最大約4 lb/hr）で廃水タンクへ送り相対湿度を30〜65%に保つと示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/374） |
| AR-03 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | バイパスダクトで熱交換器を迂回した空気を混ぜてキャビン温度を65〜80°Fに制御し、ファンセパレータが最大約4 lb/hrの水を除いて相対湿度を30〜65%に保つと記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html） |
| AR-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-102 Cabin Atmospheric Control（PDF p1930）：キャビン温度を95（90）°F未満に保てない場合や、廃水タンク増加率の説明できない低下（通常6±1 lb/day/人）・結露による湿度制御の失敗でキャビン大気制御の喪失とし、A17-151・A17-152（p1938・p1940）で上昇・再突入時のバイパス弁FULL COOLとキャビン温度管理を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1930） |
| AR-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.2j HUMID SEP（PDF p285）：湿度分離器の回転数低下警報時に予備の分離器へ切り替える手順と、分離器下流の逆止弁の開固着による浸水の注意を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf） |
| AR-06 | NASA CR-1981 | Space Shuttle EC/LSS（Hamilton Standard、1972年） | 選定系統（表1、p5）で、湿度制御を凝縮熱交換器とエルボー型水分離器、温度制御を凝縮熱交換器を迂回する空気流で行う構成を採用した。（出典: https://ntrs.nasa.gov/api/citations/19720017476/downloads/19720017476.pdf） |
| AR-08 | JSC-16720 | STS-1 ECLSS Consumables and Thermal Analysis | キャビン温度を70°Fに制御する前提で、キャビン空気ループの熱プロファイルとキャビン温度・露点の解析値を示す。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf） |
| AR-09 | JSC-16730 | ECLSS Analysis of STS-1: 9-psia EVA Configuration | キャビン圧9 psiaでの冷却能力をSECUREとSEPSで評価し、キャビン熱交換器の空気バイパス弁をゼロ流量に設定することの効果を再検討するよう提言する（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19800020542） |
| AR-14 | NTRS 19750056784 | The shuttle orbiter cabin atmospheric revitalization systems | 1973年以降の設計変更としてキャビンヒータの廃止を挙げる（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19750056784） |
| AR-15 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report | キャビン空気温度と相対湿度の最高値（80°F、56%）を記録する。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf） |
| AR-17 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | キャビン温度制御弁が熱交換器を迂回する空気量を調整し（自動では全COOLから全HOTまで最大4分で動く）、2台の湿度分離器（出口空気37 lb/hr）が0〜4 lb/hrの水を除くと記す。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| AR-19 | NASA-CR-151030 | Lightweight Long Life Heat Exchanger（Hamilton Standard、1976年） | シャトルの凝縮熱交換器と互換のアルミ製熱交換器を設計・試験し、下流面の凝縮水を吸い取るslurperとコア空気流路に親水性コーティングを施した（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19770003526） |
| AR-22 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | 湿度分離器出口の逆止弁（ARS-340）とslurperの配管（ARS-344）の評価ワークシートを示す（C.13-27〜28）。（出典: https://ntrs.nasa.gov/citations/19900001639） |
| AR-23 | NSTS-23370 | STS-27 National Space Transportation System Mission Report（1989年） | 湿度分離器Bが廃水タンクへ水を送れずミッドデッキ床上下に約2ガロンの水が溜まって分離器Aへ切り替えたことと、キャビン温度コントローラ2が応答しなかったことを記録する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-27%20National%20Space%20Transportation%20System%20Mission%20Report.pdf） |
| AR-24 | SAE 921160 | Zero Gravity Phase Separator Technologies – Past, Present and Future（Dean、1992年） | 温湿度制御熱交換器から凝縮水を除く気液分離器の変遷をたどり、シャトル・オービタはモータ駆動の回転ピトー管式分離器と熱交換器のslurperの組合せを使ったと述べる（抄録で確認）。（出典: https://saemobilus.sae.org/content/921160/） |
| AR-26 | NASA-CR-195739 | STS-57 Space Shuttle Mission Report（1993年） | キャビン温度制御弁がどのアクチュエータにもピン止めされず全HOT側へ動いてキャビンが85.6°Fになり、主アクチュエータにつなぎ直した際に水の塊が湿度分離器を通って床下へ出たと記録する。（出典: https://ntrs.nasa.gov/citations/19940023717） |
| AR-28 | NSTS-37443 | STS-107 Space Shuttle Mission Report（2003年） | キャビン空気温度は平均76°F（打上げ時72°F）、湿度は平均約37.5%で、二次側キャビン温度コントローラへの切替点検を行ったと記録する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-107%20Space%20Shuttle%20Mission%20Report.pdf） |
| AR-29 | NASA/TM-2005-214007 | Designing For Human Presence in Space: An Introduction to ECLSS – Appendix I, Update（Wieland、2005年） | 表1（p8）のオービタ欄で、水冷却の集中型キャビン液/空気熱交換器の空気バイパス比で温度を制御し、凝縮水をslurperバーと遠心分離器で除くと記す。（出典: https://ntrs.nasa.gov/citations/20060005209） |
| AR-35 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | 湿度分離器周辺での凝縮水の持ち越し（IFA STS-125-V-09）を記録し、FESのコアフラッシュによる分離器へのスラッギングを主因とみて、両分離器の同時運転で解消したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf） |

### 3.6 アビオニクスベイ空冷（AVB）（13件）

機能説明書：SSD-FD-ARS-AVB-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| AR-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.2.7節 Avionics Bay Fans：Av Bay 1・2・3Aに各2台のファン（通常1台、ベイ1・2は111 W・875 lb/hr）があり、ベイ熱交換器でARS水ループへ排熱すること、Bay 3Aのファンを1,400 lb/hrのキャビンファンへ換える計画を記す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf） |
| AR-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Avionics Bay Cooling（PDF p376）：3ベイは同一の空冷系で、各ベイ2台のファン（通常1台）が空冷機器と300ミクロンフィルタを通して吸い、水冷却ループで冷やすベイ熱交換器を経てベイへ戻し、ファン出口130°F超でAV BAY/CABIN AIR警報灯が点灯すると示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） |
| AR-03 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | 各アビオニクスベイの2台のファンが空冷機器を通した空気を水冷却ループで冷やす熱交換器へ送り、ベイへ戻すと記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html） |
| AR-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-103 Loss of Avionics Bay Fan（PDF p1931）：ファンΔPが2.5 in H2O未満または4.3 in H2O超で喪失とし（改良ファンは4.5/7.8 in H2O）、A17-105（p1934）でベイ空気出口温度の上限（上昇・再突入130（125）°F、軌道上はキャビン圧と稼働GPC数で変わる）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1931） |
| AR-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.1b AV BAY TEMP・6.1c AV BAY FAN ΔP（PDF p261〜262）：アビオニクスベイの温度上昇とベイファンΔP異常の処置を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf） |
| AR-08 | JSC-16720 | STS-1 ECLSS Consumables and Thermal Analysis | アビオニクスベイ1〜3の空気入口・出口とコールドプレートの温度の解析値を仕様上限（空気出口130°F）と比べる。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf） |
| AR-14 | NTRS 19750056784 | The shuttle orbiter cabin atmospheric revitalization systems | 1973年以降の設計変更として、アビオニクスベイのキャビンからの隔離の廃止を挙げる（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19750056784） |
| AR-15 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report | アビオニクスベイ1〜3の空気出口温度（最高104・105・87°F）とコールドプレート温度（最高89・90・79°F）を記録する。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf） |
| AR-17 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | Av Bay 1・2のファン（111 W）がベイ内に875 lb/hrの空気を流すと記す。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| AR-18 | NASA-CR-134164（SP02T73） | Space Shuttle Atmospheric Revitalization Subsystem/Active Thermal Control Subsystem Computer Program（Users Manual）（Hamilton Standard、1973年） | アビオニクスベイを3並列でモデル化し（2.2節）、ベイのコールドプレートを表す発熱ノードを水/空気熱交換器の上流に加えた（2.4節）。（出典: https://ntrs.nasa.gov/citations/19740006419） |
| AR-22 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | アビオニクスベイの戻り空気ダクト（ARS-2562X、C.13-34）の評価ワークシートを示す。（出典: https://ntrs.nasa.gov/citations/19900001639） |
| AR-31 | USA006019 Rev. A（C&W 21002） | Caution and Warning（2008年） | 表7-2 C&W FDA表（PDF p96）で、アビオニクスベイファンΔPの警報限界2.5〜4.3 in H2O（改良ファンは4.5〜7.8 in H2O）とベイ温度の上限130°Fを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf） |
| AR-32 | NTRS 20090043801（JSC-CN-19306） | Noise Control in Space Shuttle Orbiter（Goodman、NOISE-CON 2010） | 3つのアビオニクスベイのクローズアウトに遮音材を追加し、1992年にAv Bay 3Aの大きなスロットなどへの蓋を承認したと記す。（出典: https://ntrs.nasa.gov/citations/20090043801） |

### 3.7 IMU空冷（IMU）（11件）

機能説明書：SSD-FD-ARS-IMU-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| AR-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.2.8節 Inertial Measurement Unit Fans：3台のファン（通常1台、50 W、公称144 lb/hr）がキャビン空気をIMUに通し、IMU熱交換器で水ループへ排熱してキャビンへ戻すと解説する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf） |
| AR-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Inertial Measurement Unit (IMU) Cooling（PDF p376）：Av Bay 1にある3台のファンの1台が300ミクロンフィルタ経由でキャビン空気を3台のIMUに通し、フライトデッキのIMU熱交換器（水冷却ループで冷却）を経てキャビンへ戻すと示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） |
| AR-03 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | 3台のファンの1台がキャビン空気を300ミクロンフィルタ経由で3台のIMUに流し、熱交換器で冷やしてキャビンへ戻すと記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html） |
| AR-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-104 IMU Fan（PDF p1933）：ファンΔPが3.70（3.94）in H2O未満または4.95（4.71）in H2O超（最低必要流量144 lb/hr）、または回転数が10,000〜12,720 rpmの範囲外でファン喪失と規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1933） |
| AR-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.1d CABIN IMU（PDF p264）：IMUファンΔP（3.7〜4.95 in H2O、10.2 psi運用時は3.0〜3.8 in H2O）と回転数低下表示に基づくファン切替の手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf） |
| AR-08 | JSC-16720 | STS-1 ECLSS Consumables and Thermal Analysis | IMU冷却空気の入口・出口温度の解析値を仕様上限（入口95°F、出口130°F）と比べる。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf） |
| AR-17 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | IMUファン（50 W）が公称144 lb/hrの空気を流すと記す。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| AR-22 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | IMU熱交換器（ARS-221・ARS-2211X、C.13-14・C.13-30）の評価ワークシートを示す。（出典: https://ntrs.nasa.gov/citations/19900001639） |
| AR-30 | USA004488 Rev. B（IMU 21002） | Inertial Measurement Unit Workbook（2006年） | 2.10節 Thermal Controls：IMUの熱制御は内部ヒータと強制空冷から成り、3台のファン（各々別の交流電源、1台で十分）がキャビン空気を各IMUの筐体に通して熱交換器で冷やし、ファンの状態をDISP 66・78に表示すると解説する。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/IMU%20Workbook.pdf） |
| AR-32 | NTRS 20090043801（JSC-CN-19306） | Noise Control in Space Shuttle Orbiter（Goodman、NOISE-CON 2010） | 当初最大の騒音源だったIMU冷却系にGFEの消音器（入口3・出口1）を追加し、2,000 Hz付近の騒音を下げたと記す。（出典: https://ntrs.nasa.gov/citations/20090043801） |
| AR-35 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | IMUファンΔPが飛行規則限界を超えて上昇した事象（IFA STS-125-V-13）で、フィルタ清掃とファン切替を行い、ファンC単独の運転でΔPが許容値に戻ったと記録する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf） |

### 3.8 水冷却ループ（WCL）（14件）

機能説明書：SSD-FD-ARS-WCL-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| AR-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.3節 ARS Water：ループ1（ポンプ2台、予備）とループ2（1台、常用）、Av Bay 1〜3の各系統、フレオン/水インターチェンジャ（地上で950 lb/hrに設定、AUTOでポンプ出口63°F）、LCG熱交換器、チラーを解説する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf） |
| AR-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Water Coolant Loop System（PDF p377〜380）：2系統のループ（ループ1はポンプ2台、ループ2は1台で常用、三相117 V AC）がベイ熱交換器・コールドプレート、インターチェンジャ、LCG熱交換器、飲料水チラー、キャビン熱交換器、IMU熱交換器を流れ、バイパス弁でポンプ出口63.0±2.5°Fを保つと示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/377） |
| AR-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A18-101 ARS Water Loop（PDF p2059）：アキュムレータ量0%、インターチェンジャ流量600 lb/hr未満、ポンプ出口85°F以上、ループ間漏れなどでループ喪失とし、A18-151（p2061）で上昇・再突入時のインターチェンジャ流量950±50 lb/hr（MAN）とループ2の常用を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2059） |
| AR-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.4l〜6.4p（PDF p307〜318）：水ループのポンプ圧力、アキュムレータ量、インターチェンジャ流量、インターチェンジャ出口・キャビン熱交換器入口・ポンプ出口温度の異常時の処置を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf） |
| AR-06 | NASA CR-1981 | Space Shuttle EC/LSS（Hamilton Standard、1972年） | キャビン冷却ループに水を使って乗員の安全性を高め、同ループの弁をすべて廃して地上整備を簡素化したと述べる（p6）。（出典: https://ntrs.nasa.gov/api/citations/19720017476/downloads/19720017476.pdf） |
| AR-08 | JSC-16720 | STS-1 ECLSS Consumables and Thermal Analysis | 1ループ運転でインターチェンジャ流量を950 lb/hr/ループとする前提で、ARS水ループの熱プロファイルを示す。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf） |
| AR-09 | JSC-16730 | ECLSS Analysis of STS-1: 9-psia EVA Configuration | 同じ評価で、水ループのバイパス弁をゼロ流量に設定することの効果の再検討を提言する（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19800020542） |
| AR-13 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS | 2系統の水冷却ループ（ループ1はポンプ2台、ループ2は1台）がポンプ下流で3並列（Av Bay 1、Av Bay 2と窓、MDMコールドプレートとAv Bay 3A・3B）に分かれ、インターチェンジャ、LCG熱交換器、飲料水チラー、キャビン熱交換器、IMU熱交換器を流れる構成とバイパス制御・アキュムレータを解説する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| AR-14 | NTRS 19750056784 | The shuttle orbiter cabin atmospheric revitalization systems | 1973年以降の設計変更として、水冷却ループのサブリメータ撤去と負荷増に応じた流量の増加を挙げる（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19750056784） |
| AR-17 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | 稼働ループの流量970±15 lb/hr、AUTOでのポンプ出口63°F、アキュムレータの水量（最大1.81 lb、最小0.19 lb）を記す。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| AR-18 | NASA-CR-134164（SP02T73） | Space Shuttle Atmospheric Revitalization Subsystem/Active Thermal Control Subsystem Computer Program（Users Manual）（Hamilton Standard、1973年） | ARS/ATCSの定常熱力学性能を計算するプログラムの手引きで、ARS水冷却ループのモデル（2.2節）にサブリメータ、ARS水と飲料水の温度を予測するチラー、窓の冷却回路を加えた。（出典: https://ntrs.nasa.gov/citations/19740006419） |
| AR-22 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | 水ループのアキュムレータ（ARS-108、C.13-2）について、故障してもポンプ揚程でループを運転できるとのNASA担当者の見解にIOAが同意し課題を取り下げたと記す。（出典: https://ntrs.nasa.gov/citations/19900001639） |
| AR-28 | NSTS-37443 | STS-107 Space Shuttle Mission Report（2003年） | SPACEHABを搭載したため稼働中の水冷却ループ2を手動バイパスとし、921〜1,024 lb/hrの流量でインターチェンジャでの熱移動を最大にしたと記録する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-107%20Space%20Shuttle%20Mission%20Report.pdf） |
| AR-31 | USA006019 Rev. A（C&W 21002） | Caution and Warning（2008年） | 図5-2（PDF p82）で水ループ2ポンプ出口圧の警報限界がスイッチ位置で変わる例（ON時50〜75 psia）を示し、表7-3でループ1ポンプ出口圧をC&Wチャネル105に割り当てる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf） |

## 4. 文書×機能マトリクス（全件）

| ID | 文書番号 | 表題 | 全般 | CAC | CO2 | RCRS | THC | AVB | IMU | WCL | 出典 | URL |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| AR-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | ● | ● | ● | ● | ● | ● | ● | ● | REF-002（A-01） | https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf |
| AR-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | ● | ● | ● | ● | ● | ● | ● | ● | REF-002（A-04） | https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual |
| AR-03 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | ● | ● | ● |  | ● | ● | ● |  | REF-002（A-07） | https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html |
| AR-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | ● | ● | ● | ● | ● | ● | ● | ● | REF-002（B-01） | https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf |
| AR-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） |  | ● | ● | ● | ● | ● | ● | ● | REF-002（B-06） | https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf |
| AR-06 | NASA CR-1981 | Space Shuttle EC/LSS（Hamilton Standard、1972年） |  |  | ● |  | ● |  |  | ● | REF-002（D-01） | https://ntrs.nasa.gov/api/citations/19720017476/downloads/19720017476.pdf |
| AR-07 | SAE 921348 | Shuttle Orbiter ECLSS – Flight experience（1992年） | ● |  |  |  |  |  |  |  | REF-002（D-04） | https://ntrs.nasa.gov/citations/19930057510 |
| AR-08 | JSC-16720 | STS-1 ECLSS Consumables and Thermal Analysis |  |  | ● |  | ● | ● | ● | ● | REF-002（E-01） | https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf |
| AR-09 | JSC-16730 | ECLSS Analysis of STS-1: 9-psia EVA Configuration |  |  |  |  | ● |  |  | ● | REF-002（E-02） | https://ntrs.nasa.gov/citations/19800020542 |
| AR-10 | SAE 901290 | Expanded capabilities of the Extended Duration Orbiter |  |  | ● | ● |  |  |  |  | REF-002（F-01） | https://ntrs.nasa.gov/citations/19910065909 |
| AR-11 | SAE 901292 | The EDO Regenerable CO2 Removal System |  |  |  | ● |  |  |  |  | REF-002（F-02） | https://saemobilus.sae.org/content/901292 |
| AR-12 | SAE 932294 | Development and Flight Status Report on the EDO RCRS |  |  |  | ● |  |  |  |  | REF-002（F-03） | https://saemobilus.sae.org/content/932294 |
| AR-13 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS |  |  |  |  |  |  |  | ● | REF-002（N-01） | https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html |
| AR-14 | NTRS 19750056784 | The shuttle orbiter cabin atmospheric revitalization systems | ● |  |  |  | ● | ● |  | ● | REF-002（N-03） | https://ntrs.nasa.gov/citations/19750056784 |
| AR-15 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report |  |  | ● |  | ● | ● |  |  | REF-002（N-15） | https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf |
| AR-16 | NTRS抄録（1974年） | Orbiter ECLSS support of Shuttle payloads（Jaax他） | ● |  |  |  |  |  |  |  | REF-002（N-16） | https://www.science.gov/topicpages/s/shuttle+orbiter+payload |
| AR-17 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | ● | ● | ● |  | ● | ● | ● | ● | REF-002（N-19） | https://www.spaceshuttleguide.com/system/environmental%20Controls.htm |
| AR-18 | NASA-CR-134164（SP02T73） | Space Shuttle Atmospheric Revitalization Subsystem/Active Thermal Control Subsystem Computer Program（Users Manual）（Hamilton Standard、1973年） |  | ● |  |  |  | ● |  | ● | 新規 | https://ntrs.nasa.gov/citations/19740006419 |
| AR-19 | NASA-CR-151030 | Lightweight Long Life Heat Exchanger（Hamilton Standard、1976年） |  |  |  |  | ● |  |  |  | 新規 | https://ntrs.nasa.gov/citations/19770003526 |
| AR-20 | NASA-CR-160224 | Flight prototype CO2 and humidity control system（Hamilton Standard、1979年） |  |  |  | ● |  |  |  |  | 新規 | https://ntrs.nasa.gov/citations/19790017589 |
| AR-21 | SAE 851374 | Performance and endurance testing of a prototype carbon dioxide and humidity control system for Space Shuttle extended mission capability（Lin・Cusick、1985年） |  |  |  | ● |  |  |  |  | 新規 | https://ntrs.nasa.gov/citations/19860038819 |
| AR-22 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | ● | ● | ● |  | ● | ● | ● | ● | 新規 | https://ntrs.nasa.gov/citations/19900001639 |
| AR-23 | NSTS-23370 | STS-27 National Space Transportation System Mission Report（1989年） |  |  |  |  | ● |  |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-27%20National%20Space%20Transportation%20System%20Mission%20Report.pdf |
| AR-24 | SAE 921160 | Zero Gravity Phase Separator Technologies – Past, Present and Future（Dean、1992年） |  |  |  |  | ● |  |  |  | 新規 | https://saemobilus.sae.org/content/921160/ |
| AR-25 | NASA-CR-193057 | STS-50 Space Shuttle Mission Report（1992年） |  |  |  | ● |  |  |  |  | 新規 | https://ntrs.nasa.gov/citations/19930016803 |
| AR-26 | NASA-CR-195739 | STS-57 Space Shuttle Mission Report（1993年） |  |  |  |  | ● |  |  |  | 新規 | https://ntrs.nasa.gov/citations/19940023717 |
| AR-27 | SAE 2003-01-2491 | The Lithium Hydroxide Management Plan for Removing Carbon Dioxide from the Space Shuttle while Docked to the International Space Station（Williams他、2003年） |  |  | ● |  |  |  |  |  | 新規 | https://saemobilus.sae.org/papers/lithium-hydroxide-management-plan-removing-carbon-dioxide-space-shuttle-docked-international-space-station-2003-01-2491 |
| AR-28 | NSTS-37443 | STS-107 Space Shuttle Mission Report（2003年） |  |  | ● |  | ● |  |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-107%20Space%20Shuttle%20Mission%20Report.pdf |
| AR-29 | NASA/TM-2005-214007 | Designing For Human Presence in Space: An Introduction to ECLSS – Appendix I, Update（Wieland、2005年） |  | ● | ● | ● | ● |  |  |  | 新規 | https://ntrs.nasa.gov/citations/20060005209 |
| AR-30 | USA004488 Rev. B（IMU 21002） | Inertial Measurement Unit Workbook（2006年） |  |  |  |  |  |  | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/IMU%20Workbook.pdf |
| AR-31 | USA006019 Rev. A（C&W 21002） | Caution and Warning（2008年） |  | ● |  |  |  | ● |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf |
| AR-32 | NTRS 20090043801（JSC-CN-19306） | Noise Control in Space Shuttle Orbiter（Goodman、NOISE-CON 2010） |  | ● |  | ● |  | ● | ● |  | 新規 | https://ntrs.nasa.gov/citations/20090043801 |
| AR-33 | NTRS 20100021976（JSC-CN-20224） | Overview of Carbon Dioxide Control Issues During International Space Station/Space Shuttle Joint Docked Operations（Matty、2010年） |  |  | ● |  |  |  |  |  | 新規 | https://ntrs.nasa.gov/citations/20100021976 |
| AR-34 | NTRS 20100025551（JSC-CN-20953） | Advanced Catalysts for the Ambient Temperature Oxidation of Carbon Monoxide and Formaldehyde（Nalette他、2010年） |  |  | ● |  |  |  |  |  | 新規 | https://ntrs.nasa.gov/citations/20100025551 |
| AR-35 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） |  |  |  |  | ● |  | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf |
| AR-36 | NTRS 20110003653（JSC-CN-22727） | Manned Mission Planning Considerations when Using a Non-Regenerable CO2 Removal System（DeSimpelaere、2011年） |  |  | ● | ● |  |  |  |  | 新規 | https://ntrs.nasa.gov/citations/20110003653 |

## 5. 注記（出典間の相違・構成変更）

> **注記** AR-02の関連内容に示す節と頁は、USA007587 Rev. A CPN-1（全1161頁）による。頁はPDFの通し頁で、出典URL（yumpu公開版）の頁番号と一致する。節の構成と機能との対応の詳細はSSD-OPS-REF-002に示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual）

> **注記** AR-04の関連内容に示す規則番号と頁は、NSTS-12820 Vol. Aの本文（PDF p449〜2214、PCN-1反映済み）による。章の構成と、規則と機能の対応の詳細はSSD-OPS-REF-001に示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf）

> **注記** AR-07・AR-09〜AR-12・AR-14・AR-16・AR-19〜AR-21・AR-24・AR-27・AR-36は、書誌ページ（NTRS・SAE Mobilus）の抄録で内容を確認したもので、本文は未確認である。関連内容に「抄録で確認」と記す。（出典: https://ntrs.nasa.gov/citations/19930057510）

> **注記** AR-16のURL（Science.govの検索結果ページ）は今回の調査では接続できなかったため、NTRSに収録された同じ論文（19740056375）の抄録で内容を確認した。URLはSSD-ECLSS-REF-002の値のままとした。（出典: https://ntrs.nasa.gov/citations/19740056375）

> **注記** AR-17のURL（www.spaceshuttleguide.com）は今回の調査では証明書の不一致で開けなかったため、wwwを付けない同じページで内容を確認した。URLはSSD-ECLSS-REF-002の値のままとした。（出典: https://spaceshuttleguide.com/system/environmental%20Controls.htm）

> **注記** AR-25（NASA-CR-193057、STS-50）はSSD-EPS-REF-001のEP-16と同じ文書である。本書ではNTRSの書誌ページをURLとした。（出典: https://ntrs.nasa.gov/citations/19930016803）

> **注記** 検証メモ：RCRSのベッド切替周期を、AR-11（SAE 901292の抄録）は30分とし、AR-02（SCOM、PDF p371）は13分ごと（完全な1サイクルは26分）とする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371）

> **注記** 検証メモ：キャビンファン出口の逆止弁が開く差圧を、AR-01（訓練マニュアル）は2 psiとし、AR-02（SCOM、PDF p370）は2 in H2O（0.0723 psi）とする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370）

> **注記** 検証メモ：AR-35（STS-125報告）はIMUファンΔPの飛行規則の限界をpsi単位で記すが、運用飛行規則A17-104の限界の単位はin H2Oである。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1933）

## 6. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-26 | 初版作成（36件） |
