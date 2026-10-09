# 補助動力装置・油圧系（APU/HYD）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-APU-001 |
| 表題 | 補助動力装置・油圧系（APU/HYD）機能説明書 |
| 版・日付 | Rev. L／2026-10-04 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図2 オービタ サブシステム構成 |

## 1. 目的

APU/油圧系の機能と、MPS・GN&C（空力舵面）・ECLSSとのインタフェースを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-APU-01 | オービタには独立した3系統の油圧系がある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/83） |
| F-APU-02 | 各系統は、SSMEのジンバルによる推力方向制御、SSMEの各種制御弁、空力舵面（エレボン、ボディフラップ、ラダー／スピードブレーキ）、外部タンク切離しアンビリカルの格納、降着装置の展開、主脚ブレーキとアンチスキッド、前輪操向に油圧を供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/83） |
| F-APU-03 | 3台の同一で独立した改良型APUが、油圧系に動力を供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/83） |
| F-APU-04 | APUはヒドラジン燃料のタービン駆動装置で、軸動力で油圧ポンプを回し、1台の質量は約88 lb、出力は135馬力である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/83） |
| F-APU-05 | 3台のAPUは打上げ5分前から上昇段階を通して作動し、最初のOMS噴射の後に停止される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/104） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ORB-07 | 主推進系（MPS） | 油圧 | 送信 | 各油圧系は、SSMEのジンバルによる推力方向制御と、SSMEの各種制御弁の作動に油圧を供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/83） | 下位: IF-APU-09 |
| IF-ORB-08 | 誘導・航法・制御（GN&C） | 油圧 | 送信 | 各油圧系は、空力舵面（エレボン、ボディフラップ、ラダー／スピードブレーキ）の駆動に油圧を供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/83） | 下位: IF-APU-10 |
| IF-ORB-12 | 環境制御・生命維持（ECLSS） | 熱 | 受信 | 各油圧系は油圧／フレオン熱交換器を備える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/83）軌道上では、油圧作動油はフレオンループの熱で保温される。（出典: https://www.american-spacecraft.org/documents/sp-407/chapter-3.html） | 下位: IF-ECL-11 |
| IF-ORB-14 | 電力系（EPS） | 電力（28 VDC） | 受信（受電） | 3基の燃料電池は、打上げから着陸後の滑走終了まで、機体の28 V直流電力のすべてを発電する。（出典: https://www.spaceshuttleguide.com/system/electrical.htm）3基の燃料電池は独立した電源として動作し、それぞれが分離された28 V直流母線に同時に給電する。（出典: https://chemistry.beloit.edu/edetc/nanolab/fuelcell2/NASA%20Space%20Shuttle%20Fuel%20Cell%20Power%20Plants%20(2002).pdf） | 下位: IF-ECL-16 下位: IF-EPS-11 下位: IF-EPS-12 下位: IF-TCS-20 下位: IF-ECL-39 下位: IF-ECL-40 下位: IF-ECL-41 下位: IF-ECL-42 下位: IF-ECL-43 下位: IF-GNC-11 下位: IF-GNC-12 下位: IF-DPS-02 下位: IF-MPS-05 下位: IF-MPS-06 下位: IF-OMS-12 下位: IF-OMS-13 下位: IF-RCS-09 下位: IF-RCS-10 下位: IF-RCS-11 下位: IF-APU-17 下位: IF-APU-18 下位: IF-CT-12 下位: IF-CT-13 下位: IF-CW-01 下位: IF-PLS-01 下位: IF-PLS-02 下位: IF-MECH-01 |
| IF-ORB-23 | データ処理系（DPS） | データ・指令 | 双方向 | 各燃料タンクの温度と窒素圧力はAPU制御器が監視してGPCへ送り、GPCが燃料量を計算して専用表示器に示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/85）循環ポンプのスイッチをGPC位置にすると、SM GPCが油圧配管温度やアキュムレータ圧力に基づく制御プログラムでポンプを入り切りする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/103） | 下位: IF-APU-12 下位: IF-APU-13 下位: IF-APU-14 下位: IF-APU-25 |
| IF-ORB-39 | 機械系（MECH） | 油圧 | 送信 | 脚下げを指令すると、油圧系1の圧力で各脚のアップロックフックが外れる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/544）4つの主脚ブレーキにはそれぞれ2系統の油圧系から圧力を供給し、油圧系1・2の圧力が約1,000 psiを下回ると切替弁で油圧系3に切り替わる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/548）油圧系1・2は、前輪操舵系NWS 1・2のいずれにも冗長な油圧を供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/551） | 下位: IF-APU-11 |
| IF-ORB-41 | 警報系（C/W） | データ・指令 | 送信 | C/W系は、APU、データ処理系、ECLSS、電力系、飛行制御系、誘導・航法、油圧、主推進系、RCS、OMS、ペイロードとインタフェースを持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/113）主C/Wは、信号調整器または飛行前方MDMを経由してトランスデューサから最大120の入力を受ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115） | 下位: IF-GNC-20 下位: IF-DPS-11 下位: IF-MPS-07 下位: IF-MPS-08 下位: IF-OMS-14 下位: IF-OMS-15 下位: IF-OMS-16 下位: IF-RCS-12 下位: IF-RCS-13 下位: IF-RCS-14 下位: IF-RCS-15 下位: IF-APU-15 下位: IF-APU-16 下位: IF-CW-02 下位: IF-CW-03 |
| IF-ECL-11 | 能動熱制御系（ATCS） | 熱 | 双方向 | 軌道上の循環時はフレオン21ループがフレオン／油圧作動油熱交換器で油圧作動油を加温する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/102） | 上位: IF-ORB-12 下位: IF-TCS-03 |
| IF-TCS-03 | 熱交換器・コールドプレート網 | 熱 | 双方向 | 軌道上の循環時はフレオンがフレオン／油圧作動油熱交換器で油圧作動油を加温する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/102） | 上位: IF-ECL-11 |

