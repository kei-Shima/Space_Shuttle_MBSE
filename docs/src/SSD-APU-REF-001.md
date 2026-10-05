# APU/HYD 機能別関連文書一覧

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-APU-REF-001 |
| 表題 | APU/HYD 機能別関連文書一覧 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-APU-001 |
| 関連図 | SSD-SYS-ARC-001 図57 APU/HYD 関連文書マトリクス |

## 1. 目的

APU/HYDの各機能に関係する公開文書を機能別に整理し、各機能説明書と図57 APU/HYD 関連文書マトリクス（文書×機能マトリクス）の根拠とする。

## 2. 調査方法

乗員運用マニュアル（SCOM、OI-33）・運用飛行規則・故障処置手順・IOA の FMEA/CIL 評価などの公開文書を調べ、APU/HYDの機能に関係する記述の頁を確かめた 16件を載せた（出典欄はすべて「新規」）。各文書の番号・表題・確認に使った URL は表の各行に、記述の頁は各欄の出典に示す。

## 3. 機能別関連文書

### 3.1 APU/HYD 全般（7件）

機能説明書：SSD-FD-APU-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| AP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.1節（PDF p83〜112）：独立した3系統の油圧系と、それに動力を与える同一で独立した3台の改良型APU（ヒドラジン燃料、約88 lb・135馬力）の構成を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/83） |
| AP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A10-1001（PDF p1665〜1666）：MMACSのGo/No-Go基準で、APU/HYDとWSBの喪失に対する処置（MDF・次のPLS）を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1665） |
| AP-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 1章 APU/HYD（PDF p27）：APU（燃料量・温度・タンク弁）、HYD（リザーバ・アキュムレータ）、熱調整（循環ポンプ）の故障処置とSSRの一覧を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=27） |
| AP-05 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 2章（PDF p16）：C/W系がAPUの圧力・温度・量・離散信号・回転数・事象と、油圧の圧力・温度・量を監視すると述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=16） |
| AP-06 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | 表1-1（PDF p13）：APUのFMEA 314件（NASA 313件）・CIL 106件、油圧・WSBのFMEA 447件（NASA 364件）・CIL 183件（NASA 111件）、油圧アクチュエータのFMEA 112件・CIL 59件を示す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13） |
| AP-08 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 1.3節 Active Thermal Control System Interfaces（PDF p18）：ATCSのインタフェースの一つとして、ATCSのフレオンループがオービタの作動油を温めると述べる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=18） |
| AP-09 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.2.1節（PDF p22）：STS-2のAPUの運転時間と燃料の消費（上昇・軌道上・降下）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=22） |

### 3.2 ヒドラジン燃料供給（FUL）（10件）

機能説明書：SSD-FD-APU-FUL-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| AP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.1節 Fuel System（PDF p84〜87）：燃料タンク（約350 lb、GN2加圧の隔膜式）、2重の隔離弁、燃料ポンプ、主・副燃料制御弁、シール漏れの回収ボトルを解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/84） |
| AP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A10-1A（PDF p1525〜1530）とA10-27（p1552〜1555）：ヒドラジンの漏れ・凍結・燃料タンク圧力などによるAPUの喪失の定義と、燃料の漏れの処置（燃料を燃やし切る運転など）を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1552） |
| AP-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 1.1a・1.1c（PDF p32・p35）：燃料量・燃料タンク圧力の異常（ヒドラジンまたはN2の漏れ）と、燃料タンク隔離弁の温度の異常（開固着・ヒータ故障）の切り分けを示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=32） |
| AP-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.4.3節（PDF p166〜167）：APU起動時の燃料ポンプ入口の最低圧力（海面180 psia、40,000 ft超で90 psia）、燃料タンク圧力が低いときの起動の禁止、燃料隔離弁の通電時間の制約を定める。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=166） |
| AP-06 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | C.6節（PDF p57）：APUについてIOAの指摘28件から4件のFMEAが追加され、残る指摘の一つは既存のFMEAが扱わない燃料ポンプ・バイパス配管の温度センサであると記す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=57） |
| AP-07 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 1-2 APU HEATER RECONFIG（PDF p42）：APUのヒータ（TK/FU LN/H2O SYS）をA系からB系へ切り替える構成を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=42） |
| AP-12 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | PDF p46（IFA STS-114-V-06）：APU 1の排出系の圧力が上昇後の停止の約1時間後から低下し、燃料の漏れではなくGN2の外部漏れと判断されたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=46） |
| AP-13 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | PDF p46（IFA STS-122-V-02）：APU 3の燃料シール排出配管のA系ヒータのサーモスタットの設定点がずれ、A12のA系ヒータをB系に切り替えたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=46） |
| AP-14 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | APU System（PDF p44〜45）：APU 2の排出配管の温度上昇は、規格内の燃料ポンプ軸のシール漏れで排出系に入った暖かい燃料の移動によるとされたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=45） |
| AP-16 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） | 2.2.1節（PDF p15）：熱のDTOとしてAPU 1の供給配管のヒータを切り、3時間で試験配管の温度が37°Fに下がったため、突入ではヒータを入れたままにしたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=15） |

