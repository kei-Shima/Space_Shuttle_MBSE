# 煙検知・消火系 機能別関連文書一覧

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FDS-REF-001 |
| 表題 | 煙検知・消火系 機能別関連文書一覧 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-FDS-001 |
| 関連図 | SSD-SYS-ARC-001 図27 煙検知・消火系 関連文書マトリクス |

## 1. 目的

煙検知・消火系（FDS）の各下位機能に関係する公開文書を機能別に整理し、各機能説明書と図27 煙検知・消火系 関連文書マトリクス（文書×機能マトリクス）の根拠とする。

## 2. 調査方法

SSD-ECLSS-REF-002の3.8節 煙検知・消火系（FDS）の11件を引き継ぎ（出典欄「REF-002（A-04）」の形）、今回の調査で15件を追加した（出典欄「新規」）。引き継いだ行も含め、各行の関連内容は下位機能ごとに書き分けた。訓練マニュアル（USA006019・USA006020）、SCOM、運用飛行規則、故障処置手順（MAL）、軌道運用チェックリスト、飛行運用マニュアル（JSC-12770 Vol. 12）、SODB、IOA、NTRSの論文（Gibb他・Friedman・Urban他・Wilson他）、NISTの資料、ミッション報告は原本で本文を確認し、関連内容に節とPDFの通し頁を示す。

## 3. 機能別関連文書

### 3.1 煙検知・消火系 全般（12件）

機能説明書：SSD-FD-ECL-FDS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| FD-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.2節 Smoke Detection and Fire Suppression（PDF p117〜123）：煙検知・消火を急減圧とともにハードウェアで発報するクラス1の緊急警報とし、乗員室とアビオニクスベイの煙検知・消火の構成を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/117） |
| FD-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | 17章 Smoke Detection/Fire Suppression（PDF p1915〜1928）：火災・火災後の定義、煙検知と前部アビオニクスベイ消火の喪失定義、喪失後と火災時・火災後の処置、確認のないHalon放出後の管理を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1915） |
| FD-03 | NTRS 19850008615 | Other Challenges in the Development of the Orbiter Environmental Control Hardware | 抄録（PDF p1）：オービタECLSSの開発課題として、アンモニアボイラ・煙感知器・水/水素分離器・WCSの問題と解決策を扱うと述べる。（出典: https://ntrs.nasa.gov/api/citations/19850008615/downloads/19850008615.pdf#page=1） |
| FD-04 | NTRS 19930011015 | Fire safety practices in the Shuttle and the Space Station Freedom | Fire Protection for the Shuttle（PDF p3〜4）：ECLSSの一部である煙検知・消火サブシステムがイオン化式感知器とHalon 1301消火器から成ると述べ、SSFの計画と比較する。（出典: https://ntrs.nasa.gov/api/citations/19930011015/downloads/19930011015.pdf#page=3） |
| FD-05 | IOA報告（1987年・1988年） | IOA: Analysis / Assessment of the life support and airlock support subsystems | 給水・代謝廃棄物・廃水・煙検知・消火を担う生命維持系（LSS）の独立解析と、NASAのFMEA/CILとの比較評価を扱う（検索ページで確認）。（出典: https://www.science.gov/topicpages/a/analysis+results+support） |
| FD-06 | 番号なし | Shuttle Reference: Smoke Detection and Fire Suppression | 煙検知・消火を乗員室のアビオニクスベイ・乗員室・Spacelab与圧モジュールに設けると述べる。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/cw/smokedet.html） |
| FD-07 | NTRS 19910011869 | Fire Suppression in Human-Crew Spacecraft（1991年） | 要約（PDF p3）：シャトルがHalon 1301を搭載し、飛行中に放出すれば大気と表面の清浄化のため直ちに帰還するとし、低重力での消火の課題を論じる。（出典: https://ntrs.nasa.gov/api/citations/19910011869/downloads/19910011869.pdf#page=3） |
| FD-08 | NASA TM-105317（NTRS 19920004363） | Risks, designs, and research for fire safety in spacecraft | 宇宙機の防火は不燃材料と保管管理による予防が主で、シャトルは航空機と同様の技術の煙検知器と消火器を備えると述べる（抄録で確認）。（出典: https://ntrs.nasa.gov/archive/nasa/casi.ntrs.nasa.gov/19920004363.pdf） |
| FD-09 | NIST R0200469 | Fire Protection in Manned Missions: Current and Planned | PDF p1：シャトルはHalon 1301の携帯消火器（PFE）を搭載し、煙検知はイオン電流の遮断の原理によると述べる。（出典: https://www.nist.gov/system/files/documents/el/fire_research/R0200469.pdf#page=1） |
| FD-10 | 雑誌記事 | Kennedy Space Center Fire Services（Fire Engineering） | チャレンジャーの携帯消火器4本・固定消火器3本・煙検知器9個を紹介する。（出典: https://www.fireengineering.com/firefighting/kennedy-space-center-fire-services/） |
| FD-12 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 3.2節 Overview（PDF p21〜22）：クラス1警報を煙検知・消火と急減圧のハードウェア系とし、感知器をキャビンと3つのベイに、固定ボトルを3つのベイに、携帯消火器3本を乗員室に置くと示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=21） |
| FD-19 | NTRS 20080012612 | Spacecraft Fire Detection: Smoke Properties and Transport in Low-Gravity（Urban他、2008年） | PDF p2：オービタの9個のイオン化式感知器がミッドデッキとフライトデッキのアビオニクス冷却空気の戻りラインにあり、Spacelabにはさらに6個あったと述べる。（出典: https://ntrs.nasa.gov/api/citations/20080012612/downloads/20080012612.pdf#page=2） |

