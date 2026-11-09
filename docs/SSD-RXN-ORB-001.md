# 反応剤消費実績定義書（燃料電池の酸素・水素の消費と発電量）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-RXN-ORB-001 |
| 表題 | 反応剤消費実績定義書（燃料電池の酸素・水素の消費と発電量） |
| 版・日付 | 初版（Rev. -）／2026-11-09 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-PRF-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図309 反応剤の消費の値：飛行ごとの燃料電池の酸素・水素・発電量（パラメトリック）・図310 反応剤の消費の制約への束ね：1 kWh あたりの酸素・水素と質量比（パラメトリック）・図311 反応剤の消費の値：年代ごとの件数と範囲（パラメトリック） |

## 1. 目的

燃料電池が飛行全体で使った酸素・水素と、同じ期間の発電量（kWh）を、飛行ごとの記録と、1 kWh あたりの量・質量比の表（制約への束ね）として持つ。これまでのモデルには、標準ミッションの設計値（SSD-PAR-ORB-001 の ReactantBudget。1 kWh あたり酸素 0.7・水素 0.09 lbm）と少数の飛行の残量（SSD-PRF-ORB-001 の PFP）はあったが、飛行ごとの消費の実績は無かった。本書は Mission Report 本文の値を、飛行ごとの表・束ねの表・年代ごとの表（図309〜311）にする。**判定は付けない**：設計値との差は数で示すだけ。

## 2. 範囲と書き方

記録は Mission Report 本文に、燃料電池の酸素・水素の量と発電量が同じ文または続く1文に書かれたものだけで、108飛行。そのうち判断に迷う 17飛行は境界として数えず（表には理由つきで載せた）、図・集計は数える 91飛行（1 kWh あたりの酸素 0.673〜0.720、水素 0.0833〜0.0890 lbm）。値は本文のまま（lbm・kWh）。1 kWh あたりの量・質量比・水と（酸素＋水素）の差は本書の計算で、本文の値ではない。水の量は報告書が酸素と水素から出す値で、独立な測定の照合ではない（注記）。

## 3. 年代ごとの件数と範囲

数える 91飛行を、実際の打上げ日の年代で数えた。最小・中央値・最大は 1 kWh あたりの量（lbm/kWh、本書の計算）で、評価ではない。打上げ日が読めない飛行は別の行。図311 に同じ表を示す。

| 年代 | 飛行 | 酸素 最小 | 酸素 中央値 | 酸素 最大 | 水素 最小 | 水素 中央値 | 水素 最大 |
|---|---|---|---|---|---|---|---|
| 1980 年代 | 1 | 0.674 | 0.674 | 0.674 | 0.0833 | 0.0833 | 0.0833 |
| 1990 年代 | 45 | 0.675 | 0.689 | 0.72 | 0.085 | 0.0869 | 0.089 |
| 2000 年以降 | 39 | 0.673 | 0.683 | 0.7 | 0.0848 | 0.0859 | 0.088 |
| うち 2000 年代 | 33 | 0.673 | 0.683 | 0.7 | 0.0848 | 0.086 | 0.088 |
| うち 2010 年代 | 6 | 0.675 | 0.678 | 0.687 | 0.085 | 0.0855 | 0.0866 |
| 打上げ日が読めない | 6 | 0.68 | 0.686 | 0.701 | 0.0856 | 0.0864 | 0.0883 |

## 4. 制約への束ね（飛行ごとの値）

数える 91飛行の 1 kWh あたりの酸素・水素（lbm/kWh）、質量比（酸素/水素）、水の量と（酸素＋水素）の差（lbm。水を書く飛行）、設計値（酸素 0.7・水素 0.09 lbm/kWh）との差。すべて本書の計算で、判定・評価は付けない。図310 に同じ表を示す。

| ID | 飛行 | 酸素/kWh | 水素/kWh | 質量比 | 水−（酸素＋水素） | 酸素/kWh−0.7 | 水素/kWh−0.09 |
|---|---|---|---|---|---|---|---|
| RXN-001 | STS-26 | 0.674 | 0.0833 | 8.091 | 0 | -0.026 | -0.0067 |
| RXN-009 | STS-35 | 0.707 | 0.089 | 7.941 | 0 | +0.007 | -0.001 |
| RXN-010 | STS-36 | 0.693 | 0.0873 | 7.937 | 0 | -0.007 | -0.0027 |
| RXN-011 | STS-37 | 0.72 | 0.0864 | 8.337 | -119 | +0.02 | -0.0036 |
| RXN-012 | STS-38 | 0.687 | 0.086 | 7.993 | 0 | -0.013 | -0.004 |
| RXN-015 | STS-41 | 0.68 | 0.0856 | 7.938 | 0 | -0.02 | -0.0044 |
| RXN-017 | STS-43 | 0.689 | 0.0869 | 7.929 | 0 | -0.011 | -0.0031 |
| RXN-018 | STS-44 | 0.68 | 0.0856 | 7.94 | 0 | -0.02 | -0.0044 |
| RXN-020 | STS-46 | 0.688 | 0.0866 | 7.94 | +0.1 | -0.012 | -0.0034 |
| RXN-022 | STS-48 | 0.685 | 0.0863 | 7.941 | -0.2 | -0.015 | -0.0037 |
| RXN-023 | STS-49 | 0.675 | 0.085 | 7.94 | 0 | -0.025 | -0.005 |
| RXN-024 | STS-50 | 0.703 | 0.0886 | 7.941 | +0 | +0.003 | -0.0014 |
| RXN-025 | STS-51 | 0.689 | 0.0868 | 7.94 | 0 | -0.011 | -0.0032 |
| RXN-026 | STS-52 | 0.679 | 0.0855 | 7.94 | 0 | -0.021 | -0.0045 |
| RXN-027 | STS-53 | 0.688 | 0.0867 | 7.94 | 0 | -0.012 | -0.0033 |
| RXN-029 | STS-55 | 0.687 | 0.0865 | 7.94 | 0 | -0.013 | -0.0035 |
| RXN-031 | STS-57 | 0.688 | 0.0867 | 7.941 | 0 | -0.012 | -0.0033 |
| RXN-032 | STS-58 | 0.692 | 0.0871 | 7.94 | 0 | -0.008 | -0.0029 |
| RXN-033 | STS-59 | 0.691 | 0.087 | 7.941 | 0 | -0.009 | -0.003 |
| RXN-034 | STS-60 | 0.69 | 0.0869 | 7.938 | -0.3 | -0.01 | -0.0031 |
| RXN-035 | STS-61 | 0.687 | 0.0865 | 7.95 | 0 | -0.013 | -0.0035 |
| RXN-036 | STS-62 | 0.691 | 0.0871 | 7.938 | 0 | -0.009 | -0.0029 |
| RXN-037 | STS-63 | 0.688 | 0.0866 | 7.945 | 0 | -0.012 | -0.0034 |
| RXN-038 | STS-64 | 0.684 | 0.0861 | 7.943 | 0 | -0.016 | -0.0039 |
| RXN-039 | STS-65 | 0.707 | 0.089 | 7.936 | 0 | +0.007 | -0.001 |
| RXN-040 | STS-66 | 0.686 | 0.0865 | 7.936 | 0 | -0.014 | -0.0035 |
| RXN-041 | STS-67 | 0.696 | 0.0876 | 7.945 | 0 | -0.004 | -0.0024 |
| RXN-042 | STS-68 | 0.688 | 0.0866 | 7.949 | 0 | -0.012 | -0.0034 |
| RXN-043 | STS-69 | 0.69 | 0.087 | 7.929 | 0 | -0.01 | -0.003 |
| RXN-044 | STS-70 | 0.68 | 0.0856 | 7.95 | — | -0.02 | -0.0044 |
| RXN-045 | STS-71 | 0.691 | 0.087 | 7.942 | -1 | -0.009 | -0.003 |
| RXN-046 | STS-72 | 0.691 | 0.087 | 7.938 | -1 | -0.009 | -0.003 |
| RXN-047 | STS-73 | 0.696 | 0.0876 | 7.943 | 0 | -0.004 | -0.0024 |
| RXN-048 | STS-74 | 0.691 | 0.0869 | 7.952 | 0 | -0.009 | -0.0031 |
| RXN-049 | STS-75 | 0.688 | 0.0866 | 7.938 | 0 | -0.012 | -0.0034 |
| RXN-050 | STS-76 | 0.692 | 0.0871 | 7.941 | 0 | -0.008 | -0.0029 |
| RXN-051 | STS-77 | 0.7 | 0.0882 | 7.934 | 0 | -0 | -0.0018 |
| RXN-052 | STS-78 | 0.693 | 0.0873 | 7.94 | 0 | -0.007 | -0.0027 |
| RXN-053 | STS-80 | 0.681 | 0.0857 | 7.946 | +1 | -0.019 | -0.0043 |
| RXN-054 | STS-81 | 0.692 | 0.087 | 7.949 | 0 | -0.008 | -0.003 |
| RXN-055 | STS-82 | 0.682 | 0.086 | 7.934 | 0 | -0.018 | -0.004 |
| RXN-056 | STS-83 | 0.703 | 0.0884 | 7.954 | 0 | +0.003 | -0.0016 |
| RXN-057 | STS-84 | 0.689 | 0.0868 | 7.932 | -1 | -0.011 | -0.0032 |
| RXN-058 | STS-85 | 0.684 | 0.0861 | 7.938 | 0 | -0.016 | -0.0039 |
| RXN-061 | STS-88 | 0.691 | 0.087 | 7.943 | 0 | -0.009 | -0.003 |
| RXN-062 | STS-89 | 0.689 | 0.0868 | 7.938 | 0 | -0.011 | -0.0032 |
| RXN-063 | STS-90 | 0.701 | 0.0883 | 7.944 | 0 | +0.001 | -0.0017 |
| RXN-064 | STS-91 | 0.689 | 0.0867 | 7.944 | 0 | -0.011 | -0.0033 |
| RXN-065 | STS-92 | 0.682 | 0.0858 | 7.951 | 0 | -0.018 | -0.0042 |
| RXN-066 | STS-93 | 0.689 | 0.087 | 7.917 | 0 | -0.011 | -0.003 |
| RXN-067 | STS-94 | 0.696 | 0.0876 | 7.946 | 0 | -0.004 | -0.0024 |
| RXN-068 | STS-95 | 0.695 | 0.0875 | 7.94 | 0 | -0.005 | -0.0025 |
| RXN-070 | STS-97 | 0.689 | 0.0869 | 7.93 | 0 | -0.011 | -0.0031 |
| RXN-071 | STS-98 | 0.684 | 0.0861 | 7.949 | +1 | -0.016 | -0.0039 |
| RXN-072 | STS-99 | 0.69 | 0.0868 | 7.95 | 0 | -0.01 | -0.0032 |
| RXN-073 | STS-100 | 0.683 | 0.086 | 7.937 | 0 | -0.017 | -0.004 |
| RXN-074 | STS-101 | 0.686 | 0.0863 | 7.948 | 0 | -0.014 | -0.0037 |
| RXN-075 | STS-102 | 0.68 | 0.0856 | 7.945 | 0 | -0.02 | -0.0044 |
| RXN-076 | STS-103 | 0.684 | 0.0862 | 7.942 | 0 | -0.016 | -0.0038 |
| RXN-077 | STS-104 | 0.684 | 0.0861 | 7.945 | 0 | -0.016 | -0.0039 |
| RXN-078 | STS-105 | 0.681 | 0.0856 | 7.95 | 0 | -0.019 | -0.0044 |
| RXN-079 | STS-106 | 0.685 | 0.0863 | 7.937 | 0 | -0.015 | -0.0037 |
| RXN-080 | STS-107 | 0.7 | 0.088 | 7.945 | 0 | -0 | -0.002 |
| RXN-081 | STS-108 | 0.687 | 0.0864 | 7.95 | 0 | -0.013 | -0.0036 |
| RXN-082 | STS-109 | 0.689 | 0.0868 | 7.937 | 0 | -0.011 | -0.0032 |
| RXN-083 | STS-110 | 0.686 | 0.0863 | 7.947 | 0 | -0.014 | -0.0037 |
| RXN-084 | STS-111 | 0.684 | 0.0862 | 7.933 | 0 | -0.016 | -0.0038 |
| RXN-085 | STS-112 | 0.683 | 0.0859 | 7.95 | 0 | -0.017 | -0.0041 |
| RXN-086 | STS-113 | 0.684 | 0.0862 | 7.941 | 0 | -0.016 | -0.0038 |
| RXN-087 | STS-114 | 0.68 | 0.0855 | 7.948 | 0 | -0.02 | -0.0045 |
| RXN-088 | STS-115 | 0.681 | 0.0858 | 7.936 | 0 | -0.019 | -0.0042 |
| RXN-089 | STS-116 | 0.685 | 0.0862 | 7.939 | 0 | -0.015 | -0.0038 |
| RXN-090 | STS-117 | 0.68 | 0.0855 | 7.948 | +1 | -0.02 | -0.0045 |
| RXN-091 | STS-118 | 0.682 | 0.0859 | 7.939 | 0 | -0.018 | -0.0041 |
| RXN-092 | STS-119 | 0.676 | 0.085 | 7.953 | +1 | -0.024 | -0.005 |
| RXN-093 | STS-120 | 0.678 | 0.0854 | 7.94 | -1 | -0.022 | -0.0046 |
| RXN-094 | STS-121 | 0.68 | 0.0856 | 7.944 | 0 | -0.02 | -0.0044 |
| RXN-095 | STS-122 | 0.685 | 0.0863 | 7.941 | 0 | -0.015 | -0.0037 |
| RXN-096 | STS-123 | 0.678 | 0.0853 | 7.953 | 0 | -0.022 | -0.0047 |
| RXN-097 | STS-124 | 0.676 | 0.0851 | 7.935 | 0 | -0.024 | -0.0049 |
| RXN-098 | STS-125 | 0.691 | 0.087 | 7.935 | 0 | -0.009 | -0.003 |
| RXN-099 | STS-126 | 0.676 | 0.0851 | 7.942 | 0 | -0.024 | -0.0049 |
| RXN-100 | STS-127 | 0.674 | 0.0848 | 7.951 | +1 | -0.026 | -0.0052 |
| RXN-101 | STS-128 | 0.673 | 0.0848 | 7.938 | 0 | -0.027 | -0.0052 |
| RXN-102 | STS-129 | 0.687 | 0.0864 | 7.95 | +1 | -0.013 | -0.0036 |
| RXN-103 | STS-130 | 0.675 | 0.0851 | 7.931 | 0 | -0.025 | -0.0049 |
| RXN-104 | STS-131 | 0.675 | 0.085 | 7.94 | 0 | -0.025 | -0.005 |
| RXN-105 | STS-132 | 0.686 | 0.0865 | 7.932 | -1 | -0.014 | -0.0035 |
| RXN-106 | STS-133 | 0.676 | 0.0853 | 7.924 | 0 | -0.024 | -0.0047 |
| RXN-107 | STS-134 | 0.68 | 0.0857 | 7.935 | 0 | -0.02 | -0.0043 |
| RXN-108 | STS-135 | 0.687 | 0.0866 | 7.933 | 0 | -0.013 | -0.0034 |