### 3.3 タービン・ギアボックス（TRB）（9件）

機能説明書：SSD-FD-APU-TRB-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| AP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.1節 Gas Generator and Turbine・Lubricating Oil・Injector Cooling System（PDF p87〜93）：ガス発生器と単段タービン、減速ギアボックス、GN2加圧の潤滑油系、噴射器の水冷却と受動冷却を解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/87） |
| AP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A10-22（PDF p1535〜1538）とA10-24（p1544〜1545）：再起動の温度条件（噴射器の冷却3.5分、ガス発生器床温度）と、潤滑油・ギアボックスの温度・圧力による停止を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1535） |
| AP-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 1.1b（PDF p33〜34）：ガス発生器・燃料ポンプのヒータや噴射器の水配管などの温度の限界と、ヒータ回路の切替を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=33） |
| AP-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.4.3節（PDF p166・p168）：使える潤滑油（MIL-L-23699B、Mobil Jet II）、ギアボックス圧力2.0 psia未満での運転、排気ダクトの限界（1,160°F超）を定める。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=168） |
| AP-05 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 表7-3（PDF p97）：主C/WのチャンネルにAPU 1〜3のEGT（8・18・28）とOIL T（38・48・58）を割り当てる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97） |
| AP-06 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | C.6節（PDF p57）：潤滑油ヒータのサーモスタットの閉固着（04-2-518A-2）の臨界度を3/1Rとするよう勧告したと記す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=57） |
| AP-09 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.2.1.1節（PDF p23）：打上げ試行時の潤滑油フィルタの詰まり（ペンタエリスリトール）と、ガス発生器の気泡を示す室圧の低下を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=23） |
| AP-10 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report（1993年） | PDF p6：APU 3の軸受温度が335°Fに達したため、飛行規則に従ってAPU 3を停止したと記す。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=6） |
| AP-11 | NSTS-08292 | STS-65 Space Shuttle Mission Report（1994年） | APU Subsystem（PDF p31）：APU 2のギアボックスのGN2圧力が約6.2 psiaに下がり、1回の再加圧があったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=31） |

### 3.4 APU制御器（CTL）（9件）

