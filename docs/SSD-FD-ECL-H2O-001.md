# 給水・廃水系（H2O）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ECL-H2O-001 |
| 表題 | 給水・廃水系（H2O）機能説明書 |
| 版・日付 | Rev. I／2026-10-09 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECLSS-001 |
| 関連図 | SSD-SYS-ARC-001 図3 ECLSS 機能構成 |

## 1. 目的

燃料電池生成水の受入れ・貯蔵・供給（ギャレーへの飲料水を含む）と、廃水の貯蔵・処分、両タンクの窒素加圧の機能を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ECL-H2O-01 | 給水・廃水系は、FES、乗員の飲用、衛生のための水を供給し、給水系は燃料電池の生成水を、廃水系はキャビン湿度分離器と乗員からの廃水を貯蔵する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-ECL-H2O-02 | ミッドデッキ床下に給水タンク4基と廃水タンク1基があり、各タンクの使用可能容量は165 lbである。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-ECL-H2O-03 | 3基の燃料電池は、最大で毎時25 lbの飲料水を生成する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-ECL-H2O-04 | 燃料電池からの水素を含む水は2台の水素分離器を通り、余剰水素の85%が除去される。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-ECL-H2O-05 | タンクAに入る水は微生物フィルタを通って約0.5 ppmのヨウ素が添加され、通常は乗員の飲用に使われる。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-ECL-H2O-06 | タンクA・Bの水は、エアロックのEMU補給、FES給水系A、船外ダンプに使われる。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-ECL-H2O-07 | ギャレー給水弁を開くと、給水は水冷却ループの飲料水チラーで冷やす経路と常温の経路に分かれてギャレーへ送られ、ギャレーを搭載しない飛行ではApollo給水器につながれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/400） |
| F-ECL-H2O-08 | 給水・廃水のダンプ配管は非常用クロスタイでつなぐことができ、一方のノズルから他方の水をダンプし、CWCに給水や廃水を貯めることもできる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/400） |
| F-ECL-H2O-09 | 給水・廃水タンクは窒素系統1・2のいずれかから15.5〜17.0 psigの窒素で加圧され、打上げ時はタンクAを乗員室へベントして燃料電池の浸水を防ぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/395） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ECL-03 | 圧力制御系（PCS／ARPCS） | 推進薬・流体 | 受信 | 各飲料水タンクと廃水タンクは、乗員室の窒素供給系から16 psigの窒素で加圧される。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | 下位: IF-PCS-06 |
| IF-ECL-07 | 大気再生系（ARS） | 推進薬・流体 | 受信 | 廃水タンクは、ARSの湿度分離器と廃棄物収集系から廃水を受け入れる。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | 下位: IF-ARS-12 |
| IF-ECL-10 | 電力系（EPS） | 推進薬・流体 | 受信 | 給水系は燃料電池の生成水を貯蔵し、生成水は水素分離器を通って余剰水素の85%が除去される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/394） | 上位: IF-ORB-10 下位: IF-EPS-06 |
| IF-ECL-12 | 能動熱制御系（ATCS） | 推進薬・流体 | 送信 | FES用の水は、飲料水タンクから給水系統A・Bを通じて供給される。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | 下位: IF-TCS-16 |
| IF-ECL-13 | エアロック支援系（ALS） | 推進薬・流体 | 送信 | タンクA・Bの水は、エアロックでのEMU補給に使われる。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html）飲料水は16±0.5 psiでEMUの給水リザーバへ送られる。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html） | 下位: IF-ALS-03 下位: IF-H2O-15 |
| IF-ECL-14 | 廃棄物収集系（WCS） | 推進薬・流体 | 受信 | WCSは尿を処理して廃水タンクへ送り、ARSの廃水も廃水タンクへ移す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | 下位: IF-H2O-07 下位: IF-WCS-08 |
| IF-ECL-22 | 宇宙空間（船外） | 推進薬・流体 | 送信 | タンクの水は船外へダンプでき、ダンプノズルはヒータで凍結を防ぐ。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | 下位: IF-H2O-02 下位: IF-H2O-10 |
| IF-ECL-35 | データ処理系（DPS） | データ・指令 | 送信 | 給水タンク量A〜Dと給水圧を、軌道上はPASS SMのSPEC 66に、上昇・再突入時はBFSのTHERMAL表示に送る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=158）廃水タンク量と廃水圧をSPEC 66 ENVIRONMENTに送る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=160） | 上位: IF-ORB-19 下位: IF-H2O-05 下位: IF-H2O-09 下位: IF-H2O-12 |
| IF-ECL-41 | 電力系（EPS） | 電力（28 VDC） | 受信 | パネルML86BのA・B列の遮断器は、パネルR11L・ML31Cで操作する給水・廃水系の電動弁を駆動する電力を供給する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=153）パネルML86BのMNA H2O LINE HTR A・MNB H2O LINE HTR B遮断器から、給水・廃水ダンプ配管のヒータへ給電する（同じ遮断器が給電する真空ベント配管のヒータは廃棄物収集系のIF-WCS-11で扱う）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=153） | 上位: IF-ORB-14 下位: IF-H2O-06 下位: IF-H2O-11 |
| IF-EPS-06 | 燃料電池発電装置（FCP×3） | 推進薬・流体 | 受信 | 3基の燃料電池の生成水は単一の水リリーフ制御盤へ集まり、通常は飲料水タンクAへ送られ、凍結時に備えてタンクBへの冗長経路もある。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） | 上位: IF-ECL-10 |
| IF-TCS-16 | フラッシュエバポレータ（FES） | 推進薬・流体 | 送信 | FES用の水は、飲料水タンクから給水系統A・Bを通じて供給される。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | 上位: IF-ECL-12 |

