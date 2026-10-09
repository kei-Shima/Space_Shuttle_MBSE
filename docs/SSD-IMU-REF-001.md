# IMU空冷 機能別関連文書一覧

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-IMU-REF-001 |
| 表題 | IMU空冷 機能別関連文書一覧 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-IMU-001 |
| 関連図 | SSD-SYS-ARC-001 図35 IMU空冷 関連文書マトリクス |

## 1. 目的

IMU空冷（IMU）の各下位機能に関係する公開文書を機能別に整理し、各機能説明書と図35 IMU空冷 関連文書マトリクス（文書×機能マトリクス）の根拠とする。

## 2. 調査方法

SSD-ARS-REF-001の3.7節 IMU空冷（IMU）の11件を引き継ぎ（出典欄「ARS-REF（AR-01）」の形）、今回の調査で3件を追加した（出典欄「新規」）。引き継いだ行も含め、各行の関連内容は下位機能ごとに書き分けた。訓練マニュアル（USA006020）、SCOM、IMUワークブック（USA004488）、運用飛行規則、故障処置手順（MAL）、飛行運用マニュアル（JSC-12770）、IFMチェックリスト、IOA、STS-1の熱解析（JSC-16720）、Goodmanの論文、ミッション報告（STS-2・STS-125）は原本で本文を確認し、関連内容に節とPDFの通し頁を示す。頁を示していない行（NSTS 1988 News Reference ManualとSpace Shuttle GuideのWebページ）は、Webページの本文で内容を確認した。

## 3. 機能別関連文書

### 3.1 IMU空冷 全般（5件）

機能説明書：SSD-FD-ARS-IMU-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| IM-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.1節（PDF p57）：ARSの空気系を3つの独立した循環系に分け、そのうちIMUファンがキャビンから空気を吸い込んでIMUを冷却すると述べる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=57） |
| IM-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p369）：水冷却ループがキャビン熱交換器・IMU熱交換器・アビオニクスベイのコールドプレートと熱交換器から熱を集めると述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369） |
| IM-03 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | 乗員室の5つの独立した空気ループ（キャビン、3つのアビオニクスベイ、IMU）の一つとしてIMUを挙げる。（出典: https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html） |
| IM-09 | USA004488 Rev. B（IMU 21002） | Inertial Measurement Unit Workbook（2006年） | 2.10節 Thermal Controls（PDF p22）：IMUの熱制御は内部ヒータと強制空冷から成り、強制空冷は内部ヒータが働くために必要であると述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/IMU%20Workbook.pdf#page=22） |
| IM-10 | NTRS 20090043801（JSC-CN-19306） | Noise Control in Space Shuttle Orbiter（Goodman、NOISE-CON 2010） | 本文PDF p3：オービタの5つの閉ループ送風冷却系の一つとしてIMU冷却系を挙げる。（出典: https://ntrs.nasa.gov/api/citations/20090043801/downloads/20090043801.pdf#page=3） |

### 3.2 吸込み・IMU通風（INL）（11件）

