# ECLSS 機能別関連文書一覧

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-ECLSS-REF-002 |
| 表題 | ECLSS 機能別関連文書一覧 |
| 版・日付 | Rev. B／2026-09-26 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECLSS-001 |
| 関連図 | SSD-SYS-ARC-001 図4 ECLSS 関連文書マトリクス |

## 1. 目的

ECLSSの各機能に関係する公開文書を機能別に整理し、各機能説明書と図4 ECLSS 関連文書マトリクス（文書×機能マトリクス）の根拠とする。

## 2. 調査方法

前回作成したSSD-ECLSS-REF-001（本プロジェクト内の仮番号、44件）から機能との関係が明確な29件を選び、機能別に不足していた文書（大気再生、給水・廃水、エアロック、煙検知・消火など）22件を今回の調査で追加した（ID「N-」）。各文書の番号・表題・確認に使ったURLは表の各行に示す。Rev. Aでは、B-01の原本（NSTS-12820 Vol. A、Final／PCN-1）を入手して内容を確認し、関係する機能の列に●を追加した。規則と機能の対応はSSD-OPS-REF-001に示す。Rev. Bでは、A-04の原本（USA007587 Rev. A CPN-1、SFOC-FL0884の後継）を入手して内容を確認し、文書番号とURLを更新して関係する機能の列に●を追加した。節と機能の対応はSSD-OPS-REF-002に示す。

## 3. 機能別関連文書

### 3.1 ECLSS 全般（10件）

機能説明書：SSD-FD-ECLSS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| A-04 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | OI-33時点の乗員向け運用マニュアル（USA007587 Rev. A CPN-1、SFOC-FL0884の後継）。2.9節 ECLSS（64頁）がPCS・ARS・ATCS・給水・廃水の4系を扱い、廃棄物管理は2.25節、煙検知・消火は2.2節、外部エアロックは2.11節にある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/357） |
| A-06 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 飛行実績で検証された運用性能データの公式集約文書。（出典: https://ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf） |
| A-07 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | ECLSSの構成系統を平易に解説する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html） |
| B-01 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | 全飛行共通の運用飛行規則（Final 2002-06-20、PCN-1 2002-11-21）。第17章 LIFE SUPPORT（85規則）と第18章 THERMAL（56規則）がECLSSを扱い、Go/No-Go基準はA17-1001とA18-1001。飛行ごとの規則はAnnex（NSTS-18308）にある。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2032） |
| B-06 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 時間的余裕のある故障対処手順集。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf） |
| D-01 | NASA CR-1981 | Space Shuttle EC/LSS（Hamilton Standard、1972年） | 4人・7日間のベースラインEC/LSSを定義し、フェイルセーフ／フェイルオペレーショナル思想を採用した。（出典: https://ntrs.nasa.gov/api/citations/19720017476/downloads/19720017476.pdf） |
| D-04 | SAE 921348 | Shuttle Orbiter ECLSS – Flight experience（1992年） | 6主要サブシステムの全体設計と45飛行の運用実績、主要不具合と改修をまとめる。（出典: https://ntrs.nasa.gov/citations/19930057510） |
| N-17 | 番号なし | Shuttle Reference: ECLSS Overview | ECLSSの構成系統、乗員室の圧力・組成、FES・アンモニアボイラによる排熱の運用を概説する。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/overview.html） |
| N-18 | SCOM 2.9節（抜粋） | Environmental Control and Life Support System（NASA-KLASS教材） | ECLSSを4つの系に分けて説明するSCOM 2.9節の抜粋で、圧力制御系の構成を詳述する。（出典: http://www.nasa-klass.com/Curriculum/Get_Training%201/ECLSS/RDG_ECLSS-Additional/RDG_ECLSS-SubSys_Advanced.pdf） |
| N-19 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | PCS・ARS・ATCS・給水/廃水の各系の構成と相互インタフェース（PRSDからのO2供給、N2による水タンク加圧など）を解説する。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |

### 3.2 圧力制御系（PCS）（20件）

