# 熱制御 機能別関連文書一覧

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-TCS-REF-001 |
| 表題 | 熱制御 機能別関連文書一覧 |
| 版・日付 | Rev. C／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-TCS-001 |
| 関連図 | SSD-SYS-ARC-001 図9 熱制御 関連文書マトリクス |

## 1. 目的

熱制御の各機能に関係する公開文書を機能別に整理し、各機能説明書と図9 熱制御 関連文書マトリクス（文書×機能マトリクス）の根拠とする。

## 2. 調査方法

前回作成したSSD-ECLSS-REF-001（本プロジェクト内の仮番号）から熱制御に関係する8件を引き継ぎ（出典欄「REF-001」）、今回の調査で17件を追加した。各文書の番号・表題・確認に使ったURLは表の各行に示す。Rev. Aでは、SSD-ECLSS-REF-001のB-01（NSTS-12820 Vol. A）を原本で確認し、TC-26として追加した（出典欄「REF-001（B-01）」）。規則と機能の対応はSSD-OPS-REF-001に示す。Rev. Bでは、SSD-ECLSS-REF-001のA-04（Shuttle Crew Operations Manual）の原本（USA007587 Rev. A CPN-1）を確認し、TC-27として追加した（出典欄「REF-001（A-04）」）。節と機能の対応はSSD-OPS-REF-002に示す。

## 3. 機能別関連文書

### 3.1 熱制御 全般（8件）

機能説明書：SSD-FD-TCS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| TC-01 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS | フレオンループの流路、放熱器・FES・アンモニアボイラ・GSE熱交換器の構成と運用を解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382） |
| TC-02 | 番号なし | Shuttle Reference: Active Thermal Control System | ATCSの構成とヒートシンクの使い分けを解説する。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/atcs.html） |
| TC-07 | NTRS 19810005632 | Orbiter Integrated Active Thermal Control Subsystem Test | GSE熱交換器・FES・ラジエータ・アンモニアボイラを含むATCS統合熱真空試験。（出典: https://ntrs.nasa.gov/api/citations/19810005632/downloads/19810005632.pdf） |
| TC-10 | NTRS 19900002466 | IOA: Analysis of the Active Thermal Control Subsystem | ATCSの独立FMEA/CIL解析。（出典: https://ntrs.nasa.gov/citations/19900002466） |
| TC-11 | NTRS 19900001663 | IOA: Assessment of the ATCS FMEA/CIL | ATCS解析の結果をNASA・契約者のFMEA/CILと比較評価する。（出典: https://ntrs.nasa.gov/api/citations/19900001663/downloads/19900001663.pdf） |
| TC-13 | NTRS 19730009157 | EC/LSS thermal control system study for the space shuttle（1972年） | 排熱方式の重量解析を行い、蒸気圧縮式と多流体噴霧式フラッシュエバポレータを有望と選定した。（出典: https://ntrs.nasa.gov/citations/19730009157） |
| TC-26 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | 全飛行共通の運用飛行規則。第18章 THERMAL（56規則）が熱制御を扱い、Go/No-Go基準はA18-1001、熱姿勢制約はA18-451、冷却機器の最大停止時間はA18-501。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2147） |
| TC-27 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | OI-33時点の乗員向け運用マニュアル（USA007587 Rev. A CPN-1、SFOC-FL0884の後継）。2.9節の能動熱制御系（ATCS）がオービタの排熱を担い、受動熱制御（断熱材・コーティング・ヒータ）は1.2節にある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/380） |

### 3.2 フレオン21冷却ループ（FCL）（5件）

機能説明書：SSD-FD-TCS-FCL-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| TC-01 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS | フレオンループの流路、放熱器・FES・アンモニアボイラ・GSE熱交換器の構成と運用を解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382） |
| TC-02 | 番号なし | Shuttle Reference: Active Thermal Control System | ATCSの構成とヒートシンクの使い分けを解説する。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/atcs.html） |
| TC-03 | SAE 911366（NTRS 19920039157） | Shuttle Orbiter ATCS design and flight experience | 最初の39飛行の運用と、フレオン流量低下・FES不具合・アンモニアボイラ系の問題と対策を述べる。（出典: https://ntrs.nasa.gov/citations/19920039157） |
| TC-26 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | フレオン冷却ループの喪失定義（A18-201）と管理（A18-251）、着陸後のフレオンループ構成（A16-53）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2064） |
| TC-27 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節「Freon Loops」：2系統のフレオン21冷却ループ、ポンプパッケージ、ループの流路と流量の監視を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/380） |

