# 延長能力定義書（着陸時の反応剤の残りで延長できた時間と平均電力）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-XCP-ORB-001 |
| 表題 | 延長能力定義書（着陸時の反応剤の残りで延長できた時間と平均電力） |
| 版・日付 | 初版（Rev. -）／2026-11-06 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-PRF-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図306 延長能力の値：飛行ごとの延長できた時間と平均電力（パラメトリック）・図307 延長能力の時間と平均電力の関係（パラメトリック）・図308 延長能力の値：年代ごとの件数と時間の範囲（パラメトリック） |

## 1. 目的

着陸時の反応剤（PRSD の酸素・水素）の残りで、その飛行を何時間延長できたか（延長能力）を、飛行ごとの記録と、平均電力との関係（パラメトリック）として持つ。これまでのモデルには、反応剤の定数（SSD-PRF-ORB-001 の PFR）と少数の飛行の残量（PFP）はあったが、飛行ごとの延長能力と、その電力の前提は無かった。本書は Mission Report 本文に書かれた値を、飛行ごとの表・電力の順の表・年代ごとの表（図306〜308）にする。**その飛行の着陸時点の能力で、将来の飛行の延長能力の予測ではない。判定は付けない**。

## 2. 範囲と書き方

記録は Mission Report 本文の『N 時間の延長が可能だった』の記述がある 96飛行（1飛行1件）。判断に迷う 11飛行は境界として数えず（表には理由つきで載せた）、図・集計は数える 85飛行（延長 24〜174 時間、中央値 73 時間）。電力は同じ文・同じ節に書かれたものだけを採り（63飛行）、書かれていなければ空欄にして推定しない。エネルギー（時間×電力）は本書の計算で、本文の値ではない。値は本文のまま（換算しない）。

## 3. 年代ごとの件数と時間の範囲

数える 85飛行を、実際の打上げ日の年代で数えた。最小・中央値・最大は延長の時間（時間）の計算で、評価ではない。打上げ日が通日だけで読めない飛行は別の行。図308 に同じ表を示す。

| 年代 | 飛行 | 最小（時間） | 中央値（時間） | 最大（時間） | 電力あり |
|---|---|---|---|---|---|
| 1980 年代 | 3 | 72.8 | 90 | 92 | 1 |
| 1990 年代 | 45 | 24 | 73 | 174 | 30 |
| 2000 年以降 | 31 | 28 | 73 | 170 | 30 |
| うち 2000 年代 | 27 | 28 | 71 | 170 | 26 |
| うち 2010 年代 | 4 | 71 | 85 | 142 | 4 |
| 打上げ日が読めない | 6 | 33 | 82.5 | 102 | 2 |

## 4. 電力の順の延長能力

電力（本文の kW）がある数える 63飛行を、電力の小さい順に示す。エネルギーは時間×電力の本書の計算（kWh）。関係の式・当てはめ・優劣は付けない。図307 に同じ表を示す。

| ID | 飛行 | 電力（kW） | 延長の時間（時間） | エネルギー（kWh、計算） |
|---|---|---|---|---|
| XCP-095 | STS-134 | 9 | 142 | 1,278 |
| XCP-091 | STS-130 | 9.2 | 95 | 874 |
| XCP-088 | STS-127 | 9.6 | 101 | 970 |
| XCP-089 | STS-128 | 9.6 | 100 | 960 |
| XCP-079 | STS-118 | 10 | 170 | 1,700 |
| XCP-081 | STS-120 | 10.24 | 133 | 1,362 |
| XCP-080 | STS-119 | 10.6 | 111 | 1,177 |
| XCP-014 | STS-44 | 12.8 | 154 | 1,971 |
| XCP-078 | STS-117 | 12.8 | 52 | 666 |
| XCP-035 | STS-70 | 13.1 | 55 | 720 |
| XCP-059 | STS-97 | 13.3 | 113 | 1,503 |
| XCP-073 | STS-112 | 13.4 | 118 | 1,581 |
| XCP-062 | STS-100 | 13.5 | 88 | 1,188 |
| XCP-076 | STS-115 | 13.5 | 71 | 958 |
| XCP-083 | STS-122 | 13.5 | 57 | 770 |
| XCP-006 | STS-34 | 13.6 | 72.8 | 990 |
| XCP-071 | STS-110 | 13.6 | 103 | 1,401 |
| XCP-072 | STS-111 | 13.6 | 42 | 571 |
| XCP-075 | STS-114 | 13.6 | 36 | 490 |
| XCP-082 | STS-121 | 13.6 | 57 | 775 |
| XCP-096 | STS-135 | 13.6 | 71 | 966 |
| XCP-004 | STS-32 | 13.7 | 97 | 1,329 |
| XCP-019 | STS-51 | 13.8 | 60 | 828 |
| XCP-037 | STS-72 | 13.8 | 148 | 2,042 |
| XCP-064 | STS-102 | 13.8 | 54 | 745 |
| XCP-069 | STS-108 | 13.8 | 78 | 1,076 |
| XCP-093 | STS-132 | 13.8 | 75 | 1,035 |
| XCP-029 | STS-64 | 13.9 | 33 | 459 |
| XCP-066 | STS-104 | 13.9 | 61 | 848 |
| XCP-067 | STS-105 | 13.9 | 73 | 1,015 |
| XCP-026 | STS-61 | 14.1 | 94 | 1,325 |
| XCP-050 | STS-88 | 14.2 | 51 | 724 |
| XCP-060 | STS-98 | 14.2 | 47 | 667 |
| XCP-077 | STS-116 | 14.2 | 33 | 469 |
| XCP-016 | STS-48 | 14.7 | 74 | 1,088 |
| XCP-024 | STS-57 | 14.7 | 24 | 353 |
| XCP-070 | STS-109 | 14.7 | 76 | 1,117 |
| XCP-068 | STS-106 | 14.8 | 57 | 844 |
| XCP-020 | STS-52 | 14.83 | 107.9 | 1,600 |
| XCP-034 | STS-69 | 14.9 | 81 | 1,207 |
| XCP-086 | STS-125 | 15 | 28 | 420 |
| XCP-048 | STS-85 | 15.1 | 56 | 846 |
| XCP-025 | STS-60 | 15.2 | 65 | 988 |
| XCP-045 | STS-82 | 15.3 | 51 | 780 |
| XCP-010 | STS-39 | 15.4 | 63 | 970 |
| XCP-065 | STS-103 | 15.6 | 122 | 1,903 |
| XCP-023 | STS-56 | 15.7 | 29.1 | 457 |
| XCP-015 | STS-45 | 15.8 | 31 | 490 |
| XCP-028 | STS-63 | 15.8 | 54 | 853 |
| XCP-033 | STS-68 | 15.8 | 54 | 853 |
| XCP-031 | STS-66 | 15.9 | 61 | 970 |
| XCP-039 | STS-74 | 15.9 | 116 | 1,844 |
| XCP-063 | STS-101 | 15.9 | 79 | 1,256 |
| XCP-027 | STS-62 | 16.1 | 155 | 2,496 |
| XCP-061 | STS-99 | 16.2 | 45 | 729 |
| XCP-036 | STS-71 | 16.7 | 65 | 1,086 |
| XCP-011 | STS-40 | 17 | 73 | 1,241 |
| XCP-013 | STS-42 | 17.2 | 31 | 533 |
| XCP-057 | STS-95 | 17.9 | 68 | 1,217 |
| XCP-032 | STS-67 | 18.1 | 97 | 1,756 |
| XCP-030 | STS-65 | 18.8 | 47 | 884 |
| XCP-043 | STS-78 | 18.9 | 68 | 1,285 |
| XCP-038 | STS-73 | 19.5 | 70 | 1,365 |

