# 圧力制御系 機能別関連文書一覧

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-PCS-REF-001 |
| 表題 | 圧力制御系 機能別関連文書一覧 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-PCS-001 |
| 関連図 | SSD-SYS-ARC-001 図19 圧力制御系 関連文書マトリクス |

## 1. 目的

圧力制御系（PCS）の各下位機能に関係する公開文書を機能別に整理し、各機能説明書と図19 圧力制御系 関連文書マトリクス（文書×機能マトリクス）の根拠とする。

## 2. 調査方法

SSD-ECLSS-REF-002の3.2節 圧力制御系（PCS）の20件と、同一覧の3.1節からPCSの下位機能に関係する1件（B-06）の計21件を引き継ぎ（出典欄「REF-002（A-01）」の形）、今回の調査で13件を追加した（出典欄「新規」）。引き継いだ行も含め、各行の関連内容は下位機能ごとに書き分けた。訓練マニュアル（USA006020・USA006019）、SCOM、運用飛行規則、故障処置手順（MAL）、飛行運用マニュアル（JSC-12770）、IFM・軌道運用チェックリスト、SODB、IOA中間報告、ミッション報告は原本で本文を確認し、関連内容に節とPDFの通し頁を示す。

## 3. 機能別関連文書

### 3.1 圧力制御系 全般（14件）

機能説明書：SSD-FD-ECL-PCS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| PC-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 2.0節（PDF p21）：乗員室を14.7 psiaに保つ2系統のPCSがそれぞれ酸素系・窒素系・O2/N2マニホールドの3要素から成ると述べ、1.1節（p16）にPRSD・給水系・ATCSなどとのインタフェースを示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=21） |
| PC-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Pressure Control System（PDF p360）：14.7±0.2 psia、窒素80%（130ポンド）・酸素20%（40ポンド）の乗員室大気と、2系統のPCS（通常は飛行の前半がPCS 1、後半がPCS 2）の構成を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/360） |
| PC-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | 第17章 PCS（PDF p1955〜1983）：PCSの喪失定義（A17-201〜206）、系統の管理（A17-251〜260）、10.2 psia運用（A17-301〜309）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1955） |
| PC-05 | JSC-16720 | STS-1 ECLSS Consumables and Thermal Analysis | STS-1のECLSS・熱解析で、大気ガスの収支表を含む。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf） |
| PC-08 | IOA報告（1986年） | IOA: Analysis of the ARPCS | ARPCSを大気補給・制御系と大気ベント・制御系に分け、トップダウンで故障モードと臨界度を解析する。（出典: https://core.ac.uk/works/24872612） |
| PC-09 | NTRS 19900001641 | IOA: Assessment of the ARPCS FMEA/CIL | ARPCSの独立解析の結果を、51-L事故後のNASA FMEA/CIL改訂案と比較する。（出典: https://ntrs.nasa.gov/citations/19900001641） |
| PC-11 | NTRS 19750056784 | The shuttle orbiter cabin atmospheric revitalization systems | ARPCSを酸素・窒素の2ガス方式とし、酸素をPRSD、窒素を窒素貯蔵タンクから得ると示す（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19750056784） |
| PC-12 | NTRS抄録（1982年） | Shuttle Orbiter Atmospheric Revitalization Pressure Control Subsystem（Walleshauser他） | 1気圧の環境と非常時の8 psiaモードの両方で酸素分圧と全圧を制御するARPCSを説明する（抄録で確認）。（出典: https://www.science.gov/topicpages/p/pressure+control+valves.html） |
| PC-15 | 番号なし | Shuttle Reference: Crew Compartment Cabin Pressurization | 2系統の酸素系と2系統の窒素系による乗員室の与圧を解説する。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/cabinpress.html） |
| PC-17 | 番号なし | Shuttle Reference: ECLSS Overview | 乗員室を14.7±0.2 psiaに与圧し、平均で窒素80%・酸素20%の混合気に保つと記す。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/overview.html） |
| PC-18 | SCOM 2.9節（抜粋） | Environmental Control and Life Support System（NASA-KLASS教材） | ECLSSを4つの系に分けて説明するSCOM 2.9節の抜粋で、圧力制御系の構成を詳述する。（出典: http://www.nasa-klass.com/Curriculum/Get_Training%201/ECLSS/RDG_ECLSS-Additional/RDG_ECLSS-SubSys_Advanced.pdf） |
| PC-19 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | 訓練マニュアルの抜粋として、PCSの構成と他の系とのインタフェースを解説する。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| PC-23 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.1.1節（PDF p11）：与圧系が燃料電池と同じ極低温源から酸素を受け、EPSが計測と与圧制御の電子機器に給電すると示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=11） |
| PC-28 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | C.16節（PDF p74・p77）：IOAはARPCSで266件の故障モードを解析して89件の潜在重要品目を挙げ、NASAの51-L事故後のベースライン（262件のFMEA、87件のCIL）と比較した。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=74） |

