# キャビン空気循環（CAC）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ARS-CAC-001 |
| 表題 | キャビン空気循環（CAC）機能説明書 |
| 版・日付 | Rev. C／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-ARS-001 |
| 関連図 | SSD-SYS-ARC-001 図12 ARS 機能構成 |

## 1. 目的

乗員室の空気をキャビンファンで吸い込んでろ過し、CO2除去装置とキャビン熱交換器へ送り、途中で乗員室の電子機器を強制空冷するキャビン空気循環の機能と、監視・運用上の制約を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ARS-CAC-01 | 循環空気は臭気・CO2・デブリ・電子機器の熱を拾い、乗員室容積2,300 ft³と毎分330 ft³の循環量から、約7分で1回、1時間に約8.5回室内空気が入れ替わる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369） |
| F-ARS-CAC-02 | 暖まったキャビン空気は300ミクロンフィルタを通って2台のキャビンファン（A・B）の1台に吸引され、各ファンはパネルL1のCABIN FANスイッチで制御し、通常は1台だけを使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） |
| F-ARS-CAC-03 | 各キャビンファンは三相115 V AC・495 Wの電動機で駆動され、キャビン空気ダクトに公称1,400 lb/hrの流量を生む。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） |
| F-ARS-CAC-04 | 各ファン出口のフラッパ式逆止弁は非運転ファンを通る逆流を防ぎ、2 in H2O（0.0723 psi）の差圧で開く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） |
| F-ARS-CAC-05 | キャビンファンはAC 2相では起動できないが、運転中に1相を失っても2相で運転を続け、同じAC母線の他の回転機器の誘起電圧で2-1/2相となれば起動できるが、短絡で相を失った場合は起動できない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） |
| F-ARS-CAC-06 | キャビンファン差圧はパネルF7の黄色AV BAY/CABIN AIR警報灯の入力の一つで、4.2 in H2O未満または6.8 in H2O超で点灯する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375） |
| F-ARS-CAC-07 | 運用飛行規則A17-101は、ファン差圧が4.20（4.49）in H2O未満または6.80（6.51）in H2O超で、かつ乗員が気流の喪失を確認した場合にキャビンファン喪失とし、4.2 in H2Oで約1,575 lb/hr、適切な冷却に必要な最低流量は1,400 lb/hrとする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1929） |
| F-ARS-CAC-08 | キャビンファンはMECO前には切り替えない（起動電流8.0 Aによる電圧過渡が主エンジン制御器に影響しうるため）（A17-151E）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1939） |
| F-ARS-CAC-09 | キャビンファン差圧トランスデューサを失った場合は、就寝中のファン停止を検知できないため、就寝期間は両キャビンファンを運転する（A17-153B）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1947） |
| F-ARS-CAC-10 | 1相を失ったキャビンファンは、停止すると再起動できない可能性があり、キャビンファン1台の喪失はMDFとなるため、2相のまま運転を続ける（A17-154A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1948） |
| F-ARS-CAC-11 | キャビンファンは還流空気を乗員室の電子機器のそばに通して強制空冷し、対象の機器（CRT、DEU、IDP、CCTVモニタ、RCU/VSUなど）は訓練マニュアル表3-1に示される。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=87） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ARS-01 | CO2・CO除去（LiOH・ATCO） | 推進薬・流体 | 送信 | キャビンファン出口の空気の一部を、ダクト内のオリフィスで約120 lb/hrずつ2個のLiOHキャニスタへ分流し、通過後の空気は主流に戻ってキャビン熱交換器へ向かう。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） | 下位: IF-CO2-01 |
| IF-ARS-02 | 再生式CO2除去装置（RCRS） | 推進薬・流体 | 送信 | RCRS搭載時は、キャビン空気ループから乗員数に応じて72 lb/hrまたは110 lb/hrの空気をRCRSへ通す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371） | 下位: IF-CAC-03 |
| IF-ARS-03 | キャビン温湿度制御 | 推進薬・流体 | 送信 | 暖まったキャビン空気はキャビンファンでキャビン熱交換器へ送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369） | 下位: IF-CAC-13 |
| IF-ARS-09 | 乗員室（制御対象） | 推進薬・流体 | 受信 | 暖まったキャビン空気をキャビン空気ループへ吸い込み、300ミクロンフィルタを通してキャビンファンで送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） | 上位: IF-ECL-05 下位: IF-CAC-01 |
| IF-ARS-13 | エアロック支援系（ALS） | 推進薬・流体 | 送信 | 外部エアロックの空気循環系はEVA以外の期間にエアロックへ調整空気を送り、飛行中はハッチ越しにミッドデッキ床の継手からエアロックのブースタファンまでダクトを張る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/456） | 上位: IF-ECL-27 下位: IF-CAC-14 |
| IF-ARS-14 | 煙検知・消火系（FDS） | 推進薬・流体 | 送信 | A群煙感知器はミッドデッキ床下のキャビンファン・プレナム出口とフライトデッキの左戻り空気ダクトに、B群はフライトデッキの右戻り空気ダクトにある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/118） | 下位: IF-CAC-04 下位: IF-CAC-08 |
| IF-ARS-25 | DPS・アビオニクス | データ・指令 | 送信 | 主C&WのAV BAY/CABIN AIR灯はキャビンファン差圧、Av Bay 1・2・3空気出口温度、キャビン熱交換器空気温度の限界外で点灯し、ハードウェアチャネルはそれぞれ74、84・94・104、114である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/133） | 上位: IF-ECL-29 下位: IF-CAC-12 |
| IF-ARS-32 | 電力系（EPS） | 電力（28 VDC） | 受信 | キャビンファンは三相115 V AC電動機（495 W）で駆動される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） | 上位: IF-ECL-39 下位: IF-CAC-09 |
| IF-ARS-39 | DPS・アビオニクス | 熱 | 送信 | キャビンファンは電子機器のそばを通して空気を吸い込み、乗員室の機器を強制空冷する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=58）強制空冷する機器（CRT、DEU、IDP、CCTVモニタ、RCU/VSUなど）は訓練マニュアル表3-1に示される。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=87） | 上位: IF-ECL-08 下位: IF-CAC-05 |

