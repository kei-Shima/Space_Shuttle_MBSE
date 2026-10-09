# 再生式CO2除去装置 機能別関連文書一覧

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-RCRS-REF-001 |
| 表題 | 再生式CO2除去装置 機能別関連文書一覧 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-RCRS-001 |
| 関連図 | SSD-SYS-ARC-001 図29 再生式CO2除去装置 関連文書マトリクス |

## 1. 目的

再生式CO2除去装置（RCRS）の各下位機能に関係する公開文書を機能別に整理し、各機能説明書と図29 再生式CO2除去装置 関連文書マトリクス（文書×機能マトリクス）の根拠とする。

## 2. 調査方法

SSD-ARS-REF-001の3.4節 再生式CO2除去装置（RCRS）の13件を引き継ぎ（出典欄「ARS-REF（AR-01）」の形）、今回の調査で3件を追加した（出典欄「新規」）。引き継いだ行も含め、各行の関連内容は下位機能ごとに書き分けた。訓練マニュアル（USA006020）、SCOM、運用飛行規則、故障処置手順（MAL）、IFMチェックリスト、Orbit Opsチェックリスト、ミッション報告（STS-65）は原本で本文を確認し、関連内容に節とPDFの通し頁を示す。頁を示していない行（SAE論文とNTRSの書誌ページ）は、SSD-ARS-REF-001に記した抄録の内容を下位機能に割り振った。

## 3. 機能別関連文書

### 3.1 再生式CO2除去装置 全般（10件）

機能説明書：SSD-FD-ARS-RCRS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| RC-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 付録C（PDF p213〜229）：EDO改修で搭載したRCRSの原理・構成・運用・制御・計装・故障検知を解説し、C.1節（p213）で、RCRSのハードウェアはOV-105から撤去されRCRSに対応する機体はなくなったと記す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=213） |
| RC-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Regenerable Carbon Dioxide Removal System（PDF p371）：OV-105はRCRSのハードウェア能力を持つが、ISS係留中は不要で今後の使用予定もない歴史的情報とし、RCRSで10〜16日・最大7名の飛行での重量・収納の問題を解決したと述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371） |
| RC-05 | SAE 901290 | Expanded capabilities of the Extended Duration Orbiter | EDO向けに提案した再生式CO2除去装置の構成・運用・配置を詳しく説明する（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19910065909） |
| RC-06 | SAE 901292 | The EDO Regenerable CO2 Removal System | 乗員4〜7名に対応するEDO用RCRSの開発を述べる（抄録で確認）。（出典: https://saemobilus.sae.org/content/901292） |
| RC-07 | SAE 932294 | Development and Flight Status Report on the EDO RCRS | Hamilton Standardが開発したRCRSの設計・性能と、1991〜1992年の開発・認定試験を報告する（抄録で確認）。（出典: https://saemobilus.sae.org/content/932294） |
| RC-09 | SAE 851374 | Performance and endurance testing of a prototype carbon dioxide and humidity control system for Space Shuttle extended mission capability（Lin・Cusick、1985年） | 1980年にJSCへ納入された4〜10人用の再生式CO2・湿度制御装置の飛行試作機を試験し、LiOH方式より大幅に軽く、無整備で最長60日運転できることを示した（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19860038819） |
| RC-12 | NTRS 20090043801（JSC-CN-19306） | Noise Control in Space Shuttle Orbiter（Goodman、NOISE-CON 2010） | 1990年にEDO向けRCRSへ消音器を追加したと記す。（出典: https://ntrs.nasa.gov/citations/20090043801） |
| RC-13 | NTRS 20110003653（JSC-CN-22727） | Manned Mission Planning Considerations when Using a Non-Regenerable CO2 Removal System（DeSimpelaere、2011年） | EDO改修で搭載した固体アミンの再生式吸収装置にも触れる（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/20110003653） |
| RC-14 | NSTS-08292 | STS-65 Space Shuttle Mission Report（1994年） | PDF p7：STS-65はColumbia（OV-102）の17回目の飛行であったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=7） |
| RC-15 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | 2-2 IFM Tool Locker（PDF p62）：工具ロッカーのトレイ1にRCRS用のクローフット（RCRS Crows Foot）を収めると示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=62） |

### 3.2 吸気・送風・流量設定（FAN）（4件）