### 3.2 酸素供給・分配（O2S）（12件）

機能説明書：SSD-FD-ECL-PCS-O2S-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| PC-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 2.1節（PDF p21〜23）：O2供給弁、フレオンで加温するO2リストリクタ（系統1は23.9 lb/hr、系統2は12.0 lb/hr×2）、O2クロスオーバマニホールド、LEHレギュレータ、直接O2弁、エアロックのEMU用O2、100 psigのO2レギュレータを解説する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=21） |
| PC-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Oxygen System（PDF p361〜362）：O2供給弁と最大約25 lb/hrのリストリクタ、通常開のクロスオーバ弁、100±10 psigのO2レギュレータ、LEH O2 8に差し込むブリードオリフィス（0.24／0.36 lbm/hr）を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/361） |
| PC-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-206（PDF p1963）：O2クロスオーバ弁・O2供給弁が開かないなどの閉塞でLES O2供給系の1系統を喪失とみなすと定め、1系統（24 lbm/hr）では5〜8人の呼吸を賄えないとする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1963） |
| PC-10 | 番号なし | NSTS 1988 News Reference Manual – Airlock Support | SCU接続時にオービタの酸素系から900±500 psiaの酸素をエアロック盤AW82Bを通じて供給すると記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html） |
| PC-14 | NTRS 19900001602 | IOA: Analysis of the EPG/PRSD subsystem | 燃料電池とARPCSへ極低温の水素・酸素を貯蔵・分配するPRSDハードウェアの独立FMEA/CIL解析で、PCSへの酸素の供給元を扱う。（出典: https://ntrs.nasa.gov/citations/19900001602） |
| PC-15 | 番号なし | Shuttle Reference: Crew Compartment Cabin Pressurization | PRSDの極低温超臨界酸素が、気体として835〜852 psiaで与圧系へ供給されると記す。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/cabinpress.html） |
| PC-18 | SCOM 2.9節（抜粋） | Environmental Control and Life Support System（NASA-KLASS教材） | 打上げ・帰還用スーツのヘルメットと非常用呼吸マスクへ、呼吸用の酸素を直接供給すると記す。（出典: http://www.nasa-klass.com/Curriculum/Get_Training%201/ECLSS/RDG_ECLSS-Additional/RDG_ECLSS-SubSys_Advanced.pdf） |
| PC-19 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | PCSの酸素をPRSDから受けることを記す。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| PC-23 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.1.2節（PDF p11）：PRSDの酸素をヒータで835〜852 psiaに保ち、O2リストリクタの最大流量を10 lb/hrとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=11） |
| PC-24 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） | 3.6節（PDF p157）：軌道上の非常呼吸ではLEHをオービタの酸素につなぎ、LEH O2の出口は8個で、8人搭乗の飛行ではT弁を搭載すると示す。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=157） |
| PC-25 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | O-12（PDF p264）：閉じたまま開かないO2クロスオーバ弁を、MO10WとC7の間につなぐO2連絡ホースで迂回する手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=264） |
| PC-28 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | C.16節（PDF p77）：FMEAがLEHパネルを非常用システムとして扱った点に、IOAが留保を付けて同意したと記す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=77） |

### 3.3 窒素供給（N2S）（10件）

