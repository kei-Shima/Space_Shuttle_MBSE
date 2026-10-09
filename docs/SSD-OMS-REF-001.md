# OMS 機能別関連文書一覧

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-OMS-REF-001 |
| 表題 | OMS 機能別関連文書一覧 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-OMS-001 |
| 関連図 | SSD-SYS-ARC-001 図53 OMS 関連文書マトリクス |

## 1. 目的

OMSの各機能に関係する公開文書を機能別に整理し、各機能説明書と図53 OMS 関連文書マトリクス（文書×機能マトリクス）の根拠とする。

## 2. 調査方法

乗員運用マニュアル（SCOM、OI-33）・運用飛行規則・故障処置手順・IOA の FMEA/CIL 評価などの公開文書を調べ、OMSの機能に関係する記述の頁を確かめた 14件を載せた（出典欄はすべて「新規」）。各文書の番号・表題・確認に使った URL は表の各行に、記述の頁は各欄の出典に示す。

## 3. 機能別関連文書

### 3.1 OMS 全般（8件）

機能説明書：SSD-FD-OMS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| OM-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.18節（PDF p641〜672）：OMSの用途、2つのポッドの構成、エンジン、ヘリウム系、推進薬貯蔵・分配、熱制御、TVC、故障検知、運用、警報の要約、経験則を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/641） |
| OM-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | 第6章 PROPULSION（PDF p1127〜1286）：OMSの喪失定義、故障管理、エンジン管理、漏れ・熱・消耗品の管理とGo/No-Go基準（A6-1001）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1127） |
| OM-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 11章 OMS（PDF p777〜797）：OMSの系統図、L(R) OMS TK P、弁の不一致、推進薬の熱、混合クロスフィードの手順を収める。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=777） |
| OM-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | 3.4.3.3節 Orbital Maneuvering Subsystem（PDF p140〜145）：温度、加速度、高度、噴射時間、搭載量、インタコネクト、始動回数、燃焼室圧、GN2、取得装置などの運用上の制約を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=140） |
| OM-05 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | 付録C C.17節（PDF p727〜）：OMSのFMEA/CILの評価ワークシート（NASAとIOAの臨界度・冗長性の比較と最終の決着）を収める。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=727） |
| OM-06 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | C.26節（PDF p95）：OMSの解析はハードウェア284件・EPD&C 667件の故障モードのワークシートから成り、NASAの基準との比較で残った課題を示す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=95） |
| OM-09 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.1.2節（PDF p14）：OMSの性能は満足で、推進薬・ヘリウム・GN2の搭載と、RCSタンクの過圧を防ぐため発射台でクロスフィード弁を開いたことを記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=14） |
| OM-10 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | OMS節（PDF p41〜42）：OMSの構成（ポッドとエンジンの製造番号）、噴射とインタコネクト、推進薬の残量を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=41） |

### 3.2 OMSエンジン・GN2系（ENG）（9件）

機能説明書：SSD-FD-OMS-ENG-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| OM-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.18節 Engines（PDF p643〜649）：二元推進薬弁、噴射器、燃焼室、窒素系、パージを述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/643） |
| OM-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A6-3（OMSエンジンの喪失定義）、A6-4・5（N2タンク・アキュムレータ）、A6-104〜108（計装、最低圧力、枯渇噴射、エンジン故障、ボール弁故障の管理）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1131） |
| OM-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 11.1a（PDF p780〜781）：N2タンク圧・調圧圧の低下からN2の漏れや圧力弁の閉固着を切り分け、エンジンを軌道上の噴射に使わない判断を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=780） |
| OM-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | PDF p143：最低燃焼室圧（80%、ブローダウン時72%）、燃料噴射器温度の上限260°F、GN2アキュムレータの最低圧を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=143） |
| OM-05 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | OMS-248・322・330（PDF p752・765・766）：エンジン入口フィルタ、GN2アキュムレータ、エンジン制御弁の評価を示す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=752） |
| OM-08 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 表7-3（PDF p97）：OMS ENG-L・Rをハードウェアのチャネル27・57とする。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97） |
| OM-09 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 表2-III（PDF p16）：各噴射の比推力、混合比、流量、燃焼室圧、冷却ジャケット出口の燃料温度を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=16） |
| OM-12 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | PDF p45：左ポッド04・エンジンS/N 108、右ポッド01・エンジンS/N 109の構成を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=45） |
| OM-13 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | PDF p42：右エンジンS/N 109（改修後12回目の飛行）と左エンジンS/N 108の構成を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=42） |

### 3.3 ヘリウム加圧（HE）（5件）