機能説明書：SSD-FD-ARS-RCRS-FAN-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| RC-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 付録C.2.1〜C.2.2（PDF p213・p217〜218）：キャビンファンの上流から全流量の約6%を取り出し、RCRSファンで吸着中のベッドへ送ると述べ、2位置の流量制御弁（乗員4〜5名用・6〜7名用）と入口のフィルタ・消音器を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=217） |
| RC-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p371・p373）：流量制御弁を打上げ前に乗員数「4」「5〜7」に設定して72／110 lb/hrとすると述べ、系統図に入口のフィルタ・消音器・ファン組立（40ミクロン）を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371） |
| RC-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-156（PDF p1952）：RCRSの流量が限られるため、火災後の汚染物質の除去にはRCRSは効率が悪いと説明する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1952） |
| RC-04 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.8a（PDF p332）：フィルタ差圧が0.5（10.2 psia運用では0.35）を超える場合に、IFMのEDO RCRSフィルタ清掃と流量制御弁の調整を行うとする。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=332） |

### 3.3 吸着・再生ベッド（BED）（7件）

機能説明書：SSD-FD-ARS-RCRS-BED-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| RC-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 付録C.2.1〜C.2.2（PDF p213〜217）：固体アミン（PEI）ベッド2個の吸着と熱・真空による再生の原理、既存の真空ベント管による排気、4組の真空サイクル弁とアクチュエータを示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=214） |
| RC-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p371・p373）：2個の固体アミン（PEI）ベッドの一方で吸着し他方を熱と真空で再生すると述べ、系統図に空気・真空ポペットを持つ真空サイクル弁と真空ベントダクトへの接続を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/373） |
| RC-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-156（PDF p1952）：燃焼生成物のうちHCl・HF・HCNが固体アミンと不可逆に反応して吸着部位に残り、CO2除去能力を下げると説明し、A17-106（p1937）で真空ベントの閉塞やARSダクトの漏れではCO2除去が効かないとする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1952） |
| RC-04 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.8a（PDF p330）：標準構成として、真空ベント隔離弁（パネルML31C）を開にすることを示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=330） |
| RC-06 | SAE 901292 | The EDO Regenerable CO2 Removal System | 固体アミンでCO2と水蒸気を吸着し、宇宙の真空へ脱着すると述べる（抄録で確認）。（出典: https://saemobilus.sae.org/content/901292） |
| RC-08 | NASA-CR-160224 | Flight prototype CO2 and humidity control system（Hamilton Standard、1979年） | シャトル向けに開発した再生式CO2・湿度制御装置の飛行試作で、吸着剤HS-Cの2ベッドを交互に吸着と宇宙真空への脱着に切り替え、CO2分圧と湿度を制御できることを試験で確認した（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19790017589） |
| RC-11 | NASA/TM-2005-214007 | Designing For Human Presence in Space: An Introduction to ECLSS – Appendix I, Update（Wieland、2005年） | 表1（p5）のオービタ欄で、長期ミッションではアミン系のRCRSでCO2と一部の水分を除いて宇宙へ排出できると記す。（出典: https://ntrs.nasa.gov/citations/20060005209） |

### 3.4 空気回収・均圧（USC）（2件）

機能説明書：SSD-FD-ARS-RCRS-USC-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| RC-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 付録C.2.2〜C.2.3（PDF p217〜224）：6個の均圧弁とullage-save圧縮機でベッドの空気を回収する仕組みを示し、ステート4・5で最大90%を回収して真空へ失う空気を約1.6 lb/日にすると述べる。2.2節（p23）はRCRSの運転がN2を消費するとする。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=221） |
| RC-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節の系統図（PDF p373）：6個の均圧弁（PEV 1〜6）の弁組立と圧縮機を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/373） |

### 3.5 制御器・運転シーケンス（CTL）（6件）

