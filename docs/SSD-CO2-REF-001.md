# CO2・CO除去 機能別関連文書一覧

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-CO2-REF-001 |
| 表題 | CO2・CO除去 機能別関連文書一覧 |
| 版・日付 | 初版（Rev. -）／2026-09-28 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-CO2-001 |
| 関連図 | SSD-SYS-ARC-001 図15 CO2・CO除去 関連文書マトリクス |

## 1. 目的

CO2・CO除去（LiOH・ATCO）の各下位機能に関係する公開文書を機能別に整理し、各機能説明書と図15 CO2・CO除去 関連文書マトリクス（文書×機能マトリクス）の根拠とする。

## 2. 調査方法

SSD-ARS-REF-001の3.3節 CO2・CO除去（CO2）の17件を引き継ぎ（出典欄「ARS-REF（AR-01）」の形）、今回の調査で21件を追加した（出典欄「新規」）。引き継いだ行も含め、各行の関連内容は下位機能ごとに書き分けた。訓練マニュアル（USA006020）、SCOM、運用飛行規則、故障処置手順（MAL）、飛行運用マニュアル（JSC-12770）、IFM・Orbit Opsチェックリスト、SODB、IOA、ミッション報告は原本で本文を確認し、関連内容に節とPDFの通し頁を示す。

## 3. 機能別関連文書

### 3.1 CO2・CO除去 全般（7件）

機能説明書：SSD-FD-ARS-CO2-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| CR-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.2節 Cabin Air（PDF p57）：キャビンファンが空気の一部をLiOHキャニスタに通してCO2と臭気を除き、ATCOがCOを除くと述べ、図3-1にキャニスタ2個・オリフィス・ATCOの配置を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=57） |
| CR-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p370・p376）：LiOHキャニスタをオービタのCO2制御の主手段とし、熱交換器出口空気の一部をATCOへ送ってCOをCO2に変えると示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） |
| CR-03 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | 2個のLiOHキャニスタでCO2を、活性炭で臭気・微量汚染物を除き、熱交換器出口空気の一部をCO除去装置へ送ると記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html） |
| CR-06 | NASA CR-1981 | Space Shuttle EC/LSS（Hamilton Standard、1972年） | 選定系統（表1、p5）でCO2制御にLiOHベッド、臭気・微量汚染物に活性炭ベッドを採用したと述べる。（出典: https://ntrs.nasa.gov/api/citations/19720017476/downloads/19720017476.pdf） |
| CR-10 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | 訓練マニュアルの抜粋として、LiOHキャニスタによるCO2と臭気の除去と、ATCOによるCOの除去を記す。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| CR-14 | NASA/TM-2005-214007 | Designing For Human Presence in Space: An Introduction to ECLSS – Appendix I, Update（Wieland、2005年） | 表1（p5〜6）のオービタ欄で、LiOHキャニスタによるCO2除去、活性炭による微量汚染物の除去、ATCOによるCOの酸化をまとめる。（出典: https://ntrs.nasa.gov/citations/20060005209） |
| CR-17 | NTRS 20110003653（JSC-CN-22727） | Manned Mission Planning Considerations when Using a Non-Regenerable CO2 Removal System（DeSimpelaere、2011年） | シャトルの主なCO2除去手段であるLiOHキャニスタ方式について、再生式でなく選ばれた理由をまとめる（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/20110003653） |

### 3.2 吸収器装着部（ABS）（7件）