## 5. 延長能力の記録

96飛行を、飛行番号の順に示す。時間・電力は本文のまま（空欄は本文に無い）。電力の種類は本文の語。『数え方』が境界のものは図・集計に数えない（理由を書いた）。エネルギーは本書の計算。

| ID | 飛行 | 打上げ日 | 延長の時間（時間） | 電力（kW） | 電力の種類 | ミッション平均（kW） | 延長日（時間／kW） | エネルギー（kWh、計算） | 数え方 | 根拠 |
|---|---|---|---|---|---|---|---|---|---|---|
| XCP-001 | STS-27 | 1988-12-02 | 92 | — | ミッション平均の電力 | 14.6 | — | — | 数える | STS-27 の延長能力：92 時間（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-27%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=8） |
| XCP-002 | STS-28 | 1989-08-08 | 90 | — | ミッション平均の電力 | — | — | — | 数える | STS-28 の延長能力：90 時間（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-28%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=10） |
| XCP-003 | STS-31 | 1990-04-24 | 90.6 | — | ミッション平均の電力 | 14.4 | — | — | 数える | STS-31 の延長能力：90.6 時間（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-31%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=11） |
| XCP-004 | STS-32 | 1990-01-09 | 97 | 13.7 | ミッション平均の電力 | 13.7 | — | 1,329 | 数える | STS-32 の延長能力：97 時間（13.7 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-32%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=13） |
| XCP-005 | STS-33 | 読めない | 99 | — | ミッション平均の電力 | 13.6 | — | — | 数える | STS-33 の延長能力：99 時間（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-33%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=9） |
| XCP-006 | STS-34 | 1989-10-18 | 72.8 | 13.6 | 電力の語なし | 13.6 | — | 990 | 数える | STS-34 の延長能力：72.8 時間（13.6 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-34%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=12） |
| XCP-007 | STS-35 | 1990-12-02 | 72 | — | 電力の語なし | 16.8 | — | — | 数える | STS-35 の延長能力：72 時間（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=12） |
| XCP-008 | STS-36 | 1990-02-28 | 70 | — | ミッション平均の電力 | 13.6 | — | — | 数える | STS-36 の延長能力：70 時間（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-36%20Space%20Shuttle%20Mission%20Report.pdf#page=11） |
| XCP-009 | STS-38 | 1990-11-15 | 79 | — | ミッション平均の電力 | 13.3 | — | — | 数える | STS-38 の延長能力：79 時間（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-38%20Space%20Shuttle%20Mission%20Report.pdf#page=8） |
| XCP-010 | STS-39 | 1991-04-28 | 63 | 15.4 | 電力の語なし | — | — | 970 | 数える | STS-39 の延長能力：63 時間（15.4 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-39%20Space%20Shuttle%20Mission%20Report.pdf#page=12） |
| XCP-011 | STS-40 | 1991-06-05 | 73 | 17 | 電力の語なし | — | — | 1,241 | 数える | STS-40 の延長能力：73 時間（17 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-40%20Space%20Shuttle%20Mission%20Report.pdf#page=13） |
| XCP-012 | STS-41 | 読めない | 100 | — | ミッション平均の電力 | 15.3 | — | — | 数える | STS-41 の延長能力：100 時間（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-41%20Space%20Shuttle%20Mission%20Report.pdf#page=12） |
| XCP-013 | STS-42 | 1992-01-22 | 31 | 17.2 | ミッション平均の電力 | 17.2 | — | 533 | 数える | STS-42 の延長能力：31 時間（17.2 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-42%20Space%20Shuttle%20Mission%20Report.pdf#page=13） |
| XCP-014 | STS-44 | 1991-11-24 | 154 | 12.8 | ミッション平均の電力 | 12.8 | — | 1,971 | 数える | STS-44 の延長能力：154 時間（12.8 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-44%20Space%20Shuttle%20Mission%20Report.pdf#page=14） |
| XCP-015 | STS-45 | 1992-03-24 | 31 | 15.8 | ミッション平均の電力 | 15.8 | — | 490 | 数える | STS-45 の延長能力：31 時間（15.8 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-45%20Space%20Shuttle%20Mission%20Report.pdf#page=13） |
| XCP-016 | STS-48 | 1991-09-12 | 74 | 14.7 | 電力の語なし | 14.7 | — | 1,088 | 数える | STS-48 の延長能力：74 時間（14.7 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-48%20Space%20Shuttle%20Mission%20Report.pdf#page=13） |
| XCP-017 | STS-49 | 1992-05-07 | 87.6 | — | ミッション平均の電力 | 13.49 | — | — | 数える | STS-49 の延長能力：87.6 時間（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-49%20Space%20Shuttle%20Mission%20Report.pdf#page=15） |
| XCP-018 | STS-50 | 1992-06-25 | 56 | — | 電力の語なし | 18.7 | — | — | 数える | STS-50 の延長能力：56 時間（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-50%20Space%20Shuttle%20Mission%20Report.pdf#page=15） |
| XCP-019 | STS-51 | 1993-09-12 | 60 | 13.8 | ミッション平均の電力 | 13.8 | — | 828 | 数える | STS-51 の延長能力：60 時間（13.8 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-51%20Space%20Shuttle%20Mission%20Report.pdf#page=21） |
| XCP-020 | STS-52 | 1992-10-22 | 107.9 | 14.83 | ミッション平均の電力 | 14.83 | — | 1,600 | 数える | STS-52 の延長能力：107.9 時間（14.83 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-52%20Space%20Shuttle%20Mission%20Report.pdf#page=14） |
| XCP-021 | STS-53 | 1992-12-02 | 83.1 | — | ミッション平均の電力 | 13.6 | — | — | 数える | STS-53 の延長能力：83.1 時間（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-53%20Space%20Shuttle%20Mission%20Report.pdf#page=15） |
| XCP-022 | STS-54 | 1993-01-13 | 111.5 | — | ミッション平均の電力 | — | — | — | 数える | STS-54 の延長能力：111.5 時間（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=14） |
| XCP-023 | STS-56 | 1993-04-08 | 29.1 | 15.7 | ミッション平均の電力 | — | — | 457 | 数える | STS-56 の延長能力：29.1 時間（15.7 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-56%20Space%20Shuttle%20Mission%20Report.pdf#page=22） |
| XCP-024 | STS-57 | 1993-06-21 | 24 | 14.7 | 電力の語なし | 14.7 | — | 353 | 数える | STS-57 の延長能力：24 時間（14.7 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-57%20Space%20Shuttle%20Mission%20Report.pdf#page=19） |
| XCP-025 | STS-60 | 1994-02-03 | 65 | 15.2 | ミッション平均の電力 | 15.2 | — | 988 | 数える | STS-60 の延長能力：65 時間（15.2 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-60%20Space%20Shuttle%20Mission%20Report.pdf#page=18） |
| XCP-026 | STS-61 | 1993-12-02 | 94 | 14.1 | ミッション平均の電力 | 14.1 | — | 1,325 | 数える | STS-61 の延長能力：94 時間（14.1 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-61%20Space%20Shuttle%20Mission%20Report.pdf#page=18） |
| XCP-027 | STS-62 | 1994-03-04 | 155 | 16.1 | 電力の語なし | — | 229 時間／11.1 kW | 2,496 | 数える | STS-62 の延長能力：155 時間（16.1 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-62%20Space%20Shuttle%20Mission%20Report.pdf#page=22） |
| XCP-028 | STS-63 | 1995-02-03 | 54 | 15.8 | ミッション平均の電力 | 15.8 | 78 時間／11.1 kW | 853 | 数える | STS-63 の延長能力：54 時間（15.8 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-63%20Space%20Shuttle%20Mission%20Report.pdf#page=24） |
| XCP-029 | STS-64 | 読めない | 33 | 13.9 | ミッション平均の電力 | 13.9 | — | 459 | 数える | STS-64 の延長能力：33 時間（13.9 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-64%20Space%20Shuttle%20Mission%20Report.pdf#page=27） |
| XCP-030 | STS-65 | 1994-07-08 | 47 | 18.8 | ミッション平均の電力 | 18.8 | — | 884 | 数える | STS-65 の延長能力：47 時間（18.8 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=30） |
| XCP-031 | STS-66 | 1994-11-03 | 61 | 15.9 | ミッション平均の電力 | 15.9 | — | 970 | 数える | STS-66 の延長能力：61 時間（15.9 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-66%20Space%20Shuttle%20Mission%20Report.pdf#page=28） |
| XCP-032 | STS-67 | 1995-03-02 | 97 | 18.1 | ミッション平均の電力 | 18.1 | — | 1,756 | 数える | STS-67 の延長能力：97 時間（18.1 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-67%20Space%20Shuttle%20Mission%20Report.pdf#page=23） |
| XCP-033 | STS-68 | 1994-09-30 | 54 | 15.8 | ミッション平均の電力 | 15.8 | — | 853 | 数える | STS-68 の延長能力：54 時間（15.8 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-68%20Space%20Shuttle%20Mission%20Report.pdf#page=25） |
| XCP-034 | STS-69 | 1995-09-07 | 81 | 14.9 | ミッション平均の電力 | 14.9 | — | 1,207 | 数える | STS-69 の延長能力：81 時間（14.9 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-69%20Space%20Shuttle%20Mission%20Report.pdf#page=25） |
| XCP-035 | STS-70 | 読めない | 55 | 13.1 | ミッション平均の電力 | 13.1 | — | 720 | 数える | STS-70 の延長能力：55 時間（13.1 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-70%20Space%20Shuttle%20Mission%20Report.pdf#page=19） |
| XCP-036 | STS-71 | 1995-06-27 | 65 | 16.7 | ミッション平均の電力 | 16.7 | — | 1,086 | 数える | STS-71 の延長能力：65 時間（16.7 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-71%20Space%20Shuttle%20Mission%20Report.pdf#page=38） |
| XCP-037 | STS-72 | 1996-01-11 | 148 | 13.8 | ミッション平均の電力 | 13.8 | — | 2,042 | 数える | STS-72 の延長能力：148 時間（13.8 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-72%20Space%20Shuttle%20Mission%20Report.pdf#page=28） |
| XCP-038 | STS-73 | 1995-10-20 | 70 | 19.5 | ミッション平均の電力 | 19.5 | — | 1,365 | 数える | STS-73 の延長能力：70 時間（19.5 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-73%20Space%20Shuttle%20Mission%20Report.pdf#page=31） |
| XCP-039 | STS-74 | 1995-11-12 | 116 | 15.9 | ミッション平均の電力 | — | — | 1,844 | 数える | STS-74 の延長能力：116 時間（15.9 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-74%20Space%20Shuttle%20Mission%20Report.pdf#page=29） |
| XCP-040 | STS-75 | 1996-02-22 | 94 | — | 電力の語なし | 16.7 | — | — | 数える | STS-75 の延長能力：94 時間（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-75%20Space%20Shuttle%20Mission%20Report.pdf#page=26） |
| XCP-041 | STS-76 | 1996-03-22 | 89 | — | ミッション平均の電力 | 15.9 | 125 時間／11.1 kW | — | 数える | STS-76 の延長能力：89 時間（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-76%20Space%20Shuttle%20Mission%20Report.pdf#page=26） |
| XCP-042 | STS-77 | 1996-05-19 | 67 | — | ミッション平均の電力 | 16.3 | 98 時間／11.1 kW | — | 数える | STS-77 の延長能力：67 時間（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-77%20Space%20Shuttle%20Mission%20Report.pdf#page=26） |
| XCP-043 | STS-78 | 1996-06-20 | 68 | 18.9 | ミッション平均の電力 | 18.9 | 97 時間／13.5 kW | 1,285 | 数える | STS-78 の延長能力：68 時間（18.9 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-78%20Space%20Shuttle%20Mission%20Report.pdf#page=24） |
| XCP-044 | STS-80 | 1996-11-19 | 155 | — | ミッション平均の電力 | 13.8 | 182 時間／11.8 kW | — | 数える | STS-80 の延長能力：155 時間（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-80%20Space%20Shuttle%20Mission%20Report.pdf#page=29） |
| XCP-045 | STS-82 | 1997-02-11 | 51 | 15.3 | ミッション平均の電力 | 15.3 | 66 時間／11.8 kW | 780 | 数える | STS-82 の延長能力：51 時間（15.3 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-82%20Space%20Shuttle%20Mission%20Report.pdf#page=22） |
| XCP-046 | STS-83 | 1997-04-04 | — | — | 延長日の電力 | 17.9 | 570 時間／13.1 kW | — | 境界（数えない）：no hours at the mission-average power: the mission-average clause gives no number ('planned mission … | STS-83 の延長能力：ミッション平均の電力での時間なし（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-83%20Space%20Shuttle%20Mission%20Report.pdf#page=23） |
| XCP-047 | STS-84 | 1997-05-15 | — | — | 延長日の電力 | 16 | 114 時間／— kW | — | 境界（数えない）：mission-average extension is written only in days ('nearly four days') with no hours; only the exten… | STS-84 の延長能力：ミッション平均の電力での時間なし（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-84%20Space%20Shuttle%20Mission%20Report.pdf#page=24） |
| XCP-048 | STS-85 | 1997-08-07 | 56 | 15.1 | ミッション平均の電力 | 15.1 | 58 時間／— kW | 846 | 数える | STS-85 の延長能力：56 時間（15.1 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-85%20Space%20Shuttle%20Mission%20Report.pdf#page=29） |
| XCP-049 | STS-87 | 1997-11-19 | 174 | — | ミッション平均の電力 | 16.5 | 229 時間／12.7 kW | — | 数える | STS-87 の延長能力：174 時間（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-87%20Space%20Shuttle%20Mission%20Report.pdf#page=36） |
| XCP-050 | STS-88 | 1998-12-04 | 51 | 14.2 | ミッション平均の電力 | 14.2 | 62 時間／11.7 kW | 724 | 数える | STS-88 の延長能力：51 時間（14.2 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-88%20Space%20Shuttle%20Mission%20Report.pdf#page=29） |
| XCP-051 | STS-89 | 1998-01-22 | 83 | — | ミッション平均の電力 | 15.7 | 98 時間／13.2 kW | — | 数える | STS-89 の延長能力：83 時間（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-89%20Space%20Shuttle%20Mission%20Report.pdf#page=24） |
| XCP-052 | STS-90 | 読めない | 102 | — | ミッション平均の電力 | 18 | 143 時間／13.2 kW | — | 数える | STS-90 の延長能力：102 時間（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-90%20Space%20Shuttle%20Mission%20Report.pdf#page=23） |
| XCP-053 | STS-91 | 読めない | 66 | — | ミッション平均の電力 | 16.7 | 83 時間／13.2 kW | — | 数える | STS-91 の延長能力：66 時間（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-91%20Space%20Shuttle%20Mission%20Report.pdf#page=25） |
| XCP-054 | STS-92 | 2000-10-11 | 49 | 13.9 | ミッション平均の電力 | 14.8 | 55 時間／12.5 kW | — | 境界（数えない）：power_kw 13.9 (extension sentence) and mission_avg_kw 14.8 differ by 0.9 kW (> 0.5) | STS-92 の延長能力：49 時間（13.9 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-92%20Space%20Shuttle%20Mission%20Report.pdf#page=23） |
| XCP-055 | STS-93 | 1999-07-23 | 76 | — | ミッション平均の電力 | 12.9 | — | — | 数える | STS-93 の延長能力：76 時間（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-93%20Space%20Shuttle%20Mission%20Report.pdf#page=23） |
| XCP-056 | STS-94 | 読めない | — | — | 延長日の電力 | 20.2 | 111 時間／— kW | — | 境界（数えない）：no mission-average or unqualified hours: only the extension-day value (111 h, no kW) is stated | STS-94 の延長能力：ミッション平均の電力での時間なし（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-94%20Space%20Shuttle%20Mission%20Report.pdf#page=28） |
| XCP-057 | STS-95 | 1998-10-29 | 68 | 17.9 | ミッション平均の電力 | 17.9 | 94 時間／13.2 kW | 1,217 | 数える | STS-95 の延長能力：68 時間（17.9 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-95%20Space%20Shuttle%20Mission%20Report.pdf#page=31） |
| XCP-058 | STS-96 | 1999-05-27 | 92 | 15.5 | ミッション平均の電力 | 14.2 | 107 時間／13.2 kW | — | 境界（数えない）：power_kw 15.5 (extension sentence) and mission_avg_kw 14.2 (FC section) differ by 1.3 kW (> 0.5) | STS-96 の延長能力：92 時間（15.5 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-96%20Space%20Shuttle%20Mission%20Report.pdf#page=21） |
| XCP-059 | STS-97 | 2000-11-30 | 113 | 13.3 | ミッション平均の電力 | 13.3 | 123 時間／12.5 kW | 1,503 | 数える | STS-97 の延長能力：113 時間（13.3 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-97%20Space%20Shuttle%20Mission%20Report.pdf#page=23） |
| XCP-060 | STS-98 | 2001-02-07 | 47 | 14.2 | ミッション平均の電力 | 14.1 | 55 時間／12.1 kW | 667 | 数える | STS-98 の延長能力：47 時間（14.2 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-98%20Space%20Shuttle%20Mission%20Report.pdf#page=26） |
| XCP-061 | STS-99 | 2000-02-11 | 45 | 16.2 | ミッション平均の電力 | 16.2 | 63 時間／11.7 kW | 729 | 数える | STS-99 の延長能力：45 時間（16.2 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-99%20Space%20Shuttle%20Mission%20Report.pdf#page=24） |
| XCP-062 | STS-100 | 2001-04-19 | 88 | 13.5 | ミッション平均の電力 | 13.5 | 92 時間／12.9 kW | 1,188 | 数える | STS-100 の延長能力：88 時間（13.5 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-100%20Space%20Shuttle%20Mission%20Report.pdf#page=26） |
| XCP-063 | STS-101 | 2000-05-19 | 79 | 15.9 | ミッション平均の電力 | 15.9 | 97 時間／12.9 kW | 1,256 | 数える | STS-101 の延長能力：79 時間（15.9 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-101%20Space%20Shuttle%20Mission%20Report.pdf#page=26） |
| XCP-064 | STS-102 | 2001-03-08 | 54 | 13.8 | ミッション平均の電力 | 13.8 | 60 時間／12.1 kW | 745 | 数える | STS-102 の延長能力：54 時間（13.8 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-102%20Space%20Shuttle%20Mission%20Report.pdf#page=28） |
| XCP-065 | STS-103 | 1999-12-19 | 122 | 15.6 | ミッション平均の電力 | 15.6 | 144 時間／13.2 kW | 1,903 | 数える | STS-103 の延長能力：122 時間（15.6 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-103%20Space%20Shuttle%20Mission%20Report.pdf#page=22） |
| XCP-066 | STS-104 | 2001-07-12 | 61 | 13.9 | ミッション平均の電力 | 13.9 | 68 時間／12.3 kW | 848 | 数える | STS-104 の延長能力：61 時間（13.9 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-104%20Space%20Shuttle%20Mission%20Report.pdf#page=25） |
| XCP-067 | STS-105 | 2001-08-10 | 73 | 13.9 | ミッション平均の電力 | 13.9 | 82 時間／12.4 kW | 1,015 | 数える | STS-105 の延長能力：73 時間（13.9 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-105%20Space%20Shuttle%20Mission%20Report.pdf#page=22） |
| XCP-068 | STS-106 | 2000-09-08 | 57 | 14.8 | ミッション平均の電力 | 14.8 | 64 時間／13.2 kW | 844 | 数える | STS-106 の延長能力：57 時間（14.8 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-106%20Space%20Shuttle%20Mission%20Report.pdf#page=23） |
| XCP-069 | STS-108 | 2001-12-05 | 78 | 13.8 | ミッション平均の電力 | 13.8 | — | 1,076 | 数える | STS-108 の延長能力：78 時間（13.8 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=28） |
| XCP-070 | STS-109 | 2002-03-01 | 76 | 14.7 | ミッション平均の電力 | 14.7 | 92 時間／12.1 kW | 1,117 | 数える | STS-109 の延長能力：76 時間（14.7 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-109%20Space%20Shuttle%20Mission%20Report.pdf#page=23） |
| XCP-071 | STS-110 | 2002-04-08 | 103 | 13.6 | ミッション平均の電力 | 13.6 | 113 時間／12.1 kW | 1,401 | 数える | STS-110 の延長能力：103 時間（13.6 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-110%20Space%20Shuttle%20Mission%20Report.pdf#page=26） |
| XCP-072 | STS-111 | 2002-06-05 | 42 | 13.6 | ミッション平均の電力 | 13.6 | 43 時間／13.4 kW | 571 | 数える | STS-111 の延長能力：42 時間（13.6 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-111%20Space%20Shuttle%20Mission%20Report.pdf#page=26） |
| XCP-073 | STS-112 | 2002-10-07 | 118 | 13.4 | ミッション平均の電力 | 13.4 | 123 時間／12.9 kW | 1,581 | 数える | STS-112 の延長能力：118 時間（13.4 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-112%20Space%20Shuttle%20Mission%20Report.pdf#page=25） |
| XCP-074 | STS-113 | 2002-11-23 | 51 | — | ミッション平均の電力 | 13 | 50 時間／13.3 kW | — | 数える | STS-113 の延長能力：51 時間（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-113%20Space%20Shuttle%20Mission%20Report.pdf#page=28） |
| XCP-075 | STS-114 | 2005-07-26 | 36 | 13.6 | ミッション平均の電力 | 13.6 | — | 490 | 数える | STS-114 の延長能力：36 時間（13.6 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=43） |
| XCP-076 | STS-115 | 2006-09-09 | 71 | 13.5 | ミッション平均の電力 | 13.5 | 76 時間／12.48 kW | 958 | 数える | STS-115 の延長能力：71 時間（13.5 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-115%20Space%20Shuttle%20Mission%20Report.pdf#page=43） |
| XCP-077 | STS-116 | 2006-12-09 | 33 | 14.2 | ミッション平均の電力 | 14.2 | 35 時間／13.491 kW | 469 | 数える | STS-116 の延長能力：33 時間（14.2 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-116%20Space%20Shuttle%20Mission%20Report.pdf#page=42） |
| XCP-078 | STS-117 | 2007-06-08 | 52 | 12.8 | ミッション平均の電力 | 12.8 | 53 時間／12.501 kW | 666 | 数える | STS-117 の延長能力：52 時間（12.8 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-117%20Space%20Shuttle%20Mission%20Report.pdf#page=42） |
| XCP-079 | STS-118 | 2007-08-08 | 170 | 10 | ミッション平均の電力 | 10 | 131 時間／13.45 kW | 1,700 | 数える | STS-118 の延長能力：170 時間（10 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-118%20Space%20Shuttle%20Mission%20Report.pdf#page=45） |
| XCP-080 | STS-119 | 2009-03-15 | 111 | 10.6 | ミッション平均の電力 | 10.6 | 95 時間／12.47 kW | 1,177 | 数える | STS-119 の延長能力：111 時間（10.6 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-119%20Space%20Shuttle%20Mission%20Report.pdf#page=43） |
| XCP-081 | STS-120 | 2007-10-23 | 133 | 10.24 | ミッション平均の電力 | 10.24 | 109 時間／12.524 kW | 1,362 | 数える | STS-120 の延長能力：133 時間（10.24 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-120%20Space%20Shuttle%20Mission%20Report.pdf#page=43） |
| XCP-082 | STS-121 | 2006-07-04 | 57 | 13.6 | ミッション平均の電力 | 13.6 | 60 時間／12.98 kW | 775 | 数える | STS-121 の延長能力：57 時間（13.6 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-121%20Space%20Shuttle%20Mission%20Report.pdf#page=41） |
| XCP-083 | STS-122 | 2008-02-07 | 57 | 13.5 | ミッション平均の電力 | 13.5 | — | 770 | 数える | STS-122 の延長能力：57 時間（13.5 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=47） |
| XCP-084 | STS-123 | 2008-03-11 | 117 | 12.46 | ミッション平均の電力 | 9.3 | — | — | 境界（数えない）：power_kw 12.46 and mission_avg_kw 9.3 differ by 3.16 kW (> 0.5) | STS-123 の延長能力：117 時間（12.46 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-123%20Space%20Shuttle%20Mission%20Report.pdf#page=43） |
| XCP-085 | STS-124 | 2008-05-31 | 117 | — | ミッション平均の電力 | 9.9 | — | — | 境界（数えない）：power of the 117 h sentence is OCR-broken ('1224 kW'); same construction as STS-123 where this power… | STS-124 の延長能力：117 時間（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-124%20Space%20Shuttle%20Mission%20Report.pdf#page=44） |
| XCP-086 | STS-125 | 2009-05-11 | 28 | 15 | ミッション平均の電力 | 15 | 32 時間／12.88 kW | 420 | 数える | STS-125 の延長能力：28 時間（15 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=46） |
| XCP-087 | STS-126 | 2008-11-14 | 106 | 12.24 | ミッション平均の電力 | 9.5 | — | — | 境界（数えない）：本文が先に書く『106 時間・12.24 kW の平均電力』を採ると、ミッション平均 9.5 kW と 0.5 kW を超えて違う（134 時間・9.5 kW は次の文） | STS-126 の延長能力：106 時間（12.24 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-126%20Space%20Shuttle%20Mission%20Report.pdf#page=49） |
| XCP-088 | STS-127 | 2009-07-15 | 101 | 9.6 | ミッション平均の電力 | 9.6 | — | 970 | 数える | STS-127 の延長能力：101 時間（9.6 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-127%20Space%20Shuttle%20Mission%20Report.pdf#page=58） |
| XCP-089 | STS-128 | 2009-08-28 | 100 | 9.6 | ミッション平均の電力 | — | — | 960 | 数える | STS-128 の延長能力：100 時間（9.6 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-128%20Space%20Shuttle%20Mission%20Report.pdf#page=48） |
| XCP-090 | STS-129 | 2009-11-16 | 99 | 12.68 | ミッション平均の電力 | 14.2 | — | — | 境界（数えない）：power_kw 12.68 (average fuel cell flight power level) and mission_avg_kw 14.2 (average power level f… | STS-129 の延長能力：99 時間（12.68 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-129%20Space%20Shuttle%20Mission%20Report.pdf#page=48） |
| XCP-091 | STS-130 | 2010-02-08 | 95 | 9.2 | 延長（mission extension）の平均電力 | 9.2 | — | 874 | 数える | STS-130 の延長能力：95 時間（9.2 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-130%20Space%20Shuttle%20Mission%20Report.pdf#page=48） |
| XCP-092 | STS-131 | 2010-04-05 | 46 | 13.09 | 延長（mission extension）の平均電力 | 9.1 | — | — | 境界（数えない）：power_kw 13.09 and mission_avg_kw 9.1 differ by 3.99 kW (> 0.5) | STS-131 の延長能力：46 時間（13.09 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-131%20Space%20Shuttle%20Mission%20Report.pdf#page=48） |
| XCP-093 | STS-132 | 2010-05-14 | 75 | 13.8 | ミッション平均の電力 | 13.8 | — | 1,035 | 数える | STS-132 の延長能力：75 時間（13.8 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-132%20Space%20Shuttle%20Mission%20Report.pdf#page=44） |
| XCP-094 | STS-133 | 2011-02-24 | 59 | 12.72 | 延長（mission extension）の平均電力 | 9.1 | — | — | 境界（数えない）：power_kw 12.72 and mission_avg_kw 9.1 differ by 3.62 kW (> 0.5) | STS-133 の延長能力：59 時間（12.72 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-133%20Space%20Shuttle%20Mission%20Report.pdf#page=53） |
| XCP-095 | STS-134 | 2011-05-16 | 142 | 9 | ミッション平均の電力 | 9 | — | 1,278 | 数える | STS-134 の延長能力：142 時間（9 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-134%20Space%20Shuttle%20Mission%20Report.pdf#page=54） |
| XCP-096 | STS-135 | 2011-07-08 | 71 | 13.6 | ミッション平均の電力 | 13.6 | — | 966 | 数える | STS-135 の延長能力：71 時間（13.6 kW）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=43） |

## 6. 図

図306 は飛行ごとの延長の時間と電力、図307 は延長の時間と電力の関係（電力の順の表）、図308 は年代ごとの件数と時間の範囲の表である。

## 7. SysML v2 テキスト

同じ内容を SysML v2 のテキスト [SysML/SSD-XCP-ORB-001.sysml](../SysML/SSD-XCP-ORB-001.sysml) に示す。延長能力の part def ExtensionCapability と使用 96件から成る。時間・電力・電力の種類・延長日の値・エネルギー（計算）・数え方は属性で、パッケージへの矢印は張らない。OMG SysML v2 Pilot Implementation 0.62.0（2026-08 リリース、標準ライブラリ付き）で読み込んで、構文・名前の解決・型の検査で誤り 0件・警告 0件を確かめた。要求への関係は張らず、トレースの外に置いた。

## 8. 注記（出典間の相違・構成変更）

> **注記** 範囲・取れなかった値・本書の判断：記録は Mission Report 本文に、着陸時の反応剤（PRSD の酸素・水素）の残りで N 時間の延長が可能だった（mission extension was possible / capability existed）と書かれたものだけで、飛行ごとに1件（96飛行）。Mission Report に書かれていない飛行・日で書かれ時間の併記が無い飛行（STS-29・107 など）は記録していない。値は本文のまま（換算しない）。**その飛行の着陸時点の能力で、将来の飛行の延長能力の推定ではない**。判定・優劣は付けない。

> **注記** 範囲・取れなかった値・本書の判断：数え方：96飛行のうち、判断に迷うもの 11飛行を境界とし、数えない（表には載せ、理由を書いた）。図・集計は数える 85飛行。基準（作る前に決めた。境界を除いて数える）は 延長の時間を読めた飛行 50以上・電力もある記録 40以上・エネルギーを計算した記録 30以上・年代ごとの飛行 5以上で、年代の基準だけは結果を見たあとに、ユーザーの承認で『1990 年代と 2000 年以降』の2年代に緩めた（1980 年代は 3飛行で足りなかった。PLAN_DF 追記2）。結果：85飛行・電力あり 63・エネルギー計算 63・1990 年代 45・2000 年以降 31。1980 年代が少ない理由：1981〜1986 年の飛行（STS-1〜9 と STS-41B〜61C。名前から決めた）23飛行のうち、延長能力を書く報告書は 0飛行（なし）。

> **注記** 範囲・取れなかった値・本書の判断：電力の種類：本文の語で、ミッション平均の電力（average (flight/mission) power level）・延長（mission extension）の平均電力・延長日の電力（extension-day power level）・語なしに分けた。`時間` は、その飛行で最初に現れるミッション平均の電力（または電力の語なし）の値を採り、延長日の電力での時間（37飛行にある）は別の欄に書いた。**同じ飛行の別の電力での時間を、同じ電力の値と取り違えないよう、電力は同じ文・同じ節に書かれたものだけを採った**。延長の文の電力とミッション平均の電力が 0.5 kW を超えて違う記録は境界にした（STS-92：延長の文 13.9／ミッション平均 14.8、STS-96：延長の文 15.5／ミッション平均 14.2、STS-123：延長の文 12.46／ミッション平均 9.3、STS-126：延長の文 12.24／ミッション平均 9.5、STS-129：延長の文 12.68／ミッション平均 14.2、STS-131：延長の文 13.09／ミッション平均 9.1、STS-133：延長の文 12.72／ミッション平均 9.1。2007 年以降の報告書に多い）。『mission-extension average power level』の語を持つ飛行は STS-130・STS-131・STS-133。STS-123・124・126 は本文の語が『average power level』だけなので mission_average とし（事後の直し。PLAN_DF 追記4）、STS-126 は本文が先に書く 106 時間（12.24 kW）を採って境界にした。

> **注記** 範囲・取れなかった値・本書の判断：SSPTS の飛行（STS-118・119・120・127）：延長の電力と同じ値の『燃料電池の平均』を mission_avg_kw に入れた。ステーションから電力を受けたので、オービタ全体の平均（STS-118 13.87・STS-119 13.44・STS-120 13.74・STS-127 13.47 kW。記録の note）は別の値。オービタ全体の平均を使えば、この4飛行は境界になる（本書は燃料電池の平均を採った）。

> **注記** 範囲・取れなかった値・本書の判断：エネルギー（本書の計算）：延長の時間 × 同じ文の電力（kWh）。電力とエネルギーは本文の値でなく、時間×電力の積。反応剤の質量の収支（酸素 0.7 lbm/kWh・水素 0.09 lbm/kWh、SSD-PRF-ORB-001 の PFR）との照合や、飛行ごとの優劣の評価は付けない。

> **注記** 範囲・取れなかった値・本書の判断：年代は実際の打上げ日の年（本文が書く日付。スクラブした日・計画の日付ではない。STS-32 は 1990-01-09、STS-36 は 1990-02-28）。打上げ日が通日などで年が読めない飛行は『打上げ日が読めない』に数えた（換算・推定しない）。数える記録で読めないのは STS-33・STS-41・STS-64・STS-70・STS-90・STS-91、数えない記録で読めないのは STS-94。

> **注記** 範囲・取れなかった値・本書の判断：既存との重なり：SSD-PRF-ORB-001 の PFP 表に延長の時間（残量の h）を持つ行があるのは STS-114（36 h）・STS-125（28 h）で、STS-108 は本文に 78 時間とある。本書の同じ飛行の値は STS-114 36 時間・STS-125 28 時間・STS-108 78 時間（PRF の値と一致）。重ねて数えない。機内で決めた延長の決定は SSD-LND-ORB-001、飛行規則の延長日の要求は本書に持たない。

> **注記** 既存との重なり：反応剤の定数・飛行の PRSD 残量は SSD-PRF-ORB-001、機内で決めた延長の決定は SSD-LND-ORB-001。本書は着陸時点の延長能力（時間と電力）を持ち、それらの記録に判定を付けない。

## 9. 参考文献

1. STS-27 National Space Transportation System Mission Report（JSC、42頁、2,114,204 バイト） （PDF p8） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-27%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=8
2. STS-28 National Space Transportation System Mission Report（NASA JSC、1989年9月、28頁、1,965,098 バイト。OCR のテキスト層） （PDF p10） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-28%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=10
3. STS-31 National Space Transportation System Mission Report（JSC、24頁、1,700,712 バイト） （PDF p11） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-31%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=11
4. STS-32 National Space Transportation System Mission Report（JSC、33頁、2,253,513 バイト） （PDF p13） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-32%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=13
5. NSTS-08352 STS-33 National Space Transportation System Mission Report（NASA JSC、1990年1月、22頁、1,565,282 バイト。OCR のテキスト層） （PDF p9） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-33%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=9
6. STS-34 National Space Transportation System Mission Report（JSC、25頁、1,797,889 バイト） （PDF p12） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-34%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=12
7. STS-35 Mission Report （PDF p12） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=12
8. STS-36 Space Shuttle Mission Report（JSC、22頁、1,594,658 バイト） （PDF p11） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-36%20Space%20Shuttle%20Mission%20Report.pdf#page=11
9. STS-38 Space Shuttle Mission Report（JSC、19頁、1,407,992 バイト） （PDF p8） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-38%20Space%20Shuttle%20Mission%20Report.pdf#page=8
10. STS-39 Space Shuttle Mission Report（JSC、34頁、2,294,085 バイト） （PDF p12） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-39%20Space%20Shuttle%20Mission%20Report.pdf#page=12
11. STS-40 Space Shuttle Mission Report（JSC、34頁、2,481,480 バイト） （PDF p13） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-40%20Space%20Shuttle%20Mission%20Report.pdf#page=13
12. STS-41 Space Shuttle Mission Report（JSC、27頁、2,003,951 バイト） （PDF p12） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-41%20Space%20Shuttle%20Mission%20Report.pdf#page=12
13. STS-42 Space Shuttle Mission Report（JSC、32頁、2,401,728 バイト） （PDF p13） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-42%20Space%20Shuttle%20Mission%20Report.pdf#page=13
14. STS-44 Space Shuttle Mission Report（JSC、32頁、2,271,439 バイト） （PDF p14） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-44%20Space%20Shuttle%20Mission%20Report.pdf#page=14
15. STS-45 Space Shuttle Mission Report（JSC、34頁、2,413,807 バイト） （PDF p13） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-45%20Space%20Shuttle%20Mission%20Report.pdf#page=13
16. STS-48 Space Shuttle Mission Report（JSC、30頁、1,973,791 バイト） （PDF p13） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-48%20Space%20Shuttle%20Mission%20Report.pdf#page=13
17. NSTS-08276 STS-49 Space Shuttle Mission Report（NASA JSC、1992年7月、47頁、3,165,780 バイト。OCR のテキスト層） （PDF p15） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-49%20Space%20Shuttle%20Mission%20Report.pdf#page=15
18. NSTS-08277 STS-50 Space Shuttle Mission Report（1992-08、43頁、4,158,096 バイト） （PDF p15） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-50%20Space%20Shuttle%20Mission%20Report.pdf#page=15
19. STS-51 Space Shuttle Mission Report（JSC、56頁、6,953,590 バイト） （PDF p21） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-51%20Space%20Shuttle%20Mission%20Report.pdf#page=21
20. STS-52 Space Shuttle Mission Report（JSC、44頁、7,044,981 バイト） （PDF p14） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-52%20Space%20Shuttle%20Mission%20Report.pdf#page=14
21. STS-53 Space Shuttle Mission Report（JSC、39頁、3,088,890 バイト） （PDF p15） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-53%20Space%20Shuttle%20Mission%20Report.pdf#page=15
22. NASA-CR-194116 STS-54 Mission Report（1993） （PDF p14） — https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=14
23. STS-56 Space Shuttle Mission Report（1993、51頁、4,013,614 バイト） （PDF p22） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-56%20Space%20Shuttle%20Mission%20Report.pdf#page=22
24. STS-57 Space Shuttle Mission Report（JSC、51頁、4,156,073 バイト） （PDF p19） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-57%20Space%20Shuttle%20Mission%20Report.pdf#page=19
25. NSTS-08239 STS-60 Space Shuttle Mission Report（NASA JSC、1994年4月、43頁、3,414,515 バイト。OCR のテキスト層） （PDF p18） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-60%20Space%20Shuttle%20Mission%20Report.pdf#page=18
26. STS-61 Space Shuttle Mission Report（JSC、53頁、13,191,827 バイト） （PDF p18） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-61%20Space%20Shuttle%20Mission%20Report.pdf#page=18
27. STS-62 Space Shuttle Mission Report（1994、59頁、4,338,007 バイト） （PDF p22） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-62%20Space%20Shuttle%20Mission%20Report.pdf#page=22
28. STS-63 Space Shuttle Mission Report（JSC、54頁、12,326,497 バイト） （PDF p24） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-63%20Space%20Shuttle%20Mission%20Report.pdf#page=24
29. STS-64 Space Shuttle Mission Report（JSC、65頁、3,958,259 バイト） （PDF p27） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-64%20Space%20Shuttle%20Mission%20Report.pdf#page=27
30. STS-65 Mission Report （PDF p30） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=30
31. STS-66 Space Shuttle Mission Report（JSC、70頁、4,265,040 バイト） （PDF p28） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-66%20Space%20Shuttle%20Mission%20Report.pdf#page=28
32. STS-67 Space Shuttle Mission Report（JSC、50頁、3,217,298 バイト） （PDF p23） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-67%20Space%20Shuttle%20Mission%20Report.pdf#page=23
33. STS-68 Space Shuttle Mission Report（JSC、59頁、3,902,861 バイト） （PDF p25） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-68%20Space%20Shuttle%20Mission%20Report.pdf#page=25
34. STS-69 Space Shuttle Mission Report（NASA JSC、1995年、59頁、13,289,517 バイト） （PDF p25） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-69%20Space%20Shuttle%20Mission%20Report.pdf#page=25
35. STS-70 Space Shuttle Mission Report（JSC、43頁、2,892,442 バイト） （PDF p19） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-70%20Space%20Shuttle%20Mission%20Report.pdf#page=19
36. NSTS-08298 STS-71 Space Shuttle Mission Report（NASA JSC、1995年8月、66頁、4,641,598 バイト。OCR のテキスト層） （PDF p38） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-71%20Space%20Shuttle%20Mission%20Report.pdf#page=38
37. STS-72 Space Shuttle Mission Report（JSC、59頁、4,144,081 バイト） （PDF p28） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-72%20Space%20Shuttle%20Mission%20Report.pdf#page=28
38. STS-73 Space Shuttle Mission Report（1995、58頁、3,834,683 バイト） （PDF p31） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-73%20Space%20Shuttle%20Mission%20Report.pdf#page=31
39. NSTS-37404 STS-74 Space Shuttle Mission Report（JSC、1996年2月、58頁、3,620,224 バイト） （PDF p29） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-74%20Space%20Shuttle%20Mission%20Report.pdf#page=29
40. STS-75 Space Shuttle Mission Report（JSC、57頁、3,758,307 バイト） STS-75 PRSD（PDF p26） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-75%20Space%20Shuttle%20Mission%20Report.pdf#page=26
41. STS-76 Space Shuttle Mission Report（JSC、61頁、4,258,252 バイト） （PDF p26） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-76%20Space%20Shuttle%20Mission%20Report.pdf#page=26
42. NSTS-37408 STS-77 Space Shuttle Mission Report（JSC、1996年6月、54頁、3,218,725 バイト） （PDF p26） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-77%20Space%20Shuttle%20Mission%20Report.pdf#page=26
43. STS-78 Space Shuttle Mission Report（1996、56頁、3,829,488 バイト） （PDF p24） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-78%20Space%20Shuttle%20Mission%20Report.pdf#page=24
44. STS-80 Space Shuttle Mission Report（1997、63頁、4,088,118 バイト） （PDF p29） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-80%20Space%20Shuttle%20Mission%20Report.pdf#page=29
45. STS-82 Space Shuttle Mission Report（JSC、53頁、3,114,873 バイト） （PDF p22） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-82%20Space%20Shuttle%20Mission%20Report.pdf#page=22
46. STS-83 Space Shuttle Mission Report（JSC、53頁、3,369,343 バイト） （PDF p23） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-83%20Space%20Shuttle%20Mission%20Report.pdf#page=23
47. STS-84 Space Shuttle Mission Report（JSC、51頁、3,008,116 バイト） （PDF p24） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-84%20Space%20Shuttle%20Mission%20Report.pdf#page=24
48. STS-85 Space Shuttle Mission Report（JSC、59頁、4,127,755 バイト） （PDF p29） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-85%20Space%20Shuttle%20Mission%20Report.pdf#page=29
49. NSTS-37418 STS-87 Space Shuttle Mission Report（NASA JSC、1998年2月、69頁、4,506,095 バイト。OCR のテキスト層） （PDF p36） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-87%20Space%20Shuttle%20Mission%20Report.pdf#page=36
50. STS-88 Space Shuttle Mission Report（JSC、63頁、3,992,889 バイト） （PDF p29） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-88%20Space%20Shuttle%20Mission%20Report.pdf#page=29
51. STS-89 Space Shuttle Mission Report（JSC、54頁、3,805,476 バイト） （PDF p24） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-89%20Space%20Shuttle%20Mission%20Report.pdf#page=24
52. NSTS-37420 STS-90 Space Shuttle Mission Report（NASA JSC、1998年6月、49頁、3,438,012 バイト。OCR のテキスト層） （PDF p23） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-90%20Space%20Shuttle%20Mission%20Report.pdf#page=23
53. NSTS-37421 STS-91 Space Shuttle Mission Report（JSC、1998年7月、57頁、3,891,467 バイト） STS-91 PRSD（PDF p25） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-91%20Space%20Shuttle%20Mission%20Report.pdf#page=25
54. NSTS-37430 STS-92 Space Shuttle Mission Report（JSC、2001年1月、61頁、3,812,185 バイト） （PDF p23） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-92%20Space%20Shuttle%20Mission%20Report.pdf#page=23
55. STS-93 Space Shuttle Mission Report（JSC、50頁、3,338,918 バイト） （PDF p23） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-93%20Space%20Shuttle%20Mission%20Report.pdf#page=23
56. STS-94 Space Shuttle Mission Report（JSC、55頁、3,662,414 バイト） （PDF p28） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-94%20Space%20Shuttle%20Mission%20Report.pdf#page=28
57. STS-95 Space Shuttle Mission Report（JSC、64頁、4,431,361 バイト） （PDF p31） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-95%20Space%20Shuttle%20Mission%20Report.pdf#page=31
58. STS-96 Space Shuttle Mission Report（JSC、52頁、3,298,194 バイト） （PDF p21） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-96%20Space%20Shuttle%20Mission%20Report.pdf#page=21
59. STS-97 Space Shuttle Mission Report（JSC、64頁、4,181,322 バイト） （PDF p23） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-97%20Space%20Shuttle%20Mission%20Report.pdf#page=23
60. STS-98 Space Shuttle Mission Report（JSC、58頁、3,718,129 バイト） （PDF p26） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-98%20Space%20Shuttle%20Mission%20Report.pdf#page=26
61. STS-99 Space Shuttle Mission Report（JSC、52頁、3,641,750 バイト） （PDF p24） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-99%20Space%20Shuttle%20Mission%20Report.pdf#page=24
62. STS-100 Space Shuttle Mission Report（JSC、63頁、4,665,231 バイト） STS-100 FCP（PDF p26） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-100%20Space%20Shuttle%20Mission%20Report.pdf#page=26
63. STS-101 Space Shuttle Mission Report（JSC、63頁、3,798,184 バイト） （PDF p26） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-101%20Space%20Shuttle%20Mission%20Report.pdf#page=26
64. STS-102 Space Shuttle Mission Report（NASA JSC、2001年、63頁、4,926,846 バイト） （PDF p28） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-102%20Space%20Shuttle%20Mission%20Report.pdf#page=28
65. STS-103 Space Shuttle Mission Report（JSC、52頁、3,200,681 バイト） （PDF p22） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-103%20Space%20Shuttle%20Mission%20Report.pdf#page=22
66. NSTS-37434 STS-104 Space Shuttle Mission Report（JSC、2001年9月、56頁、4,134,423 バイト） （PDF p25） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-104%20Space%20Shuttle%20Mission%20Report.pdf#page=25
67. STS-105 Space Shuttle Mission Report（JSC、52頁、3,819,756 バイト） （PDF p22） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-105%20Space%20Shuttle%20Mission%20Report.pdf#page=22
68. STS-106 Space Shuttle Mission Report（JSC、58頁、3,814,173 バイト） （PDF p23） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-106%20Space%20Shuttle%20Mission%20Report.pdf#page=23
69. STS-108 Mission Report （PDF p28） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=28
70. STS-109 Space Shuttle Mission Report（JSC、53頁、3,503,946 バイト） （PDF p23） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-109%20Space%20Shuttle%20Mission%20Report.pdf#page=23
71. STS-110 Space Shuttle Mission Report（JSC、57頁、3,837,066 バイト） （PDF p26） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-110%20Space%20Shuttle%20Mission%20Report.pdf#page=26
72. STS-111 Space Shuttle Mission Report（JSC、59頁、4,060,948 バイト） （PDF p26） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-111%20Space%20Shuttle%20Mission%20Report.pdf#page=26
73. STS-112 Space Shuttle Mission Report（JSC、57頁、4,251,718 バイト） （PDF p25） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-112%20Space%20Shuttle%20Mission%20Report.pdf#page=25
74. STS-113 Space Shuttle Mission Report（JSC、58頁、4,423,959 バイト） （PDF p28） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-113%20Space%20Shuttle%20Mission%20Report.pdf#page=28
75. STS-114 Mission Report （PDF p43） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=43
76. STS-115 Space Shuttle Mission Report（JSC、106頁、770,336 バイト） （PDF p43） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-115%20Space%20Shuttle%20Mission%20Report.pdf#page=43
77. STS-116 Space Shuttle Mission Report（JSC、91頁、687,467 バイト） （PDF p42） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-116%20Space%20Shuttle%20Mission%20Report.pdf#page=42
78. STS-117 Space Shuttle Mission Report（JSC、106頁、501,835 バイト） （PDF p42） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-117%20Space%20Shuttle%20Mission%20Report.pdf#page=42
79. STS-118 Space Shuttle Mission Report（JSC、109頁、685,027 バイト） （PDF p45） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-118%20Space%20Shuttle%20Mission%20Report.pdf#page=45
80. STS-119 Space Shuttle Mission Report（JSC、105頁、811,153 バイト） （PDF p43） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-119%20Space%20Shuttle%20Mission%20Report.pdf#page=43
81. STS-120 Space Shuttle Mission Report（JSC、102頁、486,685 バイト） （PDF p43） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-120%20Space%20Shuttle%20Mission%20Report.pdf#page=43
82. STS-121 Space Shuttle Mission Report（JSC、97頁、679,837 バイト） （PDF p41） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-121%20Space%20Shuttle%20Mission%20Report.pdf#page=41
83. STS-122 Mission Report Power Reactant Storage and Distribution System（PDF p47） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=47
84. STS-123 Space Shuttle Mission Report（JSC、107頁、975,665 バイト） （PDF p43） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-123%20Space%20Shuttle%20Mission%20Report.pdf#page=43
85. STS-124 Space Shuttle Mission Report（JSC、107頁、937,347 バイト） （PDF p44） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-124%20Space%20Shuttle%20Mission%20Report.pdf#page=44
86. NSTS-37452 STS-125 Mission Report（2010） （PDF p46） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=46
87. STS-126 Space Shuttle Mission Report（JSC、120頁、976,111 バイト） （PDF p49） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-126%20Space%20Shuttle%20Mission%20Report.pdf#page=49
88. STS-127 Space Shuttle Mission Report（JSC、123頁、1,215,519 バイト） （PDF p58） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-127%20Space%20Shuttle%20Mission%20Report.pdf#page=58
89. STS-128 Space Shuttle Mission Report（JSC、103頁、859,541 バイト） （PDF p48） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-128%20Space%20Shuttle%20Mission%20Report.pdf#page=48
90. STS-129 Space Shuttle Mission Report（JSC、105頁、969,886 バイト） （PDF p48） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-129%20Space%20Shuttle%20Mission%20Report.pdf#page=48
91. NSTS-37456 STS-130 Space Shuttle Mission Report（JSC、2010年、105頁、914,591 バイト） （PDF p48） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-130%20Space%20Shuttle%20Mission%20Report.pdf#page=48
92. STS-131 Space Shuttle Mission Report（JSC、108頁、854,751 バイト） （PDF p48） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-131%20Space%20Shuttle%20Mission%20Report.pdf#page=48
93. STS-132 Space Shuttle Mission Report（JSC、103頁、981,003 バイト） （PDF p44） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-132%20Space%20Shuttle%20Mission%20Report.pdf#page=44
94. STS-133 Space Shuttle Mission Report（JSC、111頁、1,002,085 バイト） （PDF p53） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-133%20Space%20Shuttle%20Mission%20Report.pdf#page=53
95. STS-134 Space Shuttle Mission Report（JSC、109頁、973,287 バイト） （PDF p54） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-134%20Space%20Shuttle%20Mission%20Report.pdf#page=54
96. STS-135 Mission Report Power Reactant Storage and Distribution System（PDF p43） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=43
97. OMG Systems Modeling Language (SysML) Version 2.0 仕様 — https://www.omg.org/spec/SysML/2.0
98. SysML v2 Release（OMG SysML v2 Pilot Implementation の公開リリース・標準ライブラリ） — https://github.com/Systems-Modeling/SysML-v2-Release

## 10. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-11-06 | 初版作成（延長能力 96飛行〔数える 85・境界 11〕、電力あり 63、年代 6、図306〜308、SysML v2 テキスト） |
