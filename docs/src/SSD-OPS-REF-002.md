# 乗員運用マニュアル（SCOM）節別対応一覧

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-OPS-REF-002 |
| 表題 | 乗員運用マニュアル（SCOM）節別対応一覧 |
| 版・日付 | Rev. A／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図11 乗員運用マニュアル 節構成 |

## 1. 目的

乗員運用マニュアル（Shuttle Crew Operations Manual、SCOM）の構成を節別に整理し、各節と本パッケージの機能ブロックとの対応を示す。図11 乗員運用マニュアル 節構成（図11）と、各機能別関連文書一覧のSCOMの行（SSD-ECLSS-REF-002 A-04、SSD-EPS-REF-001 EP-03、SSD-TCS-REF-001 TC-27）の●の根拠とする。

## 2. 文書の概要

| 項目 | 内容 |
|---|---|
| 文書番号 | USA007587 Rev. A, CPN-1（SFOC-FL0884の後継。Basic版で新番号を付与） |
| 表題 | Shuttle Crew Operations Manual（SCOM） |
| 版 | Basic（2004-10-15）、Rev. A（2008-08-01、OI-32対応と飛行再開関連の更新）、CPN-1（2008-12-15、OI-33の更新を追加しOI-32の要約データを削除） |
| 作成 | United Space Alliance（Space Program Operations Contract、NASA契約 NNJ06VA01C、DRD-1.6.1.3-b） |
| 適用ソフトウェア | OI-33（表紙）。本文はRev. A（OI-32）の頁のままで、OI-33の変更は付録Eにまとめられている |
| 位置付け | シャトルの各系統と汎用ミッションの各フェーズを1冊にまとめた乗員向け参照文書。FDF、訓練ワークブック、飛行手順ハンドブック（FPH）、飛行規則、SODB、SPADの内容を要約したもので、それらを置き換えるものではない。FDF・飛行規則と矛盾する場合はそれらが優先する（序文） |
| 公開URL | https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual |

PDF（全1161頁）の構成を次に示す。頁はPDFの通し頁である。

| PDF頁 | 内容 |
|---|---|
| 1〜2 | データ変更通知（CPN-1） |
| 3 | 表紙 |
| 4 | 問合せ先 |
| 5〜6 | 改訂履歴 |
| 7〜8 | 有効頁一覧（LOEP） |
| 9〜14 | 序文（構成管理計画、プログラム文書の体系図） |
| 15〜28 | 目次 |
| 29〜1022 | 本文（第1〜9章） |
| 1023〜1092 | 付録A パネル図 |
| 1093〜1110 | 付録B 表示と操作 |
| 1111〜1136 | 付録C 学習ノート |
| 1137〜1148 | 付録D 経験則 |
| 1149〜1154 | 付録E OI更新（CPN-1） |
| 1155 | 配布先 |
| 1156〜1161 | 索引 |

印刷頁は「節番号－頁」（例：2.9-24）で、各節は1頁から始まる。yumpu公開版の頁番号はPDFの通し頁と一致し、URLの末尾に「/頁番号」を付けると該当頁を開ける。本書と図11の頁は、すべてPDFの通し頁で示す。

第2章の各節は、概要（Description）、構成機器ごとの説明、運用（Operations）で構成され、多くの節は警報の要約（Caution and Warning Summary）、要約データ（Summary Data）、経験則（Rules of Thumb）で終わる。経験則は付録Dに系統別に再掲されている。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1137）

## 3. 節別構成とブロック対応

●はその機能ブロックを中心に説明する節、○は関連する小節を含む節を示す。「関連（○）と根拠の小節」欄は、○の判断に使った小節（原文）とPDF頁である。節題のリンクはマニュアルの節の先頭頁、経験則のリンクはRules of Thumbの頁（第7章は7.1の頁）を開く。付録には対応を付けない。

