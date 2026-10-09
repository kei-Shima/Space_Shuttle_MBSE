# EPS 機能別関連文書一覧

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-EPS-REF-001 |
| 表題 | EPS 機能別関連文書一覧 |
| 版・日付 | Rev. B／2026-09-26 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-EPS-001 |
| 関連図 | SSD-SYS-ARC-001 図7 EPS 関連文書マトリクス |

## 1. 目的

EPSの各機能に関係する公開文書を機能別に整理し、各機能説明書と図7 EPS 関連文書マトリクス（文書×機能マトリクス）の根拠とする。

## 2. 調査方法

前回作成したSSD-ECLSS-REF-001（本プロジェクト内の仮番号）からEPSに関係する3件を引き継ぎ（出典欄「REF-001」）、今回の調査で16件を追加した。各文書の番号・表題・確認に使ったURLは表の各行に示す。Rev. Aでは、SSD-ECLSS-REF-001のB-01（NSTS-12820 Vol. A）を原本で確認し、EP-20として追加した（出典欄「REF-001（B-01）」）。規則と機能の対応はSSD-OPS-REF-001に示す。Rev. Bでは、EP-03（SSD-ECLSS-REF-001のA-04）の原本（USA007587 Rev. A CPN-1）を確認し、文書番号とURLを更新して関係する機能の列に●を追加した。節と機能の対応はSSD-OPS-REF-002に示す。

## 3. 機能別関連文書

### 3.1 EPS 全般（7件）

機能説明書：SSD-FD-EPS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| EP-01 | 番号なし | NSTS 1988 News Reference Manual – Electrical Power System | PRSD・燃料電池・EPDCの構成、定格、運用手順を1ページで解説する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） |
| EP-02 | 番号なし | Space Shuttle Guide – Electrical System | EPSの3サブシステムと、PRSDから燃料電池・ECLSSへの供給を解説する。（出典: https://www.spaceshuttleguide.com/system/electrical.htm） |
| EP-03 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | OI-33時点の乗員向け運用マニュアル（USA007587 Rev. A CPN-1、SFOC-FL0884の後継）。2.8節 EPS（46頁）がPRSD・燃料電池・EPDCとAPCU・SSPTSを扱い、警報の要約と経験則を含む。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/311） |
| EP-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 飛行実績で検証された運用性能データの公式集約文書。（出典: https://ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf） |
| EP-05 | NASA SP-407 | Space Shuttle, Chapter 3 Space Shuttle Vehicle | 燃料電池（3基・7 kW）と電圧範囲など、初期の概要諸元を示す。（出典: https://www.american-spacecraft.org/documents/sp-407/chapter-3.html） |
| EP-06 | NTRS 19760025144 | EPS/ECLSS Consumables Analyses for the Spacelab 1 Flight | Spacelab 1ミッションの電力系とECLSSの消耗品要求を解析する。（出典: https://ntrs.nasa.gov/citations/19760025144） |
| EP-20 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | 全飛行共通の運用飛行規則。第9章 ELECTRICAL（65規則）がEPSを扱い、Go/No-Go基準はA9-1001（極低温、燃料電池、EPDC、C&W）、C&Wの喪失定義はA9-4。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1510） |

### 3.2 反応剤貯蔵・分配（PRSD）（9件）