機能説明書：SSD-FD-ECL-PCS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| A-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | PCS・ARS・ATCS・給水/廃水の4系統と外部エアロックを解説し、付録CにEDO改修を収録する。訓練専用で、運用データの出典には使わないよう明記されている。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf） |
| A-04 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節「Pressure Control System」：O2・N2供給系、O2/N2マニホールド、PPO2制御、キャビン逃し弁・ベント弁、負圧逃し弁、エアロックの減圧・均圧弁の構成とスイッチを示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/360） |
| B-01 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | 圧力制御系の喪失定義（A17-201〜206：キャビン気密、8 psia緊急時の165分帰還能力、PPO2制御、N2供給ほか）と管理（A17-251〜260）、10.2 psia運用（A17-301〜309）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1955） |
| E-01 | JSC-16720 | STS-1 ECLSS Consumables and Thermal Analysis | STS-1のECLSS・熱解析で、大気ガス、アンモニア、LiOHの収支表を含む。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf） |
| E-02 | JSC-16730 | ECLSS Analysis of STS-1: 9-psia EVA Configuration | 乗員室圧を9 psiaとした場合の冷却能力をSECUREで評価した。（出典: https://ntrs.nasa.gov/citations/19800020542） |
| F-01 | SAE 901290 | Expanded capabilities of the Extended Duration Orbiter | 再生式CO2除去、N2供給、改良WCSなどのEDO向け改修を概説する。（出典: https://ntrs.nasa.gov/citations/19910065909） |
| H-01 | IOA報告（1986年） | IOA: Analysis of the ARPCS | ARPCSを大気補給・制御系と大気ベント・制御系に分け、トップダウンで故障モードと臨界度を解析する。（出典: https://core.ac.uk/works/24872612） |
| H-02 | NTRS 19900001641 | IOA: Assessment of the ARPCS FMEA/CIL | H-01の結果を51-L事故後のNASA FMEA/CIL改訂案と比較する。（出典: https://ntrs.nasa.gov/citations/19900001641） |
| N-02 | 番号なし | NSTS 1988 News Reference Manual – Airlock Support | エアロック、EMU、SCUによる電力・酸素・冷却・水の供給、EVA前の減圧と再与圧の手順を解説する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html） |
| N-03 | NTRS 19750056784 | The shuttle orbiter cabin atmospheric revitalization systems | ARPCSの2ガス方式とARSの構成を示し、1973年以降の設計変更（水冷却ループのサブリメータ撤去など）を列挙する。（出典: https://ntrs.nasa.gov/citations/19750056784） |
| N-04 | NTRS抄録（1982年） | Shuttle Orbiter Atmospheric Revitalization Pressure Control Subsystem（Walleshauser他） | 1気圧環境と非常時の8 psiaモードで酸素分圧と全圧を制御するARPCSを説明し、供給盤・制御盤・キャビン逃し弁・電子制御器から成ると記す（抄録で確認）。（出典: https://www.science.gov/topicpages/p/pressure+control+valves.html） |
| N-05 | NTRS抄録（1974年） | Design development and test: Two-gas atmosphere control subsystem（Jackson） | 乗員室の主要大気成分を計測し、酸素と窒素の添加で分圧を狭い範囲に保つ大気制御装置の開発・試験。（出典: https://www.science.gov/topicpages/a/atmosphere+total+pressure.html） |
| N-06 | NTRS 19900001602 | IOA: Analysis of the EPG/PRSD subsystem | 燃料電池とARPCSへ極低温の水素・酸素を貯蔵・分配するPRSDハードウェアの独立FMEA/CIL解析。（出典: https://ntrs.nasa.gov/citations/19900001602） |
| N-08 | 番号なし | Shuttle Reference: Crew Compartment Cabin Pressurization | 2系統の酸素系と2系統の窒素系による乗員室与圧と、PRSDからの酸素供給条件を解説する。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/cabinpress.html） |
| N-15 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report | EVA準備での乗員室10.2 psi減圧、エアロック系の作動、WCSの故障灯、窒素消費量から見た乗員室漏れの少なさなど、飛行中のECLSS実績を記録する。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf） |
| N-17 | 番号なし | Shuttle Reference: ECLSS Overview | ECLSSの構成系統、乗員室の圧力・組成、FES・アンモニアボイラによる排熱の運用を概説する。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/overview.html） |
| N-18 | SCOM 2.9節（抜粋） | Environmental Control and Life Support System（NASA-KLASS教材） | ECLSSを4つの系に分けて説明するSCOM 2.9節の抜粋で、圧力制御系の構成を詳述する。（出典: http://www.nasa-klass.com/Curriculum/Get_Training%201/ECLSS/RDG_ECLSS-Additional/RDG_ECLSS-SubSys_Advanced.pdf） |
| N-19 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | PCS・ARS・ATCS・給水/廃水の各系の構成と相互インタフェース（PRSDからのO2供給、N2による水タンク加圧など）を解説する。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| N-20 | NASA/TP-2011-216147 | Preventing Decompression Sickness Over Three Decades of Extravehicular Activity（Conkin、2011年） | 乗員室を10.2 psia・酸素26.5%とするシャトルの段階減圧プロトコルの手順と経緯を解説し、STS-41B（1984年）を初適用と記す。（出典: https://www.nasa.gov/wp-content/uploads/2023/03/conkin-prebreathe-overview-tp216147-2011.pdf） |
| N-21 | NASA TM-58259 | Verification of an altitude decompression sickness protocol for Shuttle operations utilizing a 10.2 psi pressure stage（Waligora他、1984年） | 10.2 psia・酸素26.5%の段階減圧プリブリーズを検証した報告。NASAのプリブリーズ文献目録で所在を確認した（本体PDFは未入手）。（出典: https://www.nasa.gov/wp-content/uploads/2023/03/prebreathe-library-summary-of-contents.pdf） |

### 3.3 大気再生系（ARS）（12件）