機能説明書：SSD-FD-ARS-RCRS-CTL-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| RC-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 付録C.2.2〜C.3・C.5（PDF p218〜228）：冗長の制御器2台（制御器1が優先）、26分周期の運転シーケンス（当初は30分周期）、MO51Fの操作とAC1・MN A／AC3・MN Cの電源、故障検知による自動停止を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=218） |
| RC-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p371）：冗長の制御器2台（1・2）をパネルMO51FのAC・DC電源とOPER/STBYのスイッチで操作し、状態灯がOPERまたはFAILを示すと述べ、吸着と再生が13分ごとに自動で切り替わる（1周期26分）とする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371） |
| RC-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-106（PDF p1937）：両制御器（A・B）が故障すると手動で運転する手段はなく、ベッド圧力・ベッド差圧・圧縮機回転数・弁位置の異常で自動停止すると説明する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1937） |
| RC-04 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.8a CO2 CNTLR 1(2)（PDF p330〜332）：S66 CO2 RL SYS MALF警報時に、MO51Fの表示灯とSPEC 66から故障モード（電源の喪失・故障停止・共通BITEなど）を判定し、制御器の電源を入れ直す手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=330） |
| RC-06 | SAE 901292 | The EDO Regenerable CO2 Removal System | ベッドを30分周期で切り替えるとする（抄録で確認）。（出典: https://saemobilus.sae.org/content/901292） |
| RC-16 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 6-2〜6-3 Lamp Test（PDF p177）：ミッドデッキの表示灯試験で、MO51FのRCRS CNTLR 1・2の灯（各2個）が点灯することを確かめる。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=177） |

### 3.6 計装・表示（MON）（4件）

機能説明書：SSD-FD-ARS-RCRS-MON-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| RC-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 付録C.4・C.6（PDF p227〜229）：表C-1のセンサの範囲と給電元、SPEC 66のRCRS表示（表C-2）、S66 CO2 RL SYSとS66 CO2 RL SYS PCO2の2つのSMメッセージを示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=227） |
| RC-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p359・p373）：ENVIRONMENT表示（DISP 66）のRCRSの欄（CO2 CNTLR、FILTER ΔP、PPCO2、TEMP、BED A・B PRESS、ΔP、VAC PRESS）と、系統図のRCRSの計測点を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/359） |
| RC-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-106B・A17-155B.4（PDF p1937・p1951）：PPCO2を把握できなくなればRCRSを喪失とし、LiOHキャニスタを定期的に装着・交換してCO2を管理すると定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1951） |
| RC-04 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.8b PPCO2（PDF p333）：S66 CO2 RL SYS PCO2警報時に、オービタとRCRSのPPCO2の差（2 mmHg超）やSpacelabのCO2センサとの比較でセンサの故障を判定すると示し、COMM SSR-10（p87）でOI MDMを失ったときに得られなくなるRCRSの計測を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=333） |

### 3.7 RCRS運用管理（OPS）（8件）

機能説明書：SSD-FD-ARS-RCRS-OPS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| RC-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 付録C.2.1（PDF p214）：真空が必要なためRCRSは軌道上でしか使えず、上昇と再突入ではLiOHでCO2を除去すると示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=214） |
| RC-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Operations（PDF p404）：RCRS搭載機では軌道投入後に乗員が起動し、10日以上の飛行では途中で活性炭キャニスタを交換し、軌道離脱準備でLiOHキャニスタを交換してRCRSを停止するとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/404） |
| RC-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-155（PDF p1950〜1951）で上昇・再突入中の停止、軌道上の起動・停止の時期、ウェーブオフ時の再起動、減圧時の停止、喪失時のLiOHへの切替を定め、A17-156（p1952）とA13-155（p1807）で火災後と有害物質の漏れの後の停止を、A2-1001（p802〜804）でGo/No-Goを定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1950） |
| RC-04 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.8a（PDF p331）：両制御器に及ぶ故障ではRCRSを停止してLiOHキャニスタ1個を装着すると示し、ECLS SSR-8（p345）で小さなキャビン漏れの隔離の間にRCRSを停止・再起動する手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=331） |
| RC-07 | SAE 932294 | Development and Flight Status Report on the EDO RCRS | STS-50・52・55でのオービタとSpacelabのCO2除去の飛行結果を報告する（抄録で確認）。（出典: https://saemobilus.sae.org/content/932294） |
| RC-10 | NASA-CR-193057 | STS-50 Space Shuttle Mission Report（1992年） | RCRSの初飛行で、軌道投入後25時間は正常に運転したが6回停止してLiOHキャニスタに切り替え、JSCで再現・検証した機上整備手順で単系運転を回復し、以後は正常に運転したと記録する。（出典: https://ntrs.nasa.gov/citations/19930016803） |
| RC-14 | NSTS-08292 | STS-65 Space Shuttle Mission Report（1994年） | PDF p12：RCRSをリストリクタ付きのLiOHキャニスタで補い、15時間ごとの交換でCO2分圧を平均2.3 mmHg（最大3.0 mmHg）に保ったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=12） |
| RC-15 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | W-10 CWC Ops（PDF p434）：RCRSを搭載する飛行ではLiOH収納区画（MO52M）をCWCの収納に使えると注記する。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=434） |