| 節 | 節題（原文） | 主な内容 | 印刷頁 | PDF頁 | 経験則 | 主対象（●） | 関連（○）と根拠の小節 |
|---|---|---|---|---|---|---|---|
| 1.1 | OVERVIEW（p31） | 概要：シャトルの要求と構成要素、標準ミッションの流れ、射場・着陸場、地上整備、座標系、位置コード | 1.1-1〜20 | 31〜50 | — | ORB | ET（1.1 Space Shuttle Requirements p31）；SRB（1.1 Space Shuttle Requirements p31）；MPS（1.1 Space Shuttle Requirements p31）；TCS（1.1 Orbiter Ground Turnaround p36）；EXT（1.1 Launch and Landing Sites p35、1.1 Orbiter Ground Turnaround p36） |
| 1.2 | ORBITER STRUCTURE（p51） | オービタ構造：前部・中部・後部胴体と乗員室、窓、主翼、OMS/RCSポッド、ボディフラップ、垂直尾翼、受動熱制御、熱防護系 | 1.2-1〜16 | 51〜66 | — | TPS・STR | OMS（1.2 Orbital Maneuvering System/Reaction Control System (OMS/RCS) Pods p61）；RCS（1.2 Orbital Maneuvering System/Reaction Control System (OMS/RCS) Pods p61）；TCS（1.2 Orbiter Passive Thermal Control p64） |
| 1.3 | EXTERNAL TANK（p67） | 外部タンク：液体酸素タンク・インタータンク・液体水素タンク、断熱材、機器・計測 | 1.3-1〜4 | 67〜70 | — | ET | — |
| 1.4 | SOLID ROCKET BOOSTERS（p71） | 固体ロケットブースタ：ホールドダウンポスト、点火、電力分配、油圧動力装置とTVC、レートジャイロ、分離、射場安全系、降下・回収 | 1.4-1〜10 | 71〜80 | — | SRB | — |
| 2.1 | AUXILIARY POWER UNIT/HYDRAULICS (APU/HYD)（p83） | 補助動力装置・油圧系：APU（燃料系・ガス発生器・潤滑油・制御器・ヒータ）、水噴霧ボイラ、主油圧ポンプ・リザーバ・アキュムレータ・循環ポンプ | 2.1-1〜30 | 83〜112 | 2.1-25（p107） | APU | MPS（2.1 Description p83）；TCS（2.1 Circulation Pump and Heat Exchanger p102） |
| 2.2 | CAUTION AND WARNING SYSTEM (C/W)（p113） | 警報系：警報の区分と表示、煙検知・消火、急減圧、SPEC 60（SMテーブル）、F7ライト、故障メッセージ | 2.2-1〜24 | 113〜136 | 2.2-19（p131） | C/W | DPS（2.2 SPEC 60, SM Table Maintenance p127、2.2 Fault Message Table p135）；ECLSS（2.2 Smoke Detection and Fire Suppression p117、2.2 Rapid Cabin Depressurization p123） |
| 2.3 | CLOSED CIRCUIT TELEVISION (CCTV)（p137） | 閉回路テレビ：カメラ、映像処理装置、レンズ制御・パン/チルト装置、機内カメラ、VTR、モニタ、OBSS | 2.3-1〜22 | 137〜158 | — | C&T | — |
| 2.4 | COMMUNICATIONS（p159） | 通信：S帯PM・FM、Ku帯、ペイロード通信、UHF、音声分配、計測（OI） | 2.4-1〜50 | 159〜208 | 2.4-49（p207） | C&T | DPS（2.4 Instrumentation p196）；EXT（2.4 Description p159） |
| 2.5 | CREW SYSTEMS（p209） | 乗員システム：被服、衛生、睡眠、運動器具、拘束具、撮影・照準機器、医療キット、生体計測、放射線計測、空気サンプリング | 2.5-1〜16 | 209〜224 | — | CREW | ECLSS（2.5 Air Sampling System p223） |
| 2.6 | DATA PROCESSING SYSTEM (DPS)（p225） | データ処理系：GPC、データバス網、MDM、MMU、MEDS、マスタタイミングユニット、ソフトウェア、MDU構成、運用 | 2.6-1〜58 | 225〜282 | 2.6-57（p281） | DPS | — |
| 2.7 | DEDICATED DISPLAY SYSTEMS（p283） | 専用表示器：DDU、PFD（ADI・HSI・計器テープ）、SPI、FCS押しボタン、RCS指令ライト、HUD | 2.7-1〜28 | 283〜310 | — | GN&C | RCS（2.7 Reaction Control System Command Lights p301）；DPS（2.7 Device Driver Unit p284） |
| 2.8 | ELECTRICAL POWER SYSTEM (EPS)（p311） | 電力系：反応剤貯蔵・分配（PRSD）、燃料電池、電力分配・制御（EPDC）、APCU・SSPTS、運用、警報 | 2.8-1〜46 | 311〜356 | 2.8-46（p356） | EPS | — |
| 2.9 | ENVIRONMENTAL CONTROL AND LIFE SUPPORT SYSTEM (ECLSS)（p357） | 環境制御・生命維持系：圧力制御系、大気再生系、能動熱制御系（フレオンループ・放熱器・FES・アンモニアボイラ）、給水・廃水系、運用 | 2.9-1〜64 | 357〜420 | 2.9-63（p419） | ECLSS・TCS | — |
| 2.10 | ESCAPE SYSTEMS（p421） | 脱出系：射点脱出系、ACES与圧服、パラシュート、キャビンベント・側面ハッチ投棄、脱出ポール、緊急脱出スライド、救難 | 2.10-1〜22 | 421〜442 | — | CREW | EXT（2.10 Launch Pad Egress Systems p421） |
| 2.11 | EXTRAVEHICULAR ACTIVITY (EVA)（p443） | 船外活動：EMU、外部エアロック、EVA支援機器、SAFER、運用 | 2.11-1〜22 | 443〜464 | 2.11-21（p463） | EVA | ECLSS（2.11 External Airlock p451）；PLS（2.11 External Airlock p451） |
| 2.12 | GALLEY/FOOD（p465） | ギャレー・食料：ギャレー（給湯・加熱・水戻し）、パントリー食、食事用品 | 2.12-1〜4 | 465〜468 | — | ECLSS | CREW（2.12 Volume A - Pantry p467、2.12 Food System Accessories p468） |
| 2.13 | GUIDANCE, NAVIGATION, AND CONTROL (GNC)（p469） | 誘導・航法・制御：航法ハードウェア（IMU・スタートラッカ・TACAN・エアデータほか）、飛行制御系ハードウェア、デジタルオートパイロット、運用 | 2.13-1〜74 | 469〜542 | 2.13-74（p542） | GN&C | OMS（2.13 Digital Autopilot p516）；RCS（2.13 Digital Autopilot p516） |
| 2.14 | LANDING/DECELERATION SYSTEM（p543） | 着陸・減速系：着陸装置、ドラッグシュート、主脚ブレーキ、前輪操向、運用 | 2.14-1〜18 | 543〜560 | 2.14-17（p559） | MECH | APU（2.14 Main Landing Gear Brakes p547、2.14 Nose Wheel Steering p551） |
| 2.15 | LIGHTING SYSTEM（p561） | 照明系：機内照明（投光灯・パネル灯・計器灯・表示灯）、機外照明（投光灯・スポット灯・ドッキング灯） | 2.15-1〜16 | 561〜576 | 2.15-16（p576） | CREW | EPS（2.15 Interior Lighting p561）；PLS（2.15 Exterior Lighting p574） |
| 2.16 | MAIN PROPULSION SYSTEM (MPS)（p577） | 主推進系：SSMEとエンジン制御器、推進薬管理系、ヘリウム系、MPS油圧、故障検知、運用・推進薬ダンプ | 2.16-1〜42 | 577〜618 | 2.16-42（p618） | MPS | ET（2.16 Propellant Management System (PMS) p590）；APU（2.16 MPS Hydraulic Systems p600） |
| 2.17 | MECHANICAL SYSTEMS（p619） | 機械系：電気機械式アクチュエータ、アクティブベント系、ETアンビリカル扉、ペイロードベイ扉 | 2.17-1〜22 | 619〜640 | 2.17-22（p640） | MECH | ET（2.17 External Tank Umbilical Doors p623）；TCS（2.17 Payload Bay Door System p627） |
| 2.18 | ORBITAL MANEUVERING SYSTEM (OMS)（p641） | 軌道制御系：OMSエンジン、ヘリウム系、推進薬の貯蔵・分配、熱制御、TVC、故障検知、運用 | 2.18-1〜32 | 641〜672 | 2.18-31（p671） | OMS | RCS（2.18 Description p641） |
| 2.19 | ORBITER DOCKING SYSTEM（p673） | オービタドッキング系：外部エアロック、トラス、APDS（アビオニクス・運用シーケンス） | 2.19-1〜10 | 673〜682 | — | PLS | ECLSS（2.19 External Airlock p674） |
| 2.20 | PAYLOAD AND GENERAL SUPPORT COMPUTER（p683） | ペイロード・汎用支援計算機：PGSC（ラップトップ）の用途、通信アダプタ（OCA）、機器 | 2.20-1〜4 | 683〜686 | — | C&T | PLS（2.20 Description p683） |
| 2.21 | PAYLOAD DEPLOYMENT AND RETRIEVAL SYSTEM (PDRS)（p687） | ペイロード展開・回収系：RMS、MPM、ペイロード保持機構、運用 | 2.21-1〜30 | 687〜716 | 2.21-29（p715） | PLS | — |
| 2.22 | REACTION CONTROL SYSTEM (RCS)（p717） | 姿勢制御系：ジェット、推進薬系、ヘリウム系、熱制御、冗長管理、運用 | 2.22-1〜26 | 717〜742 | 2.22-26（p742） | RCS | OMS（2.22 Description p717） |
| 2.23 | SPACEHAB（p743） | Spacehab：Spacehabモジュールの構成と、指令・データ、警報、電力、環境制御、音声、消火、CCTVのインタフェース | 2.23-1〜4 | 743〜746 | — | — | Spacehab与圧モジュールは本モデルの機能ブロックに含めない |
| 2.24 | STOWAGE（p747） | 収納：硬質容器（モジュラーロッカほか）、柔軟容器、ミッドデッキ搭載ラック | 2.24-1〜8 | 747〜754 | — | CREW | — |
| 2.25 | WASTE MANAGEMENT SYSTEM (WMS)（p755） | 廃棄物管理系：固形・液体廃棄物の収集と処理、ファンセパレータ、真空ベント、運用 | 2.25-1〜8 | 755〜762 | — | ECLSS | — |
| 3 | FLIGHT DATA FILE（p763） | 飛行データファイル：管制文書（上昇・再突入チェックリスト、飛行計画）、支援文書、異常時文書、参照文書、作成と運用 | 3-1〜3.5-6 | 763〜780 | — | ORB | PLS（3.2 Payload Deployment and Retrieval System Operations Checklist p769）；EVA（3.2 Extravehicular Activity Checklists p769） |
| 4 | OPERATING LIMITATIONS（p781） | 運用限界：計器の目盛表示、エンジン（SSME・OMS・RCS）、対気速度、迎角、横滑り角、着陸重量、降下率、重心、加速度、気象 | 4-1〜4.10-4 | 781〜818 | — | ORB | MPS（4.2 Space Shuttle Main Engines (SSMEs) p795）；OMS（4.2 Orbital Maneuvering System (OMS) Engines p796）；RCS（4.2 Reaction Control System (RCS) Jets p797）；TPS（4.3 Ascent p799、4.4 Entry p803）；MECH（4.7 Main Gear Touchdown p809）；STR（4.9 Vn Diagrams p813） |
| 5 | NORMAL PROCEDURES SUMMARY（p819） | 通常手順の要約：打上げ前・上昇・軌道・再突入・着陸後の標準的な手順と時刻 | 5-1〜5.5-2 | 819〜850 | — | ORB | — |
| 6 | EMERGENCY PROCEDURES（p851） | 緊急手順：射点・上昇アボート（RTLS・TAL・AOA・ATO・コンティンジェンシー）、系統故障と多重故障、スイッチ操作の注意、故障実績 | 6-1〜6.11-2 | 851〜906 | — | ORB | MPS（6.8 Main Propulsion System p894）；OMS（6.8 Orbital Maneuvering System/Reaction Control System p896）；RCS（6.8 Orbital Maneuvering System/Reaction Control System p896）；GN&C（6.8 Guidance, Navigation, and Control p894）；DPS（6.8 Data Processing System p888）；EPS（6.8 Cryo p888、6.8 Electrical Power System p891）；ECLSS（6.8 Environmental Control and Life Support System p890）；TCS（6.9 Two Freon/Water Loops p900、6.9 Total Loss of FES p900）；APU（6.8 APU/Hydraulics p884）；C&T（6.8 Communications p887）；CREW（6.1 Mode 1 – Unaided Egress/Escape p853）；MECH（6.8 Mechanical p894） |
| 7 | TRAJECTORY MANAGEMENT AND FLIGHT CHARACTERISTICS（p907） | 軌道管理と飛行特性：上昇・軌道・再突入・TAEMと進入・着陸・滑走の飛行特性と軌道管理 | 7-1〜7.4-28 | 907〜974 | 7.1-12（p920） | GN&C | OMS（7.1 Insertion OMS Burns p916、7.3 Deorbit Burn p933）；RCS（7.2 Attitude Control p921、7.2 Translation p925）；DPS（7.1 Backup Flight System p917） |
| 8 | INTEGRATED OPERATIONS（p975） | 統合運用：乗員の任務分担、ミッション管制（MCC）との連携、打上げ前〜着陸後のMCC・LCCの役割 | 8-1〜8.8-2 | 975〜994 | — | EXT | — |
| 9 | PERFORMANCE（p995） | 性能：上昇（ペイロード・打上げウィンドウ・アボート境界）、軌道（抗力・摂動・OMS/RCS）、再突入（航続範囲・制動） | 9-1〜9.3-12 | 995〜1022 | 9.3-12（p1022） | GN&C | ET（9.1 ET Impact p1004）；MPS（9.1 Main Engines p1001）；OMS（9.2 OMS/RCS p1008）；RCS（9.2 OMS/RCS p1008、9.3 Entry RCS Use Data p1012） |
| 付録A | PANEL DIAGRAMS（p1023） | パネル図：前面・頭上・左右・後部・中段デッキの各パネルの図 | A-1〜70 | 1023〜1092 | — | — | — |
| 付録B | DISPLAYS AND CONTROLS（p1093） | 表示と操作：DPSの表示画面と操作 | B-1〜18 | 1093〜1110 | — | — | — |
| 付録C | STUDY NOTES（p1111） | 学習ノート：系統別の学習ノート（APU/HYD、通信、極低温、DPS、ECLSS、EPS、GNC、MPS、OMS、RCSほか） | C-1〜26 | 1111〜1136 | — | — | — |
| 付録D | RULES OF THUMB（p1137） | 経験則：各節の経験則（Rules of Thumb）の系統別の集約 | D-1〜12 | 1137〜1148 | — | — | — |
| 付録E | OI UPDATES（p1149） | OI更新：OI-33の主な変更（変更要求CRごとの要約）。CPN-1で追加 | E-1〜6 | 1149〜1154 | — | — | — |

