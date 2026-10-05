# 環境制御・生命維持（ECLSS）故障解析表（FMEA・CIL）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FMEA-ECLSS-001 |
| 表題 | 環境制御・生命維持（ECLSS）故障解析表（FMEA・CIL） |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FMEA-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図3 ECLSS 機能構成 |

## 1. 目的

ECLSSの故障モード・影響解析（FMEA）と重要品目リスト（CIL）について、IOA（Independent Orbiter Assessment）の件数、IOA が NASA の評価と食い違いを指摘した CIL 課題の評価ワークシートと機能・IF の対応、運用飛行規則の [CIL] の規則を、根拠の頁とともに示す。系全体の冗長度の段階と重要度の定義は SSD-FMEA-ORB-001（総括・索引）に示す。

## 2. 対象と書き方

- 重要度は「ハードウェア／機能」の形（1/1、2/1R など）で、定義は SSD-FMEA-ORB-001 の「冗長度の段階と重要度」による。
- 評価ワークシートは、NASA と IOA のそれぞれについて重要度・冗長スクリーン・CIL の欄を並べ、異なる点を比較の欄に示し、IOA の勧告を記す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=4）
- 運用飛行規則では、CIL に関係する規則の表題に [CIL] を付け、規則の変更が CIL の存続理由に影響するときは、存続理由の変更が承認されるまで取り込まない。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2195）

## 3. IOA の FMEA・CIL の件数

- 表1-1（1988年1月1日時点）では、能動熱制御系・生命維持系（ATCS・LSS）の FMEA は IOA 1,068件・NASA 708件で課題402件、CIL は IOA 318件・NASA 210件で課題141件である。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13）
- 表1-1（1988年1月1日時点）では、大気再生・与圧制御系（ARPCS）の FMEA は IOA 273件・NASA 262件で課題124件、CIL は IOA 73件・NASA 87件で課題48件である。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13）
- 表1-1（1988年1月1日時点）では、大気再生系（ARS）の FMEA は IOA 223件・NASA 311件で課題102件、CIL は IOA 84件・NASA 113件で課題36件である。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13）

以上の3サブシステムの計は、FMEA が IOA 1,564件・NASA 1,281件・課題628件、CIL が IOA 475件・NASA 410件・課題225件である。

## 4. CIL 課題の評価ワークシートと機能・IF の対応

IOA の CIL 課題の解決報告（NASA-CR-185524 第2巻）の付録C にある ARS の評価ワークシート 38件を、品目名の語で区分し、その品目が担う機能行・IF に対応させた（区分の規則は注記）。品目は原文（OCR の読み取り）のまま示す。重要度の「空欄」はワークシートの欄が空のもの、「—」は欄を読み取れないものである。

区分ごとの件数：

| 区分 | 件数 | 機能・IF | IOA の重要度 |
|---|---|---|---|
| 水冷却ループ（熱交換器・配管・弁・フィルタ） | 23 | F-ECL-ARS-06・F-ECL-ARS-07 | 2/1R 9件・3/3 5件・2/2 3件・1/1 3件・NA 3件 |
| 水冷却ループの電源・スイッチ | 4 | F-ECL-ARS-06 | 3/3 2件・2/1R 1件・3/2R 1件 |
| CO2 除去（LiOH キャニスタ） | 1 | F-ECL-ARS-02 | 3/1R 1件 |
| 計測（CO2 分圧など） | 2 | F-ECL-ARS-01 | 3/3 2件 |
| 湿度分離器 | 2 | F-ECL-ARS-03 | 3/1R 1件・2/2 1件 |
| 空気の循環（ファン・ダクト） | 6 | F-ECL-ARS-02・F-ECL-ARS-05 | NA 6件 |

