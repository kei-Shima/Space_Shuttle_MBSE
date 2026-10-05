# 圧力制御系（PCS／ARPCS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ECL-PCS-001 |
| 表題 | 圧力制御系（PCS／ARPCS）機能説明書 |
| 版・日付 | Rev. G／2026-10-04 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECLSS-001 |
| 関連図 | SSD-SYS-ARC-001 図3 ECLSS 機能構成 |

## 1. 目的

乗員室の全圧・酸素分圧を制御し、過大圧・過小圧から乗員室を守り、計測と警報で状態を知らせる圧力制御系の機能と、PRSD・乗員室・給水系・エアロックとのインタフェースを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ECL-PCS-01 | ARPCSは酸素・窒素の2ガス方式で、酸素は反応剤貯蔵・分配（PRSD）サブシステムから、窒素は窒素貯蔵タンクから得る。（出典: https://ntrs.nasa.gov/citations/19750056784） |
| F-ECL-PCS-02 | 乗員室を14.7±0.2 psiaに与圧し、平均で窒素80%・酸素20%の混合気に保つ。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/overview.html） |
| F-ECL-PCS-03 | 酸素分圧は2.95〜3.45 psiaに自動で保たれ、約11.5 psiaの窒素を加えて全圧14.7 psiaとする。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/overview.html） |
| F-ECL-PCS-04 | 正・負の圧力逃し弁が、乗員室構造を過大圧・過小圧から保護する。（出典: http://www.nasa-klass.com/Curriculum/Get_Training%201/ECLSS/RDG_ECLSS-Additional/RDG_ECLSS-SubSys_Advanced.pdf） |
| F-ECL-PCS-05 | 打上げ・帰還用スーツのヘルメットと非常用呼吸マスクへ、呼吸用酸素を直接供給する。（出典: http://www.nasa-klass.com/Curriculum/Get_Training%201/ECLSS/RDG_ECLSS-Additional/RDG_ECLSS-SubSys_Advanced.pdf） |
| F-ECL-PCS-06 | 窒素は給水・廃水タンクの加圧にも使われる。（出典: http://www.nasa-klass.com/Curriculum/Get_Training%201/ECLSS/RDG_ECLSS-Additional/RDG_ECLSS-SubSys_Advanced.pdf） |
| F-ECL-PCS-07 | 与圧系は2系統の酸素系と2系統の気体窒素系から成り、酸素系は燃料電池と同じPRSDから供給される。（出典: https://science.ksc.nasa.gov/shuttle/technology/sts-newsref/sts_eclss.html）（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/cabinpress.html） |
| F-ECL-PCS-08 | PRSDの極低温超臨界酸素は、気体として835〜852 psiaで与圧制御系へ供給される。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/cabinpress.html） |
| F-ECL-PCS-09 | ARPCSは、1気圧の環境と非常時の8 psiaモードの両方で、酸素分圧と全圧を制御する。（出典: https://www.science.gov/topicpages/p/pressure+control+valves.html） |
| F-ECL-PCS-10 | 乗員室圧・PPO2・O2/N2流量はO1の計器とSM SYS SUMM 1・DISP 66に表示され、dP/dTが0.08 psi/min以上で低下するとクラクソンが鳴りMASTER ALARM灯が点灯する（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/367） |
| F-ECL-PCS-11 | EVA前の10.2 psia運用では、10.2 psiaのキャビンレギュレータがないため、乗員室圧とPPO2を手動で管理する（訓練マニュアル2.7.3節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=48） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ECL-01 | 電力系（EPS） | 推進薬・流体 | 受信 | ARPCSは酸素・窒素の2ガス方式で、酸素は反応剤貯蔵・分配（PRSD）サブシステムから得る。（出典: https://ntrs.nasa.gov/citations/19750056784）PRSDは、燃料電池とARPCSへ極低温の水素・酸素を貯蔵・分配する。（出典: https://ntrs.nasa.gov/citations/19900001602） | 上位: IF-ORB-09 下位: IF-EPS-04 |
| IF-ECL-02 | 乗員室（制御対象） | 推進薬・流体 | 送信 | 乗員室は14.7±0.2 psiaに与圧され、平均で窒素80%・酸素20%の混合気に維持される。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/overview.html）窒素は窒素貯蔵タンクから得る。（出典: https://ntrs.nasa.gov/citations/19750056784） | 下位: IF-PCS-03 下位: IF-PCS-04 下位: IF-PCS-07 下位: IF-PCS-10 |
| IF-ECL-03 | 給水・廃水系（H2O） | 推進薬・流体 | 送信 | 各飲料水タンクと廃水タンクは、乗員室の窒素供給系から16 psigの窒素で加圧される。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | 下位: IF-PCS-06 |
| IF-ECL-04 | エアロック支援系（ALS） | 推進薬・流体 | 送信 | SCU接続時は、オービタの酸素系から900±500 psiaの酸素がエアロック盤AW82Bを通じて供給される。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html） | 下位: IF-PCS-05 |
| IF-ECL-24 | 能動熱制御系（ATCS） | 熱 | 受信 | フレオンの一方の流路はECLSS酸素リストリクタを通り、ECLSS用のPRSD酸素を40°Fに加温する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | 下位: IF-TCS-04 |
| IF-ECL-36 | データ処理系（DPS） | データ・指令 | 送信 | 乗員室圧、PPO2 A・B、系統1・2のO2・N2流量を主C&Wのハードウェアチャネル4・14・24・34・44・54・64へ送り、限界外でCABIN ATM灯を点灯させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/132） | 上位: IF-ORB-19 下位: IF-PCS-14 |
| IF-ECL-42 | 電力系（EPS） | 電力（28 VDC） | 受信 | O14のMNAとO15のMNBにあるO2/N2 CNTLRの遮断器が、O2/N2コントローラ1・2に給電する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=39）O15のMNBのPPO2 C CAB dP/dT遮断器が、dP/dTセンサとPPO2センサCの電源に主母線Bの電力を供給する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=52） | 上位: IF-ORB-14 下位: IF-PCS-18 下位: IF-PCS-19 下位: IF-PCS-20 下位: IF-PCS-21 下位: IF-PCS-22 |
| IF-EPS-04 | 反応剤貯蔵・分配（PRSD） | 推進薬・流体 | 受信 | 酸素弁モジュールは、ECLSSの大気圧力制御系1・2への酸素供給を含む。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） | 上位: IF-ECL-01 |
| IF-TCS-04 | 熱交換器・コールドプレート網 | 熱 | 受信 | フレオンの一方の流路はECLSS酸素リストリクタを通り、ECLSS用のPRSD酸素を40°Fに加温する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | 上位: IF-ECL-24 |

