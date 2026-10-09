# ペイロード系（PLS）故障解析表（FMEA・CIL）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FMEA-PLS-001 |
| 表題 | ペイロード系（PLS）故障解析表（FMEA・CIL） |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FMEA-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図66 ペイロード系 機能構成 |

## 1. 目的

PLSの故障モード・影響解析（FMEA）と重要品目リスト（CIL）について、IOA（Independent Orbiter Assessment）の件数、IOA が NASA の評価と食い違いを指摘した CIL 課題の評価ワークシートと機能・IF の対応、運用飛行規則の [CIL] の規則を、根拠の頁とともに示す。系全体の冗長度の段階と重要度の定義は SSD-FMEA-ORB-001（総括・索引）に示す。

## 2. 対象と書き方

- 重要度は「ハードウェア／機能」の形（1/1、2/1R など）で、定義は SSD-FMEA-ORB-001 の「冗長度の段階と重要度」による。
- 評価ワークシートは、NASA と IOA のそれぞれについて重要度・冗長スクリーン・CIL の欄を並べ、異なる点を比較の欄に示し、IOA の勧告を記す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=4）
- 運用飛行規則では、CIL に関係する規則の表題に [CIL] を付け、規則の変更が CIL の存続理由に影響するときは、存続理由の変更が承認されるまで取り込まない。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2195）

## 3. IOA の FMEA・CIL の件数

- 表1-1（1988年1月1日時点）では、遠隔マニピュレータ系（RMS）の FMEA は IOA 821件・NASA 585件で課題80件、CIL は IOA 448件・NASA 390件で課題74件である。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13）

## 4. CIL 課題の評価ワークシートと機能・IF の対応

IOA の CIL 課題の解決報告（NASA-CR-185524 第2巻）の付録C にある RMS の評価ワークシート 89件を、品目名の語で区分し、その品目が担う機能行・IF に対応させた（区分の規則は注記）。品目は原文（OCR の読み取り）のまま示す。重要度の「空欄」はワークシートの欄が空のもの、「—」は欄を読み取れないものである。

区分ごとの件数：

| 区分 | 件数 | 機能・IF | IOA の重要度 |
|---|---|---|---|
| 関節の駆動・サーボ電子回路 | 32 | F-PLS-ARM-05・F-PLS-ARM-06 | 1/1 31件・2/2R 1件 |
| 制御・データ処理（MCIU・ABE の論理回路） | 41 | F-PLS-CTL-01・F-PLS-CTL-07 | 1/1 41件 |
| 投棄の火工品制御（PIC） | 16 | F-PLS-MPM-05・F-PLS-MPM-06 | 2/1R 16件 |

