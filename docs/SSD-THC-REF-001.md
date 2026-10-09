# キャビン温湿度制御 機能別関連文書一覧

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-THC-REF-001 |
| 表題 | キャビン温湿度制御 機能別関連文書一覧 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-THC-001 |
| 関連図 | SSD-SYS-ARC-001 図31 キャビン温湿度制御 関連文書マトリクス |

## 1. 目的

キャビン温湿度制御（THC）の各下位機能に関係する公開文書を機能別に整理し、各機能説明書と図31 キャビン温湿度制御 関連文書マトリクス（文書×機能マトリクス）の根拠とする。

## 2. 調査方法

SSD-ARS-REF-001の3.5節 キャビン温湿度制御（THC）の19件を引き継ぎ（出典欄「ARS-REF（AR-01）」の形）、今回の調査で9件を追加した（出典欄「新規」）。引き継いだ行も含め、各行の関連内容は下位機能ごとに書き分けた。訓練マニュアル（USA006020・USA006019）、SCOM、運用飛行規則、故障処置手順（MAL）、飛行運用マニュアル（JSC-12770）、IFM・Orbit Opsチェックリスト、SODB、IOA、ミッション報告（STS-2・4・35・54・108）は原本で本文を確認し、関連内容に節とPDFの通し頁を示す。頁を示していない行（TH-03・TH-06〜TH-09・TH-11・TH-12・TH-14〜TH-19）は、SSD-ARS-REF-001に記した内容（抄録で確認した行を含む）を下位機能に割り振った。

## 3. 機能別関連文書

### 3.1 キャビン温湿度制御 全般（3件）

機能説明書：SSD-FD-ARS-THC-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| TH-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.2節 Cabin Air（PDF p57）：温度制御弁が熱交換器のすぐ上流で暖かい空気の一部を迂回させ、熱交換器で冷やした空気とバイパス空気が合流して乗員室へ戻る流れと、凝縮水を湿度分離器が廃水タンクへ送ることを示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=57） |
| TH-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p376）：バイパスダクトが熱交換器を迂回した暖かい空気を再生・調整済みの空気と混ぜ、乗員室の温度を65〜80°Fに制御すると示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） |
| TH-07 | JSC-16720 | STS-1 ECLSS Consumables and Thermal Analysis | キャビン温度を70°Fに制御する前提で、キャビン温度と露点の解析値を示す。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf） |

### 3.2 キャビン熱交換器・凝縮（HX）（12件）

機能説明書：SSD-FD-ARS-THC-HX-001

| ID | 文書番号 | 表題 | 関連内容 |
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

### 3.3 温度制御弁・給気混合（TCV）（15件）