機能説明書：SSD-FD-ARS-IMU-INL-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| IM-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.2.8節（PDF p66）：IMUファンがキャビン空気をIMUの上に引き込み、IMUの発熱を空気に移すと述べる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=66） |
| IM-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 IMU Cooling（PDF p376）：3台のファンの1台がキャビン空気を300ミクロンフィルタ経由で吸い込み3台のIMUを通すと示し、2.13節（p476〜477）でIMUの熱制御を内部ヒータと強制空冷から成るとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） |
| IM-03 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | 3台のファンの1台がキャビン空気を300ミクロンフィルタ経由で3台のIMUに流すと記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html） |
| IM-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.1d CABIN IMU（PDF p265）：吸込みスクリーンの閉塞を点検し、デブリトラップの目詰まりならIFMでIMUフィルタだけを清掃すると示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=265） |
| IM-06 | JSC-16720 | STS-1 ECLSS Consumables and Thermal Analysis | 3.3節（PDF p11）でIMUを通る空気流量を156 lb/hr（14.7 psia）とし、表VI（p20）でIMU冷却空気の入口温度の解析値79.6°Fを仕様上限95°Fと比べる。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=11） |
| IM-09 | USA004488 Rev. B（IMU 21002） | Inertial Measurement Unit Workbook（2006年） | 2.10節（PDF p22）：ファンがキャビン空気を各IMUの筐体に通すと述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/IMU%20Workbook.pdf#page=22） |
| IM-10 | NTRS 20090043801（JSC-CN-19306） | Noise Control in Space Shuttle Orbiter（Goodman、NOISE-CON 2010） | 本文PDF p4：当初最大の騒音源だったIMU冷却系にGFEの消音器（入口3・出口1）を追加したと記す。（出典: https://ntrs.nasa.gov/api/citations/20090043801/downloads/20090043801.pdf#page=4） |
| IM-11 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | PDF p50：IMUファンΔPの上昇に対し、乗員が3枚のIMUフィルタを点検・清掃したと記す（IFA STS-125-V-13）。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=50） |
| IM-12 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.2.2節（PDF p37）：IMUをキャビンから300ミクロンフィルタを通して吸い込んだ空気で冷やし、ファンのすぐ上流にファン保護用の600ミクロンフィルタを置くと示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37） |
| IM-13 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | 4-5 MIDDECK (OVERHEAD)（PDF p101）：IMU #1・2・3のフィルタ・スクリーンがミッドデッキ天井のパネルMO42F・MO58Fの上前方にあると示し、I-3（p175）でIMU出口ホース3本をIMUマニホールドから外す手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=101） |
| IM-14 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.5.5節 Noise Level Survey（PDF p53）：ミッドデッキのIMU吸込口で68 dBを計測したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=53） |

### 3.3 IMUファン・逆止弁（FAN）（11件）

機能説明書：SSD-FD-ARS-IMU-FAN-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| IM-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.2.8節（PDF p66）と表3-6（p90〜91）：3台のファン（通常1台、三相115 V AC・50 W、公称144 lb/hr、2相で起動・運転可）と出口のフラッパ式逆止弁（1 psiで開く）を解説し、L1のIMU FANスイッチとL4の遮断器（A＝AC1、B＝AC2、C＝AC3）を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=66） |
| IM-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p376）：ファンはAv Bay 1にあってL1のIMU FANスイッチで入切し、1台で3台のIMUを冷却でき、各ファン出口の逆止弁が非運転ファンの逆流を防ぐと示し、2.13節（p477）で3台を冗長のために設けるとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） |
| IM-03 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | L1のIMU FAN A・B・Cスイッチで各ファンを入切し、通常は1台で足り、各ファン出口の逆止弁が非運転ファンの逆流を防ぐと記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html） |
| IM-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-154A（PDF p1948〜1949）：キャビンファン以外の回転機器は1相を失えば代替機に切り替え、2相で再起動できると定め、根拠資料にIMUファンの仕様（SV 6416）を挙げる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1948） |
| IM-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.1d（PDF p264〜266）：公称構成（L4の遮断器AC1・AC2・AC3 IMU FAN A・B・C、ファンBを運転）と、逆止弁の開固着やファンのON離散信号の故障の切り分けを示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=264） |
| IM-07 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | 訓練マニュアルの抜粋として、IMUファン（三相115 V AC・50 W）が公称144 lb/hrを流し、2相で起動・運転でき、出口の逆止弁が逆流を防ぐと記す。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| IM-08 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | ARS-277（C.13-18、PDF p120）：非運転ファン2台の逆止弁が故障するとIMU熱交換器を迂回する循環ループができるとして、NASAの臨界度に同意し指摘を取り下げたと記す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=120） |
| IM-09 | USA004488 Rev. B（IMU 21002） | Inertial Measurement Unit Workbook（2006年） | 2.10節（PDF p22）：3台のファンが3台のIMUすべてに供し、1台で十分な流量が得られ、各ファンは別々の交流電源から給電され、スイッチはL1、遮断器はL4にあると述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/IMU%20Workbook.pdf#page=22） |
| IM-10 | NTRS 20090043801（JSC-CN-19306） | Noise Control in Space Shuttle Orbiter（Goodman、NOISE-CON 2010） | 本文PDF p6：消音器の追加でIMUファンの2,000 Hz付近の騒音が下がり、後に4個の消音器を4室の一体型消音器に改めたと記す。（出典: https://ntrs.nasa.gov/api/citations/20090043801/downloads/20090043801.pdf#page=6） |
| IM-12 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.2.2節（PDF p37）と2.2.3節（p40）：3台のIMUファンは並列で、どの1台でも必要な流量が得られ、L1のIMU FANスイッチで1台ずつ使うと示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=40） |
| IM-13 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | 3-4 AV BAY 1（PDF p90）：アビオニクスベイ1の配置図にIMUファンのダクトを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=90） |

