# アビオニクスベイ空冷 機能別関連文書一覧

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-AVB-REF-001 |
| 表題 | アビオニクスベイ空冷 機能別関連文書一覧 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-AVB-001 |
| 関連図 | SSD-SYS-ARC-001 図33 アビオニクスベイ空冷 関連文書マトリクス |

## 1. 目的

アビオニクスベイ空冷（AVB）の各下位機能に関係する公開文書を機能別に整理し、各機能説明書と図33 アビオニクスベイ空冷 関連文書マトリクス（文書×機能マトリクス）の根拠とする。

## 2. 調査方法

SSD-ARS-REF-001の3.6節 アビオニクスベイ空冷（AVB）の13件を引き継ぎ（出典欄「ARS-REF（AR-01）」の形）、今回の調査で5件を追加した（出典欄「新規」）。引き継いだ行も含め、各行の関連内容は下位機能ごとに書き分けた。訓練マニュアル（USA006020・USA006019）、SCOM、運用飛行規則、故障処置手順（MAL）、飛行運用マニュアル（JSC-12770）、IFMチェックリスト、軌道運用チェックリスト、IOA、ミッション報告は原本で本文を確認し、関連内容に節とPDFの通し頁を示す。

## 3. 機能別関連文書

### 3.1 アビオニクスベイ空冷 全般（3件）

機能説明書：SSD-FD-ARS-AVB-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| AV-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.1節 ARS Air System（PDF p57）：ARSの空気系を3つの循環系に分け、そのうちベイファンがAv Bay 1・2・3Aの空気を循環させるとする。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=57） |
| AV-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Avionics Bay Cooling（PDF p376）：キャビン空気で3つのアビオニクス機器ベイとベイ内の一部の機器を冷やし、3ベイが同一の空冷系を持つと示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） |
| AV-03 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | 各アビオニクスベイの2台のファンが空冷機器を通した空気を水冷却ループで冷やす熱交換器へ送り、ベイへ戻すと記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html） |

### 3.2 ベイ内循環・機器空冷（CIR）（8件）

機能説明書：SSD-FD-ARS-AVB-CIR-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| AV-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 表3-2〜3-5（PDF p88〜89）：各ベイの機器を強制空冷・自由流空冷・水冷に分けて示し、3.2.7節（p65）でファンが機器の間に空気を通して強制空冷し、各ベイが気密でない閉じた循環系であるとする。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=88） |
| AV-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.6節（PDF p227）でGPCがベイファンで強制空冷されるとし、2.8節（p340）でインバータ分配組立が空冷であること、2.9節（p376）でファンがベイの床から空冷機器と300ミクロンフィルタを通して吸い込むことを示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/227） |
| AV-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-105（PDF p1934〜1936）：ベイ入口温度95°Fの設計要求に基づく各LRUへの気流の配分と、計測される出口温度がベイ内の全LRUの混合温度であることを述べ、A9-154（p1467）でGould製TACANの冷却にベイファンが必要とする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1935） |
| AV-07 | NTRS 19750056784 | The shuttle orbiter cabin atmospheric revitalization systems | 1973年以降の設計変更として、アビオニクスベイのキャビンからの隔離の廃止を挙げる（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19750056784） |
| AV-11 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | ARS-2561X（C.13-33、PDF p135）とARS-234（C.13-15、p117）でベイ冷却用ダクト区間の流れの制限とその原因の一つである300ミクロンフィルタ（3個）の目詰まりを、ARS-2562X（C.13-34、p136）で戻り空気ダクト区間の外部漏れを扱い、いずれも指摘を取り下げたと記す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=135） |
| AV-13 | NTRS 20090043801（JSC-CN-19306） | Noise Control in Space Shuttle Orbiter（Goodman、NOISE-CON 2010） | 3つのアビオニクスベイのクローズアウトに遮音材を追加し、1992年にAv Bay 3Aの大きなスロットなどへの蓋を承認したと記す。（出典: https://ntrs.nasa.gov/citations/20090043801） |
| AV-14 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.2.2節（PDF p37）：各ベイは閉じた空気循環系だが気密ではなく、一部の空気がベイと乗員室の間を行き来すると示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37） |
| AV-16 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | 4-2・4-9〜4-10 Filter Cleaning（PDF p98・p105〜106）：ベイファンのフィルタ清掃はMCCの指示があるときだけ行い、下部機器ベイからフィルタに近づき、ファンを20分を超えて止めると電子機器が過熱するおそれがあるとする。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=106） |