機能説明書：SSD-FD-ARS-THC-TCV-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| TH-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.2.3節（PDF p59・p63）：可変位置の温度制御弁と2台のコントローラ（MD44Fの下）、手動の4つの固定穴、自動時の弁アーム・リンク・アクチュエータのピン止め、全COOLから全HOTまで最大4分の移動を解説する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=63） |
| TH-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Cabin Air Temperature Control（PDF p374〜375）：単一のバイパス弁と2台のコントローラ、空気流の0〜70%の迂回（全COOL約65°F、全WARM約80°F）、コントローラ2への付け替え、上昇・再突入の全COOL、手動の4位置と給気ダクトでの合流を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/374） |
| TH-03 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | バイパスダクトで熱交換器を迂回した空気を混ぜ、キャビン温度を65〜80°Fに制御すると記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html） |
| TH-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-151A・A17-152A（PDF p1938・p1940）：上昇・再突入ではバイパス弁を自動でFULL COOLへ駆動すると定め、A17-152B2（p1941）で寒すぎる場合の最初の処置を弁の手動ピン止めとする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1938） |
| TH-06 | NASA CR-1981 | Space Shuttle EC/LSS（Hamilton Standard、1972年） | 選定系統（表1、p5）で、温度制御を凝縮熱交換器を迂回する空気流で行う構成を採用した。（出典: https://ntrs.nasa.gov/api/citations/19720017476/downloads/19720017476.pdf） |
| TH-08 | JSC-16730 | ECLSS Analysis of STS-1: 9-psia EVA Configuration | キャビン熱交換器の空気バイパス弁をゼロ流量に設定することの効果を再検討するよう提言する（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19800020542） |
| TH-09 | NTRS 19750056784 | The shuttle orbiter cabin atmospheric revitalization systems | 1973年以降の設計変更としてキャビンヒータの廃止を挙げる（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19750056784） |
| TH-11 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | キャビン温度制御弁が熱交換器を迂回する空気量を調整し、自動では全COOLから全HOTまで最大4分で動くと記す。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| TH-14 | NSTS-23370 | STS-27 National Space Transportation System Mission Report（1989年） | キャビン温度コントローラ2が応答しなかったことを記録する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-27%20National%20Space%20Transportation%20System%20Mission%20Report.pdf） |
| TH-16 | NASA-CR-195739 | STS-57 Space Shuttle Mission Report（1993年） | キャビン温度制御弁がどのアクチュエータにもピン止めされずに全HOT側へ動き、キャビンが85.6°Fになったことを記録する。（出典: https://ntrs.nasa.gov/citations/19940023717） |
| TH-17 | NSTS-37443 | STS-107 Space Shuttle Mission Report（2003年） | 二次側のキャビン温度コントローラへの切替点検を行ったと記録する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-107%20Space%20Shuttle%20Mission%20Report.pdf） |
| TH-18 | NASA/TM-2005-214007 | Designing For Human Presence in Space: An Introduction to ECLSS – Appendix I, Update（Wieland、2005年） | 表1（p8）のオービタ欄で、熱交換器の空気バイパス比で温度を制御すると記す。（出典: https://ntrs.nasa.gov/citations/20060005209） |
| TH-20 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.2.2節（PDF p35・p37）：各コントローラが給気・還流ダクトの温度を検知して65〜80°Fに制御し、バイパス弁は空気流の0〜70%を迂回させて全行程は最大4分とし、合流した空気をコンソール・ミッドデッキ・MS・PSのステーションの給気口から出すと示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=35） |
| TH-23 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 5-42 CABIN TEMP CONTROLLER RECONFIG（PDF p152）：CAB TEMP選択器を回してリンクが副（主）アクチュエータにつながるまで約5分待ち、OFFにしてMD44Fでリンクを付け替えるコントローラの切替手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=152） |
| TH-25 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | PDF p50：STS-1でセンサの高温指示があったため自動のキャビン温度コントローラを使わず、バイパス弁を作業中は全COOL、就寝中は全WARMにピン止めする計画としたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=50） |

### 3.4 湿度分離器・凝縮水排出（SEP）（19件）

機能説明書：SSD-FD-ARS-THC-SEP-001

| ID | 文書番号 | 表題 | 関連内容 |
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

### 3.5 温度・分離器監視（MON）（8件）

機能説明書：SSD-FD-ARS-THC-MON-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| TH-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.5節（PDF p74〜83）：CABIN CNTLR 1の遮断器が熱交換器空気出口温度とキャビン温度のセンサに、HUM SEP信号調整器が分離器の回転数センサに給電すると述べ、HX OUT T・CABIN T・HUMID SEPの表示とC&W限界（CAB HX AIROUT T 145°F）を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） |
| TH-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Cabin Temperature Monitoring（PDF p375）と4.1節（p788）：熱交換器出口温度をAIR TEMP計器（CAB HX OUT）とSM SYS SUMM 1・SPEC 66に示し、145°F超でAV BAY/CABIN AIR灯が点灯すると示し、2.2節（p133）で熱交換器の空気温度をC&Wチャネル114とする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375） |
| TH-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-152B1（PDF p1940〜1941）：キャビン温度の計測にキャビン温度トランスデューサ・Micro-WIS・マルチメータを使えるとし、トランスデューサが周囲の熱負荷の影響を受けることを示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1941） |
| TH-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.2j（PDF p285）で回転数センサのディスクリートと信号調整器の故障の切り分けを示し、6.4p（p320）で熱交換器出口温度とキャビン温度がともに低い場合をコントローラ1の信号調整器の故障とする。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=320） |
| TH-10 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report | PDF p18：ARSは問題なく作動し、キャビン空気温度と相対湿度の最高値は80°Fと56%だったと記録する。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=18） |
| TH-17 | NSTS-37443 | STS-107 Space Shuttle Mission Report（2003年） | キャビン空気温度は平均76°F（打上げ時72°F）、湿度は平均約37.5%だったと記録する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-107%20Space%20Shuttle%20Mission%20Report.pdf） |
| TH-21 | USA006019 Rev. A（C&W 21002） | Caution and Warning（2008年） | 表7-3 ハードウェアC&W表（PDF p97）で、キャビン熱交換器出口温度（CAB HX OUT T）をチャネル114に割り当て、2.3.4節（p18）で、通常運転中の湿度分離器のファンが止まると表示に下向き矢印が出ると示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97） |
| TH-25 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | PDF p50：自動制御を使わなかった理由を、STS-1で環境の影響を受けたセンサが高温を示したことと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=50） |

