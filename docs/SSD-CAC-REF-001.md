# キャビン空気循環 機能別関連文書一覧

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-CAC-REF-001 |
| 表題 | キャビン空気循環 機能別関連文書一覧 |
| 版・日付 | 初版（Rev. -）／2026-09-28 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-CAC-001 |
| 関連図 | SSD-SYS-ARC-001 図17 キャビン空気循環 関連文書マトリクス |

## 1. 目的

キャビン空気循環（CAC）の各下位機能に関係する公開文書を機能別に整理し、各機能説明書と図17 キャビン空気循環 関連文書マトリクス（文書×機能マトリクス）の根拠とする。

## 2. 調査方法

SSD-ARS-REF-001の3.2節 キャビン空気循環（CAC）の11件を引き継ぎ（出典欄「ARS-REF（AR-01）」の形）、今回の調査で7件を追加した（出典欄「新規」）。引き継いだ行も含め、各行の関連内容は下位機能ごとに書き分けた。訓練マニュアル（USA006020・USA006019）、SCOM、運用飛行規則、故障処置手順（MAL）、飛行運用マニュアル（JSC-12770）、IFMチェックリスト、SODB、IOA、ミッション報告は原本で本文を確認し、関連内容に節とPDFの通し頁を示す。

## 3. 機能別関連文書

### 3.1 キャビン空気循環 全般（6件）

機能説明書：SSD-FD-ARS-CAC-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| CA-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.2節 Cabin Air（PDF p57）と図3-1（p58）：キャビンファンが空気をフィルタでろ過してLiOHキャニスタとキャビン熱交換器へ送る流れと、還流口・ファン・逆止弁・オリフィス・吹出口の配置を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=57） |
| CA-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Cabin Air Flow（PDF p369）：空気系の機器はダクトを除きミッドデッキ床下にあり、2,300 ft³を330 cfmで約7分ごとに換気し、ARSがキャビンのアビオニクスも冷却すると示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369） |
| CA-03 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | キャビン空気を300ミクロンフィルタ経由で2台のキャビンファンの1台で吸引し、2,300 ft³を330 cfmで約7分ごとに換気すると記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html） |
| CA-06 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | 訓練マニュアルの抜粋として、キャビン空気の循環を解説する。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| CA-09 | NASA/TM-2005-214007 | Designing For Human Presence in Space: An Introduction to ECLSS – Appendix I, Update（Wieland、2005年） | 米国宇宙機ECLSSの比較表（表1、p8）のオービタ欄で、換気をキャビンファンと換気ダクトで行うと記す。（出典: https://ntrs.nasa.gov/citations/20060005209） |
| CA-11 | NTRS 20090043801（JSC-CN-19306） | Noise Control in Space Shuttle Orbiter（Goodman、NOISE-CON 2010） | オービタの5つの閉ループ送風冷却系の一つとしてキャビンARSを挙げる。（出典: https://ntrs.nasa.gov/citations/20090043801） |

### 3.2 還流・ろ過（RTN）（12件）

機能説明書：SSD-FD-CAC-RTN-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| CA-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.2.1節（PDF p58）：ファンが電子機器のそばを通して空気を吸い込み強制空冷すると述べ、表3-1（p87）に対象機器を、付録C.2.1（p213）にRCRSがファン上流から吸い込みフィルタ上流へ戻すことを示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=58） |
| CA-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Cabin Air（PDF p370）：キャビン空気が300ミクロンフィルタを通ってファンに吸い込まれると述べ、系統図に吸気ダクト・デブリトラップ・フライトデッキのアビオニクスからの空気を示す。2.3節（p142）はRCU・VSUがキャビンファンで強制空冷されるとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） |
| CA-03 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | キャビン空気が300ミクロンフィルタを通って吸引されると記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html） |
| CA-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-2B（PDF p1917）：両ファンが故障して空気が循環しないと乗員室の煙検知を喪失とみなすと定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1917） |
| CA-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.1a CABIN FAN ∆P（PDF p260）：デブリトラップの閉塞確認と、IFMによるキャビンファンのフィルタ清掃を処置に含める。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=260） |
| CA-07 | NASA-CR-134164（SP02T73） | Space Shuttle Atmospheric Revitalization Subsystem/Active Thermal Control Subsystem Computer Program（Users Manual）（Hamilton Standard、1973年） | ARSキャビンガスループのモデル（2.3節）に、キャビンファン上流のアビオニクス発熱ノードを加えたと記す。（出典: https://ntrs.nasa.gov/citations/19740006419） |
| CA-08 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | ARS-3604X（C.13-37、PDF p139）：還流ダクトの流れの制限を、気流中の部品の目詰まりと同じ影響として扱い、指摘を取り下げたと記す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=139） |
| CA-10 | USA006019 Rev. A（C&W 21002） | Caution and Warning（2008年） | 3.3.2.1節（PDF p23）：A群の煙感知器をキャビンファン出口とフライトデッキの左還流ダクトに、B群を右還流ダクトに置くと示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=23） |
| CA-12 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.2.2節（PDF p35）：循環空気がミッドデッキとフライトデッキの還流ダクトからフィルタへ引き込まれ、糸くずや毛髪が除かれると示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=35） |
| CA-14 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | 4-2・4-11 Filter Cleaning（PDF p98・p107）：MCCの指示によるフィルタ清掃と、MD79Gからのキャビンファンのフィルタ（3枚）の清掃手順を示し、3-8（p94）でデブリトラップと還流ダクトの位置を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=107） |
| CA-15 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | 3.4.6.5節（PDF p225）：煙検知が働くには、各区画でファンとキャビンファンによる空気の循環が必要とする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=225） |
| CA-16 | JSC-19278 | STS-8 National Space Transportation Systems Program Mission Report（1983年） | PDF p14：浮遊デブリが増え、キャビンファンのフィルタを3回清掃して毎回青灰色の物質が捕集されたが、ろ過能力は保たれていたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf#page=14） |