| ID | ワークシート | NASA FMEA | 区分（品目） | 重要度 NASA | 重要度 IOA | 機能・IF | 根拠 |
|---|---|---|---|---|---|---|---|
| CIL-ECLSS-001 | ARS-108 | 06-1-0543-3 | 水冷却ループ（熱交換器・配管・弁・フィルタ）（ACCUMULATOR (2)） | 3/1R | 2/1R | F-ECL-ARS-06・F-ECL-ARS-07 | 評価ワークシート ARS-108 は、NASA FMEA 06-1-0543-3 の品目「ACCUMULATOR (2)」を扱い、重要度は NASA が 3/1R、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=104） |
| CIL-ECLSS-002 | ARS-148 | — | 水冷却ループ（熱交換器・配管・弁・フィルタ）（FILTER, 40 MICRON (3)） | 空欄 | 2/1R | F-ECL-ARS-06・F-ECL-ARS-07 | 評価ワークシート ARS-148 は、品目「FILTER, 40 MICRON (3)」を扱い、重要度は NASA が空欄、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=105） |
| CIL-ECLSS-003 | ARS-151 | — | 水冷却ループ（熱交換器・配管・弁・フィルタ）（ORIFICE (3)） | 空欄 | 2/1R | F-ECL-ARS-06・F-ECL-ARS-07 | 評価ワークシート ARS-151 は、品目「ORIFICE (3)」を扱い、重要度は NASA が空欄、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=106） |
| CIL-ECLSS-004 | ARS-153 | — | 水冷却ループ（熱交換器・配管・弁・フィルタ）（ORIFICE (3)） | 空欄 | 2/1R | F-ECL-ARS-06・F-ECL-ARS-07 | 評価ワークシート ARS-153 は、品目「ORIFICE (3)」を扱い、重要度は NASA が空欄、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=107） |
| CIL-ECLSS-005 | ARS-170 | — | 水冷却ループ（熱交換器・配管・弁・フィルタ）（MANUAL OVERRIDE FOR BYPASS VALVE (2)） | 空欄 | 2/1R | F-ECL-ARS-06・F-ECL-ARS-07 | 評価ワークシート ARS-170 は、品目「MANUAL OVERRIDE FOR BYPASS VALVE (2)」を扱い、重要度は NASA が空欄、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=108） |
| CIL-ECLSS-006 | ARS-189 | 06-1-0563-4 | 水冷却ループ（熱交換器・配管・弁・フィルタ）（ORIFICES, AVIONICS BAY 2, (2)） | 2/1R | 3/3 | F-ECL-ARS-06・F-ECL-ARS-07 | 評価ワークシート ARS-189 は、NASA FMEA 06-1-0563-4 の品目「ORIFICES, AVIONICS BAY 2, (2)」を扱い、重要度は NASA が 2/1R、IOA が 3/3 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=109） |
| CIL-ECLSS-007 | ARS-191 | — | 水冷却ループ（熱交換器・配管・弁・フィルタ）（HATCH, THERMAL CONDITIONING SYSTEM (i)） | 空欄 | 2/1R | F-ECL-ARS-06・F-ECL-ARS-07 | 評価ワークシート ARS-191 は、品目「HATCH, THERMAL CONDITIONING SYSTEM (i)」を扱い、重要度は NASA が空欄、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=110） |
| CIL-ECLSS-008 | ARS-192 | — | 水冷却ループ（熱交換器・配管・弁・フィルタ）（HATCH, THERMAL CONDITIONING SYSTEM (i)） | 空欄 | 2/1R | F-ECL-ARS-06・F-ECL-ARS-07 | 評価ワークシート ARS-192 は、品目「HATCH, THERMAL CONDITIONING SYSTEM (i)」を扱い、重要度は NASA が空欄、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=111） |
| CIL-ECLSS-009 | ARS-194 | — | 水冷却ループ（熱交換器・配管・弁・フィルタ）（WINDOW THERMAL CONDITIONING SYSTEM） | 空欄 | 2/1R | F-ECL-ARS-06・F-ECL-ARS-07 | 評価ワークシート ARS-194 は、品目「WINDOW THERMAL CONDITIONING SYSTEM」を扱い、重要度は NASA が空欄、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=112） |
| CIL-ECLSS-010 | ARS-195 | 06-1-0561-2 | 水冷却ループ（熱交換器・配管・弁・フィルタ）（PAYLOAD BAY FLOOD LIGHT COLD PLATE） | 2/1R | 3/3 | F-ECL-ARS-06・F-ECL-ARS-07 | 評価ワークシート ARS-195 は、NASA FMEA 06-1-0561-2 の品目「PAYLOAD BAY FLOOD LIGHT COLD PLATE」を扱い、重要度は NASA が 2/1R、IOA が 3/3 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=113） |
| CIL-ECLSS-011 | ARS-199 | 06-1-0526-2 | 水冷却ループ（熱交換器・配管・弁・フィルタ）（LCVG HEAT EXCHANGER (HX) (I)） | 2/1R | 2/2 | F-ECL-ARS-06・F-ECL-ARS-07 | 評価ワークシート ARS-199 は、NASA FMEA 06-1-0526-2 の品目「LCVG HEAT EXCHANGER (HX) (I)」を扱い、重要度は NASA が 2/1R、IOA が 2/2 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=114） |
| CIL-ECLSS-012 | ARS-212 | 05-6U-2005-I | 水冷却ループの電源・スイッチ（CIRCUIT BREAKER, CB35 (i)） | 3/2R | 3/3 | F-ECL-ARS-06 | 評価ワークシート ARS-212 は、NASA FMEA 05-6U-2005-I の品目「CIRCUIT BREAKER, CB35 (i)」を扱い、重要度は NASA が 3/2R、IOA が 3/3 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=115） |
| CIL-ECLSS-013 | ARS-221 | 06-1-0615-1 | 水冷却ループ（熱交換器・配管・弁・フィルタ）（HEAT EXCHANGER, IMU (I)） | 3/1R | 1/1 | F-ECL-ARS-06・F-ECL-ARS-07 | 評価ワークシート ARS-221 は、NASA FMEA 06-1-0615-1 の品目「HEAT EXCHANGER, IMU (I)」を扱い、重要度は NASA が 3/1R、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=116） |
| CIL-ECLSS-014 | ARS-234 | — | 水冷却ループ（熱交換器・配管・弁・フィルタ）（FILTER, 300 MICRON (3) ARS-234） | 空欄 | 2/2 | F-ECL-ARS-06・F-ECL-ARS-07 | 評価ワークシート ARS-234 は、品目「FILTER, 300 MICRON (3) ARS-234」を扱い、重要度は NASA が空欄、IOA が 2/2 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=117） |
| CIL-ECLSS-015 | ARS-255 | — | 水冷却ループ（熱交換器・配管・弁・フィルタ）（CHECK VALVE (6)） | 空欄 | 2/2 | F-ECL-ARS-06・F-ECL-ARS-07 | 評価ワークシート ARS-255 は、品目「CHECK VALVE (6)」を扱い、重要度は NASA が空欄、IOA が 2/2 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=118） |
| CIL-ECLSS-016 | ARS-273 | 05-6U-2005-I | 水冷却ループの電源・スイッチ（CIRCUIT BREAKER, CB35 (i)） | 3/2R | 3/3 | F-ECL-ARS-06 | 評価ワークシート ARS-273 は、NASA FMEA 05-6U-2005-I の品目「CIRCUIT BREAKER, CB35 (i)」を扱い、重要度は NASA が 3/2R、IOA が 3/3 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=119） |
| CIL-ECLSS-017 | ARS-277 | 06-1-0427-1 | 水冷却ループ（熱交換器・配管・弁・フィルタ）（CHECK VALVE (3 )） | 2/1R | 3/3 | F-ECL-ARS-06・F-ECL-ARS-07 | 評価ワークシート ARS-277 は、NASA FMEA 06-1-0427-1 の品目「CHECK VALVE (3 )」を扱い、重要度は NASA が 2/1R、IOA が 3/3 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=120） |
| CIL-ECLSS-018 | ARS-286 | 06-1-0368-2 | 水冷却ループ（熱交換器・配管・弁・フィルタ）（TEMPERATURE CONTROL VALVE (i)） | 2/1R | 3/3 | F-ECL-ARS-06・F-ECL-ARS-07 | 評価ワークシート ARS-286 は、NASA FMEA 06-1-0368-2 の品目「TEMPERATURE CONTROL VALVE (i)」を扱い、重要度は NASA が 2/1R、IOA が 3/3 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=121） |
| CIL-ECLSS-019 | ARS-301A | 06-1-0340-2 | CO2 除去（LiOH キャニスタ）（LiOH CANISTER (2)） | 2/2 | 3/1R | F-ECL-ARS-02 | 評価ワークシート ARS-301A は、NASA FMEA 06-1-0340-2 の品目「LiOH CANISTER (2)」を扱い、重要度は NASA が 2/2、IOA が 3/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=122） |
| CIL-ECLSS-020 | ARS-303 | — | 水冷却ループ（熱交換器・配管・弁・フィルタ）（LINES & FITTINGS） | 空欄 | 1/1 | F-ECL-ARS-06・F-ECL-ARS-07 | 評価ワークシート ARS-303 は、品目「LINES & FITTINGS」を扱い、重要度は NASA が空欄、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=123） |
| CIL-ECLSS-021 | ARS-305 | 06-1-0330-2 | 水冷却ループ（熱交換器・配管・弁・フィルタ）（FILTER, 75 MICRON (I)） | 2/1R | 3/3 | F-ECL-ARS-06・F-ECL-ARS-07 | 評価ワークシート ARS-305 は、NASA FMEA 06-1-0330-2 の品目「FILTER, 75 MICRON (I)」を扱い、重要度は NASA が 2/1R、IOA が 3/3 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=124） |
| CIL-ECLSS-022 | ARS-315 | 05-6U-2008-I | 水冷却ループの電源・スイッチ（CIRCUIT BREAKER, CB95 THROUGH CBI00 (6) ARS-315 05-6U-2008-I） | 3/1R | 2/1R | F-ECL-ARS-06 | 評価ワークシート ARS-315 は、NASA FMEA 05-6U-2008-I の品目「CIRCUIT BREAKER, CB95 THROUGH CBI00 (6) ARS-315 05-6U-2008-I」を扱い、重要度は NASA が 3/1R、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=125） |
| CIL-ECLSS-023 | ARS-319 | — | 水冷却ループ（熱交換器・配管・弁・フィルタ）（CHECK VALVE (2)） | 空欄 | 2/1R | F-ECL-ARS-06・F-ECL-ARS-07 | 評価ワークシート ARS-319 は、品目「CHECK VALVE (2)」を扱い、重要度は NASA が空欄、IOA が 2/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=126） |
| CIL-ECLSS-024 | ARS-320 | 06-1-0338-1 | 計測（CO2 分圧など）（SENSOR, PPC02 (i)） | 2/2 | 3/3 | F-ECL-ARS-01 | 評価ワークシート ARS-320 は、NASA FMEA 06-1-0338-1 の品目「SENSOR, PPC02 (i)」を扱い、重要度は NASA が 2/2、IOA が 3/3 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=127） |
| CIL-ECLSS-025 | ARS-321 | — | 水冷却ループ（熱交換器・配管・弁・フィルタ）（LINES & FITTINGS） | 空欄 | 1/1 | F-ECL-ARS-06・F-ECL-ARS-07 | 評価ワークシート ARS-321 は、品目「LINES & FITTINGS」を扱い、重要度は NASA が空欄、IOA が 1/1 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=128） |
| CIL-ECLSS-026 | ARS-340 | 06-1-0316-1 | 湿度分離器（CHECK VALVE, SEPARATOR OUTLET (4)） | 3/2R | 3/1R | F-ECL-ARS-03 | 評価ワークシート ARS-340 は、NASA FMEA 06-1-0316-1 の品目「CHECK VALVE, SEPARATOR OUTLET (4)」を扱い、重要度は NASA が 3/2R、IOA が 3/1R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=129） |
| CIL-ECLSS-027 | ARS-344 | 06-1-0310-2 | 湿度分離器（LINES AND FITTINGS-SLURPER） | 3/2R | 2/2 | F-ECL-ARS-03 | 評価ワークシート ARS-344 は、NASA FMEA 06-1-0310-2 の品目「LINES AND FITTINGS-SLURPER」を扱い、重要度は NASA が 3/2R、IOA が 2/2 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=130） |
| CIL-ECLSS-028 | ARS-1221X | 05-6U-2028-I | 水冷却ループの電源・スイッチ（SWITCH, S6, WCL2 (I) ARS-1221X 05-6U-2028-I COMPARE [ N /N ]） | 2/1R | 3/2R | F-ECL-ARS-06 | 評価ワークシート ARS-1221X は、NASA FMEA 05-6U-2028-I の品目「SWITCH, S6, WCL2 (I) ARS-1221X 05-6U-2028-I COMPARE [ N /N ]」を扱い、重要度は NASA が 2/1R、IOA が 3/2R である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=131） |
| CIL-ECLSS-029 | ARS-2211X | 06-1-0557-5 | 水冷却ループ（熱交換器・配管・弁・フィルタ）（IMU HEAT EXCHANGER） | 2/2 | NA | F-ECL-ARS-06・F-ECL-ARS-07 | 評価ワークシート ARS-2211X は、NASA FMEA 06-1-0557-5 の品目「IMU HEAT EXCHANGER」を扱い、重要度は NASA が 2/2、IOA が NA である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=132） |
| CIL-ECLSS-030 | ARS-2331X | 06-1-0571-2 | 水冷却ループ（熱交換器・配管・弁・フィルタ）（LINES & FITTINGS (ENTIRE LOOP)） | 2/1R | NA | F-ECL-ARS-06・F-ECL-ARS-07 | 評価ワークシート ARS-2331X は、NASA FMEA 06-1-0571-2 の品目「LINES & FITTINGS (ENTIRE LOOP)」を扱い、重要度は NASA が 2/1R、IOA が NA である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=133） |
| CIL-ECLSS-031 | ARS-2332X | 06-1-0579-2 | 水冷却ループ（熱交換器・配管・弁・フィルタ）（FLEX LINES） | 2/1R | NA | F-ECL-ARS-06・F-ECL-ARS-07 | 評価ワークシート ARS-2332X は、NASA FMEA 06-1-0579-2 の品目「FLEX LINES」を扱い、重要度は NASA が 2/1R、IOA が NA である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=134） |
| CIL-ECLSS-032 | ARS-2561X | 06-1-0611-1 | 空気の循環（ファン・ダクト）（DUCT SECTIONS, AVIONICS BAY ARS-2561X 06-1-0611-1） | 2/1R | NA | F-ECL-ARS-02・F-ECL-ARS-05 | 評価ワークシート ARS-2561X は、NASA FMEA 06-1-0611-1 の品目「DUCT SECTIONS, AVIONICS BAY ARS-2561X 06-1-0611-1」を扱い、重要度は NASA が 2/1R、IOA が NA である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=135） |
| CIL-ECLSS-033 | ARS-2562X | 06-1-0611-2 | 空気の循環（ファン・ダクト）（RETURN AIR DUCT SECTIONS-AVIONICS BAY） | 2/1R | NA | F-ECL-ARS-02・F-ECL-ARS-05 | 評価ワークシート ARS-2562X は、NASA FMEA 06-1-0611-2 の品目「RETURN AIR DUCT SECTIONS-AVIONICS BAY」を扱い、重要度は NASA が 2/1R、IOA が NA である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=136） |
| CIL-ECLSS-034 | ARS-3061X | 06-1-0301-4 | 空気の循環（ファン・ダクト）（CABIN FAN ASSEMBLY） | 2/2 | NA | F-ECL-ARS-02・F-ECL-ARS-05 | 評価ワークシート ARS-3061X は、NASA FMEA 06-1-0301-4 の品目「CABIN FAN ASSEMBLY」を扱い、重要度は NASA が 2/2、IOA が NA である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=137） |
| CIL-ECLSS-035 | ARS-3601X | 06-1-0630-1 | 空気の循環（ファン・ダクト）（RETURN AND SUPPLY AIR DUCT SECTIONS） | 2/2 | NA | F-ECL-ARS-02・F-ECL-ARS-05 | 評価ワークシート ARS-3601X は、NASA FMEA 06-1-0630-1 の品目「RETURN AND SUPPLY AIR DUCT SECTIONS」を扱い、重要度は NASA が 2/2、IOA が NA である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=138） |
| CIL-ECLSS-036 | ARS-3604X | 06-1-0635-1 | 空気の循環（ファン・ダクト）（RETURN AIR DUCTS） | 2/2 | NA | F-ECL-ARS-02・F-ECL-ARS-05 | 評価ワークシート ARS-3604X は、NASA FMEA 06-1-0635-1 の品目「RETURN AIR DUCTS」を扱い、重要度は NASA が 2/2、IOA が NA である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=139） |
| CIL-ECLSS-037 | ARS-4017X | 06-1-0303-1 | 計測（CO2 分圧など）（SIGNAL CONDITIONER (i)） | 2/2 | 3/3 | F-ECL-ARS-01 | 評価ワークシート ARS-4017X は、NASA FMEA 06-1-0303-1 の品目「SIGNAL CONDITIONER (i)」を扱い、重要度は NASA が 2/2、IOA が 3/3 である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=140） |
| CIL-ECLSS-038 | ARS-4027X | 06-1-0615-2 | 空気の循環（ファン・ダクト）（IMU AIR DUCTS） | 2/2 | NA | F-ECL-ARS-02・F-ECL-ARS-05 | 評価ワークシート ARS-4027X は、NASA FMEA 06-1-0615-2 の品目「IMU AIR DUCTS」を扱い、重要度は NASA が 2/2、IOA が NA である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=141） |