機能説明書：SSD-FD-ECL-PCS-N2S-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| PC-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 2.2節（PDF p23〜25）：ペイロードベイの4〜8基のN2タンク、モータ駆動のN2供給弁・レギュレータ入口弁、200 psigのN2レギュレータと真空ベント管への逃し弁、水タンク用N2レギュレータ、MMU・ISSへの供給を解説する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=25） |
| PC-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Nitrogen System（PDF p364〜365）：左舷・右舷のN2タンク（OV-103・105は6基、OV-104は5基、2,964 psia）、200±15 psigの2段式レギュレータ、各系統125 lbm/hr以上の供給能力を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/364） |
| PC-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-204・257（PDF p1962・p1971）：N2タンク圧が200（375）psia未満でN2供給を喪失とし、両N2系統を1系統として運用すると定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1962） |
| PC-04 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.2g N2 QTY（PDF p282）：N2量の低下（2基の系統で100未満など）の処置で、MMUのGN2供給隔離弁を閉じて漏れを調べる。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=282） |
| PC-07 | SAE 901290 | Expanded capabilities of the Extended Duration Orbiter | EDO向けの改修の一つとしてN2供給を挙げる。（出典: https://ntrs.nasa.gov/citations/19910065909） |
| PC-18 | SCOM 2.9節（抜粋） | Environmental Control and Life Support System（NASA-KLASS教材） | 窒素が給水・廃水タンクの加圧にも使われると記す。（出典: http://www.nasa-klass.com/Curriculum/Get_Training%201/ECLSS/RDG_ECLSS-Additional/RDG_ECLSS-SubSys_Advanced.pdf） |
| PC-19 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | PCSの窒素で水タンクを加圧することを記す。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| PC-30 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） | 2.6.3節（PDF p42）：テールを太陽に向けた姿勢でGN2系統の漏れがSTS-3と同じ温度・同じ率で現れたが、圧力制御には影響しなかったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=42） |
| PC-32 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | PDF p30：ISS側のクイックディスコネクトが外れていたためISSへのGN2の移送を行えず、再与圧の後はオービタのGN2タンクの圧力がISSの貯蔵圧より低くなったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=30） |
| PC-33 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | PDF p49：ISSへ約22 lbの窒素を移送し、ISS全体の再与圧を4回支援したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=49） |

### 3.4 O2/N2マニホールド・PPO2制御（MNF）（10件）

機能説明書：SSD-FD-ECL-PCS-MNF-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| PC-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 2.3節（PDF p25〜29）：14.7 psiaキャビンレギュレータと8 psia非常用レギュレータ、O2/N2制御弁の手動開閉とAUTO（PPO2 2.95〜3.45 psia）、PPO2 SNSR/VLVスイッチによるセンサとコントローラの対応を解説する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=29） |
| PC-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Oxygen/Nitrogen Manifold・PPO2 Control（PDF p366〜367）：2段式のキャビンレギュレータ（75〜125 lb/hr）、PPO2センサA・BとO2/N2コントローラによる制御弁の自動開閉、PPO2 CNTLRスイッチの通常・非常範囲を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/366） |
| PC-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-203・260（PDF p1961・p1975）：PPO2制御の喪失を定義し、O2/N2コントローラの飛行中点検に両方向の切替の観測を求める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1961） |
| PC-04 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.2a O2(N2) FLOW（PDF p269）：O2・N2流量が4.9 lb/hrを超えたときの処置で、O2/N2共通マニホールドやO2レギュレータの漏れを切り分け、ECLS SSR-3で代替系統へ再構成する。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=269） |
| PC-12 | NTRS抄録（1982年） | Shuttle Orbiter Atmospheric Revitalization Pressure Control Subsystem（Walleshauser他） | ARPCSの構成品として供給盤・制御盤・電子制御器を挙げる（抄録で確認）。（出典: https://www.science.gov/topicpages/p/pressure+control+valves.html） |
| PC-13 | NTRS抄録（1974年） | Design development and test: Two-gas atmosphere control subsystem（Jackson） | 乗員室の主要な大気成分を計測し、酸素と窒素の添加で分圧を狭い範囲に保つ大気制御装置の開発・試験を記す（抄録で確認）。（出典: https://www.science.gov/topicpages/a/atmosphere+total+pressure.html） |
| PC-17 | 番号なし | Shuttle Reference: ECLSS Overview | 酸素分圧を2.95〜3.45 psiaに自動で保ち、約11.5 psiaの窒素を加えて全圧14.7 psiaとすると記す。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/overview.html） |
| PC-23 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.1.2節（PDF p11・p14）：最初の数回の飛行ではキャビンレギュレータを14.5 psiaに調整するとし、PPO2を14.5 psiで3.2 psi、8 psiで2.2 psiに制御するとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=14） |
| PC-26 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 5-62 O2 REPRESS USING PAYLOAD O2 VALVES（PDF p172）：O2/N2制御弁を閉（O2）とし、ペイロード用O2弁を開いてキャビンレギュレータ入口弁で再与圧を始め、止める手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=172） |
| PC-29 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.4.3節（PDF p51）：STS-1の後にN2/O2の制御盤・供給盤とPPO2センサを交換し、改良したキャビンレギュレータを追加したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=51） |