### 3.3 熱交換器・コールドプレート網（HX）（6件）

機能説明書：SSD-FD-TCS-HX-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| TC-01 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS | フレオンループの流路、放熱器・FES・アンモニアボイラ・GSE熱交換器の構成と運用を解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382） |
| TC-05 | NTRS 19850008614 | Challenges in the Development of the Orbiter ATCS | 他の5系統と熱交換する最適化熱交換器とFESの開発を述べる。（出典: https://ntrs.nasa.gov/citations/19850008614） |
| TC-15 | NTRS 19900001618 | IOA: Analysis of the Hydraulics/Water Spray Boiler subsystem | 油圧系の独立解析で、フレオン熱交換器を構成品に含む。（出典: https://ntrs.nasa.gov/api/citations/19900001618/downloads/19900001618.pdf） |
| TC-24 | 番号なし | NSTS 1988 News Reference Manual – Electrical Power System | 燃料電池熱交換器とフレオンループのIF、生成水配管の凍結防止ヒータを記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） |
| TC-26 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | ARS水ループの喪失定義と管理（A18-101・151：インターチェンジャ流量とアビオニクスベイのコールドプレート温度）と、熱交換器漏れのGo/No-Go（A18-1001 C.10）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2059） |
| TC-27 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節のATCS：燃料電池熱交換器、中部胴体・後部アビオニクスベイのコールドプレート、カーゴ熱交換器、ペイロード熱交換器、ARSのフレオン/水インターチェンジャを順に流れる経路を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382） |

### 3.4 放熱器（RAD）（9件）

機能説明書：SSD-FD-TCS-RAD-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| TC-01 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS | フレオンループの流路、放熱器・FES・アンモニアボイラ・GSE熱交換器の構成と運用を解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382） |
| TC-02 | 番号なし | Shuttle Reference: Active Thermal Control System | ATCSの構成とヒートシンクの使い分けを解説する。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/atcs.html） |
| TC-04 | NTRS 19850008616 | Challenges in the Development of the Orbiter Radiator System | 8枚・合計175 m²の放熱器で最大30 kWを排熱する設計と開発課題を述べる。（出典: https://ntrs.nasa.gov/api/citations/19850008616/downloads/19850008616.pdf） |
| TC-06 | NTRS 19810005651 | Thermal Vacuum Performance Testing of the Orbiter Radiator System | 1979年のJSCチャンバAでのラジエータ熱真空試験。（出典: https://ntrs.nasa.gov/api/citations/19810005651/downloads/19810005651.pdf） |
| TC-07 | NTRS 19810005632 | Orbiter Integrated Active Thermal Control Subsystem Test | GSE熱交換器・FES・ラジエータ・アンモニアボイラを含むATCS統合熱真空試験。（出典: https://ntrs.nasa.gov/api/citations/19810005632/downloads/19810005632.pdf） |
| TC-09 | NTRS 20070023916 | Effects of Free Molecular Heating on the Shuttle ATCS | STS-121で自由分子加熱によりFES給水を余分に消費し、ラジエータ熱流束モデルを改訂した。（出典: https://ntrs.nasa.gov/citations/20070023916） |
| TC-25 | 番号なし | NSTS 1988 News Reference Manual – Orbiter Structure | ペイロードベイドアを軌道上で開いて放熱器を露出させることを記す。（出典: https://science.ksc.nasa.gov/shuttle/technology/sts-newsref/sts_coord.html） |
| TC-26 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | 放熱器流量制御組立（RFCA）の喪失定義と管理（A18-208・255）、放熱器隔離弁（A18-256）、放熱器展開機構（A10-221・222）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2073） |
| TC-27 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節「Radiators」：ペイロードベイ扉内側の放熱器パネル、展開系、放熱器流量制御弁組立、単一放熱器運用、放熱器隔離弁を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/384） |