機能説明書：SSD-FD-ECL-ARS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| A-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | PCS・ARS・ATCS・給水/廃水の4系統と外部エアロックを解説し、付録CにEDO改修を収録する。訓練専用で、運用データの出典には使わないよう明記されている。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf） |
| A-04 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節「Atmospheric Revitalization System」：キャビン空気の循環、LiOHキャニスタ・RCRSによるCO2除去、キャビンの温度・湿度制御、アビオニクスベイ・IMUの冷却、水冷却ループを示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369） |
| B-01 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | ARS空気系の喪失定義（A17-101〜106：キャビンファン、アビオニクスベイ冷却、RCRS）と管理（A17-151〜158：キャビン温度、RCRS停止基準、LiOHレッドライン）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1929） |
| E-01 | JSC-16720 | STS-1 ECLSS Consumables and Thermal Analysis | STS-1のECLSS・熱解析で、大気ガス、アンモニア、LiOHの収支表を含む。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf） |
| E-02 | JSC-16730 | ECLSS Analysis of STS-1: 9-psia EVA Configuration | 乗員室圧を9 psiaとした場合の冷却能力をSECUREで評価した。（出典: https://ntrs.nasa.gov/citations/19800020542） |
| F-01 | SAE 901290 | Expanded capabilities of the Extended Duration Orbiter | 再生式CO2除去、N2供給、改良WCSなどのEDO向け改修を概説する。（出典: https://ntrs.nasa.gov/citations/19910065909） |
| F-02 | SAE 901292 | The EDO Regenerable CO2 Removal System | RCRSは固体アミンでCO2と水蒸気を吸着して真空へ脱着し、30分周期でベッドを切り替える。（出典: https://saemobilus.sae.org/content/901292） |
| F-03 | SAE 932294 | Development and Flight Status Report on the EDO RCRS | RCRSの開発・認定試験とSTS-50/52/55での飛行実証を報告する。（出典: https://saemobilus.sae.org/content/932294） |
| N-01 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS | 水冷却ループ、ATCS、給水・廃水、WCS、廃水タンクの構成と運用を解説する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| N-03 | NTRS 19750056784 | The shuttle orbiter cabin atmospheric revitalization systems | ARPCSの2ガス方式とARSの構成を示し、1973年以降の設計変更（水冷却ループのサブリメータ撤去など）を列挙する。（出典: https://ntrs.nasa.gov/citations/19750056784） |
| N-16 | NTRS抄録（1974年） | Orbiter ECLSS support of Shuttle payloads（Jaax他） | 大気再生、乗員生命維持、能動熱制御の各機能を、自動衛星・Spacelab・国防総省ミッションのペイロード支援の観点から記述する。（出典: https://www.science.gov/topicpages/s/shuttle+orbiter+payload） |
| N-19 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | PCS・ARS・ATCS・給水/廃水の各系の構成と相互インタフェース（PRSDからのO2供給、N2による水タンク加圧など）を解説する。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |

### 3.4 能動熱制御系（ATCS）（16件）

機能説明書：SSD-FD-ECL-ATCS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| A-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | PCS・ARS・ATCS・給水/廃水の4系統と外部エアロックを解説し、付録CにEDO改修を収録する。訓練専用で、運用データの出典には使わないよう明記されている。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf） |
| A-04 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節「Active Thermal Control System」：2系統のフレオン冷却ループ、コールドプレートと熱交換器、放熱器と流量制御、FES、アンモニアボイラを示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/380） |
| B-01 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | ARS水ループの喪失定義と管理（A18-101・151）と、フレオン冷却ループ・FES・アンモニアボイラ・放熱器流量制御の喪失定義と管理（A18-201〜257）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2059） |
| D-05 | NTRS 19850008615 | Other Challenges in the Development of the Orbiter Environmental Control Hardware | アンモニアボイラ、煙検知器、水/水素セパレータ、WCSの開発課題と解決策を扱う。（出典: https://ntrs.nasa.gov/citations/19850008615） |
| D-06 | NTRS 19850008614 | Challenges in the Development of the Orbiter ATCS | 多ループ熱交換器の最適化、FES、統合ATCS試験を解説する。（出典: https://ntrs.nasa.gov/citations/19850008614） |
| E-01 | JSC-16720 | STS-1 ECLSS Consumables and Thermal Analysis | STS-1のECLSS・熱解析で、大気ガス、アンモニア、LiOHの収支表を含む。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf） |
| G-01 | NTRS 19810005651 | Thermal Vacuum Performance Testing of the Orbiter Radiator System | 1979年のJSCチャンバAでのラジエータ熱真空試験。（出典: https://ntrs.nasa.gov/api/citations/19810005651/downloads/19810005651.pdf） |
| G-02 | NTRS 19810005632 | Orbiter Integrated Active Thermal Control Subsystem Test | GSE熱交換器・FES・ラジエータ・アンモニアボイラを含むATCS統合熱真空試験。（出典: https://ntrs.nasa.gov/api/citations/19810005632/downloads/19810005632.pdf） |
| G-03 | NTRS 19810005631 | Thermodynamic performance testing of the orbiter flash evaporator system | 開発用FESの熱真空試験とATCS統合試験での組合せ試験。（出典: https://ntrs.nasa.gov/citations/19810005631） |
| G-04 | NTRS 20070023916 | Effects of Free Molecular Heating on the Shuttle ATCS | STS-121で自由分子加熱によりFES給水を約50 lbm余分に消費し、ラジエータ熱流束モデルを改訂した。（出典: https://ntrs.nasa.gov/citations/20070023916） |
| H-03 | NTRS 19900002466 | IOA: Analysis of the Active Thermal Control Subsystem | ATCSの独立FMEA/CIL解析。（出典: https://ntrs.nasa.gov/citations/19900002466） |
| H-04 | NTRS 19900001663 | IOA: Assessment of the ATCS FMEA/CIL（1988年） | H-03の結果をNASA・プライム契約者のFMEA/CILと比較評価する。（出典: https://ntrs.nasa.gov/api/citations/19900001663/downloads/19900001663.pdf） |
| N-01 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS | 水冷却ループ、ATCS、給水・廃水、WCS、廃水タンクの構成と運用を解説する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| N-16 | NTRS抄録（1974年） | Orbiter ECLSS support of Shuttle payloads（Jaax他） | 大気再生、乗員生命維持、能動熱制御の各機能を、自動衛星・Spacelab・国防総省ミッションのペイロード支援の観点から記述する。（出典: https://www.science.gov/topicpages/s/shuttle+orbiter+payload） |
| N-17 | 番号なし | Shuttle Reference: ECLSS Overview | ECLSSの構成系統、乗員室の圧力・組成、FES・アンモニアボイラによる排熱の運用を概説する。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/overview.html） |
| N-19 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | PCS・ARS・ATCS・給水/廃水の各系の構成と相互インタフェース（PRSDからのO2供給、N2による水タンク加圧など）を解説する。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |

