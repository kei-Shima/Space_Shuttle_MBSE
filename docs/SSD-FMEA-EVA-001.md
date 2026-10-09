# 船外活動（EVA/EMU）故障解析表（FMEA・CIL）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FMEA-EVA-001 |
| 表題 | 船外活動（EVA/EMU）故障解析表（FMEA・CIL） |
| 版・日付 | Rev. A／2026-10-09 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FMEA-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図60 EVA 機能構成 |

## 1. 目的

EVAの故障モード・影響解析（FMEA）と重要品目リスト（CIL）について、IOA（Independent Orbiter Assessment）の件数、IOA が NASA の評価と食い違いを指摘した CIL 課題の評価ワークシートと機能・IF の対応、運用飛行規則の [CIL] の規則を、根拠の頁とともに示す。系全体の冗長度の段階と重要度の定義は SSD-FMEA-ORB-001（総括・索引）に示す。

## 2. 対象と書き方

- 重要度は「ハードウェア／機能」の形（1/1、2/1R など）で、定義は SSD-FMEA-ORB-001 の「冗長度の段階と重要度」による。
- 評価ワークシートは、NASA と IOA のそれぞれについて重要度・冗長スクリーン・CIL の欄を並べ、異なる点を比較の欄に示し、IOA の勧告を記す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=4）
- 運用飛行規則では、CIL に関係する規則の表題に [CIL] を付け、規則の変更が CIL の存続理由に影響するときは、存続理由の変更が承認されるまで取り込まない。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2195）

## 3. IOA の FMEA・CIL の件数

- 表1-1（1988年1月1日時点）では、船外活動ユニット（EMU）の FMEA は IOA 688件・NASA 614件で課題113件、CIL は IOA 547件・NASA 474件で課題40件である。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13）
- 表1-1（1988年1月1日時点）では、有人機動ユニット（MMU）の FMEA は IOA 204件・NASA 179件で課題121件、CIL は IOA 95件・NASA 110件で課題92件である。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13）

以上の2サブシステムの計は、FMEA が IOA 892件・NASA 793件・課題234件、CIL が IOA 642件・NASA 584件・課題132件である。

## 4. CIL 課題の評価ワークシートと機能・IF の対応

IOA の CIL 課題の解決報告（NASA-CR-185524 第2巻）の付録C にある EMU の評価ワークシート 42件を、品目名の語で区分し、その品目が担う機能行・IF に対応させた（区分の規則は注記）。品目は原文（OCR の読み取り）のまま示す。重要度の「空欄」はワークシートの欄が空のもの、「—」は欄を読み取れないものである。

区分ごとの件数：

| 区分 | 件数 | 機能・IF | IOA の重要度 |
|---|---|---|---|
| CO2 除去（CCC） | 1 | F-EVA-MNT-07 | 2/1R 1件 |
| 酸素系（調圧器・SOP） | 6 | F-EVA-CHK-04・F-EVA-CHK-06 | 2/1R 4件・3/2R 2件 |
| 表示・制御・計測（DCM・C&W など） | 20 | F-EVA-CHK-01・F-EVA-CHK-13 | 2/2 8件・2/1R 6件・3/1R 2件・3/2R 2件・1/1 1件・3/3 1件 |
| 水系（給水・冷却） | 3 | F-EVA-MNT-03・F-EVA-MNT-05 | 2/1R 2件・2/2 1件 |
| ファン | 3 | F-EVA-CHK-05 | 2/2 2件・3/2R 1件 |
| 与圧服の構造 | 9 | F-EVA-CHK-01・F-EVA-CHK-04 | 2/2 6件・2/1R 1件・3/3 1件・NA 1件 |