### 3.5 正負圧逃し・ベント（RLF）（9件）

機能説明書：SSD-FD-ECL-PCS-RLF-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| PC-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 2.4節（PDF p30）：正圧逃し弁（15.5 psid）と逃し隔離弁、負圧逃し弁（0.2 psid）、地上用のベント弁・ベント隔離弁（2 psidで1,080 lb/hr）と打上げ前の気密点検（16.7 psia・35分）を解説する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=30） |
| PC-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Cabin Relief Valves・Negative Pressure Relief Valves（PDF p368〜369）：正圧逃し弁（15.5 psid、16.0 psidで150 lb/hr）、中胴へのベント（2.0 psidで1,080 lb/hr）、負圧逃し弁（0.2 psid）を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/368） |
| PC-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-252・253（PDF p1966）：両方の正圧逃し弁を全飛行段階で有効にし、ベント弁は打上げ前に閉じて上昇後に遮断器を開くと定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1966） |
| PC-04 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | ECLS SSR-8（PDF p345）：乗員室漏れの隔離で負圧逃し弁のキャップを押し込み、CAB RELIEF A・Bを閉じ、回復の手順で再び有効にする。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=345） |
| PC-12 | NTRS抄録（1982年） | Shuttle Orbiter Atmospheric Revitalization Pressure Control Subsystem（Walleshauser他） | ARPCSの構成品の一つとしてキャビン逃し弁を挙げる（抄録で確認）。（出典: https://www.science.gov/topicpages/p/pressure+control+valves.html） |
| PC-18 | SCOM 2.9節（抜粋） | Environmental Control and Life Support System（NASA-KLASS教材） | 正・負の圧力逃し弁が乗員室構造を過大圧・過小圧から守ると記す。（出典: http://www.nasa-klass.com/Curriculum/Get_Training%201/ECLSS/RDG_ECLSS-Additional/RDG_ECLSS-SubSys_Advanced.pdf） |
| PC-23 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.1.2節（PDF p14）：正圧逃し弁が15.5 psiで自動的に開いて電磁弁で隔離でき、ベント弁はペイロードベイへベントし、負圧逃し弁が乗員室へ流れを入れるとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=14） |
| PC-28 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | C.16節（PDF p77）：正圧・負圧逃し弁の取付けフランジの割れという故障モードを、IOAは現実的でないとして解析しなかったと記す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=77） |
| PC-29 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.4.3節（PDF p51）：打上げ中止となった試みで、気密点検の後のベント隔離弁の表示が正しく出なかったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=51） |

### 3.6 計測・表示・警報（MON）（10件）

