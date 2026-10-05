# エアロック支援系（ALS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ECL-ALS-001 |
| 表題 | エアロック支援系（ALS）機能説明書 |
| 版・日付 | Rev. F／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECLSS-001 |
| 関連図 | SSD-SYS-ARC-001 図3 ECLSS 機能構成 |

## 1. 目的

エアロックの減圧・再与圧と、船外活動ユニット（EMU）への補給・冷却、エアロックの換気・配管ヒータ・計測の機能を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ECL-ALS-01 | エアロックはミッドデッキにあり、EMUを着用した乗員が乗員室を減圧せずにペイロードベイへ出られるようにする。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html） |
| F-ECL-ALS-02 | エアロック支援は、減圧・再与圧、EVA機器の補給、液冷服の水冷却、EVA機器の点検、着用、通信を提供する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html） |
| F-ECL-ALS-03 | オービタは、サービス・冷却アンビリカル（SCU）を介して、EVA準備時と終了後のEMUへ電力、酸素、液冷服の冷却、水を供給する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html） |
| F-ECL-ALS-04 | EVA前は乗員室を14.7 psiaから12.5 psiaへ下げ、プレブリーズの後に10.2 psiaへ減圧する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html） |
| F-ECL-ALS-05 | エアロックは2段階（5 psia、0 psia）で減圧し、エアロック減圧弁から船外へ排気する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html） |
| F-ECL-ALS-06 | EMUの携帯生命維持装置は、酸素、電力用バッテリ、冷却用の水、CO2除去用の水酸化リチウムを7時間分持つ。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html） |
| F-ECL-ALS-07 | シャトルの段階減圧プロトコルでは、乗員室を14.7から10.2 psiaへ下げて空気を酸素26.5%に富化し、最初の適用はSTS-41B（1984年2月）である。（出典: https://www.nasa.gov/wp-content/uploads/2023/03/conkin-prebreathe-overview-tp216147-2011.pdf） |
| F-ECL-ALS-08 | 外部エアロックには内側・EV・ドッキングの3枚のハッチがあり、各ハッチは2個の均圧弁と両側の差圧計を持ち、乗員室側へ開いて閉じたときに圧力で密着する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/452） |
| F-ECL-ALS-09 | エアロックには換気口がないため、乗員がミッドデッキ床の継手からダクトを張り、ブースタファン（2台、1台ずつ使用）でオービタの調整空気を送って湿度を制御し、CO2・O2・N2のよどみを防ぐ。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=178） |
| F-ECL-ALS-10 | 与圧区画の外を通るEMU補給・ISS給水用の6本の水配管は2区域に分かれ、各配管に巻いた3系統のヒータ（1系統ずつ使用）で加温する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=179） |
| F-ECL-ALS-11 | エアロックの圧力、水配管の圧力と温度、構造温度、ベスティビュール弁の状態は、SM OPS 2のSPEC 177 EXTERNAL AIRLOCKに表示される。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=189） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ECL-04 | 圧力制御系（PCS／ARPCS） | 推進薬・流体 | 受信 | SCU接続時は、オービタの酸素系から900±500 psiaの酸素がエアロック盤AW82Bを通じて供給される。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html） | 下位: IF-PCS-05 |
| IF-ECL-13 | 給水・廃水系（H2O） | 推進薬・流体 | 受信 | タンクA・Bの水は、エアロックでのEMU補給に使われる。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html）飲料水は16±0.5 psiでEMUの給水リザーバへ送られる。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html） | 下位: IF-ALS-03 |
| IF-ECL-15 | 大気再生系（ARS） | 熱 | 送信 | 水冷却ループの経路には液冷服（LCG）熱交換器が含まれる。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | 下位: IF-ARS-22 |
| IF-ECL-16 | 電力系（EPS） | 電力（28 VDC） | 受信 | エアロック盤AW18Hは、主母線AまたはBの28 VDCから17±0.5 VDC・5 AをEMUへ供給し、EVA後はPLSSのバッテリを充電する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html） | 上位: IF-ORB-14 下位: IF-ALS-05 下位: IF-ALS-08 下位: IF-ALS-09 |
| IF-ECL-17 | 乗員室（制御対象） | 推進薬・流体 | 双方向 | エアロックの再与圧は、内側ハッチの均圧弁でエアロックと乗員室の圧力を等しくして行う。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html）EVA前は乗員室を14.7 psiaから12.5 psiaを経て10.2 psiaへ減圧する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html） | 下位: IF-ALS-01 |
| IF-ECL-20 | EMU（船外活動ユニット） | 推進薬・流体 | 双方向 | オービタは、サービス・冷却アンビリカル（SCU）を介して、EVA準備時と終了後のEMUへ電力、酸素、液冷服の冷却、水を供給する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html） | 上位: IF-ORB-45 下位: IF-ALS-06 下位: IF-ALS-07 |
| IF-ECL-26 | 廃棄物収集系（WCS） | 推進薬・流体 | 送信 | WCSは、エアロックからのEMU凝縮水を処理して廃水タンクへ移す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | 下位: IF-ALS-04 |
| IF-ECL-27 | 大気再生系（ARS） | 推進薬・流体 | 受信 | EVA以外の期間は、空気循環系がダクトを通じてエアロックへ調整空気を送る。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html） | 下位: IF-ARS-13 |
| IF-ECL-30 | 宇宙空間（船外） | 推進薬・流体 | 送信 | エアロックの減圧は2段階（5 psia、0 psia）で行い、エアロック減圧弁から船外へ排気する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html） | 下位: IF-ALS-02 |
| IF-ECL-38 | データ処理系（DPS） | データ・指令 | 送信 | エアロックの雰囲気、ベスティビュール減圧弁、水配管、構造ヒータの計測値を、SM OPS 2のSPEC 177 EXTERNAL AIRLOCKに表示する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=189） | 上位: IF-ORB-19 下位: IF-ALS-10 |