| ID | ワークシート | NASA FMEA | 区分（品目） | 重要度 NASA | 重要度 IOA | 機能・IF | 根拠 |
|---|---|---|---|---|---|---|---|
| CIL-PLS-001 | RMS-401 | 4020-183(a) | 関節の駆動・サーボ電子回路（ENCODERPHOTODETECTORS） | 2/1R | 1/1 | F-PLS-ARM-05・F-PLS-ARM-06 | 評価ワークシート RMS-401 は、NASA FMEA 4020-183(a) の品目「ENCODERPHOTODETECTORS」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=14） |
| CIL-PLS-002 | RMS-402 | 4020-183(a) | 関節の駆動・サーボ電子回路（ENCODER PHOTO DETECTORS） | 2/1R | 1/1 | F-PLS-ARM-05・F-PLS-ARM-06 | 評価ワークシート RMS-402 は、NASA FMEA 4020-183(a) の品目「ENCODER PHOTO DETECTORS」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=15） |
| CIL-PLS-003 | RMS-403 | 4020-183(a) | 関節の駆動・サーボ電子回路（ENCODER ROTATING DISK） | 2/1R | 1/1 | F-PLS-ARM-05・F-PLS-ARM-06 | 評価ワークシート RMS-403 は、NASA FMEA 4020-183(a) の品目「ENCODER ROTATING DISK」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=16） |
| CIL-PLS-004 | RMS-420 | 4130-189(a) | 関節の駆動・サーボ電子回路（TACHOMETER ROTOR） | 2/1R | 1/1 | F-PLS-ARM-05・F-PLS-ARM-06 | 評価ワークシート RMS-420 は、NASA FMEA 4130-189(a) の品目「TACHOMETER ROTOR」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=17） |
| CIL-PLS-005 | RMS-420A | 4130-189(b) | 関節の駆動・サーボ電子回路（TACHOMETERROTOR） | 2/1R | 1/1 | F-PLS-ARM-05・F-PLS-ARM-06 | 評価ワークシート RMS-420A は、NASA FMEA 4130-189(b) の品目「TACHOMETERROTOR」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=18） |
| CIL-PLS-006 | RMS-421 | 4130-189 (a) | 関節の駆動・サーボ電子回路（TACHOMETER ROTOR） | 2/1R | 1/1 | F-PLS-ARM-05・F-PLS-ARM-06 | 評価ワークシート RMS-421 は、NASA FMEA 4130-189 (a) の品目「TACHOMETER ROTOR」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=19） |
| CIL-PLS-007 | RMS-421A | 4130-189(b) | 関節の駆動・サーボ電子回路（TACHOMETER ROTOR） | 2/1R | 1/1 | F-PLS-ARM-05・F-PLS-ARM-06 | 評価ワークシート RMS-421A は、NASA FMEA 4130-189(b) の品目「TACHOMETER ROTOR」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=20） |
| CIL-PLS-008 | RMS-424 | 2600-116A(a) | 制御・データ処理（MCIU・ABE の論理回路）（POWER-ONRESET CONTROL） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-424 は、NASA FMEA 2600-116A(a) の品目「POWER-ONRESET CONTROL」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=21） |
| CIL-PLS-009 | RMS-435 | 3180-143(c) | 関節の駆動・サーボ電子回路（PROTECTOR, POWER CONDITIONER） | 2/1R | 1/1 | F-PLS-ARM-05・F-PLS-ARM-06 | 評価ワークシート RMS-435 は、NASA FMEA 3180-143(c) の品目「PROTECTOR, POWER CONDITIONER」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=22） |
| CIL-PLS-010 | RMS-435A | 3170 | 関節の駆動・サーボ電子回路（PROTECTOR, POWER CONDITIONER） | 2/1R | 1/1 | F-PLS-ARM-05・F-PLS-ARM-06 | 評価ワークシート RMS-435A は、NASA FMEA 3170 の品目「PROTECTOR, POWER CONDITIONER」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=23） |
| CIL-PLS-011 | RMS-439 | 3220-146 (a) | 関節の駆動・サーボ電子回路（SCU） | 2/1R | 1/1 | F-PLS-ARM-05・F-PLS-ARM-06 | 評価ワークシート RMS-439 は、NASA FMEA 3220-146 (a) の品目「SCU」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=24） |
| CIL-PLS-012 | RMS-439A | 3220-146(b) | 関節の駆動・サーボ電子回路（SCU） | 2/1R | 1/1 | F-PLS-ARM-05・F-PLS-ARM-06 | 評価ワークシート RMS-439A は、NASA FMEA 3220-146(b) の品目「SCU」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=25） |
| CIL-PLS-013 | RMS-440 | 3220-146(a) | 関節の駆動・サーボ電子回路（SCU） | 2/1R | 1/1 | F-PLS-ARM-05・F-PLS-ARM-06 | 評価ワークシート RMS-440 は、NASA FMEA 3220-146(a) の品目「SCU」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=26） |
| CIL-PLS-014 | RMS-440A | 3220-146(b) | 関節の駆動・サーボ電子回路（SCU） | 2/1R | 1/1 | F-PLS-ARM-05・F-PLS-ARM-06 | 評価ワークシート RMS-440A は、NASA FMEA 3220-146(b) の品目「SCU」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=27） |
| CIL-PLS-015 | RMS-442 | 4020-183(a) | 関節の駆動・サーボ電子回路（POSITION ENCODER DATA PROCESSING） | 2/1R | 1/1 | F-PLS-ARM-05・F-PLS-ARM-06 | 評価ワークシート RMS-442 は、NASA FMEA 4020-183(a) の品目「POSITION ENCODER DATA PROCESSING」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=28） |
| CIL-PLS-016 | RMS-443 | 4030-184(b) | 関節の駆動・サーボ電子回路（POSITION ENCODER DATA PROCESSING） | 2/1R | 1/1 | F-PLS-ARM-05・F-PLS-ARM-06 | 評価ワークシート RMS-443 は、NASA FMEA 4030-184(b) の品目「POSITION ENCODER DATA PROCESSING」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=29） |
| CIL-PLS-017 | RMS-444 | 3180 | 関節の駆動・サーボ電子回路（10V） | 2/1R | 2/2R | F-PLS-ARM-05・F-PLS-ARM-06 | 評価ワークシート RMS-444 は、NASA FMEA 3180 の品目「10V」を扱い、重要度は NASA が 2/1R、IOA が 2/2R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=30） |
| CIL-PLS-018 | RMS-448 | 2540-114 (a) | 制御・データ処理（MCIU・ABE の論理回路）（D/A CONVERTER） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-448 は、NASA FMEA 2540-114 (a) の品目「D/A CONVERTER」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=31） |
| CIL-PLS-019 | RMS-450 | 2650-121(b) | 関節の駆動・サーボ電子回路（ENCODER FEEDBACK） | 2/1R | 1/1 | F-PLS-ARM-05・F-PLS-ARM-06 | 評価ワークシート RMS-450 は、NASA FMEA 2650-121(b) の品目「ENCODER FEEDBACK」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=32） |
| CIL-PLS-020 | RMS-452 | 2690/2700 | 制御・データ処理（MCIU・ABE の論理回路）（I/P CLOCKOR SYNCHSIGNAL） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-452 は、NASA FMEA 2690/2700 の品目「I/P CLOCKOR SYNCHSIGNAL」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=33） |
| CIL-PLS-021 | RMS-454 | 2690/2700 | 制御・データ処理（MCIU・ABE の論理回路）（O/P CLOCK OR SYNCH SIGNAL） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-454 は、NASA FMEA 2690/2700 の品目「O/P CLOCK OR SYNCH SIGNAL」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=34） |
| CIL-PLS-022 | RMS-458A | 2570- | 制御・データ処理（MCIU・ABE の論理回路）（SHIFT REGISTERS） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-458A は、NASA FMEA 2570- の品目「SHIFT REGISTERS」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=35） |
| CIL-PLS-023 | RMS-458B | 2680-122(b) | 制御・データ処理（MCIU・ABE の論理回路）（SHIFT REGISTERS） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-458B は、NASA FMEA 2680-122(b) の品目「SHIFT REGISTERS」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=36） |
| CIL-PLS-024 | RMS-460 | 2620-I17(a) | 関節の駆動・サーボ電子回路（DIGITAL F/B (ENCODER)） | 2/1R | 1/1 | F-PLS-ARM-05・F-PLS-ARM-06 | 評価ワークシート RMS-460 は、NASA FMEA 2620-I17(a) の品目「DIGITAL F/B (ENCODER)」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=37） |
| CIL-PLS-025 | RMS-462 | 2620-i17(a) | 関節の駆動・サーボ電子回路（ANALOG F/B (COMMUTATOR)） | 2/1R | 1/1 | F-PLS-ARM-05・F-PLS-ARM-06 | 評価ワークシート RMS-462 は、NASA FMEA 2620-i17(a) の品目「ANALOG F/B (COMMUTATOR)」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=38） |
| CIL-PLS-026 | RMS-482 | 2600-116A(a) | 制御・データ処理（MCIU・ABE の論理回路）（POWER "ON" RESET） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-482 は、NASA FMEA 2600-116A(a) の品目「POWER "ON" RESET」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=39） |
| CIL-PLS-027 | RMS-484 | 2950-130(e) | 関節の駆動・サーボ電子回路（CURRENT LIMITER） | 2/1R | 1/1 | F-PLS-ARM-05・F-PLS-ARM-06 | 評価ワークシート RMS-484 は、NASA FMEA 2950-130(e) の品目「CURRENT LIMITER」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=40） |
| CIL-PLS-028 | RMS-485C | 3010-132A(e) | 関節の駆動・サーボ電子回路（CURRENT LIMITER） | 2/1R | 1/1 | F-PLS-ARM-05・F-PLS-ARM-06 | 評価ワークシート RMS-485C は、NASA FMEA 3010-132A(e) の品目「CURRENT LIMITER」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=41） |
| CIL-PLS-029 | RMS-601A | — | 制御・データ処理（MCIU・ABE の論理回路）（16 CHANNEL ANALOG MULTIPLEXOR (3 )） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-601A は、品目「16 CHANNEL ANALOG MULTIPLEXOR (3 )」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=42） |
| CIL-PLS-030 | RMS-601B | 2040- | 制御・データ処理（MCIU・ABE の論理回路）（16 CHANNEL ANALOG MULTIPLEXOR ( 3 )） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-601B は、NASA FMEA 2040- の品目「16 CHANNEL ANALOG MULTIPLEXOR ( 3 )」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=43） |
| CIL-PLS-031 | RMS-605 | 2050- | 関節の駆動・サーボ電子回路（SAMPLE AND HOLD GATED OP AMP） | 2/1R | 1/1 | F-PLS-ARM-05・F-PLS-ARM-06 | 評価ワークシート RMS-605 は、NASA FMEA 2050- の品目「SAMPLE AND HOLD GATED OP AMP」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=44） |
| CIL-PLS-032 | RMS-609 | 2000- | 制御・データ処理（MCIU・ABE の論理回路）（ANALOG TO DIGITAL CONVERTER） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-609 は、NASA FMEA 2000- の品目「ANALOG TO DIGITAL CONVERTER」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=45） |
| CIL-PLS-033 | RMS-611 | 1990/2000 | 制御・データ処理（MCIU・ABE の論理回路）（QUAD 3-STATE R/S LATCHES (2)） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-611 は、NASA FMEA 1990/2000 の品目「QUAD 3-STATE R/S LATCHES (2)」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=46） |
| CIL-PLS-034 | RMS-613 | 2450-110(a) | 関節の駆動・サーボ電子回路（MULTIWINDING OUTPUT TRANSFORMER） | 2/1R | 1/1 | F-PLS-ARM-05・F-PLS-ARM-06 | 評価ワークシート RMS-613 は、NASA FMEA 2450-110(a) の品目「MULTIWINDING OUTPUT TRANSFORMER」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=47） |
| CIL-PLS-035 | RMS-615 | 2450 | 関節の駆動・サーボ電子回路（2-PHASE PWM） | 2/1R | 1/1 | F-PLS-ARM-05・F-PLS-ARM-06 | 評価ワークシート RMS-615 は、NASA FMEA 2450 の品目「2-PHASE PWM」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=48） |
| CIL-PLS-036 | RMS-617 | 2450 | 関節の駆動・サーボ電子回路（POWER SWITCHING TRANSISTORS） | 2/1R | 1/1 | F-PLS-ARM-05・F-PLS-ARM-06 | 評価ワークシート RMS-617 は、NASA FMEA 2450 の品目「POWER SWITCHING TRANSISTORS」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=49） |
| CIL-PLS-037 | RMS-619 | 2450 | 関節の駆動・サーボ電子回路（30-KHZ TRIANGULAR WAVE GENERATOR） | 2/1R | 1/1 | F-PLS-ARM-05・F-PLS-ARM-06 | 評価ワークシート RMS-619 は、NASA FMEA 2450 の品目「30-KHZ TRIANGULAR WAVE GENERATOR」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=50） |
| CIL-PLS-038 | RMS-621 | 2450 | 関節の駆動・サーボ電子回路（DIFFERENTIAL AMPLIFIER PWM ADJUSTER） | 2/1R | 1/1 | F-PLS-ARM-05・F-PLS-ARM-06 | 評価ワークシート RMS-621 は、NASA FMEA 2450 の品目「DIFFERENTIAL AMPLIFIER PWM ADJUSTER」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=51） |
| CIL-PLS-039 | RMS-623 | 2450 | 関節の駆動・サーボ電子回路（OP AMP, 30 KHZ TRIANGULAR WAVE WIDTH ADJUSTER） | 2/1R | 1/1 | F-PLS-ARM-05・F-PLS-ARM-06 | 評価ワークシート RMS-623 は、NASA FMEA 2450 の品目「OP AMP, 30 KHZ TRIANGULAR WAVE WIDTH ADJUSTER」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=52） |
| CIL-PLS-040 | RMS-625 | 2450 | 関節の駆動・サーボ電子回路（RECTIFIER MODULES） | 2/1R | 1/1 | F-PLS-ARM-05・F-PLS-ARM-06 | 評価ワークシート RMS-625 は、NASA FMEA 2450 の品目「RECTIFIER MODULES」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=53） |
| CIL-PLS-041 | RMS-627 | 1650 | 制御・データ処理（MCIU・ABE の論理回路）（MIA） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-627 は、NASA FMEA 1650 の品目「MIA」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=54） |
| CIL-PLS-042 | RMS-629 | 1740/1760/1770/1780 | 制御・データ処理（MCIU・ABE の論理回路）（CLOCK DIVIDER CIRCUIT） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-629 は、NASA FMEA 1740/1760/1770/1780 の品目「CLOCK DIVIDER CIRCUIT」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=55） |
| CIL-PLS-043 | RMS-631 | 1770 | 制御・データ処理（MCIU・ABE の論理回路）（16 MHZ CRYSTAL OSCILLATOR） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-631 は、NASA FMEA 1770 の品目「16 MHZ CRYSTAL OSCILLATOR」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=56） |
| CIL-PLS-044 | RMS-633 | 1710-78(a) | 制御・データ処理（MCIU・ABE の論理回路）（O/P PARALLEL TO SERIAL SHIFT REGISTER (3)） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-633 は、NASA FMEA 1710-78(a) の品目「O/P PARALLEL TO SERIAL SHIFT REGISTER (3)」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=57） |
| CIL-PLS-045 | RMS-635 | 1660-76(a) | 制御・データ処理（MCIU・ABE の論理回路）（I/P SERIAL TO PARALLEL SHIFT REGISTER） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-635 は、NASA FMEA 1660-76(a) の品目「I/P SERIAL TO PARALLEL SHIFT REGISTER」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=58） |
| CIL-PLS-046 | RMS-635A | 1670-76(b) | 制御・データ処理（MCIU・ABE の論理回路）（I/P SERIAL TO PARALLEL SHIFT REGISTER） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-635A は、NASA FMEA 1670-76(b) の品目「I/P SERIAL TO PARALLEL SHIFT REGISTER」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=59） |
| CIL-PLS-047 | RMS-637 | 1640 | 制御・データ処理（MCIU・ABE の論理回路）（TRANSMIT TIMING CONTROL） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-637 は、NASA FMEA 1640 の品目「TRANSMIT TIMING CONTROL」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=60） |
| CIL-PLS-048 | RMS-639 | 1650 | 制御・データ処理（MCIU・ABE の論理回路）（RECEIVE TIMING CONTROL） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-639 は、NASA FMEA 1650 の品目「RECEIVE TIMING CONTROL」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=61） |
| CIL-PLS-049 | RMS-659 | 1830-83(a) | 制御・データ処理（MCIU・ABE の論理回路）（LOWERSERIAL SHIFT REGISTER, ABE O/P） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-659 は、NASA FMEA 1830-83(a) の品目「LOWERSERIAL SHIFT REGISTER, ABE O/P」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=62） |
| CIL-PLS-050 | RMS-659A | 1840-83(b) | 制御・データ処理（MCIU・ABE の論理回路）（LOWER SERIAL SHIFT REGISTER, ABE O/P） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-659A は、NASA FMEA 1840-83(b) の品目「LOWER SERIAL SHIFT REGISTER, ABE O/P」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=63） |
| CIL-PLS-051 | RMS-661 | 1830-83(a) | 制御・データ処理（MCIU・ABE の論理回路）（UPPER SERIAL SHIFT REGISTER, ABE I/P） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-661 は、NASA FMEA 1830-83(a) の品目「UPPER SERIAL SHIFT REGISTER, ABE I/P」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=64） |
| CIL-PLS-052 | RMS-661A | 1840-83(b) | 制御・データ処理（MCIU・ABE の論理回路）（UPPER SERIAL SHIFT REGISTER, ABE I/P） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-661A は、NASA FMEA 1840-83(b) の品目「UPPER SERIAL SHIFT REGISTER, ABE I/P」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=65） |
| CIL-PLS-053 | RMS-663 | 1880-87 (f) | 制御・データ処理（MCIU・ABE の論理回路）（ABE OUTPUTDRIVER） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-663 は、NASA FMEA 1880-87 (f) の品目「ABE OUTPUTDRIVER」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=66） |
| CIL-PLS-054 | RMS-673 | 1890 | 制御・データ処理（MCIU・ABE の論理回路）（ABE INPUT OPTO ISOLATORS） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-673 は、NASA FMEA 1890 の品目「ABE INPUT OPTO ISOLATORS」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=67） |
| CIL-PLS-055 | RMS-675 | 1890 | 制御・データ処理（MCIU・ABE の論理回路）（SERIAL-PARALLEL SHIFT REGISTERS (2) ABE I/P） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-675 は、NASA FMEA 1890 の品目「SERIAL-PARALLEL SHIFT REGISTERS (2) ABE I/P」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=68） |
| CIL-PLS-056 | RMS-681 | 2340-i04(a) | 制御・データ処理（MCIU・ABE の論理回路）（CPU） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-681 は、NASA FMEA 2340-i04(a) の品目「CPU」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=69） |
| CIL-PLS-057 | RMS-683 | 2340-i04(a) | 制御・データ処理（MCIU・ABE の論理回路）（200 KHZ CLOCK） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-683 は、NASA FMEA 2340-i04(a) の品目「200 KHZ CLOCK」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=70） |
| CIL-PLS-058 | RMS-685 | 2400-109 (h) | 制御・データ処理（MCIU・ABE の論理回路）（PARALLEL DATA CONVERTER） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-685 は、NASA FMEA 2400-109 (h) の品目「PARALLEL DATA CONVERTER」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=71） |
| CIL-PLS-059 | RMS-685B | 2410-109 (h) | 制御・データ処理（MCIU・ABE の論理回路）（PARALLEL DATA CONVERTER） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-685B は、NASA FMEA 2410-109 (h) の品目「PARALLEL DATA CONVERTER」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=72） |
| CIL-PLS-060 | RMS-687 | 2360 | 制御・データ処理（MCIU・ABE の論理回路）（DIRECT MEMORYACCESSCONTROLLER） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-687 は、NASA FMEA 2360 の品目「DIRECT MEMORYACCESSCONTROLLER」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=73） |
| CIL-PLS-061 | RMS-689 | 2440 | 制御・データ処理（MCIU・ABE の論理回路）（POWERON INIT ROUTINE LOGIC） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-689 は、NASA FMEA 2440 の品目「POWERON INIT ROUTINE LOGIC」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=74） |
| CIL-PLS-062 | RMS-691 | 2350-i05(b) | 制御・データ処理（MCIU・ABE の論理回路）（RAM） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-691 は、NASA FMEA 2350-i05(b) の品目「RAM」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=75） |
| CIL-PLS-063 | RMS-693 | 2350-i05(b) | 制御・データ処理（MCIU・ABE の論理回路）（ROM） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-693 は、NASA FMEA 2350-i05(b) の品目「ROM」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=76） |
| CIL-PLS-064 | RMS-695 | 2360 | 制御・データ処理（MCIU・ABE の論理回路）（O/P LATCH (2)） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-695 は、NASA FMEA 2360 の品目「O/P LATCH (2)」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=77） |
| CIL-PLS-065 | RMS-697 | 2360 | 制御・データ処理（MCIU・ABE の論理回路）（I/P LATCH (2)） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-697 は、NASA FMEA 2360 の品目「I/P LATCH (2)」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=78） |
| CIL-PLS-066 | RMS-4536 | 05-6ID-2507-2 | 投棄の火工品制御（PIC）（PIC i, 12） | 3/1R | 2/1R | F-PLS-MPM-05・F-PLS-MPM-06 | 評価ワークシート RMS-4536 は、NASA FMEA 05-6ID-2507-2 の品目「PIC i, 12」を扱い、重要度は NASA が 3/1R、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=79） |
| CIL-PLS-067 | RMS-4537 | 05-6ID-2515-2 | 投棄の火工品制御（PIC）（PIC i, 12） | 3/1R | 2/1R | F-PLS-MPM-05・F-PLS-MPM-06 | 評価ワークシート RMS-4537 は、NASA FMEA 05-6ID-2515-2 の品目「PIC i, 12」を扱い、重要度は NASA が 3/1R、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=80） |
| CIL-PLS-068 | RMS-4542 | 05-6ID-2505-2 | 投棄の火工品制御（PIC）（PIC 6, 17） | 3/1R | 2/1R | F-PLS-MPM-05・F-PLS-MPM-06 | 評価ワークシート RMS-4542 は、NASA FMEA 05-6ID-2505-2 の品目「PIC 6, 17」を扱い、重要度は NASA が 3/1R、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=81） |
| CIL-PLS-069 | RMS-4543 | 05-6ID-2513-2 | 投棄の火工品制御（PIC）（PIC 6, 17） | 3/1R | 2/1R | F-PLS-MPM-05・F-PLS-MPM-06 | 評価ワークシート RMS-4543 は、NASA FMEA 05-6ID-2513-2 の品目「PIC 6, 17」を扱い、重要度は NASA が 3/1R、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=82） |
| CIL-PLS-070 | RMS-4548 | 05-6ID-2503-2 | 投棄の火工品制御（PIC）（PIC 8, 19） | 3/1R | 2/1R | F-PLS-MPM-05・F-PLS-MPM-06 | 評価ワークシート RMS-4548 は、NASA FMEA 05-6ID-2503-2 の品目「PIC 8, 19」を扱い、重要度は NASA が 3/1R、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=83） |
| CIL-PLS-071 | RMS-4549 | 05-6ID-2511-2 | 投棄の火工品制御（PIC）（PIC 8, 19） | 3/1R | 2/1R | F-PLS-MPM-05・F-PLS-MPM-06 | 評価ワークシート RMS-4549 は、NASA FMEA 05-6ID-2511-2 の品目「PIC 8, 19」を扱い、重要度は NASA が 3/1R、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=84） |
| CIL-PLS-072 | RMS-4554 | 05-6ID-2501-2 | 投棄の火工品制御（PIC）（PIC i0, 21） | 3/1R | 2/1R | F-PLS-MPM-05・F-PLS-MPM-06 | 評価ワークシート RMS-4554 は、NASA FMEA 05-6ID-2501-2 の品目「PIC i0, 21」を扱い、重要度は NASA が 3/1R、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=85） |
| CIL-PLS-073 | RMS-4555 | 05-6ID-2509-2 | 投棄の火工品制御（PIC）（PIC i0, 21） | 3/1R | 2/1R | F-PLS-MPM-05・F-PLS-MPM-06 | 評価ワークシート RMS-4555 は、NASA FMEA 05-6ID-2509-2 の品目「PIC i0, 21」を扱い、重要度は NASA が 3/1R、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=86） |
| CIL-PLS-074 | RMS-4560 | 05-6ID-2506-2 | 投棄の火工品制御（PIC）（PIC 2, 13） | 3/1R | 2/1R | F-PLS-MPM-05・F-PLS-MPM-06 | 評価ワークシート RMS-4560 は、NASA FMEA 05-6ID-2506-2 の品目「PIC 2, 13」を扱い、重要度は NASA が 3/1R、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=87） |
| CIL-PLS-075 | RMS-4561 | 05-6ID-2514-2 | 投棄の火工品制御（PIC）（PIC 2, 13） | 3/1R | 2/1R | F-PLS-MPM-05・F-PLS-MPM-06 | 評価ワークシート RMS-4561 は、NASA FMEA 05-6ID-2514-2 の品目「PIC 2, 13」を扱い、重要度は NASA が 3/1R、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=88） |
| CIL-PLS-076 | RMS-4566 | 05-6ID-2504-2 | 投棄の火工品制御（PIC）（PIC 7, 18） | 3/1R | 2/1R | F-PLS-MPM-05・F-PLS-MPM-06 | 評価ワークシート RMS-4566 は、NASA FMEA 05-6ID-2504-2 の品目「PIC 7, 18」を扱い、重要度は NASA が 3/1R、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=89） |
| CIL-PLS-077 | RMS-4567 | 05-6ID-2512-2 | 投棄の火工品制御（PIC）（PIC 7, 18） | 3/1R | 2/1R | F-PLS-MPM-05・F-PLS-MPM-06 | 評価ワークシート RMS-4567 は、NASA FMEA 05-6ID-2512-2 の品目「PIC 7, 18」を扱い、重要度は NASA が 3/1R、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=90） |
| CIL-PLS-078 | RMS-4572 | 05-6ID-2502-2 | 投棄の火工品制御（PIC）（PIC 9, 20） | 3/1R | 2/1R | F-PLS-MPM-05・F-PLS-MPM-06 | 評価ワークシート RMS-4572 は、NASA FMEA 05-6ID-2502-2 の品目「PIC 9, 20」を扱い、重要度は NASA が 3/1R、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=91） |
| CIL-PLS-079 | RMS-4573 | 05-6ID-2510-2 | 投棄の火工品制御（PIC）（PIC 9, 20） | 3/1R | 2/1R | F-PLS-MPM-05・F-PLS-MPM-06 | 評価ワークシート RMS-4573 は、NASA FMEA 05-6ID-2510-2 の品目「PIC 9, 20」を扱い、重要度は NASA が 3/1R、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=92） |
| CIL-PLS-080 | RMS-4578 | 05-6ID-2500-2 | 投棄の火工品制御（PIC）（PIC Ii, 22） | 3/1R | 2/1R | F-PLS-MPM-05・F-PLS-MPM-06 | 評価ワークシート RMS-4578 は、NASA FMEA 05-6ID-2500-2 の品目「PIC Ii, 22」を扱い、重要度は NASA が 3/1R、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=93） |
| CIL-PLS-081 | RMS-4579 | 05-6ID-2508-2 | 投棄の火工品制御（PIC）（PIC ii, 22） | 3/1R | 2/1R | F-PLS-MPM-05・F-PLS-MPM-06 | 評価ワークシート RMS-4579 は、NASA FMEA 05-6ID-2508-2 の品目「PIC ii, 22」を扱い、重要度は NASA が 3/1R、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=94） |
| CIL-PLS-082 | RMS-20506 | 2670-122(a) | 関節の駆動・サーボ電子回路（ENCODER LATCH） | 2/1R | 1/1 | F-PLS-ARM-05・F-PLS-ARM-06 | 評価ワークシート RMS-20506 は、NASA FMEA 2670-122(a) の品目「ENCODER LATCH」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=95） |
| CIL-PLS-083 | RMS-20511 | 2630-I18(a) | 制御・データ処理（MCIU・ABE の論理回路）（OUTPUTLATCH） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-20511 は、NASA FMEA 2630-I18(a) の品目「OUTPUTLATCH」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=96） |
| CIL-PLS-084 | RMS-20518 | — | 関節の駆動・サーボ電子回路（TRANSISTOR） | 2/1R | 1/1 | F-PLS-ARM-05・F-PLS-ARM-06 | 評価ワークシート RMS-20518 は、品目「TRANSISTOR」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=97） |
| CIL-PLS-085 | RMS-20699 | 1730-79(b) | 制御・データ処理（MCIU・ABE の論理回路）（SYNL CIRCUIT） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-20699 は、NASA FMEA 1730-79(b) の品目「SYNL CIRCUIT」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=98） |
| CIL-PLS-086 | RMS-20700 | 1730-79(b) | 制御・データ処理（MCIU・ABE の論理回路）（SYNC CIRCUIT） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-20700 は、NASA FMEA 1730-79(b) の品目「SYNC CIRCUIT」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=99） |
| CIL-PLS-087 | RMS-20707 | 2430-i09(j) | 制御・データ処理（MCIU・ABE の論理回路）（READ STROBE） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-20707 は、NASA FMEA 2430-i09(j) の品目「READ STROBE」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=100） |
| CIL-PLS-088 | RMS-20708 | 2020-96(f) | 関節の駆動・サーボ電子回路（REFERENCE VOLTAGE GENERATOR） | 2/1R | 1/1 | F-PLS-ARM-05・F-PLS-ARM-06 | 評価ワークシート RMS-20708 は、NASA FMEA 2020-96(f) の品目「REFERENCE VOLTAGE GENERATOR」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=101） |
| CIL-PLS-089 | RMS-20710 | 2420-I09A(i) | 制御・データ処理（MCIU・ABE の論理回路）（PDC INT-2 OUTPUT） | 2/1R | 1/1 | F-PLS-CTL-01・F-PLS-CTL-07 | 評価ワークシート RMS-20710 は、NASA FMEA 2420-I09A(i) の品目「PDC INT-2 OUTPUT」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=102） |

