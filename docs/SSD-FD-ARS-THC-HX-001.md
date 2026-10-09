# キャビン熱交換器・凝縮（HX）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ARS-THC-HX-001 |
| 表題 | キャビン熱交換器・凝縮（HX）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-THC-001 |
| 関連図 | SSD-SYS-ARC-001 図30 キャビン温湿度制御 機能構成 |

## 1. 目的

キャビン熱交換器でキャビン空気の熱をARS水冷却ループへ移し、空気中の水分を冷却面に凝縮させてslurperに集め、湿度分離器へ引き渡す機能と、熱交換器出口からATCOへの分流を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ARS-THC-HX-01 | キャビン熱交換器は、キャビン空気が拾った熱をARS水冷却ループへ移す空気/水熱交換器で、キャビンファンが暖かいキャビン空気を送り込んで冷やす（訓練マニュアル3.2.4節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=63） |
| F-ARS-THC-HX-02 | キャビン空気中の湿気は熱交換器内のslurperバーに凝縮し、凝縮水は熱交換器から湿度分離器へ引き出される（訓練マニュアル3.2.4節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=63） |
| F-ARS-THC-HX-03 | 熱交換器で生じた凝縮水は空気流でslurperへ押し出され、2台の湿度分離器の一方がslurperから空気と水を吸い出す（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375） |
| F-ARS-THC-HX-04 | 1979年の飛行運用マニュアルは、空気が熱交換器内のコールドプレートの間を通るときの温度変化でプレート上に凝縮が生じるとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37） |
| F-ARS-THC-HX-05 | 水冷却ループの冷えた水は、液冷服熱交換器と飲料水チラーに続いてキャビン熱交換器とIMU熱交換器を通り、各ループのポンプパッケージへ戻る（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/379） |
| F-ARS-THC-HX-06 | ATCOはキャビン熱交換器のすぐ下流にあり、熱交換器を出た空気の一部がATCOを通る（訓練マニュアル3.2.6節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=64） |
| F-ARS-THC-HX-07 | RCRS搭載時は、RCRSでCO2を除いた空気もキャビン熱交換器を通して送られる（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371） |
| F-ARS-THC-HX-08 | 運用飛行規則A13-152は、キャビン温度コントローラを全COOLにすると熱交換器を通る空気流量が最大になり、湿度分離器で除く汚染物質が増えるとする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1799） |
| F-ARS-THC-HX-09 | STS-4では熱交換器・slurper組立の空気出口ダクトに遊離水がないことを飛行中に2回点検し、STS-3後のslurper部の清掃が遊離水の再発を防いだ可能性があるとされた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=42） |
| F-ARS-THC-HX-10 | IOAのCIL評価（1988年）は、slurperの配管・継手（ARS-344）について、追加情報によりNASAの臨界度（3/2R）に同意して指摘を取り下げた。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=130） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-CO2-05 | CO2・CO除去：ATCO | 推進薬・流体 | 送信 | キャビン熱交換器を出た再生・調整済み空気の一部をATCOへ送り、COをCO2に変換する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376）ATCOを通った空気は調整済み空気とともに乗員室へ戻り、生じたCO2は循環してLiOHキャニスタで除去される。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=64） | 上位: IF-ARS-05 |
| IF-RCRS-02 | 再生式CO2除去装置：ベッド | 推進薬・流体 | 受信 | 吸着中のベッドでCO2を除いた空気をARSの空気流へ戻し、キャビン熱交換器を通して乗員室へ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371）訓練マニュアル付録C.2.1は、戻す位置をキャビンファンのフィルタのすぐ上流（RCRSの吸込み位置とほぼ同じ所）とする。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=213） | 上位: IF-ARS-04 |
| IF-THC-01 | 温度制御弁・給気混合 | 推進薬・流体 | 受信 | キャビン温度制御弁が迂回させなかった空気を、キャビン熱交換器へ流す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=57）FULL COOLでは熱交換器への流量が最大、FULL HEATでは最小となる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375） | — |
| IF-THC-02 | 温度制御弁・給気混合 | 推進薬・流体 | 送信 | 熱交換器で冷やした空気を、下流の給気ダクトでバイパス空気と合流させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/374） | — |
| IF-THC-03 | 水冷却ループ：冷側熱交換器 | 熱 | 送信 | キャビン熱交換器で、キャビン空気が拾った熱をARS水冷却ループへ移す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=63）水冷却ループの冷えた水は、液冷服熱交換器と飲料水チラーに続いてキャビン熱交換器を通る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/379） | 上位: IF-ARS-06 |
| IF-THC-04 | 湿度分離器・凝縮水排出 | 推進薬・流体 | 送信 | 熱交換器のslurperに集まった凝縮水を、湿度分離器が空気とともに吸い出す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375）分離器の入口流量（空気と水）は37〜41 lb/hrである。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=58） | — |
| IF-THC-08 | 温度・分離器監視 | 推進薬・流体 | 送信 | キャビン熱交換器の下流に空気出口温度センサを置き、熱交換器を出た空気の温度を測る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/788） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| TH-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.2.4節（PDF p63）：キャビン熱交換器が空気の熱をARS水冷却ループへ移し、湿気がslurperバーに凝縮して湿度分離器へ引き出されると解説し、3.2.6節（p64）でATCOが熱交換器のすぐ下流にあるとする。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=63） |
| TH-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Cabin Air Humidity Control（PDF p375）：キャビン空気を熱交換器へ送って水冷却ループへ熱を移し、凝縮した水分が空気流でslurperへ押し出されると示し、PDF p379で水冷却ループの水がキャビン熱交換器を通るとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375） |
| TH-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A13-152（PDF p1799）：温度コントローラを全COOLにすると熱交換器を通る空気流量が最大になり、湿度分離器で除く汚染物質が増えると説明する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1799） |
| TH-06 | NASA CR-1981 | Space Shuttle EC/LSS（Hamilton Standard、1972年） | 選定系統（表1、p5）で、湿度制御に凝縮熱交換器を用いる構成を採用した。（出典: https://ntrs.nasa.gov/api/citations/19720017476/downloads/19720017476.pdf） |
| TH-07 | JSC-16720 | STS-1 ECLSS Consumables and Thermal Analysis | キャビン空気ループの熱プロファイルを示す。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf） |
| TH-08 | JSC-16730 | ECLSS Analysis of STS-1: 9-psia EVA Configuration | キャビン圧9 psiaでの冷却能力をSECUREとSEPSで評価する（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19800020542） |
| TH-12 | NASA-CR-151030 | Lightweight Long Life Heat Exchanger（Hamilton Standard、1976年） | シャトルの凝縮熱交換器と互換のアルミ製熱交換器を設計・試験し、下流面の凝縮水を吸い取るslurperとコア空気流路に親水性コーティングを施した（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19770003526） |
| TH-13 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | ARS-344（C.13-28、PDF p130）：slurperの配管・継手について、追加情報によりNASAの臨界度（3/2R）に同意して指摘を取り下げたと記す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=130） |
| TH-15 | SAE 921160 | Zero Gravity Phase Separator Technologies – Past, Present and Future（Dean、1992年） | シャトル・オービタは熱交換器のslurperで凝縮水を集める方式を使ったと述べる（抄録で確認）。（出典: https://saemobilus.sae.org/content/921160/） |
| TH-18 | NASA/TM-2005-214007 | Designing For Human Presence in Space: An Introduction to ECLSS – Appendix I, Update（Wieland、2005年） | 表1（p8）のオービタ欄で、水冷却の集中型キャビン液/空気熱交換器を記す。（出典: https://ntrs.nasa.gov/citations/20060005209） |
| TH-20 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.2.2節（PDF p37）：空気が熱交換器内のコールドプレートの間を通るときの温度変化でプレート上に凝縮が生じ、分離器の遠心ファンの空気流が凝縮水を運ぶと示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37） |
| TH-26 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） | PDF p42：熱交換器・slurper組立の空気出口ダクトに遊離水がないことを2回点検し、STS-3後のslurper部の清掃が再発を防いだ可能性があると記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=42） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：訓練マニュアル付録C.2.1はRCRSを通った空気をキャビンファンのフィルタのすぐ上流へ戻すとし、その場合RCRSの空気は温度制御弁を経て熱交換器に入る。本書はSCOM（PDF p371）とARS段のIF-ARS-04に合わせ、図30ではRCRS側のIF-RCRS-02を熱交換器・凝縮に接続した。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=213）

