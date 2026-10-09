# MPS 機能別関連文書一覧

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-MPS-REF-001 |
| 表題 | MPS 機能別関連文書一覧 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-MPS-001 |
| 関連図 | SSD-SYS-ARC-001 図51 MPS 関連文書マトリクス |

## 1. 目的

MPSの各機能に関係する公開文書を機能別に整理し、各機能説明書と図51 MPS 関連文書マトリクス（文書×機能マトリクス）の根拠とする。

## 2. 調査方法

乗員運用マニュアル（SCOM、OI-33）・運用飛行規則・故障処置手順・IOA の FMEA/CIL 評価などの公開文書を調べ、MPSの機能に関係する記述の頁を確かめた 13件を載せた（出典欄はすべて「新規」）。各文書の番号・表題・確認に使った URL は表の各行に、記述の頁は各欄の出典に示す。

## 3. 機能別関連文書

### 3.1 MPS 全般（9件）

機能説明書：SSD-FD-MPS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| MP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.16節（PDF p577〜618）：MPSの構成（SSME 3基・制御器・ET・PMS・ヘリウム系・ATVC 4台・油圧サーボアクチュエータ6台）と、油圧・EPS・MEC・DPSとの重要なIF、運用、警報の要約、経験則を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/577） |
| MP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | 第5章 BOOSTER（PDF p1003〜1121）：SSMEの故障定義、SSMEの系統管理、打上げ前〜MECOとMECO後のMPS管理の規則（A5-1〜A5-210）を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1003） |
| MP-03 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.3.1節 Main Propulsion Subsystem（PDF p100〜106）：MPSの温度、推進薬の条件、NPSP、ダンプ、不活性化、ヘリウムタンク、推力レベル、交流電源、油圧供給、ET分離、ジンバルの干渉の運用制約を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=100） |
| MP-04 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | C.16節（PDF p211〜726）：MPSの機械・電気部品のCIL評価ワークシートで、IOAとRI/NASAの臨界度の比較と解決を記す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=211） |
| MP-05 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | C.25節（PDF p95）：IOAのMPS解析が690枚のFMEAワークシート（機械438・電気252）を作り、冗長性の解釈がRI/NASAと異なったと記す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=95） |
| MP-06 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 2章（PDF p16〜17）：C&W系がつながって監視する各系のパラメータの一つとしてMPSの圧力を挙げる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=17） |
| MP-09 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.1.1節（PDF p7）：上昇中のMPSの性能は満足で、エンジンの始動・停止指令と絞り・首振りの指令への応答は計画どおりだったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=7） |
| MP-10 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） | 2.1.1節（PDF p7）：MPSの性能が打上げ前と任務の全期間で満足だったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=7） |
| MP-13 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | PDF p35：最終飛行でMPSが打上げ前と上昇中に予想どおり動作し、後部区画の水素濃度は最大146 ppm（許容600 ppm）だったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=35） |

### 3.2 主エンジン本体（SSME）（7件）

機能説明書：SSD-FD-MPS-SSME-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| MP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.16節「Space Shuttle Main Engines」（PDF p579〜585）：二段燃焼サイクル、推力レベル、ターボポンプ・プリバーナ・主燃焼室・ポゴ抑制系・推進薬弁・ダンプを述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/579） |
| MP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A5-8（PDF p1026）：SSMEの形式（Phase II・Block I/IA・Block IIA・Block II）と、ターボポンプ・主燃焼室の変更によるレッドラインの違いを定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1026） |
| MP-03 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.3.1節（PDF p100）：エンジン始動時のLO2・LH2入口の温度・圧力の範囲と、範囲外のときに制御器またはGLSが始動を禁止することを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=100） |
| MP-05 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | C.25節（PDF p95）：RI/NASAは主エンジンの順次の故障を冗長性の喪失とみなし、IOAはエンジンは互いに冗長でないとしたと記す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=95） |
| MP-11 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | PDF p22：エンジンの始動・メインステージ・停止の性能が予測どおりで、停止時刻がSSME 1〜3で511.85〜512.07秒だったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=22） |
| MP-12 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | PDF p37：SSMEの性能は過去の飛行と同様で、最大動圧の絞りは72%の1段、比推力は104.5%で452.01秒だったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=37） |
| MP-13 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | PDF p33：最大動圧の絞りが72%の1段で、MECOはエンジン始動から512秒だったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=33） |

### 3.3 主エンジン制御器（CTL）（5件）

機能説明書：SSD-FD-MPS-CTL-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| MP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.16節「Space Shuttle Main Engine Controllers」（PDF p585〜590）：DCUの冗長、交流電源、EIUを経る指令・データの流れ、電気的ロックアップ、制御器のソフトウェアを述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/585） |
| MP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A5-2〜A5-7（PDF p1007〜1025）：エンジン停止の手がかり、レッドラインと妥当性検査の限界、制御器の電子回路の故障の組合せ、推力の固着、データ経路故障、レッドラインセンサの故障を定義する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1017） |
| MP-03 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.3.1節（PDF p105）：上昇中に制御器の故障があった場合の軌道上の通電の禁止と、制御器電源の温度の上限を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=105） |
| MP-11 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | PDF p22：打上げ前にSSME 2の60キロビットのデータにパリティ誤りが出たが、GPCと制御器をつなぐEIUの回路ではなく地上への伝送回路が原因とみられ、制御器とソフトウェアの性能は異常なしだったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=22） |
| MP-12 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | PDF p37：始動準備からダンプまで全エンジンで車両データテーブルに故障識別子（FID）が報告されなかったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=37） |

