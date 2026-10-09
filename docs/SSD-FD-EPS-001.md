# 電力系（EPS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-EPS-001 |
| 表題 | 電力系（EPS）機能説明書 |
| 版・日付 | Rev. L／2026-10-03 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図2 オービタ サブシステム構成 |

## 1. 目的

電力系の機能と、全負荷への給電およびECLSSとのインタフェースを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-EPS-01 | EPSは、反応剤貯蔵・分配（PRSD）、燃料電池発電装置、電力分配・制御（EPDC）の3サブシステムから成る。（出典: https://www.spaceshuttleguide.com/system/electrical.htm） |
| F-EPS-02 | PRSDは極低温の水素と酸素を貯蔵して3基の燃料電池へ供給し、あわせて乗員室の与圧用に極低温酸素をECLSSへ供給する。（出典: https://www.spaceshuttleguide.com/system/electrical.htm） |
| F-EPS-03 | 3基の燃料電池は、打上げから着陸後の滑走終了まで、機体の28 V直流電力のすべてを発電する。（出典: https://www.spaceshuttleguide.com/system/electrical.htm） |
| F-EPS-04 | 3基の燃料電池は独立した電源として動作し、それぞれが分離された28 V直流母線に同時に給電する。（出典: https://chemistry.beloit.edu/edetc/nanolab/fuelcell2/NASA%20Space%20Shuttle%20Fuel%20Cell%20Power%20Plants%20(2002).pdf） |
| F-EPS-05 | 基本構成での3基の燃料電池の能力は、合計で平均14 kW、ピーク最大24 kWである（1975年の設計論文）。（出典: https://ntrs.nasa.gov/citations/19750026405） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ORB-09 | 環境制御・生命維持（ECLSS） | 推進薬・流体 | 送信 | 反応剤貯蔵・分配（PRSD）サブシステムは、乗員室の与圧用に極低温酸素をECLSSへ供給する。（出典: https://www.spaceshuttleguide.com/system/electrical.htm） | 下位: IF-ECL-01 |
| IF-ORB-10 | 環境制御・生命維持（ECLSS） | 推進薬・流体 | 送信 | 燃料電池の生成水は乗員室下部デッキの飲料水タンクへ送られ、乗員の飲用やフレオン冷却ループの冷却に使われる。（出典: https://chemistry.beloit.edu/edetc/nanolab/fuelcell2/NASA%20Space%20Shuttle%20Fuel%20Cell%20Power%20Plants%20(2002).pdf） | 下位: IF-ECL-10 |
| IF-ORB-11 | 環境制御・生命維持（ECLSS） | 熱 | 送信 | 燃料電池の排熱は、熱交換器を通じてフレオン冷却ループへ移される。（出典: https://www.american-spacecraft.org/documents/sp-407/chapter-3.html） | 下位: IF-ECL-09 |
| IF-ORB-14 | 全負荷（CT・DPS・GNC・RCS・ECLSS・APU・OMS・MPS・MECH・CW・PLS） | 電力（28 VDC） | 送信（給電） | 3基の燃料電池は、打上げから着陸後の滑走終了まで、機体の28 V直流電力のすべてを発電する。（出典: https://www.spaceshuttleguide.com/system/electrical.htm）3基の燃料電池は独立した電源として動作し、それぞれが分離された28 V直流母線に同時に給電する。（出典: https://chemistry.beloit.edu/edetc/nanolab/fuelcell2/NASA%20Space%20Shuttle%20Fuel%20Cell%20Power%20Plants%20(2002).pdf） | 下位: IF-ECL-16 下位: IF-EPS-11 下位: IF-EPS-12 下位: IF-TCS-20 下位: IF-ECL-39 下位: IF-ECL-40 下位: IF-ECL-41 下位: IF-ECL-42 下位: IF-ECL-43 下位: IF-GNC-11 下位: IF-GNC-12 下位: IF-DPS-02 下位: IF-MPS-05 下位: IF-MPS-06 下位: IF-OMS-12 下位: IF-OMS-13 下位: IF-RCS-09 下位: IF-RCS-10 下位: IF-RCS-11 下位: IF-APU-17 下位: IF-APU-18 下位: IF-CT-12 下位: IF-CT-13 下位: IF-CW-01 下位: IF-PLS-01 下位: IF-PLS-02 下位: IF-MECH-01 |
| IF-ORB-20 | データ処理系（DPS） | データ・指令 | 双方向 | GPCは燃料電池のパージ配管ヒータを制御し、配管温度を確認した後、燃料電池1・2・3のパージ弁を順に2分間開閉する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/326）燃料電池の冷却材圧力やスタック温度などはSM SPEC 69に表示され、燃料電池・スタック温度が上下限を超えるとSM警報のライトが点灯する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/327） | 下位: IF-EPS-09 |
| IF-ORB-27 | 外部タンク（ET） | 電力（28 VDC） | 送信 | EPSは、地上支援設備に接続していないときに、オービタ、外部タンク、SRB、ペイロードが必要とする電力をすべてまかなう。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/311）電力分配・制御（EPDC）は、交流・直流電力をオービタの各系、SRB、外部タンク、ペイロードへ制御・分配する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/330） | 上位: IF-SYS-08 下位: IF-EPS-11 |
| IF-ORB-28 | 固体ロケットブースタ（SRB×2） | 電力（28 VDC） | 送信 | EPSは、地上支援設備に接続していないときに、オービタ、外部タンク、SRB、ペイロードが必要とする電力をすべてまかなう。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/311）電力分配・制御（EPDC）は、交流・直流電力をオービタの各系、SRB、外部タンク、ペイロードへ制御・分配する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/330） | 上位: IF-SYS-03 下位: IF-EPS-11 |
| IF-ORB-30 | 打上げ処理システム（KSC） | 推進薬・流体 | 受信 | 打上げ前は地上支援設備が燃料電池の反応剤を補給して搭載量を満たし、T-2分35秒で充填を終える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/347） | 上位: IF-SYS-09 下位: IF-EPS-01 |
| IF-ORB-31 | 打上げ処理システム（KSC） | 電力（28 VDC） | 受信 | 後部電力制御組立の電力接触器は、燃料電池が給電を引き継ぐまで、地上から供給される28 V直流電力をT-0アンビリカルを通じてオービタへ配電する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/338） | 上位: IF-SYS-09 下位: IF-EPS-02 |
| IF-ORB-35 | 環境制御・生命維持（ECLSS） | 熱 | 受信 | 前方アビオニクスベイ1〜3の電力制御組立・負荷制御組立・モータ制御組立・インバータはコールドプレートに搭載され、水冷却ループで冷却される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/340）中胴の電気部品はコールドプレートに取り付けられフレオン21ループで冷却され、前部アビオニクスベイ1〜3の電力・負荷・モータ制御組立とインバータは水冷却ループで冷却され、インバータ配電組立は空冷である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/340） | 下位: IF-ECL-33 下位: IF-EPS-14 |
| IF-ORB-41 | 警報系（C/W） | データ・指令 | 送信 | C/W系は、APU、データ処理系、ECLSS、電力系、飛行制御系、誘導・航法、油圧、主推進系、RCS、OMS、ペイロードとインタフェースを持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/113）主C/Wは、信号調整器または飛行前方MDMを経由してトランスデューサから最大120の入力を受ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115） | 下位: IF-GNC-20 下位: IF-DPS-11 下位: IF-MPS-07 下位: IF-MPS-08 下位: IF-OMS-14 下位: IF-OMS-15 下位: IF-OMS-16 下位: IF-RCS-12 下位: IF-RCS-13 下位: IF-RCS-14 下位: IF-RCS-15 下位: IF-APU-15 下位: IF-APU-16 下位: IF-CW-02 下位: IF-CW-03 |
| IF-ECL-01 | 圧力制御系（PCS／ARPCS） | 推進薬・流体 | 送信 | ARPCSは酸素・窒素の2ガス方式で、酸素は反応剤貯蔵・分配（PRSD）サブシステムから得る。（出典: https://ntrs.nasa.gov/citations/19750056784）PRSDは、燃料電池とARPCSへ極低温の水素・酸素を貯蔵・分配する。（出典: https://ntrs.nasa.gov/citations/19900001602） | 上位: IF-ORB-09 下位: IF-EPS-04 |
| IF-ECL-09 | 能動熱制御系（ATCS） | 熱 | 送信 | ATCSは、各燃料電池の熱交換器から熱を受け取る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/319） | 上位: IF-ORB-11 下位: IF-EPS-07 下位: IF-TCS-02 |
| IF-ECL-10 | 給水・廃水系（H2O） | 推進薬・流体 | 送信 | 給水系は燃料電池の生成水を貯蔵し、生成水は水素分離器を通って余剰水素の85%が除去される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/394） | 上位: IF-ORB-10 下位: IF-EPS-06 |
| IF-ECL-16 | エアロック支援系（ALS） | 電力（28 VDC） | 送信 | エアロック盤AW18Hは、主母線AまたはBの28 VDCから17±0.5 VDC・5 AをEMUへ供給し、EVA後はPLSSのバッテリを充電する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html） | 上位: IF-ORB-14 下位: IF-ALS-05 下位: IF-ALS-08 下位: IF-ALS-09 |
| IF-ECL-33 | 大気再生系（ARS） | 熱 | 受信 | 前方アビオニクスベイ1〜3のインバータ分配組立は空冷である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/340）前方アビオニクスベイ1〜3の電力制御組立・負荷制御組立・モータ制御組立・インバータはコールドプレートに搭載され、水冷却ループで冷却される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/340） | 上位: IF-ORB-35 下位: IF-ARS-18 下位: IF-ARS-21 |
| IF-ECL-39 | 大気再生系（ARS） | 電力（28 VDC） | 送信 | キャビンファンは三相115 V AC電動機（495 W）で駆動される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370）ベイファンは三相交流母線から給電され、各ベイの2台のファンは別々の母線につながる（ベイ1のファンA・BはAC1・AC2、ベイ2はAC2・AC3、ベイ3はAC3・AC1）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=261） | 上位: IF-ORB-14 下位: IF-ARS-32 下位: IF-ARS-33 下位: IF-ARS-34 下位: IF-ARS-35 下位: IF-ARS-36 下位: IF-ARS-38 下位: IF-ARS-40 |
| IF-ECL-40 | 煙検知・消火系（FDS） | 電力（28 VDC） | 送信 | 感知器には、パネルO14・O15・O16のSMOKE DETN遮断器から、主母線A（L/R FLT DK、BAY 2A/3B）・B（BAY 1B/3A）・C（CABIN、BAY 1A/2B）の電力を供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/121）各ベイのボトルのPICには、FIRE SUPPR BAY 1（主母線B、O15）・BAY 2（主母線C、O16）・BAY 3（主母線A、O14）の遮断器から電力を供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/121） | 上位: IF-ORB-14 下位: IF-FDS-04 下位: IF-FDS-10 |
| IF-ECL-41 | 給水・廃水系（H2O） | 電力（28 VDC） | 送信 | パネルML86BのA・B列の遮断器は、パネルR11L・ML31Cで操作する給水・廃水系の電動弁を駆動する電力を供給する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=153）パネルML86BのMNA H2O LINE HTR A・MNB H2O LINE HTR B遮断器から、給水・廃水ダンプ配管のヒータへ給電する（同じ遮断器が給電する真空ベント配管のヒータは廃棄物収集系のIF-WCS-11で扱う）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=153） | 上位: IF-ORB-14 下位: IF-H2O-06 下位: IF-H2O-11 |
| IF-ECL-42 | 圧力制御系（PCS／ARPCS） | 電力（28 VDC） | 送信 | O14のMNAとO15のMNBにあるO2/N2 CNTLRの遮断器が、O2/N2コントローラ1・2に給電する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=39）O15のMNBのPPO2 C CAB dP/dT遮断器が、dP/dTセンサとPPO2センサCの電源に主母線Bの電力を供給する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=52） | 上位: IF-ORB-14 下位: IF-PCS-18 下位: IF-PCS-19 下位: IF-PCS-20 下位: IF-PCS-21 下位: IF-PCS-22 |
| IF-ECL-43 | 廃棄物収集系（WCS） | 電力（28 VDC） | 送信 | ファンセパレータ1・2に、パネルMA73CのAC1・AC2 WCS FAN SEP遮断器（計6個）から三相交流を、パネルML86BのMNA・MNB WCS CNTLR遮断器から制御用の直流を供給する。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=487）真空ベント隔離弁にはMNAまたはMNBの直流を、真空ベント管のA・BヒータにはパネルML86BのH2O LINE HTR A・B遮断器から電力を供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/760） | 上位: IF-ORB-14 下位: IF-WCS-10 下位: IF-WCS-11 |
| IF-TCS-02 | 熱交換器・コールドプレート網 | 熱 | 送信 | フレオンは燃料電池熱交換器と中胴のコールドプレート網を並列に流れ、燃料電池の排熱を受け取る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382） | 上位: IF-ECL-09 |
| IF-TCS-20 | 受動熱制御（断熱・ヒータ・パージ） | 電力（28 VDC） | 送信 | OMS/RCSポッドの推進薬は電気のストリップヒータで凍結から守られ、A・B2系統のヒータがサーモスタットで55〜75°Fに制御される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/659）燃料電池の生成水配管とリリーフ配管には、凍結防止用のサーモスタット制御ヒータが2系統ある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/324） | 上位: IF-ORB-14 |