機能説明書：SSD-FD-CO2-ABS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| CR-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.2.2節（PDF p59）：流量オリフィスが2個のLiOHキャニスタにそれぞれ約120 lb/hrを流し、キャニスタはECLSSベイにあってミッドデッキ床の開口MD54Gから交換すると示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=59） |
| CR-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Lithium Hydroxide Canisters（PDF p370）：ダクト内のオリフィスで約120 lb/hrずつを2個のキャニスタへ流すと述べ、2.24節（p748）でCO2吸収器の使用位置をMD54G、収納位置をMD52Mとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） |
| CR-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-151B（PDF p1938）：8 psiでの再突入では時間が許せばLiOHキャニスタを取り外し、ファン1台の流量を820 lb/hrから870 lb/hrに増やすと定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1938） |
| CR-10 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | オリフィスで各約120 lb/hrを2個のLiOHキャニスタへ流すと記す。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| CR-18 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.2.2節（PDF p35）：ファンが空気をLiOHキャニスタへ送り、ダクト内のオリフィスが各キャニスタに120 lb/hrを流すと示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=35） |
| CR-20 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | 3-8 Lower Equipment Bay（PDF p94〜96、OV-103・104・105）：CO2吸収器の位置をMD54Gの付近に示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=94） |
| CR-38 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | PDF p14：ARS LiOHサービスドアのラッチ1個が外れずキャニスタを交換できなくなり、軌道上の保守手順でドアを開けたと記す（IFA STS-135-V-05）。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=14） |

### 3.3 交換式キャニスタ（CAN）（21件）