### 3.4 推進薬供給（PMS）（10件）

機能説明書：SSD-FD-MPS-PMS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| MP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.16節「Propellant Management System」（PDF p590〜596）：マニホールド、切離し弁、プリバルブ、逃がし弁、アレージ加圧系、MPSの弁の形式を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/590） |
| MP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A5-9・A5-154〜A5-157（PDF p1027〜1098）：LH2アレージの漏れの判定、LH2タンク加圧の手動制御、低LH2 NPSPのリミット管理と手動絞り、アボートの選択、ETの低液位センサの故障を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1027） |
| MP-03 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.3.1節（PDF p100）：最小運転NPSPの要件、流量制御弁2個の閉故障を想定した予測、LH2アレージ圧スイッチを開ける最も早い時刻を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=100） |
| MP-04 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | MPS-209X（PDF p240）：LO2の17インチ切離し弁の位置表示の故障について、RI/NASAの臨界度2/1R（PFP）をIOAが受け入れたと記す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=240） |
| MP-05 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | 図C.25（PDF p96）：MPSのFMEA/CIL評価の件数と、LH2充填排出弁・ET/オービタのLO2・LH2切離し・LO2プリバルブの図を示す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=96） |
| MP-06 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 表7-3（PDF p97）：ハードウェアC&WのチャネルにMPSのLH2・LO2マニホールド圧（79・69）を割り当てる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97） |
| MP-09 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.1.1節（PDF p7）：打上げ前の加圧でアレージ圧がLO2タンク20〜22 psig、LH2タンク41〜44 psiaの制御帯に収まったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=7） |
| MP-10 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） | 2.1.1節（PDF p7）：上昇中の供給ラインの温度・圧力はICDの要件内で、飛行後の点検でLO2の17インチ切離し部の流路管（ライナ）の損傷が見つかったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=7） |
| MP-11 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | PDF p22：加圧系がエンジン始動と飛行の間正常に働き、アレージ圧の一時的な落込みの最小値を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=22） |
| MP-12 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | PDF p38：GH2流量制御弁が正常に作動して弁ごとの作動回数を記し、ポペットの割れの件で次の整備で取り外して点検するとする。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=38） |

### 3.5 充填・ダンプ・不活性化（DMP）（8件）

機能説明書：SSD-FD-MPS-DMP-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| MP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.16節「Operations」（PDF p604〜612）：打上げ前の充填、MECO後のダンプと真空不活性化、RTLS・TALのダンプ、再突入の再加圧の順序を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/609） |
| MP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A5-13・A5-201〜A5-210（PDF p1031〜1121）：MPSダンプと真空不活性化の定義と、ダンプの抑止、マニホールドの過圧、手動ダンプ、ダンプの故障、手動真空不活性化、再突入のダンプの故障の扱いを定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1031） |
| MP-03 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.3.1節（PDF p101〜102）：通常・AOA・ATOとRTLSのダンプの経路と時間の制約、真空への暴露による不活性化と再突入前のヘリウム加圧を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=102） |
| MP-04 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | MPS-334X（PDF p285）：LH2供給のRTLS内側ダンプ弁について、RI/NASAが臨界度をIOAの推奨どおり1/1に改めたと記す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=285） |
| MP-08 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 8-2 MPS VACUUM INERT（PDF p232）：軌道上でLH2外側充填排出弁を開閉してLH2系を真空不活性化する手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=232） |
| MP-09 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.1.1節（PDF p7）：残留推進薬のダンプと系統の不活性化が計画どおり行われ、充填時の水素の漏れはMPSの8インチLH2 T-0切離し部からだったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=7） |
| MP-10 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） | 2.1.1節（PDF p7）：供給ラインからのダンプがMECOの2分後に始まって3分2秒続き、その後に充填排出弁を開いて真空不活性化したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=7） |
| MP-13 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | PDF p35：LO2・LH2の充填の各パラメータと充填排出弁がすべて正常で、LH2の予加圧の回数がLCCの基準内だったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=35） |

### 3.6 ヘリウム・空圧（HE）（9件）