## 4. 下位文書

| 文書番号 | 表題 |
|---|---|
| [SSD-FD-EPS-PRSD-001](SSD-FD-EPS-PRSD-001.md) | 反応剤貯蔵・分配（PRSD）機能説明書 |
| [SSD-FD-EPS-FCP-001](SSD-FD-EPS-FCP-001.md) | 燃料電池発電装置（FCP）機能説明書 |
| [SSD-FD-EPS-DC-001](SSD-FD-EPS-DC-001.md) | 直流配電（EPDC-DC）機能説明書 |
| [SSD-FD-EPS-AC-001](SSD-FD-EPS-AC-001.md) | 交流発電・配電（EPDC-AC）機能説明書 |

## 5. 注記（出典間の相違・構成変更）

> **注記** 飛行フェーズとアボートモードごとの本系の稼働は、[SSD-OPS-PHASE-001](SSD-OPS-PHASE-001.md) の6節（ACT-EPS-01〜ACT-EPS-04）と図39 に示す。

> **注記** 電力系の要求（L2）と、本書と下位文書の機能行とのトレースは [SSD-REQ-EPS-001](SSD-REQ-EPS-001.md) に示す。

> **注記** PRSD の CIL 項目と機能行・IF の対応は [SSD-FMEA-ORB-001](SSD-FMEA-ORB-001.md) の5章に示す。