機能説明書：SSD-FD-CO2-CAN-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| CR-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.2.2節（PDF p59）：キャニスタ内の活性炭が臭気を抑え、CO2はLiOHと反応して炭酸リチウムになると述べ、3.6.5節（p94）でLiOHのCO2除去量を乗員1人1日あたり2.11 lbとする。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=59） |
| CR-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p370〜371）：LiOHがCO2を、活性炭が臭気・微量汚染物を除き、1個48 man-hoursとし、RCRS搭載機では他方のスロットに活性炭キャニスタを入れると示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） |
| CR-03 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | LiOHキャニスタがCO2を、活性炭が臭気・微量汚染物を除くと記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html） |
| CR-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A13-152C（PDF p1798〜1799）：火災後にLiOHキャニスタ2個（RCRS搭載時はLiOHと活性炭キャニスタ）を装着し、HClが5 ppm未満でLiOH 1個をATCOキャニスタに替えると定め、LiOHキャニスタの活性炭は1/4 lb、活性炭キャニスタは5 lbと説明する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1798） |
| CR-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | FRP-2 Post-Fire Cabin Cleanup（PDF p365）：HClが5 ppm未満でLiOHキャニスタ1個をATCOキャニスタに替え、COが55 ppm未満になればATCOキャニスタをLiOHキャニスタに戻すなど、LiOH・ATCO・活性炭キャニスタの交換基準を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=365） |
| CR-06 | NASA CR-1981 | Space Shuttle EC/LSS（Hamilton Standard、1972年） | CO2制御にLiOHベッド、臭気・微量汚染物の除去に活性炭ベッドを使う選定系統（表1、p5）を示す。（出典: https://ntrs.nasa.gov/api/citations/19720017476/downloads/19720017476.pdf） |
| CR-11 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | LiOHキャニスタ（ARS-301A、C.13-20、PDF p122）について、NASAのより保守的な機能・冗長の定義による臨界度2/2にIOAが同意したと記す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=122） |
| CR-14 | NASA/TM-2005-214007 | Designing For Human Presence in Space: An Introduction to ECLSS – Appendix I, Update（Wieland、2005年） | 表1のオービタ欄（p5〜6）で、2個のLiOHキャニスタに同時に空気を流し、微量汚染物を活性炭で除くと記す。（出典: https://ntrs.nasa.gov/citations/20060005209） |
| CR-15 | NTRS 20100021976（JSC-CN-20224） | Overview of Carbon Dioxide Control Issues During International Space Station/Space Shuttle Joint Docked Operations（Matty、2010年） | シャトルのLiOHキャニスタの質量を未使用で約7 lb、使用後で約9 lbとする。（出典: https://ntrs.nasa.gov/citations/20100021976） |
| CR-17 | NTRS 20110003653（JSC-CN-22727） | Manned Mission Planning Considerations when Using a Non-Regenerable CO2 Removal System（DeSimpelaere、2011年） | LiOHキャニスタ方式の運用上の教訓として、気流とLiOH粉塵を挙げる（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/20110003653） |
| CR-18 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.2.2節（PDF p35）：キャニスタは活性炭とLiOHの混合物を収め、CO2 1 lbあたり875 Btuの反応熱が出ると示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=35） |
| CR-19 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） | 3.22節（PDF p554）：LiOHキャニスタの寸法を直径6.68 in×長さ11.3 in、質量を6.73 lbと示す。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=554） |
| CR-23 | ASME 80-ENAS-45 | The factors influencing the formation of Li2CO3 from LiOH and CO2（Davis・Kissinger、1980年） | シャトルの3つの環境制御系で使うLiOHについて受入れ基準と反応速度の依存性を調べ、反応速度はCO2分圧（少なくとも40 mmHgまで）に比例すると報告する（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19800059049） |
| CR-27 | NTRS 20090029352（JSC-CN-18669） | Carbon Dioxide – Our Common “Enemy”（James・Macatangay、2009年） | p4：ISSとシャトルで使うLiOHキャニスタは3 kgのLiOHペレットを収め、容積約6 L、認定寿命2.4年とする。（出典: https://ntrs.nasa.gov/api/citations/20090029352/downloads/20090029352.pdf#page=4） |
| CR-29 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | PDF p187：臭気対策としてSTS-3以降は活性炭キャニスタを搭載し、臭気が問題になれば2つのLiOHキャニスタスロットの1つに装着するとした。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=187） |
| CR-31 | JSC-19278 | STS-8 National Space Transportation Systems Program Mission Report（1983年） | PDF p15：打上げ前と飛行中、LiOHキャニスタを交換するたびに乗員が目と喉の刺激を訴えたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf#page=15） |
| CR-32 | NSTS-08302 | STS-35 Space Shuttle Mission Report（1991年） | PDF p14：焦げ臭の後、白金と活性炭を充填したLiOHキャニスタ（CO吸収カートリッジ）を4時間装着したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=14） |
| CR-33 | NSTS-08291 | STS-59 Space Shuttle Mission Report（1994年） | PDF p23：同一ロットのキャニスタ2個の外殻が割れ（STS-51・STS-56と同ロット）、化学ミリングの削り過ぎと孔食が原因で、Nomexの袋がLiOHを保持するとして飛行を続けたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-59%20Space%20Shuttle%20Mission%20Report.pdf#page=23） |
| CR-34 | NSTS-08292 | STS-65 Space Shuttle Mission Report（1994年） | PDF p34：臭気対策として、LiOHキャニスタの代わりに活性炭キャニスタをARSに装着したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=34） |
| CR-36 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | PDF p49・p87：外殻が割れたキャニスタ（13回目の飛行）の不具合（IFA STS-114-V-35）について、外殻は6061系アルミニウム合金でNomexの内袋を持ち、地上で再充填して故障まで使うと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=87） |
| CR-37 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | PDF p52：粉塵対策の開口端のテープ覆いを外し忘れたキャニスタの装着で、キャビンファン差圧がわずかに上がり、PPCO2が通常の速さで下がらなかったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=52） |

### 3.4 常温触媒酸化器（ATCO）（10件）