## 4. 下位文書

| 文書番号 | 表題 |
|---|---|
| [SSD-FD-ECL-PCS-O2S-001](SSD-FD-ECL-PCS-O2S-001.md) | 酸素供給・分配（O2S）機能説明書 |
| [SSD-FD-ECL-PCS-N2S-001](SSD-FD-ECL-PCS-N2S-001.md) | 窒素供給（N2S）機能説明書 |
| [SSD-FD-ECL-PCS-MNF-001](SSD-FD-ECL-PCS-MNF-001.md) | O2/N2マニホールド・PPO2制御（MNF）機能説明書 |
| [SSD-FD-ECL-PCS-RLF-001](SSD-FD-ECL-PCS-RLF-001.md) | 正負圧逃し・ベント（RLF）機能説明書 |
| [SSD-FD-ECL-PCS-MON-001](SSD-FD-ECL-PCS-MON-001.md) | 計測・表示・警報（MON）機能説明書 |
| [SSD-FD-ECL-PCS-OPS-001](SSD-FD-ECL-PCS-OPS-001.md) | 与圧運用管理（OPS）機能説明書 |

## 5. 関連文書

| ID | 文書番号 | 表題 | 内容 |
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

## 6. 注記（出典間の相違・構成変更）

> **注記** 下位の展開（図18）では、IF-ECL-01・24の下位を図6・図8のIF-EPS-04・IF-TCS-04のまま用い（同じ物理IF）、IF-ECL-02は補給流（IF-PCS-03・04）、正圧・負圧逃し（IF-PCS-07）、乗員室大気の検知（IF-PCS-10）の4つの下位IFに分けた。DPSへのデータ（IF-PCS-14）はIF-ORB-19、EPSからの電力（IF-PCS-18〜22）はIF-EPS-11を上位とし、図3にはIFを追加しない（Rev. EのARSと同じ扱い）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=16）