### 3.3 ベイファン・逆止弁（FAN）（7件）

機能説明書：SSD-FD-ARS-AVB-FAN-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| AV-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.2.7節（PDF p65）と表3-6（p90〜91）：ベイ1・2のファン（三相115 V AC・111 W、875 lb/hr、2相で起動・運転可）と1 psiで開く逆止弁、Av Bay 3Aのキャビンファンへの換装計画、L1スイッチとL4遮断器を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=65） |
| AV-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p376）：各ベイ2台のファンをL1のAV BAY 1・2・3 FAN A・Bスイッチで個別に制御して通常1台を使い、非運転ファンの出口の逆止弁が逆流を防ぐと示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） |
| AV-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-154A（PDF p1948）とA17-103B（p1931）：改良型ファンがキャビンファンと同じで2相では再起動できないこと、1999年1月時点でOV-104のAv Bay 3Aに搭載されたことを記す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1948） |
| AV-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.1b・6.1cの通常構成（PDF p261〜262）：L4の遮断器（ベイ1 A＝AC1・B＝AC2、ベイ2 A＝AC2・B＝AC3、ベイ3 A＝AC3・B＝AC1）と、ベイ1・3はファンB、ベイ2はファンAを運転する構成を示し、EPS SSR-7（p453）でキャビンファンの2相起動にベイファンを使う。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=261） |
| AV-09 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | Av Bay 1・2のファン（111 W）がベイ内に875 lb/hrの空気を流すと記す。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| AV-14 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.2.2節（PDF p37）：各ベイに2台のファンがあり、1台で必要な流量を得ると示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37） |
| AV-16 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | A-17〜A-19 AV BAY FAN CHANGEOUT（PDF p127〜129）：1ベイの両ファンが故障した場合に他のベイのファン組立（ファンと逆止弁）と交換する手順を示し、3-9（p95）でOV-104のAv Bay 3Aのファンパッケージを大型ファン用に改修したと注記する。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=127） |

### 3.4 ベイ熱交換器（HX）（8件）

機能説明書：SSD-FD-ARS-AVB-HX-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| AV-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.3.2〜3.3.4節（PDF p68）：水冷却ループのベイ1・2・3の経路がベイの空気/水熱交換器とコールドプレートを通るとし、3.3.6節（p69）でインターチェンジャ出口が63°Fに近づくとAv Bayの経路の冷却能力も失われるとする。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=68） |
| AV-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p376・p378）：ファン出口空気をミッドデッキ床下のベイ熱交換器で水冷却ループが冷やしてベイへ戻すとし、水冷却ループがベイ1・2・3Aの空気/水熱交換器を並列の経路で通ると示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/378） |
| AV-03 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | ファン出口の空気を水冷却ループで冷やす熱交換器へ送り、ベイへ戻すと記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html） |
| AV-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A18-101C（PDF p2059）：ベイへの供給空気は最高95°F（14.7 psi）で、熱交換器を出る空気はポンプ出口温度より約10°F高いとし、A18-205（p2070）でGPCを1台追加するとベイ出口温度が約10〜15°F上がるとする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2059） |
| AV-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.1b AV BAY TEMP（PDF p261）：複数のベイの温度上昇を確かめ、水冷却ループを切り替えて温度が下がる場合を水冷却ループの劣化とする。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=261） |
| AV-06 | JSC-16720 | STS-1 ECLSS Consumables and Thermal Analysis | アビオニクスベイ1〜3の空気入口・出口とコールドプレートの温度の解析値を仕様上限（空気出口130°F）と比べる。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf） |
| AV-10 | NASA-CR-134164（SP02T73） | Space Shuttle Atmospheric Revitalization Subsystem/Active Thermal Control Subsystem Computer Program（Users Manual）（Hamilton Standard、1973年） | アビオニクスベイを3並列でモデル化し（2.2節）、ベイのコールドプレートを表す発熱ノードを水/空気熱交換器の上流に加えたと記す。（出典: https://ntrs.nasa.gov/citations/19740006419） |
| AV-14 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.2.2節（PDF p37）：各ベイに空気を冷やす熱交換器があるとし、水冷却ループのベイ1の経路がハッチを、ベイ2の経路がキャビンの窓を熱調整すると示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37） |