機能説明書：SSD-FD-EPS-PRSD-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| EP-01 | 番号なし | NSTS 1988 News Reference Manual – Electrical Power System | PRSD・燃料電池・EPDCの構成、定格、運用手順を1ページで解説する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） |
| EP-03 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.8節「Power Reactants Storage and Distribution System」：極低温O2・H2タンクとヒータ、量センサ、反応剤の分配（燃料電池・ECLSSへの供給）を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/311） |
| EP-06 | NTRS 19760025144 | EPS/ECLSS Consumables Analyses for the Spacelab 1 Flight | Spacelab 1ミッションの電力系とECLSSの消耗品要求を解析する。（出典: https://ntrs.nasa.gov/citations/19760025144） |
| EP-07 | NTRS 19900001602 | IOA: Analysis of the EPG/PRSD subsystem | PRSDと燃料電池（EPG）の独立FMEA/CIL解析。（出典: https://ntrs.nasa.gov/citations/19900001602） |
| EP-16 | NASA-CR-193057 | STS-50 Space Shuttle Mission Report | EDO極低温パレット（追加4セット）の初飛行と、PRSD酸素タンク2の漏れを記録する。（出典: https://ntrs.nasa.gov/api/citations/19930016803/downloads/19930016803.pdf） |
| EP-17 | NTRS 19920055853 | Extended Duration Orbiter – Meeting the challenge | 16日滞在のためのEDO計画と、極低温パレット・タンク・電磁弁などを概説する。（出典: https://ntrs.nasa.gov/citations/19920055853） |
| EP-18 | 番号なし | Wikipedia – Extended Duration Orbiter | EDOパレットはコロンビアとエンデバーで飛行し、STS-107で失われたと記す。（出典: https://en.wikipedia.org/wiki/Extended_Duration_Orbiter） |
| EP-19 | US特許 5228644 | Solar powered system for a space vehicle | 背景技術として、4セットのタンクが約8日で消費され、追加パレットで8日から16日へ延長できると記す。（出典: https://image-ppubs.uspto.gov/dirsearch-public/print/downloadPdf/5228644） |
| EP-20 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | 極低温系の喪失定義（A9-201〜205：O2/H2マニホールド、タンク、真空断熱、ヒータ）と管理（A9-251〜262：ヒータ管理、残量バランス、PRSDレッドライン、漏れ、EDOパレット）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1476） |

### 3.3 燃料電池発電装置（FCP）（13件）

機能説明書：SSD-FD-EPS-FCP-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| EP-01 | 番号なし | NSTS 1988 News Reference Manual – Electrical Power System | PRSD・燃料電池・EPDCの構成、定格、運用手順を1ページで解説する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） |
| EP-03 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.8節「Fuel Cell System」：3基の燃料電池の構成、生成水の除去、パージ、冷却・温度制御、セル性能モニタ、始動を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/319） |
| EP-05 | NASA SP-407 | Space Shuttle, Chapter 3 Space Shuttle Vehicle | 燃料電池（3基・7 kW）と電圧範囲など、初期の概要諸元を示す。（出典: https://www.american-spacecraft.org/documents/sp-407/chapter-3.html） |
| EP-07 | NTRS 19900001602 | IOA: Analysis of the EPG/PRSD subsystem | PRSDと燃料電池（EPG）の独立FMEA/CIL解析。（出典: https://ntrs.nasa.gov/citations/19900001602） |
| EP-08 | NTRS 19900001617 | IOA: Analysis of the EPD&C/EPG subsystem | 電力分配・制御（EPD&C）と発電（EPG）ハードウェアの独立FMEA/CIL解析。（出典: https://ntrs.nasa.gov/citations/19900001617） |
| EP-09 | NTRS 19750026405 | Electrical power generation subsystem for Space Shuttle Orbiter | 燃料電池3基で平均14 kW・ピーク24 kWを供給する設計を示す（1975年）。（出典: https://ntrs.nasa.gov/citations/19750026405） |
| EP-10 | 番号なし | NASA Space Shuttle Fuel Cell Power Plants（2002） | 燃料電池の構成、生成水の処理、冷却系を解説する。（出典: https://chemistry.beloit.edu/edetc/nanolab/fuelcell2/NASA%20Space%20Shuttle%20Fuel%20Cell%20Power%20Plants%20(2002).pdf） |
| EP-11 | NTRS 20050217483 | Space Shuttle Upgrades: Long Life Alkaline Fuel Cell | 運用寿命を2,600時間から5,000時間へ延ばす長寿命アルカリ燃料電池計画。（出典: https://ntrs.nasa.gov/citations/20050217483） |
| EP-12 | NTRS 20070023719 | Fuel Cell Development for NASA's Human Exploration Program | 長寿命スタックの認定（2003年）と、退役見込みによる機材適用の見送りを記す。（出典: https://ntrs.nasa.gov/api/citations/20070023719/downloads/20070023719.pdf） |
| EP-13 | NTRS 20040010319 | Fuel Cells for Space Science Applications | オービタは3基の12 kW燃料電池で全電力を賄い、予備バッテリを持たないと記す。（出典: https://ntrs.nasa.gov/api/citations/20040010319/downloads/20040010319.pdf） |
| EP-14 | NTRS 20110011486 | Analysis and Test of a PEM Fuel Cell Power System for Space Power Applications | シャトルの3基のアルカリ燃料電池が15〜20 kWを発電するとし、PEM型の後継を試験する。（出典: https://ntrs.nasa.gov/citations/20110011486） |
| EP-15 | OSTI 347754 | The NASA fuel cell upgrade program for the Space Shuttle Orbiter | アルカリ型から20 kW級PEM型への置き換え計画を述べる。（出典: https://www.osti.gov/biblio/347754） |
| EP-20 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | 燃料電池の喪失定義（A9-1・2）と管理（A9-51〜62：出力制約、パージ、スタンバイ・停止の定義、セル性能モニタ、冷却ポンプ故障、pH）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1429） |