| ID | ワークシート | NASA FMEA | 区分（品目） | 重要度 NASA | 重要度 IOA | 機能・IF | 根拠 |
|---|---|---|---|---|---|---|---|
| CIL-EVA-001 | EMU-192A | 480-FM6 | CO2 除去（CCC）（CONTAMINANT CONTROL CARTRIDGE (ITEM 480)） | 1/1 | 2/1R | F-EVA-MNT-07 | 評価ワークシート EMU-192A は、NASA FMEA 480-FM6 の品目「CONTAMINANT CONTROL CARTRIDGE (ITEM 480)」を扱い、重要度は NASA が 1/1、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=144） |
| CIL-EVA-002 | EMU-202 | — | 酸素系（調圧器・SOP）（CHECK VALVE AND VENT FLOW SENSOR (ITEM 121)） | 空欄 | 2/1R | F-EVA-CHK-04・F-EVA-CHK-06 | 評価ワークシート EMU-202 は、品目「CHECK VALVE AND VENT FLOW SENSOR (ITEM 121)」を扱い、重要度は NASA が空欄、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=145） |
| CIL-EVA-003 | EMU-225 | — | 表示・制御・計測（DCM・C&W など）（CHECK VALVE AND FILTER (ITEM II3A)） | 空欄 | 3/1R | F-EVA-CHK-01・F-EVA-CHK-13 | 評価ワークシート EMU-225 は、品目「CHECK VALVE AND FILTER (ITEM II3A)」を扱い、重要度は NASA が空欄、IOA が 3/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=146） |
| CIL-EVA-004 | EMU-226 | — | 表示・制御・計測（DCM・C&W など）（CHECK VALVE AND FILTER (ITEM II3A)） | 空欄 | 2/1R | F-EVA-CHK-01・F-EVA-CHK-13 | 評価ワークシート EMU-226 は、品目「CHECK VALVE AND FILTER (ITEM II3A)」を扱い、重要度は NASA が空欄、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=147） |
| CIL-EVA-005 | EMU-238 | II3D-FM3 | 酸素系（調圧器・SOP）（PRIMARY REGULATOR (ITEM II3D)） | 3/3 | 2/1R | F-EVA-CHK-04・F-EVA-CHK-06 | 評価ワークシート EMU-238 は、NASA FMEA II3D-FM3 の品目「PRIMARY REGULATOR (ITEM II3D)」を扱い、重要度は NASA が 3/3、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=148） |
| CIL-EVA-006 | EMU-239 | II3D-FM3 | 酸素系（調圧器・SOP）（PRIMARY REGULATOR (ITEM II3D)） | 3/3 | 2/1R | F-EVA-CHK-04・F-EVA-CHK-06 | 評価ワークシート EMU-239 は、NASA FMEA II3D-FM3 の品目「PRIMARY REGULATOR (ITEM II3D)」を扱い、重要度は NASA が 3/3、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=149） |
| CIL-EVA-007 | EMU-243 | II3E-FM2 | 水系（給水・冷却）（H20 REGULATOR (ITEM II3E)） | 3/3 | 2/1R | F-EVA-MNT-03・F-EVA-MNT-05 | 評価ワークシート EMU-243 は、NASA FMEA II3E-FM2 の品目「H20 REGULATOR (ITEM II3E)」を扱い、重要度は NASA が 3/3、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=150） |
| CIL-EVA-008 | EMU-298A | 215-FM5 | 表示・制御・計測（DCM・C&W など）（PRESSURE TRANSDUCER (ITEM 215)） | 2/1R | 1/1 | F-EVA-CHK-01・F-EVA-CHK-13 | 評価ワークシート EMU-298A は、NASA FMEA 215-FM5 の品目「PRESSURE TRANSDUCER (ITEM 215)」を扱い、重要度は NASA が 2/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=151） |
| CIL-EVA-009 | EMU-301 | 215-FMI, FM7 | 表示・制御・計測（DCM・C&W など）（PRESSURE TRANSDUCER (ITEM 215)） | 2/1R | 2/2 | F-EVA-CHK-01・F-EVA-CHK-13 | 評価ワークシート EMU-301 は、NASA FMEA 215-FMI, FM7 の品目「PRESSURE TRANSDUCER (ITEM 215)」を扱い、重要度は NASA が 2/1R、IOA が 2/2 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=152） |
| CIL-EVA-010 | EMU-320 | — | 酸素系（調圧器・SOP）（SOP FILL PORT QD AND FILTER (ITEM 213F)） | 空欄 | 3/2R | F-EVA-CHK-04・F-EVA-CHK-06 | 評価ワークシート EMU-320 は、品目「SOP FILL PORT QD AND FILTER (ITEM 213F)」を扱い、重要度は NASA が空欄、IOA が 3/2R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=153） |
| CIL-EVA-011 | EMU-321 | — | 酸素系（調圧器・SOP）（SOP ASSEMBLY (ITEM 200)） | 空欄 | 3/2R | F-EVA-CHK-04・F-EVA-CHK-06 | 評価ワークシート EMU-321 は、品目「SOP ASSEMBLY (ITEM 200)」を扱い、重要度は NASA が空欄、IOA が 3/2R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=154） |
| CIL-EVA-012 | EMU-322 | 200-FMI | 酸素系（調圧器・SOP）（SOP ASSEMBLY(ITEM 200)） | 1/1 | 2/1R | F-EVA-CHK-04・F-EVA-CHK-06 | 評価ワークシート EMU-322 は、NASA FMEA 200-FMI の品目「SOP ASSEMBLY(ITEM 200)」を扱い、重要度は NASA が 1/1、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=155） |
| CIL-EVA-013 | EMU-384 | — | 表示・制御・計測（DCM・C&W など）（COMMON MULTIPLE CONNECTOR (ITEM 330)） | 空欄 | 2/2 | F-EVA-CHK-01・F-EVA-CHK-13 | 評価ワークシート EMU-384 は、品目「COMMON MULTIPLE CONNECTOR (ITEM 330)」を扱い、重要度は NASA が空欄、IOA が 2/2 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=156） |
| CIL-EVA-014 | EMU-387 | — | 表示・制御・計測（DCM・C&W など）（COMMON MULTIPLE CONNECTOR (ITEM 330)） | 空欄 | 2/1R | F-EVA-CHK-01・F-EVA-CHK-13 | 評価ワークシート EMU-387 は、品目「COMMON MULTIPLE CONNECTOR (ITEM 330)」を扱い、重要度は NASA が空欄、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=157） |
| CIL-EVA-015 | EMU-393A | 360-FM7 | 表示・制御・計測（DCM・C&W など）（VOLUME CONTROL (ITEM 360)） | — | 2/2 | F-EVA-CHK-01・F-EVA-CHK-13 | 評価ワークシート EMU-393A は、NASA FMEA 360-FM7 の品目「VOLUME CONTROL (ITEM 360)」を扱い、重要度は IOA が 2/2 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=158） |
| CIL-EVA-016 | EMU-413 | 362-FM8 | 表示・制御・計測（DCM・C&W など）（EVC SELECTOR SWITCH (ITEM 362)） | 3/2R | 3/3 | F-EVA-CHK-01・F-EVA-CHK-13 | 評価ワークシート EMU-413 は、NASA FMEA 362-FM8 の品目「EVC SELECTOR SWITCH (ITEM 362)」を扱い、重要度は NASA が 3/2R、IOA が 3/3 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=159） |
| CIL-EVA-017 | EMU-439 | — | ファン（FAN SWITCH (ITEM 366)） | 空欄 | 2/2 | F-EVA-CHK-05 | 評価ワークシート EMU-439 は、品目「FAN SWITCH (ITEM 366)」を扱い、重要度は NASA が空欄、IOA が 2/2 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=160） |
| CIL-EVA-018 | EMU-440 | — | ファン（FAN SWITCH (ITEM 366)） | 空欄 | 3/2R | F-EVA-CHK-05 | 評価ワークシート EMU-440 は、品目「FAN SWITCH (ITEM 366)」を扱い、重要度は NASA が空欄、IOA が 3/2R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=161） |
| CIL-EVA-019 | EMU-441 | 366-FM3 | ファン（FAN SWITCH (ITEM 366)） | 2/2 | 2/2 | F-EVA-CHK-05 | 評価ワークシート EMU-441 は、NASA FMEA 366-FM3 の品目「FAN SWITCH (ITEM 366)」を扱い、重要度は NASA が 2/2、IOA が 2/2 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=162） |
| CIL-EVA-020 | EMU-447 | 367-FM5 | 水系（給水・冷却）（FEEDWATER VALVE SWITCH (ITEM 367)） | 2/2 | 2/1R | F-EVA-MNT-03・F-EVA-MNT-05 | 評価ワークシート EMU-447 は、NASA FMEA 367-FM5 の品目「FEEDWATER VALVE SWITCH (ITEM 367)」を扱い、重要度は NASA が 2/2、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=163） |
| CIL-EVA-021 | EMU-453 | 368-FM2 | 表示・制御・計測（DCM・C&W など）（CAUTION AND WARNING SWITCH (ITEM 368)） | 2/2 | 2/1R | F-EVA-CHK-01・F-EVA-CHK-13 | 評価ワークシート EMU-453 は、NASA FMEA 368-FM2 の品目「CAUTION AND WARNING SWITCH (ITEM 368)」を扱い、重要度は NASA が 2/2、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=164） |
| CIL-EVA-022 | EMU-458 | 351-FMI | 表示・制御・計測（DCM・C&W など）（BITE INDICATOR (ITEM 363)） | 3/2R | 2/2 | F-EVA-CHK-01・F-EVA-CHK-13 | 評価ワークシート EMU-458 は、NASA FMEA 351-FMI の品目「BITE INDICATOR (ITEM 363)」を扱い、重要度は NASA が 3/2R、IOA が 2/2 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=165） |
| CIL-EVA-023 | EMU-463 | — | 表示・制御・計測（DCM・C&W など）（CAUTION AND WARNING ELECTRONICS (ITEM 150)） | 空欄 | 2/2 | F-EVA-CHK-01・F-EVA-CHK-13 | 評価ワークシート EMU-463 は、品目「CAUTION AND WARNING ELECTRONICS (ITEM 150)」を扱い、重要度は NASA が空欄、IOA が 2/2 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=166） |
| CIL-EVA-024 | EMU-464 | — | 表示・制御・計測（DCM・C&W など）（CAUTION AND WARNING ELECTRONICS (ITEM 150)） | 空欄 | 2/2 | F-EVA-CHK-01・F-EVA-CHK-13 | 評価ワークシート EMU-464 は、品目「CAUTION AND WARNING ELECTRONICS (ITEM 150)」を扱い、重要度は NASA が空欄、IOA が 2/2 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=167） |
| CIL-EVA-025 | EMU-466 | 150-FMI0 | 表示・制御・計測（DCM・C&W など）（CAUTION AND WARNING ELECTRONICS (ITEM 150)） | 3/2R | 2/2 | F-EVA-CHK-01・F-EVA-CHK-13 | 評価ワークシート EMU-466 は、NASA FMEA 150-FMI0 の品目「CAUTION AND WARNING ELECTRONICS (ITEM 150)」を扱い、重要度は NASA が 3/2R、IOA が 2/2 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=168） |
| CIL-EVA-026 | EMU-476 | — | 表示・制御・計測（DCM・C&W など）（DCM ELECTRONICS (ITEM 350)） | 空欄 | 3/2R | F-EVA-CHK-01・F-EVA-CHK-13 | 評価ワークシート EMU-476 は、品目「DCM ELECTRONICS (ITEM 350)」を扱い、重要度は NASA が空欄、IOA が 3/2R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=169） |
| CIL-EVA-027 | EMU-478 | — | 表示・制御・計測（DCM・C&W など）（DCM ELECTRONICS (ITEM 350)） | 空欄 | 3/2R | F-EVA-CHK-01・F-EVA-CHK-13 | 評価ワークシート EMU-478 は、品目「DCM ELECTRONICS (ITEM 350)」を扱い、重要度は NASA が空欄、IOA が 3/2R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=170） |
| CIL-EVA-028 | EMU-479 | — | 表示・制御・計測（DCM・C&W など）（DCM ELECTRONICS (ITEM 350)） | 空欄 | 2/1R | F-EVA-CHK-01・F-EVA-CHK-13 | 評価ワークシート EMU-479 は、品目「DCM ELECTRONICS (ITEM 350)」を扱い、重要度は NASA が空欄、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=171） |
| CIL-EVA-029 | EMU-480 | — | 表示・制御・計測（DCM・C&W など）（DCM ELECTRONICS (ITEM 350)） | 空欄 | 2/1R | F-EVA-CHK-01・F-EVA-CHK-13 | 評価ワークシート EMU-480 は、品目「DCM ELECTRONICS (ITEM 350)」を扱い、重要度は NASA が空欄、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=172） |
| CIL-EVA-030 | EMU-485 | — | 表示・制御・計測（DCM・C&W など）（DCM ELECTRONICS (ITEM 350)） | 空欄 | 2/2 | F-EVA-CHK-01・F-EVA-CHK-13 | 評価ワークシート EMU-485 は、品目「DCM ELECTRONICS (ITEM 350)」を扱い、重要度は NASA が空欄、IOA が 2/2 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=173） |
| CIL-EVA-031 | EMU-609 | I02-FM26 | 水系（給水・冷却）（MULTIPLE WATER CONNECTOR (HUT HALF)） | 3/3 | 2/2 | F-EVA-MNT-03・F-EVA-MNT-05 | 評価ワークシート EMU-609 は、NASA FMEA I02-FM26 の品目「MULTIPLE WATER CONNECTOR (HUT HALF)」を扱い、重要度は NASA が 3/3、IOA が 2/2 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=174） |
| CIL-EVA-032 | EMU-612 | — | 与圧服の構造（HARD UPPER TORSO SHELL） | 空欄 | 2/2 | F-EVA-CHK-01・F-EVA-CHK-04 | 評価ワークシート EMU-612 は、品目「HARD UPPER TORSO SHELL」を扱い、重要度は NASA が空欄、IOA が 2/2 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=175） |
| CIL-EVA-033 | EMU-615 | 102-FMI8 | 与圧服の構造（BODY SEAL CLOSURE (HUT SIDE)） | 1/1 | 2/1R | F-EVA-CHK-01・F-EVA-CHK-04 | 評価ワークシート EMU-615 は、NASA FMEA 102-FMI8 の品目「BODY SEAL CLOSURE (HUT SIDE)」を扱い、重要度は NASA が 1/1、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=176） |
| CIL-EVA-034 | EMU-624 | 108-FM8 | 与圧服の構造（EXTRAVEHICULAR VISOR ASSEMBLY） | 2/2 | 3/3 | F-EVA-CHK-01・F-EVA-CHK-04 | 評価ワークシート EMU-624 は、NASA FMEA 108-FM8 の品目「EXTRAVEHICULAR VISOR ASSEMBLY」を扱い、重要度は NASA が 2/2、IOA が 3/3 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=177） |
| CIL-EVA-035 | EMU-626 | 108-FM7 | 与圧服の構造（EXTRAVEHICULARVISOR ASSEMBLY） | 3/3 | 2/2 | F-EVA-CHK-01・F-EVA-CHK-04 | 評価ワークシート EMU-626 は、NASA FMEA 108-FM7 の品目「EXTRAVEHICULARVISOR ASSEMBLY」を扱い、重要度は NASA が 3/3、IOA が 2/2 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=178） |
| CIL-EVA-036 | EMU-657 | 104-FM3 | 与圧服の構造（BODYSEAL CLOSURE (LTA SIDE)） | 3/2R | 2/2 | F-EVA-CHK-01・F-EVA-CHK-04 | 評価ワークシート EMU-657 は、NASA FMEA 104-FM3 の品目「BODYSEAL CLOSURE (LTA SIDE)」を扱い、重要度は NASA が 3/2R、IOA が 2/2 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=179） |
| CIL-EVA-037 | EMU-759X | 300-FM7 | 表示・制御・計測（DCM・C&W など）（DCM） | 3/2R | 3/1R | F-EVA-CHK-01・F-EVA-CHK-13 | 評価ワークシート EMU-759X は、NASA FMEA 300-FM7 の品目「DCM」を扱い、重要度は NASA が 3/2R、IOA が 3/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=180） |
| CIL-EVA-038 | EMU-784X | 100-FMI | 表示・制御・計測（DCM・C&W など）（PLSS） | 2/2 | 2/1R | F-EVA-CHK-01・F-EVA-CHK-13 | 評価ワークシート EMU-784X は、NASA FMEA 100-FMI の品目「PLSS」を扱い、重要度は NASA が 2/2、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=181） |
| CIL-EVA-039 | EMU-819X | 106-FM6 | 与圧服の構造（RESTRAINT MODIFIED） | 2/2 | NA | F-EVA-CHK-01・F-EVA-CHK-04 | 評価ワークシート EMU-819X は、NASA FMEA 106-FM6 の品目「RESTRAINT MODIFIED」を扱い、重要度は NASA が 2/2、IOA が NA である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=182） |
| CIL-EVA-040 | EMU-823X | 106-FMI2 | 与圧服の構造（WRIST DISCONNECT(GLOVE SIDE)） | 3/2R | 2/2 | F-EVA-CHK-01・F-EVA-CHK-04 | 評価ワークシート EMU-823X は、NASA FMEA 106-FMI2 の品目「WRIST DISCONNECT(GLOVE SIDE)」を扱い、重要度は NASA が 3/2R、IOA が 2/2 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=183） |
| CIL-EVA-041 | EMU-825X | — | 与圧服の構造（WAIST RESTRAINT AND BLADDER） | 空欄 | 2/2 | F-EVA-CHK-01・F-EVA-CHK-04 | 評価ワークシート EMU-825X は、品目「WAIST RESTRAINT AND BLADDER」を扱い、重要度は NASA が空欄、IOA が 2/2 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=184） |
| CIL-EVA-042 | EMU-888X | 107-FMI | 与圧服の構造（RESTRAINT ASSEMBLY） | 3/3 | 2/2 | F-EVA-CHK-01・F-EVA-CHK-04 | 評価ワークシート EMU-888X は、NASA FMEA 107-FMI の品目「RESTRAINT ASSEMBLY」を扱い、重要度は NASA が 3/3、IOA が 2/2 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=185） |