## 5. 運用飛行規則の [CIL] の規則

運用飛行規則（NSTS-12820 Vol. A）の [CIL] の規則のうち、SSD-OPS-REF-001 §5 でPLSの下位機能に対応づけたもの 12件を示す。「下位機能」は対応する機能説明書である。

| 規則 | 表題 | PDF頁 | 下位機能 | 根拠 |
|---|---|---|---|---|
| A12-3 | TEMPERATURE CONSTRAINTS | 1717 | SSD-FD-PLS-ARM-001 | 運用飛行規則 A12-3 の表題は「TEMPERATURE CONSTRAINTS [CIL]」である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1717） |
| A12-5 | ORBITER AVOIDANCE MANEUVERS CONSTRAINT | 1719 | SSD-FD-PLS-ARM-001・SSD-FD-PLS-OPS-001 | 運用飛行規則 A12-5 の表題は「ORBITER AVOIDANCE MANEUVERS CONSTRAINT [CIL]」である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1719） |
| A12-9 | RMS MCIU BITE OVERRIDES | 1730 | SSD-FD-PLS-CTL-001 | 運用飛行規則 A12-9 の表題は「RMS MCIU BITE OVERRIDES [CIL]」である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1730） |
| A12-74 | INADVERTENT MPM CYCLING PROTECTION | 1737 | SSD-FD-PLS-MPM-001 | 運用飛行規則 A12-74 の表題は「INADVERTENT MPM CYCLING PROTECTION [CIL]」である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1737） |
| A12-112 | FIELD OF VIEW CONSTRAINT | 1740 | SSD-FD-PLS-ARM-001・SSD-FD-PLS-OPS-001 | 運用飛行規則 A12-112 の表題は「FIELD OF VIEW CONSTRAINT [CIL]」である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1740） |
| A12-113 | AUTO MODE ENTRY CONSTRAINT | 1741 | SSD-FD-PLS-CTL-001 | 運用飛行規則 A12-113 の表題は「AUTO MODE ENTRY CONSTRAINT [CIL]」である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1741） |
| A12-114 | ORBITER PROXIMITY CONSTRAINTS | 1742 | SSD-FD-PLS-ARM-001 | 運用飛行規則 A12-114 の表題は「ORBITER PROXIMITY CONSTRAINTS [CIL]」である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1742） |
| A12-115 | INOPERATIVE BRAKE CONSTRAINT | 1744 | SSD-FD-PLS-ARM-001 | 運用飛行規則 A12-115 の表題は「INOPERATIVE BRAKE CONSTRAINT [CIL]」である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1744） |
| A12-116 | AUTO BRAKES CONSTRAINT | 1744 | SSD-FD-PLS-ARM-001・SSD-FD-PLS-CTL-001 | 運用飛行規則 A12-116 の表題は「AUTO BRAKES CONSTRAINT [CIL]」である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1744） |
| A12-117 | CONTINGENCY STOP | 1745 | SSD-FD-PLS-ARM-001・SSD-FD-PLS-CTL-001 | 運用飛行規則 A12-117 の表題は「CONTINGENCY STOP [CIL]」である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1745） |
| A12-162 | EE MODE SWITCH CONSTRAINTS | 1749 | SSD-FD-PLS-CTL-001 | 運用飛行規則 A12-162 の表題は「EE MODE SWITCH CONSTRAINTS [CIL]」である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1749） |
| A12-163 | CAPTURE AND RELEASE PROXIMITY CONSTRAINT | 1750 | SSD-FD-PLS-ARM-001 | 運用飛行規則 A12-163 の表題は「CAPTURE AND RELEASE PROXIMITY CONSTRAINT [CIL]」である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1750） |