## 5. 反応剤の消費の記録

108飛行を、飛行番号の順に示す。酸素・水素・水・乗員用酸素は lbm、発電量は kWh、平均電力は kW（本文のまま。空欄は本文に無い）。『数え方』が境界のものは図・集計に数えない（理由を書いた）。図309 に数える飛行の同じ値を示す。

| ID | 飛行 | 打上げ日 | 酸素（lbm） | 水素（lbm） | 発電量（kWh） | 水（lbm） | 平均電力（kW） | 乗員用の酸素（lbm） | 数え方 | 根拠 |
|---|---|---|---|---|---|---|---|---|---|---|
| RXN-001 | STS-26 | 1988-09-29 | 890 | 110 | 1,320 | 1,000 | — | — | 数える | STS-26 の燃料電池の消費：酸素 890 lbm・水素 110 lbm・1320 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-26%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=16）STS-26 の発電量（別の頁）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-26%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=15） |
| RXN-002 | STS-27 | 1988-12-02 | 1,100 | 130 | 1,540 | — | — | 39 | 境界（数えない）：酸素・水素と発電量が別の段落にある（PLAN_DG §2.2 は同じ文または続く1文） | STS-27 の燃料電池の消費：酸素 1100 lbm・水素 130 lbm・1540 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-27%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=8） |
| RXN-003 | STS-28 | 1989-08-08 | 1,126.5 | 144.9 | 1,694 | 1,271 | — | 45 | 境界（数えない）：酸素・水素と発電量が別の段落にある（PLAN_DG §2.2 は同じ文または続く1文） | STS-28 の燃料電池の消費：酸素 1126.5 lbm・水素 144.9 lbm・1694 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-28%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=10） |
| RXN-004 | STS-29 | 1989-03-13 | 1,095 | 138 | 1,613 | 1,233 | 13.5 | 45 | 境界（数えない）：酸素・水素と発電量が別の段落にある（PLAN_DG §2.2 は同じ文または続く1文） | STS-29 の燃料電池の消費：酸素 1095 lbm・水素 138 lbm・1613 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-29%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=11） |
| RXN-005 | STS-30 | 1989-05-04 | 932 | 117.5 | 1,366 | 1,050 | 14.1 | 36.4 | 境界（数えない）：酸素・水素と発電量が別の段落にある（PLAN_DG §2.2 は同じ文または続く1文） | STS-30 の燃料電池の消費：酸素 932 lbm・水素 117.5 lbm・1366 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-30%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=12） |
| RXN-006 | STS-31 | 1990-04-24 | 1,193.7 | 150 | 1,740 | 1,344 | 14.4 | 40.2 | 境界（数えない）：酸素・水素と発電量が別の段落にある（PLAN_DG §2.2 は同じ文または続く1文） | STS-31 の燃料電池の消費：酸素 1193.7 lbm・水素 150 lbm・1740 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-31%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=11） |
| RXN-007 | STS-32 | 1990-01-09 | — | 308.1 | 3,565 | 2,754 | 13.7 | 113.9 | 境界（数えない）：oxygen is a total (2560.2 lb from the five tank sets) with breathing oxygen for the crew (113.9 lb) … | STS-32 の燃料電池の消費：酸素の値なし・水素 308.1 lbm・3565 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-32%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=13） |
| RXN-008 | STS-34 | 1989-10-18 | 1,136 | 142 | 1,626 | 1,278 | 13.6 | 34 | 境界（数えない）：酸素・水素と発電量が別の段落にある（PLAN_DG §2.2 は同じ文または続く1文） | STS-34 の燃料電池の消費：酸素 1136 lbm・水素 142 lbm・1626 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-34%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=12） |
| RXN-009 | STS-35 | 1990-12-02 | 2,549 | 321 | 3,606 | 2,870 | 16.8 | 130 | 数える | STS-35 の燃料電池の消費：酸素 2549 lbm・水素 321 lbm・3606 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=12） |
| RXN-010 | STS-36 | 1990-02-28 | 1,016.7 | 128.1 | 1,467 | 1,145 | 13.6 | 60.2 | 数える | STS-36 の燃料電池の消費：酸素 1016.7 lbm・水素 128.1 lbm・1467 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-36%20Space%20Shuttle%20Mission%20Report.pdf#page=11） |
| RXN-011 | STS-37 | 1991-04-05 | 1,559 | 187 | 2,165 | 1,627 | 15.1 | 75 | 数える | STS-37 の燃料電池の消費：酸素 1559 lbm・水素 187 lbm・2165 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-37%20Space%20Shuttle%20Mission%20Report.pdf#page=13）STS-37 の水（別の頁）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-37%20Space%20Shuttle%20Mission%20Report.pdf#page=14）STS-37 の平均電力（別の頁）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-37%20Space%20Shuttle%20Mission%20Report.pdf#page=14） |
| RXN-012 | STS-38 | 1990-11-15 | 1,079 | 135 | 1,570 | 1,214 | 13.3 | 56 | 数える | STS-38 の燃料電池の消費：酸素 1079 lbm・水素 135 lbm・1570 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-38%20Space%20Shuttle%20Mission%20Report.pdf#page=9） |
| RXN-013 | STS-39 | 1991-04-28 | 2,115 | 266.4 | 3,083 | 2,381 | — | 77 | 境界（数えない）：酸素・水素と発電量が別の段落にある（PLAN_DG §2.2 は同じ文または続く1文） | STS-39 の燃料電池の消費：酸素 2115 lbm・水素 266.4 lbm・3083 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-39%20Space%20Shuttle%20Mission%20Report.pdf#page=12） |
| RXN-014 | STS-40 | 1991-06-05 | — | 325.9 | 3,720 | 2,913 | — | 130.5 | 境界（数えない）：oxygen is a total (2717.9 lb consumed) with 130.5 lb used by the crew inside it; fuel-cell oxygen no… | STS-40 の燃料電池の消費：酸素の値なし・水素 325.9 lbm・3720 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-40%20Space%20Shuttle%20Mission%20Report.pdf#page=13） |
| RXN-015 | STS-41 | 読めない | 1,016 | 128 | 1,495 | 1,144 | 15.3 | 17 | 数える | STS-41 の燃料電池の消費：酸素 1016 lbm・水素 128 lbm・1495 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-41%20Space%20Shuttle%20Mission%20Report.pdf#page=12） |
| RXN-016 | STS-42 | 1992-01-22 | 2,310 | 291 | 3,317 | 2,601 | 17.2 | 81 | 境界（数えない）：酸素・水素と発電量が別の段落にある（PLAN_DG §2.2 は同じ文または続く1文） | STS-42 の燃料電池の消費：酸素 2310 lbm・水素 291 lbm・3317 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-42%20Space%20Shuttle%20Mission%20Report.pdf#page=13） |
| RXN-017 | STS-43 | 1991-08-02 | 2,109 | 266 | 3,062 | 2,375 | 14.4 | 76.9 | 数える | STS-43 の燃料電池の消費：酸素 2109 lbm・水素 266 lbm・3062 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-43%20Space%20Shuttle%20Mission%20Report.pdf#page=15） |
| RXN-018 | STS-44 | 1991-11-24 | 1,453 | 183 | 2,138 | 1,636 | 12.8 | 72.3 | 数える | STS-44 の燃料電池の消費：酸素 1453 lbm・水素 183 lbm・2138 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-44%20Space%20Shuttle%20Mission%20Report.pdf#page=14） |
| RXN-019 | STS-45 | 1992-03-24 | 2,291 | 289 | 3,378 | 2,580 | 15.8 | 125 | 境界（数えない）：酸素・水素と発電量が別の段落にある（PLAN_DG §2.2 は同じ文または続く1文） | STS-45 の燃料電池の消費：酸素 2291 lbm・水素 289 lbm・3378 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-45%20Space%20Shuttle%20Mission%20Report.pdf#page=13） |
| RXN-020 | STS-46 | 1992-07-31 | 2,054 | 258.7 | 2,987 | 2,313 | 15.6 | 118 | 数える | STS-46 の燃料電池の消費：酸素 2054 lbm・水素 258.7 lbm・2987 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-46%20Space%20Shuttle%20Mission%20Report.pdf#page=15） |
| RXN-021 | STS-47 | 1992-09-12 | — | 281.1 | 3,250 | 2,511 | 17.1 | 101.8 | 境界（数えない）：oxygen is a total (2331.9 lb consumed) with 101.8 lb of the total supplied to the crew for breathing… | STS-47 の燃料電池の消費：酸素の値なし・水素 281.1 lbm・3249.7 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-47%20Space%20Shuttle%20Mission%20Report.pdf#page=13） |
| RXN-022 | STS-48 | 1991-09-12 | 1,296 | 163.2 | 1,891 | 1,459 | 14.7 | — | 数える | STS-48 の燃料電池の消費：酸素 1296 lbm・水素 163.2 lbm・1891 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-48%20Space%20Shuttle%20Mission%20Report.pdf#page=13） |
| RXN-023 | STS-49 | 1992-05-07 | 1,942.1 | 244.6 | 2,878 | 2,187 | 13.49 | 112 | 数える | STS-49 の燃料電池の消費：酸素 1942.1 lbm・水素 244.6 lbm・2877.6 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-49%20Space%20Shuttle%20Mission%20Report.pdf#page=15） |
| RXN-024 | STS-50 | 1992-06-25 | 4,364.9 | 549.7 | 6,205 | 4,915 | 18.7 | 209.8 | 数える | STS-50 の燃料電池の消費：酸素 4364.9 lbm・水素 549.7 lbm・6204.7 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-50%20Space%20Shuttle%20Mission%20Report.pdf#page=16） |
| RXN-025 | STS-51 | 1993-09-12 | 2,239 | 282 | 3,249 | 2,521 | 13.8 | 63 | 数える | STS-51 の燃料電池の消費：酸素 2239 lbm・水素 282 lbm・3249 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-51%20Space%20Shuttle%20Mission%20Report.pdf#page=21） |
| RXN-026 | STS-52 | 1992-10-22 | 2,386 | 300.5 | 3,515 | 2,686 | 14.83 | 121.8 | 数える | STS-52 の燃料電池の消費：酸素 2386 lbm・水素 300.5 lbm・3514.6 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-52%20Space%20Shuttle%20Mission%20Report.pdf#page=14） |
| RXN-027 | STS-53 | 1992-12-02 | 1,640.4 | 206.6 | 2,383 | 1,847 | 13.6 | 41.9 | 数える | STS-53 の燃料電池の消費：酸素 1640.4 lbm・水素 206.6 lbm・2382.9 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-53%20Space%20Shuttle%20Mission%20Report.pdf#page=15） |
| RXN-028 | STS-54 | 1993-01-13 | — | 176.9 | 2,062 | 1,582 | — | 66.8 | 境界（数えない）：oxygen is a total (1471.4 lb consumed, printed 'lb lb') with 66.8 lb used by the crew inside it; fue… | STS-54 の燃料電池の消費：酸素の値なし・水素 176.9 lbm・2061.8 kWh（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=14） |
| RXN-029 | STS-55 | 1993-04-26 | 2,950.5 | 371.6 | 4,296 | 3,322 | 17.9 | 129.8 | 数える | STS-55 の燃料電池の消費：酸素 2950.5 lbm・水素 371.6 lbm・4296 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-55%20Space%20Shuttle%20Mission%20Report.pdf#page=23） |
| RXN-030 | STS-56 | 1993-04-08 | — | 304.2 | 3,497 | 2,720 | — | 69.7 | 境界（数えない）：oxygen is a total (2485.1 lb consumed) with 69.7 lb used by the crew inside it; fuel-cell oxygen not… | STS-56 の燃料電池の消費：酸素の値なし・水素 304.2 lbm・3497 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-56%20Space%20Shuttle%20Mission%20Report.pdf#page=22） |
| RXN-031 | STS-57 | 1993-06-21 | 2,422 | 305 | 3,518 | 2,727 | 14.7 | 116 | 数える | STS-57 の燃料電池の消費：酸素 2422 lbm・水素 305 lbm・3518 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-57%20Space%20Shuttle%20Mission%20Report.pdf#page=20） |
| RXN-032 | STS-58 | 1993-10-18 | 4,208 | 530 | 6,085 | 4,738 | 18.1 | 209 | 数える | STS-58 の燃料電池の消費：酸素 4208 lbm・水素 530 lbm・6085 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-58%20Space%20Shuttle%20Mission%20Report.pdf#page=17） |
| RXN-033 | STS-59 | 1994-04-09 | 2,811 | 354 | 4,069 | 3,165 | 15.1 | 118 | 数える | STS-59 の燃料電池の消費：酸素 2811 lbm・水素 354 lbm・4069 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-59%20Space%20Shuttle%20Mission%20Report.pdf#page=20） |
| RXN-034 | STS-60 | 1994-02-03 | 2,090 | 263.3 | 3,029 | 2,353 | 15.2 | 55 | 数える | STS-60 の燃料電池の消費：酸素 2090 lbm・水素 263.3 lbm・3029 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-60%20Space%20Shuttle%20Mission%20Report.pdf#page=19） |
| RXN-035 | STS-61 | 1993-12-02 | 2,520 | 317 | 3,666 | 2,837 | 14.1 | 159 | 数える | STS-61 の燃料電池の消費：酸素 2520 lbm・水素 317 lbm・3666 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-61%20Space%20Shuttle%20Mission%20Report.pdf#page=18） |
| RXN-036 | STS-62 | 1994-03-04 | 3,739 | 471 | 5,408 | 4,210 | 16.1 | 138 | 数える | STS-62 の燃料電池の消費：酸素 3739 lbm・水素 471 lbm・5408 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-62%20Space%20Shuttle%20Mission%20Report.pdf#page=23） |
| RXN-037 | STS-63 | 1995-02-03 | 2,161 | 272 | 3,142 | 2,433 | 15.8 | — | 数える | STS-63 の燃料電池の消費：酸素 2161 lbm・水素 272 lbm・3142 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-63%20Space%20Shuttle%20Mission%20Report.pdf#page=24） |
| RXN-038 | STS-64 | 読めない | 2,502 | 315 | 3,660 | 2,817 | 13.9 | 91 | 数える | STS-64 の燃料電池の消費：酸素 2502 lbm・水素 315 lbm・3660 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-64%20Space%20Shuttle%20Mission%20Report.pdf#page=27） |
| RXN-039 | STS-65 | 1994-07-08 | 4,706 | 593 | 6,660 | 5,299 | 18.8 | 204 | 数える | STS-65 の燃料電池の消費：酸素 4706 lbm・水素 593 lbm・6660 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=30） |
| RXN-040 | STS-66 | 1994-11-03 | 2,857 | 360 | 4,164 | 3,217 | 15.9 | 112 | 数える | STS-66 の燃料電池の消費：酸素 2857 lbm・水素 360 lbm・4164 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-66%20Space%20Shuttle%20Mission%20Report.pdf#page=29） |
| RXN-041 | STS-67 | 1995-03-02 | 5,037 | 634 | 7,241 | 5,671 | 18.1 | 226 | 数える | STS-67 の燃料電池の消費：酸素 5037 lbm・水素 634 lbm・7241 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-67%20Space%20Shuttle%20Mission%20Report.pdf#page=23）STS-67 の水（別の頁）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-67%20Space%20Shuttle%20Mission%20Report.pdf#page=24） |
| RXN-042 | STS-68 | 1994-09-30 | 2,933 | 369 | 4,260 | 3,302 | 15.8 | 128 | 数える | STS-68 の燃料電池の消費：酸素 2933 lbm・水素 369 lbm・4260 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-68%20Space%20Shuttle%20Mission%20Report.pdf#page=25） |
| RXN-043 | STS-69 | 1995-09-07 | 2,680 | 338 | 3,884 | 3,018 | 14.9 | 121 | 数える | STS-69 の燃料電池の消費：酸素 2680 lbm・水素 338 lbm・3884 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-69%20Space%20Shuttle%20Mission%20Report.pdf#page=26） |
| RXN-044 | STS-70 | 読めない | 1,916 | 241 | 2,816 | — | — | 43 | 数える | STS-70 の燃料電池の消費：酸素 1916 lbm・水素 241 lbm・2816 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-70%20Space%20Shuttle%20Mission%20Report.pdf#page=19） |
| RXN-045 | STS-71 | 1995-06-27 | 2,724 | 343 | 3,942 | 3,066 | 16.7 | — | 数える | STS-71 の燃料電池の消費：酸素 2724 lbm・水素 343 lbm・3942 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-71%20Space%20Shuttle%20Mission%20Report.pdf#page=40）STS-71 の水素（別の頁）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-71%20Space%20Shuttle%20Mission%20Report.pdf#page=39）STS-71 の発電量（別の頁）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-71%20Space%20Shuttle%20Mission%20Report.pdf#page=39）STS-71 の平均電力（別の頁）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-71%20Space%20Shuttle%20Mission%20Report.pdf#page=39） |
| RXN-046 | STS-72 | 1996-01-11 | 2,048 | 258 | 2,964 | 2,305 | 13.8 | 127 | 数える | STS-72 の燃料電池の消費：酸素 2048 lbm・水素 258 lbm・2964 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-72%20Space%20Shuttle%20Mission%20Report.pdf#page=28） |
| RXN-047 | STS-73 | 1995-10-20 | 5,179 | 652 | 7,446 | 5,831 | 19.5 | 204 | 数える | STS-73 の燃料電池の消費：酸素 5179 lbm・水素 652 lbm・7446 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-73%20Space%20Shuttle%20Mission%20Report.pdf#page=31） |
| RXN-048 | STS-74 | 1995-11-12 | 2,155 | 271 | 3,120 | 2,426 | 15.9 | — | 数える | STS-74 の燃料電池の消費：酸素 2155 lbm・水素 271 lbm・3120 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-74%20Space%20Shuttle%20Mission%20Report.pdf#page=31） |
| RXN-049 | STS-75 | 1996-02-22 | 4,326 | 545 | 6,291 | 4,871 | 16.7 | 156 | 数える | STS-75 の燃料電池の消費：酸素 4326 lbm・水素 545 lbm・6291 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-75%20Space%20Shuttle%20Mission%20Report.pdf#page=26）STS-75 の水（別の頁）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-75%20Space%20Shuttle%20Mission%20Report.pdf#page=27）STS-75 の平均電力（別の頁）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-75%20Space%20Shuttle%20Mission%20Report.pdf#page=27） |
| RXN-050 | STS-76 | 1996-03-22 | 2,438 | 307 | 3,525 | 2,745 | 15.9 | 167 | 数える | STS-76 の燃料電池の消費：酸素 2438 lbm・水素 307 lbm・3525 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-76%20Space%20Shuttle%20Mission%20Report.pdf#page=27） |
| RXN-051 | STS-77 | 1996-05-19 | 2,745 | 346 | 3,924 | 3,091 | 16.3 | 111 | 数える | STS-77 の燃料電池の消費：酸素 2745 lbm・水素 346 lbm・3924 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-77%20Space%20Shuttle%20Mission%20Report.pdf#page=26） |
| RXN-052 | STS-78 | 1996-06-20 | 5,320 | 670 | 7,675 | 5,990 | 18.9 | 220 | 数える | STS-78 の燃料電池の消費：酸素 5320 lbm・水素 670 lbm・7675 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-78%20Space%20Shuttle%20Mission%20Report.pdf#page=25） |
| RXN-053 | STS-80 | 1996-11-19 | 3,989 | 502 | 5,856 | 4,492 | 13.8 | 156 | 数える | STS-80 の燃料電池の消費：酸素 3989 lbm・水素 502 lbm・5856 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-80%20Space%20Shuttle%20Mission%20Report.pdf#page=29） |
| RXN-054 | STS-81 | 1997-01-12 | 2,671 | 336 | 3,862 | 3,007 | 15.8 | 152 | 数える | STS-81 の燃料電池の消費：酸素 2671 lbm・水素 336 lbm・3862 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-81%20Space%20Shuttle%20Mission%20Report.pdf#page=24） |
| RXN-055 | STS-82 | 1997-02-11 | 2,507 | 316 | 3,676 | 2,823 | 15.3 | 140 | 数える | STS-82 の燃料電池の消費：酸素 2507 lbm・水素 316 lbm・3676 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-82%20Space%20Shuttle%20Mission%20Report.pdf#page=22） |
| RXN-056 | STS-83 | 1997-04-04 | 1,201 | 151 | 1,709 | 1,352 | 17.9 | 17 | 数える | STS-83 の燃料電池の消費：酸素 1201 lbm・水素 151 lbm・1709 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-83%20Space%20Shuttle%20Mission%20Report.pdf#page=24） |
| RXN-057 | STS-84 | 1997-05-15 | 2,443 | 308 | 3,548 | 2,750 | 16 | 152 | 数える | STS-84 の燃料電池の消費：酸素 2443 lbm・水素 308 lbm・3548 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-84%20Space%20Shuttle%20Mission%20Report.pdf#page=24） |
| RXN-058 | STS-85 | 1997-08-07 | 2,945 | 371 | 4,308 | 3,316 | 15.1 | 112 | 数える | STS-85 の燃料電池の消費：酸素 2945 lbm・水素 371 lbm・4308 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-85%20Space%20Shuttle%20Mission%20Report.pdf#page=29） |
| RXN-059 | STS-86 | 1997-09-25 | 2,706 | 341 | 3,950 | 3,047 | — | 211 | 境界（数えない）：酸素・水素と発電量が別の段落にある（PLAN_DG §2.2 は同じ文または続く1文） | STS-86 の燃料電池の消費：酸素 2706 lbm・水素 341 lbm・3950 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-86%20Space%20Shuttle%20Mission%20Report.pdf#page=25） |
| RXN-060 | STS-87 | 1997-11-19 | 4,296 | 541 | 6,198 | 4,837 | 16.5 | 192 | 境界（数えない）：酸素・水素と発電量が別の段落にある（PLAN_DG §2.2 は同じ文または続く1文） | STS-87 の燃料電池の消費：酸素 4296 lbm・水素 541 lbm・6198 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-87%20Space%20Shuttle%20Mission%20Report.pdf#page=36） |
| RXN-061 | STS-88 | 1998-12-04 | 2,780 | 350 | 4,025 | 3,130 | 14.2 | 196 | 数える | STS-88 の燃料電池の消費：酸素 2780 lbm・水素 350 lbm・4025 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-88%20Space%20Shuttle%20Mission%20Report.pdf#page=29） |
| RXN-062 | STS-89 | 1998-01-22 | 2,294 | 289 | 3,328 | 2,583 | 15.7 | 162 | 数える | STS-89 の燃料電池の消費：酸素 2294 lbm・水素 289 lbm・3328 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-89%20Space%20Shuttle%20Mission%20Report.pdf#page=25） |
| RXN-063 | STS-90 | 読めない | 4,830 | 608 | 6,889 | 5,438 | 18 | 276 | 数える | STS-90 の燃料電池の消費：酸素 4830 lbm・水素 608 lbm・6889 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-90%20Space%20Shuttle%20Mission%20Report.pdf#page=23） |
| RXN-064 | STS-91 | 読めない | 2,717 | 342 | 3,946 | 3,059 | 16.7 | 143 | 数える | STS-91 の燃料電池の消費：酸素 2717 lbm・水素 342 lbm・3946 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-91%20Space%20Shuttle%20Mission%20Report.pdf#page=26）STS-91 の平均電力（別の頁）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-91%20Space%20Shuttle%20Mission%20Report.pdf#page=25） |
| RXN-065 | STS-92 | 2000-10-11 | 2,942 | 370 | 4,313 | 3,312 | 14.8 | 197 | 数える | STS-92 の燃料電池の消費：酸素 2942 lbm・水素 370 lbm・4313 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-92%20Space%20Shuttle%20Mission%20Report.pdf#page=24） |
| RXN-066 | STS-93 | 1999-07-23 | 1,053 | 133 | 1,528 | 1,186 | 12.9 | — | 数える | STS-93 の燃料電池の消費：酸素 1053 lbm・水素 133 lbm・1528 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-93%20Space%20Shuttle%20Mission%20Report.pdf#page=24） |
| RXN-067 | STS-94 | 読めない | 5,300 | 667 | 7,611 | 5,967 | 20.2 | 193 | 数える | STS-94 の燃料電池の消費：酸素 5300 lbm・水素 667 lbm・7611 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-94%20Space%20Shuttle%20Mission%20Report.pdf#page=28）STS-94 の水（別の頁）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-94%20Space%20Shuttle%20Mission%20Report.pdf#page=29）STS-94 の平均電力（別の頁）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-94%20Space%20Shuttle%20Mission%20Report.pdf#page=29） |
| RXN-068 | STS-95 | 1998-10-29 | 2,652 | 334 | 3,818 | 2,986 | 17.9 | 87 | 数える | STS-95 の燃料電池の消費：酸素 2652 lbm・水素 334 lbm・3818 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-95%20Space%20Shuttle%20Mission%20Report.pdf#page=31） |
| RXN-069 | STS-96 | 1999-05-27 | 2,500 | 315 | 3,648 | — | — | 127 | 境界（数えない）：same flight, two sets of values: PRSD sentence (p21) gives 2500 lbm O2, 315 lbm H2, 3648 kWh; the fu… | STS-96 の燃料電池の消費：酸素 2500 lbm・水素 315 lbm・3648 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-96%20Space%20Shuttle%20Mission%20Report.pdf#page=21） |
| RXN-070 | STS-97 | 2000-11-30 | 2,387 | 301 | 3,464 | 2,688 | 13.3 | 164 | 数える | STS-97 の燃料電池の消費：酸素 2387 lbm・水素 301 lbm・3464 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-97%20Space%20Shuttle%20Mission%20Report.pdf#page=23） |
| RXN-071 | STS-98 | 2001-02-07 | 2,981 | 375 | 4,356 | 3,357 | 14.1 | 203 | 数える | STS-98 の燃料電池の消費：酸素 2981 lbm・水素 375 lbm・4356 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-98%20Space%20Shuttle%20Mission%20Report.pdf#page=26） |
| RXN-072 | STS-99 | 2000-02-11 | 3,021 | 380 | 4,378 | 3,401 | 16.2 | 117 | 数える | STS-99 の燃料電池の消費：酸素 3021 lbm・水素 380 lbm・4378 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-99%20Space%20Shuttle%20Mission%20Report.pdf#page=25） |
| RXN-073 | STS-100 | 2001-04-19 | 2,627 | 331 | 3,847 | 2,958 | 13.5 | 179 | 数える | STS-100 の燃料電池の消費：酸素 2627 lbm・水素 331 lbm・3847 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-100%20Space%20Shuttle%20Mission%20Report.pdf#page=26） |
| RXN-074 | STS-101 | 2000-05-19 | 2,583 | 325 | 3,765 | 2,908 | 15.9 | 150 | 数える | STS-101 の燃料電池の消費：酸素 2583 lbm・水素 325 lbm・3765 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-101%20Space%20Shuttle%20Mission%20Report.pdf#page=27） |
| RXN-075 | STS-102 | 2001-03-08 | 2,884 | 363 | 4,243 | 3,247 | 13.8 | 243 | 数える | STS-102 の燃料電池の消費：酸素 2884 lbm・水素 363 lbm・4243 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-102%20Space%20Shuttle%20Mission%20Report.pdf#page=29） |
| RXN-076 | STS-103 | 1999-12-19 | 2,041 | 257 | 2,982 | 2,298 | 15.6 | 123 | 数える | STS-103 の燃料電池の消費：酸素 2041 lbm・水素 257 lbm・2982 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-103%20Space%20Shuttle%20Mission%20Report.pdf#page=22） |
| RXN-077 | STS-104 | 2001-07-12 | 2,908 | 366 | 4,249 | 3,274 | 13.9 | 157 | 数える | STS-104 の燃料電池の消費：酸素 2908 lbm・水素 366 lbm・4249 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-104%20Space%20Shuttle%20Mission%20Report.pdf#page=25） |
| RXN-078 | STS-105 | 2001-08-10 | 2,703 | 340 | 3,972 | 3,043 | 13.9 | 197 | 数える | STS-105 の燃料電池の消費：酸素 2703 lbm・水素 340 lbm・3972 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-105%20Space%20Shuttle%20Mission%20Report.pdf#page=23） |
| RXN-079 | STS-106 | 2000-09-08 | 2,881 | 363 | 4,204 | 3,244 | 14.8 | 173 | 数える | STS-106 の燃料電池の消費：酸素 2881 lbm・水素 363 lbm・4204 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-106%20Space%20Shuttle%20Mission%20Report.pdf#page=24） |
| RXN-080 | STS-107 | 2003-01-16 | 4,505 | 567 | 6,440 | 5,072 | 16.8 | 201 | 数える | STS-107 の燃料電池の消費：酸素 4505 lbm・水素 567 lbm・6440 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-107%20Space%20Shuttle%20Mission%20Report.pdf#page=21）STS-107 の水（別の頁）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-107%20Space%20Shuttle%20Mission%20Report.pdf#page=22） |
| RXN-081 | STS-108 | 2001-12-05 | 2,687 | 338 | 3,912 | 3,025 | 13.8 | 166 | 数える | STS-108 の燃料電池の消費：酸素 2687 lbm・水素 338 lbm・3912 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=27）STS-108 の水（別の頁）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=28）STS-108 の平均電力（別の頁）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=28） |
| RXN-082 | STS-109 | 2002-03-01 | 2,659 | 335 | 3,858 | 2,994 | 14.7 | 166 | 数える | STS-109 の燃料電池の消費：酸素 2659 lbm・水素 335 lbm・3858 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-109%20Space%20Shuttle%20Mission%20Report.pdf#page=22）STS-109 の水（別の頁）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-109%20Space%20Shuttle%20Mission%20Report.pdf#page=23）STS-109 の平均電力（別の頁）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-109%20Space%20Shuttle%20Mission%20Report.pdf#page=23） |
| RXN-083 | STS-110 | 2002-04-08 | 2,416 | 304 | 3,521 | 2,720 | 13.6 | 243 | 数える | STS-110 の燃料電池の消費：酸素 2416 lbm・水素 304 lbm・3521 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-110%20Space%20Shuttle%20Mission%20Report.pdf#page=26） |
| RXN-084 | STS-111 | 2002-06-05 | 3,094 | 390 | 4,525 | 3,484 | 13.6 | 194 | 数える | STS-111 の燃料電池の消費：酸素 3094 lbm・水素 390 lbm・4525 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-111%20Space%20Shuttle%20Mission%20Report.pdf#page=26）STS-111 の水（別の頁）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-111%20Space%20Shuttle%20Mission%20Report.pdf#page=27） |
| RXN-085 | STS-112 | 2002-10-07 | 2,377 | 299 | 3,481 | 2,676 | 13.4 | 154 | 数える | STS-112 の燃料電池の消費：酸素 2377 lbm・水素 299 lbm・3481 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-112%20Space%20Shuttle%20Mission%20Report.pdf#page=26） |
| RXN-086 | STS-113 | 2002-11-23 | 2,954 | 372 | 4,316 | 3,326 | 13 | 203 | 数える | STS-113 の燃料電池の消費：酸素 2954 lbm・水素 372 lbm・4316 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-113%20Space%20Shuttle%20Mission%20Report.pdf#page=28） |
| RXN-087 | STS-114 | 2005-07-26 | 3,076 | 387 | 4,526 | 3,463 | 13.6 | 250 | 数える | STS-114 の燃料電池の消費：酸素 3076 lbm・水素 387 lbm・4526 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=43）STS-114 の水（別の頁）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=44） |
| RXN-088 | STS-115 | 2006-09-09 | 2,595 | 327 | 3,810 | 2,922 | 13.5 | 290 | 数える | STS-115 の燃料電池の消費：酸素 2595 lbm・水素 327 lbm・3810 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-115%20Space%20Shuttle%20Mission%20Report.pdf#page=43）STS-115 の水（別の頁）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-115%20Space%20Shuttle%20Mission%20Report.pdf#page=44） |
| RXN-089 | STS-116 | 2006-12-09 | 3,001 | 378 | 4,384 | 3,379 | 14.2 | 195 | 数える | STS-116 の燃料電池の消費：酸素 3001 lbm・水素 378 lbm・4384 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-116%20Space%20Shuttle%20Mission%20Report.pdf#page=41）STS-116 の水（別の頁）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-116%20Space%20Shuttle%20Mission%20Report.pdf#page=43）STS-116 の平均電力（別の頁）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-116%20Space%20Shuttle%20Mission%20Report.pdf#page=42） |
| RXN-090 | STS-117 | 2007-06-08 | 2,901 | 365 | 4,269 | 3,267 | 12.8 | 170 | 数える | STS-117 の燃料電池の消費：酸素 2901 lbm・水素 365 lbm・4269 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-117%20Space%20Shuttle%20Mission%20Report.pdf#page=42） |
| RXN-091 | STS-118 | 2007-08-08 | 2,088 | 263 | 3,061 | 2,351 | 10 | 189 | 数える | STS-118 の燃料電池の消費：酸素 2088 lbm・水素 263 lbm・3061 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-118%20Space%20Shuttle%20Mission%20Report.pdf#page=46） |
| RXN-092 | STS-119 | 2009-03-15 | 2,211 | 278 | 3,272 | 2,490 | 10.6 | — | 数える | STS-119 の燃料電池の消費：酸素 2211 lbm・水素 278 lbm・3272 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-119%20Space%20Shuttle%20Mission%20Report.pdf#page=44） |
| RXN-093 | STS-120 | 2007-10-23 | 2,517 | 317 | 3,711 | 2,833 | 10.24 | — | 数える | STS-120 の燃料電池の消費：酸素 2517 lbm・水素 317 lbm・3711 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-120%20Space%20Shuttle%20Mission%20Report.pdf#page=44） |
| RXN-094 | STS-121 | 2006-07-04 | 2,836 | 357 | 4,172 | 3,193 | 13.6 | 205 | 数える | STS-121 の燃料電池の消費：酸素 2836 lbm・水素 357 lbm・4172 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-121%20Space%20Shuttle%20Mission%20Report.pdf#page=40）STS-121 の水（別の頁）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-121%20Space%20Shuttle%20Mission%20Report.pdf#page=41） |
| RXN-095 | STS-122 | 2008-02-07 | 2,827 | 356 | 4,126 | 3,183 | 13.5 | 178 | 数える | STS-122 の燃料電池の消費：酸素 2827 lbm・水素 356 lbm・4126 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=47）STS-122 の水（別の頁）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=49） |
| RXN-096 | STS-123 | 2008-03-11 | 2,378 | 299 | 3,507 | 2,677 | 9.3 | — | 数える | STS-123 の燃料電池の消費：酸素 2378 lbm・水素 299 lbm・3507 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-123%20Space%20Shuttle%20Mission%20Report.pdf#page=43）STS-123 の水（別の頁）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-123%20Space%20Shuttle%20Mission%20Report.pdf#page=44） |
| RXN-097 | STS-124 | 2008-05-31 | 2,206 | 278 | 3,265 | 2,484 | 9.9 | — | 数える | STS-124 の燃料電池の消費：酸素 2206 lbm・水素 278 lbm・3265 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-124%20Space%20Shuttle%20Mission%20Report.pdf#page=44）STS-124 の水（別の頁）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-124%20Space%20Shuttle%20Mission%20Report.pdf#page=45） |
| RXN-098 | STS-125 | 2009-05-11 | 3,198 | 403 | 4,630 | 3,601 | 15 | 174 | 数える | STS-125 の燃料電池の消費：酸素 3198 lbm・水素 403 lbm・4630 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=46） |
| RXN-099 | STS-126 | 2008-11-14 | 2,446 | 308 | 3,619 | 2,754 | 9.5 | — | 数える | STS-126 の燃料電池の消費：酸素 2446 lbm・水素 308 lbm・3619 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-126%20Space%20Shuttle%20Mission%20Report.pdf#page=48）STS-126 の水（別の頁）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-126%20Space%20Shuttle%20Mission%20Report.pdf#page=49）STS-126 の平均電力（別の頁）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-126%20Space%20Shuttle%20Mission%20Report.pdf#page=49） |
| RXN-100 | STS-127 | 2009-07-15 | 2,441 | 307 | 3,621 | 2,749 | 9.6 | — | 数える | STS-127 の燃料電池の消費：酸素 2441 lbm・水素 307 lbm・3621 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-127%20Space%20Shuttle%20Mission%20Report.pdf#page=58） |
| RXN-101 | STS-128 | 2009-08-28 | 2,159 | 272 | 3,206 | 2,431 | 9.6 | 238 | 数える | STS-128 の燃料電池の消費：酸素 2159 lbm・水素 272 lbm・3206 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-128%20Space%20Shuttle%20Mission%20Report.pdf#page=48）STS-128 の水（別の頁）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-128%20Space%20Shuttle%20Mission%20Report.pdf#page=50） |
| RXN-102 | STS-129 | 2009-11-16 | 2,520 | 317 | 3,669 | 2,838 | 14.2 | 210 | 数える | STS-129 の燃料電池の消費：酸素 2520 lbm・水素 317 lbm・3669 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-129%20Space%20Shuttle%20Mission%20Report.pdf#page=47）STS-129 の水（別の頁）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-129%20Space%20Shuttle%20Mission%20Report.pdf#page=48） |
| RXN-103 | STS-130 | 2010-02-08 | 2,054 | 259 | 3,044 | 2,313 | 9.2 | — | 数える | STS-130 の燃料電池の消費：酸素 2054 lbm・水素 259 lbm・3044 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-130%20Space%20Shuttle%20Mission%20Report.pdf#page=49） |
| RXN-104 | STS-131 | 2010-04-05 | 2,239 | 282 | 3,317 | 2,521 | 9.1 | — | 数える | STS-131 の燃料電池の消費：酸素 2239 lbm・水素 282 lbm・3317 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-131%20Space%20Shuttle%20Mission%20Report.pdf#page=48）STS-131 の水（別の頁）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-131%20Space%20Shuttle%20Mission%20Report.pdf#page=49）STS-131 の平均電力（別の頁）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-131%20Space%20Shuttle%20Mission%20Report.pdf#page=49） |
| RXN-105 | STS-132 | 2010-05-14 | 2,673 | 337 | 3,896 | 3,009 | 13.8 | — | 数える | STS-132 の燃料電池の消費：酸素 2673 lbm・水素 337 lbm・3896 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-132%20Space%20Shuttle%20Mission%20Report.pdf#page=44）STS-132 の水（別の頁）（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-132%20Space%20Shuttle%20Mission%20Report.pdf#page=45） |
| RXN-106 | STS-133 | 2011-02-24 | 1,886 | 238 | 2,791 | 2,124 | 9.1 | — | 数える | STS-133 の燃料電池の消費：酸素 1886 lbm・水素 238 lbm・2791 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-133%20Space%20Shuttle%20Mission%20Report.pdf#page=54） |
| RXN-107 | STS-134 | 2011-05-16 | 2,317 | 292 | 3,409 | 2,609 | 9 | — | 数える | STS-134 の燃料電池の消費：酸素 2317 lbm・水素 292 lbm・3409 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-134%20Space%20Shuttle%20Mission%20Report.pdf#page=55） |
| RXN-108 | STS-135 | 2011-07-08 | 2,856 | 360 | 4,159 | 3,216 | 13.6 | — | 数える | STS-135 の燃料電池の消費：酸素 2856 lbm・水素 360 lbm・4159 kWh（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=44） |