### 3.3 キャビンファン・逆止弁（FAN）（11件）

機能説明書：SSD-FD-CAC-FAN-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| CA-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.2.1節（PDF p58）と表3-6（p90〜92）：2台のファン（三相115 V AC・495 W、公称1,400 lb/hr）と逆止弁、2相・2-1/2相での起動を解説し、L1スイッチとL4遮断器（A＝AC3、B＝AC2）を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92） |
| CA-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Cabin Air（PDF p370）：ファンA・BをL1のCABIN FANスイッチで制御して通常1台を使い、各ファン出口の逆止弁が2 in H2O（0.0723 psi）で開くと示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） |
| CA-03 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | 2台のキャビンファンのうち1台で空気を吸引すると記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html） |
| CA-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-154A（PDF p1948）：2相で起動したキャビンファンがファンの3 A遮断器を作動させた試験結果を記す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1948） |
| CA-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | EPS 7.5b（PDF p417・p421）：AC2（AC3）の母線故障でファンB（A）が残る2相で起動できない場合があり、起動には3個の遮断器をすべて閉じる必要があると示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=421） |
| CA-06 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | キャビンファン（2台のうち1台、三相115 V AC・495 W）が公称1,400 lb/hrでキャビン空気ダクトに空気を流すと記す。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| CA-07 | NASA-CR-134164（SP02T73） | Space Shuttle Atmospheric Revitalization Subsystem/Active Thermal Control Subsystem Computer Program（Users Manual）（Hamilton Standard、1973年） | ファン入口温度と体積流量によるガス流量の収束計算をモデルに加えたと記す。（出典: https://ntrs.nasa.gov/citations/19740006419） |
| CA-08 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | ARS-3061X（C.13-35、PDF p137）：キャビンファン組立の外部漏れ（NASA臨界度2/2）で最初に現れるのは冷却の低下であるとして、指摘を取り下げたと記す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=137） |
| CA-11 | NTRS 20090043801（JSC-CN-19306） | Noise Control in Space Shuttle Orbiter（Goodman、NOISE-CON 2010） | 1980年のKSCでの試験で、キャビンファンが両デッキの主な騒音源になったと記す。（出典: https://ntrs.nasa.gov/citations/20090043801） |
| CA-12 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.2.2節（PDF p35）：ファン2台（1台ずつ使用、各1,400 lb/hr、11,200 rpm、差圧0.1〜0.3 psid）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=35） |
| CA-14 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | 3-8 Lower Equipment Bay（PDF p94）：キャビンファンとMD79Gのフィルタ点検口の位置を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=94） |

### 3.4 送風ダクト・分配（DCT）（8件）

