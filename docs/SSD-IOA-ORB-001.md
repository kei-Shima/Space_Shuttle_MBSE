# IOA 原資料定義書（サブシステム分析ワークシートの在庫と故障モードとの系ごとの対応）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-IOA-ORB-001 |
| 表題 | IOA 原資料定義書（サブシステム分析ワークシートの在庫と故障モードとの系ごとの対応） |
| 版・日付 | 初版（Rev. -）／2026-11-10 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FMEA-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図322 IOA 原資料の構成：サブシステム分析ワークシートの冊子ごとの件数・図323 IOA の件数の実績：分析ワークシートの頁数と中間報告 Table 1-1 の FMEA 件数の系ごとの対比・図324 故障モードとIOA 原資料の対応：FMX の系ごとの故障モード数と IOA の分析冊子 |

## 1. 目的

IOA（Independent Orbiter Assessment。独立オービター評価）の報告のうち、取り込んだ『ANALYSIS OF THE …』10冊（1986〜87）が持つサブシステム分析ワークシートの在庫を数え、モデルの故障モード（SSD-FMX-ORB-001）が IOA の原資料のどの系に対応するかを系の水準で示す。これまでのモデルは、IOA の件数を中間報告の表（SSD-FMEA-<系>-001 の §3）から取り、ワークシートそのものは ECLSS のものを除いて持たなかった。図322〜324 と SysML で示す。**判定・評価は付けない**。

## 2. 範囲と書き方

資料は取り込んだ IOA 31冊のうち『ANALYSIS OF THE …』10冊。ANALYSIS WORKSHEET の見出しを持つ頁を 1枚のワークシートとして数え（5587、続きの頁 40）、全件は doc・SysML に入れず、冊子ごとの件数・系ごとの対比・見本 20件だけを載せる。**規則は数える前に決めた**（rev_dm/PLAN_DM.md）。5フェーズの危険度が読めた記録が 77.0% で基準（80%）に届かず、**危険度の分布の表は作らない**。

## 3. 冊子ごとの件数

取り込んだ IOA の『ANALYSIS OF THE …』10冊ごとの、ANALYSIS WORKSHEET の見出しの頁の数・続きの頁の数・5フェーズ（PRELAUNCH・LIFTOFF・ONORBIT・DEORBIT・LANDING/SAFING）の危険度がラベルつきの欄で全部読めた頁の数。日付は表紙のとおり。

| ID | NTRS | 系 | 題 | 表紙の日付 | ワークシート頁 | 続きの頁 | 5フェーズが読めた | 読めた割合 | 根拠 |
|---|---|---|---|---|---|---|---|---|---|
| IOA-01 | 19900001599 | EPG | 電力発生系・燃料電池 | 5 DECEMBER 1986 | 63 | 0 | 60 | 95.2% | 電力発生系・燃料電池：ANALYSIS OF THE ELECTRICAL POWER GENERATION/FUEL CELL POWERPLANT SUBSYSTEM（5 DECEMBER 1986）（出典: https://ntrs.nasa.gov/api/citations/19900001599/downloads/19900001599.pdf#page=1） |
| IOA-02 | 19900001603 | OMS | 軌道制御系（OMS） | 12 JANUARY 1987 | 953 | 0 | 742 | 77.9% | 軌道制御系（OMS）：ANALYSIS OF THE ORBITAL MANEUVERING SYSTEM（12 JANUARY 1987）（出典: https://ntrs.nasa.gov/api/citations/19900001603/downloads/19900001603.pdf#page=1） |
| IOA-03 | 19900001604 | GNC | 誘導・航法・制御（GN&C） | 19 DECEMBER 1986 | 139 | 1 | 105 | 75.5% | 誘導・航法・制御（GN&C）：ANALYSIS OF THE GUIDANCE, NAVIGATION, AND CONTROL SUBSYSTEM（19 DECEMBER 1986）（出典: https://ntrs.nasa.gov/api/citations/19900001604/downloads/19900001604.pdf#page=1） |
| IOA-04 | 19900001611 | MPS | 主推進系（MPS） | 16 JANUARY 1987 | 691 | 0 | 362 | 52.4% | 主推進系（MPS）：ANALYSIS OF THE MAIN PROPULSION SYSTEM（16 JANUARY 1987）（出典: https://ntrs.nasa.gov/api/citations/19900001611/downloads/19900001611.pdf#page=1） |
| IOA-05 | 19900001615 | APU | 補助動力装置（APU） | 12 DECEMBER 1986 | 282 | 6 | 179 | 63.5% | 補助動力装置（APU）：ANALYSIS OF THE AUXILIARY POWER UNIT（12 DECEMBER 1986）（出典: https://ntrs.nasa.gov/api/citations/19900001615/downloads/19900001615.pdf#page=1） |
| IOA-06 | 19900001622 | RCS | 姿勢制御系（RCS）第1巻 | 19 JANUARY 1987 | 716 | 0 | 598 | 83.5% | 姿勢制御系（RCS）第1巻：ANALYSIS OF THE REACTION CONTROL SYSTEM Vol. 1 of 3（19 JANUARY 1987）（出典: https://ntrs.nasa.gov/api/citations/19900001622/downloads/19900001622.pdf#page=1） |
| IOA-07 | 19900001623 | RCS | 姿勢制御系（RCS）第2巻 | 19 JANUARY 1987 | 790 | 0 | 654 | 82.8% | 姿勢制御系（RCS）第2巻：ANALYSIS OF THE REACTION CONTROL SYSTEM Vol. 2 of 3（19 JANUARY 1987）（出典: https://ntrs.nasa.gov/api/citations/19900001623/downloads/19900001623.pdf#page=1） |
| IOA-08 | 19900001624 | RCS | 姿勢制御系（RCS）第3巻 | 19 JANUARY 1987 | 727 | 28 | 681 | 93.7% | 姿勢制御系（RCS）第3巻：ANALYSIS OF THE REACTION CONTROL SYSTEM Vol. 3 of 3（19 JANUARY 1987）（出典: https://ntrs.nasa.gov/api/citations/19900001624/downloads/19900001624.pdf#page=1） |
| IOA-09 | 19900001627 | LAND | 着陸・減速系（L&D） | 12 JANUARY 1987 | 279 | 1 | 115 | 41.2% | 着陸・減速系（L&D）：ANALYSIS OF THE LANDING/DECELERATION SUBSYSTEM（12 JANUARY 1987）（出典: https://ntrs.nasa.gov/api/citations/19900001627/downloads/19900001627.pdf#page=1） |
| IOA-10 | 19900001651 | CT | 通信・追跡（C&T） | 31 DECEMBER 1987 | 947 | 4 | 807 | 85.2% | 通信・追跡（C&T）：ANALYSIS OF THE COMMUNICATION AND TRACKING SUBSYSTEM（31 DECEMBER 1987）（出典: https://ntrs.nasa.gov/api/citations/19900001651/downloads/19900001651.pdf#page=1） |
| 計 | — | — | 10冊 | — | 5587 | 40 | 4303 | 77.0% | — |