## 4. 節別の小節構成

小節名は原文（PDFのしおり）のとおりとし、先頭のPDF頁を示す。第3〜9章は節（太字）と小節を示す。付録は小節を持たない。

### 4.1 1.1 概要（OVERVIEW）

| 小節（原文） | PDF頁 |
|---|---|
| Space Shuttle Requirements | 31 |
| Nominal Mission Profile | 32 |
| Launch and Landing Sites | 35 |
| Orbiter Ground Turnaround | 36 |
| Space Shuttle Coordinate Reference System | 37 |
| Location Codes | 38 |

### 4.2 1.2 オービタ構造（ORBITER STRUCTURE）

| 小節（原文） | PDF頁 |
|---|---|
| Forward Fuselage | 51 |
| Crew Compartment | 53 |
| Forward Fuselage and Crew Compartment Windows | 56 |
| Wing | 57 |
| Midfuselage | 59 |
| Aft Fuselage | 60 |
| Orbital Maneuvering System/Reaction Control System (OMS/RCS) Pods | 61 |
| Body Flap | 62 |
| Vertical Tail | 63 |
| Orbiter Passive Thermal Control | 64 |
| Thermal Protection System | 65 |

### 4.3 1.3 外部タンク（EXTERNAL TANK）

| 小節（原文） | PDF頁 |
|---|---|
| Liquid Oxygen Tank | 68 |
| Intertank | 68 |
| Liquid Hydrogen Tank | 69 |
| Thermal Protection System | 69 |
| Hardware and Instrumentation | 69 |