### 3.5 温度・差圧監視（MON）（9件）

機能説明書：SSD-FD-ARS-AVB-MON-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| AV-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.5節（PDF p74）：3個のAv Bay信号調整器が温度・差圧センサに給電するとし、3.5.1節（p80）でSM SYS SUMM 2の表示範囲を、3.5.3節（p83）でC&Wのベイ温度の上限130°Fを示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） |
| AV-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.2節（PDF p133）と4.1節（p788）：AV BAY/CABIN AIR灯のハードウェアチャネル84・94・104をベイ1〜3の温度に割り当て、AIR TEMP計器の目盛（通常75〜110°F、上限130°F）を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/133） |
| AV-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-103（PDF p1931）：差圧は冷却性能の粗い指標で、ベイ出口温度・水冷却ループ熱交換器の入口・出口温度・水流量も判断に使い、差圧の計測誤差は喪失判定に使わないとする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1931） |
| AV-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.1c AV BAY FAN ∆P（PDF p262）：SM警報の限界（2.5・4.3、10.2 psi運用は3.3、改良型は4.5・7.8・5.9 in H2O）と、温度45 Lによる信号調整器の故障の判別を示し、COMM SSR-10（p87）でOI MDM OF1の喪失によるAv Bay 3の計測喪失を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=262） |
| AV-08 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report | PDF p18：ベイ1〜3の空気出口温度（最高104・105・87°F）と水コールドプレート温度（最高89・90・79°F）を記し、ARSの性能は正常であったとする。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=18） |
| AV-12 | USA006019 Rev. A（C&W 21002） | Caution and Warning（2008年） | 表7-2 C&W FDA表（PDF p96）：ベイファン差圧のSM警報の限界2.5〜4.3 in H2O（改良型ファンは4.5〜7.8）とベイ温度の上限130°Fを示し、表7-3（p97）でハードウェアチャネル84・94・104をベイ1〜3の温度に割り当てる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=96） |
| AV-14 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.2.3節（PDF p42）でC&Wのベイ1〜3の温度の上限を139°Fとし、SMメッセージの表（p53）でベイ1・2の差圧を0.04 psi未満・0.17 psi超、出口温度を139°F超とする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=42） |
| AV-15 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） | 3.26節 表3.26-5（PDF p659）：AV BAY/CABIN AIR灯の条件の一つを、ベイ1〜3の空気出口温度139°F超とする。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=659） |
| AV-18 | NSTS-08291 | STS-59 Space Shuttle Mission Report（1994年） | PDF p22：ベイ1〜3の水コールドプレート出口温度（最高85.2・89.5・83.3°F）と空気出口温度（最高104.5・104.5・87.0°F）を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-59%20Space%20Shuttle%20Mission%20Report.pdf#page=22） |

### 3.6 ベイ冷却運用管理（OPS）（6件）

機能説明書：SSD-FD-ARS-AVB-OPS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| AV-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 付録B.6 AV BAY FAILURE RECOGNITION（PDF p206〜207）：ファン故障ではベイ温度の表示が下がること、故障を確かめたらMECO前でも切り替えること（改良型の3Aを除く）、信号調整器の故障では両ファンを選ぶこと、温度高では両ファン運転と水冷却ループの切替を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=206） |
| AV-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 付録C（PDF p1117）：動力飛行中に切り替えてよい交流負荷としてベイファン（三相モータの停止時のみ）を挙げ、2.9節 Operations（p404）で打上げ時は各ベイの1台のファンが運転済みであるとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1117） |
| AV-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-103・105・151F・153A・154A（PDF p1931〜1948）、A9-154A（p1466）、A18-501（p2127）、A17-53A（p1923）、A17-1001（p2032〜2034）、A16-51（p1895）：ファンとベイ冷却の喪失定義、上昇中の切替、差圧計測喪失時の2台運転、最大停止時間、火災時の停止、Go/No-Go、着陸後の緊急断電を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1934） |
| AV-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | ECLS SSR-12（PDF p351〜352）：ベイ火災後のファンの再構成（煙濃度・交流電流・差圧の確認）を示し、6.1b・6.1c（p261〜262）で両ファン運転・水冷却ループの切替・DPS再構成と、予備ファンへの切替の手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=351） |
| AV-12 | USA006019 Rev. A（C&W 21002） | Caution and Warning（2008年） | 3.3.3節（PDF p37）：ベイに放出したHalonは、ベイファンが運転していても50時間有効であるとする。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=37） |
| AV-17 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 4-4 G2 SET EXPANSION（PDF p106）：GPCをRUNにする前に、そのGPCのあるベイのファン（AV BAY 2(3) FAN A(B)）がONであることを確かめる。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=106） |