### 3.2 煙感知器（DET）（16件）

機能説明書：SSD-FD-ECL-FDS-DET-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| FD-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.2節（PDF p117〜118）：A群・B群の感知器の位置と、2,000±200 µg/m³（5秒以上）または毎秒22 µg/m³の増加（20秒間に8回連続）の警報条件、SM SYS SUMM 1の通常の読み（0.3〜0.4 mg/m³）を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/118） |
| FD-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-2（PDF p1917）：煙検知の喪失を回路試験の結果・電源・両ファンの故障による空気循環の喪失で定義し、各感知器が警報と濃度の2つの独立な指示を出すとする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1917） |
| FD-03 | NTRS 19850008615 | Other Challenges in the Development of the Orbiter Environmental Control Hardware | Smoke Detector（PDF p5〜7）：乗員室とベイに置くBrunswick社の能動式イオン化感知器の構造（空気の2経路、回転ベーン式ポンプ、Am-241、LSI）と、QCMからイオン化室への変更、高度での信号のずれ、ポンプ・電動機・自己診断回路の改良を示す。（出典: https://ntrs.nasa.gov/api/citations/19850008615/downloads/19850008615.pdf#page=5） |
| FD-04 | NTRS 19930011015 | Fire safety practices in the Shuttle and the Space Station Freedom | PDF p3〜4：各ベイ2個の冗長配置、内蔵ファンで大粒子を除く方式と低重力の凝集粒子を除いてしまう懸念、STS-28の短絡で濃度が警報設定値を大きく下回った事例を示す。（出典: https://ntrs.nasa.gov/api/citations/19930011015/downloads/19930011015.pdf#page=4） |
| FD-06 | 番号なし | Shuttle Reference: Smoke Detection and Fire Suppression | イオン化式の検知素子が煙濃度または濃度の変化率で警報を出すとし、警報の閾値を2,200±200 µg/m³とする。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/cw/smokedet.html） |
| FD-09 | NIST R0200469 | Fire Protection in Manned Missions: Current and Planned | PDF p1：約20年間に煙感知器回路の誤警報・故障が15件あったと記す。（出典: https://www.nist.gov/system/files/documents/el/fire_research/R0200469.pdf#page=1） |
| FD-11 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report | PDF p19：煙検知系のすべてのパラメータが飛行中正常範囲にあり、消火系の使用は不要だったと記す。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=19） |
| FD-12 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 3.3.2節（PDF p23〜26）：9個の感知器の配置、警報条件、ポンプ・入口フィルタ・分離器とAm-241の感知室・基準室による検知の原理、所要電力（約6.5 W）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=25） |
| FD-13 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 表3-1〜3-4（PDF p87〜89）：冷却マトリクスに、乗員室（キャビン、フライトデッキ左右）と各アビオニクスベイの煙感知器を冷却対象の機器として挙げる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=88） |
| FD-14 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | COMM SSR-10（PDF p87）とEPS SSR-10（p469）：OI MDMや主母線Aを失ったときに失われる濃度計測・感知器を示し、ハードウェア警報やキャビンの感知器が残ることを示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=87） |
| FD-17 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | 3.4.6.5節（PDF p225）：煙検知には各区画のファンによる空気の循環が必要とし、感知器の温度制限（130°F）を超えるとポンプ駆動回路が故障しうるとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=225） |
| FD-19 | NTRS 20080012612 | Spacecraft Fire Detection: Smoke Properties and Transport in Low-Gravity（Urban他、2008年） | PDF p2：オービタの感知器（Celesco、後のBrunswick）はイオン化式を採りポンプと分離器で1 µmを超える粒子を除く設計で、ISSの光散乱式（1.5 W）に対し9 Wを要すると比較する。（出典: https://ntrs.nasa.gov/api/citations/20080012612/downloads/20080012612.pdf#page=2） |
| FD-21 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | PDF p52：煙警報はなく、感知器の読みはバックグラウンドの雑音の水準にとどまったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=52） |
| FD-23 | JSC-19278 | STS-8 National Space Transportation Systems Program Mission Report（1983年） | PDF p11：ベイ1のB感知器が断続的に煙警報を出し、A感知器は煙を示さなかったため、遮断器を開いて誤警報を防いだと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf#page=11） |
| FD-24 | NSTS-08302 | STS-35 Space Shuttle Mission Report（1991年） | PDF p15：ペイロードの表示装置から電線の焦げるようなにおいが3回報告されたが、煙検知系は熱分解生成物を検知しなかったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=15） |
| FD-25 | NSTS-08292 | STS-65 Space Shuttle Mission Report（1994年） | PDF p34：フライトデッキ左の感知器の濃度表示が2秒間スケールの下限を外れ、その後負のスパイクが出たと記す（STS-65-V-10）。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=34） |