## 4. 下位文書

| 文書番号 | 表題 |
|---|---|
| [SSD-FD-CAC-RTN-001](SSD-FD-CAC-RTN-001.md) | 還流・ろ過（RTN）機能説明書 |
| [SSD-FD-CAC-FAN-001](SSD-FD-CAC-FAN-001.md) | キャビンファン・逆止弁（FAN）機能説明書 |
| [SSD-FD-CAC-DCT-001](SSD-FD-CAC-DCT-001.md) | 送風ダクト・分配（DCT）機能説明書 |
| [SSD-FD-CAC-MON-001](SSD-FD-CAC-MON-001.md) | ファン差圧監視（MON）機能説明書 |
| [SSD-FD-CAC-OPS-001](SSD-FD-CAC-OPS-001.md) | ファン運用管理（OPS）機能説明書 |

## 5. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| AR-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.2.1節 Cabin Fan：2台のキャビンファン（通常1台、三相115 V AC・495 W、公称1,400 lb/hr）と各ファン出口の逆止弁、2相では起動できないが運転中は継続する特性を解説する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf） |
| AR-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Cabin Air Flow・Cabin Air（PDF p369〜370）：空気系機器はダクトを除きミッドデッキ床下にあり、2,300 ft³を330 cfmで約7分ごとに換気し、300ミクロンフィルタ経由で2台のキャビンファン（三相115 V AC・495 W、公称1,400 lb/hr、通常1台）が吸引すると示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369） |
| AR-03 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | キャビン空気を300ミクロンフィルタ経由で2台のキャビンファンの1台で吸引し、2,300 ft³を330 cfmで約7分ごとに換気すると記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html） |
| AR-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-101 Cabin Fan（PDF p1929）：ファンΔPが4.20（4.49）in H2O未満または6.80（6.51）in H2O超で乗員が気流喪失を確認すれば喪失とし（最低必要流量1,400 lb/hr）、A17-153（p1947）で差圧センサ喪失時の就寝中の両ファン運転、A17-154（p1948）で劣化した回転機器の管理を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1929） |
| AR-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.1a CABIN FAN ΔP（PDF p260）：キャビンファンΔP異常時の処置（逆止弁の開固着の判定、就寝時の両ファン運転、ダクトの漏れ・閉塞の確認）を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf） |
| AR-17 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | キャビンファン（2台のうち1台、三相115 V AC・495 W）が公称1,400 lb/hrでキャビン空気ダクトに空気を流すと記す。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| AR-18 | NASA-CR-134164（SP02T73） | Space Shuttle Atmospheric Revitalization Subsystem/Active Thermal Control Subsystem Computer Program（Users Manual）（Hamilton Standard、1973年） | ARSキャビンガスループのモデル（2.3節）に、ファン入口温度と体積流量によるガス流量の収束計算とキャビンファン上流のアビオニクス発熱ノードを加え、LiOHをキャビン熱交換器と直列の位置に移した。（出典: https://ntrs.nasa.gov/citations/19740006419） |
| AR-22 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | キャビンファン組立（ARS-3061X、C.13-35）の評価ワークシートを示す。（出典: https://ntrs.nasa.gov/citations/19900001639） |
| AR-29 | NASA/TM-2005-214007 | Designing For Human Presence in Space: An Introduction to ECLSS – Appendix I, Update（Wieland、2005年） | 米国宇宙機ECLSSの比較表（表1、p8）のオービタ欄で、換気をキャビンファンと換気ダクトで行うと記す。（出典: https://ntrs.nasa.gov/citations/20060005209） |
| AR-31 | USA006019 Rev. A（C&W 21002） | Caution and Warning（2008年） | 表7-3 ハードウェアC&W表（PDF p97）で、キャビンファンΔPをハードウェアC&Wのチャネル74に割り当てる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf） |
| AR-32 | NTRS 20090043801（JSC-CN-19306） | Noise Control in Space Shuttle Orbiter（Goodman、NOISE-CON 2010） | オービタにはキャビンARS・IMU冷却・3つのアビオニクスベイ冷却の5つの閉ループ送風冷却系があり、1980年のKSCでの試験ではキャビンファンが両デッキの主な騒音源になったと記す。（出典: https://ntrs.nasa.gov/citations/20090043801） |