### 3.4 IMU熱交換器・ダクト（HEX）（10件）

機能説明書：SSD-FD-ARS-IMU-HEX-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| IM-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.2.8節（PDF p66）と3.3節（p67・p69）：暖まった空気をIMU熱交換器で水冷却ループへ排熱してキャビンへ戻すと述べ、インターチェンジャで冷えた水がIMU熱交換器を流れる順序と、インターチェンジャの能力を超えたときの冷却能力の低下を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=67） |
| IM-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p376・p379）：ファン出口空気がフライトデッキのIMU熱交換器で水冷却ループにより冷やされて乗員室へ戻ると示し、冷えた水がキャビン熱交換器とIMU熱交換器を流れるとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/379） |
| IM-03 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | ファン出口空気がIMU熱交換器で水冷却ループにより冷やされて乗員室へ戻ると述べ、IMU熱交換器をミッドデッキ床下にある機器の一つに挙げる。（出典: https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html） |
| IM-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-104A（PDF p1933）：ΔP 3.7 in H2O（約185 lb/hr）が健全な系でファンが出せる最大の流量であり、それより低いΔPは漏れが疑わしい系で生じると説明する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1933） |
| IM-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.1d（PDF p265〜266）：ΔPが低いときはIMUのダクトの漏れを点検してパッチキットのアルミテープで補修し、空気ダクトの閉塞ではIFMのIMU緊急冷却で冷却を回復すると示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=266） |
| IM-06 | JSC-16720 | STS-1 ECLSS Consumables and Thermal Analysis | 表VI（PDF p20）：IMU冷却空気の出口温度の解析値108.2°Fを仕様上限130°Fと比べる。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=20） |
| IM-07 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | 暖まった空気をIMU熱交換器で水冷却ループへ排熱してキャビンへ戻すと記す。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| IM-08 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | ARS-221・ARS-2211X・ARS-4027X（C.13-14・C.13-30・C.13-39、PDF p116・p132・p141）：IMU熱交換器とダクトの流れの制限を臨界度2/2（ダクトを切ってキャビン空気を直接循環させれば冷却を回復できる）とし、熱交換器と前後のダクトの外部漏れの指摘を取り下げたと記す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=116） |
| IM-09 | USA004488 Rev. B（IMU 21002） | Inertial Measurement Unit Workbook（2006年） | 2.10節（PDF p22）：空気は熱交換器で冷やされてキャビンへ戻ると述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/IMU%20Workbook.pdf#page=22） |
| IM-12 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.2.2節（PDF p37）：空気は乗員室へ戻る前にIMU熱交換器で冷やされると示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37） |

### 3.5 ファン監視・表示（MON）（7件）