### 3.3 煙警報・回路試験（ALM）（11件）

機能説明書：SSD-FD-ECL-FDS-ALM-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| FD-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.2節（PDF p114・p118〜119・p123）：トリップ信号によるL1灯・4つのMASTER ALARM灯・サイレン、L1の灯の割当て、回路試験とSENSOR RESETによるラッチの解除を示し、要約（p131）で濃度が1.8を下回ったらリセットするとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/123） |
| FD-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-51C（PDF p1921）：各感知器の2つの指示（ハードウェア警報とGPCの濃度）を数え、区画に2つしか残らない場合は毎日回路試験を行うと定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1921） |
| FD-12 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 3.3.1・3.3.2.3・3.3.4節（PDF p22〜28・p38〜44）：サイレンの音、ラッチとリセット、回路試験、SM SYS SUMM 1の濃度表示、パネルL1の操作とO14・O15・O16の遮断器を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=26） |
| FD-14 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | C/W 4.2d SIREN – NO SMOKE DETN LT（PDF p141）：煙検知灯のないサイレンに対し、濃度の確認と回路試験で表示回路とサイレン起動回路の故障を切り分ける。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=141） |
| FD-15 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist | 5-23〜5-24 SMOKE DETN CKT TEST（PDF p133〜134）：A・B回路の試験（5〜10秒でOFFにする方法と15〜25秒待つ方法）の手順と、点灯する灯の数（A 5個、B 4個）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=133） |
| FD-16 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） | 表3.24-1（PDF p583）：オービタの煙検知の表示・操作はパネルL1、SpacelabはパネルR7にあると示す。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=583） |
| FD-18 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | 付録C.12（PDF p71）：煙感知器とリセット信号の電源が共通であることを指摘する。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=71） |
| FD-21 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | PDF p52：飛行中の点検で、すべての感知器が自己試験に合格したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=52） |
| FD-22 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） | PDF p43：自己試験で警報の作動が乗員の予想より遅れたのは感知器の論理回路が試験を終える時間のばらつきによるもので、すべての回路が作動可能と確かめられたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=43） |
| FD-25 | NSTS-08292 | STS-65 Space Shuttle Mission Report（1994年） | PDF p34：着陸後に同じ感知器からMASTER ALARMが出たが、データに濃度の変化はなかったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=34） |
| FD-26 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | PDF p53：飛行1日目に煙検知の試験を行い、A・B両回路が合格し、消火系の使用は不要だったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=53） |