### 3.6 温湿度運用管理（OPS）（5件）

機能説明書：SSD-FD-ARS-THC-OPS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| TH-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.6節（PDF p85）：上昇前にコントローラ1で弁をFULL COOLにしてから断電し、HUM SEP信号調整器を断電しておき、軌道上でコントローラ1を入れると示す。表3-6（p90〜92）に操作スイッチと遮断器を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=85） |
| TH-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 5.3節・5.4節（PDF p833・p842）：軌道上の最初の数日は運転中の湿度分離器を約12時間ごとに水の溜まりを点検し、再突入準備でHUM SEPとIMU FANの信号調整器の遮断器を開くと示す。2.9節（p404）は上昇時の構成を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/833） |
| TH-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-102（PDF p1930）でキャビン大気制御の喪失を、A13-31（p1767〜1768）で乗員室温度の上限（打上げ前・軌道上80°F、再突入・着陸75°F）を、A17-152（p1940〜1946）で軌道上・再突入の温度管理を定め、A13-155・A15-203（p1807・p1874）で汚染時の全COOL運転を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1930） |
| TH-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | ECLS SSR-6 CABIN EQUIP PWRDN（PDF p342）：キャビン冷却のための電源切断で、CAB TEMPをCOOL（必要に応じてWARM）にし、窓の日よけを付けると示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=342） |
| TH-23 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 5-11 CABIN TEMP CONTROL（PDF p121）：キャビン温度を変える乗員の操作（MD44Fでの弁のピン止め、水ループのインターチェンジャ流量、FESの停止など）と見込みの温度変化を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=121） |

## 4. 文書×機能マトリクス（全件）