機能説明書：SSD-FD-OMS-HE-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| OM-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.18節 Helium System（PDF p649〜651）：ヘリウムタンク、圧力弁、調圧器、蒸気隔離弁、逆止弁、逃し弁を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/651） |
| OM-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A6-1（ヘリウムタンクの喪失定義）、A6-51のヘリウムタンク・ヘリウムレグの漏れ・故障の処置、A6-201・202（漏れているヘリウム系の噴射）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1150） |
| OM-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 11.1a（PDF p782〜784）：推進薬タンク圧の低下からヘリウム配管の閉塞や圧力弁・調圧器の閉故障を切り分け、He PRESS/VAP ISOL Bで再加圧する手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=782） |
| OM-05 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | OMS-111・119・121・127（PDF p729〜735）：ヘリウム隔離弁・調圧器の流れの制限と、酸化剤の蒸気隔離弁の評価を示す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=731） |
| OM-09 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | PDF p17：加圧系は正常で、最初の噴射のアレージ圧が他より3〜4 psi低かったことを記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=17） |

### 3.4 推進薬貯蔵・分配（PSD）（8件）

機能説明書：SSD-FD-OMS-PSD-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| OM-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.18節 Propellant Storage and Distribution（PDF p652〜655）：タンク、取得装置、容量計測、タンク隔離弁を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/653） |
| OM-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A6-2（推進薬タンクの喪失定義）、A6-53（ヘリウム吸込み）、A6-102（沈降噴射）、A6-301（使用可能推進薬）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1186） |
| OM-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 11.2a（PDF p786）：タンク隔離弁・クロスフィード弁のトークバックのバーバーポールから、AMCの母線の故障や弁の故障を切り分ける。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=786） |
| OM-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | PDF p141・p144：搭載量の上下限、TAEMでの残量、取得装置とヘリウム吸込みの制約を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=144） |
| OM-08 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 表7-3（PDF p97）：OMSの酸化剤・燃料のタンク圧をチャネル7・17（左）と37・47（右）とする。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97） |
| OM-09 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | PDF p17：取得系は良好でガスの吸込みはなく、容量計のプローブの改修と表示の停滞を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=17） |
| OM-10 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | PDF p41：電源の再投入後にトータライザの出力が無作為な値となる既知の特性を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=41） |
| OM-12 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | OMS節（PDF p45）：搭載量と、後室計・噴射時間の積分・SODBの流量による残量の比較を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=45） |

### 3.5 クロスフィード・RCS連結（XFD）（8件）

機能説明書：SSD-FD-OMS-XFD-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| OM-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.18節 Crossfeeds and Interconnects（PDF p655〜659）：OMSクロスフィードとOMS－RCSインタコネクトの構成、手順、計量を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/655） |
| OM-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A6-6（クロスフィード配管の喪失定義）、A6-54（故障タンクからの供給の制約）、A6-61B（クロスフィード配管の再加圧）、A6-62（弁の連続給電）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1199） |
| OM-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | OMS SSR-1（PDF p794〜797）：推進薬の故障時にメモリの読み書きで弁を設定し、使えるタンクを反対側のエンジンにつなぐ混合クロスフィードの手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=794） |
| OM-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | PDF p141〜142・p145：OMSタンク同士を接続しないこと、インタコネクトを許す条件、クロスフィード配管を使える圧力（蒸気圧と計測誤差）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=145） |
| OM-07 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 9-3〜9-4（PDF p235〜236）：クロスフィード噴射とストレートフィードの弁構成と、噴射後にインタコネクトで供給する構成を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=236） |
| OM-09 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | PDF p17：OMS－RCSインタコネクトを左右のポッドから各1回使ったことと、クロスフィード弁の閉位置表示の故障を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=17） |
| OM-11 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | OMS節（PDF p27）：OMS推進薬23,313 lbmのうち2,188.8 lbmをインタコネクトでRCSへ供給したことを記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=27） |
| OM-13 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | OMS節（PDF p42）：OMSからRCSへのインタコネクトの使用量（左0.468%・60.61 lb、右0.948%・122.77 lb）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=42） |

### 3.6 推力方向制御（ジンバル）（TVC）（7件）

