# 真空ベント（VAC）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ECL-WCS-VAC-001 |
| 表題 | 真空ベント（VAC）機能説明書 |
| 版・日付 | Rev. A／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-WCS-001 |
| 関連図 | SSD-SYS-ARC-001 図22 廃棄物収集系 機能構成 |

## 1. 目的

便器の真空乾燥、ウェットトラッシュ区画の排気、燃料電池の生成水から分離した水素の排出などのため、真空ベント管を通して気体を船外へ排出する機能と、隔離弁・オリフィス・ヒータの構成と、故障時の代替の排気を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ECL-WCS-VAC-01 | 真空ベント系はオービタに制御された船外への抽気の経路を与え、真空ベント管は内径1.93インチで、乗員室内から船外へ通じる（訓練マニュアル5.4節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=152） |
| F-ECL-WCS-VAC-02 | 真空ベント隔離弁は管の乗員室内の部分を隔離する。閉じても弁板のオリフィスが14.7 psiaで3.0±0.25 lb/hrを流し、燃料電池の水素分離器が除いたH2を船外へ排出し続ける（訓練マニュアル5.4節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=152） |
| F-ECL-WCS-VAC-03 | 隔離弁は上昇・再突入中は閉じ、軌道上で開くと管とノズルのヒータが働いて管内の水蒸気の凍結を防ぐ。WCSは真空ベント管で運転に必要な真空を得る（訓練マニュアル5.4節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=152） |
| F-ECL-WCS-VAC-04 | 打上げ・再突入ではWCSのVACUUM VALVEを閉じ、軌道上でWCSを使わないときは開いて便器を船外にさらし、固形廃棄物を乾燥させるとともに補助ウェットトラッシュとvolume Fのウェットトラッシュ区画を排気する。便器のライナは気体を通し、自由な液体は通さない（SCOM 2.25節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/758） |
| F-ECL-WCS-VAC-05 | 真空ベント管はWCSの3方ボール弁で分岐し、便器の下流の手動弁でWCSを真空ベント系から隔離できる。WCSの故障でキャビン漏れが生じた場合などに使う（SCOM 2.25節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/760） |
| F-ECL-WCS-VAC-06 | 隔離弁はパネルML31CのWASTE H2O VACUUM VENT ISOL VLV CONTROLスイッチで開閉し、電力は同じパネルのVACUUM VENT ISOL VLV BUS SELECTスイッチでMNAまたはMNBから受け、電力を失うと閉じる。弁が開かなくても弁板の小穴から排気は続く（SCOM 2.25節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/760） |
| F-ECL-WCS-VAC-07 | 真空ベント管のサーモスタット制御のA・BヒータはパネルML86BのH2O LINE HTR A・B遮断器から給電され、ノズルのヒータはパネルML31CのWASTE H2O VACUUM VENT NOZ HTRスイッチで入切りする（SCOM 2.25節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/760） |
| F-ECL-WCS-VAC-08 | ウェットトラッシュ区画の空気は約3 lb/dayで船外へ排気され、そのためにはWCSの真空ベント弁を開いておく必要がある。区画には嘔吐袋、採尿具、便袋、使用済みの臭気・細菌フィルタなどを入れる（SCOM 2.24節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/749） |
| F-ECL-WCS-VAC-09 | 真空ベントの主な機能は、燃料電池の生成水から除いたH2（約9.75×10⁻⁵ lb/hr）などの気体廃棄物の船外排出と、EVAのためのエアロックの減圧である。隔離弁が閉で故障し、便器不使用時に収集器圧力が1.0 psiaを超えると真空ベント機能の喪失とする（A17-354）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1986） |
| F-ECL-WCS-VAC-10 | 真空ベント系が故障した場合は、WCSのボール弁と真空ベント弁の間にある真空ベントQDから非常用廃水クロスタイQDへ移送ホースをつなぎ、廃水ダンプ管から排気する（SCOM 2.25節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/760） |
| F-ECL-WCS-VAC-11 | 隔離弁の閉固着とオリフィスの閉塞に対しては、真空ベント系を廃水ダンプ系に接続して、水素分離器のH2とウェットトラッシュの臭気を船外へ排出するIFM手順があり、完了後5分までは便器を使わない（IFMチェックリストW-53）。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=477） |
| F-ECL-WCS-VAC-12 | IOAのFMEA/CIL評価（1988年）は、真空ベントダンプ管の閉塞やヒータの喪失で管内に水素と酸素の危険な混合気が生じうるとして、生命・機体の喪失につながりうる状態とみなした。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=69） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-PCS-09 | 圧力制御系：窒素供給 | 推進薬・流体 | 受信 | 200 psigのN2レギュレータの逃し弁は275 psigで開いて245 psigで閉じ、レギュレータの故障による過圧から窒素系を守るため、真空ベント管から船外へ逃がす。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=25） | — |
| IF-H2O-02 | 給水・廃水系：生成水受入れ・処理 | 推進薬・流体 | 受信 | 水素分離器の銀パラジウム管を透過した水素は、真空ベント配管を通って船外へ排出される。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=143）運用飛行規則は、燃料電池の生成水から抽出した水素（約0.0000975 lb/hr）を船外へ排出することを真空ベントの主な機能に挙げる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1986） | 上位: IF-ECL-22 |
| IF-WCS-05 | 便器・固形廃棄物 | 推進薬・流体 | 受信 | WCSを使わないときは、便器（廃棄物収集器）をWCSの真空弁を通して真空ベント系にさらし、固形廃棄物を乾燥させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/758） | — |
| IF-WCS-07 | 乗員室（制御対象） | 推進薬・流体 | 受信 | ウェットトラッシュ区画の空気を、真空ベント管から約3 lb/dayで船外へ排気する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/749）少量のキャビン空気が常にWCSのウェットトラッシュ区画を通って船外へ抜け、WCSの臭気を抑える。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=152） | 上位: IF-ECL-31 |
| IF-WCS-08 | 給水・廃水系：船外ダンプ・クロスタイ | 推進薬・流体 | 双方向 | 真空ベント系が故障したときは、真空ベントQDと非常用クロスタイの廃水QDを移送ホースでつなぎ、廃水ダンプ管から排気する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/760）廃水タンクの弁が閉で故障した場合などは、同じQDを使ってARSの廃水（湿度分離器の凝縮水）を真空ベント管から船外へ捨てる。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=443） | 上位: IF-ECL-14 |
| IF-WCS-09 | 宇宙空間（船外） | 推進薬・流体 | 送信 | 真空ベント管の気体を、ヒータで凍結を防いだ管とノズルから船外へ排出する。隔離弁が閉でも、弁板のオリフィスから3.0±0.25 lb/hrが流れる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=152） | 上位: IF-ECL-23 |
| IF-WCS-11 | 電力系（EPS） | 電力（28 VDC） | 受信 | 真空ベント隔離弁にはMNAまたはMNBの直流を、真空ベント管のA・BヒータにはパネルML86BのH2O LINE HTR A・B遮断器から電力を供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/760）MNA H2O LINE HTR A遮断器は、給水・廃水のダンプ管と真空ベント管のヒータに主母線Aの電力を供給する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=167） | 上位: IF-ECL-43 |
| IF-WCS-12 | DPS・アビオニクス | データ・指令 | 送信 | 真空ベントノズル温度（VAC VT NOZ T）をSMのDISP 66 ENVIRONMENTに表示する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/359）廃棄物収集器の圧力はMCCが確認し、非常時の真空ベント運用では1 psia未満が5分続けば便器の使用を再開できる。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=481） | 上位: IF-ECL-37 |
| IF-WCS-15 | 制御・運用管理 | データ・指令 | 受信 | WCSのVACUUM VALVEで便器への真空ベント管を開閉し、軌道上は通常開き、打上げ・再突入とWCSの空気漏れなどの非常時に閉じる。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=468）真空ベント隔離弁はパネルML31CのWASTE H2O VACUUM VENT ISOL VLV CONTROLスイッチで開閉する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/760） | — |
| IF-RCRS-03 | 再生式CO2除去装置：吸着・再生ベッド（A・B） | 推進薬・流体 | 受信 | 再生（脱着）中のベッドを機体の既存の真空ベント管へ開いて排気し、脱着したCO2を船外へ捨てる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=215）標準構成では、パネルML31Cの真空ベント隔離弁を開にしておく（MAL 6.8a）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=330） | 上位: IF-ARS-16 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| WC-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 5.4節 Vacuum Vent System（PDF p152）：内径1.93インチの真空ベント管、閉でも3.0±0.25 lb/hrを流す隔離弁のオリフィス（水素分離器のH2の排出のため）、管とノズルのヒータを示し、WCS・ウェットトラッシュ区画・RCRSが使うとする。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=152） |
| WC-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.25節 Vacuum Vent System（PDF p760）：真空ベント系が水素の排出、臭気の排出、便器の乾燥の経路となると述べ、隔離弁（パネルML31C、MNA/MNB）と弁板の小穴、非常時の代替排気（クロスタイQD）、管とノズルのヒータを示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/760） |
| WC-03 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 表3.4.6.2-1（PDF p220）：真空ベント出口の運転温度を下限32°F、上限350°F（TPS貫通部の構造）とする。（出典: https://ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=220） |
| WC-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-354（PDF p1986）：隔離弁が閉で故障し、便器不使用時の収集器圧力が1.0 psiaを超えると真空ベント機能の喪失とし、A17-405（p1989）で非常時の真空ベント運用のIFMとWCS真空弁の常時開を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1986） |
| WC-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | ECLS 6.2b（PDF p274）：隔離弁のオリフィスが閉でも約3 lb/hr流れることと、WCS真空弁の上流・下流の真空ベント管の漏れの切り分けを示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=274） |
| WC-11 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS | 軌道上の不使用時は便器を真空ベント系に開放し、固形物を乾燥させると記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| WC-14 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） | 3.17.3.3節（PDF p443）：真空ベントQDにより、廃水タンクの弁の故障時などにARSの廃水を真空ベント管から船外へ捨てられると示す。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=443） |
| WC-15 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | PDF p83：パネルML31Cの真空ベント・ノズルヒータの操作と、WCSを船外へ排気する1.93インチの管にH2分離器、N2・非常用O2の船外リリーフ、エアロック（手動弁）がつながることを示し、S66のSMアラートに真空ベント温度を挙げる。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=83） |
| WC-16 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | W-53 Vacuum Vent Contingency Operation（PDF p477〜481）：隔離弁の閉固着とオリフィスの閉塞に対し、真空ベント系を廃水ダンプ系に接続してH2とウェットトラッシュの臭気を排出する手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=477） |
| WC-18 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | C.12.2節（PDF p69）：真空ベントダンプ管の閉塞やヒータの喪失を、管内に水素と酸素の危険な混合気が生じうるとして、IOAが生命・機体の喪失につながりうる状態と評価したと記す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=69） |
| WC-19 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | PDF p187：真空乾燥せずにウェットトラッシュ袋へ入れた嘔吐袋が悪臭の一因で、真空乾燥とウェットトラッシュ袋の常時排気を手順とする是正措置を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=187） |
| WC-24 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | PDF p34：真空ベント管の温度が57.7〜80°Fに保たれたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=34） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 1987年の飛行運用マニュアルは、真空ベント系がウェットトラッシュ区画、エアロックのベント、ARS、水ループのリリーフベント、便器（固形物の乾燥）の排気を受け持ち、ミッドデッキのウェットトラッシュ区画は流量制限QDを通して約3±0.4 lb/dayで排気されるとする。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=432）