## 4. 下位文書

| 文書番号 | 表題 |
|---|---|
| [SSD-FD-ECL-H2O-FCW-001](SSD-FD-ECL-H2O-FCW-001.md) | 生成水受入れ・処理（FCW）機能説明書 |
| [SSD-FD-ECL-H2O-SPL-001](SSD-FD-ECL-H2O-SPL-001.md) | 給水貯蔵・分配（SPL）機能説明書 |
| [SSD-FD-ECL-H2O-GAL-001](SSD-FD-ECL-H2O-GAL-001.md) | 飲料水供給（GAL）機能説明書 |
| [SSD-FD-ECL-H2O-WST-001](SSD-FD-ECL-H2O-WST-001.md) | 廃水貯蔵（WST）機能説明書 |
| [SSD-FD-ECL-H2O-DMP-001](SSD-FD-ECL-H2O-DMP-001.md) | 船外ダンプ・クロスタイ（DMP）機能説明書 |
| [SSD-FD-ECL-H2O-PRS-001](SSD-FD-ECL-H2O-PRS-001.md) | タンク加圧（PRS）機能説明書 |

## 5. 関連文書

| ID | 文書番号 | 表題 | 内容 |
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

## 6. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：1988年版マニュアルの水冷却ループ等の章は、給水・廃水タンクを窒素で16 psigに加圧するとしている。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html）

> **注記** 一方、同じマニュアルのECLSS概要の章は、タンクを17 psiaに加圧するとしており、単位・値が一致しない。NASA HSFの与圧系の解説は、レギュレータが200 psiの供給圧を16 psiに下げるとしている。（出典: https://science.ksc.nasa.gov/shuttle/technology/sts-newsref/sts_eclss.html）（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/cabinpress.html）

> **注記** Rev. Dで、下位の展開（図20）に合わせて、ギャレーへの飲料水供給（F-ECL-H2O-07）、非常用クロスタイ（F-ECL-H2O-08）、タンクの窒素加圧（F-ECL-H2O-09）を機能として追加した。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/400）

> **注記** 検証メモ：IF-ECL-03の16 psigは、SCOM（PDF p395）と訓練マニュアル（PDF p150）の15.5〜17.0 psigの範囲内にある。SCOMのPCSの節（PDF p361）は17 psig、1979年の飛行運用マニュアルは16.0 psigとする。下位のSSD-FD-ECL-H2O-PRS-001は15.5〜17.0 psigを用いた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/395）

> **注記** 下位の展開（図20）では、IF-ECL-03・10・12・13の下位を図18・図6・図8・図24のIF-PCS-06・IF-EPS-06・IF-TCS-16・IF-ALS-03のまま用い（同じ物理IF）、IF-ECL-22は給水・廃水のダンプ（IF-H2O-10）と水素分離器の水素の排出（IF-H2O-02）の2つの下位IFに分けた。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=143）