## 6. 図

図309 は飛行ごとの酸素・水素・発電量、図310 は 1 kWh あたりの量と質量比（制約への束ね）、図311 は年代ごとの件数と範囲の表である。

## 7. SysML v2 テキスト

同じ内容を SysML v2 のテキスト [SysML/SSD-RXN-ORB-001.sysml](../SysML/SSD-RXN-ORB-001.sysml) に示す。燃料電池の消費の定義的な制約 FuelCellConsumption と、飛行ごとの part def ReactantUse の使用 108件から成る。飛行ごとの使用が bind で制約に束ねる。OMG SysML v2 Pilot Implementation 0.62.0（2026-08 リリース、標準ライブラリ付き）で読み込んで、構文・名前の解決・型の検査で誤り 0件・警告 0件を確かめた。設計値との等式は主張せず、要求への関係は張らず、トレースの外に置いた。

## 8. 注記（出典間の相違・構成変更）

> **注記** 範囲・取れなかった値・本書の判断：記録は Mission Report 本文に、燃料電池が飛行全体で使った（または PRSD が供給した）酸素・水素の量と、同じ期間の発電量（kWh）が、同じ文または続く1文に書かれたものだけで、飛行ごとに1件（108飛行）。値は本文のまま（lbm・kWh。換算しない）。タンクの量（%・質量の表）の値は取っていない。1 kWh あたりの量・質量比・水と（酸素＋水素）の差は本書の計算で、本文の値ではない。**判定は付けない**（設計値 0.7・0.09 lbm/kWh〔SSD-PRF-ORB-001 の PFR-05・06〕との差は数で示すだけ）。