### 4.4 1.4 固体ロケットブースタ（SOLID ROCKET BOOSTERS）

| 小節（原文） | PDF頁 |
|---|---|
| Hold-Down Posts | 73 |
| SRB Ignition | 74 |
| Electrical Power Distribution | 75 |
| Hydraulic Power Units | 75 |
| Thrust Vector Control | 76 |
| SRB Rate Gyro Assemblies | 76 |
| SRB Separation | 77 |
| Range Safety System | 77 |
| SRB Descent and Recovery | 78 |

### 4.5 2.1 補助動力装置・油圧系（AUXILIARY POWER UNIT/HYDRAULICS (APU/HYD)）

| 小節（原文） | PDF頁 |
|---|---|
| Description | 83 |
| Fuel System | 84 |
| Gas Generator and Turbine | 87 |
| Lubricating Oil | 87 |
| Electronic Controller | 88 |
| Injector Cooling System | 93 |
| APU Heaters | 94 |
| Water Spray Boilers | 95 |
| Main Hydraulic Pump | 99 |
| Hydraulic Reservoir | 102 |
| Hydraulic Accumulator | 102 |
| Circulation Pump and Heat Exchanger | 102 |
| Hydraulic Heaters | 104 |
| Operations | 104 |
| APU/HYD Caution and Warning Summary | 106 |
| APU/HYD Summary Data | 107 |
| APU/HYD Rules of Thumb | 107 |

### 4.6 2.2 警報系（CAUTION AND WARNING SYSTEM (C/W)）

| 小節（原文） | PDF頁 |
|---|---|
| Description | 113 |
| Alarms | 114 |
| Smoke Detection and Fire Suppression | 117 |
| Rapid Cabin Depressurization | 123 |
| Operations | 124 |
| SPEC 60, SM Table Maintenance | 127 |
| C/W Summary Data | 131 |
| C/W Rules of Thumb | 131 |
| F7 Light Summary | 132 |
| Fault Message Table | 135 |

### 4.7 2.3 閉回路テレビ（CLOSED CIRCUIT TELEVISION (CCTV)）

| 小節（原文） | PDF頁 |
|---|---|
| Description | 137 |
| CCTV Cameras | 138 |
| Video Processing Equipment | 142 |
| CCTV Camera Lens Control | 146 |
| Pan/Tilt Units | 147 |
| Cabin Cameras | 147 |
| VTRs | 149 |
| Monitors | 150 |
| TV Cue Card | 152 |
| OBSS on Starboard Sill | 155 |
| Orbiter Boom Sensor System (OBSS) | 155 |

### 4.8 2.4 通信（COMMUNICATIONS）

| 小節（原文） | PDF頁 |
|---|---|
| Description | 159 |
| S-Band Phase Modulation | 160 |
| S-Band Frequency Modulation | 168 |
| Ku-Band System | 171 |
| Payload Communication System | 179 |
| Ultrahigh Frequency System | 181 |
| Audio Distribution System | 185 |
| Instrumentation | 196 |
| Communications System Summary | 200 |
| Communications System Rules of Thumb | 207 |

### 4.9 2.5 乗員システム（CREW SYSTEMS）

| 小節（原文） | PDF頁 |
|---|---|
| Description | 209 |
| Crew Clothing/Worn Equipment | 209 |
| Personal Hygiene Provisions | 209 |
| Sleeping Provisions | 209 |
| Exercise Equipment | 212 |
| Housekeeping Equipment | 212 |
| Restraints and Mobility Aids | 213 |
| Stowage Containers | 213 |
| Reach and Visibility Aids | 213 |
| Photographic Equipment | 216 |
| Sighting Aids | 217 |
| Window Shades and Filters | 217 |
| Shuttle Orbiter Medical System | 218 |
| Operational Bioinstrumentation System | 220 |
| Radiation Equipment | 222 |
| Air Sampling System | 223 |

### 4.10 2.6 データ処理系（DATA PROCESSING SYSTEM (DPS)）

| 小節（原文） | PDF頁 |
|---|---|
| Description | 225 |
| General Purpose Computers (GPCs) | 226 |
| Data Bus Network | 231 |
| Multiplexers/Demultiplexers (MDMs) | 235 |
| Modular Memory Units | 236 |
| Multifunction Electronic Display System (MEDS) | 237 |
| Master Timing Unit | 240 |
| Software | 244 |
| MEDS | 249 |
| Operations | 254 |
| MDU Configuration | 255 |
| DPS Summary Data | 277 |
| DPS Rules of Thumb | 281 |

### 4.11 2.7 専用表示器（DEDICATED DISPLAY SYSTEMS）

| 小節（原文） | PDF頁 |
|---|---|
| Description | 283 |
| Device Driver Unit | 284 |
| Primary Flight Display | 285 |
| Attitude Director Indicator (ADI) | 285 |
| Horizontal Situation Indicator (HSI) | 290 |
| Flight Instrument Tapes | 296 |
| PFD Status Indicators | 298 |
| Surface Position Indicator (SPI) | 299 |
| Flight Control System Pushbutton Indicators | 301 |
| Reaction Control System Command Lights | 301 |
| Head-Up Display (HUD) | 303 |
| Dedicated Display Systems Summary Data | 307 |

### 4.12 2.8 電力系（ELECTRICAL POWER SYSTEM (EPS)）

| 小節（原文） | PDF頁 |
|---|---|
| Description | 311 |
| Power Reactants Storage and Distribution System | 311 |
| Fuel Cell System | 319 |
| Electrical Power Distribution and Control | 330 |
| APCU and SSPTS | 343 |
| Operations | 347 |
| EPS Caution and Warning Summary | 349 |
| EPS Summary Data | 356 |
| EPS Rules of Thumb | 356 |

### 4.13 2.9 環境制御・生命維持系（ENVIRONMENTAL CONTROL AND LIFE SUPPORT SYSTEM (ECLSS)）

| 小節（原文） | PDF頁 |
|---|---|
| Description | 357 |
| Pressure Control System | 360 |
| Atmospheric Revitalization System | 369 |
| Active Thermal Control System | 380 |
| Supply and Waste Water Systems | 393 |
| Operations | 403 |
| ECLSS Caution and Warning Summary | 406 |
| ECLSS Summary Data | 407 |
| ECLSS Rules of Thumb | 419 |

### 4.14 2.10 脱出系（ESCAPE SYSTEMS）

