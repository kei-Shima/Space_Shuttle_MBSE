# ベイファン・逆止弁（FAN）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ARS-AVB-FAN-001 |
| 表題 | ベイファン・逆止弁（FAN）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-AVB-001 |
| 関連図 | SSD-SYS-ARC-001 図32 アビオニクスベイ空冷 機能構成 |

## 1. 目的

各ベイの2台のベイファン（A・B）と各ファン出口の逆止弁によってベイ内の空気を送る機能と、電源・スイッチの構成、2相電源での起動・運転、Av Bay 3Aの大型ファンへの換装、軌道上でのファンの交換を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ARS-AVB-FAN-01 | ベイ1・2・3Aにはそれぞれ2台のファンがあって常に1台を使い、ファンはミッドデッキ床下のECLSSベイで各ベイの下にある（訓練マニュアル3.2.7節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=65） |
| F-ARS-AVB-FAN-02 | ベイ1・2の各ファンは三相115 V ACの111 W電動機で駆動されてベイ内に通常875 lb/hrを流し、交流2相でも起動・運転できる（訓練マニュアル3.2.7節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=65） |
| F-ARS-AVB-FAN-03 | 各ファン出口のフラッパ式逆止弁は非運転ファンを通る逆流を防ぎ、ファンが弁の前後に1 psiの差圧を生じると開く（訓練マニュアル3.2.7節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=65） |
| F-ARS-AVB-FAN-04 | 各ベイの2台のファンはパネルL1のAV BAY 1・2・3 FAN A・Bスイッチで個別に制御して通常は1台ずつ使い、OFF位置でそのファンの電源を断つ（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） |
| F-ARS-AVB-FAN-05 | 各ファンはパネルL4の3個の遮断器から三相交流を受け、ベイ1のファンA・BはAC1・AC2、ベイ2はAC2・AC3、ベイ3はAC3・AC1につながる（訓練マニュアル表3-6）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=91） |
| F-ARS-AVB-FAN-06 | 故障処置手順の通常構成では、ベイ1とベイ3はファンB、ベイ2はファンAを運転する（MAL 6.1b）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=261） |
| F-ARS-AVB-FAN-07 | Av Bay 3Aのファンを三相115 V AC・495 Wのキャビンファンに換え、ミッドデッキのロッカーに収めるペイロードの追加冷却のためにベイに1,400 lb/hrを流す計画があり、換装までは標準のファンを使う（訓練マニュアル3.2.7節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=65） |
| F-ARS-AVB-FAN-08 | 改良型ファンはハウジングを除いてキャビンファンと同じで、1999年1月時点でOV-104のAv Bay 3Aに搭載され、OV-103・OV-105は将来搭載、OV-102は搭載予定がない（A17-103B）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1931） |
| F-ARS-AVB-FAN-09 | IFMチェックリストの下部機器ベイ配置図（OV-104）は、Av Bay 3Aのファンパッケージを大型（キャビンファン）ファン用に改修したと注記する。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=95） |
| F-ARS-AVB-FAN-10 | 従来型のベイファンは2相で再起動できるが、改良型ファンはキャビンファンと同じく2相では再起動できない（A17-154A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1948） |
| F-ARS-AVB-FAN-11 | 交流の位相ずれでは、燃料電池ポンプ・フレオンポンプ・水ポンプとともにベイファンなど複数の三相モータが停止する（SCOM付録C）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1117） |
| F-ARS-AVB-FAN-12 | 1ベイの両ファンが故障し、そのうち1台の故障が電源によらない場合は、ファン組立（ファンと逆止弁）を他のベイの2台の良品の1台と交換する（IFM A-17）。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=127） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-AVB-01 | ベイ内循環・機器空冷 | 推進薬・流体 | 受信 | ベイの床から空冷機器と300ミクロンフィルタを通した空気を、ベイファンの入口へ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） | — |
| IF-AVB-05 | ベイ熱交換器 | 推進薬・流体 | 送信 | ファンの出口は空気をそのベイの熱交換器へ送り、非運転ファンの出口の逆止弁が逆流を防ぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） | — |
| IF-AVB-06 | 温度・差圧監視 | 推進薬・流体 | 送信 | 各ベイのファン差圧センサで、運転中のファンの差圧を測る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） | — |
| IF-AVB-07 | 電力系：交流配電（EPDC-AC） | 電力（28 VDC） | 受信 | 各ファンにはパネルL4の3個の遮断器を通して三相交流を供給し、ベイ1のファンA・BはAC1・AC2、ベイ2はAC2・AC3、ベイ3はAC3・AC1から受ける。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=91）ベイ1・2のファンは三相115 V ACの111 W電動機である。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=65） | 上位: IF-ARS-34 |
| IF-AVB-08 | ベイ冷却運用管理 | データ・指令 | 受信 | 運用規則に従い、パネルL1のAV BAY 1・2・3 FAN A・Bスイッチで運転するファンを選び、入切りする。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90）打上げ時には、各ベイの1台のファンが運転済みである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/404） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| AV-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.2.7節（PDF p65）と表3-6（p90〜91）：ベイ1・2のファン（三相115 V AC・111 W、875 lb/hr、2相で起動・運転可）と1 psiで開く逆止弁、Av Bay 3Aのキャビンファンへの換装計画、L1スイッチとL4遮断器を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=65） |
| AV-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p376）：各ベイ2台のファンをL1のAV BAY 1・2・3 FAN A・Bスイッチで個別に制御して通常1台を使い、非運転ファンの出口の逆止弁が逆流を防ぐと示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） |
| AV-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-154A（PDF p1948）とA17-103B（p1931）：改良型ファンがキャビンファンと同じで2相では再起動できないこと、1999年1月時点でOV-104のAv Bay 3Aに搭載されたことを記す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1948） |
| AV-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.1b・6.1cの通常構成（PDF p261〜262）：L4の遮断器（ベイ1 A＝AC1・B＝AC2、ベイ2 A＝AC2・B＝AC3、ベイ3 A＝AC3・B＝AC1）と、ベイ1・3はファンB、ベイ2はファンAを運転する構成を示し、EPS SSR-7（p453）でキャビンファンの2相起動にベイファンを使う。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=261） |
| AV-09 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | Av Bay 1・2のファン（111 W）がベイ内に875 lb/hrの空気を流すと記す。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| AV-14 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.2.2節（PDF p37）：各ベイに2台のファンがあり、1台で必要な流量を得ると示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37） |
| AV-16 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | A-17〜A-19 AV BAY FAN CHANGEOUT（PDF p127〜129）：1ベイの両ファンが故障した場合に他のベイのファン組立（ファンと逆止弁）と交換する手順を示し、3-9（p95）でOV-104のAv Bay 3Aのファンパッケージを大型ファン用に改修したと注記する。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=127） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：訓練マニュアル（3.2.7節）は逆止弁が1 psiの差圧で開くとするが、ベイファンの喪失判定の差圧（2.5〜4.3 in H2O、A17-103）は1 psi（約27.7 in H2O）よりはるかに小さい。キャビンファンの逆止弁でも訓練マニュアルは2 psi、SCOMは2 in H2Oとしており（SSD-FD-CAC-FAN-001）、単位（in H2O）の誤記の可能性があるが、原本からは判別できない。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=65）