> **注記** 範囲・取れなかった値・本書の判断：数え方：108飛行のうち、判断に迷うもの 17飛行（STS-27・STS-28・STS-29・STS-30・STS-31・STS-32・STS-34・STS-39・STS-40・STS-42・STS-45・STS-47・STS-54・STS-56・STS-86・STS-87・STS-96）を境界とし、数えない（表には載せ、理由を書いた）。図・集計は数える 91飛行。基準（作る前に決めた。境界を除いて数える）は 三つ組を読めた飛行 40以上・実際の打上げ日の年で 1990 年代と 2000 年以降に各 8飛行以上で、満たす（91飛行・1990 年代 45・2000 年以降 39・1980 年代 1）。調査役の出力で酸素・水素と kWh が別の段落にある 16飛行は、定義（同じ文または続く1文）どおり境界にした。

> **注記** 範囲・取れなかった値・本書の判断：酸素は燃料電池が使った分で、乗員の呼吸用（ECLSS に供給した分）を含めない。本文が燃料電池用と乗員用を分けず合計だけを書く5飛行（STS-32・40・47・54・56）は、引き算せず境界にした（合計と乗員用は記録の欄にある）。同じ飛行の同じ頁に2組の値がある STS-96 は境界。49飛行は、候補の文の走査に無く、報告書の検索で加えた。