機能説明書：SSD-FD-MPS-HE-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| MP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.16節「Helium System」（PDF p596〜600）：ヘリウムタンク、遮断弁、調圧器、クロスオーバ弁、相互接続弁、マニホールド加圧、空圧制御組立を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/596） |
| MP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A5-10〜A5-12・A5-151〜A5-153・A5-208・A5-209（PDF p1029〜1119）：ヘリウム漏れの定義、MECO前の漏れの隔離・相互接続・手動停止、MECO後と再突入のヘリウム隔離、再突入のパージとマニホールド加圧を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1029） |
| MP-03 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.3.1節（PDF p103）：ヘリウム充填終了時（T-13秒）のタンク圧を4,000〜4,500 psiaとし、上限超過は機器の過圧、下限未満は任務に必要なヘリウム量の不足を招くと示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=103） |
| MP-04 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | MPS-3092（PDF p435）：エンジン系統のヘリウム遮断弁の故障がエンジン停止と後部区画の過圧のおそれを招くとして、臨界度1/1を記す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=435） |
| MP-06 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 表7-3（PDF p97）：ハードウェアC&WのチャネルにMPSのヘリウムのタンク圧（9・19・29）と調圧器圧（39・49・59）を割り当てる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97） |
| MP-07 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | COMM SSR-27 OI DSC LOST: OA1（PDF p105）：OA1の喪失で中央エンジンのMPS He Tk PとMPS He REG Pの計測を失い、該当するC/Wパラメータを抑止する手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=105） |
| MP-08 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 8-2 MPS VACUUM INERT（PDF p232）：真空不活性化の開始時に空圧ヘリウムの遮断弁を開き、終了時にGPCへ戻す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=232） |
| MP-09 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.1.1節（PDF p7）：ヘリウム系が打上げ前の期間に満足に動作したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=7） |
| MP-10 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） | 2.1.1節（PDF p7）：MPSのヘリウム系が軌道上で満足に動作したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=7） |

### 3.7 油圧・推力方向制御（TVC）（4件）

機能説明書：SSD-FD-MPS-TVC-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| MP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.16節「MPS Hydraulic Systems」（PDF p600〜602）：MPS/TVC遮断弁、エンジン弁への油圧、油圧ロックアップ、ジンバル・アクチュエータの油圧系統の割当て、軌道上の隔離を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/600） |
| MP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A5-114（PDF p1066）：軌道上・再突入1日前の油圧再加圧ではMPSヘリウムを要せず、再突入・着陸後のSSMEの再配置ではヘリウムを与えることを定める（TVC喪失時のリミット管理はA5-103G）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1066） |
| MP-03 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.3.1節（PDF p104）：SSMEへの作動油の圧力範囲と、再突入前にSSMEへ油圧をかける前の条件を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=104） |
| MP-07 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | APU/HYD 1.2b（PDF p38）：油圧系統の漏れの切り分けでMPS/TVC遮断弁を閉じ、漏れのある系統のMPS/TVC弁は再突入前のSSME油圧再加圧で操作しないとする。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=38） |

### 3.8 MPS運用管理（OPS）（6件）

機能説明書：SSD-FD-MPS-OPS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| MP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.16節「Malfunction Detection」（PDF p602〜604）と警報の要約（p613〜614）：レッドライン、MAIN ENGINE STATUSライト、ハードウェア・ソフトウェアの警報とその限界を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/602） |
| MP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A5-101〜A5-113（PDF p1034〜1065）：アボートの手がかり、リミット停止の管理、データ経路・指令経路故障やロックアップのときの手動停止、性能の分散、交流母線センサ、LO2 NPSP保護の手動絞り、手動MECOを定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1034） |
| MP-04 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | MPS-622X（PDF p333）：SSME停止の押しボタンスイッチの閉故障について、RI/NASAが臨界度を2/1R（アボートは1/1）に改めたと記す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=333） |
| MP-07 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | EPS SSR-50（PDF p533）：MNC DA3の母線喪失時の処置に、SSMEの油圧再加圧のためMPS/TVC遮断弁（1・2系統）を開いて10秒後に閉じる手順を含める。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=533） |
| MP-08 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 8-2 MPS VACUUM INERT（PDF p232）：真空不活性化を1分後かMCCの指示で終える。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=232） |
| MP-12 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | PDF p10：左SSMEのGH2出口圧トランスデューサの不安定（IFA STS-125-V-01）と、この計測がデータ経路故障の背後の停止を確かめる手がかりであることを記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=10） |

## 4. 文書×機能マトリクス（全件）

| ID | 文書番号 | 表題 | 全般 | SSME | CTL | PMS | DMP | HE | TVC | OPS | 出典 | URL |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| MP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | ● | ● | ● | ● | ● | ● | ● | ● | 新規 | https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual |
| MP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | ● | ● | ● | ● | ● | ● | ● | ● | 新規 | https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf |
| MP-03 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | ● | ● | ● | ● | ● | ● | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf |
| MP-04 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | ● |  |  | ● | ● | ● |  | ● | 新規 | https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf |
| MP-05 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | ● | ● |  | ● |  |  |  |  | 新規 | https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf |
| MP-06 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | ● |  |  | ● |  | ● |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf |
| MP-07 | JSC-48027 Rev. F | Malfunction Procedures（MAL） |  |  |  |  |  | ● | ● | ● | 新規 | https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf |
| MP-08 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） |  |  |  |  | ● | ● |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf |
| MP-09 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | ● |  |  | ● | ● | ● |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf |
| MP-10 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） | ● |  |  | ● | ● | ● |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf |
| MP-11 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） |  | ● | ● | ● |  |  |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf |
| MP-12 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） |  | ● | ● | ● |  |  |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf |
| MP-13 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | ● | ● |  |  | ● |  |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