機能説明書：SSD-FD-CAC-DCT-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| CA-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.2節（PDF p57）と6.4節（p178）：主流がキャビン温度制御弁で熱交換器とバイパスに分かれると述べ、エアロックのブースタファン・ダクトとの接続をミッドデッキ床の継手とする。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=178） |
| CA-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p370）と2.11節（p456）：ファンを出た約1,400 lb/hrのうちオリフィスで各約120 lb/hrをLiOHキャニスタへ流すと述べ、乗員が床の継手からハッチ越しにエアロックのブースタファンへダクトを張ると示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/456） |
| CA-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-151B（PDF p1938）：8 psiでの再突入でLiOHキャニスタを外すと、ファン1台の流量が820 lb/hrから870 lb/hrに増えると示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1938） |
| CA-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.1a（PDF p260）：ダクトの漏れ・閉塞を、すべての吸込口と吹出口の気流で確かめる注記を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=260） |
| CA-08 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | ARS-3601X（C.13-36、PDF p138）：還流・供給ダクトの外部漏れをダクト自体では起こりにくい故障として扱い、指摘を取り下げたと記す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=138） |
| CA-09 | NASA/TM-2005-214007 | Designing For Human Presence in Space: An Introduction to ECLSS – Appendix I, Update（Wieland、2005年） | 比較表（表1、p8）のオービタ欄で、換気ダクトによる換気を記す。（出典: https://ntrs.nasa.gov/citations/20060005209） |
| CA-12 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.2.4節（PDF p58）：キャビンの公称の気流速度（25 ft/min）とキャビン空気流量（約1,400 lb/hr）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=58） |
| CA-14 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | 4-4（PDF p100）：Spacehab・ドッキング飛行で使うARSホースのスクリーンの位置を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=100） |

### 3.5 ファン差圧監視（MON）（9件）

機能説明書：SSD-FD-CAC-MON-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| CA-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.5節（PDF p74〜83）：CABIN AIR信号調整器が差圧トランスデューサに給電し、差圧をSM表示に示し、C&W表でV61R2556Aの限界を2.8〜7.04 in H2Oとすると述べ、図3-12（p75）に計測点を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） |
| CA-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.2節（PDF p116・p133）：ハードウェアC&Wのチャネル74をキャビンファンΔPとしてAV BAY/CABIN AIR灯の条件を示し、2.9節（p375）で差圧4.2 in H2O未満または6.8 in H2O超で点灯するとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/133） |
| CA-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-101（PDF p1929）：差圧の計測精度をフルスケール8 in H2Oの±3.6%とする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1929） |
| CA-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.1a（PDF p260）：差圧4.2未満・6.8超（10.2 psi運用では2.8未満・4.88超）で処置に入ると示し、COMM SSR-10（p87）とEPS SSR-110（p612）で差圧センサを失ったときの監視を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=87） |
| CA-10 | USA006019 Rev. A（C&W 21002） | Caution and Warning（2008年） | 表7-3 ハードウェアC&W表（PDF p97）で、キャビンファンΔPをハードウェアC&Wのチャネル74に割り当てる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97） |
| CA-12 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.2.3節（PDF p42）：C&Wの限界として、ファンΔP（V61R2556A）を0.1〜0.3 psidとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=42） |
| CA-13 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） | 3.26節 表3.26-5（PDF p659）：AV BAY/CABIN灯の条件の一つを、キャビンファンΔPが0.1 psid未満または0.3 psid超とする。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=659） |
| CA-17 | NSTS-08291 | STS-59 Space Shuttle Mission Report（1994年） | PDF p22：キャビンファンΔPが前回のOV-105の飛行（STS-61）より低く、乗員室内のペイロードへの追加冷却によるものとしたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-59%20Space%20Shuttle%20Mission%20Report.pdf#page=22） |
| CA-18 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | PDF p52：テープ覆いを外し忘れたLiOHキャニスタの装着後、ファン起動後の差圧がわずかに高くなったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=52） |

### 3.6 ファン運用管理（OPS）（7件）

機能説明書：SSD-FD-CAC-OPS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| CA-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 付録B.5 CABIN FAN FAIL（PDF p205）：MECO前のファン切替で主エンジン制御器2台を失うおそれがあると警告し、軌道上では気流を確かめてファンの停止を判定するとする。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=205） |
| CA-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Operations（PDF p404）：打上げ時はキャビンファン1台が運転済みであると述べ、LiOH・活性炭キャニスタの交換では運転中のファンを止めるとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/404） |
| CA-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-101・151E・153B・154A（PDF p1929〜1948）：喪失の定義、MECO前の切替禁止、差圧センサ喪失時の就寝中の両ファン運転、2相運転の継続を定め、A9-156C（p1472）・A18-501（p2127）・A17-53B（p1923）で2相起動の実証、最大停止時間、火災時の停止を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1929） |
| CA-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.1aとEPS SSR-7・SSR-200（PDF p260・p453・p653）：予備ファンへの切替と故障の切り分け、2相起動の手順（停止20分以内）、交流電力移送ケーブルでの給電の制約を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=453） |
| CA-10 | USA006019 Rev. A（C&W 21002） | Caution and Warning（2008年） | 3.3.3節（PDF p37）：Halonはキャビンファンを止めたときだけ有効で、キャビン火災の手順はファンの停止を最大20分とすると述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=37） |
| CA-14 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | A-5 AC PWR TRANSFER CABLE INSTALLATION（PDF p115）：交流電力移送ケーブルで母線を再給電する手順（1相3 Aまで）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=115） |
| CA-15 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | 3.4.6.1節（PDF p215）：キャビンファンの起動・停止の前後少なくとも5分は水分離器を運転するとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=215） |