機能説明書：SSD-FD-APU-CTL-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| AP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.1節 Electronic Controller（PDF p88〜92）：デジタル制御器による回転数の制御（NORM 103%・HIGH 113%）、自動停止（80%・129%）、起動準備完了の論理を解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/90） |
| AP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A10-26（PDF p1548〜1552）：自動停止を禁止する条件と再び有効にする条件、説明のつかない低速度停止の後の再起動（MPUの2重故障の切り分け）を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1548） |
| AP-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | APU/HYD SSR-5（PDF p46）：起動前にAPU AUTO SHUTDN（3個）をENA、APU SPEED SEL（3個）をNORMにし、APU CNTLR PWRを入れる手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=46） |
| AP-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.4.3節（PDF p168）：ガス発生器ヒータの故障時に起動に安全なガス発生器・噴射器の最低温度を+190°Fとする（起動準備完了の条件の一つ）。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=168） |
| AP-05 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 表7-3（PDF p97）と表7-2（p96）：主C/WのチャンネルにAPU 1〜3のOVERSPEED（68・78・88）・UNDERSPEED（98・108・118）を割り当て、APU回転数のBFSの限界を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97） |
| AP-07 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 7-15（PDF p205）：FCSチェックアウトの起動前に、AUTO SHTDN（3個）をENA、SPEED SEL（3個）をNORMとし、APU CNTLR PWRを入れる手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=205） |
| AP-08 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 表4-1（PDF p100）：APU 1・2・3の制御器を後部アビオニクスベイ4・5・6のコールドプレート（棚3）に置くと示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=100） |
| AP-12 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | PDF p46（IFA STS-114-V-09）：APU 2の圧力・温度の表示が約2秒失われ、同時に主母線Bの後部電力制御器5の電流が下がったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=46） |
| AP-14 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | APU System（PDF p44）：STS-115以後のAPU 1のガス発生器床ヒータの下側の設定点のずれが、予想どおり再現したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=44） |

### 3.5 主油圧ポンプ・供給（HYD）（11件）

機能説明書：SSD-FD-APU-HYD-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| AP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.1節 Main Hydraulic Pump・Hydraulic Reservoir・Hydraulic Accumulator（PDF p99〜102）：主ポンプ（可変容量、3,000 psi・0〜63 gpm）、減圧弁、ブートストラップ式リザーバ（8ガロン）、ベローズ式アキュムレータを解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/102） |
| AP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A10-51A（PDF p1565〜1566）とA10-71〜73（p1568〜1574）：油圧系の喪失の定義、隔離弁の構成、漏れと圧力・温度の処置を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1568） |
| AP-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 1.2a・1.2b（PDF p36〜38）：リザーバ・アキュムレータの圧力の低下とリザーバ量の異常（隔離弁を閉じての漏れの切り分け）を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=37） |
| AP-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.2.4節（PDF p81〜82）：油圧系の温度・圧力の限界、リザーバの最低液量、ブートストラップ・アキュムレータの予圧（70°Fで1,650〜1,920 psia）を定める。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=82） |
| AP-05 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 表7-3（PDF p97）：主C/WのチャンネルにHYD 1〜3 P（99・109・119）を割り当てる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97） |
| AP-06 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | C.17節（PDF p79）：油圧・WSBのIOAの解析は447件の故障モードの評価表から183件のPCIを抽出したと記す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=79） |
| AP-07 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 7-16（PDF p206）：APU起動後にHYD MN PUMP PRESSをNORMにし、SM 87 HYD THERMALでエレボン・ラダー/スピードブレーキの切替弁の位置を確かめる手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=206） |
| AP-09 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.2.2節（PDF p23）：着陸時の油圧系1のリザーバ量の30%の減少と、それを受けた脚の隔離弁の閉止を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=23） |
| AP-10 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report（1993年） | PDF p6：APUの停止後の油圧系3の圧力の回復が、スピードブレーキの油圧モータ3の逆駆動によるものだったと記す。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=6） |
| AP-11 | NSTS-08292 | STS-65 Space Shuttle Mission Report（1994年） | HYD/WSB Subsystem（PDF p31）：DTO 414の停止順序でPDUの逆駆動は見られなかったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=31） |
| AP-12 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | PDF p46：打上げ前の循環ポンプの運転によるブートストラップ・アキュムレータの充填と、APUの起動・停止時のプライオリティ弁の開閉が規格内だったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=46） |

### 3.6 循環ポンプ・熱調整（CIR）（6件）