> **注記** RCRSは再生中のベッドを既存の真空ベント管へ排気する（訓練マニュアル付録C.2.2）。図22ではこの排気を、RCRSの展開と同じ物理IFとして既存のIF-RCRS-03のまま示した（新しい番号を作らない）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=215）

> **注記** 燃料電池の生成水から水素分離器が除いたH2は真空ベント管から船外へ出る（訓練マニュアル5章）。図22ではこれをIF-H2O-02として示した。給水・廃水系の展開（図20）と同じ物理IFのため、その番号（上位IF-ECL-22）のまま用いた。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=143）

> **注記** PCSのN2レギュレータの逃し弁も真空ベント管から船外へ逃がす（訓練マニュアル2章）。図22では圧力制御系の展開（図18）と同じ物理IF（IF-PCS-09）として示した。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=25）

> **注記** 検証メモ：運用飛行規則A17-354と1979年の飛行運用マニュアルは真空ベントをエアロックの減圧にも使うとするが、訓練マニュアルは外部エアロックの減圧弁をペイロードベイへ直接排気するよう改修したとし、客室パージ弁（火災・有毒物漏れの後に8 psiで乗員室を換気）が真空ベント系から排気するとする。本書ではエアロックの減圧排気をIF-ECL-30（エアロック支援系→宇宙空間）のまま扱い、図22に描かない。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=175）