## 4. 下位文書

| 文書番号 | 表題 |
|---|---|
| [SSD-FD-ECL-ALS-DEP-001](SSD-FD-ECL-ALS-DEP-001.md) | 区画・減圧・再与圧（DEP）機能説明書 |
| [SSD-FD-ECL-ALS-SCU-001](SSD-FD-ECL-ALS-SCU-001.md) | EMU補給・支援（SCU）機能説明書 |
| [SSD-FD-ECL-ALS-LCG-001](SSD-FD-ECL-ALS-LCG-001.md) | 液冷服冷却ループ（LCG）機能説明書 |
| [SSD-FD-ECL-ALS-VNT-001](SSD-FD-ECL-ALS-VNT-001.md) | 換気・ブースタファン（VNT）機能説明書 |
| [SSD-FD-ECL-ALS-HTR-001](SSD-FD-ECL-ALS-HTR-001.md) | 配管・構造ヒータ（HTR）機能説明書 |
| [SSD-FD-ECL-ALS-MON-001](SSD-FD-ECL-ALS-MON-001.md) | 計測・表示（MON）機能説明書 |

## 5. 関連文書

| ID | 文書番号 | 表題 | 内容 |
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

## 6. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：1988年版資料のエアロック支援の章は、液冷服熱交換器の熱がオービタのフレオン21冷却ループへ移されると記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html）

> **注記** 一方、同じ資料の水冷却ループの章は、液冷服熱交換器を水冷却ループの経路に含めている。本パッケージではIF-ECL-15を水冷却ループ（ARS）側として定義したが、接続先が資料間で一致しないため図3では図示を省略した。一次資料による確認は次の注記に示す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html）