機能説明書：SSD-FD-ECL-PCS-MON-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| PC-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 2.6節（PDF p39〜46）：O2/N2 CNTLRとPPO2 C/CABIN dP/dTの遮断器が給電するトランスデューサ、バックアップ・等価dP/dT、O2濃度とN2量の計算、SPEC 66・SYS SUMM 1・O1の計器、CABIN ATM灯の限界を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=39） |
| PC-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.2節（PDF p116・p123・p132）：ハードウェアC&Wの乗員室圧・PPO2・O2/N2流量のチャネルとCABIN ATM灯、dP/dtのクラス1警報（-0.08 psi/min）とクラス3警報を示し、2.9節（p367）でO1の計器と流量センサの範囲を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/132） |
| PC-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-205（PDF p1962）：3個のPPO2センサの比較によるセンサの喪失を定義し、A17-302A（p1977）で乗員室圧トランスデューサが故障したときは10.2 psiaへの減圧を行わないと定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1962） |
| PC-04 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.2b・6.2c（PDF p271・p277）：乗員室圧が13.8（10.0）psia未満・15.2（10.6）psia超、PPO2が2.70（2.55）psia未満・3.60（2.90）psia超のときの処置を示し、PPO2 AかBが2.50未満ならQDMを着ける。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=277） |
| PC-22 | USA006019 Rev. A（C&W 21002） | Caution and Warning（2008年） | 3.4節（PDF p48〜49）：dP/dTセンサが-0.08 psi/minを超えるとクラス1の警報を出し、バックアップdP/dTと等価dP/dTは下限を超えたときにクラス3の警報だけを出すと示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=48） |
| PC-24 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） | 3.26節 表3.26-5（PDF p658）：CABIN ATM灯の条件を、乗員室圧14.1 psia未満・15.3 psia超、PPO2 2.8 psia未満・3.6 psia超、O2・GN2流量5 lb/hr超とする。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=658） |
| PC-25 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | 4-6（PDF p102）：フライトデッキ右舷のR17・R18パネルの裏にあるPPO2センサA・B・Cのフィルタの清掃を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=102） |
| PC-30 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） | 2.6.3節（PDF p42）：上昇中にdP/dtが-0.05 psi/minの警報点を超えてクラクソンが作動し、最初の4回の飛行で毎回起きたため作動値を上げる変更を進めたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=42） |
| PC-32 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | PDF p31：EVA後の再与圧の後に系統1の窒素流量センサの表示が0になり、飛行後の試験でセンサの故障を確かめたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=31） |
| PC-34 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | PDF p20：窒素による再与圧（27 lb）の後に窒素流量計のトランスデューサが不安定になり、新しい固体式のトランスデューサとして今後の飛行で監視するとしたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=20） |

### 3.7 与圧運用管理（OPS）（16件）

機能説明書：SSD-FD-ECL-PCS-OPS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| PC-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 2.7節（PDF p47〜48）：上昇・再突入と軌道上のPCSの構成、O2ブリードオリフィス、飛行の中間での系統2への切替、10.2 psia運用の選択肢と手動での管理を解説する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=47） |
| PC-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Operations（PDF p403〜404）：上昇・軌道・再突入のPCSの構成、ブリードオリフィスの取付け、10.2 psia運用の選択肢と手動での管理、ISS飛行でのPCS 1構成の延期を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/403） |
| PC-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-201・202・251・254〜256・258（PDF p1955〜1973）とA17-301〜309（p1977〜1983）：気密の喪失と8 psia・165分の帰還能力、通常構成、O2濃度、8 psia非常構成、Tmax、10.2 psia運用の管理を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1964） |
| PC-04 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | ECLS SSR-8・FRP-1・FRP-3（PDF p345・p364・p366）：小さな乗員室漏れの隔離、手動での乗員室大気の管理、火災・有害物質・隔離できないO2漏れのときの乗員室のO2制御（Tmaxの決定）を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=366） |
| PC-06 | JSC-16730 | ECLSS Analysis of STS-1: 9-psia EVA Configuration | EVAに備えて乗員室圧を9 psiaとした構成での冷却能力をSECUREで評価した。（出典: https://ntrs.nasa.gov/citations/19800020542） |
| PC-10 | 番号なし | NSTS 1988 News Reference Manual – Airlock Support | EVA前に乗員室を14.7 psiaから12.5 psiaを経て10.2 psiaへ減圧する手順を記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html） |
| PC-16 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report | EVA準備での乗員室の10.2 psiへの減圧と、窒素の消費量から見た乗員室の漏れの少なさを記録する。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf） |
| PC-20 | NASA/TP-2011-216147 | Preventing Decompression Sickness Over Three Decades of Extravehicular Activity（Conkin、2011年） | 乗員室を10.2 psia・酸素26.5%とするシャトルの段階減圧プロトコルの手順と経緯を解説し、STS-41B（1984年）を初適用と記す。（出典: https://www.nasa.gov/wp-content/uploads/2023/03/conkin-prebreathe-overview-tp216147-2011.pdf） |
| PC-21 | NASA TM-58259 | Verification of an altitude decompression sickness protocol for Shuttle operations utilizing a 10.2 psi pressure stage（Waligora他、1984年） | 10.2 psia・酸素26.5%の段階減圧プリブリーズを検証した報告で、NASAのプリブリーズ文献目録で所在を確認した（本体PDFは未入手）。（出典: https://www.nasa.gov/wp-content/uploads/2023/03/prebreathe-library-summary-of-contents.pdf） |
| PC-25 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | L-5（PDF p205）：超音波漏れ検知器で漏れ箇所を探し、発泡材などで乗員室の漏れをふさぐ手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=205） |
| PC-26 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 5-20 PCS 1(2) CONFIG（PDF p130）：軌道上の構成で、選んだ系統のキャビンレギュレータ入口弁・O2レギュレータ入口弁・水タンク用N2レギュレータ入口弁だけを開き、O2/N2制御弁をAUTOにする手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=130） |
| PC-27 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | 3.4.6.1節（PDF p215）：最小の酸素分圧を8 psiaの乗員室で1.95 psia・14.7 psiaで2.7 psia、最小の乗員室全圧を8 psia、乗員室の酸素の最大割合を30%とする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=215） |
| PC-29 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.4.3節（PDF p51）：乗員室の漏れ率がSTS-1の2.7 lb/日に対して0.7 lb/日だったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=51） |
| PC-31 | JSC-19278 | STS-8 National Space Transportation Systems Program Mission Report（1983年） | PDF p8：乗員室の漏れがWCSに特定され、乗員が手動で乗員室圧を所望の値に保ったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf#page=8） |
| PC-32 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | PDF p30〜31：ISSへ移すGN2を増やすためドッキング直前まで14.7 psiaレギュレータを隔離し、EVAに備えて10.2 psiへ減圧し、ドッキング中はオービタが全体の圧力を制御したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=30） |
| PC-33 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | PDF p49：O2/N2制御盤の自動切替の点検は、乗員の予定、ISSとの合同のPCS運用、3回のEVAのため完了せず、飛行後にKSCで行うとしたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=49） |