> **注記** 範囲・取れなかった値・本書の判断：**水と質量比は、報告書自身の計算である**：水の量を書く 90飛行のうち 89飛行で、水の量が（酸素＋水素）の量と ±1 lbm 以内で一致し、酸素/水素の質量比は 7.917〜8.337（中央値 7.941）に収まる。報告書が水の量を酸素と水素から出しているので、この2つは独立な測定の照合でなく、本文の値どうしの関係として示す。情報を持つのは 1 kWh あたりの酸素の量で、酸素 0.673〜0.720（中央値 0.687）lbm/kWh。水素は 0.0833〜0.0890（中央値 0.0864）lbm/kWh で、質量比がほぼ一定なので酸素と整合する（独立とは言わない）。水が（酸素＋水素）と 2 lbm を超えて違う飛行：STS-37（水 1627・酸素 1559・水素 187 lbm）。酸素/kWh の最大は STS-37、質量比の最大は STS-37（1 飛行が両方の最大を決めている）。

> **注記** 範囲・取れなかった値・本書の判断：制約への束ね（SysML）：`constraint def FuelCellConsumption` は、酸素・水素・発電量を入力に、1 kWh あたりの酸素・水素と質量比を出力とする定義的な式（作り方から真になる）で、飛行ごとの使用が `bind` で束ねる。**設計値（0.7・0.09）との等式は assert しない**（偽を主張すると判定になる）。設計値は SSD-PAR-ORB-001 の `ReactantBudget` にあり、本書の表は差を数で示すだけ。