## 4. ワークシートの頁数と Table 1-1 の FMEA 件数の対比

系ごとの、分析ワークシートの見出しの頁の数と、中間報告 NASA-CR-185550 の Table 1-1 の FMEA の IOA 件数（1988-01-01 時点。SSD-FMEA-<系>-001 §3 と同じ値）。**数える単位も日付も違う**（ワークシートは部品の故障モードごとの頁で1986年12月〜1987年1月、Table 1-1 は1988年1月1日時点の FMEA）。比は参考で、どちらかが誤りという意味ではない。

| 系 | 名前 | 冊子 | ワークシート頁 | Table 1-1 の FMEA〔IOA〕 | 頁÷件数 | 根拠 |
|---|---|---|---|---|---|---|
| EPG | 電力発生系・燃料電池 | IOA-01 | 63 | 50 | 126% | 中間報告 Table 1-1：電力発生系・燃料電池の FMEA の IOA 件数 50（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13） |
| OMS | 軌道制御系（OMS） | IOA-02 | 953 | 285 | 334% | 中間報告 Table 1-1：軌道制御系（OMS）の FMEA の IOA 件数 285（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13） |
| GNC | 誘導・航法・制御（GN&C） | IOA-03 | 139 | 175 | 79% | 中間報告 Table 1-1：誘導・航法・制御（GN&C）の FMEA の IOA 件数 175（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13） |
| MPS | 主推進系（MPS） | IOA-04 | 691 | 1365 | 51% | 中間報告 Table 1-1：主推進系（MPS）の FMEA の IOA 件数 1365（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13） |
| APU | 補助動力装置（APU） | IOA-05 | 282 | 314 | 90% | 中間報告 Table 1-1：補助動力装置（APU）の FMEA の IOA 件数 314（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13） |
| RCS | 姿勢制御系（RCS） | IOA-06・IOA-07・IOA-08 | 2233 | 763 | 293% | 中間報告 Table 1-1：姿勢制御系（RCS）の FMEA の IOA 件数 763（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13） |
| LAND | 着陸・減速系（L&D） | IOA-09 | 279 | 246 | 113% | 中間報告 Table 1-1：着陸・減速系（L&D）の FMEA の IOA 件数 246（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13） |
| CT | 通信・追跡（C&T） | IOA-10 | 947 | 1108 | 85% | 中間報告 Table 1-1：通信・追跡（C&T）の FMEA の IOA 件数 1108（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13） |

## 5. 故障モードと IOA の分析冊子の系ごとの対応

SSD-FMX-ORB-001 の系ごとの故障モード数と、同じ範囲を持つ IOA の分析冊子の系。軌道制御系（OMS）には IOA の分析冊子があるが、SSD-FMX-ORB-001 に OMS の故障モードは無い（OMS は SSD-FMEA-OMS-001 が持つ）。機能ブロック（FD）水準の結びは、Table 1-1 が別のサブシステムに数える4ブロックの除外だけで、そのほかは作っていない（IOA の階層の語は部品の水準）。

| FMX の系・ブロック | 名前 | 故障モード | IOA の系 | 範囲 | IOA のワークシート頁 |
|---|---|---|---|---|---|
| GNC | 誘導・航法・制御（GN&C） | 9 | GNC | 同じ範囲 | 139 |
| GNC-ACT | 誘導・航法・制御（GN&C）のうち 舵面・推力方向制御駆動（ACT）（Table 1-1：Hydraulic Actuators (HA)） | 5 | — | 別の IOA サブシステム（冊子を取り込んでいない） | — |
| RCS | 姿勢制御系（RCS） | 15 | RCS | 同じ範囲 | 2233 |
| DPS | データ処理系（DPS） | 21 | — | 分析冊子が無い | — |
| CW | 警報系（C/W） | 4 | — | 分析冊子が無い | — |
| CT | 通信・追跡系（C&T） | 16 | CT | 同じ範囲 | 947 |
| CT-INST | 通信・追跡系（C&T）のうち 計装・ペイロード通信（INST）（Table 1-1：Instrumentation (INST)） | 4 | — | 別の IOA サブシステム（冊子を取り込んでいない） | — |
| EVA | 船外活動（EVA） | 18 | — | 分析冊子が無い | — |
| CREW | 乗員系・脱出系（CREW） | 22 | — | 分析冊子が無い | — |
| PLS | ペイロード支援（PLS） | 10 | — | 分析冊子が無い | — |
| APU | 補助動力装置・油圧系（APU/HYD） | 9 | APU | 同じ範囲 | 282 |
| APU-WSB | 補助動力装置・油圧系（APU/HYD）のうち 水噴霧ボイラ（WSB）（Table 1-1：Hydraulics & Water Spray Boiler (HYD & WSB)） | 4 | — | 別の IOA サブシステム（冊子を取り込んでいない） | — |
| MECH | 機械系（MECH） | 10 | LAND | 別の範囲（FMX は PDU・MCA と運用。IOA の冊子は着陸・減速） | 279 |
| STR | 構造（STR） | 11 | — | 分析冊子が無い | — |
| EPS | 電力系（EPS） | 8 | EPG | 別の範囲（FMX は交流・直流配電。IOA の冊子は燃料電池） | 63 |
| MPS | 主推進系（MPS） | 2 | MPS | 同じ範囲 | 691 |
| MPS-TVC | 主推進系（MPS）のうち 油圧・推力方向制御（TVC）（Table 1-1：Hydraulic Actuators (HA)） | 5 | — | 別の IOA サブシステム（冊子を取り込んでいない） | — |
| 計 | 173件 | 173 | — | 同じ範囲 51・範囲が違う 18・別の IOA サブシステム 18・冊子が無い 86 | — |