## 4. 下位文書

| 文書番号 | 表題 |
|---|---|
| [SSD-FD-APU-FUL-001](SSD-FD-APU-FUL-001.md) | ヒドラジン燃料供給（FUL）機能説明書 |
| [SSD-FD-APU-TRB-001](SSD-FD-APU-TRB-001.md) | タービン・ギアボックス（TRB）機能説明書 |
| [SSD-FD-APU-CTL-001](SSD-FD-APU-CTL-001.md) | APU制御器（CTL）機能説明書 |
| [SSD-FD-APU-HYD-001](SSD-FD-APU-HYD-001.md) | 主油圧ポンプ・供給（HYD）機能説明書 |
| [SSD-FD-APU-CIR-001](SSD-FD-APU-CIR-001.md) | 循環ポンプ・熱調整（CIR）機能説明書 |
| [SSD-FD-APU-WSB-001](SSD-FD-APU-WSB-001.md) | 水噴霧ボイラ（WSB）機能説明書 |
| [SSD-FD-APU-OPS-001](SSD-FD-APU-OPS-001.md) | APU/HYD運用管理（OPS）機能説明書 |

機能の構成は SSD-SYS-ARC-001 図56 APU/HYD 機能構成、関係する公開文書は SSD-APU-REF-001（図57 APU/HYD 関連文書マトリクス）に示す。

## 5. 注記（出典間の相違・構成変更）

> **注記** 飛行フェーズとアボートモードごとの本系の稼働は、[SSD-OPS-PHASE-001](SSD-OPS-PHASE-001.md) の6節（ACT-APU-01〜ACT-APU-12）と図39 に示す。

> **注記** 出典の更新（1988年版・転載版 → SCOM OI-33）：1988年版の資料は、打上げ前・上昇・大気圏飛行中は油圧系の余剰熱をフレオン21ループへ移すとも述べていた。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/102）

> **注記** 出典の更新（1988年版・転載版 → SCOM OI-33）：1988年版の資料は、打上げ前・上昇・大気圏飛行中は油圧系の余剰熱をフレオンへ移すとも述べていた。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/102）

> **注記** 下位の展開で、上位のIF-ORB-23（DPSとのデータ）は、APU制御器の計測値（燃料タンク・潤滑油）、SM GPCによる循環ポンプの制御、WSBの水量の3つの下位IFに分けた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/85）

> **注記** IF-ORB-41（C/Wへの入力）はAPU制御器の過速度・低速度と、フィルタモジュールの圧力センサによる油圧の低下の2つの下位IFに分け、潤滑油温度によるAPU TEMP灯は下位機能の文で示した。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/106）

> **注記** IF-ORB-14（電力）は制御器・APUの28 V直流電力と循環ポンプの主母線電力の2つの下位IFに代表させ、APU・WSB・油圧のヒータとWSB制御器の電力は下位機能の文で示した。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/99）

> **注記** IF-ORB-12とIF-ECL-11は、各油圧系のフレオン／油圧熱交換器という同じ物理IFの上位の段であり、下位の図には最下位のIF-TCS-03を循環・熱調整（CIR）に再利用して描いた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/102）