機能説明書：SSD-FD-ARS-IMU-MON-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| IM-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.5節（PDF p74）と表3-6（p92〜93）：IMU FAN信号調整器（AC3 B相）が回転数センサに、H2O BYP LOOP 1 SNSR（MNA、パネルO14）がΔPセンサに給電すると述べ、図3-16・図3-19（p78・p81）でSM SYS SUMM 1とSPEC 66の表示を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） |
| IM-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p359）：BFSのSM SYS SUMM 1（DISP 78）の表示例にIMU FAN DPを示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/359） |
| IM-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-104（PDF p1933）：ΔPの計測精度をフルスケール7 in H2Oの±3.4%（0.238 in H2O）とし、選択時の回転数表示の正常範囲を10,000±240〜12,720±700 rpmとする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1933） |
| IM-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.1d（PDF p264）：SMメッセージ「S66 IMU FAN DP」「S66 IMU FN SPD A(B,C)」「SM1 CABIN IMU」で処置に入ると示し、COMM SSR-10（p87）とEPS SSR-130（p636）でΔP・回転数センサを失う場合を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=264） |
| IM-07 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | IMU FAN信号調整器が回転数センサに、H2O BYP LOOP 1 SNSR信号調整器がIMUファンΔPセンサに給電すると記す。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| IM-09 | USA004488 Rev. B（IMU 21002） | Inertial Measurement Unit Workbook（2006年） | 2.10節（PDF p25）と2.13.4節（p33）：DISP 66とPASS・BFSのDISP 78に運転中のファン（*）と状態（空白＝正常、M＝データなし、↓＝回転数低下）を示すと述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/IMU%20Workbook.pdf#page=25） |
| IM-11 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | 付録B（PDF p87）：計測値が0.224 in H2O高くずれていた（許容の3.4%以内）ために飛行規則の限界を超えたとして、説明のついた事象として閉じたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=87） |

### 3.6 ファン運用管理（OPS）（8件）

機能説明書：SSD-FD-ARS-IMU-OPS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| IM-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.6.1節（PDF p85）：搭乗時にIMUファン1台が運転済みで、上昇中はAC母線間の短絡を防ぐためIMU FAN信号調整器を断電する（STS-6で配線束が短絡）と述べる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=85） |
| IM-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Operations（PDF p404）：搭乗時にIMUファン1台が運転済みで、上昇中は信号調整器を断電すると述べ、2.17節（p634）でIMUファン3台の喪失を、ペイロードベイドアを開けずに初日のPLSへ軌道離脱する故障に挙げる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/404） |
| IM-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-104（PDF p1933）でファン喪失の定義を、A18-501（p2127）・A13-155（p1807）・A17-53C（p1924）で停止時間の上限・有害物質の漏れのときの停止・火災後の運転継続を、A17-1001（p2032〜2034）とA2-1001（p802）でGo/No-Goを定め、A9-154（p1468）でMECO前は再構成を要しないとする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1933） |
| IM-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.1d（PDF p264）：ΔP 3.7未満・4.95超（10.2 psi運用では3.0未満・3.8超）でファンを切り替え、IMUファンが止まったままIMUを30分を超えて運転しないよう警告し、ECLS SSR-12（p353）とGNC SSR-1（p680）でアビオニクスベイ火災後とIMU起動時のIMUファンの操作を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=264） |
| IM-07 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | 搭乗時にIMUファン1台が運転済みで、上昇中はIMU FAN信号調整器を断電すると記す。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| IM-09 | USA004488 Rev. B（IMU 21002） | Inertial Measurement Unit Workbook（2006年） | 4.5節（PDF p54）：ファンは3重の冗長で、故障時は他の2台のどちらかを起動できるため、ファンの故障は内部ヒータの故障ほど重大ではないとする。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/IMU%20Workbook.pdf#page=54） |
| IM-11 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | PDF p50：ファンBからA、さらにCへ切り替え、ファンC単独の運転でΔPが下がり、以後の飛行でファンCを使ったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=50） |
| IM-13 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | I-1 IMU CONTINGENCY COOLING（PDF p173）：3台のIMUファンがすべて故障したときに限り、掃除機をIMUファンの代わりに使って周囲空気でIMUを冷やす手順（所要1時間）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=173） |

## 4. 文書×機能マトリクス（全件）