### 3.4 直流配電（DC）（4件）

機能説明書：SSD-FD-EPS-DC-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| EP-01 | 番号なし | NSTS 1988 News Reference Manual – Electrical Power System | PRSD・燃料電池・EPDCの構成、定格、運用手順を1ページで解説する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） |
| EP-03 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.8節「Electrical Power Distribution and Control」：主・必須・制御・ペイロードの直流母線、配電組立、電力・負荷・モータ制御器、母線結合を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/330） |
| EP-08 | NTRS 19900001617 | IOA: Analysis of the EPD&C/EPG subsystem | 電力分配・制御（EPD&C）と発電（EPG）ハードウェアの独立FMEA/CIL解析。（出典: https://ntrs.nasa.gov/citations/19900001617） |
| EP-20 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | EPDCの喪失定義（A9-3）と直流配電の管理（A9-101〜110：母線電圧限界、必須母線、電力削減、主母線短絡、主母線結合）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1453） |

### 3.5 交流発電・配電（AC）（4件）

機能説明書：SSD-FD-EPS-AC-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| EP-01 | 番号なし | NSTS 1988 News Reference Manual – Electrical Power System | PRSD・燃料電池・EPDCの構成、定格、運用手順を1ページで解説する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） |
| EP-03 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.8節「Electrical Power Distribution and Control」のうち「AC Power Generation」：インバータによる3相交流の発生と交流母線の構成・監視を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/336） |
| EP-08 | NTRS 19900001617 | IOA: Analysis of the EPD&C/EPG subsystem | 電力分配・制御（EPD&C）と発電（EPG）ハードウェアの独立FMEA/CIL解析。（出典: https://ntrs.nasa.gov/citations/19900001617） |
| EP-20 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | 交流配電の管理（A9-151〜161：インバータ管理、母線センサ、単相・2相喪失、インバータ熱寿命、MCA、油圧循環ポンプ運転）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1465） |

## 4. 文書×機能マトリクス（全件）