| 小節（原文） | PDF頁 |
|---|---|
| Description | 421 |
| Launch Pad Egress Systems | 421 |
| Advanced Crew Escape Suit | 424 |
| Parachute Harness and Parachute | 426 |
| Cabin Vent and Side Hatch Jettison | 432 |
| Egress Pole System | 433 |
| Emergency Egress Slide | 433 |
| Overhead Escape Panel | 438 |
| Procedures for Bailout, Water Survival, and Rescue | 438 |
| Vehicle Loss of Control/Breakup | 441 |
| Escape Systems Summary Data | 442 |

### 4.15 2.11 船外活動（EXTRAVEHICULAR ACTIVITY (EVA)）

| 小節（原文） | PDF頁 |
|---|---|
| EVA Overview | 443 |
| Extravehicular Mobility Unit | 444 |
| External Airlock | 451 |
| EVA Support Equipment | 456 |
| Simplified Aid for EVA Rescue | 458 |
| Operations | 459 |
| EVA Summary Data | 463 |
| EVA Rules of Thumb | 463 |

### 4.16 2.12 ギャレー・食料（GALLEY/FOOD）

| 小節（原文） | PDF頁 |
|---|---|
| Description | 465 |
| Galley | 465 |
| Volume A - Pantry | 467 |
| Food System Accessories | 468 |

### 4.17 2.13 誘導・航法・制御（GUIDANCE, NAVIGATION, AND CONTROL (GNC)）

| 小節（原文） | PDF頁 |
|---|---|
| Description | 469 |
| Navigation Hardware | 473 |
| Flight Control System Hardware | 495 |
| Digital Autopilot | 516 |
| Operations | 523 |
| GNC Caution and Warning Summary | 533 |
| GNC Summary Data | 534 |
| GNC Rules of Thumb | 542 |

### 4.18 2.14 着陸・減速系（LANDING/DECELERATION SYSTEM）

| 小節（原文） | PDF頁 |
|---|---|
| Description | 543 |
| Landing Gear | 543 |
| Drag Chute | 546 |
| Main Landing Gear Brakes | 547 |
| Nose Wheel Steering | 551 |
| Operations | 552 |
| Landing/Deceleration System Summary Data | 559 |
| Landing/Deceleration System Rules of Thumb | 559 |

### 4.19 2.15 照明系（LIGHTING SYSTEM）

| 小節（原文） | PDF頁 |
|---|---|
| Description | 561 |
| Interior Lighting | 561 |
| Exterior Lighting | 574 |
| Lighting System Summary Data | 576 |
| Lighting System Rules of Thumb | 576 |

### 4.20 2.16 主推進系（MAIN PROPULSION SYSTEM (MPS)）

| 小節（原文） | PDF頁 |
|---|---|
| Description | 577 |
| Space Shuttle Main Engines (SSMEs) | 579 |
| Space Shuttle Main Engine Controllers | 585 |
| Propellant Management System (PMS) | 590 |
| Helium System | 596 |
| MPS Hydraulic Systems | 600 |
| Malfunction Detection | 602 |
| Operations | 604 |
| Post Insertion | 611 |
| Orbit | 611 |
| Deorbit Prep | 611 |
| Entry | 611 |
| RTLS Abort Propellant Dump Sequence | 612 |
| TAL Abort Propellant Dump Sequence | 612 |
| MPS Caution and Warning Summary | 613 |
| MPS Summary Data | 615 |
| MPS Rules of Thumb | 618 |

### 4.21 2.17 機械系（MECHANICAL SYSTEMS）

| 小節（原文） | PDF頁 |
|---|---|
| Description | 619 |
| Active Vent System | 621 |
| External Tank Umbilical Doors | 623 |
| Payload Bay Door System | 627 |
| Mechanical Systems Summary Data | 636 |
| Mechanical Systems Rules of Thumb | 640 |

### 4.22 2.18 軌道制御系（ORBITAL MANEUVERING SYSTEM (OMS)）

| 小節（原文） | PDF頁 |
|---|---|
| Description | 641 |
| Engines | 643 |
| Helium System | 649 |
| Propellant Storage and Distribution | 652 |
| Thermal Control | 659 |
| Thrust Vector Control (TVC) | 660 |
| Fault Detection and Identification | 662 |
| Operations | 663 |
| OMS Caution and Warning Summary | 664 |
| OMS Summary Data | 671 |
| OMS Rules of Thumb | 671 |

### 4.23 2.19 オービタドッキング系（ORBITER DOCKING SYSTEM）

| 小節（原文） | PDF頁 |
|---|---|
| Description | 673 |
| External Airlock | 674 |
| Truss Assembly | 674 |
| Androgynous Peripheral Docking System | 674 |
| APDS Avionics Overview | 674 |
| APDS Operational Sequences (OPS) | 678 |
| Operational Notes of Interest | 680 |

### 4.24 2.20 ペイロード・汎用支援計算機（PAYLOAD AND GENERAL SUPPORT COMPUTER）

| 小節（原文） | PDF頁 |
|---|---|
| Description | 683 |
| Equipment | 684 |

### 4.25 2.21 ペイロード展開・回収系（PAYLOAD DEPLOYMENT AND RETRIEVAL SYSTEM (PDRS)）

| 小節（原文） | PDF頁 |
|---|---|
| Description | 687 |
| Remote Manipulator System | 687 |
| Manipulator Positioning Mechanism | 698 |
| Payload Retention Mechanisms | 702 |
| Operations | 705 |
| PDRS Caution and Warning Summary | 710 |
| PDRS Summary Data | 711 |
| PDRS Rules of Thumb | 715 |

### 4.26 2.22 姿勢制御系（REACTION CONTROL SYSTEM (RCS)）

| 小節（原文） | PDF頁 |
|---|---|
| Description | 717 |
| Jet System | 719 |
| Propellant System | 720 |
| Helium System | 725 |
| Thermal Control | 727 |
| RCS Redundancy Management | 728 |
| Operations | 733 |
| RCS Caution and Warning Summary | 735 |
| RCS Summary Data | 742 |
| RCS Rules of Thumb | 742 |

### 4.27 2.23 Spacehab（SPACEHAB）

| 小節（原文） | PDF頁 |
|---|---|
| Description | 743 |
| Configurations | 743 |
| Flight Deck Interfaces | 744 |
| Command and Data Subsystem | 744 |
| Caution and Warning | 744 |
| Electrical Power Subsystem | 744 |
| Environmental Control Subsystem | 745 |
| Audio Communication Subsystem | 745 |
| Fire Suppression Subsystem | 745 |
| Closed Circuit Television Subsystem | 745 |

### 4.28 2.24 収納（STOWAGE）

| 小節（原文） | PDF頁 |
|---|---|
| Description | 747 |
| Rigid Containers | 747 |
| Flexible Containers | 750 |
| Middeck Accommodations Rack | 752 |

### 4.29 2.25 廃棄物管理系（WASTE MANAGEMENT SYSTEM (WMS)）

| 小節（原文） | PDF頁 |
|---|---|
| Description | 755 |
| Operations | 758 |

### 4.30 第3章 飛行データファイル（FLIGHT DATA FILE）

