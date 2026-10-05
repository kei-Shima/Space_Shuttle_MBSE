# キャビン温湿度制御（THC）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ARS-THC-001 |
| 表題 | キャビン温湿度制御（THC）機能説明書 |
| 版・日付 | Rev. C／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-ARS-001 |
| 関連図 | SSD-SYS-ARC-001 図12 ARS 機能構成 |

## 1. 目的

キャビン熱交換器とバイパス弁によるキャビン温度の制御と、凝縮水の分離による湿度の制御の機能と、温度・湿度分離器の監視を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ARS-THC-01 | キャビン温度制御弁はキャビン熱交換器を迂回する空気量を配分する可変位置弁で、乗員が手動で、または2台のキャビン温度コントローラの一方が自動で位置決めし、弁と2台のコントローラはパネルMD44Fの下のECLSSベイにある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/374） |
| F-ARS-THC-02 | パネルL1のCABIN TEMP CNTLRスイッチを1にするとコントローラ1が有効になり、CABIN TEMPロータリスイッチの位置に応じて空気流の0〜70%を熱交換器の外へ迂回させ、全COOLで約65°F、全WARMで約80°Fとなる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/374） |
| F-ARS-THC-03 | コントローラ1が故障した場合は乗員がパネルMD44Fでアクチュエータアームのリンクをコントローラ2へ付け替えてからCABIN TEMP CNTLRを2にし、OFF位置では両コントローラ・ロータリスイッチ・自動制御の電源が断たれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/374） |
| F-ARS-THC-04 | 熱交換器を通った空気とバイパス空気は下流の給気ダクトで合流してCDR・PLTコンソールと各所のダクト吹出口から乗員室へ吹き出され、上昇・再突入では最大冷却のためCABIN TEMPを全COOLにする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/374） |
| F-ARS-THC-05 | キャビン熱交換器出口温度はパネルO1のAIR TEMP計器下のロータリスイッチをCAB HX OUTにすると表示でき、145°Fを超えるとパネルF7の黄色AV BAY/CABIN AIR警報灯が点灯する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375） |
| F-ARS-THC-06 | コントローラやロータリスイッチで弁を制御できない場合、乗員はパネルMD44Fでバイパス弁アームを4つの固定穴（FULL COOL、2/3 COOL、1/3 COOL、FULL HEAT）の一つにピンで固定する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375） |
| F-ARS-THC-07 | 熱交換器で凝縮した水分は空気流でスラーパへ押し出され、2台の湿度分離器の一方がスラーパから空気と水を吸い込んで遠心力で分離し、公称約1 lb/hr・最大約4 lb/hrの水を廃水タンクへ送り、空気は排気ダクトでキャビンへ戻す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375） |
| F-ARS-THC-08 | ファンセパレータA・BはパネルL1のHUMIDITY SEP A・Bスイッチで個別に制御して通常は1台を使い、乗員室の相対湿度は通常30〜65%に保たれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） |
| F-ARS-THC-09 | ISSミッション向けに、軌道上で湿度分離器の凝縮水を緊急用水容器（CWC）へ切り替えて送れるよう改修されており、ISSからの分離後にCWCは緊急クロスタイ廃水QDから機外へ排出される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） |
| F-ARS-THC-10 | キャビン温度を95（90）°F未満に保てない、A13-52のPPCO2制約を満たせない、または湿度制御に失敗した（通常6±1 lb/day/人の廃水タンク増加率の説明できない低下、構造や機器の結露）場合はキャビン大気制御の喪失とする（A17-102）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1930） |
| F-ARS-THC-11 | 湿度分離器の作動は、HUM SEP信号調整器が給電する回転数センサで確かめ、キャビン熱交換器の空気出口温度とキャビン温度のセンサには、キャビン温度コントローラと同じCABIN CNTLR 1の遮断器が給電する（訓練マニュアル3.5節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ARS-03 | キャビン空気循環 | 推進薬・流体 | 受信 | 暖まったキャビン空気はキャビンファンでキャビン熱交換器へ送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369） | 下位: IF-CAC-13 |
| IF-ARS-04 | 再生式CO2除去装置（RCRS） | 推進薬・流体 | 受信 | RCRSでCO2を除去した空気はキャビン熱交換器へ送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371） | 下位: IF-RCRS-02 |
| IF-ARS-05 | CO2・CO除去（LiOH・ATCO） | 推進薬・流体 | 送信 | キャビン熱交換器を出た再生・調整済み空気の一部をATCOへ送り、COをCO2に変換する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376）ATCOを通った空気は調整済み空気とともに乗員室へ戻り、生じたCO2は循環してLiOHキャニスタで除去される。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf） | 下位: IF-CO2-05 |
| IF-ARS-06 | 水冷却ループ×2 | 熱 | 送信 | キャビン熱交換器で空気の熱を水冷却ループへ移す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375） | 下位: IF-THC-03 |
| IF-ARS-10 | 乗員室（制御対象） | 推進薬・流体 | 送信 | 熱交換器通過空気とバイパス空気を合流させ、CDR・PLTコンソールと各所のダクト吹出口から乗員室へ給気する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/374） | 上位: IF-ECL-05 下位: IF-THC-06 下位: IF-THC-07 |
| IF-ARS-12 | 給水・廃水系（H2O） | 推進薬・流体 | 送信 | 湿度分離器で分離した凝縮水を廃水タンクへ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375） | 上位: IF-ECL-07 下位: IF-THC-05 |
| IF-ARS-27 | DPS・アビオニクス | データ・指令 | 送信 | キャビン熱交換器下流の温度センサのデータはAIR TEMP計器に直接送られ、SM SYS SUMM 1とSPEC 66 ENVIRONMENTにも表示される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/788） | 上位: IF-ECL-29 下位: IF-THC-11 下位: IF-THC-12 |
| IF-ARS-40 | 電力系（EPS） | 電力（28 VDC） | 受信 | 湿度分離器A・BにはAC1・AC2の三相、キャビン温度コントローラ1・2にはAC2・AC1のφA、分離器の信号調整器にはAC3 φAの交流電力を、パネルL4の遮断器を通して供給する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92）故障処置手順の標準構成も、遮断器AC1 HUM SEP A・AC2 HUM SEP B（各3個）とAC3 φA SIG CONDR HUM SEPを閉とする。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=285） | 上位: IF-ECL-39 下位: IF-THC-16 下位: IF-THC-17 下位: IF-THC-18 |

