# 舵面・推力方向制御駆動（ACT）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-GNC-ACT-001 |
| 表題 | 舵面・推力方向制御駆動（ACT）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-GNC-001 |
| 関連図 | SSD-SYS-ARC-001 図46 GN&C 機能構成 |

## 1. 目的

4台のASAと4台のATVCがGPCの位置指令を各アクチュエータの4つのサーボ弁への指令に変換し、7枚の空力舵面とSSME・SRBのノズルを駆動する機能と、FCSチャネルによる故障の切り離しを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-GNC-ACT-01 | 大気中の再突入では7枚の空力舵面を動かして機体を制御し、各舵面は冗長な電気駆動のサーボ弁で制御される油圧アクチュエータで駆動される（ボディフラップの3台のアクチュエータはサーボ弁を使わず、3系統の油圧系に固定で割り当てられる）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/510） |
| F-GNC-ACT-02 | サーボ弁は後部アビオニクスベイ4・5・6にある4台のASAで制御され、各ASAは各舵面の1つの弁を指令し、ASAの電源スイッチはパネルO14・O15・O16にある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/510） |
| F-GNC-ACT-03 | ASAからサーボ弁への指令と、舵面の位置・圧力のフィードバックをASAへ戻す経路をフライトコントロールチャネルと呼び、各舵面に4チャネルある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/510） |
| F-GNC-ACT-04 | 各エレボンのアクチュエータには3系統の油圧系から圧力が供給され、切替弁により主系統の圧力が約1,200〜1,500 psiaに下がると第1待機系統、さらに第2待機系統へ切り替わる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/510） |
| F-GNC-ACT-05 | サーボ弁の不具合で二次差圧（SEC ΔP）が2,025 psi以上の状態が120ミリ秒を超えると、ASAはそのサーボ弁をバイパスする切り離し指令を出し、FCS CHANNEL警報灯と「FCS CH X」のメッセージで知らせる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/512） |
| F-GNC-ACT-06 | パネルC3の4個のFCS CHANNELスイッチ（OVERRIDE・AUTO・OFF）は高いSEC ΔPによる自動の切り離しを制御し、OFFではそのチャネルを全アクチュエータでバイパスする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/512） |
| F-GNC-ACT-07 | ラダーとスピードブレーキはそれぞれ3台の可逆油圧モータを持ち、差動・混合ギアボックスを介して共通の4台の回転アクチュエータを駆動し、3台のうち2台の油圧モータが故障しても設計速度の約半分で動く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/513） |
| F-GNC-ACT-08 | ボディフラップは胴体後下端の3台のアクチュエータで駆動され、各アクチュエータは1系統の油圧と3台のASAの1台が制御するソレノイド弁を持ち、ボディフラップにはチャネルの切り離し機能はない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/513） |
| F-GNC-ACT-09 | ATVCは後部アビオニクスベイにある4台の装置で、各油圧ジンバルアクチュエータにジンバル指令と故障検出を与え、コールドプレートとフレオン系で冷却される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/514） |
| F-GNC-ACT-10 | 10基のアクチュエータが4つのATVCチャネルの指令電圧に応答し、各FCSチャネルのATVCは6つのSSMEドライバと4つのSRBドライバを持ち、各アクチュエータは4つのATVCから同じ指令を受ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/514） |
| F-GNC-ACT-11 | 各アクチュエータの4つのサーボ弁は力の総和による多数決をとり、誤った指令が所定の時間を超えて続くとATVCが切り離しドライバでそのサーボ弁を外し、残りのチャネルで制御を続ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/515） |
| F-GNC-ACT-12 | SSMEのピッチ作動器は取付けの中立位置から最大10.5°、ヨー作動器は最大8.5°エンジンをジンバルさせ、SRBのロック・チルト軸の±5°はピッチ・ヨーの±7°に相当する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/515） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-GNC-05 | DAP・飛行制御センサ | データ・指令 | 双方向 | 飛行制御ソフトウェアの舵面とSSME・SRBの位置指令を、フライトアフトMDMを経てASAとATVCへ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/513）舵面の位置フィードバックはASAを経て戻り、SOPがエレボン・ラダー・スピードブレーキ・ボディフラップの角度に変換する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/513） | — |
| IF-GNC-09 | GNC運用管理 | データ・指令 | 受信 | 運用飛行規則A8-107に従い、パネルC3のFCS CHANNELスイッチでチャネルをAUTO・OVERRIDE・OFFに切り替え、複数のスイッチを動かすときは2秒の間隔をあける。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1395）SCOMのGNCの経験則も、同じアクチュエータに2つの故障があれば残りのFCSチャネルをOVERRIDEにするとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/542） | — |
| IF-GNC-16 | 主推進系（MPS） | データ・指令 | 送信 | ATVCの4チャネルは各指令に相当するアナログ電圧を作り、SSMEの油圧作動器の4つのサーボ弁へ送ってノズルをジンバルさせる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/514）各SSMEはピッチとヨーの作動器を1基ずつ持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/515） | 上位: IF-ORB-21 |
| IF-GNC-18 | 固体ロケットブースタ（SRB×2） | データ・指令 | 送信 | ATVCは各SRBの2基のTVC作動器へ指令電圧を送り、SRBの作動器はピッチ・ヨーに45°傾いたロック軸とチルト軸でノズルを動かす。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/515）第1段のステアリングは、主にSRBのノズルをジンバルさせて行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/523） | 上位: IF-ORB-22 |
| IF-GNC-20 | 警報系（C/W） | データ・指令 | 送信 | ASAがサーボ弁をバイパスするとパネルF7の黄色のFCS CHANNEL警報灯が、エレボンの位置またはヒンジモーメントが飽和すると赤のFCS SATURATION警報灯が点灯する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/512）主C&Wのハードウェアの表には、FCS SATURATION・FCS CH BYPASSのほか、IMU・ADTA・RGA/AA・L RHC・R/AFT RHC・OMS TVCのチャネルがある。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97） | 上位: IF-ORB-41 |
| IF-APU-10 | 主油圧ポンプ・供給 | 油圧 | 受信 | 3系統の油圧を7面の空力舵面を駆動する油圧アクチュエータへ供給し、4基のエレボンのサーボアクチュエータにはそれぞれ3系統すべての油圧を供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/510）エレボンの切替弁は主系の圧力が約1,200〜1,500 psiaに下がると第1待機系に、さらに第1待機系が下がると第2待機系に切り替える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/510） | 上位: IF-ORB-08 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| GN-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.13節（PDF p510〜515）：4台のASAによる舵面の駆動とFCSチャネルの切り離し、4台のATVCによるSSME・SRBの推力方向制御を解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/510） |
| GN-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A8-104（PDF p1388〜1389）・A8-107（p1393〜1396）・A8-112（p1404）：FCS点検（二次アクチュエータ点検）、FCSチャネルの管理、APU起動前のASAの投入を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1393） |
| GN-05 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | 3.4.5.1節（PDF p174〜176・p180）：油圧作動中に電源を切ってよいASA・ATVCの台数、アクチュエータの最少チャネル数、指令の段差の制限、FCSチャネルスイッチの同時操作の回避を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=174） |
| GN-06 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 7章（PDF p228）：点検のためのエレボンの位置決め（ASAの電源・FCSチャネル・油圧循環ポンプの構成）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=228） |
| GN-07 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | 付録C.2（PDF p44〜50）：ボディフラップ・ラダー/スピードブレーキ・エレボン・主エンジン（ATVC）のアクチュエータの評価で、IOAとNASAの故障モードがすべて一致したとする。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=50） |
| GN-12 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | 飛行制御系（PDF p52）：再突入で全舵面のアクチュエータが正常に動き、二次差圧が等化しきい値内で、位置がGPCの指令に追従したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=52） |
| GN-14 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | 飛行制御系（PDF p53）：SSMEの点火シーケンス中の電気的な異常でASA 1を失い（IFA STS-125-V-02）、FCSチャネル1に給電しないまま再突入したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=53） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 運用実績：STS-125では、SSMEの点火シーケンス中の電気的な異常でASA 1を失い（IFA STS-125-V-02）、FCSチャネル1に給電しないまま再突入した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=53）

> **注記** IOAの中間報告（1988年）は、ボディフラップ・ラダー/スピードブレーキ・エレボン・主エンジン（ATVC）のアクチュエータについて、評価の終了時にIOAとNASAの故障モードがすべて一致したとする。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=47）

> **注記** SODBは、油圧系が作動している間に電源を切ってよいのはASAとATVCそれぞれ2台までとし、飛行制御系は2本の制御系統で運用性能を出すよう設計されたとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=174）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p510） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/510
2. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p512） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/512
3. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p513） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/513
4. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p514） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/514
5. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p515） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/515
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A8-107 FCS Channel Management（PDF p1395） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1395
7. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p542） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/542
8. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p523） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/523
9. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 表7-3 Hardware C&W（PDF p97） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97
10. NSTS-37452 STS-125 Mission Report（2010） Flight Control Subsystem（IFA STS-125-V-02）（PDF p53） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=53
11. NASA-CR-185550 IOA: FMEA/CIL Assessment Interim Report C.2 Body Flap/Rudder Speedbrake/Elevon/ME ATVC/Actuations（PDF p47） — https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=47
12. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） 3.4.5.1 GN&C Subsystems（Primary Flight Control Subsystem）（PDF p174） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=174
13. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