## 6. ワークシートの見本（無作為 20件）

20件を FAILURE MODE の欄が30字以上読めた記録から無作為（seed 11）に選んだ見本。階層は OCR で番号が先に並ぶので1本の文字列の末尾、フェーズ別の危険度は『ハードウェア／機能』の形で本文のまま（読めなかった欄は『—』）。分布や一覧ではなく、取り出しを本文と照らすための抜き出し。

| ID | 系 | 冊子 | PDF頁 | 階層（末尾） | 故障モード（本文） | PRELAUNCH | LIFTOFF | ONORBIT | DEORBIT | LANDING/SAFING | 根拠 |
|---|---|---|---|---|---|---|---|---|---|---|---|
| IOW-001 | OMS | IOA-02 | 586 | NSTRUMENTATION PROP STOR & DIST SUBSYSTEM METER, FRCS/OMS KIT PRESSURE | METER, FRCS/OMS KIT PRESSURE ERRONEOUS OUTPUT | 3/3 | 3/2R | 3/3 | 3/3 | 3/3 | 軌道制御系（OMS）のワークシート（PDF 頁 586）：METER, FRCS/OMS KIT PRESSURE ERRONEOUS OUTPUT（出典: https://ntrs.nasa.gov/api/citations/19900001603/downloads/19900001603.pdf#page=586） |
| IOW-002 | MPS | IOA-04 | 109 | 9) MPS 02 SUBSYSTEM LO2 FILL & DRAIN L02 OUTBOARD FILL AND DRAIN VALVE | L02 OUTBOARD FILL AND DRAIN VALVE (PVg) EXTERNAL LEAKAGE | 1/1 | — | — | — | — | 主推進系（MPS）のワークシート（PDF 頁 109）：L02 OUTBOARD FILL AND DRAIN VALVE (PVg) EXTERNAL LEAKAGE（出典: https://ntrs.nasa.gov/api/citations/19900001611/downloads/19900001611.pdf#page=109） |
| IOW-003 | MPS | IOA-04 | 115 | 8) MPS 02 SUBSYSTEM LO2 FILL & DRAIN LO2 OUTBOARD FILL AND DRAIN VALVE | LO2 INBOARD FILL AND DRAIN VALVE (PVI0) FAILS TO OPEN, FAILS TO REMAIN OPEN | 1/1 | — | — | — | — | 主推進系（MPS）のワークシート（PDF 頁 115）：LO2 INBOARD FILL AND DRAIN VALVE (PVI0) FAILS TO OPEN, FAILS（出典: https://ntrs.nasa.gov/api/citations/19900001611/downloads/19900001611.pdf#page=115） |
| IOW-004 | MPS | IOA-04 | 130 | SUBSYSTEM LO2 PROP FEED LO2 POGO ACCUMULATOR RECIRCULATION VALVE 6) 8) | LO2 POGO ACCUMULATOR RECIRCULATION VALVE (PV20, EXTERIOR LEAKAGE | — | — | — | — | — | 主推進系（MPS）のワークシート（PDF 頁 130）：LO2 POGO ACCUMULATOR RECIRCULATION VALVE (PV20, EXTERIOR LEA（出典: https://ntrs.nasa.gov/api/citations/19900001611/downloads/19900001611.pdf#page=130） |
| IOW-005 | RCS | IOA-07 | 24 | & FU ISOL VLVS MANIFOLD 5, OX & FU ISOL VLV SWITCH OPEN CONTACTS 7, 8 | MANIFOLD 5, OX & FU ISOL VLV SWITCH OPEN CONTACTS SWITCH OPEN CONTACTS FAIL CLOS… | 3/3 | 3/3 | 3/3 | 3/3 | 3/3 | 姿勢制御系（RCS）第2巻のワークシート（PDF 頁 24）：MANIFOLD 5, OX & FU ISOL VLV SWITCH OPEN CONTACTS SWITCH OPE（出典: https://ntrs.nasa.gov/api/citations/19900001623/downloads/19900001623.pdf#page=24） |
| IOW-006 | RCS | IOA-07 | 27 | FU ISOL VLVS MANIFOLD 5, OX & FU ISOL VLV SWITCH CLOSE CONTACTS ii, 12 | MANIFOLD 5, OX & FU ISOL VLV SWITCH CLOSE CONTACTS SWITCH CLOSE CONTACTS FAIL OP… | 3/3 | 3/3 | 3/3 | 3/3 | 3/3 | 姿勢制御系（RCS）第2巻のワークシート（PDF 頁 27）：MANIFOLD 5, OX & FU ISOL VLV SWITCH CLOSE CONTACTS SWITCH CL（出典: https://ntrs.nasa.gov/api/citations/19900001623/downloads/19900001623.pdf#page=27） |
| IOW-007 | RCS | IOA-07 | 84 | CONTROLS THRUSTER SUBSYSTEM MANIFOLD 3, RJDF CONTROLLER, REMOTE POWER | CONTROLLER, REMOTE POWER FAILS HIGH HDW/FUNC 3/3 3/3 | 3/3 | 3/3 | 3/3 | 3/3 | 3/3 | 姿勢制御系（RCS）第2巻のワークシート（PDF 頁 84）：CONTROLLER, REMOTE POWER FAILS HIGH HDW/FUNC 3/3 3/3（出典: https://ntrs.nasa.gov/api/citations/19900001623/downloads/19900001623.pdf#page=84） |
| IOW-008 | RCS | IOA-07 | 192 | NENTS CONTROLS THRUSTER SUBSYSTEM MANIFOLD 2, RJDF RESISTOR, 1.8K i/4W | RESISTOR, 1.8K I/4W FAILS OPEN | 3/3 | 3/3 | 3/3 | 3/3 | 3/3 | 姿勢制御系（RCS）第2巻のワークシート（PDF 頁 192）：RESISTOR, 1.8K I/4W FAILS OPEN（出典: https://ntrs.nasa.gov/api/citations/19900001623/downloads/19900001623.pdf#page=192） |
| IOW-009 | RCS | IOA-07 | 362 | ) 7) 9) POD THERMAL CONTROL SUBSYSTEM HTR PNL B, OX FWD DRIVER, HYBRID | DRIVER, HYBRID FAILS OPEN HDW/FUNC 3/2R 3/3 | 3/3 | 3/3 | 3/2R | 3/3 | 3/3 | 姿勢制御系（RCS）第2巻のワークシート（PDF 頁 362）：DRIVER, HYBRID FAILS OPEN HDW/FUNC 3/2R 3/3（出典: https://ntrs.nasa.gov/api/citations/19900001623/downloads/19900001623.pdf#page=362） |
| IOW-010 | RCS | IOA-07 | 400 | SUBSYSTEM PRIMARY MANIFOLD JETS HEATER 20W, THRUSTER, PRIMARY, Y AXIS | HEATER 20W, THRUSTER, PRIMARY, Y AXIS FAILS SHORT | 3/3 | 3/3 | 3/2R | 3/1R | 3/3 | 姿勢制御系（RCS）第2巻のワークシート（PDF 頁 400）：HEATER 20W, THRUSTER, PRIMARY, Y AXIS FAILS SHORT（出典: https://ntrs.nasa.gov/api/citations/19900001623/downloads/19900001623.pdf#page=400） |
| IOW-011 | RCS | IOA-08 | 87 | & DIST SUBSYSTEM MANIFOLD 2, L/R OX & FU ISOL VLVS RESISTOR, 5.1K I/4W | RESISTOR, 5.1K 1/4W FAILS OPEN | 3/3 | 3/3 | 3/3 | 3/3 | 3/3 | 姿勢制御系（RCS）第3巻のワークシート（PDF 頁 87）：RESISTOR, 5.1K 1/4W FAILS OPEN（出典: https://ntrs.nasa.gov/api/citations/19900001624/downloads/19900001624.pdf#page=87） |
| IOW-012 | RCS | IOA-08 | 221 | IFOLD 3, L/R OX & FU ISOL VLVS MANIFOLD 3, L/R OX & FU ISOL VLV SWITCH | SWITCH FAILS IN THE GPC POSITION. | 3/3 | 3/3 | 3/2R | 3/2R | 3/3 | 姿勢制御系（RCS）第3巻のワークシート（PDF 頁 221）：SWITCH FAILS IN THE GPC POSITION.（出典: https://ntrs.nasa.gov/api/citations/19900001624/downloads/19900001624.pdf#page=221） |
| IOW-013 | RCS | IOA-08 | 471 | NENTS CONTROLS THRUSTER SUBSYSTEM MANIFOLD 2, RJDA RESISTOR, 1.8K I/4W | RESISTOR, 1.8K I/4W FAILS SHORT | 3/3 | 3/3 | 3/3 | 3/3 | 3/3 | 姿勢制御系（RCS）第3巻のワークシート（PDF 頁 471）：RESISTOR, 1.8K I/4W FAILS SHORT（出典: https://ntrs.nasa.gov/api/citations/19900001624/downloads/19900001624.pdf#page=471） |
| IOW-014 | RCS | IOA-08 | 555 | L5/RI, RJDAIB RJDAIB LI/L5/R1 MANIFOLD DRIVER OFF SWITCH CONTACTS 7, 8 | RJDAIB LI/L5/RI MANIFOLD DRIVER OFF SWITCH SWITCH OFF CONTACTS FAIL OPEN. | 3/3 | 3/3 | 3/3 | 3/3 | 3/3 | 姿勢制御系（RCS）第3巻のワークシート（PDF 頁 555）：RJDAIB LI/L5/RI MANIFOLD DRIVER OFF SWITCH SWITCH OFF CONTAC（出典: https://ntrs.nasa.gov/api/citations/19900001624/downloads/19900001624.pdf#page=555） |
| IOW-015 | CT | IOA-10 | 426 | — | KU BD CONTROL SW (CMD/PNL) ELECTRICAL OPEN/SHORT | 3/3 | 3/3 | — | 3/3 | — | 通信・追跡（C&T）のワークシート（PDF 頁 426）：KU BD CONTROL SW (CMD/PNL) ELECTRICAL OPEN/SHORT（出典: https://ntrs.nasa.gov/api/citations/19900001651/downloads/19900001651.pdf#page=426） |
| IOW-016 | CT | IOA-10 | 500 | — | FAILS TO REMAIN OPEN/CLOSED' PHYSICAL BINDING/JAMMING, OPEN (ELECTRICAL) | — | — | 3/2R | — | — | 通信・追跡（C&T）のワークシート（PDF 頁 500）：FAILS TO REMAIN OPEN/CLOSED' PHYSICAL BINDING/JAMMING, OPEN （出典: https://ntrs.nasa.gov/api/citations/19900001651/downloads/19900001651.pdf#page=500） |
| IOW-017 | CT | IOA-10 | 551 | TRACK NAVAIDS KU-BAND COMM/RADAR RENDEZVOUS RADAR ANT SEARCH SELECT SW | ANT SEARCH SELECT SWITCH (REF KU-BAND COMM) FAILS TO SWITCH | 3/3 | 3/3 | 3/3 | 3/3 | 3/3 | 通信・追跡（C&T）のワークシート（PDF 頁 551）：ANT SEARCH SELECT SWITCH (REF KU-BAND COMM) FAILS TO SWITCH（出典: https://ntrs.nasa.gov/api/citations/19900001651/downloads/19900001651.pdf#page=551） |
| IOW-018 | CT | IOA-10 | 789 | COMM & TRACK 3) 5) 7) 9) CCTV TV CAMERA (TVC) GAMMA CONTROL SW | FLT DECK TVC WHITE STRCH GAMMA CONTROL SWITCH FAILS TO SWITCH | 3/3 | 3/3 | 3/3 | 3/3 | 3/3R | 通信・追跡（C&T）のワークシート（PDF 頁 789）：FLT DECK TVC WHITE STRCH GAMMA CONTROL SWITCH FAILS TO SWITC（出典: https://ntrs.nasa.gov/api/citations/19900001651/downloads/19900001651.pdf#page=789） |
| IOW-019 | CT | IOA-10 | 797 | — | MID DECK TVC NORM GAMMA CONTROL SWITCH FAILS TO SWITCH | 3/3 | 3/3 | 3/3 | 3/3 | 3/3 | 通信・追跡（C&T）のワークシート（PDF 頁 797）：MID DECK TVC NORM GAMMA CONTROL SWITCH FAILS TO SWITCH（出典: https://ntrs.nasa.gov/api/citations/19900001651/downloads/19900001651.pdf#page=797） |
| IOW-020 | CT | IOA-10 | 839 | COMM & TRACK CCTV TV CAMERA (TVC) MONOCHROME LENS FOCUS SW 7) 9) | TVC D MONOCHROME LENS ASSY IRIS CONTROL SWITCH FAILS TO SWITCH | 3/3 | 3/3 | 2/1R | 3/3 | 3/3 | 通信・追跡（C&T）のワークシート（PDF 頁 839）：TVC D MONOCHROME LENS ASSY IRIS CONTROL SWITCH FAILS TO SWIT（出典: https://ntrs.nasa.gov/api/citations/19900001651/downloads/19900001651.pdf#page=839） |