機能説明書：SSD-FD-OMS-TVC-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| OM-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.18節 Thrust Vector Control・Fault Detection（PDF p660〜663）：ジンバルリング、アクチュエータ、制御器、TVC SOP、ジンバルの故障検知を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/662） |
| OM-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A6-101（上昇中のエンジンベルの動き）を規定し、TVCの喪失はGNCの章のA8-53を参照する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1203） |
| OM-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | EPS SSR-10（PDF p466〜467）：MNA DA1の喪失で左エンジンの一次・右エンジンの二次のTVCを失ったときにジンバルを切り替える処置を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=467） |
| OM-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | 3.4.3.1節（PDF p106・p112〜114）：SSME 1とOMSエンジンのノズルが接触するジンバル角の組合せと間隔を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=112） |
| OM-05 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | OMS-363・367（PDF p768〜769）：ジンバルリング軸受とACMEねじの故障でエンジンが位置を外れた場合のRCSの消費を評価する。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=769） |
| OM-07 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 9-3（PDF p235）：噴射後に必要に応じてOMS TVCのジンバル点検を行い、故障表示があれば良好なジンバルを選ぶ手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=235） |
| OM-08 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 表7-3（PDF p97）：OMS TVCをチャネル67とする。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97） |

### 3.7 推進薬熱管理（THM）（6件）

機能説明書：SSD-FD-OMS-THM-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| OM-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.18節 Thermal Control（PDF p659〜660）：ポッドとクロスフィード配管のヒータ区域と温度の監視を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/659） |
| OM-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A6-251〜256（ヒータの一般規則、ポッドヒータ、ポッドとクロスフィード配管の温度管理、ヒータ性能の監視）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1234） |
| OM-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 11.3（PDF p790〜793）：SPEC 89とBFS THERMALのOMS推進薬・ポッドの温度の限界外れに対し、ヒータ・サーモスタット回路を切り替える手順と限界表を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=790） |
| OM-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | PDF p145：ポッドヒータのA・B系統のスイッチを同時にAUTOにしないこと（ヒータパッチの局部過熱と接着の破損）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=145） |
| OM-07 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 6-5 HEATER RECONFIG（PDF p179）：ポッドとクロスフィード配管のヒータをA・B系統の間で切り替える手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=179） |
| OM-10 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | PDF p42：左上部Yウェブの構造温度の不規則な指示（IFA STS-114-V-03）と冗長な計測による監視を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=42） |

### 3.8 運用管理（規則・処置）（OPS）（7件）

機能説明書：SSD-FD-OMS-OPS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| OM-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.18節 Operations・OMS Summary Data・OMS Rules of Thumb（PDF p663〜671）：噴射シーケンス、上昇・軌道離脱の運用、要約と経験則を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/671） |
| OM-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A6-51（故障管理）、A6-303（OMSレッドライン）、A6-351〜358（推進薬管理の表、予算の基本則、重心管理、軌道離脱計画）、A6-1001を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1274） |
| OM-07 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 9章 ON-ORBIT OMS BURN（PDF p234〜236）：軌道上のOMS噴射の準備、目標の入力、噴射、噴射後の再構成の手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=234） |
| OM-11 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | PDF p27：8回のOMS噴射の時刻、ΔV、噴射時間、軌道と、2基・ストレートフィードの軌道離脱噴射を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=27） |
| OM-12 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | PDF p45：OMSアシストから軌道離脱までの8回の噴射の構成、時刻、噴射時間、ΔVを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=45） |
| OM-13 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | PDF p42：最終飛行の8回のOMS噴射（OMSアシストから軌道離脱まで）の構成とΔVを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=42） |
| OM-14 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | OMS節（PDF p43）：OMSは正常に機能して飛行中の異常はなく、OMS-2以後の噴射の構成とΔVを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=43） |

## 4. 文書×機能マトリクス（全件）

| ID | 文書番号 | 表題 | 全般 | ENG | HE | PSD | XFD | TVC | THM | OPS | 出典 | URL |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| OM-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | ● | ● | ● | ● | ● | ● | ● | ● | 新規 | https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual |
| OM-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | ● | ● | ● | ● | ● | ● | ● | ● | 新規 | https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf |
| OM-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | ● | ● | ● | ● | ● | ● | ● |  | 新規 | https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf |
| OM-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | ● | ● |  | ● | ● | ● | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf |
| OM-05 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | ● | ● | ● |  |  | ● |  |  | 新規 | https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf |
| OM-06 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | ● |  |  |  |  |  |  |  | 新規 | https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf |
| OM-07 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） |  |  |  |  | ● | ● | ● | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf |
| OM-08 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） |  | ● |  | ● |  | ● |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf |
| OM-09 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | ● | ● | ● | ● | ● |  |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf |
| OM-10 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | ● |  |  | ● |  |  | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf |
| OM-11 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） |  |  |  |  | ● |  |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf |
| OM-12 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） |  | ● |  | ● |  |  |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf |
| OM-13 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） |  | ● |  |  | ● |  |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf |
| OM-14 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） |  |  |  |  |  |  |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