| ID | 文書番号 | 表題 | 全般 | HX | TCV | SEP | MON | OPS | 出典 | URL |
|---|---|---|---|---|---|---|---|---|---|---|
| TH-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | ● | ● | ● | ● | ● | ● | ARS-REF（AR-01） | https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf |
| TH-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | ● | ● | ● | ● | ● | ● | ARS-REF（AR-02） | https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual |
| TH-03 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） |  |  | ● | ● |  |  | ARS-REF（AR-03） | https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html |
| TH-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights |  | ● | ● | ● | ● | ● | ARS-REF（AR-04） | https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf |
| TH-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） |  |  |  | ● | ● | ● | ARS-REF（AR-05） | https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf |
| TH-06 | NASA CR-1981 | Space Shuttle EC/LSS（Hamilton Standard、1972年） |  | ● | ● | ● |  |  | ARS-REF（AR-06） | https://ntrs.nasa.gov/api/citations/19720017476/downloads/19720017476.pdf |
| TH-07 | JSC-16720 | STS-1 ECLSS Consumables and Thermal Analysis | ● | ● |  |  |  |  | ARS-REF（AR-08） | https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf |
| TH-08 | JSC-16730 | ECLSS Analysis of STS-1: 9-psia EVA Configuration |  | ● | ● |  |  |  | ARS-REF（AR-09） | https://ntrs.nasa.gov/citations/19800020542 |
| TH-09 | NTRS 19750056784 | The shuttle orbiter cabin atmospheric revitalization systems |  |  | ● |  |  |  | ARS-REF（AR-14） | https://ntrs.nasa.gov/citations/19750056784 |
| TH-10 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report |  |  |  |  | ● |  | ARS-REF（AR-15） | https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf |
| TH-11 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） |  |  | ● | ● |  |  | ARS-REF（AR-17） | https://www.spaceshuttleguide.com/system/environmental%20Controls.htm |
| TH-12 | NASA-CR-151030 | Lightweight Long Life Heat Exchanger（Hamilton Standard、1976年） |  | ● |  |  |  |  | ARS-REF（AR-19） | https://ntrs.nasa.gov/citations/19770003526 |
| TH-13 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） |  | ● |  | ● |  |  | ARS-REF（AR-22） | https://ntrs.nasa.gov/citations/19900001639 |
| TH-14 | NSTS-23370 | STS-27 National Space Transportation System Mission Report（1989年） |  |  | ● | ● |  |  | ARS-REF（AR-23） | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-27%20National%20Space%20Transportation%20System%20Mission%20Report.pdf |
| TH-15 | SAE 921160 | Zero Gravity Phase Separator Technologies – Past, Present and Future（Dean、1992年） |  | ● |  | ● |  |  | ARS-REF（AR-24） | https://saemobilus.sae.org/content/921160/ |
| TH-16 | NASA-CR-195739 | STS-57 Space Shuttle Mission Report（1993年） |  |  | ● | ● |  |  | ARS-REF（AR-26） | https://ntrs.nasa.gov/citations/19940023717 |
| TH-17 | NSTS-37443 | STS-107 Space Shuttle Mission Report（2003年） |  |  | ● |  | ● |  | ARS-REF（AR-28） | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-107%20Space%20Shuttle%20Mission%20Report.pdf |
| TH-18 | NASA/TM-2005-214007 | Designing For Human Presence in Space: An Introduction to ECLSS – Appendix I, Update（Wieland、2005年） |  | ● | ● | ● |  |  | ARS-REF（AR-29） | https://ntrs.nasa.gov/citations/20060005209 |
| TH-19 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） |  |  |  | ● |  |  | ARS-REF（AR-35） | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf |
| TH-20 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） |  | ● | ● | ● |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf |
| TH-21 | USA006019 Rev. A（C&W 21002） | Caution and Warning（2008年） |  |  |  |  | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf |
| TH-22 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） |  |  |  | ● |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf |
| TH-23 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） |  |  | ● | ● |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf |
| TH-24 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） |  |  |  | ● |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf |
| TH-25 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） |  |  | ● |  | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf |
| TH-26 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） |  | ● |  |  |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf |
| TH-27 | NSTS-08302 | STS-35 Space Shuttle Mission Report（1991年） |  |  |  | ● |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf |
| TH-28 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） |  |  |  | ● |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf |

## 5. 注記（出典間の相違・構成変更）

> **注記** TH-02（SCOM）の関連内容に示す頁はUSA007587 Rev. A CPN-1のPDF通し頁で、出典URLの末尾の番号と一致する。TH-04（運用飛行規則）は同じくNSTS-12820 Vol. A PCN-1のPDF通し頁である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/374）

> **注記** TH-20（1979年の飛行運用マニュアル）の露点範囲は、抽出テキストでは「399 F to 619 F」と読めるが、度記号の読み誤りと判断して39〜61°Fとした。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37）

> **注記** 相対湿度の範囲は、TH-02（SCOM）の本文とTH-03では30〜65%、SCOMのキャビン空気系統図（PDF p370）では30〜75%と異なる（SSD-FD-ARS-THC-MON-001の注記を参照）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370）

> **注記** TH-10（STS-54）はSSD-ARS-REF-001のAR-15を引き継ぎ、今回、NTRSのPDFで頁（p18）を確認した。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=18）

## 6. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（28件） |