> **注記** 範囲・取れなかった値・本書の判断：年代は実際の打上げ日の年（本文が書く日付。スクラブした日・計画の日付ではない）。打上げ日が通日などで年が読めない 6飛行は『打上げ日が読めない』に数えた（換算・推定しない）。1980 年代の飛行 6のうち、数えるのは 1、酸素・水素と kWh が別の段落にあり境界にしたのは 5。

> **注記** 範囲・取れなかった値・本書の判断：既存との重なり：標準ミッションの設計値は SSD-PAR-ORB-001・SSD-BUD-ORB-001、反応剤の定数・STS-1・114・125 などの残量は SSD-PRF-ORB-001。本書は飛行ごとの消費の実績を持つ（着陸時の残りの延長能力は SSD-XCP-ORB-001）。

> **注記** 既存との重なり：標準ミッションの設計値（ReactantBudget）は SSD-PAR-ORB-001、反応剤の定数・少数の飛行の残量は SSD-PRF-ORB-001。本書は飛行ごとの消費の実績を持ち、それらに判定を付けない。

## 9. 参考文献

1. NSTS-22070 STS-26 National Space Transportation System Mission Report（NASA JSC、1989年1月、44頁、2,839,485 バイト。OCR のテキスト層） （PDF p16） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-26%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=16
2. NSTS-22070 STS-26 National Space Transportation System Mission Report（NASA JSC、1989年1月、44頁、2,839,485 バイト。OCR のテキスト層） （PDF p15） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-26%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=15
3. STS-27 National Space Transportation System Mission Report（JSC、42頁、2,114,204 バイト） （PDF p8） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-27%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=8
4. STS-28 National Space Transportation System Mission Report（NASA JSC、1989年9月、28頁、1,965,098 バイト。OCR のテキスト層） （PDF p10） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-28%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=10
5. STS-29 National Space Transportation System Mission Report（JSC、32頁、2,121,209 バイト） （PDF p11） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-29%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=11
6. STS-30 National Space Transportation System Mission Report（JSC、26頁、1,907,427 バイト） （PDF p12） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-30%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=12
7. STS-31 National Space Transportation System Mission Report（JSC、24頁、1,700,712 バイト） （PDF p11） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-31%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=11
8. STS-32 National Space Transportation System Mission Report（JSC、33頁、2,253,513 バイト） （PDF p13） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-32%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=13
9. STS-34 National Space Transportation System Mission Report（JSC、25頁、1,797,889 バイト） （PDF p12） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-34%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=12
10. STS-35 Mission Report （PDF p12） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=12
11. STS-36 Space Shuttle Mission Report（JSC、22頁、1,594,658 バイト） （PDF p11） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-36%20Space%20Shuttle%20Mission%20Report.pdf#page=11
12. STS-37 Space Shuttle Mission Report（JSC、33頁、2,278,770 バイト） （PDF p13） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-37%20Space%20Shuttle%20Mission%20Report.pdf#page=13
13. STS-37 Space Shuttle Mission Report（JSC、33頁、2,278,770 バイト） （PDF p14） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-37%20Space%20Shuttle%20Mission%20Report.pdf#page=14
14. STS-38 Space Shuttle Mission Report（JSC、19頁、1,407,992 バイト） （PDF p9） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-38%20Space%20Shuttle%20Mission%20Report.pdf#page=9
15. STS-39 Space Shuttle Mission Report（JSC、34頁、2,294,085 バイト） （PDF p12） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-39%20Space%20Shuttle%20Mission%20Report.pdf#page=12
16. STS-40 Space Shuttle Mission Report（JSC、34頁、2,481,480 バイト） （PDF p13） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-40%20Space%20Shuttle%20Mission%20Report.pdf#page=13
17. STS-41 Space Shuttle Mission Report（JSC、27頁、2,003,951 バイト） （PDF p12） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-41%20Space%20Shuttle%20Mission%20Report.pdf#page=12
18. STS-42 Space Shuttle Mission Report（JSC、32頁、2,401,728 バイト） （PDF p13） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-42%20Space%20Shuttle%20Mission%20Report.pdf#page=13
19. STS-43 Space Shuttle Mission Report（JSC、34頁、2,389,619 バイト） （PDF p15） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-43%20Space%20Shuttle%20Mission%20Report.pdf#page=15
20. STS-44 Space Shuttle Mission Report（JSC、32頁、2,271,439 バイト） （PDF p14） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-44%20Space%20Shuttle%20Mission%20Report.pdf#page=14
21. STS-45 Space Shuttle Mission Report（JSC、34頁、2,413,807 バイト） （PDF p13） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-45%20Space%20Shuttle%20Mission%20Report.pdf#page=13
22. NSTS-08278 STS-46 Space Shuttle Mission Report（1992-10、34頁、2,454,037 バイト） Fuel cell（PDF p15） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-46%20Space%20Shuttle%20Mission%20Report.pdf#page=15
23. STS-47 Space Shuttle Mission Report（JSC、38頁、2,524,596 バイト） （PDF p13） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-47%20Space%20Shuttle%20Mission%20Report.pdf#page=13
24. STS-48 Space Shuttle Mission Report（JSC、30頁、1,973,791 バイト） （PDF p13） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-48%20Space%20Shuttle%20Mission%20Report.pdf#page=13
25. NSTS-08276 STS-49 Space Shuttle Mission Report（NASA JSC、1992年7月、47頁、3,165,780 バイト。OCR のテキスト層） （PDF p15） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-49%20Space%20Shuttle%20Mission%20Report.pdf#page=15
26. NSTS-08277 STS-50 Space Shuttle Mission Report（1992-08、43頁、4,158,096 バイト） （PDF p16） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-50%20Space%20Shuttle%20Mission%20Report.pdf#page=16
27. STS-51 Space Shuttle Mission Report（JSC、56頁、6,953,590 バイト） （PDF p21） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-51%20Space%20Shuttle%20Mission%20Report.pdf#page=21
28. STS-52 Space Shuttle Mission Report（JSC、44頁、7,044,981 バイト） （PDF p14） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-52%20Space%20Shuttle%20Mission%20Report.pdf#page=14
29. STS-53 Space Shuttle Mission Report（JSC、39頁、3,088,890 バイト） （PDF p15） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-53%20Space%20Shuttle%20Mission%20Report.pdf#page=15
30. NASA-CR-194116 STS-54 Mission Report（1993） （PDF p14） — https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=14
31. STS-55 Space Shuttle Mission Report（JSC、50頁、4,100,333 バイト） （PDF p23） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-55%20Space%20Shuttle%20Mission%20Report.pdf#page=23
32. STS-56 Space Shuttle Mission Report（1993、51頁、4,013,614 バイト） （PDF p22） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-56%20Space%20Shuttle%20Mission%20Report.pdf#page=22
33. STS-57 Space Shuttle Mission Report（JSC、51頁、4,156,073 バイト） （PDF p20） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-57%20Space%20Shuttle%20Mission%20Report.pdf#page=20
34. STS-58 Space Shuttle Mission Report（JSC、40頁、10,048,236 バイト） （PDF p17） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-58%20Space%20Shuttle%20Mission%20Report.pdf#page=17
35. STS-59 Mission Report Fuel cell（PDF p20） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-59%20Space%20Shuttle%20Mission%20Report.pdf#page=20
36. NSTS-08239 STS-60 Space Shuttle Mission Report（NASA JSC、1994年4月、43頁、3,414,515 バイト。OCR のテキスト層） （PDF p19） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-60%20Space%20Shuttle%20Mission%20Report.pdf#page=19
37. STS-61 Space Shuttle Mission Report（JSC、53頁、13,191,827 バイト） （PDF p18） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-61%20Space%20Shuttle%20Mission%20Report.pdf#page=18
38. STS-62 Space Shuttle Mission Report（1994、59頁、4,338,007 バイト） （PDF p23） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-62%20Space%20Shuttle%20Mission%20Report.pdf#page=23
39. STS-63 Space Shuttle Mission Report（JSC、54頁、12,326,497 バイト） （PDF p24） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-63%20Space%20Shuttle%20Mission%20Report.pdf#page=24
40. STS-64 Space Shuttle Mission Report（JSC、65頁、3,958,259 バイト） （PDF p27） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-64%20Space%20Shuttle%20Mission%20Report.pdf#page=27
41. STS-65 Mission Report （PDF p30） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=30
42. STS-66 Space Shuttle Mission Report（JSC、70頁、4,265,040 バイト） （PDF p29） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-66%20Space%20Shuttle%20Mission%20Report.pdf#page=29
43. STS-67 Space Shuttle Mission Report（JSC、50頁、3,217,298 バイト） （PDF p23） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-67%20Space%20Shuttle%20Mission%20Report.pdf#page=23
44. STS-67 Space Shuttle Mission Report（JSC、50頁、3,217,298 バイト） （PDF p24） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-67%20Space%20Shuttle%20Mission%20Report.pdf#page=24
45. STS-68 Space Shuttle Mission Report（JSC、59頁、3,902,861 バイト） （PDF p25） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-68%20Space%20Shuttle%20Mission%20Report.pdf#page=25
46. NSTS-37402 STS-69 Space Shuttle Mission Report（NASA JSC、1995年12月、59頁、13,289,517 バイト。OCR のテキスト層） （PDF p26） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-69%20Space%20Shuttle%20Mission%20Report.pdf#page=26
47. STS-70 Space Shuttle Mission Report（JSC、43頁、2,892,442 バイト） （PDF p19） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-70%20Space%20Shuttle%20Mission%20Report.pdf#page=19
48. NSTS-08298 STS-71 Space Shuttle Mission Report（NASA JSC、1995年8月、66頁、4,641,598 バイト。OCR のテキスト層） （PDF p40） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-71%20Space%20Shuttle%20Mission%20Report.pdf#page=40
49. NSTS-08298 STS-71 Space Shuttle Mission Report（NASA JSC、1995年8月、66頁、4,641,598 バイト。OCR のテキスト層） （PDF p39） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-71%20Space%20Shuttle%20Mission%20Report.pdf#page=39
50. STS-72 Space Shuttle Mission Report（JSC、59頁、4,144,081 バイト） （PDF p28） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-72%20Space%20Shuttle%20Mission%20Report.pdf#page=28
51. STS-73 Space Shuttle Mission Report（1995、58頁、3,834,683 バイト） （PDF p31） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-73%20Space%20Shuttle%20Mission%20Report.pdf#page=31
52. NSTS-37404 STS-74 Space Shuttle Mission Report（JSC、1996年2月、58頁、3,620,224 バイト） （PDF p31） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-74%20Space%20Shuttle%20Mission%20Report.pdf#page=31
53. STS-75 Space Shuttle Mission Report（JSC、57頁、3,758,307 バイト） STS-75 PRSD（PDF p26） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-75%20Space%20Shuttle%20Mission%20Report.pdf#page=26
54. STS-75 Space Shuttle Mission Report（JSC、57頁、3,758,307 バイト） （PDF p27） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-75%20Space%20Shuttle%20Mission%20Report.pdf#page=27
55. STS-76 Space Shuttle Mission Report（JSC、61頁、4,258,252 バイト） （PDF p27） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-76%20Space%20Shuttle%20Mission%20Report.pdf#page=27
56. NSTS-37408 STS-77 Space Shuttle Mission Report（JSC、1996年6月、54頁、3,218,725 バイト） （PDF p26） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-77%20Space%20Shuttle%20Mission%20Report.pdf#page=26
57. STS-78 Space Shuttle Mission Report（1996、56頁、3,829,488 バイト） （PDF p25） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-78%20Space%20Shuttle%20Mission%20Report.pdf#page=25
58. STS-80 Space Shuttle Mission Report（1997、63頁、4,088,118 バイト） （PDF p29） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-80%20Space%20Shuttle%20Mission%20Report.pdf#page=29
59. STS-81 Space Shuttle Mission Report（JSC、58頁、3,785,260 バイト） （PDF p24） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-81%20Space%20Shuttle%20Mission%20Report.pdf#page=24
60. STS-82 Space Shuttle Mission Report（JSC、53頁、3,114,873 バイト） （PDF p22） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-82%20Space%20Shuttle%20Mission%20Report.pdf#page=22
61. STS-83 Space Shuttle Mission Report（JSC、53頁、3,369,343 バイト） （PDF p24） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-83%20Space%20Shuttle%20Mission%20Report.pdf#page=24
62. STS-84 Space Shuttle Mission Report（JSC、51頁、3,008,116 バイト） （PDF p24） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-84%20Space%20Shuttle%20Mission%20Report.pdf#page=24
63. STS-85 Space Shuttle Mission Report（JSC、59頁、4,127,755 バイト） （PDF p29） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-85%20Space%20Shuttle%20Mission%20Report.pdf#page=29
64. STS-86 Space Shuttle Mission Report（JSC、55頁、3,530,498 バイト） （PDF p25） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-86%20Space%20Shuttle%20Mission%20Report.pdf#page=25
65. NSTS-37418 STS-87 Space Shuttle Mission Report（NASA JSC、1998年2月、69頁、4,506,095 バイト。OCR のテキスト層） （PDF p36） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-87%20Space%20Shuttle%20Mission%20Report.pdf#page=36
66. STS-88 Space Shuttle Mission Report（JSC、63頁、3,992,889 バイト） （PDF p29） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-88%20Space%20Shuttle%20Mission%20Report.pdf#page=29
67. STS-89 Space Shuttle Mission Report（JSC、54頁、3,805,476 バイト） （PDF p25） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-89%20Space%20Shuttle%20Mission%20Report.pdf#page=25
68. NSTS-37420 STS-90 Space Shuttle Mission Report（NASA JSC、1998年6月、49頁、3,438,012 バイト。OCR のテキスト層） （PDF p23） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-90%20Space%20Shuttle%20Mission%20Report.pdf#page=23
69. NSTS-37421 STS-91 Space Shuttle Mission Report（JSC、1998年7月、57頁、3,891,467 バイト） （PDF p26） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-91%20Space%20Shuttle%20Mission%20Report.pdf#page=26
70. NSTS-37421 STS-91 Space Shuttle Mission Report（JSC、1998年7月、57頁、3,891,467 バイト） STS-91 PRSD（PDF p25） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-91%20Space%20Shuttle%20Mission%20Report.pdf#page=25
71. NSTS-37430 STS-92 Space Shuttle Mission Report（JSC、2001年1月、61頁、3,812,185 バイト） （PDF p24） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-92%20Space%20Shuttle%20Mission%20Report.pdf#page=24
72. STS-93 Space Shuttle Mission Report（JSC、50頁、3,338,918 バイト） （PDF p24） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-93%20Space%20Shuttle%20Mission%20Report.pdf#page=24
73. STS-94 Space Shuttle Mission Report（JSC、55頁、3,662,414 バイト） （PDF p28） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-94%20Space%20Shuttle%20Mission%20Report.pdf#page=28
74. STS-94 Space Shuttle Mission Report（JSC、55頁、3,662,414 バイト） （PDF p29） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-94%20Space%20Shuttle%20Mission%20Report.pdf#page=29
75. STS-95 Space Shuttle Mission Report（JSC、64頁、4,431,361 バイト） （PDF p31） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-95%20Space%20Shuttle%20Mission%20Report.pdf#page=31
76. STS-96 Space Shuttle Mission Report（JSC、52頁、3,298,194 バイト） （PDF p21） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-96%20Space%20Shuttle%20Mission%20Report.pdf#page=21
77. STS-97 Space Shuttle Mission Report（JSC、64頁、4,181,322 バイト） （PDF p23） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-97%20Space%20Shuttle%20Mission%20Report.pdf#page=23
78. STS-98 Space Shuttle Mission Report（JSC、58頁、3,718,129 バイト） （PDF p26） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-98%20Space%20Shuttle%20Mission%20Report.pdf#page=26
79. STS-99 Space Shuttle Mission Report（JSC、52頁、3,641,750 バイト） （PDF p25） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-99%20Space%20Shuttle%20Mission%20Report.pdf#page=25
80. STS-100 Space Shuttle Mission Report（JSC、63頁、4,665,231 バイト） STS-100 FCP（PDF p26） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-100%20Space%20Shuttle%20Mission%20Report.pdf#page=26
81. STS-101 Space Shuttle Mission Report（JSC、63頁、3,798,184 バイト） （PDF p27） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-101%20Space%20Shuttle%20Mission%20Report.pdf#page=27
82. NSTS-37433 STS-102 Space Shuttle Mission Report（JSC、2001年5月、63頁、4,926,846 バイト） STS-102 Fuel Cell Powerplant（PDF p29） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-102%20Space%20Shuttle%20Mission%20Report.pdf#page=29
83. STS-103 Space Shuttle Mission Report（JSC、52頁、3,200,681 バイト） （PDF p22） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-103%20Space%20Shuttle%20Mission%20Report.pdf#page=22
84. NSTS-37434 STS-104 Space Shuttle Mission Report（JSC、2001年9月、56頁、4,134,423 バイト） （PDF p25） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-104%20Space%20Shuttle%20Mission%20Report.pdf#page=25
85. STS-105 Space Shuttle Mission Report（JSC、52頁、3,819,756 バイト） （PDF p23） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-105%20Space%20Shuttle%20Mission%20Report.pdf#page=23
86. STS-106 Space Shuttle Mission Report（JSC、58頁、3,814,173 バイト） （PDF p24） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-106%20Space%20Shuttle%20Mission%20Report.pdf#page=24
87. STS-107 Space Shuttle Mission Report（JSC、42頁、324,246 バイト） （PDF p21） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-107%20Space%20Shuttle%20Mission%20Report.pdf#page=21
88. STS-107 Space Shuttle Mission Report（JSC、42頁、324,246 バイト） （PDF p22） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-107%20Space%20Shuttle%20Mission%20Report.pdf#page=22
89. STS-108 Mission Report （PDF p27） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=27
90. STS-108 Mission Report （PDF p28） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=28
91. STS-109 Space Shuttle Mission Report（JSC、53頁、3,503,946 バイト） （PDF p22） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-109%20Space%20Shuttle%20Mission%20Report.pdf#page=22
92. STS-109 Space Shuttle Mission Report（JSC、53頁、3,503,946 バイト） （PDF p23） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-109%20Space%20Shuttle%20Mission%20Report.pdf#page=23
93. STS-110 Space Shuttle Mission Report（JSC、57頁、3,837,066 バイト） （PDF p26） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-110%20Space%20Shuttle%20Mission%20Report.pdf#page=26
94. STS-111 Space Shuttle Mission Report（JSC、59頁、4,060,948 バイト） （PDF p26） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-111%20Space%20Shuttle%20Mission%20Report.pdf#page=26
95. STS-111 Space Shuttle Mission Report（JSC、59頁、4,060,948 バイト） （PDF p27） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-111%20Space%20Shuttle%20Mission%20Report.pdf#page=27
96. STS-112 Space Shuttle Mission Report（JSC、57頁、4,251,718 バイト） （PDF p26） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-112%20Space%20Shuttle%20Mission%20Report.pdf#page=26
97. STS-113 Space Shuttle Mission Report（JSC、58頁、4,423,959 バイト） （PDF p28） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-113%20Space%20Shuttle%20Mission%20Report.pdf#page=28
98. STS-114 Mission Report （PDF p43） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=43
99. STS-114 Mission Report （PDF p44） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=44
100. STS-115 Space Shuttle Mission Report（JSC、106頁、770,336 バイト） （PDF p43） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-115%20Space%20Shuttle%20Mission%20Report.pdf#page=43
101. STS-115 Space Shuttle Mission Report（JSC、106頁、770,336 バイト） （PDF p44） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-115%20Space%20Shuttle%20Mission%20Report.pdf#page=44
102. STS-116 Space Shuttle Mission Report（JSC、91頁、687,467 バイト） （PDF p41） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-116%20Space%20Shuttle%20Mission%20Report.pdf#page=41
103. STS-116 Space Shuttle Mission Report（JSC、91頁、687,467 バイト） （PDF p43） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-116%20Space%20Shuttle%20Mission%20Report.pdf#page=43
104. STS-116 Space Shuttle Mission Report（JSC、91頁、687,467 バイト） （PDF p42） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-116%20Space%20Shuttle%20Mission%20Report.pdf#page=42
105. STS-117 Space Shuttle Mission Report（JSC、106頁、501,835 バイト） （PDF p42） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-117%20Space%20Shuttle%20Mission%20Report.pdf#page=42
106. STS-118 Space Shuttle Mission Report（JSC、109頁、685,027 バイト） （PDF p46） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-118%20Space%20Shuttle%20Mission%20Report.pdf#page=46
107. STS-119 Space Shuttle Mission Report（JSC、105頁、811,153 バイト） （PDF p44） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-119%20Space%20Shuttle%20Mission%20Report.pdf#page=44
108. STS-120 Space Shuttle Mission Report（JSC、102頁、486,685 バイト） （PDF p44） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-120%20Space%20Shuttle%20Mission%20Report.pdf#page=44
109. STS-121 Space Shuttle Mission Report（JSC、97頁、679,837 バイト） （PDF p40） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-121%20Space%20Shuttle%20Mission%20Report.pdf#page=40
110. STS-121 Space Shuttle Mission Report（JSC、97頁、679,837 バイト） （PDF p41） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-121%20Space%20Shuttle%20Mission%20Report.pdf#page=41
111. STS-122 Mission Report Power Reactant Storage and Distribution System（PDF p47） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=47
112. STS-122 Mission Report （PDF p49） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=49
113. STS-123 Space Shuttle Mission Report（JSC、107頁、975,665 バイト） （PDF p43） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-123%20Space%20Shuttle%20Mission%20Report.pdf#page=43
114. STS-123 Space Shuttle Mission Report（JSC、107頁、975,665 バイト） （PDF p44） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-123%20Space%20Shuttle%20Mission%20Report.pdf#page=44
115. STS-124 Space Shuttle Mission Report（JSC、107頁、937,347 バイト） （PDF p44） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-124%20Space%20Shuttle%20Mission%20Report.pdf#page=44
116. STS-124 Space Shuttle Mission Report（JSC、107頁、937,347 バイト） （PDF p45） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-124%20Space%20Shuttle%20Mission%20Report.pdf#page=45
117. NSTS-37452 STS-125 Mission Report（2010） （PDF p46） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=46
118. STS-126 Space Shuttle Mission Report（JSC、120頁、976,111 バイト） （PDF p48） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-126%20Space%20Shuttle%20Mission%20Report.pdf#page=48
119. STS-126 Space Shuttle Mission Report（JSC、120頁、976,111 バイト） （PDF p49） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-126%20Space%20Shuttle%20Mission%20Report.pdf#page=49
120. STS-127 Space Shuttle Mission Report（JSC、123頁、1,215,519 バイト） （PDF p58） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-127%20Space%20Shuttle%20Mission%20Report.pdf#page=58
121. STS-128 Space Shuttle Mission Report（JSC、103頁、859,541 バイト） （PDF p48） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-128%20Space%20Shuttle%20Mission%20Report.pdf#page=48
122. STS-128 Space Shuttle Mission Report（JSC、103頁、859,541 バイト） （PDF p50） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-128%20Space%20Shuttle%20Mission%20Report.pdf#page=50
123. STS-129 Space Shuttle Mission Report（JSC、105頁、969,886 バイト） （PDF p47） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-129%20Space%20Shuttle%20Mission%20Report.pdf#page=47
124. STS-129 Space Shuttle Mission Report（JSC、105頁、969,886 バイト） （PDF p48） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-129%20Space%20Shuttle%20Mission%20Report.pdf#page=48
125. NSTS-37456 STS-130 Space Shuttle Mission Report（JSC、2010年、105頁、914,591 バイト） （PDF p49） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-130%20Space%20Shuttle%20Mission%20Report.pdf#page=49
126. STS-131 Space Shuttle Mission Report（JSC、108頁、854,751 バイト） （PDF p48） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-131%20Space%20Shuttle%20Mission%20Report.pdf#page=48
127. STS-131 Space Shuttle Mission Report（JSC、108頁、854,751 バイト） （PDF p49） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-131%20Space%20Shuttle%20Mission%20Report.pdf#page=49
128. STS-132 Space Shuttle Mission Report（JSC、103頁、981,003 バイト） （PDF p44） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-132%20Space%20Shuttle%20Mission%20Report.pdf#page=44
129. STS-132 Space Shuttle Mission Report（JSC、103頁、981,003 バイト） （PDF p45） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-132%20Space%20Shuttle%20Mission%20Report.pdf#page=45
130. STS-133 Space Shuttle Mission Report（JSC、111頁、1,002,085 バイト） （PDF p54） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-133%20Space%20Shuttle%20Mission%20Report.pdf#page=54
131. STS-134 Space Shuttle Mission Report（JSC、109頁、973,287 バイト） （PDF p55） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-134%20Space%20Shuttle%20Mission%20Report.pdf#page=55
132. STS-135 Mission Report Fuel Cell System（PDF p44） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=44
133. OMG Systems Modeling Language (SysML) Version 2.0 仕様 — https://www.omg.org/spec/SysML/2.0
134. SysML v2 Release（OMG SysML v2 Pilot Implementation の公開リリース・標準ライブラリ） — https://github.com/Systems-Modeling/SysML-v2-Release

## 10. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-11-09 | 初版作成（燃料電池の反応剤の消費 108飛行〔数える 91・境界 17〕、制約への束ね、図309〜311、SysML v2 テキスト） |