> **注記** IF-ECL-07の下位IF-ARS-12（凝縮水）とARS段のIF-ARS-23（飲料水チラー）は、図20ではそれぞれさらに下位の図30のIF-THC-05、図36のIF-WCL-22を示し、IF-ECL-14には図22の非常時の真空ベント接続（IF-WCS-08）も下位として付記した（いずれも同じ物理IFのため新しい番号を作らない）。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=481）

> **注記** 下位（第3段・第4段）の機能行の L3 要求（REQ-WTR-nn）とトレースは [SSD-RQL-ECL-001](SSD-RQL-ECL-001.md) に示す（SysML v2 テキスト：SysML/SSD-RQL-ECL-001.sysml）。

> **注記** 給水・廃水系（H2O）の状態と遷移（図170）は [SSD-BEH-ORB-007](SSD-BEH-ORB-007.md) に示す（SysML v2 テキスト：SysML/SSD-BEH-ORB-007.sysml）。

> **注記** 給水・廃水系（H2O）の機能の故障モード（FMX-H2O-nn）は [SSD-FMX-ECL-001](SSD-FMX-ECL-001.md) に示す（SysML v2 テキスト：SysML/SSD-FMX-ECL-001.sysml）。

## 7. 参考文献

1. NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html
2. NSTS 1988 News Reference Manual – Environmental Control and Life Support System（NASA KSC） — https://science.ksc.nasa.gov/shuttle/technology/sts-newsref/sts_eclss.html
3. NASA Human Space Flight – Shuttle Reference: Crew Compartment Cabin Pressurization — https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/cabinpress.html
4. NSTS 1988 News Reference Manual – Airlock Support（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html
5. NSTS 1988 News Reference Manual – Electrical Power System（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eps.html
6. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Contingency Crosstie・Galley Water Supply（PDF p400） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/400
7. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Supply Water System（続き）（PDF p395） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/395
8. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 5.0節・5.1節 Supply Water Storage System（PDF p143） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=143
9. JSC-48025 Rev. F PCN-13 In-Flight Maintenance (IFM) Checklist W-56a Interconnect Vacuum Vent and Waste Water Dump Systems（PDF p481） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=481
10. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 5.6節 Supply and Wastewater System Instrumentation/Displays（PDF p158） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=158
11. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 図5-13 SPEC 66 ENVIRONMENT（PDF p160） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=160
12. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 5.5節 Supply and Wastewater System Controls（続き）（PDF p153） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=153
13. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Supply Water System（PDF p394） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/394

## 8. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-25 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-25 | EPS・熱制御とのIF（IF-EPS-06、IF-TCS-16）を追記 |
| Rev. B | 2026-09-25 | 関連文書にB-01（NSTS-12820 Vol. A 運用飛行規則）を追加 |
| Rev. C | 2026-09-26 | 関連文書にA-04（Shuttle Crew Operations Manual、USA007587 Rev. A CPN-1）を追加 |
| Rev. D | 2026-09-30 | 下位機能説明書（6件）と図20・図21への展開を追加し、機能（F-ECL-H2O-07〜09）を追加、IF-ECL-03・07・13・14・22に下位IF（IF-H2O・IF-PCS・IF-ALS・IF-WCS・IF-ARS）を付記、注記を追加 |
| Rev. E | 2026-10-01 | IF-ECL-35 を追加、IF-ECL-41 を追加（Rev. M） |
| Rev. F | 2026-10-01 | 出典を乗員運用マニュアル（SCOM、OI-33）の頁に更新（1文）（Rev. Q） |
| Rev. G | 2026-10-08 | IF-ECL-13 に下位 IF-H2O-15 を付記した（Rev. BI） |
| Rev. H | 2026-10-08 | ECLSS 下位要求書 SSD-RQL-ECL-001 への参照を注記（Rev. BK） |
| Rev. I | 2026-10-09 | ECLSS の状態遷移と活動定義書 SSD-BEH-ORB-007 への参照を注記、ECLSS の故障モード定義書 SSD-FMX-ECL-001 への参照を注記（Rev. BL） |