### 3.4 ベイ固定消火ボトル（FIX）（7件）

機能説明書：SSD-FD-ECL-FDS-FIX-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| FD-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.2節（PDF p118〜119）：ベイ1・2・3Aの固定ボトル（Halon 3.74〜3.8 lb）の放出操作（ARM、AGENT DISCHを2秒以上）と、ベイ内濃度7.5〜9.5%・約72時間の防護、60±10 psigでのAGENT DISCH灯の点灯を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/119） |
| FD-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-3（PDF p1918）：AGENT DISCHARGE灯が音を伴わずに点灯した場合と、放出後50時間（条件付きでベイ3Aは28時間）で前部アビオニクスベイの消火を喪失とする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1918） |
| FD-06 | 番号なし | Shuttle Reference: Smoke Detection and Fire Suppression | 3つのアビオニクスベイの固定消火ボトルと、L1でのアームと2秒以上の放出ボタンの操作を解説する。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/cw/smokedet.html） |
| FD-07 | NTRS 19910011869 | Fire Suppression in Human-Crew Spacecraft（1991年） | 図3（PDF p12）：固定消火器（Halon 1.7 kg、放出1秒）の構造（点火器・刃・隔膜・圧力スイッチ）を示す。（出典: https://ntrs.nasa.gov/api/citations/19910011869/downloads/19910011869.pdf#page=12） |
| FD-12 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 3.3.3.3〜3.3.3.6節（PDF p30〜37）：固定ボトルの放出操作（1秒の時間遅れ）、ノズル組立の構造、ベイ内濃度7.5〜9.5%、放出時の濃度の跳ね上がりと50時間の有効時間を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=35） |
| FD-17 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | 3.4.6.5節（PDF p225）：消火ボトル（Freon Tank）の最高使用温度を超えると過圧で破裂しうるとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=225） |
| FD-18 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | 付録C.12（PDF p71）：SD/FSの評価の主な結論として、ベイの消火ボトルの回路が単一系統で、上昇・再突入中は携帯消火器で代替できない点を挙げる。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=71） |

### 3.5 携帯消火器・消火ポート（PFE）（8件）

機能説明書：SSD-FD-ECL-FDS-PFE-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| FD-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.2節（PDF p121〜122）：3本の携帯消火器（ミッドデッキ2本・フライトデッキ1本）と2種類の消火ポート、15秒の放出、Halon 1301の性質と暴露時間の限度を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/121） |
| FD-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-51・52（PDF p1920・p1922）：煙検知や消火を失ったベイに、再突入の電源投入前や着席前に携帯のHalonボトルを放出すると定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1922） |
| FD-06 | 番号なし | Shuttle Reference: Smoke Detection and Fire Suppression | 3本の携帯消火器と、先細のノズルを計器盤の消火穴に差し込む使い方を解説する。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/cw/smokedet.html） |
| FD-07 | NTRS 19910011869 | Fire Suppression in Human-Crew Spacecraft（1991年） | PDF p4：携帯消火器と3つの電子機器ベイの固定消火器から成るシャトルの系と、計器盤のポートからノズルを差し込む方式を述べ、宇宙では実演でしか放出されていないとする。（出典: https://ntrs.nasa.gov/api/citations/19910011869/downloads/19910011869.pdf#page=4） |
| FD-10 | 雑誌記事 | Kennedy Space Center Fire Services（Fire Engineering） | 携帯消火器を4本とする（SCOMなどの3本と異なる）。（出典: https://www.fireengineering.com/firefighting/kennedy-space-center-fire-services/） |
| FD-12 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 3.3.3.1〜3.3.3.2節（PDF p30〜31）：携帯消火器（380 psig、約90秒で全量）と消火ポートの配置・使い方を示し、3.3.3.6節（p37）で乗員室ではファンを止めたときだけHalonが有効とする。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=30） |
| FD-16 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） | 3.24節 Fire Extinguisher（PDF p573〜583）：3本の携帯消火器の配置・取り外し・操作、消火ポートの位置、寸法・充填量（約3.75 lb）・放出時間・推力を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=574） |
| FD-17 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | 3.4.6.5節（PDF p225）：携帯消火器の最高使用温度を超えると過圧で破裂しうるとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=225） |

### 3.6 火災対応・運用管理（OPS）（10件）