## 4. 文書×機能マトリクス（全件）

| ID | 文書番号 | 表題 | 全般 | RTN | FAN | DCT | MON | OPS | 出典 | URL |
|---|---|---|---|---|---|---|---|---|---|---|
| CA-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | ● | ● | ● | ● | ● | ● | ARS-REF（AR-01） | https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf |
| CA-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | ● | ● | ● | ● | ● | ● | ARS-REF（AR-02） | https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual |
| CA-03 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | ● | ● | ● |  |  |  | ARS-REF（AR-03） | https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html |
| CA-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights |  | ● | ● | ● | ● | ● | ARS-REF（AR-04） | https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf |
| CA-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） |  | ● | ● | ● | ● | ● | ARS-REF（AR-05） | https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf |
| CA-06 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | ● |  | ● |  |  |  | ARS-REF（AR-17） | https://www.spaceshuttleguide.com/system/environmental%20Controls.htm |
| CA-07 | NASA-CR-134164（SP02T73） | Space Shuttle Atmospheric Revitalization Subsystem/Active Thermal Control Subsystem Computer Program（Users Manual）（Hamilton Standard、1973年） |  | ● | ● |  |  |  | ARS-REF（AR-18） | https://ntrs.nasa.gov/citations/19740006419 |
| CA-08 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） |  | ● | ● | ● |  |  | ARS-REF（AR-22） | https://ntrs.nasa.gov/citations/19900001639 |
| CA-09 | NASA/TM-2005-214007 | Designing For Human Presence in Space: An Introduction to ECLSS – Appendix I, Update（Wieland、2005年） | ● |  |  | ● |  |  | ARS-REF（AR-29） | https://ntrs.nasa.gov/citations/20060005209 |
| CA-10 | USA006019 Rev. A（C&W 21002） | Caution and Warning（2008年） |  | ● |  |  | ● | ● | ARS-REF（AR-31） | https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf |
| CA-11 | NTRS 20090043801（JSC-CN-19306） | Noise Control in Space Shuttle Orbiter（Goodman、NOISE-CON 2010） | ● |  | ● |  |  |  | ARS-REF（AR-32） | https://ntrs.nasa.gov/citations/20090043801 |
| CA-12 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） |  | ● | ● | ● | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf |
| CA-13 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） |  |  |  |  | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf |
| CA-14 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） |  | ● | ● | ● |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf |
| CA-15 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） |  | ● |  |  |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf |
| CA-16 | JSC-19278 | STS-8 National Space Transportation Systems Program Mission Report（1983年） |  | ● |  |  |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf |
| CA-17 | NSTS-08291 | STS-59 Space Shuttle Mission Report（1994年） |  |  |  |  | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-59%20Space%20Shuttle%20Mission%20Report.pdf |
| CA-18 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） |  |  |  |  | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf |

## 5. 注記（出典間の相違・構成変更）

> **注記** CA-02（SCOM）の関連内容に示す頁はUSA007587 Rev. A CPN-1のPDF通し頁で、出典URLの末尾の番号と一致する。CA-04（運用飛行規則）は同じくNSTS-12820 Vol. A PCN-1のPDF通し頁である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370）

> **注記** CA-12（1979年の飛行運用マニュアル）のPDF p58は表の数値の抽出テキストが一部読み取れないため、読み取れた値（公称の気流速度25 ft/min、キャビン空気流量約1,400 lb/hr）だけを記した。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=58）

> **注記** キャビンファン差圧の警報限界は、CA-01（訓練マニュアル）・CA-02（SCOM）・CA-05（MAL）・CA-12・CA-13（飛行運用マニュアル）で値と単位が異なる（SSD-FD-CAC-MON-001の注記を参照）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=83）

## 6. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-28 | 初版作成（18件） |