### 3.5 フラッシュエバポレータ（FES）（11件）

機能説明書：SSD-FD-TCS-FES-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| TC-01 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS | フレオンループの流路、放熱器・FES・アンモニアボイラ・GSE熱交換器の構成と運用を解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382） |
| TC-02 | 番号なし | Shuttle Reference: Active Thermal Control System | ATCSの構成とヒートシンクの使い分けを解説する。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/atcs.html） |
| TC-03 | SAE 911366（NTRS 19920039157） | Shuttle Orbiter ATCS design and flight experience | 最初の39飛行の運用と、フレオン流量低下・FES不具合・アンモニアボイラ系の問題と対策を述べる。（出典: https://ntrs.nasa.gov/citations/19920039157） |
| TC-05 | NTRS 19850008614 | Challenges in the Development of the Orbiter ATCS | 他の5系統と熱交換する最適化熱交換器とFESの開発を述べる。（出典: https://ntrs.nasa.gov/citations/19850008614） |
| TC-07 | NTRS 19810005632 | Orbiter Integrated Active Thermal Control Subsystem Test | GSE熱交換器・FES・ラジエータ・アンモニアボイラを含むATCS統合熱真空試験。（出典: https://ntrs.nasa.gov/api/citations/19810005632/downloads/19810005632.pdf） |
| TC-08 | NTRS 19810005631 | Thermodynamic performance testing of the orbiter flash evaporator system | 開発用FESの熱真空試験とATCS統合試験での組合せ試験。（出典: https://ntrs.nasa.gov/citations/19810005631） |
| TC-09 | NTRS 20070023916 | Effects of Free Molecular Heating on the Shuttle ATCS | STS-121で自由分子加熱によりFES給水を余分に消費し、ラジエータ熱流束モデルを改訂した。（出典: https://ntrs.nasa.gov/citations/20070023916） |
| TC-13 | NTRS 19730009157 | EC/LSS thermal control system study for the space shuttle（1972年） | 排熱方式の重量解析を行い、蒸気圧縮式と多流体噴霧式フラッシュエバポレータを有望と選定した。（出典: https://ntrs.nasa.gov/citations/19730009157） |
| TC-14 | NTRS抄録（1972〜1976年） | Shuttle flash evaporator prototype and system testing | シャトル用フラッシュエバポレータの試作機の開発と、JSCでのシステム試験を扱う。（出典: https://www.science.gov/topicpages/f/flash+evaporator+system） |
| TC-26 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | トッピング・高負荷エバポレータ、FES制御器、給水ラインの喪失定義（A18-202〜206）とFESの管理（A18-252）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2067） |
| TC-27 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節「Flash Evaporator System」：FES制御器、自動停止、温度監視、ヒータ、FESによる水ダンプを示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/389） |

### 3.6 アンモニアボイラ（NH3）（6件）

機能説明書：SSD-FD-TCS-NH3-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| TC-01 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS | フレオンループの流路、放熱器・FES・アンモニアボイラ・GSE熱交換器の構成と運用を解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382） |
| TC-03 | SAE 911366（NTRS 19920039157） | Shuttle Orbiter ATCS design and flight experience | 最初の39飛行の運用と、フレオン流量低下・FES不具合・アンモニアボイラ系の問題と対策を述べる。（出典: https://ntrs.nasa.gov/citations/19920039157） |
| TC-07 | NTRS 19810005632 | Orbiter Integrated Active Thermal Control Subsystem Test | GSE熱交換器・FES・ラジエータ・アンモニアボイラを含むATCS統合熱真空試験。（出典: https://ntrs.nasa.gov/api/citations/19810005632/downloads/19810005632.pdf） |
| TC-12 | JSC-16720 | STS-1 ECLSS Consumables and Thermal Analysis | STS-1の熱解析で、アンモニアなどの収支表を含む。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf） |
| TC-26 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | アンモニアボイラの喪失定義（A18-207）と管理（A18-253）、NH3レッドライン（A18-254）、着陸後のNH3終了（A18-257・A16-54）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2072） |
| TC-27 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節「Ammonia Boilers」：貯蔵タンク、主制御器・副制御器と制御センサを示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/391） |