機能説明書：SSD-FD-ECL-FDS-OPS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| FD-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 6.8節 Fire（PDF p891）：火災の手がかりと、DPS表示の濃度で火災を確かめた後のQDM・バイザーでの保護、Halonボトルの放出、大気の浄化と早期帰還の判断を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/891） |
| FD-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-1・51・53・54（PDF p1915〜1928）：火災の確認条件、喪失後の管理、ベイ火災・乗員室火災の処置と火災後の対応、確認のない放出後のパージを定め、A13-152（p1795〜1797）とA17-1001（p2032〜2034）で放出後の暴露の目安と続行判断を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1923） |
| FD-04 | NTRS 19930011015 | Fire safety practices in the Shuttle and the Space Station Freedom | PDF p4：STS-6・STS-35・STS-50の異臭・過熱の事例と、消火器を放出すれば直ちにミッションを終了して帰還するとの規則を記す。（出典: https://ntrs.nasa.gov/api/citations/19930011015/downloads/19930011015.pdf#page=4） |
| FD-07 | NTRS 19910011869 | Fire Suppression in Human-Crew Spacecraft（1991年） | PDF p5：シャトルで起きた2件の小事象は短絡による電線被覆の過熱で、乗員が回路の電源を切って抑え、感知器は作動せず消火器も放出しなかったと記す。（出典: https://ntrs.nasa.gov/api/citations/19910011869/downloads/19910011869.pdf#page=5） |
| FD-09 | NIST R0200469 | Fire Protection in Manned Missions: Current and Planned | PDF p1：乗員が電源を切って火災を防いだ事象5件と、自己消炎した閃光火災2件があり、平均して年1回の火災または火災の兆候があったと記す。（出典: https://www.nist.gov/system/files/documents/el/fire_research/R0200469.pdf#page=1） |
| FD-12 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 3.3.5〜3.3.6節（PDF p46〜47）：Halon 1301の暴露限度と、火災後の分解生成物の危険、CSA-CPによる4つの汚染物質の測定を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=46） |
| FD-13 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 付録B.3（PDF p204）：O2濃度が40%を超えるとHalon 1301が燃料として働き、火災を広げると警告する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=204） |
| FD-14 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | ECLS SSR-12・FRP-2・FRP-3（PDF p351・p365〜366）：ベイ火災後の単一故障許容への復旧、火災後のキャビン清浄化（CSA-CPの記録とキャニスタ交換）、8 psiへの減圧時間を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=365） |
| FD-19 | NTRS 20080012612 | Spacecraft Fire Detection: Smoke Properties and Transport in Low-Gravity（Urban他、2008年） | PDF p3：Friedmanによればオービタで過熱・部品故障の事象が6件あり、いずれも火災には広がらなかったと記す。（出典: https://ntrs.nasa.gov/api/citations/20080012612/downloads/20080012612.pdf#page=3） |
| FD-20 | NTRS 19940007083 | A Combustion Products Analyzer for Contingency Use During Thermodegradation Events on Spacecraft（Wilson他、1993年） | 要約（PDF p1）：熱分解事象の後に乗員が大気を吸えるかを判断するため、CO・HF・HCl・HCNを測る携帯型の燃焼生成物分析器（CPA）を開発し、STS-41から搭載したと述べる。（出典: https://ntrs.nasa.gov/api/citations/19940007083/downloads/19940007083.pdf#page=1） |

## 4. 文書×機能マトリクス（全件）