## 6. 要約

IOA の表1-1 の1サブシステムで、CIL は IOA 448件・NASA 390件、課題は 74件である。

CIL 課題の評価ワークシートは 89件で、多い区分は 制御・データ処理（MCIU・ABE の論理回路）（41件）・関節の駆動・サーボ電子回路（32件）・投棄の火工品制御（PIC）（16件）である。IOA の重要度は 1/1 72件・2/1R 16件・2/2R 1件である。

[CIL] の規則は 12件（A12-3・A12-5・A12-9・A12-74・A12-112・A12-113・A12-114・A12-115・A12-116・A12-117・A12-162・A12-163）である。

## 7. 注記（出典間の相違・構成変更）

> **注記** IOA の件数は1988年1月1日時点の中間報告の値で、その後の改修（AP-101S・MEDS・GPS など）を含まない。

> **注記** 評価ワークシートの区分は品目名の語による（上から順に最初に当たったもの、どれにも当たらなければ「制御・データ処理（MCIU・ABE の論理回路）」）：投棄の火工品制御（PIC）＝「\bPIC\b」；関節の駆動・サーボ電子回路＝「ENCODER|TACHOMETER|PWM|TRANSISTOR|TRIANGULAR|AMPLIFIER|OP AMP|TRANSFORMER|RECTIFIER|F/B|\bSCU\b|LIMITER|CONDITIONER|REFERENCE VOLTAGE|10V|SAMPLE AND HOLD」。機能・IF の対応は区分ごとで、品目1件ずつに確かめたものではない。

