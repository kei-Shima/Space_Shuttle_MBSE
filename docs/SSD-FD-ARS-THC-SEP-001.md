# 湿度分離器・凝縮水排出（SEP）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ARS-THC-SEP-001 |
| 表題 | 湿度分離器・凝縮水排出（SEP）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-THC-001 |
| 関連図 | SSD-SYS-ARC-001 図30 キャビン温湿度制御 機能構成 |

## 1. 目的

2台の湿度分離器（ファンセパレータ）で熱交換器のslurperから空気と凝縮水を吸い出して遠心力で分け、水を廃水タンク（ISS飛行ではCWC）へ送り、除湿した空気を戻す機能と、凝縮水の回収経路・漏水への対処を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ARS-THC-SEP-01 | 2台の湿度分離器はキャビン熱交換器に隣接して床下のECLSSベイにあり、常時1台を使う（訓練マニュアル3.2.5節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=63） |
| F-ARS-THC-SEP-02 | 分離器のファンが吸引を作って熱交換器から水を含んだ空気を引き出し、回転ドラムの遠心力で空気と凝縮水を分け、凝縮水を廃水タンクへ送り、除湿した空気を37 lb/hrでECLSSベイへ戻す。分離器は三相115 V ACの電動機で駆動される（訓練マニュアル3.2.5節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=64） |
| F-ARS-THC-SEP-03 | 分離器は公称約1 lb/hr、最大約4 lb/hrの水を除き、水は廃水タンクへ、空気は排気ダクトで乗員室へ戻す（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375） |
| F-ARS-THC-SEP-04 | 1979年の飛行運用マニュアルは、分離器の露点範囲を39〜61°F、モータの回転数を5,430〜5,700 rpm、除水量を0〜4 lb/hrとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37） |
| F-ARS-THC-SEP-05 | 凝縮水QDの追加に伴い、分離器の共通出口は排出ラインを経て廃水タンクにつながり、廃水タンク1の出口弁が開なら凝縮水は廃水タンクへ、閉なら接続したCWCへ流れる（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/401） |
| F-ARS-THC-SEP-06 | 凝縮水の回収では、Y-Yホースで凝縮水QDにCWCをつなぎ、パネルML31CのWASTE H2O TK1 DRAIN VLVを閉じ、24時間ごとにCWCの溜まり具合を確かめる（Orbit Opsチェックリスト5-43）。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=153） |
| F-ARS-THC-SEP-07 | IFMの凝縮水回収の再構成（W-8）は、両分離器を止めて凝縮水回収ラインを分離器Bの試験ポート49から分離器Aの試験ポート48へ付け替える手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=432） |
| F-ARS-THC-SEP-08 | 故障処置手順6.2jは、各分離器下流の逆止弁が開固着すると廃水タンクの水で分離器が浸水しうると注意する。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=285） |
| F-ARS-THC-SEP-09 | IOAのCIL評価（1988年）は、分離器出口の逆止弁（ARS-340、4個）について、水の逆流は有効な影響で飛行の打切りにつながるとした。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=129） |
| F-ARS-THC-SEP-10 | 分離器から水が漏れた場合は1台を常に運転したままにし（両方を同時に止めると分離器がさらに浸水し、再起動時に損傷しうる）、下部機器ベイの遊離水を清掃する（MAL ECLS SSR-16）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=357） |
| F-ARS-THC-SEP-11 | 詰まった分離器の空気出口から漏れる水は、空気穴を開けたごみ袋にタオルを詰めて出口に取り付けて吸い取る（IFM W-40）。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=464） |
| F-ARS-THC-SEP-12 | SODBは、キャビンファンの起動・停止の前と少なくとも5分後まで水分離器を運転するとし、止まった分離器に水が溜まるとモータと軸受を損傷しうるとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=215） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-THC-04 | キャビン熱交換器・凝縮 | 推進薬・流体 | 受信 | 熱交換器のslurperに集まった凝縮水を、湿度分離器が空気とともに吸い出す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375）分離器の入口流量（空気と水）は37〜41 lb/hrである。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=58） | — |
| IF-THC-05 | 給水・廃水系：廃水貯蔵 | 推進薬・流体 | 送信 | 分離した凝縮水を、分離器の共通出口から排出ラインを経て廃水タンクへ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/401）ISS飛行では、軌道上で凝縮水をCWCへ切り替えて溜め、分離後に緊急クロスタイの廃水QDから機外へ捨てる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） | 上位: IF-ARS-12 |
| IF-THC-06 | 乗員室（制御対象） | 推進薬・流体 | 送信 | 分離器で水を除いた空気を、37 lb/hrでECLSSベイへ戻す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=64）SCOMは、分離器の空気を排気ダクトで乗員室へ戻すとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375） | 上位: IF-ARS-10 |
| IF-THC-09 | 温度・分離器監視 | データ・指令 | 送信 | HUM SEP信号調整器が給電する回転数センサで、湿度分離器が正常に回っているかを検知する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） | — |
| IF-THC-15 | 温湿度運用管理 | データ・指令 | 受信 | パネルL1のHUMIDITY SEP A・Bスイッチ（ON–OFF）で、湿度分離器の電源を個別に入切りする。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90） | — |
| IF-THC-17 | 電力系（EPS） | 電力（28 VDC） | 受信 | 湿度分離器AにはAC1、BにはAC2の三相交流電力を、パネルL4の各3個の遮断器からパネルL1のHUMIDITY SEPスイッチを通して供給する。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=285）訓練マニュアル表3-6も、AC1とAC2の三相電力を分離器A・Bのスイッチへ送る遮断器を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92） | 上位: IF-ARS-40 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| TH-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.2.5節（PDF p63〜64）：2台の湿度分離器（常時1台、三相115 V AC）が遠心ドラムで水を分けて廃水タンク（ISS飛行ではCWC）へ送り、除湿した空気を37 lb/hrでECLSSベイへ戻すと示し、3.2.2節（p59）でLiOHの粉塵が分離器の故障の一因となりうるとする。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=64） |
| TH-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p375〜376・p401）：2台のファンセパレータ（通常1台）が公称約1〜最大約4 lb/hrの水を廃水タンクへ送り、ISS飛行では凝縮水をCWCへ切り替え、凝縮水QDの追加で分離器の共通出口を排出ライン経由で廃水タンクにつないだと示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375） |
| TH-03 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | ファンセパレータが最大約4 lb/hrの水を除き、相対湿度を30〜65%に保つと記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html） |
| TH-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A9-154（PDF p1468）：上昇中の交流負荷管理で、キャビンファン・IMUファン・湿度分離器の再構成はMECO後まで不要とする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1468） |
| TH-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.2j HUMID SEP（PDF p285）：回転数低下の警報で予備の分離器へ切り替える手順と逆止弁の開固着による浸水の注意を示し、ECLS SSR-16（p357）で分離器からの水漏れの処置を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=285） |
| TH-06 | NASA CR-1981 | Space Shuttle EC/LSS（Hamilton Standard、1972年） | 選定系統（表1、p5）で、凝縮水の分離にエルボー型水分離器を用いる構成を採用した。（出典: https://ntrs.nasa.gov/api/citations/19720017476/downloads/19720017476.pdf） |
| TH-11 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | 2台の湿度分離器（出口空気37 lb/hr）が0〜4 lb/hrの水を除くと記す。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| TH-13 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | ARS-340（C.13-27、PDF p129）：分離器出口の逆止弁（4個）の水の逆流は有効な影響で飛行の打切りにつながるとし、真空ベントノズルの径は乗員室の穴の臨界寸法より十分小さいと記す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=129） |
| TH-14 | NSTS-23370 | STS-27 National Space Transportation System Mission Report（1989年） | 湿度分離器Bが廃水タンクへ水を送れず、ミッドデッキ床の上下に約2ガロンの水が溜まって分離器Aへ切り替えたことを記録する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-27%20National%20Space%20Transportation%20System%20Mission%20Report.pdf） |
| TH-15 | SAE 921160 | Zero Gravity Phase Separator Technologies – Past, Present and Future（Dean、1992年） | 温湿度制御熱交換器から凝縮水を除く気液分離器の変遷をたどり、オービタはモータ駆動の回転ピトー管式分離器を使ったと述べる（抄録で確認）。（出典: https://saemobilus.sae.org/content/921160/） |
| TH-16 | NASA-CR-195739 | STS-57 Space Shuttle Mission Report（1993年） | 弁を主アクチュエータにつなぎ直した際に、水の塊が湿度分離器を通って床下へ出たことを記録する。（出典: https://ntrs.nasa.gov/citations/19940023717） |
| TH-18 | NASA/TM-2005-214007 | Designing For Human Presence in Space: An Introduction to ECLSS – Appendix I, Update（Wieland、2005年） | 表1（p8）のオービタ欄で、凝縮水をslurperバーと遠心分離器で除くと記す。（出典: https://ntrs.nasa.gov/citations/20060005209） |
| TH-19 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | 湿度分離器周辺での凝縮水の持ち越し（IFA STS-125-V-09）を記録し、FESのコアフラッシュによる分離器へのスラッギングを主因とみて、両分離器の同時運転で解消したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf） |
| TH-20 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.2.2節（PDF p37）と2.2.4節（p58）：分離器の露点範囲（39〜61°F）、モータ回転数（5,430〜5,700 rpm）、除水量（0〜4 lb/hr）と、分離器入口流量（37〜41 lb/hr）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37） |
| TH-22 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | W-8 CONDENSATE COLLECTION RECONFIGURATION（PDF p432〜433）で凝縮水回収ラインを分離器Aの試験ポート48へ付け替える手順を、W-40 HUM SEP AIR OUTLET H2O ABSORPTION（p464）で詰まった分離器の空気出口から漏れる水を吸い取る手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=432） |
| TH-23 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 5-43 SHUTTLE CONDENSATE COLLECTION（PDF p153）：Y-Yホースで凝縮水QDにCWCをつなぎ、廃水タンク1の排出弁を閉じて凝縮水をCWCへ溜める手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=153） |
| TH-24 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | 3.4.6.1節（PDF p215）：キャビンファンの起動・停止の前と少なくとも5分後まで水分離器を運転するとし、停止中の分離器に水が溜まるとモータと軸受を損傷しうるとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=215） |
| TH-27 | NSTS-08302 | STS-35 Space Shuttle Mission Report（1991年） | PDF p14：冗長機器の点検で分離器Aへ切り替えた直後に分離器Bの周りに少量の水が見られたが、Aは以後正常に作動したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=14） |
| TH-28 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | PDF p34：ISS係留中の廃水排出を減らすためCWCへの凝縮水回収を行い、オービタの凝縮水でCWC 2個を満たして廃水ダンプノズルから捨てたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=34） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：訓練マニュアル表3-6（PDF p92）はAC2の遮断器の名称を「HUMIDITY SEPARATOR A」と記すが、機能欄は分離器Bのスイッチへの給電とし、故障処置手順6.2jの標準構成も「AC2 HUM SEP B」とする。本書は分離器BをAC2とした。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92）