> **注記** 真空ベントノズルと給水・廃水・真空ベント管のヒータは、座席を離れた後に入れる（A18-301C）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2092）

> **注記** SODBの表3.4.6.2-1は、真空ベント出口の運転温度を下限32°F、上限350°F（TPS貫通部の構造）とする。（出典: https://ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=220）

> **注記** STS-2では、真空乾燥せずにウェットトラッシュ袋へ入れた嘔吐袋が悪臭の一因となり、嘔吐袋を便器に入れて真空乾燥することと、ウェットトラッシュ袋を常時排気することを手順とした。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=187）

## 6. 参考文献

1. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 5.4節 Vacuum Vent System（PDF p152） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=152
2. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.25節 Operations（PDF p758） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/758
3. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.25節 Vacuum Vent System・Alternative Waste Collection（PDF p760） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/760
4. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.24節 Wet Trash Compartment（PDF p749） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/749
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-354 Vacuum Vent Loss Definition（PDF p1986） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1986
6. JSC-48025 Rev. F PCN-13 In-Flight Maintenance (IFM) Checklist W-53 Vacuum Vent Contingency Operation（PDF p477） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=477
7. NASA-CR-185550 Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） C.12.2節 Life Support and Airlock Support System（PDF p69） — https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=69
8. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 2.2節 Nitrogen System（N2レギュレータとリリーフ弁）（PDF p25） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=25
9. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 5章 Supply and Wastewater System（H2分離器）（PDF p143） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=143
10. JSC-12770 Vol. 12 Basic Rev. B Shuttle Flight Operations Manual – Crew Systems（1987年） 3.17.3.2〜3.17.3.3節 Solids Processing Assembly・Vacuum Vent QD（PDF p443） — https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=443
11. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表5-1 Supply and wastewater system controls（続き）（PDF p167） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=167
12. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 ECLSS 概要（PDF p359） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/359
13. JSC-48025 Rev. F PCN-13 In-Flight Maintenance (IFM) Checklist W-56a Interconnect Vacuum Vent and Waste Water Dump Systems（PDF p481） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=481
14. JSC-12770 Vol. 12 Basic Rev. B Shuttle Flight Operations Manual – Crew Systems（1987年） 表3.17-1 WCS display and control functions（VACUUM VALVE）（PDF p468） — https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=468
15. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.2.2 RCRS Hardware（PDF p215） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=215
16. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.8a CO2 CNTLR 1(2)（PDF p330） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=330
17. JSC-12770 Vol. 12 Basic Rev. B Shuttle Flight Operations Manual – Crew Systems（1987年） 3.17.1〜3.17.2節 WCS Introduction・Interfaces（PDF p432） — https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=432
18. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 6.2節 Airlock・Cabin Purge Valve（PDF p175） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=175
19. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-301 TCS Heater Configuration（C項）（PDF p2092） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2092
20. JSC-08934 Vol. 1 Rev. E Shuttle Operational Data Book – Shuttle Systems Performance and Constraints Data（1988年） 表3.4.6.2-1 Water/Waste Management Subsystem Components Temperature Limits（PDF p220） — https://ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=220
21. JSC-17959 STS-2 Orbiter Mission Report（1982年） Odor（ECLSS）（PDF p187） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=187

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-10-01 | IF-WCS-12 の上位を IF-ECL-37 に付け替え、IF-WCS-11 の上位を IF-ECL-43 に付け替え（Rev. M） |