機能説明書：SSD-FD-APU-CIR-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| AP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.1節 Circulation Pump and Heat Exchanger・Hydraulic Heaters（PDF p102〜104）：循環ポンプ（2.4 kW、同時に1台）、フレオン／油圧熱交換器とバイパス弁、SM GPCによる自動制御、油圧ヒータを解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/103） |
| AP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A10-51B（PDF p1567）とA10-74（p1575〜1580）：循環ポンプの喪失の定義と、アキュムレータ圧力の維持・加温・隔離弁の操作などの使い方、ペイロード運用の間の制約を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1575） |
| AP-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 1.3a（PDF p40）とSSR-1〜3（p42〜44）：循環ポンプ圧力の低下（代替電源の選択）と、センサの故障時にテーブル保守でGPC制御を続ける手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=40） |
| AP-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.2.4節（PDF p83・p85）：軌道上で循環ポンプは同時に1台とし、作動油を−4°F未満にせず、循環ポンプの最低運転温度を+20°Fとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=85） |
| AP-07 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 1-3・1-4（PDF p43〜44）：循環ポンプを使った隔離弁の位置の変更と、主母線の母線結合を組み替えて循環ポンプ2・3を手動で30分運転する手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=44） |
| AP-08 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 4.6節 Hydraulic Heat Exchanger（PDF p102）：油圧系はフレオンループのヒートシンクとなり、油圧熱交換器はフレオンの熱で休止中の油圧系を温めると述べる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=102） |

### 3.7 水噴霧ボイラ（WSB）（12件）

機能説明書：SSD-FD-APU-WSB-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| AP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.1節 Water Spray Boilers（PDF p95〜99）：3台のボイラの構成、GN2・給水系、制御器A・Bによる温度制御、作動油のバイパス弁、ヒータを解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/95） |
| AP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A10-101（PDF p1581）とA10-121・122（p1583〜1584）：WSBの喪失の定義、N2供給弁の構成、WSBを失ったときの処置（2台の喪失で次のPLS）を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1583） |
| AP-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 1.2b（PDF p37）：APU停止中の公称構成として、BLR CNTLR/HTR・BLR PWR・BLR N2 SPLYのスイッチ位置を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=37） |
| AP-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.2.4節（PDF p84・p86）：WSBのGN2タンク圧力、調圧器の出口圧力（19.0〜33.5 psig）、APU起動時のベント温度、水温の限界を定める。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=86） |
| AP-06 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | C.17節（PDF p79）：油圧・WSBのNASAの基準（FMEA 364件・CIL 111件）とIOAの相違は、準拠した基準文書の違いによると記す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=79） |
| AP-07 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 7-15（PDF p205）：FCSチェックアウトの起動前にBLR N2 SPLYをON、ボイラの制御器・ヒータをBにする手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=205） |
| AP-09 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 飛行試験問題報告4（PDF p145）：WSB 3の凍結による潤滑油の過熱の原因（予め入れた水が多すぎた）と、STS-3での予め入れる水の削減を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=145） |
| AP-10 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report（1993年） | PDF p6：MECOの後にWSB 3が制御器A・BのいずれでもAPU 3の潤滑油を冷却せず、APU 3を停止した（解析ではWSBの凍結）と記す。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=6） |
| AP-12 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | PDF p10：DTO 850で水・PGMEの混合液によるWSBのホットリスタートと、飛行開始後3.5時間での潤滑油の冷却を実証したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=10） |
| AP-14 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | HYD/WSB System（PDF p45）：上昇・突入のWSBの噴霧開始温度・定常温度とPGME/水の使用量を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=45） |
| AP-15 | NSTS-08291 | STS-59 Space Shuttle Mission Report（1994年） | PDF p7：上昇後にWSB 2が冷却せず、乗員が制御器を2Aから切り替えたが潤滑油戻り温度が323°Fに達してAPU 2を停止したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-59%20Space%20Shuttle%20Mission%20Report.pdf#page=7） |
| AP-16 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） | 2.2.2節（PDF p16）：WSB 3に0.80インチの蒸気ベントノズルを入れ、3台とも5 lbの水を予め入れた結果と、WSB 3の凍結と1分後の解凍を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=16） |

### 3.8 APU/HYD運用管理（OPS）（10件）