機能説明書：SSD-FD-CO2-ATCO-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| CR-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.2.6節（PDF p64）：ATCOは乗員と非金属材料のガス放出によるCOを除き、キャビン熱交換器のすぐ下流にあり、触媒は白金2%・炭素担体と示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=64） |
| CR-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p376）：キャビン熱交換器を出た再生・調整済み空気の一部をCO除去装置（ATCO）へ送り、COをCO2に変換すると示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） |
| CR-03 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | キャビン熱交換器を出た空気の一部をCO除去装置へ送り、COをCO2に変換すると記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html） |
| CR-10 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | ATCO（触媒は白金2%・炭素担体）でCOを除くと記す。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| CR-14 | NASA/TM-2005-214007 | Designing For Human Presence in Space: An Introduction to ECLSS – Appendix I, Update（Wieland、2005年） | 表1のオービタ欄（p5〜6）で、ATCOでCOをCO2に変えると記す。（出典: https://ntrs.nasa.gov/citations/20060005209） |
| CR-16 | NTRS 20100025551（JSC-CN-20953） | Advanced Catalysts for the Ambient Temperature Oxidation of Carbon Monoxide and Formaldehyde（Nalette他、2010年） | NASAが1970年代にシャトルの常温CO酸化触媒として白金2%・炭素担体を選んだと述べ、シャトルの設計空間速度での新しい触媒の試験から現行のATCO反応器には大きな余裕があると結論する。（出典: https://ntrs.nasa.gov/citations/20100025551） |
| CR-18 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.2.2節（PDF p37）：CO除去装置は採用が承認されたが設計は未完了で、「Ambient Temperature Catalytic Oxidizer」と呼ぶ予定と記す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37） |
| CR-20 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | 3-8 Lower Equipment Bay（PDF p94〜96）：ATCOをキャビン熱交換器の近くに示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=94） |
| CR-28 | NTRS 20150022484 | Evaluation of Low Temperature CO Removal Catalysts（Monje、2015年） | シャトルのATCO触媒を白金2%・炭素担体とし、COのSMACを7日で55 ppm、30日・180日で15 ppmと示して、低温CO除去触媒を評価する。（出典: https://ntrs.nasa.gov/api/citations/20150022484/downloads/20150022484.pdf#page=1） |
| CR-30 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） | PDF p40・p81：ATCOの性能評価の飛行試験要求（FTR 61VV002）の一部達成と、キャビン大気試料の化合物の減少がATCO搭載の効果である可能性が高いことを記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=40） |

### 3.5 CO2・CO監視（MON）（15件）

機能説明書：SSD-FD-CO2-MON-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| CR-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.5節（PDF p74〜81）：CABIN AIR信号調整器がCO2分圧トランスデューサに給電し、PPCO2をSM OPS 2・4のDISP 66に表示すると示し、図3-12（p75）にトランスデューサの接続点を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） |
| CR-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p359）：軌道上のECLSSのパラメータをSM DISP 66（ENVIRONMENT）に表示すると述べ、PPCO2を含む表示例を示す。CSA-CP（p223）でCO・HCN・HClを実時間で分析することも示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/359） |
| CR-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A13-52（PDF p1775）：ARSがPPCO2を15 mmHg未満に保てなければ乗員がQDMを着用して次のPLSで飛行を終了すると定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1775） |
| CR-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.8b PPCO2（PDF p333）：CO2分圧が7.6 mmHgを超えた場合の処置を、RCRS搭載の有無とLiOH交換予定で分岐して示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=333） |
| CR-09 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report | STS-54でARSは問題なく作動し、CO2分圧を3.50 mmHg未満に保ったと記録する。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf） |
| CR-11 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | PPCO2センサ（ARS-320、C.13-25、PDF p127）について、NASAの臨界度2/2（IOAは3/3）を、乗員の措置や定常保守を考慮しない保守的な定義によるものとして、IOAが指摘を取り下げたと記す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=127） |
| CR-13 | NSTS-37443 | STS-107 Space Shuttle Mission Report（2003年） | 軌道上のCO2分圧は平均3.0 mmHg、最高6.47 mmHgだったと記録する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-107%20Space%20Shuttle%20Mission%20Report.pdf） |
| CR-19 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） | 3.22節（PDF p550）：キャビンのCO2分圧は通常5.0 mmHg未満で、0〜7.6 mmHgの範囲で変動すると示す。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=550） |
| CR-20 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | 3-8 Lower Equipment Bay（PDF p94〜96）：PPCO2センサをキャビンファンの近くに示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=94） |
| CR-21 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 3-32〜3-38（PDF p96〜102）：携帯型CO2モニタ（CDM）の準備とスポット計測を、13章（p377〜）でCSA-CPの点検・ゼロ校正・サンプリングを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=96） |
| CR-22 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | 3.4.6.1節（PDF p215）：CO2分圧の上限を長期で7.6 mmHg、最大2時間で15 mmHgとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=215） |
| CR-24 | SAE 932145 | Development of an infrared absorption transducer to monitor partial pressure of carbon dioxide for space applications（Lutz他、1993年） | EMU・オービタ・Spacehab用の赤外線吸収式PPCO2トランスデューサを開発し、従来の電気化学式センサの応答の遅さと電解液の信頼性の懸念を解消すると述べる（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19950058785） |
| CR-25 | NTRS 19940007083 | A Combustion Products Analyzer for Contingency Use During Thermodegradation Events on Spacecraft（Wilson他、1993年） | CO・HF・HCl・HCNを測る携帯型の燃焼生成物分析器（CPA）が、STS-41（1990年10月）から13回の飛行で搭載されたと述べる。（出典: https://ntrs.nasa.gov/api/citations/19940007083/downloads/19940007083.pdf#page=1） |
| CR-32 | NSTS-08302 | STS-35 Space Shuttle Mission Report（1991年） | PDF p14：CPAが高いCO濃度を示したが、純酸素でパージしても値が残り、測定値は無効と判断されたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=14） |
| CR-35 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | PDF p31〜32：係留中のオービタ表示のPPCO2は最大6.0 mmHgで、キャビン圧10.2 psiaの間の表示6.02 mmHgは換算で9.35 mmHg相当と記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=32） |

