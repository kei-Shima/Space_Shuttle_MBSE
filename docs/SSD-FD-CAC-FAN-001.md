# キャビンファン・逆止弁（FAN）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-CAC-FAN-001 |
| 表題 | キャビンファン・逆止弁（FAN）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-28 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-CAC-001 |
| 関連図 | SSD-SYS-ARC-001 図16 キャビン空気循環 機能構成 |

## 1. 目的

2台のキャビンファン（A・B）と各ファン出口の逆止弁によってキャビン空気を送る機能と、電源・スイッチの構成、2相電源での起動・運転の特性を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-CAC-FAN-01 | キャビンファンは2台あって常に1台を使い、ミッドデッキ床下のECLSSベイにあり、パネルMD79Gから点検する（訓練マニュアル3.2.1節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=58） |
| F-CAC-FAN-02 | 各ファンは三相115 V AC・495 Wの電動機で駆動され、キャビン空気ダクトに公称1,400 lb/hrを流す（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） |
| F-CAC-FAN-03 | ファンの回転数は11,200 rpmで、ファン前後の通常の差圧は0.1〜0.3 psidである（1979年の飛行運用マニュアル）。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=35） |
| F-CAC-FAN-04 | SCOMのECLSSの構成品一覧は、キャビンファンと逆止弁を組立（cabin fans and check valve assemblies）として挙げる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/357） |
| F-CAC-FAN-05 | キャビンファンAはAC3、BはAC2の三相電力を、パネルL4の各3個の遮断器からパネルL1のCABIN FANスイッチを通して受ける（訓練マニュアル表3-6）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92） |
| F-CAC-FAN-06 | パネルL1のCABIN FAN A・Bスイッチ（ON–OFF）は2個あり、同時に使うのは1個である（訓練マニュアル表3-6）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90） |
| F-CAC-FAN-07 | ファンは2相では起動できないが、運転中に1相を失っても運転を続け、同じAC母線の他の回転機器の誘起電圧で2-1/2相となれば起動できる。短絡で相を失った場合は起動できない（訓練マニュアル3.2.1節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=58） |
| F-CAC-FAN-08 | JSCとRockwellの試験では、2相で起動したキャビンファンがファンの3 A遮断器を作動させた（A17-154A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1948） |
| F-CAC-FAN-09 | 相を失った母線での起動には3個の遮断器をすべて閉じる必要があり、運転中は電力のない相の遮断器を開いておく（MAL EPS 7.5b）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=421） |
| F-CAC-FAN-10 | IOAのCIL評価（1988年）は、キャビンファン組立（ARS-3061X、NASA臨界度2/2）の外部への空気漏れで最初に現れるのはアビオニクスベイの冷却低下で、検知して飛行を終了できるとして、指摘を取り下げた。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=137） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-CAC-02 | 還流・ろ過 | 推進薬・流体 | 受信 | 300ミクロンフィルタを通った空気を、2台のキャビンファンの入口へ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） | — |
| IF-CAC-06 | 送風ダクト・分配 | 推進薬・流体 | 送信 | 運転中のファンは逆止弁を通して約1,400 lb/hrの空気を出口ダクトへ送り、逆止弁は非運転ファンを通る逆流を防ぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） | — |
| IF-CAC-07 | ファン差圧監視 | 推進薬・流体 | 送信 | フィルタとファンの間と、ファンの下流のダクトに設けた圧力取出し口で、ファン前後の差圧を測る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=75） | — |
| IF-CAC-08 | 煙検知・消火系（FDS） | 推進薬・流体 | 送信 | ミッドデッキ床下のECLSSベイのキャビンファン・プレナムに煙感知器があり、パネルL1のSMOKE DETECTIONのCABIN灯を点灯させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/119） | 上位: IF-ARS-14 |
| IF-CAC-09 | 電力系（EPS） | 電力（28 VDC） | 受信 | キャビンファンAにはAC3、BにはAC2の三相115 V AC電力を、パネルL4の各3個の遮断器とパネルL1のCABIN FANスイッチを通して供給する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92） | 上位: IF-ARS-32 |
| IF-CAC-10 | ファン運用管理 | データ・指令 | 受信 | 運用規則に従い、パネルL1のCABIN FAN A・Bスイッチで運転するファンを選び、起動・停止する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
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

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：逆止弁が開く差圧を、訓練マニュアル（3.2.1節）は2 psiとし、SCOM（PDF p370）は2 in H2O（0.0723 psi）とする（SSD-ARS-REF-001の注記と同じ）。本書はSCOMの値を用いた。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=58）

> **注記** キャビンファン出口のプレナムにはA群の煙感知器がある（SCOM 2.2節）。感知器は煙検知・消火系の機器として扱い、図16では空気の取出し点をIF-CAC-08で示した。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/118）

## 6. 参考文献

1. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.2.1節 Cabin Fan・図3-1 Cabin air system（PDF p58） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=58
2. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Cabin Air（PDF p370） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370
3. JSC-12770 Vol. 3 Shuttle Flight Operations Manual – Environmental Control and Life Support Systems（1979年） 2.2.2節 ARS System Description（PDF p35） — https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=35
4. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 ECLSS 構成品（PDF p357） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/357
5. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表3-6 ECLSS controls (ARS)（続き）（PDF p92） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92
6. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表3-6 ECLSS controls (ARS)（PDF p90） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-154 Management of Degraded Rotating Equipment（PDF p1948） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1948
8. JSC-48027 Rev. F Malfunction Procedures（MAL） EPS 7.5b（続き）（PDF p421） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=421
9. NASA-CR-185524 Vol. 2 Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） C.13-35 ARS-3061X Cabin Fan Assembly（PDF p137） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=137
10. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 図3-12 Cabin air system instrumentation（PDF p75） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=75
11. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Smoke Detection（続き）（PDF p119） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/119
12. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Smoke Detection（PDF p118） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/118

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-28 | 初版作成（公開資料に基づく検討用） |