### 3.5 給水・廃水系（H2O）（9件）

機能説明書：SSD-FD-ECL-H2O-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| A-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | PCS・ARS・ATCS・給水/廃水の4系統と外部エアロックを解説し、付録CにEDO改修を収録する。訓練専用で、運用データの出典には使わないよう明記されている。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf） |
| A-04 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節「Supply and Waste Water Systems」：給水タンクと水素分離器・微生物フィルタ、N2によるタンク加圧、給水・廃水のダンプとノズルヒータ、ギャレーへの給水を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/393） |
| B-01 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | 給水の喪失定義と管理（A18-1〜62：タンク、ダンプ、漏れ、給水レッドライン）、廃水の喪失定義と管理（A17-451〜507）、ガレーのヨウ素除去（A17-551）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2040） |
| D-05 | NTRS 19850008615 | Other Challenges in the Development of the Orbiter Environmental Control Hardware | アンモニアボイラ、煙検知器、水/水素セパレータ、WCSの開発課題と解決策を扱う。（出典: https://ntrs.nasa.gov/citations/19850008615） |
| G-04 | NTRS 20070023916 | Effects of Free Molecular Heating on the Shuttle ATCS | STS-121で自由分子加熱によりFES給水を約50 lbm余分に消費し、ラジエータ熱流束モデルを改訂した。（出典: https://ntrs.nasa.gov/citations/20070023916） |
| G-07 | SAE 2006-01-2014 | Shuttle Potable Water Quality from STS-26 to STS-114 | 燃料電池水をMCVでヨウ素処理して貯蔵する飲料水系の水質要求と分析結果。（出典: https://saemobilus.sae.org/content/2006-01-2014） |
| G-08 | NTRS 19780014776 | Water system microbial check valve development | ヨウ素含浸樹脂で非飲料系から飲料系への微生物移行を防ぐMCVの開発。（出典: https://ntrs.nasa.gov/citations/19780014776） |
| N-01 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS | 水冷却ループ、ATCS、給水・廃水、WCS、廃水タンクの構成と運用を解説する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| N-07 | IOA報告（1987年・1988年） | IOA: Analysis / Assessment of the life support and airlock support subsystems | 給水・代謝廃棄物・廃水・煙検知・消火を担うLSSと、EVAを支えるALSSの独立解析と、NASA FMEA/CILとの比較評価。（出典: https://www.science.gov/topicpages/a/analysis+results+support） |

### 3.6 廃棄物収集系（WCS）（10件）

機能説明書：SSD-FD-ECL-WCS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| A-04 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.25節 Waste Management System：固形廃棄物の収集・乾燥、尿と EMU凝縮水の廃水タンクへの移送、ファンセパレータ、真空ベント、代替の採便・採尿を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/755） |
| B-01 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | 廃棄物収集系・真空ベントの喪失定義（A17-351〜354）と管理（A17-401〜405：使用制約、代替の採便・採尿、真空ベント）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1984） |
| D-05 | NTRS 19850008615 | Other Challenges in the Development of the Orbiter Environmental Control Hardware | アンモニアボイラ、煙検知器、水/水素セパレータ、WCSの開発課題と解決策を扱う。（出典: https://ntrs.nasa.gov/citations/19850008615） |
| F-01 | SAE 901290 | Expanded capabilities of the Extended Duration Orbiter | 再生式CO2除去、N2供給、改良WCSなどのEDO向け改修を概説する。（出典: https://ntrs.nasa.gov/citations/19910065909） |
| F-04 | NTRS 19910065910 | The Extended Duration Orbiter Waste Collection System | 冗長ファンと尿分離器を持つEDO向けWCS。（出典: https://ntrs.nasa.gov/citations/19910065910） |
| G-05 | MDC H1360 | Improved Orbiter Waste Collection System Study（1984年） | 既存WCSの飛行中の使用上の問題を解決する改良概念を検討した。（出典: https://ntrs.nasa.gov/citations/19850009239） |
| G-06 | SAE 861003 | Shuttle Waste Management System Design Improvements and Flight Evaluation | 個人用ユリナル、尿収集気流の増加などの改良と飛行評価。（出典: https://saemobilus.sae.org/content/861003） |
| N-01 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS | 水冷却ループ、ATCS、給水・廃水、WCS、廃水タンクの構成と運用を解説する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| N-07 | IOA報告（1987年・1988年） | IOA: Analysis / Assessment of the life support and airlock support subsystems | 給水・代謝廃棄物・廃水・煙検知・消火を担うLSSと、EVAを支えるALSSの独立解析と、NASA FMEA/CILとの比較評価。（出典: https://www.science.gov/topicpages/a/analysis+results+support） |
| N-15 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report | EVA準備での乗員室10.2 psi減圧、エアロック系の作動、WCSの故障灯、窒素消費量から見た乗員室漏れの少なさなど、飛行中のECLSS実績を記録する。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf） |