| ID | 文書番号 | 表題 | 全般 | DET | ALM | FIX | PFE | OPS | 出典 | URL |
|---|---|---|---|---|---|---|---|---|---|---|
| FD-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | ● | ● | ● | ● | ● | ● | REF-002（A-04） | https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual |
| FD-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | ● | ● | ● | ● | ● | ● | REF-002（B-01） | https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf |
| FD-03 | NTRS 19850008615 | Other Challenges in the Development of the Orbiter Environmental Control Hardware | ● | ● |  |  |  |  | REF-002（D-05） | https://ntrs.nasa.gov/citations/19850008615 |
| FD-04 | NTRS 19930011015 | Fire safety practices in the Shuttle and the Space Station Freedom | ● | ● |  |  |  | ● | REF-002（G-09） | https://ntrs.nasa.gov/citations/19930011015 |
| FD-05 | IOA報告（1987年・1988年） | IOA: Analysis / Assessment of the life support and airlock support subsystems | ● |  |  |  |  |  | REF-002（N-07） | https://www.science.gov/topicpages/a/analysis+results+support |
| FD-06 | 番号なし | Shuttle Reference: Smoke Detection and Fire Suppression | ● | ● |  | ● | ● |  | REF-002（N-09） | https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/cw/smokedet.html |
| FD-07 | NTRS 19910011869 | Fire Suppression in Human-Crew Spacecraft（1991年） | ● |  |  | ● | ● | ● | REF-002（N-10） | https://ntrs.nasa.gov/api/citations/19910011869/downloads/19910011869.pdf |
| FD-08 | NASA TM-105317（NTRS 19920004363） | Risks, designs, and research for fire safety in spacecraft | ● |  |  |  |  |  | REF-002（N-11） | https://ntrs.nasa.gov/archive/nasa/casi.ntrs.nasa.gov/19920004363.pdf |
| FD-09 | NIST R0200469 | Fire Protection in Manned Missions: Current and Planned | ● | ● |  |  |  | ● | REF-002（N-12） | https://www.nist.gov/system/files/documents/el/fire_research/R0200469.pdf |
| FD-10 | 雑誌記事 | Kennedy Space Center Fire Services（Fire Engineering） | ● |  |  |  | ● |  | REF-002（N-13） | https://www.fireengineering.com/firefighting/kennedy-space-center-fire-services/ |
| FD-11 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report |  | ● |  |  |  |  | REF-002（N-15） | https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf |
| FD-12 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | ● | ● | ● | ● | ● | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf |
| FD-13 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） |  | ● |  |  |  | ● | 新規 | https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf |
| FD-14 | JSC-48027 Rev. F | Malfunction Procedures（MAL） |  | ● | ● |  |  | ● | 新規 | https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf |
| FD-15 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist |  |  | ● |  |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf |
| FD-16 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） |  |  | ● |  | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf |
| FD-17 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） |  | ● |  | ● | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf |
| FD-18 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） |  |  | ● | ● |  |  | 新規 | https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf |
| FD-19 | NTRS 20080012612 | Spacecraft Fire Detection: Smoke Properties and Transport in Low-Gravity（Urban他、2008年） | ● | ● |  |  |  | ● | 新規 | https://ntrs.nasa.gov/api/citations/20080012612/downloads/20080012612.pdf |
| FD-20 | NTRS 19940007083 | A Combustion Products Analyzer for Contingency Use During Thermodegradation Events on Spacecraft（Wilson他、1993年） |  |  |  |  |  | ● | 新規 | https://ntrs.nasa.gov/api/citations/19940007083/downloads/19940007083.pdf |
| FD-21 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） |  | ● | ● |  |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf |
| FD-22 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） |  |  | ● |  |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf |
| FD-23 | JSC-19278 | STS-8 National Space Transportation Systems Program Mission Report（1983年） |  | ● |  |  |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf |
| FD-24 | NSTS-08302 | STS-35 Space Shuttle Mission Report（1991年） |  | ● |  |  |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf |
| FD-25 | NSTS-08292 | STS-65 Space Shuttle Mission Report（1994年） |  | ● | ● |  |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf |
| FD-26 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） |  |  | ● |  |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf |

## 5. 注記（出典間の相違・構成変更）

> **注記** FD-01（SCOM）の関連内容に示す頁はUSA007587 Rev. A CPN-1のPDF通し頁で、出典URLの末尾の番号と一致する。FD-02（運用飛行規則）は同じくNSTS-12820 Vol. A PCN-1のPDF通し頁である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/118）

> **注記** FD-03・FD-04・FD-07・FD-09・FD-11は、SSD-ECLSS-REF-002では抄録ページまたはPDFへのリンクで示していた文書で、本一覧ではNTRS・NISTのPDFで本文を確認して通し頁を示した。FD-05・FD-06・FD-08・FD-10は本文を確認していないため、SSD-ECLSS-REF-002と親文書の記載に基づき、関係する列を限った。（出典: https://ntrs.nasa.gov/api/citations/19910011869/downloads/19910011869.pdf#page=4）

> **注記** 感知器の警報条件と所要電力、固定ボトルの放出音と有効時間、携帯消火器の放出時間と充填量は資料で値が異なる（各機能説明書の注記を参照）。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=35）

## 6. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（26件） |