## 5. 要約

IOA の表1-1 の2サブシステムで、CIL は IOA 642件・NASA 584件、課題は 132件である。

CIL 課題の評価ワークシートは 42件で、多い区分は 表示・制御・計測（DCM・C&W など）（20件）・与圧服の構造（9件）・酸素系（調圧器・SOP）（6件）である。IOA の重要度は 2/2 17件・2/1R 14件・3/2R 5件・3/1R 2件・3/3 2件・1/1 1件・NA 1件である。

## 6. 注記（出典間の相違・構成変更）

> **注記** IOA の件数は1988年1月1日時点の中間報告の値で、その後の改修（AP-101S・MEDS・GPS など）を含まない。

> **注記** 評価ワークシートの区分は品目名の語による（上から順に最初に当たったもの、どれにも当たらなければ「表示・制御・計測（DCM・C&W など）」）：水系（給水・冷却）＝「H20|H2O|WATER|FEEDWATER」；CO2 除去（CCC）＝「CONTAMINANT|LIOH」；ファン＝「FAN」；酸素系（調圧器・SOP）＝「REGULATOR|SOP|VENT FLOW」；与圧服の構造＝「TORSO|SEAL|VISOR|RESTRAINT|WRIST|WAIST|BLADDER」。機能・IF の対応は区分ごとで、品目1件ずつに確かめたものではない。