## 4. 文書×機能マトリクス（全件）

| ID | 文書番号 | 表題 | 全般 | O2S | N2S | MNF | RLF | MON | OPS | 出典 | URL |
|---|---|---|---|---|---|---|---|---|---|---|---|
| PC-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | ● | ● | ● | ● | ● | ● | ● | REF-002（A-01） | https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf |
| PC-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | ● | ● | ● | ● | ● | ● | ● | REF-002（A-04） | https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual |
| PC-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | ● | ● | ● | ● | ● | ● | ● | REF-002（B-01） | https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf |
| PC-04 | JSC-48027 Rev. F | Malfunction Procedures（MAL） |  |  | ● | ● | ● | ● | ● | REF-002（B-06） | https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf |
| PC-05 | JSC-16720 | STS-1 ECLSS Consumables and Thermal Analysis | ● |  |  |  |  |  |  | REF-002（E-01） | https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf |
| PC-06 | JSC-16730 | ECLSS Analysis of STS-1: 9-psia EVA Configuration |  |  |  |  |  |  | ● | REF-002（E-02） | https://ntrs.nasa.gov/citations/19800020542 |
| PC-07 | SAE 901290 | Expanded capabilities of the Extended Duration Orbiter |  |  | ● |  |  |  |  | REF-002（F-01） | https://ntrs.nasa.gov/citations/19910065909 |
| PC-08 | IOA報告（1986年） | IOA: Analysis of the ARPCS | ● |  |  |  |  |  |  | REF-002（H-01） | https://core.ac.uk/works/24872612 |
| PC-09 | NTRS 19900001641 | IOA: Assessment of the ARPCS FMEA/CIL | ● |  |  |  |  |  |  | REF-002（H-02） | https://ntrs.nasa.gov/citations/19900001641 |
| PC-10 | 番号なし | NSTS 1988 News Reference Manual – Airlock Support |  | ● |  |  |  |  | ● | REF-002（N-02） | https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html |
| PC-11 | NTRS 19750056784 | The shuttle orbiter cabin atmospheric revitalization systems | ● |  |  |  |  |  |  | REF-002（N-03） | https://ntrs.nasa.gov/citations/19750056784 |
| PC-12 | NTRS抄録（1982年） | Shuttle Orbiter Atmospheric Revitalization Pressure Control Subsystem（Walleshauser他） | ● |  |  | ● | ● |  |  | REF-002（N-04） | https://www.science.gov/topicpages/p/pressure+control+valves.html |
| PC-13 | NTRS抄録（1974年） | Design development and test: Two-gas atmosphere control subsystem（Jackson） |  |  |  | ● |  |  |  | REF-002（N-05） | https://www.science.gov/topicpages/a/atmosphere+total+pressure.html |
| PC-14 | NTRS 19900001602 | IOA: Analysis of the EPG/PRSD subsystem |  | ● |  |  |  |  |  | REF-002（N-06） | https://ntrs.nasa.gov/citations/19900001602 |
| PC-15 | 番号なし | Shuttle Reference: Crew Compartment Cabin Pressurization | ● | ● |  |  |  |  |  | REF-002（N-08） | https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/cabinpress.html |
| PC-16 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report |  |  |  |  |  |  | ● | REF-002（N-15） | https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf |
| PC-17 | 番号なし | Shuttle Reference: ECLSS Overview | ● |  |  | ● |  |  |  | REF-002（N-17） | https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/overview.html |
| PC-18 | SCOM 2.9節（抜粋） | Environmental Control and Life Support System（NASA-KLASS教材） | ● | ● | ● |  | ● |  |  | REF-002（N-18） | http://www.nasa-klass.com/Curriculum/Get_Training%201/ECLSS/RDG_ECLSS-Additional/RDG_ECLSS-SubSys_Advanced.pdf |
| PC-19 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | ● | ● | ● |  |  |  |  | REF-002（N-19） | https://www.spaceshuttleguide.com/system/environmental%20Controls.htm |
| PC-20 | NASA/TP-2011-216147 | Preventing Decompression Sickness Over Three Decades of Extravehicular Activity（Conkin、2011年） |  |  |  |  |  |  | ● | REF-002（N-20） | https://www.nasa.gov/wp-content/uploads/2023/03/conkin-prebreathe-overview-tp216147-2011.pdf |
| PC-21 | NASA TM-58259 | Verification of an altitude decompression sickness protocol for Shuttle operations utilizing a 10.2 psi pressure stage（Waligora他、1984年） |  |  |  |  |  |  | ● | REF-002（N-21） | https://www.nasa.gov/wp-content/uploads/2023/03/prebreathe-library-summary-of-contents.pdf |
| PC-22 | USA006019 Rev. A（C&W 21002） | Caution and Warning（2008年） |  |  |  |  |  | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf |
| PC-23 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | ● | ● |  | ● | ● |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf |
| PC-24 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） |  | ● |  |  |  | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf |
| PC-25 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） |  | ● |  |  |  | ● | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf |
| PC-26 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） |  |  |  | ● |  |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf |
| PC-27 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） |  |  |  |  |  |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf |
| PC-28 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | ● | ● |  |  | ● |  |  | 新規 | https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf |
| PC-29 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） |  |  |  | ● | ● |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf |
| PC-30 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） |  |  | ● |  |  | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf |
| PC-31 | JSC-19278 | STS-8 National Space Transportation Systems Program Mission Report（1983年） |  |  |  |  |  |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf |
| PC-32 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） |  |  | ● |  |  | ● | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf |
| PC-33 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） |  |  | ● |  |  |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf |
| PC-34 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） |  |  |  |  |  | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf |

## 5. 注記（出典間の相違・構成変更）

> **注記** PC-02（SCOM）の関連内容に示す頁はUSA007587 Rev. A CPN-1のPDF通し頁で、出典URLの末尾の番号と一致する。PC-03（運用飛行規則）は同じくNSTS-12820 Vol. A PCN-1のPDF通し頁である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/360）

> **注記** PC-05〜PC-21は、SSD-ECLSS-REF-002で確認した内容（抄録・Webページ・前回の調査）を下位機能ごとに書き分けたもので、今回は本文を再確認していない。（出典: https://www.science.gov/topicpages/p/pressure+control+valves.html）

> **注記** CABIN ATM灯の乗員室圧・PPO2の限界は、PC-01（訓練マニュアル）・PC-02（SCOM）・PC-24（1987年の飛行運用マニュアル）で値が異なる（SSD-FD-ECL-PCS-MON-001の注記を参照）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/406）

> **注記** PRSDから受ける酸素の圧力は、PC-01・PC-02・PC-23で値が異なる（SSD-FD-ECL-PCS-O2S-001の注記を参照）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/360）

## 6. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（34件） |