## 4. 文書×機能マトリクス（全件）

| ID | 文書番号 | 表題 | 全般 | CIR | FAN | HX | MON | OPS | 出典 | URL |
|---|---|---|---|---|---|---|---|---|---|---|
| AV-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | ● | ● | ● | ● | ● | ● | ARS-REF（AR-01） | https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf |
| AV-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | ● | ● | ● | ● | ● | ● | ARS-REF（AR-02） | https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual |
| AV-03 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | ● |  |  | ● |  |  | ARS-REF（AR-03） | https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html |
| AV-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights |  | ● | ● | ● | ● | ● | ARS-REF（AR-04） | https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf |
| AV-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） |  |  | ● | ● | ● | ● | ARS-REF（AR-05） | https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf |
| AV-06 | JSC-16720 | STS-1 ECLSS Consumables and Thermal Analysis |  |  |  | ● |  |  | ARS-REF（AR-08） | https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf |
| AV-07 | NTRS 19750056784 | The shuttle orbiter cabin atmospheric revitalization systems |  | ● |  |  |  |  | ARS-REF（AR-14） | https://ntrs.nasa.gov/citations/19750056784 |
| AV-08 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report |  |  |  |  | ● |  | ARS-REF（AR-15） | https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf |
| AV-09 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） |  |  | ● |  |  |  | ARS-REF（AR-17） | https://www.spaceshuttleguide.com/system/environmental%20Controls.htm |
| AV-10 | NASA-CR-134164（SP02T73） | Space Shuttle Atmospheric Revitalization Subsystem/Active Thermal Control Subsystem Computer Program（Users Manual）（Hamilton Standard、1973年） |  |  |  | ● |  |  | ARS-REF（AR-18） | https://ntrs.nasa.gov/citations/19740006419 |
| AV-11 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） |  | ● |  |  |  |  | ARS-REF（AR-22） | https://ntrs.nasa.gov/citations/19900001639 |
| AV-12 | USA006019 Rev. A（C&W 21002） | Caution and Warning（2008年） |  |  |  |  | ● | ● | ARS-REF（AR-31） | https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf |
| AV-13 | NTRS 20090043801（JSC-CN-19306） | Noise Control in Space Shuttle Orbiter（Goodman、NOISE-CON 2010） |  | ● |  |  |  |  | ARS-REF（AR-32） | https://ntrs.nasa.gov/citations/20090043801 |
| AV-14 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） |  | ● | ● | ● | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf |
| AV-15 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） |  |  |  |  | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf |
| AV-16 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） |  | ● | ● |  |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf |
| AV-17 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） |  |  |  |  |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf |
| AV-18 | NSTS-08291 | STS-59 Space Shuttle Mission Report（1994年） |  |  |  |  | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-59%20Space%20Shuttle%20Mission%20Report.pdf |

## 5. 注記（出典間の相違・構成変更）

> **注記** AV-02（SCOM）の関連内容に示す頁はUSA007587 Rev. A CPN-1のPDF通し頁で、出典URLの末尾の番号と一致する。AV-04（運用飛行規則）は同じくNSTS-12820 Vol. A PCN-1のPDF通し頁である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376）

> **注記** AV-03・06・07・09・10・13は、今回は本文を確認していないため（Webページ・抄録、または本文の抽出テキストがない）、SSD-ARS-REF-001の関連内容を引き継ぎ、頁を示さない。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf）

> **注記** AV-14（1979年の飛行運用マニュアル）のPDF p53はOCRの抽出テキストが一部読み取れないため、読み取れた値（ベイ1・2の差圧0.04 psi未満・0.17 psi超、出口温度139°F超）だけを記した。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=53）

> **注記** ベイ温度の警報上限（130°Fと139°F）とファン差圧の単位・限界は資料で異なる（SSD-FD-ARS-AVB-MON-001の注記を参照）。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=659）

## 6. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（18件） |