| 小節（原文） | PDF頁 |
|---|---|
| **3.1 CONTROL DOCUMENTS** | 767 |
| Ascent Checklist | 767 |
| Post Insertion Book | 767 |
| Flight Plan | 767 |
| Deorbit Preparation Book | 767 |
| Entry Checklist | 768 |
| **3.2 SUPPORT DOCUMENTS** | 769 |
| Orbit Operations Checklist | 769 |
| Photo/TV Checklist | 769 |
| Payload Deployment and Retrieval System Operations Checklist | 769 |
| Extravehicular Activity Checklists | 769 |
| Rendezvous Checklist | 769 |
| Payload Operations Checklist | 770 |
| Deploy Checklist | 770 |
| Additional Support Documents | 770 |
| **3.3 OFF-NOMINAL DOCUMENTS** | 771 |
| Pocket Checklists | 771 |
| Ascent/Entry Systems Procedures Book | 771 |
| Systems Abort Once Around Book | 771 |
| Malfunction Procedures Book | 771 |
| In-Flight Maintenance Checklist | 771 |
| Payload Systems Data and Malfunction Procedures Book | 771 |
| Medical Checklist | 772 |
| Contingency Deorbit Preparation Book | 772 |
| **3.4 REFERENCE DOCUMENTS** | 773 |
| Reference Data Book | 773 |
| Systems Data Book | 773 |
| Data Processing System Dictionary | 773 |
| Payload Systems Data/Malfunction Book | 773 |
| Maps and Charts Book | 773 |
| **3.5 OPERATIONAL USE** | 775 |
| FDF Fabrication | 775 |
| Preliminaries | 775 |
| Basic | 775 |
| 482 | 776 |
| Final | 777 |
| Flight | 777 |

### 4.31 第4章 運用限界（OPERATING LIMITATIONS）

| 小節（原文） | PDF頁 |
|---|---|
| **4.1 INSTRUMENT MARKINGS** | 783 |
| Description | 783 |
| Panel F9 Meters | 787 |
| Panel O1 Meters | 788 |
| Panel O2 Meters | 791 |
| Panel O3 Meters | 793 |
| **4.2 ENGINE LIMITATIONS** | 795 |
| Space Shuttle Main Engines (SSMEs) | 795 |
| Orbital Maneuvering System (OMS) Engines | 796 |
| Reaction Control System (RCS) Jets | 797 |
| **4.3 AIRSPEED LIMITATIONS** | 799 |
| Ascent | 799 |
| Entry | 799 |
| Landing | 800 |
| **4.4 ANGLE OF ATTACK LIMITATIONS** | 803 |
| Entry | 803 |
| **4.5 SIDESLIP LIMITATIONS** | 805 |
| **4.6 LANDING WEIGHT LIMITATIONS** | 807 |
| Maximum Landing Weight | 807 |
| **4.7 DESCENT RATE LIMITATIONS** | 809 |
| Main Gear Touchdown | 809 |
| Nose Gear Touchdown | 809 |
| **4.8 CENTER OF GRAVITY LIMITATIONS** | 811 |
| **4.9 ACCELERATION LIMITATIONS** | 813 |
| Ascent | 813 |
| Entry | 813 |
| Vn Diagrams | 813 |
| **4.10 WEATHER LIMITATIONS** | 815 |

### 4.32 第5章 通常手順の要約（NORMAL PROCEDURES SUMMARY）

| 小節（原文） | PDF頁 |
|---|---|
| **5.1 PRELAUNCH** | 821 |
| 5.1 PRELAUNCH | 821 |
| **5.2 ASCENT** | 823 |
| Powered Flight | 823 |
| OMS Burns | 825 |
| Post Insertion | 827 |
| **5.3 ORBIT** | 831 |
| Orbit Operations | 831 |
| OMS (RCS) Burns | 834 |
| Rendezvous | 834 |
| Last Full On-Orbit Day | 838 |
| **5.4 ENTRY** | 841 |
| Deorbit Preparation | 841 |
| Deorbit Burn | 843 |
| Entry Interface | 845 |
| Terminal Area Energy Management (TAEM) | 846 |
| Approach and Landing | 847 |
| **5.5 POSTLANDING** | 849 |

### 4.33 第6章 緊急手順（EMERGENCY PROCEDURES）

| 小節（原文） | PDF頁 |
|---|---|
| **6.1 LAUNCH ABORT MODES AND RATIONALE** | 853 |
| Mode 1 – Unaided Egress/Escape | 853 |
| Mode 2 – Aided Escape | 853 |
| Mode 3 – Aided Escape | 854 |
| Mode 4 – Aided Escape | 854 |
| **6.2 ASCENT ABORTS** | 855 |
| Performance Aborts | 855 |
| Systems Aborts | 858 |
| Range Safety | 858 |
| **6.3 RETURN TO LAUNCH SITE** | 861 |
| Powered RTLS | 862 |
| Gliding RTLS | 866 |
| **6.4 TRANSOCEANIC ABORT LANDING** | 869 |
| Nominal Transoceanic Abort Landing | 869 |
| Post MECO Transoceanic Abort Landing | 871 |
| **6.5 ABORT ONCE AROUND** | 873 |
| OMS-1 | 873 |
| OMS-2 | 875 |
| Entry | 876 |
| **6.6 ABORT TO ORBIT** | 877 |
| Powered Flight | 877 |
| OMS-1 | 877 |
| OMS-2 | 877 |
| **6.7 CONTINGENCY ABORT** | 879 |
| Powered Flight | 879 |
| Three-Engine-Out Automation | 880 |
| ET Separation | 880 |
| Entry | 881 |
| **6.8 SYSTEMS FAILURES** | 883 |
| APU/Hydraulics | 884 |
| Communications | 887 |
| Cryo | 888 |
| Data Processing System | 888 |
| Environmental Control and Life Support System | 890 |
| Electrical Power System | 891 |
| Guidance, Navigation, and Control | 894 |
| Mechanical | 894 |
| Main Propulsion System | 894 |
| Orbital Maneuvering System/Reaction Control System | 896 |
| **6.9 MULTIPLE FAILURE SCENARIOS** | 899 |
| MPS He Leak with APC/ALC Failure | 899 |
| Set Splits During Ascent | 899 |
| Stuck Throttle in the Bucket | 899 |
| Second Hydraulic Failure and 1 SSME Failed | 899 |
| Two APUs/Hydraulic Systems | 899 |
| APU 1 and Multiple Prox Box Failures | 900 |
| Two Freon/Water Loops | 900 |
| Total Loss of FES | 900 |
| Total Loss of FES with BFS Failure | 900 |
| Two Fuel Cells | 900 |
| Both OMS Engines | 900 |
| OMS/RCS Leak with DPS/EPS Failures | 900 |
| Cryo Leak with Failed Manifold Valve | 901 |
| BFS Self Engage | 901 |
| **6.10 SWITCH AND PANEL CAUTIONS** | 903 |
| MPS Switches | 903 |
| Fuel Cell Reactant Valves | 903 |
| IDP/CRT Power Switch | 903 |
| GPC/MDM | 903 |
| PLB Mech Power/Enable | 903 |
| HYD Press and APU Controller Power Switches | 903 |
| OMS Kit | 903 |
| **6.11 SYSTEMS FAILURE SUMMARY** | 905 |