> **注記** 検証メモ：1979年の飛行運用マニュアルの露点範囲は、抽出テキストでは「399 F to 619 F」と読めるが、度記号の読み誤りと判断して39〜61°Fとした。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37）

> **注記** LiOHキャニスタの粉塵は湿度分離器の故障の一因となりうる（訓練マニュアル3.2.2節）。キャニスタの交換はCO2・CO除去の機能で扱う。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=59）

## 6. 参考文献

1. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.2.3〜3.2.5節 Cabin Temperature Control Valve・Cabin Heat Exchanger・Humidity Separator（PDF p63） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=63
2. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.2.5〜3.2.6節 Humidity Separator・Ambient Temperature Catalytic Oxidizer（PDF p64） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=64
3. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Cabin Temperature Monitoring〜Cabin Air Humidity Control（PDF p375） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375
4. JSC-12770 Vol. 3 Shuttle Flight Operations Manual – Environmental Control and Life Support Systems（1979年） 2.2.2節 ARS System Description（続き）（PDF p37） — https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37
5. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Waste Water System（PDF p401） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/401
6. JSC-48035 Rev. M PCN-10 Orbit Operations Checklist 5-43 Shuttle Condensate Collection（PDF p153） — https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=153
7. JSC-48025 Rev. F PCN-13 In-Flight Maintenance (IFM) Checklist W-8 Condensate Collection Reconfiguration（PDF p432） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=432
8. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.2j HUMID SEP（PDF p285） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=285
9. NASA-CR-185524 Vol. 2 Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） C.13-27 ARS-340 Check Valve, Separator Outlet（PDF p129） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=129
10. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS SSR-16 FREE WATER LEAKING FROM HUM SEP（PDF p357） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=357
11. JSC-48025 Rev. F PCN-13 In-Flight Maintenance (IFM) Checklist W-40 Hum Sep Air Outlet H2O Absorption（PDF p464） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=464
12. JSC-08934 Vol. 1 Rev. E Shuttle Operational Data Book – Shuttle Systems Performance and Constraints Data（1988年） 3.4.6.1節 Atmospheric Revitalization Subsystem（PDF p215） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=215
13. JSC-12770 Vol. 3 Shuttle Flight Operations Manual – Environmental Control and Life Support Systems（1979年） 2.2.4節 ARS Systems Performance, Limitations, and Capabilities（PDF p58） — https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=58
14. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Cabin Air Humidity Control（ATCO）（PDF p376） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376
15. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.5節 ARS Instrumentation and Displays（PDF p74） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74
16. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表3-6 ECLSS controls (ARS)（PDF p90） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90
17. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表3-6 ECLSS controls (ARS)（続き）（PDF p92） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92
18. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.2.2〜3.2.3節 LiOH Canisters・Cabin Temperature Control Valve（PDF p59） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=59

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