機能説明書：SSD-FD-APU-OPS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| AP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.1節 Operations（PDF p104〜105）と6.8節 APU/Hydraulics（p884〜886）：打上げ前から着陸後までの運用の流れと、APU・油圧系の故障の兆候と処置を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/104） |
| AP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A10-21・23・25・28・29・32・33（PDF p1532〜1564）：APU/油圧系を失ったときの処置、突入の起動時刻、高速の選択、AOA・FCSチェックアウトの運用、消耗品、APUの「必要」の定義を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1532） |
| AP-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | APU/HYD SSR-5（PDF p46〜47）：隔離できないAPUの燃料漏れで、APUを起動して燃料を使い切る手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=46） |
| AP-07 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 7-14〜7-18（PDF p204〜208）：FCSチェックアウトはAPU 1台で行い、APUが起動しないときやMCCが指示したときは循環ポンプで簡略化したアクチュエータの点検を行うと示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=204） |
| AP-11 | NSTS-08292 | STS-65 Space Shuttle Mission Report（1994年） | APU Subsystem（PDF p31）：DTO 414としてAPUを着陸後に2・1・3の順に停止し、各APUの運転時間と燃料の消費を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=31） |
| AP-12 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | PDF p45：APUの運転時間と燃料の消費（上昇・DTO・FCSチェックアウト・突入）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=45） |
| AP-13 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | PDF p46：APUの運転時間と燃料の消費（上昇・FCSチェックアウト・突入）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=46） |
| AP-14 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | APU System（PDF p44）：APUの運転時間と燃料の消費（上昇・FCSチェックアウト・突入）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=44） |
| AP-15 | NSTS-08291 | STS-59 Space Shuttle Mission Report（1994年） | PDF p8：APU 2でFCSチェックアウトを行い（12分2秒）、WSB 2の制御器2B・2Aでともに冷却が正常であることを確かめて、突入にWSB 2を制約なく使ったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-59%20Space%20Shuttle%20Mission%20Report.pdf#page=8） |
| AP-16 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） | 2.2.1節（PDF p15）：APUは打上げ5分前に起動してMPSの投棄の後に停止し、突入ではAPU 2を軌道離脱噴射の5分前、APU 1・3を突入インタフェースの13分前に起動したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=15） |

## 4. 文書×機能マトリクス（全件）

| ID | 文書番号 | 表題 | 全般 | FUL | TRB | CTL | HYD | CIR | WSB | OPS | 出典 | URL |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| AP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | ● | ● | ● | ● | ● | ● | ● | ● | 新規 | https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual |
| AP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | ● | ● | ● | ● | ● | ● | ● | ● | 新規 | https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf |
| AP-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | ● | ● | ● | ● | ● | ● | ● | ● | 新規 | https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf |
| AP-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 |  | ● | ● | ● | ● | ● | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf |
| AP-05 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | ● |  | ● | ● | ● |  |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf |
| AP-06 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | ● | ● | ● |  | ● |  | ● |  | 新規 | https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf |
| AP-07 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） |  | ● |  | ● | ● | ● | ● | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf |
| AP-08 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | ● |  |  | ● |  | ● |  |  | 新規 | https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf |
| AP-09 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | ● |  | ● |  | ● |  | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf |
| AP-10 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report（1993年） |  |  | ● |  | ● |  | ● |  | 新規 | https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf |
| AP-11 | NSTS-08292 | STS-65 Space Shuttle Mission Report（1994年） |  |  | ● |  | ● |  |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf |
| AP-12 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） |  | ● |  | ● | ● |  | ● | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf |
| AP-13 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） |  | ● |  |  |  |  |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf |
| AP-14 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） |  | ● |  | ● |  |  | ● | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf |
| AP-15 | NSTS-08291 | STS-59 Space Shuttle Mission Report（1994年） |  |  |  |  |  |  | ● | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-59%20Space%20Shuttle%20Mission%20Report.pdf |
| AP-16 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） |  | ● |  |  |  |  | ● | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