## 7. 事前の基準と結果

基準は数える前に決めた（rev_dm/PLAN_DM.md §1）。パーサーは v1 → v2 の1回の修正（ラベルの OCR の揺れを許す）の後に凍結して1回だけ評価した。

| 基準 | 結果 | 扱い |
|---|---|---|
| (a) ワークシートの記録 500 以上 | 5587 | 満たす |
| (b) 5フェーズの危険度が読めた記録 80% 以上 | 4303（77.0%。v1 は 3,735〔67.0%〕） | 未達 → 危険度の分布の表は作らない |
| (c) FMX の故障モードの系ごとの対応を数える | 同じ範囲 51・範囲が違う 18・別の IOA サブシステム 18・冊子が無い 86（計 173） | 数えた（判定は付けない） |

## 8. 図

図322〜324：図322 は冊子ごとの件数の表、図323 は分析ワークシートの頁数と Table 1-1 の FMEA 件数の系ごとの対比、図324 は FMX の故障モードの系と IOA の分析冊子の対応である。

## 9. SysML v2 テキスト

同じ内容を SysML v2 のテキスト [SysML/SSD-IOA-ORB-001.sysml](../SysML/SSD-IOA-ORB-001.sysml) に示す。冊子 10・件数の対比 8・FMX の系・機能ブロックごとの対応 17 から成る。OMG SysML v2 Pilot Implementation 0.62.0（2026-08 リリース、標準ライブラリ付き）で読み込んで、構文・名前の解決・型の検査で誤り 0件・警告 0件を確かめた。ワークシートの全件・危険度は持たない。