> **注記** 検証メモ：F-ECL-PCS-08（Shuttle Reference）はPRSDからの酸素を835〜852 psiaとするが、訓練マニュアル（PDF p21）は811〜875 psia、SCOM（PDF p360）は803〜883 psiaとする。下位のSSD-FD-ECL-PCS-O2S-001は訓練マニュアルの値を用いた。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=21）

> **注記** 検証メモ：IF-ECL-03は水タンクの加圧を16 psigとする（NSTS 1988 News Reference Manual）が、SCOMはタンクを17 psig（PDF p361）、水タンク用N2レギュレータの出口を15.5〜17.0 psig（PDF p369）とする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369）

> **注記** キャビンの漏れ（乗員室の圧力の低下）の処置の活動図（図86）は [SSD-BEH-ORB-004](SSD-BEH-ORB-004.md) に示す（SysML v2 テキスト：model/SSD-BEH-ORB-004.sysml）。

> **注記** 与圧系（PCS）の状態と遷移（図140）は [SSD-BEH-ORB-006](SSD-BEH-ORB-006.md) に示す（SysML v2 テキスト：model/SSD-BEH-ORB-006.sysml）。

## 7. 参考文献

1. NTRS 19750056784 The shuttle orbiter cabin atmospheric revitalization systems — https://ntrs.nasa.gov/citations/19750056784
2. NASA Human Space Flight – Shuttle Reference: ECLSS Overview — https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/overview.html
3. SCOM 2.9 ECLSS 抜粋（NASA-KLASS 教材） — http://www.nasa-klass.com/Curriculum/Get_Training%201/ECLSS/RDG_ECLSS-Additional/RDG_ECLSS-SubSys_Advanced.pdf
4. NSTS 1988 News Reference Manual – Environmental Control and Life Support System（NASA KSC） — https://science.ksc.nasa.gov/shuttle/technology/sts-newsref/sts_eclss.html
5. NASA Human Space Flight – Shuttle Reference: Crew Compartment Cabin Pressurization — https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/cabinpress.html
6. Science.gov（NTRS抄録：Shuttle Orbiter Atmospheric Revitalization Pressure Control Subsystem、Walleshauser他、1982年） — https://www.science.gov/topicpages/p/pressure+control+valves.html
7. NTRS 19900001602 IOA: Analysis of the EPG/PRSD subsystem — https://ntrs.nasa.gov/citations/19900001602
8. NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html
9. NSTS 1988 News Reference Manual – Airlock Support（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html
10. NSTS 1988 News Reference Manual – Electrical Power System（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eps.html
11. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 1.1節 Pressure Control System Interfaces（PDF p16） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=16
12. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 2.0節 Pressure Control System・2.1節 Oxygen System（PDF p21） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=21
13. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Vent Isolation and Vent Valves・Negative Pressure Relief Valves・Water Tank Regulator Inlet Valve（PDF p369） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369
14. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 PPO2 Control（続き）（PDF p367） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/367
15. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 2.7.3〜2.7.4節 10.2 psia Cabin・Entry（PDF p48） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=48
16. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Caution and Warning Lights（CABIN ATM）（PDF p132） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/132
17. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 2.6.1節 Instrumentation（PDF p39） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=39
18. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表2-1 ECLSS pressurization controls（続き、O14・O15の遮断器）（PDF p52） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=52

## 8. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-25 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-25 | EPS・熱制御とのIF（IF-EPS-04、IF-TCS-04）を追記 |
| Rev. B | 2026-09-25 | 関連文書にB-01（NSTS-12820 Vol. A 運用飛行規則）を追加 |
| Rev. C | 2026-09-26 | 関連文書にA-04（Shuttle Crew Operations Manual、USA007587 Rev. A CPN-1）を追加 |
| Rev. D | 2026-09-30 | 下位機能説明書（6件）と図18・図19への展開を追加し、計測・警報（F-ECL-PCS-10）と10.2 psia運用（F-ECL-PCS-11）の機能を追加、IF-ECL-02・03・04に下位IF（IF-PCS）を付記、注記・検証メモを追加 |
| Rev. E | 2026-10-01 | IF-ECL-36 を追加、IF-ECL-42 を追加（Rev. M） |
| Rev. F | 2026-10-02 | 活動定義書 SSD-BEH-ORB-004 への参照を注記（Rev. AC） |
| Rev. G | 2026-10-04 | 系の状態遷移定義書その2 SSD-BEH-ORB-006 への参照を注記（Rev. AX） |