### 3.6 予備キャニスタ収納・交換管理（STW）（22件）

機能説明書：SSD-FD-CO2-STW-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| CR-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.2.2節（PDF p59）：キャニスタは乗員数に応じて1日1〜2回交換し、予備最大30個をパネルMD52Mの下に置き、交換中は両方のキャビンファンを止めると示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=59） |
| CR-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p370）：キャニスタを1日1〜2回床のアクセスドアから交換し、予備最大30個を熱交換器と水タンクの間の床下ロッカーに収めると述べ、手順の要約（p821・p832）で打上げ前の装着と就寝前後の交換を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） |
| CR-03 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | キャニスタを12時間ごと（乗員7名では11時間ごと）に交互に交換すると記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html） |
| CR-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-151C・A17-157・A17-158（PDF p1938・p1952〜1954）：就寝前後またはPPCO2 7.6（6.1）mmHg以上での交換、未使用LiOH 2日分の予備、使用済み（袋詰め）キャニスタの再使用の条件を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1952） |
| CR-06 | NASA CR-1981 | Space Shuttle EC/LSS（Hamilton Standard、1972年） | 日常の機上整備をLiOHカートリッジの交換だけにしたと述べる。（出典: https://ntrs.nasa.gov/api/citations/19720017476/downloads/19720017476.pdf） |
| CR-07 | JSC-16720 | STS-1 ECLSS Consumables and Thermal Analysis | STS-1のLiOH収支（搭載6個、うち不測時予備1個）と、打上げ後5.5時間での装着と交換時刻の前提を示す。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf） |
| CR-08 | SAE 901290 | Expanded capabilities of the Extended Duration Orbiter | EDOの改修として、搭載するLiOHを減らす方法を挙げる（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19910065909） |
| CR-12 | SAE 2003-01-2491 | The Lithium Hydroxide Management Plan for Removing Carbon Dioxide from the Space Shuttle while Docked to the International Space Station（Williams他、2003年） | 係留中のシャトルとISSの大気をISSのVozdukhとCDRAだけで制御できることをUF-1/STS-108の試験で示し、シャトル用LiOHキャニスタの打上げ量を減らす管理計画を述べる（抄録で確認）。（出典: https://saemobilus.sae.org/papers/lithium-hydroxide-management-plan-removing-carbon-dioxide-space-shuttle-docked-international-space-station-2003-01-2491） |
| CR-14 | NASA/TM-2005-214007 | Designing For Human Presence in Space: An Introduction to ECLSS – Appendix I, Update（Wieland、2005年） | 表1のオービタ欄（p5〜6）で、LiOHキャニスタを乗員数に応じて交換すると記す。（出典: https://ntrs.nasa.gov/citations/20060005209） |
| CR-15 | NTRS 20100021976（JSC-CN-20224） | Overview of Carbon Dioxide Control Issues During International Space Station/Space Shuttle Joint Docked Operations（Matty、2010年） | ISS係留中は両機が大気を共有するため、シャトルのLiOHキャニスタの使用を主に就寝前後に限ってISSのCDRA・VozdukhにCO2除去を分担させ、ISSに備蓄したキャニスタで搭載数の過不足を調整すると述べる。（出典: https://ntrs.nasa.gov/citations/20100021976） |
| CR-17 | NTRS 20110003653（JSC-CN-22727） | Manned Mission Planning Considerations when Using a Non-Regenerable CO2 Removal System（DeSimpelaere、2011年） | LiOHキャニスタ方式の運用上の教訓として、質量と収納、交換時期、物流管理を挙げる（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/20110003653） |
| CR-18 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.2.2節（PDF p35）：CO2分圧が5.0 mmHgに達したとき、または乗員4名ではおよそ12時間ごとにキャニスタを交換し、予備は熱交換器と水タンクの間の床下に置くと示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=35） |
| CR-19 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） | 3.22節（PDF p545〜555）：キャニスタは床下の収納区画から取り出してファン下流に装着し、乗員数で決まる計画で交換すると述べ、区画（22.25×39.12×30.08 in）と収納ラック（21×7.30×12.52 in、28 lb）の寸法を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=545） |
| CR-20 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | 1-9 LiOH Stowage Volume Removal（PDF p53〜54）：床下の機器に近づくため、LiOH収納区画（MD52M）を取り外す手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=53） |
| CR-21 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | ミッドデッキ作業一覧（PDF p68）：LiOH交換でISS備蓄キャニスタを使う場合の保護具の着用を警告し、3-14〜3-15（p78〜79）でLiOH収納区画の飛行中の再構成とLiOH/ATCOラック組立を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=68） |
| CR-26 | NTRS 20080047723 | Carbon Dioxide Removal Troubleshooting aboard the ISS during Space Shuttle Docked Operations（Matty・Cover、2009年） | 係留中はISSのCDRAとシャトルのLiOHでCO2を除去し、機械的な換気と乗員の居場所の管理で両機のCO2を均衡させ、LiOH・CDRAの性能低下や両機のCO2の不均衡の疑いなどの事象を調べたと述べる（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/20080047723） |
| CR-27 | NTRS 20090029352（JSC-CN-18669） | Carbon Dioxide – Our Common “Enemy”（James・Macatangay、2009年） | p4：シャトルはCO2除去をLiOHだけに頼るため、搭載量が足りない飛行ではISSのキャニスタで補い、後で補充すると述べる。（出典: https://ntrs.nasa.gov/api/citations/20090029352/downloads/20090029352.pdf#page=4） |
| CR-34 | NSTS-08292 | STS-65 Space Shuttle Mission Report（1994年） | PDF p12：RCRSをリストリクタ付きのLiOHキャニスタで補い、15時間ごとの交換でCO2分圧を平均2.3 mmHg（最大3.0 mmHg）に保ったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=12） |
| CR-35 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | PDF p31：ISSの装置が両機のPPCO2の大部分を管理したことで12個のLiOHキャニスタを使わずに済み、以後の搭載数を減らすとした。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=31） |
| CR-36 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | PDF p24：31個のLiOHキャニスタをシャトルからISSへ、32個をISSからシャトルへ移送し、ISSからの分は寿命が切れていたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=24） |
| CR-37 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | PDF p26：7個の新しいLiOHキャニスタをISSへ、11個をISSからシャトルへ移送したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=26） |
| CR-38 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | PDF p24：27個の新しいLiOHキャニスタをISSへ移送し、使用済み6個をISSから受け取ったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=24） |