> **注記** キャビンファンを2相で起動する手順（MAL EPS SSR-7）では、同じ母線に誘起電圧を作るためにベイファンなどの三相機器を運転する。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=453）

## 6. 参考文献

1. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.2.7節 Avionics Bay Fans（PDF p65） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=65
2. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Avionics Bay Cooling（PDF p376） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376
3. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表3-6 ECLSS controls (ARS)（続き）（PDF p91） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=91
4. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.1b AV BAY TEMP（PDF p261） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=261
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-103 Loss of Avionics Bay Fan（PDF p1931） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1931
6. JSC-48025 Rev. F PCN-13 In-Flight Maintenance (IFM) Checklist 3-9 Lower Equipment Bay (OV104)（PDF p95） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=95
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-154 Management of Degraded Rotating Equipment（PDF p1948） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1948
8. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 付録C Study Notes（EPS AC Bus）（PDF p1117） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1117
9. JSC-48025 Rev. F PCN-13 In-Flight Maintenance (IFM) Checklist A-17 AV Bay Fan Changeout（PDF p127） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=127
10. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.5節 ARS Instrumentation and Displays（PDF p74） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74
11. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表3-6 ECLSS controls (ARS)（PDF p90） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90
12. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Operations（PDF p404） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/404
13. JSC-48027 Rev. F Malfunction Procedures（MAL） EPS SSR-7 Two-Phase Fan Start Procedure（PDF p453） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=453

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