## 4. 下位文書

| 文書番号 | 表題 |
|---|---|
| [SSD-FD-ARS-THC-HX-001](SSD-FD-ARS-THC-HX-001.md) | キャビン熱交換器・凝縮（HX）機能説明書 |
| [SSD-FD-ARS-THC-TCV-001](SSD-FD-ARS-THC-TCV-001.md) | 温度制御弁・給気混合（TCV）機能説明書 |
| [SSD-FD-ARS-THC-SEP-001](SSD-FD-ARS-THC-SEP-001.md) | 湿度分離器・凝縮水排出（SEP）機能説明書 |
| [SSD-FD-ARS-THC-MON-001](SSD-FD-ARS-THC-MON-001.md) | 温度・分離器監視（MON）機能説明書 |
| [SSD-FD-ARS-THC-OPS-001](SSD-FD-ARS-THC-OPS-001.md) | 温湿度運用管理（OPS）機能説明書 |

## 5. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| AR-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.2.3〜3.2.5節：キャビン温度制御弁とコントローラ2台（弁は手動では4つの固定位置のいずれかで固定され、自動では全COOLから全HOTまで最大4分で動く）、slurperバーで凝縮水を集めるキャビン熱交換器、凝縮水を廃水タンク（ISSミッションではCWC）へ送る湿度分離器を解説する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf） |
| AR-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Cabin Air Temperature Control〜Cabin Air Humidity Control（PDF p374〜376）：バイパス弁が空気の0〜70%をキャビン熱交換器から迂回させ（全COOL約65°F、全WARM約80°F）、凝縮水はslurperから2台のファンセパレータ（通常1台、約1〜最大約4 lb/hr）で廃水タンクへ送り相対湿度を30〜65%に保つと示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/374） |
| AR-03 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | バイパスダクトで熱交換器を迂回した空気を混ぜてキャビン温度を65〜80°Fに制御し、ファンセパレータが最大約4 lb/hrの水を除いて相対湿度を30〜65%に保つと記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html） |
| AR-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-102 Cabin Atmospheric Control（PDF p1930）：キャビン温度を95（90）°F未満に保てない場合や、廃水タンク増加率の説明できない低下（通常6±1 lb/day/人）・結露による湿度制御の失敗でキャビン大気制御の喪失とし、A17-151・A17-152（p1938・p1940）で上昇・再突入時のバイパス弁FULL COOLとキャビン温度管理を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1930） |
| AR-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.2j HUMID SEP（PDF p285）：湿度分離器の回転数低下警報時に予備の分離器へ切り替える手順と、分離器下流の逆止弁の開固着による浸水の注意を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf） |
| AR-06 | NASA CR-1981 | Space Shuttle EC/LSS（Hamilton Standard、1972年） | 選定系統（表1、p5）で、湿度制御を凝縮熱交換器とエルボー型水分離器、温度制御を凝縮熱交換器を迂回する空気流で行う構成を採用した。（出典: https://ntrs.nasa.gov/api/citations/19720017476/downloads/19720017476.pdf） |
| AR-08 | JSC-16720 | STS-1 ECLSS Consumables and Thermal Analysis | キャビン温度を70°Fに制御する前提で、キャビン空気ループの熱プロファイルとキャビン温度・露点の解析値を示す。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf） |
| AR-09 | JSC-16730 | ECLSS Analysis of STS-1: 9-psia EVA Configuration | キャビン圧9 psiaでの冷却能力をSECUREとSEPSで評価し、キャビン熱交換器の空気バイパス弁をゼロ流量に設定することの効果を再検討するよう提言する（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19800020542） |
| AR-14 | NTRS 19750056784 | The shuttle orbiter cabin atmospheric revitalization systems | 1973年以降の設計変更としてキャビンヒータの廃止を挙げる（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19750056784） |
| AR-15 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report | キャビン空気温度と相対湿度の最高値（80°F、56%）を記録する。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf） |
| AR-17 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | キャビン温度制御弁が熱交換器を迂回する空気量を調整し（自動では全COOLから全HOTまで最大4分で動く）、2台の湿度分離器（出口空気37 lb/hr）が0〜4 lb/hrの水を除くと記す。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| AR-19 | NASA-CR-151030 | Lightweight Long Life Heat Exchanger（Hamilton Standard、1976年） | シャトルの凝縮熱交換器と互換のアルミ製熱交換器を設計・試験し、下流面の凝縮水を吸い取るslurperとコア空気流路に親水性コーティングを施した（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19770003526） |
| AR-22 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | 湿度分離器出口の逆止弁（ARS-340）とslurperの配管（ARS-344）の評価ワークシートを示す（C.13-27〜28）。（出典: https://ntrs.nasa.gov/citations/19900001639） |
| AR-23 | NSTS-23370 | STS-27 National Space Transportation System Mission Report（1989年） | 湿度分離器Bが廃水タンクへ水を送れずミッドデッキ床上下に約2ガロンの水が溜まって分離器Aへ切り替えたことと、キャビン温度コントローラ2が応答しなかったことを記録する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-27%20National%20Space%20Transportation%20System%20Mission%20Report.pdf） |
| AR-24 | SAE 921160 | Zero Gravity Phase Separator Technologies – Past, Present and Future（Dean、1992年） | 温湿度制御熱交換器から凝縮水を除く気液分離器の変遷をたどり、シャトル・オービタはモータ駆動の回転ピトー管式分離器と熱交換器のslurperの組合せを使ったと述べる（抄録で確認）。（出典: https://saemobilus.sae.org/content/921160/） |
| AR-26 | NASA-CR-195739 | STS-57 Space Shuttle Mission Report（1993年） | キャビン温度制御弁がどのアクチュエータにもピン止めされず全HOT側へ動いてキャビンが85.6°Fになり、主アクチュエータにつなぎ直した際に水の塊が湿度分離器を通って床下へ出たと記録する。（出典: https://ntrs.nasa.gov/citations/19940023717） |
| AR-28 | NSTS-37443 | STS-107 Space Shuttle Mission Report（2003年） | キャビン空気温度は平均76°F（打上げ時72°F）、湿度は平均約37.5%で、二次側キャビン温度コントローラへの切替点検を行ったと記録する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-107%20Space%20Shuttle%20Mission%20Report.pdf） |
| AR-29 | NASA/TM-2005-214007 | Designing For Human Presence in Space: An Introduction to ECLSS – Appendix I, Update（Wieland、2005年） | 表1（p8）のオービタ欄で、水冷却の集中型キャビン液/空気熱交換器の空気バイパス比で温度を制御し、凝縮水をslurperバーと遠心分離器で除くと記す。（出典: https://ntrs.nasa.gov/citations/20060005209） |
| AR-35 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | 湿度分離器周辺での凝縮水の持ち越し（IFA STS-125-V-09）を記録し、FESのコアフラッシュによる分離器へのスラッギングを主因とみて、両分離器の同時運転で解消したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf） |