### 4.34 第7章 軌道管理と飛行特性（TRAJECTORY MANAGEMENT AND FLIGHT CHARACTERISTICS）

| 小節（原文） | PDF頁 |
|---|---|
| **7.1 ASCENT** | 909 |
| Powered Flight | 909 |
| Insertion OMS Burns | 916 |
| Backup Flight System | 917 |
| Sensory Cues | 918 |
| Ascent Rules of Thumb | 920 |
| **7.2 ORBIT** | 921 |
| Attitude Control | 921 |
| Translation | 925 |
| Rendezvous/Proximity Operations | 926 |
| Orbit Rules of Thumb | 932 |
| **7.3 ENTRY** | 933 |
| Overview of Entry Flying Tasks | 933 |
| Deorbit Burn | 933 |
| Entry | 936 |
| Backup Flight System | 944 |
| Sensory Cues | 944 |
| Ground Controlled Approach | 945 |
| Entry Rules of Thumb | 946 |
| **7.4 TERMINAL AREA ENERGY MANAGEMENT AND APPROACH, LANDING, AND ROLLOUT (OPS 305)** | 947 |
| Definition and Overview | 947 |
| Terminal Area Energy Management | 947 |
| Heading Alignment Cone | 954 |
| Outer Glideslope | 955 |
| Preflare | 960 |
| Inner Glideslope | 961 |
| Touchdown | 962 |
| Derotation | 964 |
| Rollout | 965 |
| Handling Qualities | 966 |
| Wind Effects on Trajectory | 968 |
| Backup Flight System | 969 |
| Off-Nominal Approaches | 970 |
| Sensory Cues | 971 |
| Autoland | 971 |
| Terminal Area Energy Management and Approach, Landing, and Rollout Rules of Thumb | 974 |

### 4.35 第8章 統合運用（INTEGRATED OPERATIONS）

| 小節（原文） | PDF頁 |
|---|---|
| **8.1 FLIGHT CREW DUTIES AND COORDINATION** | 977 |
| Dynamic Flight Phases | 977 |
| Orbit Phase | 977 |
| Intercom Protocol | 978 |
| **8.2 WORKING WITH MISSION CONTROL** | 979 |
| MCC Resources | 979 |
| Operations Monitoring and Control | 979 |
| Air-to-Ground Voice Communications | 980 |
| Telemetry Uplink | 981 |
| **8.3 PRELAUNCH** | 983 |
| Flight Crew | 983 |
| Mission Control Center | 983 |
| Launch Control Center | 983 |
| **8.4 LAUNCH** | 985 |
| Flight Crew | 985 |
| Mission Control Center | 986 |
| Launch Control Center | 986 |
| **8.5 ASCENT** | 987 |
| Flight Crew | 987 |
| Mission Control Center | 987 |
| **8.6 ORBIT** | 989 |
| Flight Crew | 989 |
| Mission Control Center | 989 |
| **8.7 ENTRY** | 991 |
| Flight Crew | 991 |
| Mission Control Center | 991 |
| **8.8 POSTLANDING** | 993 |
| Flight Crew | 993 |
| Mission Control Center | 993 |
| Launch Control Center | 993 |

### 4.36 第9章 性能（PERFORMANCE）

| 小節（原文） | PDF頁 |
|---|---|
| **9.1 ASCENT** | 997 |
| Payload | 997 |
| Launch Window | 998 |
| Squatcheloids | 999 |
| Main Engines | 1001 |
| Altitude, Velocity, and Dynamic Pressure | 1001 |
| MECO Targets | 1004 |
| ET Impact | 1004 |
| Abort Mode Boundaries | 1005 |
| Minimum Safe Orbit | 1005 |
| **9.2 ORBIT** | 1007 |
| Drag | 1007 |
| Period | 1007 |
| Perturbations | 1007 |
| OMS/RCS | 1008 |
| **9.3 ENTRY (OPS 304)** | 1011 |
| Downrange/Crossrange | 1011 |
| Trajectory | 1012 |
| Entry History | 1012 |
| Entry RCS Use Data | 1012 |
| Rollout/Braking | 1016 |
| Loss of Braking | 1016 |
| Rollout History | 1016 |
| Performance Rules of Thumb | 1022 |

## 5. 電力・生命維持・熱の節と機能の対応

各機能別関連文書一覧のSCOMの行（SSD-ECLSS-REF-002 A-04、SSD-EPS-REF-001 EP-03、SSD-TCS-REF-001 TC-27）の、機能ごとの関連内容と根拠の頁を示す。「ECLSS：PCS」は図3・図4の機能、「EPS：FCP」は図6・図7の機能、「TCS：FES」は図8・図9の機能を表す。

### 5.1 SSD-ECLSS-REF-002 A-04

| 機能 | 関連文書一覧の節 | PDF頁 | 関連内容 |
|---|---|---|---|
| ECLSS：全般 | ECLSS 全般 | 357 | OI-33時点の乗員向け運用マニュアル（USA007587 Rev. A CPN-1、SFOC-FL0884の後継）。2.9節 ECLSS（64頁）がPCS・ARS・ATCS・給水・廃水の4系を扱い、廃棄物管理は2.25節、煙検知・消火は2.2節、外部エアロックは2.11節にある。 |
| ECLSS：PCS | 圧力制御系（PCS） | 360 | 2.9節「Pressure Control System」：O2・N2供給系、O2/N2マニホールド、PPO2制御、キャビン逃し弁・ベント弁、負圧逃し弁、エアロックの減圧・均圧弁の構成とスイッチを示す。 |
| ECLSS：ARS | 大気再生系（ARS） | 369 | 2.9節「Atmospheric Revitalization System」：キャビン空気の循環、LiOHキャニスタ・RCRSによるCO2除去、キャビンの温度・湿度制御、アビオニクスベイ・IMUの冷却、水冷却ループを示す。 |
| ECLSS：ATCS | 能動熱制御系（ATCS） | 380 | 2.9節「Active Thermal Control System」：2系統のフレオン冷却ループ、コールドプレートと熱交換器、放熱器と流量制御、FES、アンモニアボイラを示す。 |
| ECLSS：H2O | 給水・廃水系（H2O） | 393 | 2.9節「Supply and Waste Water Systems」：給水タンクと水素分離器・微生物フィルタ、N2によるタンク加圧、給水・廃水のダンプとノズルヒータ、ギャレーへの給水を示す。 |
| ECLSS：WCS | 廃棄物収集系（WCS） | 755 | 2.25節 Waste Management System：固形廃棄物の収集・乾燥、尿と EMU凝縮水の廃水タンクへの移送、ファンセパレータ、真空ベント、代替の採便・採尿を示す。 |
| ECLSS：ALS | エアロック支援系（ALS） | 451 | 2.11節「External Airlock」：外部エアロックの構成、ハッチ、再加圧、EMUとのインタフェースを示す。エアロックの減圧・均圧弁は2.9節、ODSの外部エアロックは2.19節にある。 |
| ECLSS：FDS | 煙検知・消火系（FDS） | 117 | 2.2節「Smoke Detection and Fire Suppression」：煙検知器（A群・B群）とSMOKE DETECTIONライト、アビオニクスベイの固定消火器と携帯消火器（Halon 1301）、消火ポートを示す。 |

