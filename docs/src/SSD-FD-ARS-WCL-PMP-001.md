# ポンプパッケージ（PMP）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ARS-WCL-PMP-001 |
| 表題 | ポンプパッケージ（PMP）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-WCL-001 |
| 関連図 | SSD-SYS-ARC-001 図36 水冷却ループ 機能構成 |

## 1. 目的

各水冷却ループのポンプパッケージ（ループ1は遠心ポンプ2台、ループ2は1台）で水を循環させ、逆止弁で非運転ポンプへの逆流を防ぎ、GN2で加圧したアキュムレータでポンプ入口の圧力を保って熱膨張を吸収する機能と、ポンプの電源・諸元・故障時の扱いを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ARS-WCL-PMP-01 | 水冷却ループ1（予備）はポンプ2台、ループ2（常用）は1台を持ち、ポンプは前方ロッカー下のECLSSベイにある三相115 V AC電動機駆動の遠心ポンプである（訓練マニュアル3.3.1節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=68） |
| F-ARS-WCL-PMP-02 | ループ1では各ポンプ下流の玉形の逆止弁が、非運転ポンプを通る逆流を防ぐ（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/378） |
| F-ARS-WCL-PMP-03 | アキュムレータはループの熱による容積変化を補い、ポンプの押込み圧を保ってキャビテーションを防ぎ、ベローズが伸び切ると水量は1.81 lb、底付きでも0.19 lbが残る（訓練マニュアル3.3.1節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=68） |
| F-ARS-WCL-PMP-04 | 各ループのアキュムレータはGN2で19〜35 psiに加圧され、ポンプ入口に正圧を与え、熱膨張を吸収し、ポンプの起動・停止時の圧力変動を抑える（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/380） |
| F-ARS-WCL-PMP-05 | ポンプの設計圧は90 psig、耐圧は135 psig、流量範囲は970±15 lb/hr、入口圧は18〜35 psig、昇圧は46.5±1.2 psidで、アキュムレータの容積は56 in³、ループの容積（アキュムレータを除く）は1,810 in³、水量は65.3 lbである（訓練マニュアル3.6.5節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=94） |
| F-ARS-WCL-PMP-06 | ループ1のポンプAはAC1、ポンプBはAC2、ループ2のポンプはAC3の三相電力を、パネルL4の各3個の遮断器からパネルL1のH2O PUMPスイッチを通して受け、AC1の遮断器はループ2のGPC位置の電源も兼ねる（訓練マニュアル表3-6）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=91） |
| F-ARS-WCL-PMP-07 | ループ2のポンプはON位置ではAC3から給電され、上昇・再突入でBFSがペイロードMDMを制御しているときはGPC位置でAC1から給電されるため、ポンプが1台のループ2でもAC3を失ったときに給電を保てる（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/404） |
| F-ARS-WCL-PMP-08 | SODBは、1相を失った水ポンプを停止し（フレオンとの流量の不整合と消費電力の増加を避けるため。必要なら再起動できる）、ポンプの最低入口圧を18.0 psia（下回るとキャビテーションのおそれ）とする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=215） |
| F-ARS-WCL-PMP-09 | ポンプは水の流れで自らを冷却するため、流路が極端に、または完全に閉塞すると数分で過熱して故障する（MAL 6.4l）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=308） |
| F-ARS-WCL-PMP-10 | 通常のアキュムレータ量はループ1で約45%、ループ2で約55%である（MAL 6.4l）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=307） |
| F-ARS-WCL-PMP-11 | アキュムレータのベローズが破れてGN2と水が混ざると、ループを動かしたときに窒素の泡がポンプを通って運転が不安定になるため、そのループを喪失とみなす（A18-101E）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2060） |
| F-ARS-WCL-PMP-12 | IOAのCIL評価（1988年）は、アキュムレータ（ARS-108）が故障してもポンプの揚程でループを運転できるとのNASA担当者の見解に同意し、指摘を取り下げた。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=104） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-WCL-01 | アビオニクス冷却経路 | 推進薬・流体 | 送信 | ポンプパッケージを出た水は、Av Bay 1、Av Bay 2と窓、MDMとAv Bay 3A・3Bの3つの並列経路に分かれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/378） | — |
| IF-WCL-04 | 冷側熱交換器 | 推進薬・流体 | 受信 | 冷側の熱交換器を出た水は、バイパス流と合流してポンプパッケージへ戻る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=67） | — |
| IF-WCL-05 | インターチェンジャ・バイパス制御 | 推進薬・流体 | 受信 | バイパス経路の温水はインターチェンジャと冷側の熱交換器を迂回してポンプパッケージで冷側の水と合流し、その量でポンプ出口の混合水温が決まる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/379） | — |
| IF-WCL-06 | インターチェンジャ・バイパス制御 | データ・指令 | 送信 | 自動モードでは、バイパス制御器がポンプ出口温度を設定値63.0±2.5°Fと比べてバイパス弁を開閉する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/379） | — |
| IF-WCL-07 | ループ計測・警報 | 推進薬・流体 | 送信 | ポンプパッケージのアキュムレータ量、ポンプ出口圧、ポンプ出口温度、ポンプ差圧のセンサで計測する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） | — |
| IF-WCL-09 | ループ運用管理 | データ・指令 | 受信 | パネルL1のH2O PUMP LOOP 1のA/B選択スイッチと、LOOP 1・2のGPC/OFF/ONスイッチで、運転するポンプを選び起動・停止する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90） | — |
| IF-WCL-12 | 電力系（EPS） | 電力（28 VDC） | 受信 | ループ1のポンプAにAC1、ポンプBにAC2、ループ2のポンプにAC3の三相電力を、パネルL4の遮断器とパネルL1のH2O PUMPスイッチを通して供給する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=91）ループ2のポンプはGPC位置ではAC1から給電され、AC3を失っても運転を続けられる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/404） | 上位: IF-ARS-36 |
| IF-WCL-15 | DPS・アビオニクス | データ・指令 | 受信 | GPC位置では、SM GPCがPL MDM 1を通してループ1のポンプを、PL MDM 2を通してループ2のポンプを指令し、軌道上は6分ON・4時間OFFを繰り返す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=86）OPS 1・3・6ではループ2のGPC-ON指令がBFSに常駐し、GPC位置にすると直ちにポンプが動く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/378） | 上位: IF-ARS-30 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| WL-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.3.1節（PDF p68）と3.6.5節（p94）：ループ1のポンプ2台・ループ2の1台（遠心、三相115 V AC）、玉形の逆止弁、N2で加圧したアキュムレータ（1.81 lb／0.19 lb）と、ポンプの設計圧・流量・昇圧などの諸元を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=68） |
| WL-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p377〜380）：ループ1のポンプ2台・ループ2の1台（三相117 V AC）、ループ1の玉形の逆止弁、GN2で19〜35 psiに加圧したアキュムレータを示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/378） |
| WL-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A18-101A・E（PDF p2059〜2060）：アキュムレータ量0%（キャビテーション）と、ベローズ破損によるGN2と水の混合をループ喪失の条件とする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2060） |
| WL-04 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.4l・6.4n（PDF p307〜314）：通常のアキュムレータ量（約45%・55%）、流路の閉塞によるポンプの過熱、アキュムレータのGN2漏れ・ベローズ破損の判定を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=308） |
| WL-08 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS | 各ループのアキュムレータがポンプ入口に正圧を与えて熱膨張と圧力変動を吸収し、GN2で19〜35 psiに加圧されると記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| WL-10 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | 稼働ループの流量970±15 lb/hrと、アキュムレータの水量（最大1.81 lb、最小0.19 lb）を記す。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| WL-12 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | ARS-108（C.13-2、PDF p104）：アキュムレータが故障してもポンプの揚程でループを運転できるとのNASA担当者の見解にIOAが同意し、指摘を取り下げたと記す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=104） |
| WL-15 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.2.2節（PDF p37）：ループ1のポンプ下流の玉形の逆止弁と、ポンプの差圧が通常約49.3±1.2 psidであることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37） |
| WL-16 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | 3.4.6.1節（PDF p215）：1相を失ったら水ポンプを止め、最低入口圧を18.0 psia（下回るとキャビテーションのおそれ）とする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=215） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：ポンプの昇圧（差圧）を、訓練マニュアル（3.6.5節）は46.5±1.2 psid、1979年の飛行運用マニュアル（PDF p37）は通常約49.3±1.2 psidとし、MALのSM警報の限界は33〜46 psidである（PDF p307）。本書は訓練マニュアルの値を用いた。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37）