> **注記** 外部タンク切離しアンビリカルの格納（ET分離シーケンスで油圧で行う）は親のIF行に対応がないため、下位機能の文で示し、新しいIFは定義していない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/609）

> **注記** 検証メモ：燃料タンクの搭載量は、SCOMの本文（PDF p84）が約332 lb、要約（PDF p107）が約325 lbと異なる（SSD-FD-APU-FUL-001の検証メモ）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/107）

> **注記** APU/HYDの要求（L2）と、本書と下位の説明書の機能行とのトレースは [SSD-REQ-APU-001](SSD-REQ-APU-001.md) に示す。

> **注記** APU/HYDの FMEA・CIL（IOA の件数・CIL 課題の評価ワークシート・[CIL] の規則）は [SSD-FMEA-APU-001](SSD-FMEA-APU-001.md) に示す。

> **注記** 補助動力装置（APU/HYD）の状態と遷移（図100）は [SSD-BEH-ORB-005](SSD-BEH-ORB-005.md) に示す（SysML v2 テキスト：SysML/SSD-BEH-ORB-005.sysml）。

## 6. 参考文献

1. NASA SP-407 Space Shuttle, Chapter 3 Space Shuttle Vehicle — https://www.american-spacecraft.org/documents/sp-407/chapter-3.html
2. Space Shuttle Guide – Electrical System — https://www.spaceshuttleguide.com/system/electrical.htm
3. NASA Space Shuttle Fuel Cell Power Plants（2002、Beloit College 転載） — https://chemistry.beloit.edu/edetc/nanolab/fuelcell2/NASA%20Space%20Shuttle%20Fuel%20Cell%20Power%20Plants%20(2002).pdf
4. NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html
5. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p85） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/85
6. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p103） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/103
7. Shuttle Crew Operations Manual 2.14 Landing/Deceleration System（USA007587 Rev. A CPN-1、PDF p544） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/544
8. Shuttle Crew Operations Manual 2.14 Landing/Deceleration System（USA007587 Rev. A CPN-1、PDF p548） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/548
9. Shuttle Crew Operations Manual 2.14 Landing/Deceleration System（USA007587 Rev. A CPN-1、PDF p551） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/551
10. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p113） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/113
11. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Caution and Warning Power Supply（PDF p115） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115
12. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p83） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/83
13. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p104） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/104
14. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p102） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/102
15. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p106） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/106
16. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p99） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/99
17. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p609） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/609
18. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p107） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/107

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-25 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-25 | ATCSとのIF（IF-ECL-11）を追記 |
| Rev. B | 2026-09-25 | 熱制御とのIF（IF-TCS-03）を追記 |
| Rev. C | 2026-09-30 | 上位の IF の補完に伴い IF-ORB-23・IF-ORB-39・IF-ORB-41 を追加（Rev. I） |
| Rev. D | 2026-10-01 | 運用フェーズ・モードの定義書 SSD-OPS-PHASE-001 と図39 への参照を注記（Rev. J） |
| Rev. E | 2026-10-01 | IF-ORB-14 の上位・下位を所有文書（SSD-FD-EPS-001）にそろえた（Rev. M） |
| Rev. F | 2026-10-01 | 出典を乗員運用マニュアル（SCOM、OI-33）の頁に更新（10文。うち本文を改めた2文に注記）（Rev. Q） |
| Rev. G | 2026-10-01 | 下位機能説明書（7件）と図への展開を追加し、IF-ORB-07・08・14・23・39・41に下位IF（IF-APU）を付記、IF-TCS-03を下位の図に再利用、注記・検証メモ（下位IFの分け方、熱交換器のIFの再利用、ETアンビリカルの格納の扱い、燃料の搭載量の相違）を追加（Rev. R） |
| Rev. H | 2026-10-02 | IF-ORB-14 に下位 IF（IF-CW-01 ほか4件）を付記、IF-ORB-41 に下位 IF（IF-CW-02・IF-CW-03）を付記（Rev. V） |
| Rev. I | 2026-10-02 | 要求文書 SSD-REQ-APU-001 への参照を注記（Rev. W） |
| Rev. J | 2026-10-02 | 故障解析表 SSD-FMEA-APU-001 への参照を注記（Rev. X） |
| Rev. K | 2026-10-03 | 系の状態遷移定義書 SSD-BEH-ORB-005 への参照を注記（Rev. AI） |
| Rev. L | 2026-10-04 | IF-ORB-23 に下位 IF-APU-25 を付記した（Rev. AU） |