> **注記** 出典の更新（1988年版・転載版 → SCOM OI-33）：1988年版の資料は、反応剤の圧力や燃料電池の温度などがCRTに表示され、限界値を超えるとSM警報が出るとしていた。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/327）

> **注記** 出典の更新（1988年版・転載版 → SCOM OI-33）：1988年版の資料は、前部アビオニクスベイの配電組立が水冷却ループで冷却されるとしていた。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/340）

> **注記** 出典の更新（1988年版・転載版 → SCOM OI-33）：1988年版の資料は、フレオンが3基の燃料電池熱交換器を並列に流れるとしていた。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382）

> **注記** 燃料電池の冷却喪失の処置（A9-1・A9-55・A9-60・A9-107）の活動図（図81）は [SSD-BEH-ORB-002](SSD-BEH-ORB-002.md) に示す（SysML v2 テキスト：SysML/SSD-BEH-ORB-002.sysml）。

> **注記** EPS の機器（燃料電池・反応剤タンク・母線・インバータ）の接続と、流れる反応剤・電力・水・熱の量は [SSD-IBD-ORB-001](SSD-IBD-ORB-001.md) に示す（SysML v2 テキスト：SysML/SSD-IBD-ORB-001.sysml）。

## 6. 参考文献

1. Space Shuttle Guide – Electrical System — https://www.spaceshuttleguide.com/system/electrical.htm
2. NASA Space Shuttle Fuel Cell Power Plants（2002、Beloit College 転載） — https://chemistry.beloit.edu/edetc/nanolab/fuelcell2/NASA%20Space%20Shuttle%20Fuel%20Cell%20Power%20Plants%20(2002).pdf
3. NTRS 19750026405 Electrical power generation subsystem for Space Shuttle Orbiter — https://ntrs.nasa.gov/citations/19750026405
4. NASA SP-407 Space Shuttle, Chapter 3 Space Shuttle Vehicle — https://www.american-spacecraft.org/documents/sp-407/chapter-3.html
5. NSTS 1988 News Reference Manual – Electrical Power System（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eps.html
6. NTRS 19750056784 The shuttle orbiter cabin atmospheric revitalization systems — https://ntrs.nasa.gov/citations/19750056784
7. NTRS 19900001602 IOA: Analysis of the EPG/PRSD subsystem — https://ntrs.nasa.gov/citations/19900001602
8. NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html
9. NSTS 1988 News Reference Manual – Airlock Support（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html
10. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p311） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/311
11. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p330） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/330
12. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p338） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/338
13. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p340） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/340
14. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p113） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/113
15. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Caution and Warning Power Supply（PDF p115） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115
16. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p370） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370
17. JSC-48027 Rev. F Malfunction Procedures（MAL）6.1b AV BAY TEMP（PDF p261） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=261
18. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Fire and Smoke Subsystem Control Circuit Breakers・携帯消火器（PDF p121） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/121
19. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 5.5節 Supply and Wastewater System Controls（続き）（PDF p153） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=153
20. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 2.6.1節 Instrumentation（PDF p39） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=39
21. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表2-1 ECLSS pressurization controls（続き、O14・O15の遮断器）（PDF p52） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=52
22. JSC-48025 Rev. F PCN-13 In-Flight Maintenance (IFM) Checklist W-61 WCS Failed Commode Cntl Vlv（PDF p487） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=487
23. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.25節 Vacuum Vent System・Alternative Waste Collection（PDF p760） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/760
24. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p326） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/326
25. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p327） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/327
26. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p347） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/347
27. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p319） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/319
28. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Supply Water System（PDF p394） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/394
29. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Active Thermal Control System（Freon Loops）（PDF p382） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382
30. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p659） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/659
31. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p324） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/324

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-25 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-25 | ECLSS機能とのIF（IF-ECL-01・09・10・16）を追記 |
| Rev. B | 2026-09-25 | 下位機能説明書（4件）と図6・図7への索引、IF-ORB-20・IF-TCS-02・IF-TCS-20を追記 |
| Rev. C | 2026-09-30 | 上位の IF の補完に伴い IF-ORB-27・IF-ORB-28・IF-ORB-30・IF-ORB-31・IF-ORB-35・IF-ORB-41・IF-ECL-33 を追加、IF-ORB-14 の負荷に MECH・CW・PLS を追加（Rev. I） |
| Rev. D | 2026-10-01 | 運用フェーズ・モードの定義書 SSD-OPS-PHASE-001 と図39 への参照を注記（Rev. J） |
| Rev. E | 2026-10-01 | 要求文書 SSD-REQ-EPS-001 への参照を注記（Rev. K） |
| Rev. F | 2026-10-01 | IF-ECL-39 を追加、IF-ECL-40 を追加、IF-ECL-41 を追加、IF-ECL-42 を追加、IF-ECL-43 を追加、IF-ORB-14 に下位 IF-ECL-39・IF-ECL-40・IF-ECL-41・IF-ECL-42・IF-ECL-43 を付記、IF-ECL-16 の上位・下位を所有文書（SSD-FD-ECL-ALS-001）にそろえた（Rev. M） |
| Rev. G | 2026-10-01 | PRSD の CIL 項目の対応（SSD-FMEA-ORB-001）への参照を注記（Rev. P） |
| Rev. H | 2026-10-01 | 出典を乗員運用マニュアル（SCOM、OI-33）の頁に更新（9文。うち本文を改めた3文に注記）（Rev. Q） |
| Rev. I | 2026-10-01 | IF-ORB-14 に下位 IF（IF-GNC-11 ほか14件）を付記、IF-ORB-41 に下位 IF（IF-GNC-20 ほか13件）を付記（Rev. R） |
| Rev. J | 2026-10-02 | IF-ORB-14 に下位 IF（IF-CW-01 ほか4件）を付記、IF-ORB-41 に下位 IF（IF-CW-02・IF-CW-03）を付記（Rev. V） |
| Rev. K | 2026-10-02 | 活動定義書 SSD-BEH-ORB-002 への参照を注記（Rev. AA） |
| Rev. L | 2026-10-03 | 内部ブロック・流れ定義書 SSD-IBD-ORB-001 への参照を注記（Rev. AN） |