## 6. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：乗員室容積はSCOM内で一致せず、ECLSS概要（PDF p359）は2,475 ft³、ARSの換気回数の計算（PDF p369）は2,300 ft³とする。本書の換気回数は後者による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/359）

> **注記** 検証メモ：キャビンファン差圧の警報下限はSCOM内で一致せず、ARSの節（PDF p375）は4.2 in H2O、C&W要約（PDF p406）は4.16 in H2Oとする。運用飛行規則A17-101の喪失定義は4.20（4.49）in H2Oである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/406）

> **注記** 検証メモ：SCOM（PDF p370）はキャビンファンの流量1,400 lb/hrを公称流量とするが、運用飛行規則A17-101は同じ値を適切な冷却に必要な最低流量（差圧6.8 in H2O時）とし、4.2 in H2Oでは約1,575 lb/hrとする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1929）

> **注記** Rev. Bで、キャビンファンによる乗員室の電子機器の強制空冷を機能（F-ARS-CAC-11）とIF（IF-ARS-39、上位IF-ECL-08）として追加した（図12では図示省略）。アビオニクスベイ空冷のIF-ARS-17と同じく、IF-ECL-08の下位に位置付けた。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=58）

> **注記** 下位の展開（図16）では、IF-ARS-01の下位を図14のIF-CO2-01のまま用い（同じ物理IF）、IF-ARS-14は煙感知器の位置に応じて還流・ろ過（IF-CAC-04）とキャビンファン（IF-CAC-08）の2つの下位IFに分けた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/118）

## 7. 参考文献

1. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p369） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369
2. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p370） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370
3. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p375） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375
4. Space Shuttle Operational Flight Rules Vol. A – All Flights A17-101 Cabin Fan（NSTS-12820 PCN-1、PDF p1929） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1929
5. Space Shuttle Operational Flight Rules Vol. A – All Flights A17-151 Cabin Atmosphere Control（NSTS-12820 PCN-1、PDF p1939） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1939
6. Space Shuttle Operational Flight Rules Vol. A – All Flights A17-153 Cabin/Avionics Bay Fan Management（NSTS-12820 PCN-1、PDF p1947） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1947
7. Space Shuttle Operational Flight Rules Vol. A – All Flights A17-154 Management of Degraded Rotating Equipment（NSTS-12820 PCN-1、PDF p1948） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1948
8. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p371） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371
9. Shuttle Crew Operations Manual 2.11 Extravehicular Activity（USA007587 Rev. A CPN-1、PDF p456） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/456
10. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p118） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/118
11. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p133） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/133
12. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p359） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/359
13. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p406） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/406
14. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.2.1節 Cabin Fan・図3-1 Cabin air system（PDF p58） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=58
15. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表3-1 Cabin air-cooled equipment cooling matrix（PDF p87） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=87

## 8. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-26 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-28 | IF-ARS-01に下位IF（IF-CO2-01）を付記 |
| Rev. B | 2026-09-28 | 下位機能説明書（5件）と図16・図17への展開を追加し、機器の強制空冷の機能（F-ARS-CAC-11）とIF-ARS-39を追加、IF-ARS-02・03・09・13・14・25・32・39に下位IF（IF-CAC）を付記、注記を追加 |
| Rev. C | 2026-10-01 | IF-ARS-32 の上位を IF-ECL-39 に付け替え、IF-ARS-25 の上位を IF-ECL-29 に付け替え（Rev. M） |