### 3.7 エアロック支援系（ALS）（10件）

機能説明書：SSD-FD-ECL-ALS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| A-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | PCS・ARS・ATCS・給水/廃水の4系統と外部エアロックを解説し、付録CにEDO改修を収録する。訓練専用で、運用データの出典には使わないよう明記されている。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf） |
| A-04 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.11節「External Airlock」：外部エアロックの構成、ハッチ、再加圧、EMUとのインタフェースを示す。エアロックの減圧・均圧弁は2.9節、ODSの外部エアロックは2.19節にある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/451） |
| B-01 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | エアロック構成（A15-13）、外部エアロック（A15-201〜205：ハッチ断熱カバー、LCGの圧力・温度管理、EVA後の除染）、外部エアロックの水配管（A18-60〜62）とヒータ喪失時の管理（A18-306）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1846） |
| N-02 | 番号なし | NSTS 1988 News Reference Manual – Airlock Support | エアロック、EMU、SCUによる電力・酸素・冷却・水の供給、EVA前の減圧と再与圧の手順を解説する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html） |
| N-07 | IOA報告（1987年・1988年） | IOA: Analysis / Assessment of the life support and airlock support subsystems | 給水・代謝廃棄物・廃水・煙検知・消火を担うLSSと、EVAを支えるALSSの独立解析と、NASA FMEA/CILとの比較評価。（出典: https://www.science.gov/topicpages/a/analysis+results+support） |
| N-14 | NTRS 20130013499 | So Close Yet So Far: The Jammed Airlock Hatch of STS-80 | STS-80でのエアロックハッチ固着事例を扱い、1988年版マニュアルのエアロック支援の章を参照する。（出典: https://ntrs.nasa.gov/api/citations/20130013499/downloads/20130013499.pdf） |
| N-15 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report | EVA準備での乗員室10.2 psi減圧、エアロック系の作動、WCSの故障灯、窒素消費量から見た乗員室漏れの少なさなど、飛行中のECLSS実績を記録する。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf） |
| N-20 | NASA/TP-2011-216147 | Preventing Decompression Sickness Over Three Decades of Extravehicular Activity（Conkin、2011年） | 乗員室を10.2 psia・酸素26.5%とするシャトルの段階減圧プロトコルの手順と経緯を解説し、STS-41B（1984年）を初適用と記す。（出典: https://www.nasa.gov/wp-content/uploads/2023/03/conkin-prebreathe-overview-tp216147-2011.pdf） |
| N-21 | NASA TM-58259 | Verification of an altitude decompression sickness protocol for Shuttle operations utilizing a 10.2 psi pressure stage（Waligora他、1984年） | 10.2 psia・酸素26.5%の段階減圧プリブリーズを検証した報告。NASAのプリブリーズ文献目録で所在を確認した（本体PDFは未入手）。（出典: https://www.nasa.gov/wp-content/uploads/2023/03/prebreathe-library-summary-of-contents.pdf） |
| N-22 | NTRS 20140003729 | Evidence Report: Risk of Decompression Sickness (DCS) | シャトルの段階減圧からISSのキャンプアウト方式まで、減圧症予防プロトコルの経緯と根拠を整理する。（出典: https://ntrs.nasa.gov/api/citations/20140003729/downloads/20140003729.pdf） |

### 3.8 煙検知・消火系（FDS）（11件）