## 10. 注記（出典間の相違・構成変更）

> **注記** 範囲・取れなかった値・本書の判断：本書は IOA の『ANALYSIS OF THE …』10冊（1986〜87）のサブシステム分析ワークシートの在庫を数えたもの。記録の単位は ANALYSIS WORKSHEET の見出しの頁（5587、続きの頁 40）。**判定・評価は付けない**。

> **注記** 範囲・取れなかった値・本書の判断：**危険度の分布の表は作らない（基準 (b) の未達）**：ラベルつきの5フェーズ（PRELAUNCH・LIFTOFF・ONORBIT・DEORBIT・LANDING/SAFING）の危険度がすべて読めた記録は 4303（77.0%）で、事前の基準（80% 以上）に届かなかった。パーサーは v1（最初の版）で 3,735（67.0%）、ラベルの OCR の揺れを許す v2 で上の値になり、v2 を凍結して1回だけ評価した。届かなかった主な理由は、OCR でフェーズのラベルが落ちた頁（『CRITICALITIES ABORT HDW/FUNC …』の後にラベル無しの値だけが並ぶ）。読めなかった頁の危険度が偏っている可能性があるため、読めた分だけの分布も載せない。

> **注記** 範囲・取れなかった値・本書の判断：**記録の単位の変更**：当初は『系＋MDAC ID』で記録を分ける想定だったが、MDAC ID の OCR の読み取りが日付の数字を拾うなどで不確か（鍵にすると 2,043 件が偽の重複になる）だったため、記録の単位を見出しの頁にした。MDAC ID は本書に載せない。

> **注記** 範囲・取れなかった値・本書の判断：**ASSESSMENT の冊子は使っていない**：取り込んだ IOA 31冊のうち、『ASSESSMENT OF THE …』21冊（1988、NASA の FMEA との比較）は OCR が1語1行で欄が崩れ、DPS（NTRS 19900001601）は『ANALYSIS』の冊が無い。これらは記録にしていない。

> **注記** 範囲・取れなかった値・本書の判断：**件数の対比（図323）**：分析ワークシートの頁数と、中間報告 Table 1-1 の FMEA 件数は、数える単位も日付も違う（ワークシートは部品の故障モードごとの頁で1986年12月〜1987年1月、Table 1-1 は1988年1月1日時点）。差は日付と単位の違いによる可能性を示すだけで、どちらかが誤りという意味ではない（頁が Table 1-1 の件数より多い系：EPG・OMS・RCS・LAND、少ない系：GNC・MPS・APU・CT）。