### 5.2 SSD-EPS-REF-001 EP-03

| 機能 | 関連文書一覧の節 | PDF頁 | 関連内容 |
|---|---|---|---|
| EPS：全般 | EPS 全般 | 311 | OI-33時点の乗員向け運用マニュアル（USA007587 Rev. A CPN-1、SFOC-FL0884の後継）。2.8節 EPS（46頁）がPRSD・燃料電池・EPDCとAPCU・SSPTSを扱い、警報の要約と経験則を含む。 |
| EPS：PRSD | 反応剤貯蔵・分配（PRSD） | 311 | 2.8節「Power Reactants Storage and Distribution System」：極低温O2・H2タンクとヒータ、量センサ、反応剤の分配（燃料電池・ECLSSへの供給）を示す。 |
| EPS：FCP | 燃料電池発電装置（FCP） | 319 | 2.8節「Fuel Cell System」：3基の燃料電池の構成、生成水の除去、パージ、冷却・温度制御、セル性能モニタ、始動を示す。 |
| EPS：DC | 直流配電（DC） | 330 | 2.8節「Electrical Power Distribution and Control」：主・必須・制御・ペイロードの直流母線、配電組立、電力・負荷・モータ制御器、母線結合を示す。 |
| EPS：AC | 交流発電・配電（AC） | 336 | 2.8節「Electrical Power Distribution and Control」のうち「AC Power Generation」：インバータによる3相交流の発生と交流母線の構成・監視を示す。 |

### 5.3 SSD-TCS-REF-001 TC-27

| 機能 | 関連文書一覧の節 | PDF頁 | 関連内容 |
|---|---|---|---|
| TCS：全般 | 熱制御 全般 | 380 | OI-33時点の乗員向け運用マニュアル（USA007587 Rev. A CPN-1、SFOC-FL0884の後継）。2.9節の能動熱制御系（ATCS）がオービタの排熱を担い、受動熱制御（断熱材・コーティング・ヒータ）は1.2節にある。 |
| TCS：FCL | フレオン21冷却ループ（FCL） | 380 | 2.9節「Freon Loops」：2系統のフレオン21冷却ループ、ポンプパッケージ、ループの流路と流量の監視を示す。 |
| TCS：HX | 熱交換器・コールドプレート網（HX） | 382 | 2.9節のATCS：燃料電池熱交換器、中部胴体・後部アビオニクスベイのコールドプレート、カーゴ熱交換器、ペイロード熱交換器、ARSのフレオン/水インターチェンジャを順に流れる経路を示す。 |
| TCS：RAD | 放熱器（RAD） | 384 | 2.9節「Radiators」：ペイロードベイ扉内側の放熱器パネル、展開系、放熱器流量制御弁組立、単一放熱器運用、放熱器隔離弁を示す。 |
| TCS：FES | フラッシュエバポレータ（FES） | 389 | 2.9節「Flash Evaporator System」：FES制御器、自動停止、温度監視、ヒータ、FESによる水ダンプを示す。 |
| TCS：NH3 | アンモニアボイラ（NH3） | 391 | 2.9節「Ammonia Boilers」：貯蔵タンク、主制御器・副制御器と制御センサを示す。 |
| TCS：GSE | GSE熱交換器・地上冷却（GSE） | 382 | 2.9節のATCS：打上げ前・着陸後の冷却に使うGSE熱交換器がフレオンループの流路にあることを示す。着陸後のGSE地上冷却装置の接続は1.1節（p36）にある。 |
| TCS：PTC | 受動熱制御（PTC） | 64 | 1.2節「Orbiter Passive Thermal Control」：断熱ブランケット（バルク・多層）、熱コーティング、熱絶縁と、受動熱制御を補うヒータを示す。 |

## 6. 注記（出典間の相違・構成変更）

> **注記** 出典URLのyumpu公開版は、全1161頁で、表紙の文書番号・版（USA007587 Rev. A, CPN-1）と頁の内容が入手したPDFと一致することを確認した。yumpuの頁番号はPDFの通し頁と一致する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/3）

> **注記** SSD-ECLSS-REF-002のA-04とSSD-EPS-REF-001のEP-03は、初版で旧番号SFOC-FL0884 Rev. B（ibiblioのOI-28転載版）を示していた。本版の表紙に「supersedes SFOC-FL0884」とあることを確認し、両文書のRev. Bで文書番号・URL・関連内容を更新した。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/3）

> **注記** CPN-1はOI-33の変更を付録E（p1149〜1154）に追加したもので、本文（第1〜9章、付録A〜D）はRev. A（OI-32）のままである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1）

> **注記** 序文により、SCOMとFDF・飛行規則が矛盾する場合はFDF・飛行規則が優先する。飛行規則の章構成はSSD-OPS-REF-001（図10）に示す。4.10節の気象限界は飛行規則A2-6を、4.8節の重心限界は飛行規則A4.1.4-3（旧番号）を出典としている。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/9）

> **注記** 原本の不整合：4.1節（p783）はMEDSの説明の参照先を「section 2.18」としているが、本版のMEDSは2.6節（p237）にあり、2.18節はOMSである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/783）

> **注記** 原本の不整合：索引（p1156）はActive Thermal Control Systemを2.9-22としているが、本文の同項は2.9-24（p380）から始まる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1156）

> **注記** 2.23 Spacehabは、図10と同じく本モデルの機能ブロックに含めないため、●・○を付けていない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/743）

> **注記** 機能説明書の参考文献にある他の転載版（ScribdのSCOM、ibiblioのOI-27版の2.1節）と、SSD-ECLSS-REF-002のN-18（NASA-KLASS教材の2.9節抜粋）は、各記述の根拠として使った版であり、本版の追加に合わせた変更はしていない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual）

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-26 | 初版作成（第1〜9章・付録A〜E、41行） |
| Rev. A | 2026-10-01 | §3 の主対象●・関連○を、図2 に追加したブロック（STR・MECH・C/W・CREW・PLS・EVA）に付け替えた（16節・章。ORB に寄せていた節を移し、根拠の小節と頁を示した）（Rev. L） |