## 5. 運用飛行規則の [CIL] の規則

運用飛行規則（NSTS-12820 Vol. A）の [CIL] の規則のうち、SSD-OPS-REF-001 §5 でECLSSの下位機能に対応づけたもの 1件を示す。「下位機能」は対応する機能説明書である。

| 規則 | 表題 | PDF頁 | 下位機能 | 根拠 |
|---|---|---|---|---|
| A17-405 | VACUUM VENT SYSTEMS MANAGEMENT | 1989 | SSD-FD-ECL-WCS-001 | 運用飛行規則 A17-405 の表題は「VACUUM VENT SYSTEMS MANAGEMENT [CIL]」である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1989） |

## 6. 要約

IOA の表1-1 の3サブシステムで、CIL は IOA 475件・NASA 410件、課題は 225件である。

CIL 課題の評価ワークシートは 38件で、多い区分は 水冷却ループ（熱交換器・配管・弁・フィルタ）（23件）・空気の循環（ファン・ダクト）（6件）・水冷却ループの電源・スイッチ（4件）である。IOA の重要度は 2/1R 10件・3/3 9件・NA 9件・2/2 4件・1/1 3件・3/1R 2件・3/2R 1件である。

[CIL] の規則は 1件（A17-405）である。

## 7. 注記（出典間の相違・構成変更）