> **注記** 範囲・取れなかった値・本書の判断：**故障モードとの対応（図324）は系の水準**：SSD-FMX-ORB-001 の故障モード 173件のうち、同じ範囲の IOA の分析冊子を持つ系は 51件（GN&C・RCS・C&T・APU・MPS）、冊子はあるが範囲が違う系は 18件（MECH・EPS）、同じ系でも Table 1-1 が別の IOA サブシステムとして数え冊子を取り込んでいない機能ブロックは 18件（APU-WSB・GNC-ACT・MPS-TVC・CT-INST。機能ブロックの題と Table 1-1 の行名を読んだ判断）、冊子が無い系は 86件（DPS・C/W・EVA・CREW・PLS・STR）。軌道制御系（OMS）には IOA の分析冊子があるが、SSD-FMX-ORB-001 に OMS の故障モードは無い（OMS は SSD-FMEA-OMS-001 が持つ）。IOA の階層の語は部品の水準で、機能ブロック（FD）に結ぶ語の表は判断になりすぎるため作っていない（機能ブロック水準の結びは後の版の候補）。

> **注記** 範囲・取れなかった値・本書の判断：**見本（無作為 20 件、seed 11）**は、パーサー v2 の取り出しを目で本文と照らすための抜き出しで、分布や一覧ではない。値は本文の綴りのまま（OCR の誤りを含む）。

> **注記** 範囲・取れなかった値・本書の判断：ワークシートの全件（見出しの頁、階層、危険度、原因、影響）は research/rev_dm/ioa_ws.json にあり、doc・SysML には入れない。

## 11. 参考文献