| ID | 文書番号 | 表題 | 全般 | PRSD | FCP | DC | AC | 出典 | URL |
|---|---|---|---|---|---|---|---|---|---|
| EP-01 | 番号なし | NSTS 1988 News Reference Manual – Electrical Power System | ● | ● | ● | ● | ● | 新規 | https://www.globalsecurity.org/space/library/report/1988/sts-eps.html |
| EP-02 | 番号なし | Space Shuttle Guide – Electrical System | ● |  |  |  |  | 新規 | https://www.spaceshuttleguide.com/system/electrical.htm |
| EP-03 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | ● | ● | ● | ● | ● | REF-001（A-04） | https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual |
| EP-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | ● |  |  |  |  | REF-001（A-06） | https://ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf |
| EP-05 | NASA SP-407 | Space Shuttle, Chapter 3 Space Shuttle Vehicle | ● |  | ● |  |  | 新規 | https://www.american-spacecraft.org/documents/sp-407/chapter-3.html |
| EP-06 | NTRS 19760025144 | EPS/ECLSS Consumables Analyses for the Spacelab 1 Flight | ● | ● |  |  |  | REF-001（E-03） | https://ntrs.nasa.gov/citations/19760025144 |
| EP-07 | NTRS 19900001602 | IOA: Analysis of the EPG/PRSD subsystem |  | ● | ● |  |  | 新規 | https://ntrs.nasa.gov/citations/19900001602 |
| EP-08 | NTRS 19900001617 | IOA: Analysis of the EPD&C/EPG subsystem |  |  | ● | ● | ● | 新規 | https://ntrs.nasa.gov/citations/19900001617 |
| EP-09 | NTRS 19750026405 | Electrical power generation subsystem for Space Shuttle Orbiter |  |  | ● |  |  | 新規 | https://ntrs.nasa.gov/citations/19750026405 |
| EP-10 | 番号なし | NASA Space Shuttle Fuel Cell Power Plants（2002） |  |  | ● |  |  | 新規 | https://chemistry.beloit.edu/edetc/nanolab/fuelcell2/NASA%20Space%20Shuttle%20Fuel%20Cell%20Power%20Plants%20(2002).pdf |
| EP-11 | NTRS 20050217483 | Space Shuttle Upgrades: Long Life Alkaline Fuel Cell |  |  | ● |  |  | 新規 | https://ntrs.nasa.gov/citations/20050217483 |
| EP-12 | NTRS 20070023719 | Fuel Cell Development for NASA's Human Exploration Program |  |  | ● |  |  | 新規 | https://ntrs.nasa.gov/api/citations/20070023719/downloads/20070023719.pdf |
| EP-13 | NTRS 20040010319 | Fuel Cells for Space Science Applications |  |  | ● |  |  | 新規 | https://ntrs.nasa.gov/api/citations/20040010319/downloads/20040010319.pdf |
| EP-14 | NTRS 20110011486 | Analysis and Test of a PEM Fuel Cell Power System for Space Power Applications |  |  | ● |  |  | 新規 | https://ntrs.nasa.gov/citations/20110011486 |
| EP-15 | OSTI 347754 | The NASA fuel cell upgrade program for the Space Shuttle Orbiter |  |  | ● |  |  | 新規 | https://www.osti.gov/biblio/347754 |
| EP-16 | NASA-CR-193057 | STS-50 Space Shuttle Mission Report |  | ● |  |  |  | 新規 | https://ntrs.nasa.gov/api/citations/19930016803/downloads/19930016803.pdf |
| EP-17 | NTRS 19920055853 | Extended Duration Orbiter – Meeting the challenge |  | ● |  |  |  | 新規 | https://ntrs.nasa.gov/citations/19920055853 |
| EP-18 | 番号なし | Wikipedia – Extended Duration Orbiter |  | ● |  |  |  | 新規 | https://en.wikipedia.org/wiki/Extended_Duration_Orbiter |
| EP-19 | US特許 5228644 | Solar powered system for a space vehicle |  | ● |  |  |  | 新規 | https://image-ppubs.uspto.gov/dirsearch-public/print/downloadPdf/5228644 |
| EP-20 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | ● | ● | ● | ● | ● | REF-001（B-01） | https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf |

## 5. 注記（出典間の相違・構成変更）

> **注記** EP-01（1988年版マニュアル）は1988年時点の内容で、長寿命燃料電池やEDOパレットなど後の変更は反映していない。（出典: https://science.ksc.nasa.gov/shuttle/technology/sts-newsref/）

> **注記** EP-19は特許の背景技術の記述であり、NASAの公式資料ではない。数値は参考扱いとする。（出典: https://image-ppubs.uspto.gov/dirsearch-public/print/downloadPdf/5228644）

> **注記** EP-18はWikipediaの記述であり、一次資料（EP-16・EP-17）での確認を推奨する。（出典: https://en.wikipedia.org/wiki/Extended_Duration_Orbiter）

> **注記** EP-20の関連内容に示す規則番号と頁は、NSTS-12820 Vol. Aの本文（PDF p449〜2214、PCN-1反映済み）による。章の構成と、規則と機能の対応の詳細はSSD-OPS-REF-001に示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf）

> **注記** EP-03の関連内容に示す節と頁は、USA007587 Rev. A CPN-1（全1161頁）による。頁はPDFの通し頁で、出典URL（yumpu公開版）の頁番号と一致する。節の構成と機能との対応の詳細はSSD-OPS-REF-002に示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual）

> **注記** EP-03の初版は、文書番号を旧番号SFOC-FL0884 Rev. B、URLをibiblioのOI-28転載版としていた。原本の表紙で後継番号USA007587（SFOC-FL0884を置き換え）を確認し、Rev. Bで文書番号・URL・関連内容を訂正した。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/3）

## 6. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-25 | 初版作成（19件） |
| Rev. A | 2026-09-25 | EP-20（NSTS-12820 Vol. A 運用飛行規則）を追加（20件） |
| Rev. B | 2026-09-26 | EP-03（Shuttle Crew Operations Manual）を原本（USA007587 Rev. A CPN-1）で確認し、文書番号・URL・関連内容を更新、PRSD・FCP・DC・ACの各節に追加 |