> **注記** IOA の件数は1988年1月1日時点の中間報告の値で、その後の改修（AP-101S・MEDS・GPS など）を含まない。

> **注記** 評価ワークシートの区分は品目名の語による（上から順に最初に当たったもの、どれにも当たらなければ「水冷却ループ（熱交換器・配管・弁・フィルタ）」）：CO2 除去（LiOH キャニスタ）＝「LIOH」；計測（CO2 分圧など）＝「PPC02|PPCO2|SIGNAL CONDITIONER」；湿度分離器＝「SEPARATOR|SLURPER」；空気の循環（ファン・ダクト）＝「CABIN FAN|DUCT|RETURN AIR|SUPPLY AIR」；水冷却ループの電源・スイッチ＝「CIRCUIT BREAKER|SWITCH」。機能・IF の対応は区分ごとで、品目1件ずつに確かめたものではない。

> **注記** 付録C の評価ワークシートは CIL の課題（IOA が NASA の FMEA・CIL と異なる評価をした品目）を集めたもので、系の CIL の全件ではない。CIL の欄（[X] の位置）は OCR で欄の並びが崩れていて確かめられないため載せていない。

## 8. 参考文献

1. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート NWS-204（PDF p4） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=4
2. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） 付録B Change Control（PDF p2195） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2195
3. NASA-CR-185550 IOA: FMEA/CIL Assessment Interim Report Table 1-1 FMEA/CIL Assessment Overview (Interim)（PDF p13） — https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13
4. NASA-CR-185524 Vol. 2 Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） C.13-2 ARS-108 Accumulator（PDF p104） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=104
5. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート ARS-148（PDF p105） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=105
6. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート ARS-151（PDF p106） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=106
7. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート ARS-153（PDF p107） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=107
8. NASA-CR-185524 Vol. 2 Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） C.13-6 ARS-170 Manual Override for Bypass Valve（PDF p108） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=108
9. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート ARS-189（PDF p109） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=109
10. NASA-CR-185524 Vol. 2 Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） C.13-8 ARS-191 Hatch, Thermal Conditioning System（PDF p110） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=110
11. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート ARS-192（PDF p111） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=111
12. NASA-CR-185524 Vol. 2 Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） C.13-10 ARS-194 Window Thermal Conditioning System（PDF p112） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=112
13. NASA-CR-185524 Vol. 2 Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） C.13-11 ARS-195 Payload Bay Flood Light Cold Plate（PDF p113） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=113
14. NASA-CR-185524 Vol. 2 Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） C.13-12 ARS-199 LCVG Heat Exchanger（PDF p114） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=114
15. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート ARS-212（PDF p115） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=115
16. NASA-CR-185524 Vol. 2 Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） C.13-14 ARS-221 Heat Exchanger, IMU（PDF p116） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=116
17. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート ARS-234（PDF p117） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=117
18. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート ARS-255（PDF p118） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=118
19. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート ARS-273（PDF p119） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=119
20. NASA-CR-185524 Vol. 2 Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） C.13-18 ARS-277 Check Valve (3)（PDF p120） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=120
21. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート ARS-286（PDF p121） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=121
22. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート ARS-301A（PDF p122） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=122
23. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート ARS-303（PDF p123） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=123
24. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート ARS-305（PDF p124） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=124
25. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート ARS-315（PDF p125） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=125
26. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート ARS-319（PDF p126） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=126
27. NASA-CR-185524 Vol. 2 Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） C.13-25 ARS-320 Sensor, PPCO2（PDF p127） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=127
28. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート ARS-321（PDF p128） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=128
29. NASA-CR-185524 Vol. 2 Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） C.13-27 ARS-340 Check Valve, Separator Outlet（PDF p129） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=129
30. NASA-CR-185524 Vol. 2 Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） C.13-28 ARS-344 Lines and Fittings-Slurper（PDF p130） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=130
31. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート ARS-1221X（PDF p131） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=131
32. NASA-CR-185524 Vol. 2 Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） C.13-30 ARS-2211X IMU Heat Exchanger（PDF p132） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=132
33. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート ARS-2331X（PDF p133） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=133
34. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート ARS-2332X（PDF p134） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=134
35. NASA-CR-185524 Vol. 2 Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） C.13-33 ARS-2561X Duct Sections, Avionics Bay（PDF p135） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=135
36. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート ARS-2562X（PDF p136） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=136
37. NASA-CR-185524 Vol. 2 Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） C.13-35 ARS-3061X Cabin Fan Assembly（PDF p137） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=137
38. NASA-CR-185524 Vol. 2 Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） C.13-36 ARS-3601X Return and Supply Air Duct Sections（PDF p138） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=138
39. NASA-CR-185524 Vol. 2 Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） C.13-37 ARS-3604X Return Air Ducts（PDF p139） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=139
40. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） 付録C 評価ワークシート ARS-4017X（PDF p140） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=140
41. NASA-CR-185524 Vol. 2 Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） C.13-39 ARS-4027X IMU Air Ducts（PDF p141） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=141
42. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-405 Vacuum Vent Systems Management [CIL]（PDF p1989） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1989

## 9. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（IOA の件数 3サブシステム、CIL 課題の評価ワークシート 38件と機能・IF の対応、[CIL] の規則 1件） |