## 6. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：相対湿度の範囲はSCOM内で一致せず、キャビン空気系統図（PDF p370）は30〜75%、湿度制御の本文（PDF p376）とECLSS要約（PDF p407）は30〜65%とする。本書は本文の値を用いた。上位のSSD-FD-ECL-ARS-001のF-ECL-ARS-01は30〜75%（1988年版マニュアル）である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370）

> **注記** Rev. Bで下位の展開（図30）を追加した。IF-ARS-03の下位は図16のIF-CAC-13、IF-ARS-04の下位は図28のIF-RCRS-02、IF-ARS-05の下位は図14のIF-CO2-05をそのまま用い（同じ物理IF）、IF-ARS-10は給気（IF-THC-07）と湿度分離器の除湿空気の戻り（IF-THC-06）、IF-ARS-27は熱交換器出口温度（IF-THC-11）とSPEC 66の分離器・キャビン温度（IF-THC-12）の、それぞれ2つの下位IFに分けた。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=64）

> **注記** Rev. Bで、湿度分離器・温度コントローラ・信号調整器の交流電源をIF-ARS-40（EPS→キャビン温湿度制御、上位IF-EPS-12、図12では図示省略）として追加し、湿度分離器の作動監視と温度センサの給電を機能（F-ARS-THC-11）として追加した。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92）