### 3.7 GSE熱交換器・地上冷却（GSE）（6件）

機能説明書：SSD-FD-TCS-GSE-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| TC-01 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS | フレオンループの流路、放熱器・FES・アンモニアボイラ・GSE熱交換器の構成と運用を解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382） |
| TC-07 | NTRS 19810005632 | Orbiter Integrated Active Thermal Control Subsystem Test | GSE熱交換器・FES・ラジエータ・アンモニアボイラを含むATCS統合熱真空試験。（出典: https://ntrs.nasa.gov/api/citations/19810005632/downloads/19810005632.pdf） |
| TC-16 | NASA LLIS | ECLSS Ground Coolant Systems（教訓文書） | 射点の地上冷却系がGSE熱交換器で機上ループを冷やす仕組みと、設備の教訓をまとめる。（出典: https://llis.nasa.gov/llis_lib/pdf/1045995main_ECLSSGroundCoolantSystemLL.pdf） |
| TC-17 | 番号なし | Wikipedia – Space Shuttle recovery convoy | 着陸後の冷却車（Freon 114）とパージ空調車による機体の冷却・パージを記す。（出典: https://en.wikipedia.org/wiki/Space_Shuttle_recovery_convoy） |
| TC-26 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | 着陸後に地上冷却を失った場合の処置（A16-51：GSE冷却カート）と冷却の延長（A16-52）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1895） |
| TC-27 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節のATCS：打上げ前・着陸後の冷却に使うGSE熱交換器がフレオンループの流路にあることを示す。着陸後のGSE地上冷却装置の接続は1.1節（p36）にある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382） |

### 3.8 受動熱制御（PTC）（10件）

機能説明書：SSD-FD-TCS-PTC-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| TC-17 | 番号なし | Wikipedia – Space Shuttle recovery convoy | 着陸後の冷却車（Freon 114）とパージ空調車による機体の冷却・パージを記す。（出典: https://en.wikipedia.org/wiki/Space_Shuttle_recovery_convoy） |
| TC-18 | 番号なし | Shuttle Reference: Orbiter Purge, Vent and Drain System | パージによる非与圧区画の熱調整、ベント、ドレンの機能を解説する。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/purge/） |
| TC-19 | NTRS 19900001633 | IOA: Assessment of the purge, vent and drain subsystem | パージ・ベント・ドレン系の独立FMEA/CIL評価。（出典: https://ntrs.nasa.gov/citations/19900001633） |
| TC-20 | NASM A20181683000 | Blanket, Payload Bay, Space Shuttle Orbiter（スミソニアン） | 受動熱制御に使われたKapton/Dacron多層のキルト断熱ブランケットの実物を解説する。（出典: https://airandspace.si.edu/collection-objects/blanket-payload-bay-shuttle-orbiter/nasm_A20181683000） |
| TC-21 | 番号なし | NSTS 1988 News Reference Manual – Orbiter Systems / TPS | TPSの材料と、内部断熱・ヒータ・パージによる内部温度管理を記す。（出典: https://m.16streets.com/39-B/HTML%20Pages/shuttle/technology/sts-newsref/sts_sys.html） |
| TC-22 | 番号なし | NASA Facts – Orbiter Thermal Protection System（KSC） | 軌道1周で外面温度が−200〜+200°Fに変動し、TPSが低温からも機体を守ると記す。（出典: https://www3.nasa.gov/centers/kennedy/pdf/167473main_TPS-08.pdf） |
| TC-23 | 番号なし | NSTS 1988 News Reference Manual – Orbital Maneuvering System | OMS/RCSポッドの断熱材とストリップヒータによる熱制御を記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-oms.html） |
| TC-24 | 番号なし | NSTS 1988 News Reference Manual – Electrical Power System | 燃料電池熱交換器とフレオンループのIF、生成水配管の凍結防止ヒータを記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） |
| TC-26 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | TCSヒータの構成・冗長・検証と計測喪失時の運用（A18-301〜305）、TPS接着層温度（A18-401）、熱姿勢制約（A18-451）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2092） |
| TC-27 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 1.2節「Orbiter Passive Thermal Control」：断熱ブランケット（バルク・多層）、熱コーティング、熱絶縁と、受動熱制御を補うヒータを示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/64） |