> **注記** 付録C の評価ワークシートは CIL の課題（IOA が NASA の FMEA・CIL と異なる評価をした品目）を集めたもので、系の CIL の全件ではない。CIL の欄（[X] の位置）は OCR で欄の並びが崩れていて確かめられないため載せていない。

> **注記** EMU の機器の構造と流れ（ワークシートの品目の位置づけ）は [SSD-EMU-EVA-001](SSD-EMU-EVA-001.md) に示す（SysML v2 テキスト：SysML/SSD-EMU-EVA-001.sysml）。

## 7. 参考文献

1. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート NWS-204（PDF p4） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=4
2. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） 付録B Change Control（PDF p2195） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2195
3. NASA-CR-185550 IOA: FMEA/CIL Assessment Interim Report Table 1-1 FMEA/CIL Assessment Overview (Interim)（PDF p13） — https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13
4. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-192A（PDF p144） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=144
5. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-202（PDF p145） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=145
6. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-225（PDF p146） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=146
7. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-226（PDF p147） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=147
8. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-238（PDF p148） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=148
9. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-239（PDF p149） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=149
10. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-243（PDF p150） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=150
11. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-298A（PDF p151） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=151
12. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-301（PDF p152） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=152
13. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-320（PDF p153） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=153
14. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-321（PDF p154） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=154
15. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-322（PDF p155） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=155
16. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-384（PDF p156） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=156
17. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-387（PDF p157） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=157
18. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-393A（PDF p158） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=158
19. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-413（PDF p159） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=159
20. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-439（PDF p160） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=160
21. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-440（PDF p161） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=161
22. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-441（PDF p162） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=162
23. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-447（PDF p163） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=163
24. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-453（PDF p164） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=164
25. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-458（PDF p165） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=165
26. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-463（PDF p166） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=166
27. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-464（PDF p167） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=167
28. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-466（PDF p168） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=168
29. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-476（PDF p169） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=169
30. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-478（PDF p170） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=170
31. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-479（PDF p171） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=171
32. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-480（PDF p172） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=172
33. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-485（PDF p173） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=173
34. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-609（PDF p174） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=174
35. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-612（PDF p175） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=175
36. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-615（PDF p176） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=176
37. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-624（PDF p177） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=177
38. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-626（PDF p178） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=178
39. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-657（PDF p179） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=179
40. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-759X（PDF p180） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=180
41. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-784X（PDF p181） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=181
42. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-819X（PDF p182） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=182
43. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-823X（PDF p183） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=183
44. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-825X（PDF p184） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=184
45. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート EMU-888X（PDF p185） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=185

## 8. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（IOA の件数 2サブシステム、CIL 課題の評価ワークシート 42件と機能・IF の対応） |
| Rev. A | 2026-10-09 | EMU の構造・内部ブロック・状態定義書 SSD-EMU-EVA-001 への参照を注記（Rev. BM） |