機能説明書：SSD-FD-ECL-FDS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| A-04 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.2節「Smoke Detection and Fire Suppression」：煙検知器（A群・B群）とSMOKE DETECTIONライト、アビオニクスベイの固定消火器と携帯消火器（Halon 1301）、消火ポートを示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/117） |
| B-01 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | 火災・火災後の定義と、煙検知喪失・前部アビオニクスベイ消火の定義（A17-1〜3）、検知・消火喪失後と火災時の処置、火災未確認のハロン放出後の管理（A17-51〜54）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1915） |
| D-05 | NTRS 19850008615 | Other Challenges in the Development of the Orbiter Environmental Control Hardware | アンモニアボイラ、煙検知器、水/水素セパレータ、WCSの開発課題と解決策を扱う。（出典: https://ntrs.nasa.gov/citations/19850008615） |
| G-09 | NTRS 19930011015 | Fire safety practices in the Shuttle and the Space Station Freedom | シャトルの煙検知器とHalon 1301消火器による防火をSSFの計画と比較する。（出典: https://ntrs.nasa.gov/citations/19930011015） |
| N-07 | IOA報告（1987年・1988年） | IOA: Analysis / Assessment of the life support and airlock support subsystems | 給水・代謝廃棄物・廃水・煙検知・消火を担うLSSと、EVAを支えるALSSの独立解析と、NASA FMEA/CILとの比較評価。（出典: https://www.science.gov/topicpages/a/analysis+results+support） |
| N-09 | 番号なし | Shuttle Reference: Smoke Detection and Fire Suppression | 煙検知素子の警報閾値、アビオニクスベイの固定消火ボトルと携帯消火器の構成・操作を解説する。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/cw/smokedet.html） |
| N-10 | NTRS 19910011869 | Fire Suppression in Human-Crew Spacecraft（1991年） | シャトルのHalon 1301系（携帯消火器と3つの電子機器ベイの固定消火器）と消火剤選定の課題をまとめる。（出典: https://ntrs.nasa.gov/api/citations/19910011869/downloads/19910011869.pdf） |
| N-11 | NASA TM-105317（NTRS 19920004363） | Risks, designs, and research for fire safety in spacecraft | 宇宙機の防火は不燃材料の使用と保管管理による予防が主で、シャトルは航空機と同様の技術の煙検知器と消火器を備えると述べ、低重力燃焼の特徴と宇宙ステーションの防火課題を論じる。（出典: https://ntrs.nasa.gov/archive/nasa/casi.ntrs.nasa.gov/19920004363.pdf） |
| N-12 | NIST R0200469 | Fire Protection in Manned Missions: Current and Planned | シャトルで乗員が電源遮断で火災を防いだ事象5件と、煙検知器回路の誤報・故障15件を記す。（出典: https://www.nist.gov/system/files/documents/el/fire_research/R0200469.pdf） |
| N-13 | 雑誌記事 | Kennedy Space Center Fire Services（Fire Engineering） | チャレンジャーの携帯消火器4本・固定消火器3本・煙検知器9個を紹介する。（出典: https://www.fireengineering.com/firefighting/kennedy-space-center-fire-services/） |
| N-15 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report | EVA準備での乗員室10.2 psi減圧、エアロック系の作動、WCSの故障灯、窒素消費量から見た乗員室漏れの少なさなど、飛行中のECLSS実績を記録する。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf） |

## 4. 文書×機能マトリクス（全件）