> **注記** 検証メモ：一次資料のSCOM（USA007587 Rev. A CPN-1、PDF p379）は液冷服（LCG）熱交換器を水冷却ループの冷側経路に置いており、IF-ECL-15の接続先は水冷却ループ（ARS）側と確認できる。下位のSSD-FD-ARS-WCL-001でIF-ARS-22（エアロック支援系→水冷却ループ）として図12に示した。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/379）

> **注記** Rev. Dで、下位の展開（図24）に合わせてハッチ・均圧（F-ECL-ALS-08）、換気（F-ECL-ALS-09）、配管ヒータ（F-ECL-ALS-10）、計測・表示（F-ECL-ALS-11）の機能を追加した。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=173）

> **注記** IF-ECL-16（EPSからの電力）は、EMUへの給電（IF-ALS-05）に加えて、配管・構造ヒータ（IF-ALS-08）とブースタファン（IF-ALS-09）への給電の上位IFとした。ECL段にはエアロック支援系とEPSの間の電力IFがほかにない。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=193）

> **注記** IF-ECL-27（ARSからの調整空気）の下位は図12のIF-ARS-13で、図24ではさらにその下位の図16のIF-CAC-14（送風ダクト→換気・ブースタファン）をそのまま示した。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/456）

> **注記** 計測・表示からDPSへのIF-ALS-10は、ECL段にエアロック支援系とDPSのIFがないため、ARS段のIF-ARS-25〜29と同じく上位をIF-ORB-19とした。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=189）

> **注記** IF-ECL-04（PCSからのEMU用O2）の下位は、同じ版で展開した圧力制御系（図18）のIF-PCS-05（酸素供給・分配→エアロック）を図24でもその番号のまま用い、IF-ECL-15（液冷服熱交換器）の下位IF-ARS-22は、図24ではさらにその下位の図36のIF-WCL-21を示した（同じ物理IFのため新しい番号を作らない）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=176）

## 7. 参考文献

1. NSTS 1988 News Reference Manual – Airlock Support（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html
2. NASA/TP-2011-216147 Preventing Decompression Sickness Over Three Decades of Extravehicular Activity（Conkin、2011年） — https://www.nasa.gov/wp-content/uploads/2023/03/conkin-prebreathe-overview-tp216147-2011.pdf
3. NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html
4. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p379） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/379
5. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 6.0節 External Airlock System（PDF p173） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=173
6. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表6-1 Airlock controls（続き）（PDF p193） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=193
7. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.11節 External Airlock Subsystems（PDF p456） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/456
8. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 6.8.3節 CRT Displays（PDF p189） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=189
9. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 6.3節 Air and Water Transfer（PDF p176） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=176
10. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.11節 External Airlock・External Airlock Hatches（PDF p452） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/452
11. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 6.4節 Airlock Booster Fans and Ductwork（PDF p178） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=178
12. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 図6-7 Airlock ductwork configuration・6.5節 Heaters（PDF p179） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=179

## 8. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-25 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-25 | 関連文書にB-01（NSTS-12820 Vol. A 運用飛行規則）を追加 |
| Rev. B | 2026-09-26 | 関連文書にA-04（Shuttle Crew Operations Manual、USA007587 Rev. A CPN-1）を追加 |
| Rev. C | 2026-09-26 | IF-ECL-15に下位IF（IF-ARS-22）を付記し、液冷服（LCG）熱交換器の接続先をSCOMで確認した検証メモを追加 |
| Rev. D | 2026-09-30 | 下位機能説明書（6件）と図24・図25への展開を追加し、ハッチ・換気・配管ヒータ・計測の機能（F-ECL-ALS-08〜11）を追加、IF-ECL-13・16・17・20・26・30に下位IF（IF-ALS）を、IF-ECL-04に下位IF（IF-PCS-05）を、IF-ECL-27に下位IF（IF-ARS-13）を付記、注記を追加 |
| Rev. E | 2026-09-30 | IF-ECL-20 に上位 IF-ORB-45 を付記（Rev. I） |
| Rev. F | 2026-10-01 | IF-ECL-38 を追加（Rev. M） |