> **注記** 付録C の評価ワークシートは CIL の課題（IOA が NASA の FMEA・CIL と異なる評価をした品目）を集めたもので、系の CIL の全件ではない。CIL の欄（[X] の位置）は OCR で欄の並びが崩れていて確かめられないため載せていない。

## 8. 参考文献

1. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート NWS-204（PDF p4） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=4
2. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） 付録B Change Control（PDF p2195） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2195
3. NASA-CR-185550 IOA: FMEA/CIL Assessment Interim Report Table 1-1 FMEA/CIL Assessment Overview (Interim)（PDF p13） — https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13
4. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-401（PDF p14） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=14
5. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-402（PDF p15） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=15
6. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-403（PDF p16） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=16
7. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-420（PDF p17） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=17
8. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-420A（PDF p18） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=18
9. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-421（PDF p19） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=19
10. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-421A（PDF p20） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=20
11. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-424（PDF p21） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=21
12. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-435（PDF p22） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=22
13. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-435A（PDF p23） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=23
14. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-439（PDF p24） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=24
15. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-439A（PDF p25） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=25
16. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-440（PDF p26） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=26
17. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-440A（PDF p27） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=27
18. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-442（PDF p28） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=28
19. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-443（PDF p29） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=29
20. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-444（PDF p30） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=30
21. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-448（PDF p31） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=31
22. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-450（PDF p32） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=32
23. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-452（PDF p33） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=33
24. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-454（PDF p34） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=34
25. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-458A（PDF p35） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=35
26. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-458B（PDF p36） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=36
27. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-460（PDF p37） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=37
28. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-462（PDF p38） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=38
29. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-482（PDF p39） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=39
30. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-484（PDF p40） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=40
31. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-485C（PDF p41） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=41
32. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-601A（PDF p42） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=42
33. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-601B（PDF p43） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=43
34. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-605（PDF p44） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=44
35. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-609（PDF p45） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=45
36. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-611（PDF p46） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=46
37. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-613（PDF p47） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=47
38. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-615（PDF p48） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=48
39. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-617（PDF p49） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=49
40. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-619（PDF p50） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=50
41. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-621（PDF p51） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=51
42. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-623（PDF p52） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=52
43. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-625（PDF p53） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=53
44. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-627（PDF p54） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=54
45. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-629（PDF p55） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=55
46. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-631（PDF p56） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=56
47. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-633（PDF p57） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=57
48. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-635（PDF p58） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=58
49. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-635A（PDF p59） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=59
50. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-637（PDF p60） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=60
51. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-639（PDF p61） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=61
52. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-659（PDF p62） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=62
53. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-659A（PDF p63） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=63
54. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-661（PDF p64） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=64
55. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-661A（PDF p65） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=65
56. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-663（PDF p66） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=66
57. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-673（PDF p67） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=67
58. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-675（PDF p68） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=68
59. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-681（PDF p69） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=69
60. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-683（PDF p70） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=70
61. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-685（PDF p71） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=71
62. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-685B（PDF p72） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=72
63. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-687（PDF p73） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=73
64. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-689（PDF p74） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=74
65. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-691（PDF p75） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=75
66. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-693（PDF p76） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=76
67. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-695（PDF p77） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=77
68. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-697（PDF p78） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=78
69. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-4536（PDF p79） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=79
70. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-4537（PDF p80） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=80
71. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-4542（PDF p81） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=81
72. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-4543（PDF p82） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=82
73. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-4548（PDF p83） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=83
74. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-4549（PDF p84） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=84
75. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-4554（PDF p85） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=85
76. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-4555（PDF p86） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=86
77. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-4560（PDF p87） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=87
78. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-4561（PDF p88） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=88
79. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-4566（PDF p89） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=89
80. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-4567（PDF p90） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=90
81. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-4572（PDF p91） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=91
82. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-4573（PDF p92） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=92
83. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-4578（PDF p93） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=93
84. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-4579（PDF p94） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=94
85. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-20506（PDF p95） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=95
86. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-20511（PDF p96） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=96
87. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-20518（PDF p97） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=97
88. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-20699（PDF p98） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=98
89. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-20700（PDF p99） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=99
90. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-20707（PDF p100） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=100
91. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-20708（PDF p101） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=101
92. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート RMS-20710（PDF p102） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=102
93. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A12-3 TEMPERATURE CONSTRAINTS（PDF p1717） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1717
94. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A12-5 ORBITER AVOIDANCE MANEUVERS CONSTRAINT（PDF p1719） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1719
95. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A12-9 RMS MCIU BITE OVERRIDES（PDF p1730） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1730
96. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A12-74 INADVERTENT MPM CYCLING PROTECTION（PDF p1737） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1737
97. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A12-112 FIELD OF VIEW CONSTRAINT（PDF p1740） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1740
98. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A12-113 AUTO MODE ENTRY CONSTRAINT（PDF p1741） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1741
99. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A12-114 ORBITER PROXIMITY CONSTRAINTS（PDF p1742） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1742
100. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A12-115 INOPERATIVE BRAKE CONSTRAINT（PDF p1744） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1744
101. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A12-117 CONTINGENCY STOP（PDF p1745） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1745
102. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A12-162 EE MODE SWITCH CONSTRAINTS（PDF p1749） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1749
103. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A12-163 CAPTURE AND RELEASE PROXIMITY CONSTRAINT（PDF p1750） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1750

## 9. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（IOA の件数 1サブシステム、CIL 課題の評価ワークシート 89件と機能・IF の対応、[CIL] の規則 12件） |