> **注記** 熱交換器出口からATCOへの分流は、図14のIF-CO2-05のまま示した（同じ物理IFのため新しい番号を作らない）。IF-CO2-05の上位IFはIF-ARS-05である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376）

> **注記** 熱交換器の水側の入口温度（CAB HX IN T）は水冷却ループの計測として扱い、本機能には含めない（故障処置手順6.4p）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=318）

## 6. 参考文献

1. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.2.3〜3.2.5節 Cabin Temperature Control Valve・Cabin Heat Exchanger・Humidity Separator（PDF p63） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=63
2. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Cabin Temperature Monitoring〜Cabin Air Humidity Control（PDF p375） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375
3. JSC-12770 Vol. 3 Shuttle Flight Operations Manual – Environmental Control and Life Support Systems（1979年） 2.2.2節 ARS System Description（続き）（PDF p37） — https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37
4. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Water Coolant Loop System（PDF p379） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/379
5. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.2.5〜3.2.6節 Humidity Separator・Ambient Temperature Catalytic Oxidizer（PDF p64） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=64
6. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Regenerable Carbon Dioxide Removal System（PDF p371） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A13-152 Cabin Atmosphere Contamination（続き）（PDF p1799） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1799
8. JSC-18553 STS-4 Orbiter Mission Report（1982年） ECLSS（ARS）（PDF p42） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=42
9. NASA-CR-185524 Vol. 2 Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） C.13-28 ARS-344 Lines and Fittings-Slurper（PDF p130） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=130
10. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Cabin Air Humidity Control（ATCO）（PDF p376） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376
11. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.2.1 Carbon Dioxide Removal（PDF p213） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=213
12. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.2節 Cabin Air（PDF p57） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=57
13. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Cabin Air Temperature Control（PDF p374） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/374
14. JSC-12770 Vol. 3 Shuttle Flight Operations Manual – Environmental Control and Life Support Systems（1979年） 2.2.4節 ARS Systems Performance, Limitations, and Capabilities（PDF p58） — https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=58
15. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 4.1節 Instrument Markings（Panel O1 Meters）（PDF p788） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/788
16. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.4p H2O LOOP TEMP（PDF p318） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=318

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