## 4. 文書×機能マトリクス（全件）

| ID | 文書番号 | 表題 | 全般 | ABS | CAN | ATCO | MON | STW | 出典 | URL |
|---|---|---|---|---|---|---|---|---|---|---|
| CR-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | ● | ● | ● | ● | ● | ● | ARS-REF（AR-01） | https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf |
| CR-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | ● | ● | ● | ● | ● | ● | ARS-REF（AR-02） | https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual |
| CR-03 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | ● |  | ● | ● |  | ● | ARS-REF（AR-03） | https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html |
| CR-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights |  | ● | ● |  | ● | ● | ARS-REF（AR-04） | https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf |
| CR-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） |  |  | ● |  | ● |  | ARS-REF（AR-05） | https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf |
| CR-06 | NASA CR-1981 | Space Shuttle EC/LSS（Hamilton Standard、1972年） | ● |  | ● |  |  | ● | ARS-REF（AR-06） | https://ntrs.nasa.gov/api/citations/19720017476/downloads/19720017476.pdf |
| CR-07 | JSC-16720 | STS-1 ECLSS Consumables and Thermal Analysis |  |  |  |  |  | ● | ARS-REF（AR-08） | https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf |
| CR-08 | SAE 901290 | Expanded capabilities of the Extended Duration Orbiter |  |  |  |  |  | ● | ARS-REF（AR-10） | https://ntrs.nasa.gov/citations/19910065909 |
| CR-09 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report |  |  |  |  | ● |  | ARS-REF（AR-15） | https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf |
| CR-10 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | ● | ● |  | ● |  |  | ARS-REF（AR-17） | https://www.spaceshuttleguide.com/system/environmental%20Controls.htm |
| CR-11 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） |  |  | ● |  | ● |  | ARS-REF（AR-22） | https://ntrs.nasa.gov/citations/19900001639 |
| CR-12 | SAE 2003-01-2491 | The Lithium Hydroxide Management Plan for Removing Carbon Dioxide from the Space Shuttle while Docked to the International Space Station（Williams他、2003年） |  |  |  |  |  | ● | ARS-REF（AR-27） | https://saemobilus.sae.org/papers/lithium-hydroxide-management-plan-removing-carbon-dioxide-space-shuttle-docked-international-space-station-2003-01-2491 |
| CR-13 | NSTS-37443 | STS-107 Space Shuttle Mission Report（2003年） |  |  |  |  | ● |  | ARS-REF（AR-28） | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-107%20Space%20Shuttle%20Mission%20Report.pdf |
| CR-14 | NASA/TM-2005-214007 | Designing For Human Presence in Space: An Introduction to ECLSS – Appendix I, Update（Wieland、2005年） | ● |  | ● | ● |  | ● | ARS-REF（AR-29） | https://ntrs.nasa.gov/citations/20060005209 |
| CR-15 | NTRS 20100021976（JSC-CN-20224） | Overview of Carbon Dioxide Control Issues During International Space Station/Space Shuttle Joint Docked Operations（Matty、2010年） |  |  | ● |  |  | ● | ARS-REF（AR-33） | https://ntrs.nasa.gov/citations/20100021976 |
| CR-16 | NTRS 20100025551（JSC-CN-20953） | Advanced Catalysts for the Ambient Temperature Oxidation of Carbon Monoxide and Formaldehyde（Nalette他、2010年） |  |  |  | ● |  |  | ARS-REF（AR-34） | https://ntrs.nasa.gov/citations/20100025551 |
| CR-17 | NTRS 20110003653（JSC-CN-22727） | Manned Mission Planning Considerations when Using a Non-Regenerable CO2 Removal System（DeSimpelaere、2011年） | ● |  | ● |  |  | ● | ARS-REF（AR-36） | https://ntrs.nasa.gov/citations/20110003653 |
| CR-18 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） |  | ● | ● | ● |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf |
| CR-19 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） |  |  | ● |  | ● | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf |
| CR-20 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） |  | ● |  | ● | ● | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf |
| CR-21 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） |  |  |  |  | ● | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf |
| CR-22 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） |  |  |  |  | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf |
| CR-23 | ASME 80-ENAS-45 | The factors influencing the formation of Li2CO3 from LiOH and CO2（Davis・Kissinger、1980年） |  |  | ● |  |  |  | 新規 | https://ntrs.nasa.gov/citations/19800059049 |
| CR-24 | SAE 932145 | Development of an infrared absorption transducer to monitor partial pressure of carbon dioxide for space applications（Lutz他、1993年） |  |  |  |  | ● |  | 新規 | https://ntrs.nasa.gov/citations/19950058785 |
| CR-25 | NTRS 19940007083 | A Combustion Products Analyzer for Contingency Use During Thermodegradation Events on Spacecraft（Wilson他、1993年） |  |  |  |  | ● |  | 新規 | https://ntrs.nasa.gov/api/citations/19940007083/downloads/19940007083.pdf |
| CR-26 | NTRS 20080047723 | Carbon Dioxide Removal Troubleshooting aboard the ISS during Space Shuttle Docked Operations（Matty・Cover、2009年） |  |  |  |  |  | ● | 新規 | https://ntrs.nasa.gov/citations/20080047723 |
| CR-27 | NTRS 20090029352（JSC-CN-18669） | Carbon Dioxide – Our Common “Enemy”（James・Macatangay、2009年） |  |  | ● |  |  | ● | 新規 | https://ntrs.nasa.gov/api/citations/20090029352/downloads/20090029352.pdf |
| CR-28 | NTRS 20150022484 | Evaluation of Low Temperature CO Removal Catalysts（Monje、2015年） |  |  |  | ● |  |  | 新規 | https://ntrs.nasa.gov/api/citations/20150022484/downloads/20150022484.pdf |
| CR-29 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） |  |  | ● |  |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf |
| CR-30 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） |  |  |  | ● |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf |
| CR-31 | JSC-19278 | STS-8 National Space Transportation Systems Program Mission Report（1983年） |  |  | ● |  |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf |
| CR-32 | NSTS-08302 | STS-35 Space Shuttle Mission Report（1991年） |  |  | ● |  | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf |
| CR-33 | NSTS-08291 | STS-59 Space Shuttle Mission Report（1994年） |  |  | ● |  |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-59%20Space%20Shuttle%20Mission%20Report.pdf |
| CR-34 | NSTS-08292 | STS-65 Space Shuttle Mission Report（1994年） |  |  | ● |  |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf |
| CR-35 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） |  |  |  |  | ● | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf |
| CR-36 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） |  |  | ● |  |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf |
| CR-37 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） |  |  | ● |  |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf |
| CR-38 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） |  | ● |  |  |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf |

## 5. 注記（出典間の相違・構成変更）

> **注記** CR-02（SCOM）の関連内容に示す頁はUSA007587 Rev. A CPN-1のPDF通し頁で、出典URLの末尾の番号と一致する。CR-04（運用飛行規則）は同じくNSTS-12820 Vol. A PCN-1のPDF通し頁である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370）

> **注記** CR-18（1979年の飛行運用マニュアル）のPDF p35の抽出テキストでは、交換基準が「partial pressure of CO」と読める。同じ段落の「CO2」の下付き文字が欠落したものと判断し、CO2分圧として記した。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=35）

> **注記** CR-08・CR-12・CR-17・CR-23・CR-24・CR-26は抄録で内容を確認した（関連内容に「抄録で確認」と記した）。（出典: https://ntrs.nasa.gov/citations/19950058785）

> **注記** CR-27（James・Macatangay、2009年）のLiOH 3 kgは、CR-19（飛行運用マニュアル第12巻）のキャニスタ全体の質量6.73 lbと整合しない（SSD-FD-CO2-CAN-001の注記を参照）。（出典: https://ntrs.nasa.gov/api/citations/20090029352/downloads/20090029352.pdf#page=4）

## 6. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-28 | 初版作成（38件） |