## 4. 文書×機能マトリクス（全件）

| ID | 文書番号 | 表題 | 全般 | FAN | BED | USC | CTL | MON | OPS | 出典 | URL |
|---|---|---|---|---|---|---|---|---|---|---|---|
| RC-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | ● | ● | ● | ● | ● | ● | ● | ARS-REF（AR-01） | https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf |
| RC-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | ● | ● | ● | ● | ● | ● | ● | ARS-REF（AR-02） | https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual |
| RC-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights |  | ● | ● |  | ● | ● | ● | ARS-REF（AR-04） | https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf |
| RC-04 | JSC-48027 Rev. F | Malfunction Procedures（MAL） |  | ● | ● |  | ● | ● | ● | ARS-REF（AR-05） | https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf |
| RC-05 | SAE 901290 | Expanded capabilities of the Extended Duration Orbiter | ● |  |  |  |  |  |  | ARS-REF（AR-10） | https://ntrs.nasa.gov/citations/19910065909 |
| RC-06 | SAE 901292 | The EDO Regenerable CO2 Removal System | ● |  | ● |  | ● |  |  | ARS-REF（AR-11） | https://saemobilus.sae.org/content/901292 |
| RC-07 | SAE 932294 | Development and Flight Status Report on the EDO RCRS | ● |  |  |  |  |  | ● | ARS-REF（AR-12） | https://saemobilus.sae.org/content/932294 |
| RC-08 | NASA-CR-160224 | Flight prototype CO2 and humidity control system（Hamilton Standard、1979年） |  |  | ● |  |  |  |  | ARS-REF（AR-20） | https://ntrs.nasa.gov/citations/19790017589 |
| RC-09 | SAE 851374 | Performance and endurance testing of a prototype carbon dioxide and humidity control system for Space Shuttle extended mission capability（Lin・Cusick、1985年） | ● |  |  |  |  |  |  | ARS-REF（AR-21） | https://ntrs.nasa.gov/citations/19860038819 |
| RC-10 | NASA-CR-193057 | STS-50 Space Shuttle Mission Report（1992年） |  |  |  |  |  |  | ● | ARS-REF（AR-25） | https://ntrs.nasa.gov/citations/19930016803 |
| RC-11 | NASA/TM-2005-214007 | Designing For Human Presence in Space: An Introduction to ECLSS – Appendix I, Update（Wieland、2005年） |  |  | ● |  |  |  |  | ARS-REF（AR-29） | https://ntrs.nasa.gov/citations/20060005209 |
| RC-12 | NTRS 20090043801（JSC-CN-19306） | Noise Control in Space Shuttle Orbiter（Goodman、NOISE-CON 2010） | ● |  |  |  |  |  |  | ARS-REF（AR-32） | https://ntrs.nasa.gov/citations/20090043801 |
| RC-13 | NTRS 20110003653（JSC-CN-22727） | Manned Mission Planning Considerations when Using a Non-Regenerable CO2 Removal System（DeSimpelaere、2011年） | ● |  |  |  |  |  |  | ARS-REF（AR-36） | https://ntrs.nasa.gov/citations/20110003653 |
| RC-14 | NSTS-08292 | STS-65 Space Shuttle Mission Report（1994年） | ● |  |  |  |  |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf |
| RC-15 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | ● |  |  |  |  |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf |
| RC-16 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） |  |  |  |  | ● |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf |

## 5. 注記（出典間の相違・構成変更）

> **注記** RC-02（SCOM）の関連内容に示す頁はUSA007587 Rev. A CPN-1のPDF通し頁で、出典URLの末尾の番号と一致する。RC-03（運用飛行規則）は同じくNSTS-12820 Vol. A PCN-1のPDF通し頁である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371）

> **注記** RCRSのベッド切替周期は、RC-06（SAE 901292の抄録）が30分、RC-01（訓練マニュアル）・RC-02（SCOM）が26分（半周期13分）とする。訓練マニュアルは当初30分周期で設計し吸着性能を上げるために短縮したとする（SSD-FD-ARS-RCRS-CTL-001の検証メモを参照）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=218）

> **注記** RC-14（STS-65、OV-102）はRCRSを使った飛行で、RC-02（SCOM）の「OV-105がハードウェア能力を持つ」との記述とあわせて、搭載機体の相違をSSD-FD-ARS-RCRS-OPS-001の検証メモに記した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=12）

## 6. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（16件） |