| ID | 文書番号 | 表題 | 全般 | PCS | ARS | ATCS | H2O | WCS | ALS | FDS | 出典 | URL |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| A-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） |  | ● | ● | ● | ● |  | ● |  | REF-001 | https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf |
| A-04 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | ● | ● | ● | ● | ● | ● | ● | ● | REF-001 | https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual |
| A-06 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | ● |  |  |  |  |  |  |  | REF-001 | https://ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf |
| A-07 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | ● |  |  |  |  |  |  |  | REF-001 | https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html |
| B-01 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | ● | ● | ● | ● | ● | ● | ● | ● | REF-001 | https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf |
| B-06 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | ● |  |  |  |  |  |  |  | REF-001 | https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf |
| D-01 | NASA CR-1981 | Space Shuttle EC/LSS（Hamilton Standard、1972年） | ● |  |  |  |  |  |  |  | REF-001 | https://ntrs.nasa.gov/api/citations/19720017476/downloads/19720017476.pdf |
| D-04 | SAE 921348 | Shuttle Orbiter ECLSS – Flight experience（1992年） | ● |  |  |  |  |  |  |  | REF-001 | https://ntrs.nasa.gov/citations/19930057510 |
| D-05 | NTRS 19850008615 | Other Challenges in the Development of the Orbiter Environmental Control Hardware |  |  |  | ● | ● | ● |  | ● | REF-001 | https://ntrs.nasa.gov/citations/19850008615 |
| D-06 | NTRS 19850008614 | Challenges in the Development of the Orbiter ATCS |  |  |  | ● |  |  |  |  | REF-001 | https://ntrs.nasa.gov/citations/19850008614 |
| E-01 | JSC-16720 | STS-1 ECLSS Consumables and Thermal Analysis |  | ● | ● | ● |  |  |  |  | REF-001 | https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf |
| E-02 | JSC-16730 | ECLSS Analysis of STS-1: 9-psia EVA Configuration |  | ● | ● |  |  |  |  |  | REF-001 | https://ntrs.nasa.gov/citations/19800020542 |
| F-01 | SAE 901290 | Expanded capabilities of the Extended Duration Orbiter |  | ● | ● |  |  | ● |  |  | REF-001 | https://ntrs.nasa.gov/citations/19910065909 |
| F-02 | SAE 901292 | The EDO Regenerable CO2 Removal System |  |  | ● |  |  |  |  |  | REF-001 | https://saemobilus.sae.org/content/901292 |
| F-03 | SAE 932294 | Development and Flight Status Report on the EDO RCRS |  |  | ● |  |  |  |  |  | REF-001 | https://saemobilus.sae.org/content/932294 |
| F-04 | NTRS 19910065910 | The Extended Duration Orbiter Waste Collection System |  |  |  |  |  | ● |  |  | REF-001 | https://ntrs.nasa.gov/citations/19910065910 |
| G-01 | NTRS 19810005651 | Thermal Vacuum Performance Testing of the Orbiter Radiator System |  |  |  | ● |  |  |  |  | REF-001 | https://ntrs.nasa.gov/api/citations/19810005651/downloads/19810005651.pdf |
| G-02 | NTRS 19810005632 | Orbiter Integrated Active Thermal Control Subsystem Test |  |  |  | ● |  |  |  |  | REF-001 | https://ntrs.nasa.gov/api/citations/19810005632/downloads/19810005632.pdf |
| G-03 | NTRS 19810005631 | Thermodynamic performance testing of the orbiter flash evaporator system |  |  |  | ● |  |  |  |  | REF-001 | https://ntrs.nasa.gov/citations/19810005631 |
| G-04 | NTRS 20070023916 | Effects of Free Molecular Heating on the Shuttle ATCS |  |  |  | ● | ● |  |  |  | REF-001 | https://ntrs.nasa.gov/citations/20070023916 |
| G-05 | MDC H1360 | Improved Orbiter Waste Collection System Study（1984年） |  |  |  |  |  | ● |  |  | REF-001 | https://ntrs.nasa.gov/citations/19850009239 |
| G-06 | SAE 861003 | Shuttle Waste Management System Design Improvements and Flight Evaluation |  |  |  |  |  | ● |  |  | REF-001 | https://saemobilus.sae.org/content/861003 |
| G-07 | SAE 2006-01-2014 | Shuttle Potable Water Quality from STS-26 to STS-114 |  |  |  |  | ● |  |  |  | REF-001 | https://saemobilus.sae.org/content/2006-01-2014 |
| G-08 | NTRS 19780014776 | Water system microbial check valve development |  |  |  |  | ● |  |  |  | REF-001 | https://ntrs.nasa.gov/citations/19780014776 |
| G-09 | NTRS 19930011015 | Fire safety practices in the Shuttle and the Space Station Freedom |  |  |  |  |  |  |  | ● | REF-001 | https://ntrs.nasa.gov/citations/19930011015 |
| H-01 | IOA報告（1986年） | IOA: Analysis of the ARPCS |  | ● |  |  |  |  |  |  | REF-001 | https://core.ac.uk/works/24872612 |
| H-02 | NTRS 19900001641 | IOA: Assessment of the ARPCS FMEA/CIL |  | ● |  |  |  |  |  |  | REF-001 | https://ntrs.nasa.gov/citations/19900001641 |
| H-03 | NTRS 19900002466 | IOA: Analysis of the Active Thermal Control Subsystem |  |  |  | ● |  |  |  |  | REF-001 | https://ntrs.nasa.gov/citations/19900002466 |
| H-04 | NTRS 19900001663 | IOA: Assessment of the ATCS FMEA/CIL（1988年） |  |  |  | ● |  |  |  |  | REF-001 | https://ntrs.nasa.gov/api/citations/19900001663/downloads/19900001663.pdf |
| N-01 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS |  |  | ● | ● | ● | ● |  |  | 新規 | https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html |
| N-02 | 番号なし | NSTS 1988 News Reference Manual – Airlock Support |  | ● |  |  |  |  | ● |  | 新規 | https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html |
| N-03 | NTRS 19750056784 | The shuttle orbiter cabin atmospheric revitalization systems |  | ● | ● |  |  |  |  |  | 新規 | https://ntrs.nasa.gov/citations/19750056784 |
| N-04 | NTRS抄録（1982年） | Shuttle Orbiter Atmospheric Revitalization Pressure Control Subsystem（Walleshauser他） |  | ● |  |  |  |  |  |  | 新規 | https://www.science.gov/topicpages/p/pressure+control+valves.html |
| N-05 | NTRS抄録（1974年） | Design development and test: Two-gas atmosphere control subsystem（Jackson） |  | ● |  |  |  |  |  |  | 新規 | https://www.science.gov/topicpages/a/atmosphere+total+pressure.html |
| N-06 | NTRS 19900001602 | IOA: Analysis of the EPG/PRSD subsystem |  | ● |  |  |  |  |  |  | 新規 | https://ntrs.nasa.gov/citations/19900001602 |
| N-07 | IOA報告（1987年・1988年） | IOA: Analysis / Assessment of the life support and airlock support subsystems |  |  |  |  | ● | ● | ● | ● | 新規 | https://www.science.gov/topicpages/a/analysis+results+support |
| N-08 | 番号なし | Shuttle Reference: Crew Compartment Cabin Pressurization |  | ● |  |  |  |  |  |  | 新規 | https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/cabinpress.html |
| N-09 | 番号なし | Shuttle Reference: Smoke Detection and Fire Suppression |  |  |  |  |  |  |  | ● | 新規 | https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/cw/smokedet.html |
| N-10 | NTRS 19910011869 | Fire Suppression in Human-Crew Spacecraft（1991年） |  |  |  |  |  |  |  | ● | 新規 | https://ntrs.nasa.gov/api/citations/19910011869/downloads/19910011869.pdf |
| N-11 | NASA TM-105317（NTRS 19920004363） | Risks, designs, and research for fire safety in spacecraft |  |  |  |  |  |  |  | ● | 新規 | https://ntrs.nasa.gov/archive/nasa/casi.ntrs.nasa.gov/19920004363.pdf |
| N-12 | NIST R0200469 | Fire Protection in Manned Missions: Current and Planned |  |  |  |  |  |  |  | ● | 新規 | https://www.nist.gov/system/files/documents/el/fire_research/R0200469.pdf |
| N-13 | 雑誌記事 | Kennedy Space Center Fire Services（Fire Engineering） |  |  |  |  |  |  |  | ● | 新規 | https://www.fireengineering.com/firefighting/kennedy-space-center-fire-services/ |
| N-14 | NTRS 20130013499 | So Close Yet So Far: The Jammed Airlock Hatch of STS-80 |  |  |  |  |  |  | ● |  | 新規 | https://ntrs.nasa.gov/api/citations/20130013499/downloads/20130013499.pdf |
| N-15 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report |  | ● |  |  |  | ● | ● | ● | 新規 | https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf |
| N-16 | NTRS抄録（1974年） | Orbiter ECLSS support of Shuttle payloads（Jaax他） |  |  | ● | ● |  |  |  |  | 新規 | https://www.science.gov/topicpages/s/shuttle+orbiter+payload |
| N-17 | 番号なし | Shuttle Reference: ECLSS Overview | ● | ● |  | ● |  |  |  |  | 新規 | https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/overview.html |
| N-18 | SCOM 2.9節（抜粋） | Environmental Control and Life Support System（NASA-KLASS教材） | ● | ● |  |  |  |  |  |  | 新規 | http://www.nasa-klass.com/Curriculum/Get_Training%201/ECLSS/RDG_ECLSS-Additional/RDG_ECLSS-SubSys_Advanced.pdf |
| N-19 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | ● | ● | ● | ● |  |  |  |  | 新規 | https://www.spaceshuttleguide.com/system/environmental%20Controls.htm |
| N-20 | NASA/TP-2011-216147 | Preventing Decompression Sickness Over Three Decades of Extravehicular Activity（Conkin、2011年） |  | ● |  |  |  |  | ● |  | 新規 | https://www.nasa.gov/wp-content/uploads/2023/03/conkin-prebreathe-overview-tp216147-2011.pdf |
| N-21 | NASA TM-58259 | Verification of an altitude decompression sickness protocol for Shuttle operations utilizing a 10.2 psi pressure stage（Waligora他、1984年） |  | ● |  |  |  |  | ● |  | 新規 | https://www.nasa.gov/wp-content/uploads/2023/03/prebreathe-library-summary-of-contents.pdf |
| N-22 | NTRS 20140003729 | Evidence Report: Risk of Decompression Sickness (DCS) |  |  |  |  |  |  | ● |  | 新規 | https://ntrs.nasa.gov/api/citations/20140003729/downloads/20140003729.pdf |