| ID | 文書番号 | 表題 | 全般 | INL | FAN | HEX | MON | OPS | 出典 | URL |
|---|---|---|---|---|---|---|---|---|---|---|
| IM-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | ● | ● | ● | ● | ● | ● | ARS-REF（AR-01） | https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf |
| IM-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | ● | ● | ● | ● | ● | ● | ARS-REF（AR-02） | https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual |
| IM-03 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | ● | ● | ● | ● |  |  | ARS-REF（AR-03） | https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html |
| IM-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights |  |  | ● | ● | ● | ● | ARS-REF（AR-04） | https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf |
| IM-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） |  | ● | ● | ● | ● | ● | ARS-REF（AR-05） | https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf |
| IM-06 | JSC-16720 | STS-1 ECLSS Consumables and Thermal Analysis |  | ● |  | ● |  |  | ARS-REF（AR-08） | https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf |
| IM-07 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） |  |  | ● | ● | ● | ● | ARS-REF（AR-17） | https://www.spaceshuttleguide.com/system/environmental%20Controls.htm |
| IM-08 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） |  |  | ● | ● |  |  | ARS-REF（AR-22） | https://ntrs.nasa.gov/citations/19900001639 |
| IM-09 | USA004488 Rev. B（IMU 21002） | Inertial Measurement Unit Workbook（2006年） | ● | ● | ● | ● | ● | ● | ARS-REF（AR-30） | https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/IMU%20Workbook.pdf |
| IM-10 | NTRS 20090043801（JSC-CN-19306） | Noise Control in Space Shuttle Orbiter（Goodman、NOISE-CON 2010） | ● | ● | ● |  |  |  | ARS-REF（AR-32） | https://ntrs.nasa.gov/citations/20090043801 |
| IM-11 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） |  | ● |  |  | ● | ● | ARS-REF（AR-35） | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf |
| IM-12 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） |  | ● | ● | ● |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf |
| IM-13 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） |  | ● | ● |  |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf |
| IM-14 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） |  | ● |  |  |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf |

## 5. 注記（出典間の相違・構成変更）

> **注記** IM-02（SCOM）の関連内容に示す頁はUSA007587 Rev. A CPN-1のPDF通し頁で、出典URLの末尾の番号と一致する。IM-04（運用飛行規則）は同じくNSTS-12820 Vol. A PCN-1のPDF通し頁である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376）

> **注記** IM-08（IOA）とIM-10（Goodmanの論文）の行のURLはSSD-ARS-REF-001と同じNTRSの書誌ページとし、関連内容に示す頁はNTRSで公開されている本文PDFの通し頁である。下位機能説明書の出典には本文PDFの頁付きURLを用いた。（出典: https://ntrs.nasa.gov/api/citations/20090043801/downloads/20090043801.pdf#page=4）

> **注記** IM-06（JSC-16720）はマイクロフィッシュからの複製で抽出テキストに誤読があるため、読み取れた値（IMUを通る空気流量156 lb/hr、表VIの入口・出口温度の仕様上限と解析値）だけを記した。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=20）

> **注記** IMUファンΔPの喪失の限界は、IM-04（A17-104）が3.70（3.94）・4.95（4.71）in H2O、IM-05（MAL 6.1d）が3.7・4.95 in H2O（10.2 psi運用では3.0・3.8）とし、IM-11（STS-125）は4.71を「psi」と記す（SSD-FD-ARS-IMU-MON-001の検証メモを参照）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1933）

> **注記** IM-07（Space Shuttle Guide）のURL（www付き）は今回も証明書の不一致で開けなかったため、wwwを付けない同じページで内容を確認した（SSD-ARS-REF-001の注記と同じ）。URLはSSD-ARS-REF-001の値のままとした。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm）

> **注記** IMU熱交換器の位置は、IM-02（SCOM）がフライトデッキ、IM-03（News Reference Manual）がミッドデッキ床下とする（SSD-FD-ARS-IMU-HEX-001の検証メモを参照）。（出典: https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html）

## 6. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（14件） |