> **注記** 検証メモ：水ポンプの電動機の電圧を、訓練マニュアル（3.3.1節）は三相115 V AC、SCOM（PDF p377）は三相117 V ACとする（親文書SSD-FD-ARS-WCL-001の検証メモと同じ相違）。本書は訓練マニュアルに従った。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/377）

## 6. 参考文献

1. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.3.1〜3.3.5節 Water Pumps〜Water/Freon Interchanger（PDF p68） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=68
2. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Water Loop Pumps・Water Loop Flow（PDF p378） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/378
3. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Accumulator・H2O PUMP OUT PRESS・Caution and Warning（PDF p380） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/380
4. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.6.5節 ARS Systems Performance, Limitations, and Capabilities（PDF p94） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=94
5. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表3-6 ECLSS controls (ARS)（続き）（PDF p91） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=91
6. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Operations（Atmospheric Revitalization System）（PDF p404） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/404
7. JSC-08934 Vol. 1 Rev. E Shuttle Operational Data Book – Shuttle Systems Performance and Constraints Data（1988年） 3.4.6.1節 Atmospheric Revitalization Subsystem（Water Coolant Loops・Pump Operations）（PDF p215） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=215
8. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.4l H2O PUMP P（続き）（PDF p308） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=308
9. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.4l H2O PUMP P（PDF p307） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=307
10. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-101E ARS Water Loop（続き）（PDF p2060） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2060
11. NASA-CR-185524 Vol. 2 Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） C.13-2 ARS-108 Accumulator（PDF p104） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=104
12. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.3節 図3-7 H2O coolant loop 1（PDF p67） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=67
13. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Water Loop Flow（続き）・Bypass Control（PDF p379） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/379
14. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.5節 ARS Instrumentation and Displays（PDF p74） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74
15. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表3-6 ECLSS controls (ARS)（PDF p90） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90
16. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.6.3節 Special Features（PDF p86） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=86
17. JSC-12770 Vol. 3 Shuttle Flight Operations Manual – Environmental Control and Life Support Systems（1979年） 2.2.2節 ARS System Description（水冷却ループ）（PDF p37） — https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37
18. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Water Coolant Loop System（PDF p377） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/377

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