1. Independent Orbiter Assessment (IOA): Analysis of the electrical power generation/fuel cell powerplant subsystem（NASA-CR-185561 / REPT-1.0-WP-VA86001-10。101頁、3,143,746 バイト。OCR のテキスト層あり〔1語1行で欄が崩れる〕。NTRS 19900001599。取得 2026-11-10。原本は Document/Done/sv_ioa_19900001599.pdf） （PDF p1） — https://ntrs.nasa.gov/api/citations/19900001599/downloads/19900001599.pdf#page=1
2. Independent Orbiter Assessment (IOA): Analysis of the orbital maneuvering system（NASA-CR-185554 / REPT-1.0-WP-VA86001-21。1046頁、37,774,436 バイト。OCR のテキスト層あり〔1語1行で欄が崩れる〕。NTRS 19900001603。取得 2026-11-10。原本は Document/Done/sv_ioa_19900001603.pdf） （PDF p1） — https://ntrs.nasa.gov/api/citations/19900001603/downloads/19900001603.pdf#page=1
3. Independent Orbiter Assessment (IOA): Analysis of the guidance, navigation, and control subsystem（REPT-1.0-WP-VA86001-16 / NASA-CR-185555。190頁、5,862,580 バイト。OCR のテキスト層あり〔1語1行で欄が崩れる〕。NTRS 19900001604。取得 2026-11-10。原本は Document/Done/sv_ioa_19900001604.pdf） （PDF p1） — https://ntrs.nasa.gov/api/citations/19900001604/downloads/19900001604.pdf#page=1
4. Independent Orbiter Assessment (IOA): Analysis of the orbiter main propulsion system（REPT-1.0-WP-VA86001-22 / NASA-CR-185584。752頁、25,188,324 バイト。OCR のテキスト層あり〔1語1行で欄が崩れる〕。NTRS 19900001611。取得 2026-11-10。原本は Document/Done/sv_ioa_19900001611.pdf） （PDF p1） — https://ntrs.nasa.gov/api/citations/19900001611/downloads/19900001611.pdf#page=1
5. Independent Orbiter Assessment (IOA): Analysis of the auxiliary power unit（REPT-1.0-WP-VA86001-14 / NASA-CR-185568。350頁、10,646,364 バイト。OCR のテキスト層あり〔1語1行で欄が崩れる〕。NTRS 19900001615。取得 2026-11-10。原本は Document/Done/sv_ioa_19900001615.pdf） （PDF p1） — https://ntrs.nasa.gov/api/citations/19900001615/downloads/19900001615.pdf#page=1
6. Independent Orbiter Assessment (IOA): Analysis of the reaction control system, volume 1（REPT-1.0-WP-VA86001-27-VOL-1 / NASA-CR-185532-VOL-1。796頁、26,361,105 バイト。OCR のテキスト層あり〔1語1行で欄が崩れる〕。NTRS 19900001622。取得 2026-11-10。原本は Document/Done/sv_ioa_19900001622.pdf） （PDF p1） — https://ntrs.nasa.gov/api/citations/19900001622/downloads/19900001622.pdf#page=1
7. Independent Orbiter Assessment (IOA): Analysis of the reaction control system, volume 2（NASA-CR-185532-VOL-2 / REPT-1.0-WP-VA86001-27-VOL-2。796頁、26,866,127 バイト。OCR のテキスト層あり〔1語1行で欄が崩れる〕。NTRS 19900001623。取得 2026-11-10。原本は Document/Done/sv_ioa_19900001623.pdf） （PDF p1） — https://ntrs.nasa.gov/api/citations/19900001623/downloads/19900001623.pdf#page=1
8. Independent Orbiter Assessment (IOA): Analysis of the reaction control system, volume 3（NASA-CR-185532-VOL-3 / REPT-1.0-WP-VA86001-27-VOL-3。788頁、28,110,120 バイト。OCR のテキスト層あり〔1語1行で欄が崩れる〕。NTRS 19900001624。取得 2026-11-10。原本は Document/Done/sv_ioa_19900001624.pdf） （PDF p1） — https://ntrs.nasa.gov/api/citations/19900001624/downloads/19900001624.pdf#page=1
9. Independent Orbiter Assessment (IOA): Analysis of the landing/deceleration subsystem（NASA-CR-185569 / REPT-1.0-WP-VA86001-25。332頁、11,273,846 バイト。OCR のテキスト層あり〔1語1行で欄が崩れる〕。NTRS 19900001627。取得 2026-11-10。原本は Document/Done/sv_ioa_19900001627.pdf） （PDF p1） — https://ntrs.nasa.gov/api/citations/19900001627/downloads/19900001627.pdf#page=1
10. Independent Orbiter Assessment (IOA): Analysis of the communication and tracking subsystem（NASA-CR-185582 / REPT-1.0-WP-VA87001-09。1028頁、44,649,370 バイト。OCR のテキスト層あり〔1語1行で欄が崩れる〕。NTRS 19900001651。取得 2026-11-10。原本は Document/Done/sv_ioa_19900001651.pdf） （PDF p1） — https://ntrs.nasa.gov/api/citations/19900001651/downloads/19900001651.pdf#page=1
11. NASA-CR-185550 IOA: FMEA/CIL Assessment Interim Report Table 1-1 FMEA/CIL Assessment Overview (Interim)（PDF p13） — https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13
12. Independent Orbiter Assessment (IOA): Analysis of the orbital maneuvering system（NASA-CR-185554 / REPT-1.0-WP-VA86001-21。1046頁、37,774,436 バイト。OCR のテキスト層あり〔1語1行で欄が崩れる〕。NTRS 19900001603。取得 2026-11-10。原本は Document/Done/sv_ioa_19900001603.pdf） （PDF p586） — https://ntrs.nasa.gov/api/citations/19900001603/downloads/19900001603.pdf#page=586
13. Independent Orbiter Assessment (IOA): Analysis of the orbiter main propulsion system（REPT-1.0-WP-VA86001-22 / NASA-CR-185584。752頁、25,188,324 バイト。OCR のテキスト層あり〔1語1行で欄が崩れる〕。NTRS 19900001611。取得 2026-11-10。原本は Document/Done/sv_ioa_19900001611.pdf） （PDF p109） — https://ntrs.nasa.gov/api/citations/19900001611/downloads/19900001611.pdf#page=109
14. Independent Orbiter Assessment (IOA): Analysis of the orbiter main propulsion system（REPT-1.0-WP-VA86001-22 / NASA-CR-185584。752頁、25,188,324 バイト。OCR のテキスト層あり〔1語1行で欄が崩れる〕。NTRS 19900001611。取得 2026-11-10。原本は Document/Done/sv_ioa_19900001611.pdf） （PDF p115） — https://ntrs.nasa.gov/api/citations/19900001611/downloads/19900001611.pdf#page=115
15. Independent Orbiter Assessment (IOA): Analysis of the orbiter main propulsion system（REPT-1.0-WP-VA86001-22 / NASA-CR-185584。752頁、25,188,324 バイト。OCR のテキスト層あり〔1語1行で欄が崩れる〕。NTRS 19900001611。取得 2026-11-10。原本は Document/Done/sv_ioa_19900001611.pdf） （PDF p130） — https://ntrs.nasa.gov/api/citations/19900001611/downloads/19900001611.pdf#page=130
16. Independent Orbiter Assessment (IOA): Analysis of the reaction control system, volume 2（NASA-CR-185532-VOL-2 / REPT-1.0-WP-VA86001-27-VOL-2。796頁、26,866,127 バイト。OCR のテキスト層あり〔1語1行で欄が崩れる〕。NTRS 19900001623。取得 2026-11-10。原本は Document/Done/sv_ioa_19900001623.pdf） （PDF p24） — https://ntrs.nasa.gov/api/citations/19900001623/downloads/19900001623.pdf#page=24
17. Independent Orbiter Assessment (IOA): Analysis of the reaction control system, volume 2（NASA-CR-185532-VOL-2 / REPT-1.0-WP-VA86001-27-VOL-2。796頁、26,866,127 バイト。OCR のテキスト層あり〔1語1行で欄が崩れる〕。NTRS 19900001623。取得 2026-11-10。原本は Document/Done/sv_ioa_19900001623.pdf） （PDF p27） — https://ntrs.nasa.gov/api/citations/19900001623/downloads/19900001623.pdf#page=27
18. Independent Orbiter Assessment (IOA): Analysis of the reaction control system, volume 2（NASA-CR-185532-VOL-2 / REPT-1.0-WP-VA86001-27-VOL-2。796頁、26,866,127 バイト。OCR のテキスト層あり〔1語1行で欄が崩れる〕。NTRS 19900001623。取得 2026-11-10。原本は Document/Done/sv_ioa_19900001623.pdf） （PDF p84） — https://ntrs.nasa.gov/api/citations/19900001623/downloads/19900001623.pdf#page=84
19. Independent Orbiter Assessment (IOA): Analysis of the reaction control system, volume 2（NASA-CR-185532-VOL-2 / REPT-1.0-WP-VA86001-27-VOL-2。796頁、26,866,127 バイト。OCR のテキスト層あり〔1語1行で欄が崩れる〕。NTRS 19900001623。取得 2026-11-10。原本は Document/Done/sv_ioa_19900001623.pdf） （PDF p192） — https://ntrs.nasa.gov/api/citations/19900001623/downloads/19900001623.pdf#page=192
20. Independent Orbiter Assessment (IOA): Analysis of the reaction control system, volume 2（NASA-CR-185532-VOL-2 / REPT-1.0-WP-VA86001-27-VOL-2。796頁、26,866,127 バイト。OCR のテキスト層あり〔1語1行で欄が崩れる〕。NTRS 19900001623。取得 2026-11-10。原本は Document/Done/sv_ioa_19900001623.pdf） （PDF p362） — https://ntrs.nasa.gov/api/citations/19900001623/downloads/19900001623.pdf#page=362
21. Independent Orbiter Assessment (IOA): Analysis of the reaction control system, volume 2（NASA-CR-185532-VOL-2 / REPT-1.0-WP-VA86001-27-VOL-2。796頁、26,866,127 バイト。OCR のテキスト層あり〔1語1行で欄が崩れる〕。NTRS 19900001623。取得 2026-11-10。原本は Document/Done/sv_ioa_19900001623.pdf） （PDF p400） — https://ntrs.nasa.gov/api/citations/19900001623/downloads/19900001623.pdf#page=400
22. Independent Orbiter Assessment (IOA): Analysis of the reaction control system, volume 3（NASA-CR-185532-VOL-3 / REPT-1.0-WP-VA86001-27-VOL-3。788頁、28,110,120 バイト。OCR のテキスト層あり〔1語1行で欄が崩れる〕。NTRS 19900001624。取得 2026-11-10。原本は Document/Done/sv_ioa_19900001624.pdf） （PDF p87） — https://ntrs.nasa.gov/api/citations/19900001624/downloads/19900001624.pdf#page=87
23. Independent Orbiter Assessment (IOA): Analysis of the reaction control system, volume 3（NASA-CR-185532-VOL-3 / REPT-1.0-WP-VA86001-27-VOL-3。788頁、28,110,120 バイト。OCR のテキスト層あり〔1語1行で欄が崩れる〕。NTRS 19900001624。取得 2026-11-10。原本は Document/Done/sv_ioa_19900001624.pdf） （PDF p221） — https://ntrs.nasa.gov/api/citations/19900001624/downloads/19900001624.pdf#page=221
24. Independent Orbiter Assessment (IOA): Analysis of the reaction control system, volume 3（NASA-CR-185532-VOL-3 / REPT-1.0-WP-VA86001-27-VOL-3。788頁、28,110,120 バイト。OCR のテキスト層あり〔1語1行で欄が崩れる〕。NTRS 19900001624。取得 2026-11-10。原本は Document/Done/sv_ioa_19900001624.pdf） （PDF p471） — https://ntrs.nasa.gov/api/citations/19900001624/downloads/19900001624.pdf#page=471
25. Independent Orbiter Assessment (IOA): Analysis of the reaction control system, volume 3（NASA-CR-185532-VOL-3 / REPT-1.0-WP-VA86001-27-VOL-3。788頁、28,110,120 バイト。OCR のテキスト層あり〔1語1行で欄が崩れる〕。NTRS 19900001624。取得 2026-11-10。原本は Document/Done/sv_ioa_19900001624.pdf） （PDF p555） — https://ntrs.nasa.gov/api/citations/19900001624/downloads/19900001624.pdf#page=555
26. Independent Orbiter Assessment (IOA): Analysis of the communication and tracking subsystem（NASA-CR-185582 / REPT-1.0-WP-VA87001-09。1028頁、44,649,370 バイト。OCR のテキスト層あり〔1語1行で欄が崩れる〕。NTRS 19900001651。取得 2026-11-10。原本は Document/Done/sv_ioa_19900001651.pdf） （PDF p426） — https://ntrs.nasa.gov/api/citations/19900001651/downloads/19900001651.pdf#page=426
27. Independent Orbiter Assessment (IOA): Analysis of the communication and tracking subsystem（NASA-CR-185582 / REPT-1.0-WP-VA87001-09。1028頁、44,649,370 バイト。OCR のテキスト層あり〔1語1行で欄が崩れる〕。NTRS 19900001651。取得 2026-11-10。原本は Document/Done/sv_ioa_19900001651.pdf） （PDF p500） — https://ntrs.nasa.gov/api/citations/19900001651/downloads/19900001651.pdf#page=500
28. Independent Orbiter Assessment (IOA): Analysis of the communication and tracking subsystem（NASA-CR-185582 / REPT-1.0-WP-VA87001-09。1028頁、44,649,370 バイト。OCR のテキスト層あり〔1語1行で欄が崩れる〕。NTRS 19900001651。取得 2026-11-10。原本は Document/Done/sv_ioa_19900001651.pdf） （PDF p551） — https://ntrs.nasa.gov/api/citations/19900001651/downloads/19900001651.pdf#page=551
29. Independent Orbiter Assessment (IOA): Analysis of the communication and tracking subsystem（NASA-CR-185582 / REPT-1.0-WP-VA87001-09。1028頁、44,649,370 バイト。OCR のテキスト層あり〔1語1行で欄が崩れる〕。NTRS 19900001651。取得 2026-11-10。原本は Document/Done/sv_ioa_19900001651.pdf） （PDF p789） — https://ntrs.nasa.gov/api/citations/19900001651/downloads/19900001651.pdf#page=789
30. Independent Orbiter Assessment (IOA): Analysis of the communication and tracking subsystem（NASA-CR-185582 / REPT-1.0-WP-VA87001-09。1028頁、44,649,370 バイト。OCR のテキスト層あり〔1語1行で欄が崩れる〕。NTRS 19900001651。取得 2026-11-10。原本は Document/Done/sv_ioa_19900001651.pdf） （PDF p797） — https://ntrs.nasa.gov/api/citations/19900001651/downloads/19900001651.pdf#page=797
31. Independent Orbiter Assessment (IOA): Analysis of the communication and tracking subsystem（NASA-CR-185582 / REPT-1.0-WP-VA87001-09。1028頁、44,649,370 バイト。OCR のテキスト層あり〔1語1行で欄が崩れる〕。NTRS 19900001651。取得 2026-11-10。原本は Document/Done/sv_ioa_19900001651.pdf） （PDF p839） — https://ntrs.nasa.gov/api/citations/19900001651/downloads/19900001651.pdf#page=839
32. OMG Systems Modeling Language (SysML) Version 2.0 仕様 — https://www.omg.org/spec/SysML/2.0
33. SysML v2 Release（OMG SysML v2 Pilot Implementation の公開リリース・標準ライブラリ） — https://github.com/Systems-Modeling/SysML-v2-Release

## 12. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-11-10 | 初版作成（IOA 原資料：『ANALYSIS OF THE …』10冊のワークシート 5587頁、5フェーズの危険度が読めた 77.0%〔基準 80% 未達で分布は作らない〕、FMX 173件の系ごとの対応〔同じ範囲 51〕、図322〜324、SysML v2 テキスト） |