## 4. 文書×機能マトリクス（全件）

| ID | 文書番号 | 表題 | 全般 | FCL | HX | RAD | FES | NH3 | GSE | PTC | 出典 | URL |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| TC-01 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS | ● | ● | ● | ● | ● | ● | ● |  | 新規 | https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html |
| TC-02 | 番号なし | Shuttle Reference: Active Thermal Control System | ● | ● |  | ● | ● |  |  |  | 新規 | https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/atcs.html |
| TC-03 | SAE 911366（NTRS 19920039157） | Shuttle Orbiter ATCS design and flight experience |  | ● |  |  | ● | ● |  |  | 新規 | https://ntrs.nasa.gov/citations/19920039157 |
| TC-04 | NTRS 19850008616 | Challenges in the Development of the Orbiter Radiator System |  |  |  | ● |  |  |  |  | 新規 | https://ntrs.nasa.gov/api/citations/19850008616/downloads/19850008616.pdf |
| TC-05 | NTRS 19850008614 | Challenges in the Development of the Orbiter ATCS |  |  | ● |  | ● |  |  |  | REF-001（D-06） | https://ntrs.nasa.gov/citations/19850008614 |
| TC-06 | NTRS 19810005651 | Thermal Vacuum Performance Testing of the Orbiter Radiator System |  |  |  | ● |  |  |  |  | REF-001（G-01） | https://ntrs.nasa.gov/api/citations/19810005651/downloads/19810005651.pdf |
| TC-07 | NTRS 19810005632 | Orbiter Integrated Active Thermal Control Subsystem Test | ● |  |  | ● | ● | ● | ● |  | REF-001（G-02） | https://ntrs.nasa.gov/api/citations/19810005632/downloads/19810005632.pdf |
| TC-08 | NTRS 19810005631 | Thermodynamic performance testing of the orbiter flash evaporator system |  |  |  |  | ● |  |  |  | REF-001（G-03） | https://ntrs.nasa.gov/citations/19810005631 |
| TC-09 | NTRS 20070023916 | Effects of Free Molecular Heating on the Shuttle ATCS |  |  |  | ● | ● |  |  |  | REF-001（G-04） | https://ntrs.nasa.gov/citations/20070023916 |
| TC-10 | NTRS 19900002466 | IOA: Analysis of the Active Thermal Control Subsystem | ● |  |  |  |  |  |  |  | REF-001（H-03） | https://ntrs.nasa.gov/citations/19900002466 |
| TC-11 | NTRS 19900001663 | IOA: Assessment of the ATCS FMEA/CIL | ● |  |  |  |  |  |  |  | REF-001（H-04） | https://ntrs.nasa.gov/api/citations/19900001663/downloads/19900001663.pdf |
| TC-12 | JSC-16720 | STS-1 ECLSS Consumables and Thermal Analysis |  |  |  |  |  | ● |  |  | REF-001（E-01） | https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf |
| TC-13 | NTRS 19730009157 | EC/LSS thermal control system study for the space shuttle（1972年） | ● |  |  |  | ● |  |  |  | 新規 | https://ntrs.nasa.gov/citations/19730009157 |
| TC-14 | NTRS抄録（1972〜1976年） | Shuttle flash evaporator prototype and system testing |  |  |  |  | ● |  |  |  | 新規 | https://www.science.gov/topicpages/f/flash+evaporator+system |
| TC-15 | NTRS 19900001618 | IOA: Analysis of the Hydraulics/Water Spray Boiler subsystem |  |  | ● |  |  |  |  |  | 新規 | https://ntrs.nasa.gov/api/citations/19900001618/downloads/19900001618.pdf |
| TC-16 | NASA LLIS | ECLSS Ground Coolant Systems（教訓文書） |  |  |  |  |  |  | ● |  | 新規 | https://llis.nasa.gov/llis_lib/pdf/1045995main_ECLSSGroundCoolantSystemLL.pdf |
| TC-17 | 番号なし | Wikipedia – Space Shuttle recovery convoy |  |  |  |  |  |  | ● | ● | 新規 | https://en.wikipedia.org/wiki/Space_Shuttle_recovery_convoy |
| TC-18 | 番号なし | Shuttle Reference: Orbiter Purge, Vent and Drain System |  |  |  |  |  |  |  | ● | 新規 | https://spaceflight.nasa.gov/shuttle/reference/shutref/purge/ |
| TC-19 | NTRS 19900001633 | IOA: Assessment of the purge, vent and drain subsystem |  |  |  |  |  |  |  | ● | 新規 | https://ntrs.nasa.gov/citations/19900001633 |
| TC-20 | NASM A20181683000 | Blanket, Payload Bay, Space Shuttle Orbiter（スミソニアン） |  |  |  |  |  |  |  | ● | 新規 | https://airandspace.si.edu/collection-objects/blanket-payload-bay-shuttle-orbiter/nasm_A20181683000 |
| TC-21 | 番号なし | NSTS 1988 News Reference Manual – Orbiter Systems / TPS |  |  |  |  |  |  |  | ● | 新規 | https://m.16streets.com/39-B/HTML%20Pages/shuttle/technology/sts-newsref/sts_sys.html |
| TC-22 | 番号なし | NASA Facts – Orbiter Thermal Protection System（KSC） |  |  |  |  |  |  |  | ● | 新規 | https://www3.nasa.gov/centers/kennedy/pdf/167473main_TPS-08.pdf |
| TC-23 | 番号なし | NSTS 1988 News Reference Manual – Orbital Maneuvering System |  |  |  |  |  |  |  | ● | 新規 | https://www.globalsecurity.org/space/library/report/1988/sts-oms.html |
| TC-24 | 番号なし | NSTS 1988 News Reference Manual – Electrical Power System |  |  | ● |  |  |  |  | ● | 新規 | https://www.globalsecurity.org/space/library/report/1988/sts-eps.html |
| TC-25 | 番号なし | NSTS 1988 News Reference Manual – Orbiter Structure |  |  |  | ● |  |  |  |  | 新規 | https://science.ksc.nasa.gov/shuttle/technology/sts-newsref/sts_coord.html |
| TC-26 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | ● | ● | ● | ● | ● | ● | ● | ● | REF-001（B-01） | https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf |
| TC-27 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | ● | ● | ● | ● | ● | ● | ● | ● | REF-001（A-04） | https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual |

## 5. 注記（出典間の相違・構成変更）

> **注記** TC-03（SAE 911366）はNTRSの書誌ページ（抄録）で内容を確認したもので、本文は未確認である。（出典: https://ntrs.nasa.gov/citations/19920039157）

> **注記** TC-14はNTRS抄録を収録した検索結果ページで確認したもので、個々の報告の本文は未確認である。（出典: https://www.science.gov/topicpages/f/flash+evaporator+system）

> **注記** TC-17はWikipediaの記述であり、地上冷却設備の詳細はTC-16などの一次資料で確認すること。（出典: https://en.wikipedia.org/wiki/Space_Shuttle_recovery_convoy）

> **注記** TC-26の関連内容に示す規則番号と頁は、NSTS-12820 Vol. Aの本文（PDF p449〜2214、PCN-1反映済み）による。章の構成と、規則と機能の対応の詳細はSSD-OPS-REF-001に示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf）

> **注記** TC-27の関連内容に示す節と頁は、USA007587 Rev. A CPN-1（全1161頁）による。頁はPDFの通し頁で、出典URL（yumpu公開版）の頁番号と一致する。節の構成と機能との対応の詳細はSSD-OPS-REF-002に示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual）

## 6. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-25 | 初版作成（25件） |
| Rev. A | 2026-09-25 | TC-26（NSTS-12820 Vol. A 運用飛行規則）を追加（26件） |
| Rev. B | 2026-09-26 | TC-27（Shuttle Crew Operations Manual、USA007587 Rev. A CPN-1）を追加（27件） |
| Rev. C | 2026-10-01 | 出典を乗員運用マニュアル（SCOM、OI-33）の頁に更新（7文）（Rev. Q） |