> **注記** 検証メモ：ARS段のIF-ARS-25（キャビン空気循環→DPS）はAV BAY/CABIN AIR灯の入力としてキャビン熱交換器の空気温度（チャネル114）を含む。下位の展開では、この温度の入力を温度センサの出力としてIF-ARS-27の下位（IF-THC-11）に置いた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/133）

## 7. 参考文献

1. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p374） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/374
2. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p375） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375
3. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p376） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376
4. Space Shuttle Operational Flight Rules Vol. A – All Flights A17-102 Cabin Atmospheric Control（NSTS-12820 PCN-1、PDF p1930） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1930
5. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p369） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369
6. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p371） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371
7. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf
8. Shuttle Crew Operations Manual 4.1 Instrument Markings（USA007587 Rev. A CPN-1、PDF p788） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/788
9. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p370） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370
10. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表3-6 ECLSS controls (ARS)（続き）（PDF p92） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92
11. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.2j HUMID SEP（PDF p285） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=285
12. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.2.5〜3.2.6節 Humidity Separator・Ambient Temperature Catalytic Oxidizer（PDF p64） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=64
13. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 AV BAY/CABIN AIR（PDF p133） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/133
14. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.5節 ARS Instrumentation and Displays（PDF p74） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74

## 8. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-26 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-28 | IF-ARS-05に下位IF（IF-CO2-05）を付記 |
| Rev. B | 2026-09-30 | 下位機能説明書（5件）と図30・図31への展開を追加し、湿度分離器の作動監視の機能（F-ARS-THC-11）と電源のIF（IF-ARS-40）を追加、IF-ARS-03・04・06・10・12・27に下位IF（IF-CAC-13・IF-RCRS-02・IF-THC）を付記、注記・検証メモを追加 |
| Rev. C | 2026-10-01 | IF-ARS-40 の上位を IF-ECL-39 に付け替え、IF-ARS-27 の上位を IF-ECL-29 に付け替え（Rev. M） |