## 5. 注記（出典間の相違・構成変更）

> **注記** REF-001由来の行（A〜H）の概要は、前回の調査で各URLの内容を確認した結果を要約したものである。SAE論文はNTRSに本文がなく、SAE Mobilus経由で入手する必要がある。（出典: https://ntrs.nasa.gov/citations/19930057510）

> **注記** N-04・N-05・N-07・N-16は、NTRS抄録を収録した検索結果ページ（Science.gov）で内容を確認したもので、本文は未確認である。（出典: https://www.science.gov/topicpages/a/analysis+results+support）

> **注記** N-14は、表題と、1988年版マニュアルのエアロック支援の章を引用していることのみ確認しており、本文の内容は未確認である。（出典: https://ntrs.nasa.gov/api/citations/20130013499/downloads/20130013499.pdf）

> **注記** N-21（NASA TM-58259）は、NASAのプリブリーズ文献目録で所在と概要を確認したもので、本体は未入手である。（出典: https://www.nasa.gov/wp-content/uploads/2023/03/prebreathe-library-summary-of-contents.pdf）

> **注記** 中断前の調査で追加された記述は再検索で裏付けを確認し、確認できなかった記述（固定消火器の濃度到達時間、ARPCS論文の飛行実績の記述など）は削除した。（出典: https://ntrs.nasa.gov/archive/nasa/casi.ntrs.nasa.gov/19920004363.pdf）

> **注記** B-01の関連内容に示す規則番号と頁は、NSTS-12820 Vol. Aの本文（PDF p449〜2214、PCN-1反映済み）による。章の構成と、規則と機能の対応の詳細はSSD-OPS-REF-001に示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf）

> **注記** B-01の初版は、URLとしてSTS-120の規則集（飛行ごとの規則）を示し、第17章・第18章をISS合同Annexの章として記載していた。第17章 LIFE SUPPORT・第18章 THERMALはVolume A本体の章であり、URLとともにRev. Aで訂正した。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf）

> **注記** A-04の関連内容に示す節と頁は、USA007587 Rev. A CPN-1（全1161頁）による。頁はPDFの通し頁で、出典URL（yumpu公開版）の頁番号と一致する。節の構成と機能との対応の詳細はSSD-OPS-REF-002に示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual）

> **注記** A-04の初版は、文書番号を旧番号SFOC-FL0884 Rev. B、URLをibiblioのOI-28転載版としていた。原本の表紙で後継番号USA007587（SFOC-FL0884を置き換え）を確認し、Rev. Bで文書番号・URL・関連内容を訂正した。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/3）

> **注記** N-18（SCOM 2.9節の抜粋、NASA-KLASS教材）は、A-04とは別の資料として残す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/357）

## 6. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-25 | 初版作成（51件） |
| Rev. A | 2026-09-25 | B-01（NSTS-12820 Vol. A 運用飛行規則）を原本で確認し、文書番号・表題・URL・関連内容を更新、PCS・ARS・ATCS・H2O・WCS・ALS・FDSの各節に追加 |
| Rev. B | 2026-09-26 | A-04（Shuttle Crew Operations Manual）を原本（USA007587 Rev. A CPN-1）で確認し、文書番号・URL・関連内容を更新、PCS・ARS・ATCS・H2O・WCS・ALS・FDSの各節に追加 |
