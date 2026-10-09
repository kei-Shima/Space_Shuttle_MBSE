# 消耗品・電力プロファイル定義書（時間軸の残量・設計と実績）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-PRF-ORB-001 |
| 表題 | 消耗品・電力プロファイル定義書（時間軸の残量・設計と実績） |
| 版・日付 | Rev. B／2026-10-07 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-PAR-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図134 標準ミッションの消耗品の残量（設計）・図135 反応剤の残量の設計と実績（STS-1・114・125） |

## 1. 目的

消耗品（LiOH・酸素・水素・窒素・水）と燃料電池の電力を、ミッションの経過時間に対する残量・使用量として示す。標準ミッション（7人・10日、SSD-PAR-ORB-001）の設計の日ごとの残量と枯渇の日、飛行の実績（STS-1・STS-114・STS-125 の離昇・着陸などの点）、設計の率で計算した着陸時の残量と実績の比較を示す。全体は図134・135 に示す。

## 2. 書き方

設計のプロファイルは、日 d の残量＝容量 − 1日の使用量 × d（0 で止める）とし、容量と1日の使用量は SSD-PAR-ORB-001 のパラメータから本書が計算した。実績は Mission Report などに文字で書かれた点（離昇・着陸、タンクの残留量への到達、LiOH の交換など）だけで、点の間は直線で補った（本書の補間。公開の Mission Report には消耗品の日ごとの値が無い）。設計と実績の比較は、実績の平均電力・乗員数・飛行時間で設計の率を当てて着陸時の残量を計算し、資料の着陸時の残量と比べた（本書の計算）。図は読み取らず、文字の値だけを使った。

## 3. 設計の消費率と容量

資料の消費率・容量 26件を示す（SSD-PAR-ORB-001 と同じ値のものは補足に PAR の ID）。

| ID | 消耗品 | 内容 | 値 | 単位 | 根拠・補足 |
|---|---|---|---|---|---|
| PFR-01 | 酸素（PRSD 反応剤） | 乗員1人の酸素の平均使用量 | 1.76 | lb/人・日 | 乗員1人は平均で1日 1.76 ポンドの酸素を使い、通常の損失（7人）で1日約6ポンドの窒素と14ポンドの酸素を使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/360） 補足：SCOM の値。訓練マニュアルの ECLSS O2 予算は 2.08 lb/人・日（PRF-010）で食い違う（予算は余裕込みと考えられる、推定）。 |
| PFR-02 | 酸素（PRSD 反応剤） | 7人の酸素の使用量（代謝と通常の損失） | 14 | lb/日 | 乗員1人は平均で1日 1.76 ポンドの酸素を使い、通常の損失（7人）で1日約6ポンドの窒素と14ポンドの酸素を使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/360） 補足：SSD-PAR-ORB-001 の PAR-23 と同じ。 |
| PFR-03 | 酸素（PRSD 反応剤） | ECLSS の O2 予算 | 2.08 | lb/man-day | ECLSS の O2 の予算は 2.08 lb/人・日である。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=55） |
| PFR-04 | 酸素（PRSD 反応剤） | 客室の漏洩（酸素） | 0.07 | lbm/hr | 性能の経験則：1 kWh あたり水素 0.09 lbm・酸素 0.7 lbm を使い、客室の漏洩は酸素 0.07 lbm/時である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1022） 補足：本書の換算：1.68 lbm/日。 |
| PFR-05 | 酸素（PRSD 反応剤） | 発電 1 kWh あたりの酸素 | 0.7 | lbm/kWh | 性能の経験則：1 kWh あたり水素 0.09 lbm・酸素 0.7 lbm を使い、客室の漏洩は酸素 0.07 lbm/時である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1022） 補足：PAR-18 と同じ。 |
| PFR-06 | 水素（PRSD 反応剤） | 発電 1 kWh あたりの水素 | 0.09 | lbm/kWh | 性能の経験則：1 kWh あたり水素 0.09 lbm・酸素 0.7 lbm を使い、客室の漏洩は酸素 0.07 lbm/時である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1022） 補足：PAR-19 と同じ。 |
| PFR-07 | 酸素（PRSD 反応剤） | 酸素タンク1基の貯蔵量 | 781 | lb | 酸素タンク1基は最大 781 ポンド、水素タンク1基は最大 92 ポンドを貯蔵する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/313） 補足：PAR-20。 |
| PFR-08 | 水素（PRSD 反応剤） | 水素タンク1基の貯蔵量 | 92 | lb | 酸素タンク1基は最大 781 ポンド、水素タンク1基は最大 92 ポンドを貯蔵する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/313） 補足：PAR-21。 |
| PFR-09 | 酸素（PRSD 反応剤） | 反応剤タンク5組で足りる軌道上の日数 | 12 | 日 | 酸素・水素タンク3基で最大8日、5基で最大12日、8基で最大18日の軌道上運用に足り、正確な期間は乗員数と電力負荷で変わる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/356） 補足：3組で8日、8組で18日。乗員数と電力負荷で変わる。 |
| PFR-10 | 燃料電池の電力 | 軌道上の平均消費電力 | 14 | kW | オービタの軌道上の平均消費電力は約 14 kW である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/320） 補足：PAR-15。 |
| PFR-11 | 窒素 | 窒素の使用量（7人、14.7 psia） | 6 | lbm/日 | 経験則：給水タンクは燃料電池の負荷（軌道の典型 14 kW × 0.77 lbm/hr/kW ÷ 1.65 lbm/%）で約 6.5 %/時で満ち、廃水タンクは乗員1人あたり約 4.4 %/日で満ち、窒素の典型的な使用率は約 6 lbm/日（7人・14.7 psia）である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/419） 補足：PRF-001 でも 6 ポンド/日。PAR-12。 |
| PFR-12 | LiOH キャニスタ | LiOH キャニスタ1個の定格 | 48 | 人・時 | LiOH キャニスタは所定の計画で通常1日1〜2回交換し、各キャニスタの定格は48人・時で、予備は最大30個を床下に収納する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） 補足：交換は通常1日1〜2回、大人数ではより頻繁。予備は最大30個。 |
| PFR-13 | LiOH キャニスタ | LiOH が除去する CO2 | 2.11 | lb/man/day | LiOH が除去する CO2 は 2.11 lb/人・日である。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=94） |
| PFR-14 | LiOH キャニスタ | PLS を見送るための未使用 LiOH の予備 | 2 | 日 | LiOH キャニスタの数と乗員数が EOM を決め、PLS を見送るには未使用の LiOH を最低2日分予備に持つ。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=804） 補足：PAR-03。全飛行に延長日2日の要求（PRF-014）。 |
| PFR-15 | LiOH キャニスタ | STS-65 の LiOH の交換間隔（実績の運用、RCRS 併用） | 15 | h | STS-65 は RCRS を LiOH キャニスタで補い、LiOH を15時間間隔で交換して CO2 分圧を平均 2.3 mmHg に保った。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=12） 補足：設計の率ではなく、RCRS を補う運用の実績。 |
| PFR-16 | 給水・飲料水 | 燃料電池の給水の生成（発電 1 kW あたり） | 0.77 | lb/h/kW | 給水タンク4基は各 165 ポンド使用可能で、3基の燃料電池は最大 25 ポンド/時（発電 1 kW あたり約 0.77 ポンド/時）の給水を生成する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/394） 補足：3基の最大 25 lb/h。 |
| PFR-17 | 給水・飲料水 | 給水タンクの満ちる速さ（14 kW） | 6.5 | %/h | 経験則：給水タンクは燃料電池の負荷（軌道の典型 14 kW × 0.77 lbm/hr/kW ÷ 1.65 lbm/%）で約 6.5 %/時で満ち、廃水タンクは乗員1人あたり約 4.4 %/日で満ち、窒素の典型的な使用率は約 6 lbm/日（7人・14.7 psia）である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/419） 補足：1.65 lbm/% で換算。 |
| PFR-18 | 給水・飲料水 | 1人1日の水の代謝必要量 | 6 | lb/人・日 | タンク A の 128 lb は5人が96時間の最小飛行期間を過ごす量で、代謝の必要量を1人1日 6 lb とする。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=146） 補足：PAR-08。 |
| PFR-19 | 給水・飲料水 | 給水タンク1基の使用可能容量 | 165 | lb | 給水タンク4基は各 165 ポンド使用可能で、3基の燃料電池は最大 25 ポンド/時（発電 1 kW あたり約 0.77 ポンド/時）の給水を生成する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/394） 補足：PAR-07。4基。 |
| PFR-20 | 廃水 | 廃水タンクの満ちる速さ（乗員1人あたり） | 4.4 | %/日 | 経験則：給水タンクは燃料電池の負荷（軌道の典型 14 kW × 0.77 lbm/hr/kW ÷ 1.65 lbm/%）で約 6.5 %/時で満ち、廃水タンクは乗員1人あたり約 4.4 %/日で満ち、窒素の典型的な使用率は約 6 lbm/日（7人・14.7 psia）である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/419） 補足：尿と凝縮水がほぼ半々。 |
| PFR-21 | 廃水 | 廃水の生成（過去の最大） | 6.2 | lb/人・日 | 廃水の生成は過去の飛行で1人1日 6.2 lb にも達した。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=148） |
| PFR-22 | 酸素（PRSD 反応剤） | STS-1 解析の代謝の O2 必要量（450 Btu/hr） | 0.0739 | lb/man-hour | 代謝の O2 必要量は 0.0739 lb/人・時、CO2 生成は 0.0882 lb/人・時、尿は 0.138 lb/人・時、乗員の飲水は 0.344 lb/時とした。LiOH は 5.5 時間 MET まで装着せず、1個を 12.25 時間、もう1個を 36.42 時間に交換し、両方を 49.28 時間 MET の軌道離脱前に外す。廃水タンクは 4.5 時間と 33.65 時間 MET に 80 %（132 ポンド）までダンプする。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=11） 補足：STS-1 の飛行前解析の前提。本書の換算：1.77 lb/人・日で PRF-001 の 1.76 とほぼ一致。 |
| PFR-23 | LiOH キャニスタ | STS-1 解析の CO2 生成 | 0.0882 | lb/man-hour | 代謝の O2 必要量は 0.0739 lb/人・時、CO2 生成は 0.0882 lb/人・時、尿は 0.138 lb/人・時、乗員の飲水は 0.344 lb/時とした。LiOH は 5.5 時間 MET まで装着せず、1個を 12.25 時間、もう1個を 36.42 時間に交換し、両方を 49.28 時間 MET の軌道離脱前に外す。廃水タンクは 4.5 時間と 33.65 時間 MET に 80 %（132 ポンド）までダンプする。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=11） 補足：本書の換算：2.12 lb/人・日で PRF-011 の 2.11 とほぼ一致。 |
| PFR-24 | 窒素 | STS-1 解析の客室大気の漏洩 | 8.2 | lb/day | 給水は使用可能 165 ポンドのタンク6基で、離昇時は5基満タンと1基65 %、軌道上は 975〜675 ポンドに保ち、余分は船外にダンプする。客室からの大気の漏洩は 8.2 lb/日とする。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=10） 補足：O2 と N2 を合わせた大気の漏洩。 |
| PFR-25 | 給水・飲料水 | STS-1 解析の乗員の飲水 | 0.344 | lb/hr | 代謝の O2 必要量は 0.0739 lb/人・時、CO2 生成は 0.0882 lb/人・時、尿は 0.138 lb/人・時、乗員の飲水は 0.344 lb/時とした。LiOH は 5.5 時間 MET まで装着せず、1個を 12.25 時間、もう1個を 36.42 時間に交換し、両方を 49.28 時間 MET の軌道離脱前に外す。廃水タンクは 4.5 時間と 33.65 時間 MET に 80 %（132 ポンド）までダンプする。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=11） 補足：2人の合計か1人あたりかは資料に明記なし。 |
| PFR-26 | 廃水 | STS-1 解析の尿の生成 | 0.138 | lb/man-hr | 代謝の O2 必要量は 0.0739 lb/人・時、CO2 生成は 0.0882 lb/人・時、尿は 0.138 lb/人・時、乗員の飲水は 0.344 lb/時とした。LiOH は 5.5 時間 MET まで装着せず、1個を 12.25 時間、もう1個を 36.42 時間に交換し、両方を 49.28 時間 MET の軌道離脱前に外す。廃水タンクは 4.5 時間と 33.65 時間 MET に 80 %（132 ポンド）までダンプする。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=11） |

## 4. 標準ミッションの枯渇の日

標準ミッションの消耗品ごとの容量・1日の使用量・枯渇の日と、必要日数 12 日（軌道滞在 10 日＋予備 2 日、PAR-02・PAR-03）との差を示す（本書の計算）。

| ID | 消耗品 | 容量 | 1日の使用量 | 使用量の式 | 枯渇の日 | 必要日数との差（日） | 判定 |
|---|---|---|---|---|---|---|---|
| PFD-01 | LiOH キャニスタ | 42 個 | 3.5 個/日 | 乗員数 × 24 時間 ÷ キャニスタ1個の定格（PAR-01・PAR-05） | 12.00 | 0.00 | 足りる（マージン 0） |
| PFD-02 | 酸素（PRSD 反応剤） | 3,905 lb | 249.2 lb/日 | 平均電力 × 24 時間 × 1 kWh あたりの酸素 ＋ 乗員の酸素（PAR-15・PAR-18・PAR-23） | 15.67 | +3.67 | 足りる |
| PFD-03 | 水素（PRSD 反応剤） | 460 lb | 30.24 lb/日 | 平均電力 × 24 時間 × 1 kWh あたりの水素（PAR-15・PAR-19） | 15.21 | +3.21 | 足りる |
| PFD-04 | 窒素 | 360 lb | 6 lb/日 | 窒素の使用量（PAR-12） | 60.00 | +48.00 | 足りる |

## 5. 日ごとの残量（設計）

標準ミッションの日ごとの残量（量と容量に対する %）を示す（本書の計算、0 で止める）。図134 と同じ値。

| 日 | LiOH キャニスタ（個） | 酸素（PRSD 反応剤）（lb） | 水素（PRSD 反応剤）（lb） | 窒素（lb） | LiOH（%） | O2（%） | H2（%） | N2（%） |
|---|---|---|---|---|---|---|---|---|
| 0 | 32 | 3,905 | 460 | 360 | 100 | 100 | 100 | 100 |
| 1 | 28.5 | 3,655.8 | 429.8 | 354 | 89.1 | 93.6 | 93.4 | 98.3 |
| 2 | 25 | 3,406.6 | 399.5 | 348 | 78.1 | 87.2 | 86.9 | 96.7 |
| 3 | 21.5 | 3,157.4 | 369.3 | 342 | 67.2 | 80.9 | 80.3 | 95 |
| 4 | 18 | 2,908.2 | 339 | 336 | 56.2 | 74.5 | 73.7 | 93.3 |
| 5 | 14.5 | 2,659 | 308.8 | 330 | 45.3 | 68.1 | 67.1 | 91.7 |
| 6 | 11 | 2,409.8 | 278.6 | 324 | 34.4 | 61.7 | 60.6 | 90 |
| 7 | 7.5 | 2,160.6 | 248.3 | 318 | 23.4 | 55.3 | 54 | 88.3 |
| 8 | 4 | 1,911.4 | 218.1 | 312 | 12.5 | 48.9 | 47.4 | 86.7 |
| 9 | 0.5 | 1,662.2 | 187.8 | 306 | 1.6 | 42.6 | 40.8 | 85 |
| 10 | 0 | 1,413 | 157.6 | 300 | 0 | 36.2 | 34.3 | 83.3 |
| 11 | 0 | 1,163.8 | 127.4 | 294 | 0 | 29.8 | 27.7 | 81.7 |
| 12 | 0 | 914.6 | 97.1 | 288 | 0 | 23.4 | 21.1 | 80 |
| 13 | 0 | 665.4 | 66.9 | 282 | 0 | 17 | 14.5 | 78.3 |
| 14 | 0 | 416.2 | 36.6 | 276 | 0 | 10.7 | 8 | 76.7 |
| 15 | 0 | 167 | 6.4 | 270 | 0 | 4.3 | 1.4 | 75 |
| 16 | 0 | 0 | 0 | 264 | 0 | 0 | 0 | 73.3 |

## 6. 水

給水は燃料電池が作る（発電 1 kW あたり 0.77 lb/h、PFR の PFR-16）。標準ミッションの平均電力 14 kW で1日 258.7 lb を作り、乗員の代謝の必要量は1日 42 lb（PAR-01 × PAR-08）なので、給水タンク（660 lb、PAR-06 × PAR-07）は満ちたまま余りを FES・船外へ出す。水は枯渇の日を持たないので、図134 の残量の線には入れていない。

## 7. 飛行の実績の点

飛行の実績の値 66件（経過時間 MET、資料の単位のまま）を示す。MET の — は区間の平均か、時刻が資料に無いもの。

| ID | 飛行 | 消耗品 | MET（時） | 値 | 単位 | 種類 | 根拠・補足 |
|---|---|---|---|---|---|---|---|
| PFP-01 | STS-1 | 酸素（PRSD 反応剤） | 0 | 97.9 | % | 残量 | STS-1 の打上げ時の量は酸素タンク1・2が 97.9・97.0 %、水素タンク1・2が 92.6・91.7 % で、電力は飛行前の評価より約 2.0 kW 低く、着陸時は酸素 61.5・56.7 %、水素 51.5・49.3 % であった。水素・酸素の使用は図 2-8・2-9（レッドラインと計画の消費の曲線）に示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=28） 補足：タンク1。2日の待機で O2 60.9 lb を失った後（SSD-IND-ORB-001 SN-01）。 |
| PFP-02 | STS-1 | 酸素（PRSD 反応剤） | 0 | 97 | % | 残量 | STS-1 の打上げ時の量は酸素タンク1・2が 97.9・97.0 %、水素タンク1・2が 92.6・91.7 % で、電力は飛行前の評価より約 2.0 kW 低く、着陸時は酸素 61.5・56.7 %、水素 51.5・49.3 % であった。水素・酸素の使用は図 2-8・2-9（レッドラインと計画の消費の曲線）に示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=28） 補足：タンク2。 |
| PFP-03 | STS-1 | 水素（PRSD 反応剤） | 0 | 92.6 | % | 残量 | STS-1 の打上げ時の量は酸素タンク1・2が 97.9・97.0 %、水素タンク1・2が 92.6・91.7 % で、電力は飛行前の評価より約 2.0 kW 低く、着陸時は酸素 61.5・56.7 %、水素 51.5・49.3 % であった。水素・酸素の使用は図 2-8・2-9（レッドラインと計画の消費の曲線）に示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=28） 補足：タンク1。 |
| PFP-04 | STS-1 | 水素（PRSD 反応剤） | 0 | 91.7 | % | 残量 | STS-1 の打上げ時の量は酸素タンク1・2が 97.9・97.0 %、水素タンク1・2が 92.6・91.7 % で、電力は飛行前の評価より約 2.0 kW 低く、着陸時は酸素 61.5・56.7 %、水素 51.5・49.3 % であった。水素・酸素の使用は図 2-8・2-9（レッドラインと計画の消費の曲線）に示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=28） 補足：タンク2。 |
| PFP-05 | STS-1 | 酸素（PRSD 反応剤） | 54.37 | 61.5 | % | 残量 | STS-1 の打上げ時の量は酸素タンク1・2が 97.9・97.0 %、水素タンク1・2が 92.6・91.7 % で、電力は飛行前の評価より約 2.0 kW 低く、着陸時は酸素 61.5・56.7 %、水素 51.5・49.3 % であった。水素・酸素の使用は図 2-8・2-9（レッドラインと計画の消費の曲線）に示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=28） 補足：タンク1、着陸時。met_h は飛行時間 54 h 22 min（PRF-025）＝54.37 h。 |
| PFP-06 | STS-1 | 酸素（PRSD 反応剤） | 54.37 | 56.7 | % | 残量 | STS-1 の打上げ時の量は酸素タンク1・2が 97.9・97.0 %、水素タンク1・2が 92.6・91.7 % で、電力は飛行前の評価より約 2.0 kW 低く、着陸時は酸素 61.5・56.7 %、水素 51.5・49.3 % であった。水素・酸素の使用は図 2-8・2-9（レッドラインと計画の消費の曲線）に示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=28） 補足：タンク2、着陸時。 |
| PFP-07 | STS-1 | 水素（PRSD 反応剤） | 54.37 | 51.5 | % | 残量 | STS-1 の打上げ時の量は酸素タンク1・2が 97.9・97.0 %、水素タンク1・2が 92.6・91.7 % で、電力は飛行前の評価より約 2.0 kW 低く、着陸時は酸素 61.5・56.7 %、水素 51.5・49.3 % であった。水素・酸素の使用は図 2-8・2-9（レッドラインと計画の消費の曲線）に示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=28） 補足：タンク1、着陸時。 |
| PFP-08 | STS-1 | 水素（PRSD 反応剤） | 54.37 | 49.3 | % | 残量 | STS-1 の打上げ時の量は酸素タンク1・2が 97.9・97.0 %、水素タンク1・2が 92.6・91.7 % で、電力は飛行前の評価より約 2.0 kW 低く、着陸時は酸素 61.5・56.7 %、水素 51.5・49.3 % であった。水素・酸素の使用は図 2-8・2-9（レッドラインと計画の消費の曲線）に示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=28） 補足：タンク2、着陸時。 |
| PFP-09 | STS-1 | 給水・飲料水 | 0 | 864.4 | lb | 残量 | STS-1 の給水・飲料水の収支は離昇時 864.4 lb、燃料電池の生成 613.7 lb、FES 554.7 lb（上昇 143.7・リハーサル 131.8・再突入 279.2）、船外ダンプ 237.8 lb、乗員 22.8 lb、着陸時 662.8 lb であった。廃水タンクは 25.4 lb を集め、2回のダンプで 24.6 lb を捨てた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=59） 補足：給水・飲料水、離昇時。 |
| PFP-10 | STS-1 | 給水・飲料水 | 54.37 | 662.8 | lb | 残量 | STS-1 の給水・飲料水の収支は離昇時 864.4 lb、燃料電池の生成 613.7 lb、FES 554.7 lb（上昇 143.7・リハーサル 131.8・再突入 279.2）、船外ダンプ 237.8 lb、乗員 22.8 lb、着陸時 662.8 lb であった。廃水タンクは 25.4 lb を集め、2回のダンプで 24.6 lb を捨てた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=59） 補足：給水・飲料水、着陸時。 |
| PFP-11 | STS-1 | 給水・飲料水 | 54.37 | 613.7 | lb | 生成量の累計 | STS-1 の給水・飲料水の収支は離昇時 864.4 lb、燃料電池の生成 613.7 lb、FES 554.7 lb（上昇 143.7・リハーサル 131.8・再突入 279.2）、船外ダンプ 237.8 lb、乗員 22.8 lb、着陸時 662.8 lb であった。廃水タンクは 25.4 lb を集め、2回のダンプで 24.6 lb を捨てた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=59） 補足：燃料電池の生成。使用は FES 554.7・船外ダンプ 237.8・乗員 22.8 lb。 |
| PFP-12 | STS-1 | 廃水 | 54.37 | 24.6 | lb | 使用量の累計 | STS-1 の給水・飲料水の収支は離昇時 864.4 lb、燃料電池の生成 613.7 lb、FES 554.7 lb（上昇 143.7・リハーサル 131.8・再突入 279.2）、船外ダンプ 237.8 lb、乗員 22.8 lb、着陸時 662.8 lb であった。廃水タンクは 25.4 lb を集め、2回のダンプで 24.6 lb を捨てた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=59） 補足：2回のダンプの合計（集めた量は 25.4 lb）。 |
| PFP-13 | STS-1 | 燃料電池の発電量 | 54.37 | 857 | kWh | 生成量の累計 | STS-1 の燃料電池は飛行中に 857 kWh を平均 15.75 kW で供給し、飛行時間は54時間22分であった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=34） 補足：飛行中の発電量。 |
| PFP-14 | STS-1 | 燃料電池の電力 | 54.37 | 15.75 | kW | 平均 | STS-1 の燃料電池は飛行中に 857 kWh を平均 15.75 kW で供給し、飛行時間は54時間22分であった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=34） 補足：飛行全体の平均。 |
| PFP-15 | STS-1 | 燃料電池の電力 | — | 25 | kW | 平均 | STS-1 の平均負荷は実績／予測で上昇 25／24 kW、軌道 14〜17／15〜20 kW、降下 20／22 kW である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=35） 補足：上昇の平均。met_h は区間（上昇）のため None。 |
| PFP-16 | STS-1 | 燃料電池の電力 | — | 14〜17 | kW | 平均 | STS-1 の平均負荷は実績／予測で上昇 25／24 kW、軌道 14〜17／15〜20 kW、降下 20／22 kW である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=35） 補足：軌道の平均（範囲）。区間のため met_h は None。 |
| PFP-17 | STS-1 | 燃料電池の電力 | — | 20 | kW | 平均 | STS-1 の平均負荷は実績／予測で上昇 25／24 kW、軌道 14〜17／15〜20 kW、降下 20／22 kW である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=35） 補足：降下の平均。区間のため met_h は None。 |
| PFP-18 | STS-1 | LiOH キャニスタ | 17 | 3 | 個 | 使用量の累計 | STS-1 の LiOH はカートリッジ A を 103:05:00、B を 103:22:50 G.m.t. に交換し、両方を 104:13:15 G.m.t. に軌道離脱・再突入の準備で外した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=56） 補足：カートリッジ A の交換 103:05:00 GMT。met_h＝103:05:00−102:12:00:04＝17.0 h。個数は本書の数え方（装着2個＋交換1）。 |
| PFP-19 | STS-1 | LiOH キャニスタ | 34.83 | 4 | 個 | 使用量の累計 | STS-1 の LiOH はカートリッジ A を 103:05:00、B を 103:22:50 G.m.t. に交換し、両方を 104:13:15 G.m.t. に軌道離脱・再突入の準備で外した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=56） 補足：カートリッジ B の交換 103:22:50 GMT。met_h＝34:50−0:00:04≒34.83 h。個数は本書の数え方。 |
| PFP-20 | STS-1 | LiOH キャニスタ | 49.25 | 4 | 個 | 使用量の累計 | STS-1 の LiOH はカートリッジ A を 103:05:00、B を 103:22:50 G.m.t. に交換し、両方を 104:13:15 G.m.t. に軌道離脱・再突入の準備で外した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=56） 補足：両方を外した 104:13:15 GMT。met_h＝49:15−0:00:04≒49.25 h。 |
| PFP-21 | STS-1 | 窒素 | 54.37 | 2 | lb | 使用量の累計 | STS-1 で使った窒素は約2ポンドで、水のダンプ時の水タンクのベローズの加圧による。余分な水の処分に船外ダンプを2回行った。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=58） 補足：約2ポンド。水タンクのベローズの加圧分で、のちに客室へ出た。 |
| PFP-22 | STS-114 | 酸素（PRSD 反応剤） | 0 | 3,931 | lbm | 残量 | STS-114 の PRSD 5組の総量は O2 が搭載 3958・打上げ 3931・着陸 604 lbm、H2 が 472・462・75 lbm で、燃料電池に O2 3076・H2 387 lbm を供給し 4526 kWh を発電、333.55 時間の平均電力は 13.6 kW、着陸時の残量で36時間延長でき、タンク組4・5は残留量まで使った。ECLSS へは O2 250 lbm を供給した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=43） 補足：PRSD 5組の総量。搭載直後は 3958。 |
| PFP-23 | STS-114 | 水素（PRSD 反応剤） | 0 | 462 | lbm | 残量 | STS-114 の PRSD 5組の総量は O2 が搭載 3958・打上げ 3931・着陸 604 lbm、H2 が 472・462・75 lbm で、燃料電池に O2 3076・H2 387 lbm を供給し 4526 kWh を発電、333.55 時間の平均電力は 13.6 kW、着陸時の残量で36時間延長でき、タンク組4・5は残留量まで使った。ECLSS へは O2 250 lbm を供給した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=43） 補足：総量。搭載直後は 472。 |
| PFP-24 | STS-114 | 酸素（PRSD 反応剤） | 17.52 | 93 | % | 瞬時 | STS-114 の客室の再与圧（00/17:31 MET）では、量 93 % の O2 タンク4がマニホールド圧を制御していた。燃料電池は飲料水 3463 lbm を生成した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=44） 補足：O2 タンク4の量（マニホールド圧を制御中）。met_h＝00/17:31 MET。 |
| PFP-25 | STS-114 | 酸素（PRSD 反応剤） | 333.55 | 604 | lbm | 残量 | STS-114 の PRSD 5組の総量は O2 が搭載 3958・打上げ 3931・着陸 604 lbm、H2 が 472・462・75 lbm で、燃料電池に O2 3076・H2 387 lbm を供給し 4526 kWh を発電、333.55 時間の平均電力は 13.6 kW、着陸時の残量で36時間延長でき、タンク組4・5は残留量まで使った。ECLSS へは O2 250 lbm を供給した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=43） 補足：着陸時の総量（タンク組4・5は残留量）。 |
| PFP-26 | STS-114 | 水素（PRSD 反応剤） | 333.55 | 75 | lbm | 残量 | STS-114 の PRSD 5組の総量は O2 が搭載 3958・打上げ 3931・着陸 604 lbm、H2 が 472・462・75 lbm で、燃料電池に O2 3076・H2 387 lbm を供給し 4526 kWh を発電、333.55 時間の平均電力は 13.6 kW、着陸時の残量で36時間延長でき、タンク組4・5は残留量まで使った。ECLSS へは O2 250 lbm を供給した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=43） 補足：着陸時の総量。 |
| PFP-27 | STS-114 | 酸素（PRSD 反応剤） | 333.55 | 3,076 | lbm | 使用量の累計 | STS-114 の PRSD 5組の総量は O2 が搭載 3958・打上げ 3931・着陸 604 lbm、H2 が 472・462・75 lbm で、燃料電池に O2 3076・H2 387 lbm を供給し 4526 kWh を発電、333.55 時間の平均電力は 13.6 kW、着陸時の残量で36時間延長でき、タンク組4・5は残留量まで使った。ECLSS へは O2 250 lbm を供給した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=43） 補足：燃料電池へ供給。 |
| PFP-28 | STS-114 | 酸素（PRSD 反応剤） | 333.55 | 250 | lbm | 使用量の累計 | STS-114 の PRSD 5組の総量は O2 が搭載 3958・打上げ 3931・着陸 604 lbm、H2 が 472・462・75 lbm で、燃料電池に O2 3076・H2 387 lbm を供給し 4526 kWh を発電、333.55 時間の平均電力は 13.6 kW、着陸時の残量で36時間延長でき、タンク組4・5は残留量まで使った。ECLSS へは O2 250 lbm を供給した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=43） 補足：ECLSS へ供給（ISS への O2 移送・EVA・再与圧を含むと考えられる、推定）。 |
| PFP-29 | STS-114 | 水素（PRSD 反応剤） | 333.55 | 387 | lbm | 使用量の累計 | STS-114 の PRSD 5組の総量は O2 が搭載 3958・打上げ 3931・着陸 604 lbm、H2 が 472・462・75 lbm で、燃料電池に O2 3076・H2 387 lbm を供給し 4526 kWh を発電、333.55 時間の平均電力は 13.6 kW、着陸時の残量で36時間延長でき、タンク組4・5は残留量まで使った。ECLSS へは O2 250 lbm を供給した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=43） 補足：燃料電池へ供給。 |
| PFP-30 | STS-114 | 燃料電池の発電量 | 333.55 | 4,526 | kWh | 生成量の累計 | STS-114 の PRSD 5組の総量は O2 が搭載 3958・打上げ 3931・着陸 604 lbm、H2 が 472・462・75 lbm で、燃料電池に O2 3076・H2 387 lbm を供給し 4526 kWh を発電、333.55 時間の平均電力は 13.6 kW、着陸時の残量で36時間延長でき、タンク組4・5は残留量まで使った。ECLSS へは O2 250 lbm を供給した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=43） |
| PFP-31 | STS-114 | 燃料電池の電力 | 333.55 | 13.6 | kW | 平均 | STS-114 の PRSD 5組の総量は O2 が搭載 3958・打上げ 3931・着陸 604 lbm、H2 が 472・462・75 lbm で、燃料電池に O2 3076・H2 387 lbm を供給し 4526 kWh を発電、333.55 時間の平均電力は 13.6 kW、着陸時の残量で36時間延長でき、タンク組4・5は残留量まで使った。ECLSS へは O2 250 lbm を供給した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=43） 補足：333.55 時間の平均。 |
| PFP-32 | STS-114 | 酸素（PRSD 反応剤） | 333.55 | 36 | h | 残量 | STS-114 の PRSD 5組の総量は O2 が搭載 3958・打上げ 3931・着陸 604 lbm、H2 が 472・462・75 lbm で、燃料電池に O2 3076・H2 387 lbm を供給し 4526 kWh を発電、333.55 時間の平均電力は 13.6 kW、着陸時の残量で36時間延長でき、タンク組4・5は残留量まで使った。ECLSS へは O2 250 lbm を供給した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=43） 補足：着陸時の反応剤で可能な延長時間（平均電力で）。 |
| PFP-33 | STS-114 | 給水・飲料水 | 333.55 | 3,463 | lbm | 生成量の累計 | STS-114 の客室の再与圧（00/17:31 MET）では、量 93 % の O2 タンク4がマニホールド圧を制御していた。燃料電池は飲料水 3463 lbm を生成した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=44） 補足：燃料電池の飲料水の生成。 |
| PFP-34 | STS-114 | 給水・飲料水 | — | 1,739.7 | lbm | 使用量の累計 | STS-114 で ISS に移した消耗品は水が CWC 18個 1739.7 lbm と PWR 5個 115.5 lbm、窒素が 29.0 lbm、LiOH はシャトルから ISS へ31個・ISS からシャトルへ32個である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=24） 補足：ISS へ移した給水（CWC 18個）。ほかに PWR 5個 115.5 lbm。移送の時刻は資料に無い。 |
| PFP-35 | STS-114 | 窒素 | — | 29 | lbm | 使用量の累計 | STS-114 で ISS に移した消耗品は水が CWC 18個 1739.7 lbm と PWR 5個 115.5 lbm、窒素が 29.0 lbm、LiOH はシャトルから ISS へ31個・ISS からシャトルへ32個である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=24） 補足：ISS（Joint Airlock の高圧タンク）へ移した窒素。システムの節（PRF-036）は約 22 lb で食い違う。 |
| PFP-36 | STS-114 | LiOH キャニスタ | — | 31 | 個 | 使用量の累計 | STS-114 で ISS に移した消耗品は水が CWC 18個 1739.7 lbm と PWR 5個 115.5 lbm、窒素が 29.0 lbm、LiOH はシャトルから ISS へ31個・ISS からシャトルへ32個である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=24） 補足：シャトルから ISS へ移した数（ISS からは32個を回収）。オービタでの使用数は資料に無い。 |
| PFP-37 | STS-125 | 酸素（PRSD 反応剤） | 0 | 3,914 | lbm | 残量 | STS-125 の PRSD 総量は O2 が搭載 3965・打上げ 3914・着陸 542 lbm、H2 が 472.1・456.7・53.9 lbm で、ECLSS への O2 は 174 lbm、着陸時の O2（制約の反応剤）で平均 15.0 kW なら28時間、延長日の 12.88 kW なら32時間延長できた。309.65 時間で 4630 kWh を発電し飲料水 3601 lbm を生成、O2 3198・H2 403 lbm を使った。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=46） 補足：総量。搭載直後は 3965。 |
| PFP-38 | STS-125 | 水素（PRSD 反応剤） | 0 | 456.7 | lbm | 残量 | STS-125 の PRSD 総量は O2 が搭載 3965・打上げ 3914・着陸 542 lbm、H2 が 472.1・456.7・53.9 lbm で、ECLSS への O2 は 174 lbm、着陸時の O2（制約の反応剤）で平均 15.0 kW なら28時間、延長日の 12.88 kW なら32時間延長できた。309.65 時間で 4630 kWh を発電し飲料水 3601 lbm を生成、O2 3198・H2 403 lbm を使った。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=46） 補足：総量。搭載直後は 472.1。 |
| PFP-39 | STS-125 | LiOH キャニスタ | 0 | 78 | 個 | 残量 | STS-125 は救難機の待機に備え、ミッドデッキに追加の LiOH キャニスタを収納し計78個を搭載した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=33） 補足：搭載数（救難機待機のための追加を含む）。 |
| PFP-40 | STS-125 | LiOH キャニスタ | — | 2 | 個 | 瞬時 | STS-125 の飛行日10に O2 タンク4は 08/18:34:02 MET、O2 タンク5は 08/22:03:26 MET に残留量まで使った。同じ日に廃水のダンプと LiOH キャニスタ2個の交換を行った。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=23） 補足：飛行日10にキャニスタ2個を交換（時刻は資料に無い。同じ段落の RMS 停止は 08/17:02 MET）。val は交換した個数。 |
| PFP-41 | STS-125 | 酸素（PRSD 反応剤） | 210.57 | — | % | 残量 | STS-125 の飛行日10に O2 タンク4は 08/18:34:02 MET、O2 タンク5は 08/22:03:26 MET に残留量まで使った。同じ日に廃水のダンプと LiOH キャニスタ2個の交換を行った。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=23） 補足：O2 タンク4が残留量に達した時刻（08/18:34:02 MET＝8×24+18.567）。量の値は無い（着陸時 5.5 %、PRF-042）。 |
| PFP-42 | STS-125 | 酸素（PRSD 反応剤） | 214.06 | — | % | 残量 | STS-125 の飛行日10に O2 タンク4は 08/18:34:02 MET、O2 タンク5は 08/22:03:26 MET に残留量まで使った。同じ日に廃水のダンプと LiOH キャニスタ2個の交換を行った。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=23） 補足：O2 タンク5が残留量に達した時刻（08/22:03:26 MET＝8×24+22.057）。量の値は無い（着陸時 5.0 %）。 |
| PFP-43 | STS-125 | 酸素（PRSD 反応剤） | 309.65 | 542 | lbm | 残量 | STS-125 の PRSD 総量は O2 が搭載 3965・打上げ 3914・着陸 542 lbm、H2 が 472.1・456.7・53.9 lbm で、ECLSS への O2 は 174 lbm、着陸時の O2（制約の反応剤）で平均 15.0 kW なら28時間、延長日の 12.88 kW なら32時間延長できた。309.65 時間で 4630 kWh を発電し飲料水 3601 lbm を生成、O2 3198・H2 403 lbm を使った。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=46） 補足：着陸時の総量。 |
| PFP-44 | STS-125 | 水素（PRSD 反応剤） | 309.65 | 53.9 | lbm | 残量 | STS-125 の PRSD 総量は O2 が搭載 3965・打上げ 3914・着陸 542 lbm、H2 が 472.1・456.7・53.9 lbm で、ECLSS への O2 は 174 lbm、着陸時の O2（制約の反応剤）で平均 15.0 kW なら28時間、延長日の 12.88 kW なら32時間延長できた。309.65 時間で 4630 kWh を発電し飲料水 3601 lbm を生成、O2 3198・H2 403 lbm を使った。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=46） 補足：着陸時の総量。 |
| PFP-45 | STS-125 | 酸素（PRSD 反応剤） | 309.65 | 3,198 | lbm | 使用量の累計 | STS-125 の PRSD 総量は O2 が搭載 3965・打上げ 3914・着陸 542 lbm、H2 が 472.1・456.7・53.9 lbm で、ECLSS への O2 は 174 lbm、着陸時の O2（制約の反応剤）で平均 15.0 kW なら28時間、延長日の 12.88 kW なら32時間延長できた。309.65 時間で 4630 kWh を発電し飲料水 3601 lbm を生成、O2 3198・H2 403 lbm を使った。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=46） 補足：燃料電池の消費。 |
| PFP-46 | STS-125 | 酸素（PRSD 反応剤） | 309.65 | 174 | lbm | 使用量の累計 | STS-125 の PRSD 総量は O2 が搭載 3965・打上げ 3914・着陸 542 lbm、H2 が 472.1・456.7・53.9 lbm で、ECLSS への O2 は 174 lbm、着陸時の O2（制約の反応剤）で平均 15.0 kW なら28時間、延長日の 12.88 kW なら32時間延長できた。309.65 時間で 4630 kWh を発電し飲料水 3601 lbm を生成、O2 3198・H2 403 lbm を使った。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=46） 補足：ECLSS へ供給。 |
| PFP-47 | STS-125 | 水素（PRSD 反応剤） | 309.65 | 403 | lbm | 使用量の累計 | STS-125 の PRSD 総量は O2 が搭載 3965・打上げ 3914・着陸 542 lbm、H2 が 472.1・456.7・53.9 lbm で、ECLSS への O2 は 174 lbm、着陸時の O2（制約の反応剤）で平均 15.0 kW なら28時間、延長日の 12.88 kW なら32時間延長できた。309.65 時間で 4630 kWh を発電し飲料水 3601 lbm を生成、O2 3198・H2 403 lbm を使った。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=46） 補足：燃料電池の消費。 |
| PFP-48 | STS-125 | 燃料電池の発電量 | 309.65 | 4,630 | kWh | 生成量の累計 | STS-125 の PRSD 総量は O2 が搭載 3965・打上げ 3914・着陸 542 lbm、H2 が 472.1・456.7・53.9 lbm で、ECLSS への O2 は 174 lbm、着陸時の O2（制約の反応剤）で平均 15.0 kW なら28時間、延長日の 12.88 kW なら32時間延長できた。309.65 時間で 4630 kWh を発電し飲料水 3601 lbm を生成、O2 3198・H2 403 lbm を使った。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=46） |
| PFP-49 | STS-125 | 燃料電池の電力 | 309.65 | 15 | kW | 平均 | STS-125 の PRSD 総量は O2 が搭載 3965・打上げ 3914・着陸 542 lbm、H2 が 472.1・456.7・53.9 lbm で、ECLSS への O2 は 174 lbm、着陸時の O2（制約の反応剤）で平均 15.0 kW なら28時間、延長日の 12.88 kW なら32時間延長できた。309.65 時間で 4630 kWh を発電し飲料水 3601 lbm を生成、O2 3198・H2 403 lbm を使った。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=46） 補足：飛行の平均（負荷 490 A）。 |
| PFP-50 | STS-125 | 給水・飲料水 | 309.65 | 3,601 | lbm | 生成量の累計 | STS-125 の PRSD 総量は O2 が搭載 3965・打上げ 3914・着陸 542 lbm、H2 が 472.1・456.7・53.9 lbm で、ECLSS への O2 は 174 lbm、着陸時の O2（制約の反応剤）で平均 15.0 kW なら28時間、延長日の 12.88 kW なら32時間延長できた。309.65 時間で 4630 kWh を発電し飲料水 3601 lbm を生成、O2 3198・H2 403 lbm を使った。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=46） 補足：燃料電池の飲料水の生成。 |
| PFP-51 | STS-125 | 酸素（PRSD 反応剤） | 309.65 | 28 | h | 残量 | STS-125 の PRSD 総量は O2 が搭載 3965・打上げ 3914・着陸 542 lbm、H2 が 472.1・456.7・53.9 lbm で、ECLSS への O2 は 174 lbm、着陸時の O2（制約の反応剤）で平均 15.0 kW なら28時間、延長日の 12.88 kW なら32時間延長できた。309.65 時間で 4630 kWh を発電し飲料水 3601 lbm を生成、O2 3198・H2 403 lbm を使った。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=46） 補足：着陸時の O2（制約の反応剤）で可能な延長時間（平均 15.0 kW）。延長日の 12.88 kW なら32時間。 |
| PFP-52 | STS-4 | 酸素（PRSD 反応剤） | — | 1,778 | lb | 使用量の累計 | STS-4 で PRSD は燃料電池に水素 224 lb、燃料電池と環境制御に酸素 1778 lb を供給し、PRSD タンクを初めて残留量まで使った。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=20） 補足：燃料電池と環境制御への供給。飛行時間は本調査で未確認のため met_h は None。 |
| PFP-53 | STS-4 | 水素（PRSD 反応剤） | — | 224 | lb | 使用量の累計 | STS-4 で PRSD は燃料電池に水素 224 lb、燃料電池と環境制御に酸素 1778 lb を供給し、PRSD タンクを初めて残留量まで使った。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=20） 補足：燃料電池への供給。 |
| PFP-54 | STS-35 | 酸素（PRSD 反応剤） | 214 | 2,679 | lb | 使用量の累計 | STS-35 は5組のタンクで O2 2679 lb・H2 321 lb を使い（乗員の O2 130 lb を含む）、着陸時の残量で72時間延長でき、214 時間で 3606 kWh を平均 16.8 kW で発電した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=12） 補足：乗員の 130 lb を含む。met_h は『214-hour mission』。 |
| PFP-55 | STS-35 | 水素（PRSD 反応剤） | 214 | 321 | lb | 使用量の累計 | STS-35 は5組のタンクで O2 2679 lb・H2 321 lb を使い（乗員の O2 130 lb を含む）、着陸時の残量で72時間延長でき、214 時間で 3606 kWh を平均 16.8 kW で発電した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=12） |
| PFP-56 | STS-35 | 燃料電池の発電量 | 214 | 3,606 | kWh | 生成量の累計 | STS-35 は5組のタンクで O2 2679 lb・H2 321 lb を使い（乗員の O2 130 lb を含む）、着陸時の残量で72時間延長でき、214 時間で 3606 kWh を平均 16.8 kW で発電した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=12） 補足：平均 16.8 kW。延長可能72時間。 |
| PFP-57 | STS-54 | 酸素（PRSD 反応剤） | 143.64 | 1,471.4 | lb | 使用量の累計 | STS-54 は O2 1471.4 lb・H2 176.9 lb を使い（乗員の O2 66.8 lb）、平均 14.4 kW で111.5時間の延長ができ、燃料電池は 2061.8 kWh を発電した。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=14） 補足：乗員の 66.8 lb を含む。met_h は飛行時間 5 d 23 h 38 min 19 s（PRF-046）＝143.64 h。 |
| PFP-58 | STS-54 | 水素（PRSD 反応剤） | 143.64 | 176.9 | lb | 使用量の累計 | STS-54 は O2 1471.4 lb・H2 176.9 lb を使い（乗員の O2 66.8 lb）、平均 14.4 kW で111.5時間の延長ができ、燃料電池は 2061.8 kWh を発電した。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=14） |
| PFP-59 | STS-54 | 燃料電池の発電量 | 143.64 | 2,061.8 | kWh | 生成量の累計 | STS-54 は O2 1471.4 lb・H2 176.9 lb を使い（乗員の O2 66.8 lb）、平均 14.4 kW で111.5時間の延長ができ、燃料電池は 2061.8 kWh を発電した。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=14） 補足：延長可能 111.5 時間（平均 14.4 kW）。 |
| PFP-60 | STS-59 | 酸素（PRSD 反応剤） | — | 2,929 | lb | 使用量の累計 | STS-59 は O2 2929 lb・H2 354 lb を使い（乗員の O2 118 lbm を含む）、着陸時の残量は平均 15.1 kW で2日分あった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-59%20Space%20Shuttle%20Mission%20Report.pdf#page=19） 補足：乗員の 118 lbm を含む。飛行時間は本調査で未確認。 |
| PFP-61 | STS-65 | 酸素（PRSD 反応剤） | — | 4,911 | lbm | 使用量の累計 | STS-65（EDO）は O2 4911 lbm・H2 593 lbm を使い（乗員の呼吸に O2 204 lbm）、着陸時の残量で平均 18.8 kW なら47時間延長でき、燃料電池は 6660 kWh を発電し水 5299 lbm を生成した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=30） 補足：EDO。乗員の呼吸 204 lbm を含む。燃料電池は 6660 kWh・平均 18.8 kW。飛行時間は本調査で未確認。 |
| PFP-62 | STS-108 | 酸素（PRSD 反応剤） | 283.59 | 2,687 | lbm | 使用量の累計 | STS-108 の PRSD は燃料電池に O2 2687 Ibm・H2 338 Ibm を供給して 3912 kWh を発電し、ECLSS に O2 166 Ibm を供給した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=27） 補足：燃料電池へ供給（ECLSS へは別に 166 lbm）。met_h は飛行時間 11 d 19 h 35 min 12 s（PRF-051）＝283.59 h。 |
| PFP-63 | STS-108 | 水素（PRSD 反応剤） | 283.59 | 338 | lbm | 使用量の累計 | STS-108 の PRSD は燃料電池に O2 2687 Ibm・H2 338 Ibm を供給して 3912 kWh を発電し、ECLSS に O2 166 Ibm を供給した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=27） |
| PFP-64 | STS-108 | 燃料電池の発電量 | 283.59 | 3,912 | kWh | 生成量の累計 | STS-108 の PRSD は燃料電池に O2 2687 Ibm・H2 338 Ibm を供給して 3912 kWh を発電し、ECLSS に O2 166 Ibm を供給した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=27） 補足：平均 13.8 kW（PRF-053）。 |
| PFP-65 | STS-108 | 酸素（PRSD 反応剤） | 283.59 | 1,072 | lbm | 残量 | STS-108 の平均電力は 13.8 kW で、着陸時の残量で78時間延長でき、着陸時の残りは O2 1072 Ibm・H2 110 ポンドであった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=28） 補足：着陸時。延長可能78時間。 |
| PFP-66 | STS-108 | 水素（PRSD 反応剤） | 283.59 | 110 | lb | 残量 | STS-108 の平均電力は 13.8 kW で、着陸時の残量で78時間延長でき、着陸時の残りは O2 1072 Ibm・H2 110 ポンドであった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=28） 補足：着陸時（資料は pounds）。 |

## 8. 飛行前の予測

STS-1 の飛行前の予測（JSC-16720・Mission Report の予測の表）の値 13件を示す。

| ID | 飛行 | 消耗品 | MET（時） | 値 | 単位 | 根拠・補足 |
|---|---|---|---|---|---|---|
| PFS-01 | STS-1 | LiOH キャニスタ | 5.5 | 2 | 個 | 代謝の O2 必要量は 0.0739 lb/人・時、CO2 生成は 0.0882 lb/人・時、尿は 0.138 lb/人・時、乗員の飲水は 0.344 lb/時とした。LiOH は 5.5 時間 MET まで装着せず、1個を 12.25 時間、もう1個を 36.42 時間に交換し、両方を 49.28 時間 MET の軌道離脱前に外す。廃水タンクは 4.5 時間と 33.65 時間 MET に 80 %（132 ポンド）までダンプする。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=11） 補足：飛行前の予測。キャニスタ2個を装着（それまでは未装着）。個数は本書の数え方。 |
| PFS-02 | STS-1 | LiOH キャニスタ | 12.25 | 3 | 個 | 代謝の O2 必要量は 0.0739 lb/人・時、CO2 生成は 0.0882 lb/人・時、尿は 0.138 lb/人・時、乗員の飲水は 0.344 lb/時とした。LiOH は 5.5 時間 MET まで装着せず、1個を 12.25 時間、もう1個を 36.42 時間に交換し、両方を 49.28 時間 MET の軌道離脱前に外す。廃水タンクは 4.5 時間と 33.65 時間 MET に 80 %（132 ポンド）までダンプする。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=11） 補足：飛行前の予測。1個目の交換。累計の個数は本書の数え方。 |
| PFS-03 | STS-1 | LiOH キャニスタ | 36.42 | 4 | 個 | 代謝の O2 必要量は 0.0739 lb/人・時、CO2 生成は 0.0882 lb/人・時、尿は 0.138 lb/人・時、乗員の飲水は 0.344 lb/時とした。LiOH は 5.5 時間 MET まで装着せず、1個を 12.25 時間、もう1個を 36.42 時間に交換し、両方を 49.28 時間 MET の軌道離脱前に外す。廃水タンクは 4.5 時間と 33.65 時間 MET に 80 %（132 ポンド）までダンプする。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=11） 補足：飛行前の予測。2個目の交換。飛行の所要4個（PRF-019）と一致。 |
| PFS-04 | STS-1 | LiOH キャニスタ | 49.28 | 4 | 個 | 代謝の O2 必要量は 0.0739 lb/人・時、CO2 生成は 0.0882 lb/人・時、尿は 0.138 lb/人・時、乗員の飲水は 0.344 lb/時とした。LiOH は 5.5 時間 MET まで装着せず、1個を 12.25 時間、もう1個を 36.42 時間に交換し、両方を 49.28 時間 MET の軌道離脱前に外す。廃水タンクは 4.5 時間と 33.65 時間 MET に 80 %（132 ポンド）までダンプする。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=11） 補足：飛行前の予測。軌道離脱前に両方を外す。搭載6個・予備1個・マージン1個（PRF-019）。 |
| PFS-05 | STS-1 | 廃水 | 0 | 160 | lb | 廃水の予算は打上げ時 160.0 lb（95 %）、生成 31.6 lb、ダンプ 48.2 lb、EOM の冷却用 131.7 lb である。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=17） 補足：飛行前の予測。打上げ時の廃水タンク（95 %、FES の予備用の浄水）。 |
| PFS-06 | STS-1 | 廃水 | 4.5 | 132 | lb | 代謝の O2 必要量は 0.0739 lb/人・時、CO2 生成は 0.0882 lb/人・時、尿は 0.138 lb/人・時、乗員の飲水は 0.344 lb/時とした。LiOH は 5.5 時間 MET まで装着せず、1個を 12.25 時間、もう1個を 36.42 時間に交換し、両方を 49.28 時間 MET の軌道離脱前に外す。廃水タンクは 4.5 時間と 33.65 時間 MET に 80 %（132 ポンド）までダンプする。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=11） 補足：飛行前の予測。80 %（132 lb）までダンプ。 |
| PFS-07 | STS-1 | 廃水 | 33.65 | 132 | lb | 代謝の O2 必要量は 0.0739 lb/人・時、CO2 生成は 0.0882 lb/人・時、尿は 0.138 lb/人・時、乗員の飲水は 0.344 lb/時とした。LiOH は 5.5 時間 MET まで装着せず、1個を 12.25 時間、もう1個を 36.42 時間に交換し、両方を 49.28 時間 MET の軌道離脱前に外す。廃水タンクは 4.5 時間と 33.65 時間 MET に 80 %（132 ポンド）までダンプする。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=11） 補足：飛行前の予測。2回目のダンプで 80 %（132 lb）。EOM の冷却用 131.7 lb（PRF-020）。 |
| PFS-08 | STS-1 | 給水・飲料水 | 0 | 925 | lb | 給水の予算は全容量（6基）1009.8 lb、打上げ時 925.0 lb である。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=18） 補足：飛行前の予測。給水の打上げ時の量（実績は 864.4 lb、PRF-029）。 |
| PFS-09 | STS-1 | 給水・飲料水 | — | 940 | lb | トッピング FES の補助冷却のため給水の最大量は 940 ポンドにとどまり、給水タンクのダンプは不要であった（予測）。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=12） 補足：飛行前の予測。軌道上の最大量（時刻は文字では無い）。軌道上の管理範囲は 675〜975 lb（PRF-016）でダンプ不要とした（実績は2回ダンプ、PRF-028）。 |
| PFS-10 | STS-1 | 給水・飲料水 | — | 824.9 | lb | 給水の飛行の所要は乗員の使用 38.4、上昇 265.4、軌道 469.7、降下 335.9 lb、ダンプ 0、燃料電池の生成 824.9 lb、正味の使用 284.5 lb、マージン 90.2 lb である（予測）。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=19） 補足：飛行前の予測。燃料電池の生成水の合計（実績 613.7 lb）。正味の使用 284.5 lb、マージン 90.2 lb。 |
| PFS-11 | STS-1 | 燃料電池の電力 | — | 24 | kW | STS-1 の平均負荷は実績／予測で上昇 25／24 kW、軌道 14〜17／15〜20 kW、降下 20／22 kW である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=35） 補足：飛行前の予測（Mission Report の表）。上昇の平均。 |
| PFS-12 | STS-1 | 燃料電池の電力 | — | — | kW | STS-1 の平均負荷は実績／予測で上昇 25／24 kW、軌道 14〜17／15〜20 kW、降下 20／22 kW である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=35） 補足：飛行前の予測（Mission Report の表）。軌道の平均。 |
| PFS-13 | STS-1 | 燃料電池の電力 | — | 22 | kW | STS-1 の平均負荷は実績／予測で上昇 25／24 kW、軌道 14〜17／15〜20 kW、降下 20／22 kW である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=35） 補足：飛行前の予測（Mission Report の表）。降下の平均。 |

## 9. 設計と実績の比較

着陸時の反応剤の残量の、実績と設計の率による計算（本書の計算）の比較 6件を示す。差＝実績 − 設計（正なら設計の率が実際より大きい）。

| ID | 飛行 | 消耗品 | 単位 | 離昇 | 着陸の MET（時） | 着陸（実績） | 着陸（設計の率） | 差 | 計算の条件 | 根拠 |
|---|---|---|---|---|---|---|---|---|---|---|
| PFC-01 | STS-1 | 酸素（PRSD 反応剤） | % | 97.5 | 54.37 | 59.1 | 58.6 | +0.5 | 2 組のタンク（1 基 781 lb）の平均の %。設計＝平均電力 15.75 kW・乗員 2 人で飛行時間 54.37 h | STS-1 の打上げ時の量は酸素タンク1・2が 97.9・97.0 %、水素タンク1・2が 92.6・91.7 % で、電力は飛行前の評価より約 2.0 kW 低く、着陸時は酸素 61.5・56.7 %、水素 51.5・49.3 % であった。水素・酸素の使用は図 2-8・2-9（レッドラインと計画の消費の曲線）に示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=28）STS-1 の燃料電池は飛行中に 857 kWh を平均 15.75 kW で供給し、飛行時間は54時間22分であった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=34） |
| PFC-02 | STS-1 | 水素（PRSD 反応剤） | % | 92.2 | 54.37 | 50.4 | 50.3 | +0.1 | 2 組のタンク（1 基 92 lb）の平均の %。設計＝平均電力 15.75 kW・乗員 2 人で飛行時間 54.37 h | STS-1 の打上げ時の量は酸素タンク1・2が 97.9・97.0 %、水素タンク1・2が 92.6・91.7 % で、電力は飛行前の評価より約 2.0 kW 低く、着陸時は酸素 61.5・56.7 %、水素 51.5・49.3 % であった。水素・酸素の使用は図 2-8・2-9（レッドラインと計画の消費の曲線）に示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=28）STS-1 の燃料電池は飛行中に 857 kWh を平均 15.75 kW で供給し、飛行時間は54時間22分であった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=34） |
| PFC-03 | STS-114 | 酸素（PRSD 反応剤） | lbm | 3,931 | 333.55 | 604 | 584.4 | +19.6 | 総量。設計＝平均電力 13.6 kW・乗員 7 人で飛行時間 333.55 h | STS-114 の PRSD 5組の総量は O2 が搭載 3958・打上げ 3931・着陸 604 lbm、H2 が 472・462・75 lbm で、燃料電池に O2 3076・H2 387 lbm を供給し 4526 kWh を発電、333.55 時間の平均電力は 13.6 kW、着陸時の残量で36時間延長でき、タンク組4・5は残留量まで使った。ECLSS へは O2 250 lbm を供給した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=43） |
| PFC-04 | STS-114 | 水素（PRSD 反応剤） | lbm | 462 | 333.55 | 75 | 53.7 | +21.3 | 総量。設計＝平均電力 13.6 kW・乗員 7 人で飛行時間 333.55 h | STS-114 の PRSD 5組の総量は O2 が搭載 3958・打上げ 3931・着陸 604 lbm、H2 が 472・462・75 lbm で、燃料電池に O2 3076・H2 387 lbm を供給し 4526 kWh を発電、333.55 時間の平均電力は 13.6 kW、着陸時の残量で36時間延長でき、タンク組4・5は残留量まで使った。ECLSS へは O2 250 lbm を供給した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=43） |
| PFC-05 | STS-125 | 酸素（PRSD 反応剤） | lbm | 3,914 | 309.65 | 542 | 503.7 | +38.3 | 総量。設計＝平均電力 15 kW・乗員 7 人で飛行時間 309.65 h | STS-125 の PRSD 総量は O2 が搭載 3965・打上げ 3914・着陸 542 lbm、H2 が 472.1・456.7・53.9 lbm で、ECLSS への O2 は 174 lbm、着陸時の O2（制約の反応剤）で平均 15.0 kW なら28時間、延長日の 12.88 kW なら32時間延長できた。309.65 時間で 4630 kWh を発電し飲料水 3601 lbm を生成、O2 3198・H2 403 lbm を使った。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=46） |
| PFC-06 | STS-125 | 水素（PRSD 反応剤） | lbm | 456.7 | 309.65 | 53.9 | 38.7 | +15.2 | 総量。設計＝平均電力 15 kW・乗員 7 人で飛行時間 309.65 h | STS-125 の PRSD 総量は O2 が搭載 3965・打上げ 3914・着陸 542 lbm、H2 が 472.1・456.7・53.9 lbm で、ECLSS への O2 は 174 lbm、着陸時の O2（制約の反応剤）で平均 15.0 kW なら28時間、延長日の 12.88 kW なら32時間延長できた。309.65 時間で 4630 kWh を発電し飲料水 3601 lbm を生成、O2 3198・H2 403 lbm を使った。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=46） |

## 10. 図

図134 は標準ミッションの LiOH・酸素・水素・窒素の残量（容量に対する %）を日ごとの折れ線で示し、軌道滞在の10日・予備を含む12日と LiOH の枯渇の日を縦線で示す。図135 は STS-1・STS-114・STS-125 の酸素・水素の残量（離昇の量に対する %）を、実績（離昇と着陸の点を直線で補ったもの、実線）と設計の率による計算（破線）で示す。折れ線は座標で描いた線で、ほかの図の矢印（流れ・関係）とは意味が違う。

## 11. SysML v2 テキスト

同じ内容を SysML v2 のテキスト [SysML/SSD-PRF-ORB-001.sysml](../SysML/SSD-PRF-ORB-001.sysml) に示す。標準ライブラリ SampledFunctions の SampledFunction を特化した ConsumableProfile で、設計の日ごとの残量 4件と、飛行の実績・設計の残量の時系列 12件（SamplePair：経過時間 → 残量）を示す。枯渇の日は analysis def ConsumableDepletion（subject は SSD_PAR_ORB_001::StandardMission、容量 ÷ 1日の使用量）の使用、必要日数との比較は requirement def EnduranceRequirement（require constraint）で示す。OMG SysML v2 Pilot Implementation 0.62.0（2026-08 リリース、標準ライブラリ付き）で読み込んで、構文・名前の解決・型の検査で誤り 0件・警告 0件を確かめた（Pilot は式を評価しないので、枯渇の日は本書の生成の中で計算した）。

## 12. 注記（出典間の相違・構成変更）

> **注記** 結論：調べた Mission Report（STS-1・2・4・35・54・59・65・108・114・122・125・135）には、消耗品の残量や日ごとの使用量を文字で並べた表・記述は無い。STS-114・125・122・135 は『Flight Day N』ごとの記述があるが、書かれているのは作業と異常で、消耗品の量は出てこない（例外は STS-114 の O2 タンク4の 93 %（00/17:31 MET）、STS-125 の O2 タンク4・5の残留量到達時刻（08/18:34・08/22:03 MET）と FD10 の LiOH 2個交換）。PRSD の量は『搭載・打上げ・着陸』の3点の表（STS-114 p43・STS-125 p46）、STS-1 は打上げ・着陸の2点（p28）だけである。

> **注記** したがって時間軸のプロファイルは、離昇・着陸（とタンクの残留量到達・LiOH 交換などの区切り）の点の間を、設計の消費率（RATES）か実績の平均（総量÷飛行時間）で線形に補間する必要がある。日ごとの実績の値を求めるなら、公開されていない Boeing の PRSD/燃料電池の飛行後報告（STS-114 p103、STS-125 p99 が参照）が要る。

> **注記** 設計と実績の差が正（着陸時の残量が設計の率で計算した値より多い）のは、実績の 1 kWh あたりの反応剤（酸素 0.68〜0.69、水素 0.086 前後、本書の計算）が設計の目安（PAR-18 の 0.7・PAR-19 の 0.09 lb/kWh）より少ないためである。STS-114・125 の ECLSS への酸素には ISS への移送・EVA の再与圧も含まれる。

> **注記** LiOH は標準ミッションの設計で約9.1日分しかなく、必要日数（12日）に対して負のマージンである（SSD-BUD-ORB-001 の BUD-CON-04・05 と同じ。2026-10-02 のユーザーの決定で据え置き）。STS-114 は ISS と LiOH をやり取りし、STS-125 は救難機待機のため 78 個を積んだ（実績の点）。

> **注記** STS-1 Mission Report は水素・酸素の使用を図 2-8・2-9（レッドラインと計画の曲線）、電力を図 2-10 で示すが、図の読み取りはしない方針なので値にしていない。STS-4 も H2 タンクの量の推移を図 2-6 で示す。

> **注記** STS-114 の ISS への窒素の移送は、ミッションの要約（p24）が 29.0 lbm（JAL 高圧タンクへ）、システムの節（p49・p50）が約 22 lb で食い違う。

> **注記** 乗員の環境曝露（CO2 分圧・室圧・加速度）の時間軸のプロファイルは [SSD-EXP-ORB-001](SSD-EXP-ORB-001.md) に示す（SysML v2 テキスト：SysML/SSD-EXP-ORB-001.sysml）。

> **注記** LiOH の前提の見直し（Rev. BG）：PAR-04 を規則から求めた必要搭載数 42個に改めたので、標準ミッションの LiOH は 12.00日で尽き、必要日数（12日）にちょうど足りる（マージン 0）。上の LiOH の負のマージンの注記と図134 の以前の線は見直し前のものである。

## 13. 参考文献

1. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p360） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/360
2. USA006020 Rev. B ECLSS 21002 訓練マニュアル （PDF p55） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=55
3. Shuttle Crew Operations Manual 9.3 Entry（USA007587 Rev. A CPN-1、PDF p1022） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1022
4. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p313） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/313
5. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p356） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/356
6. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p320） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/320
7. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p419） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/419
8. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p370） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370
9. USA006020 Rev. B ECLSS 21002 訓練マニュアル （PDF p94） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=94
10. NSTS-12820 Space Shuttle Operational Flight Rules Vol. A（2002、2214頁） （PDF p804） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=804
11. STS-65 Mission Report （PDF p12） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=12
12. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p394） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/394
13. USA006020 Rev. B ECLSS 21002 訓練マニュアル （PDF p146） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=146
14. USA006020 Rev. B ECLSS 21002 訓練マニュアル （PDF p148） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=148
15. JSC-16720（80-FM-33）STS-1 ECLSS Consumables and Thermal Analysis（1980） （PDF p11） — https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=11
16. JSC-16720（80-FM-33）STS-1 ECLSS Consumables and Thermal Analysis（1980） （PDF p10） — https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=10
17. JSC-17378 STS-1 Orbiter Final Mission Report（1981年8月） （PDF p28） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=28
18. JSC-17378 STS-1 Orbiter Final Mission Report（1981年8月） （PDF p59） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=59
19. JSC-17378 STS-1 Orbiter Final Mission Report（1981年8月） （PDF p34） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=34
20. JSC-17378 STS-1 Orbiter Final Mission Report（1981年8月） （PDF p35） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=35
21. JSC-17378 STS-1 Orbiter Final Mission Report（1981年8月） （PDF p56） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=56
22. JSC-17378 STS-1 Orbiter Final Mission Report（1981年8月） （PDF p58） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=58
23. STS-114 Mission Report （PDF p43） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=43
24. STS-114 Mission Report （PDF p44） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=44
25. STS-114 Mission Report （PDF p24） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=24
26. NSTS-37452 STS-125 Mission Report（2010） （PDF p46） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=46
27. NSTS-37452 STS-125 Mission Report（2010） （PDF p33） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=33
28. NSTS-37452 STS-125 Mission Report（2010） （PDF p23） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=23
29. STS-4 Orbiter Mission Report （PDF p20） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=20
30. STS-35 Mission Report （PDF p12） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=12
31. NASA-CR-194116 STS-54 Mission Report（1993） （PDF p14） — https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=14
32. STS-59 Mission Report （PDF p19） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-59%20Space%20Shuttle%20Mission%20Report.pdf#page=19
33. STS-65 Mission Report （PDF p30） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=30
34. STS-108 Mission Report （PDF p27） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=27
35. STS-108 Mission Report （PDF p28） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=28
36. JSC-16720（80-FM-33）STS-1 ECLSS Consumables and Thermal Analysis（1980） （PDF p17） — https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=17
37. JSC-16720（80-FM-33）STS-1 ECLSS Consumables and Thermal Analysis（1980） （PDF p18） — https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=18
38. JSC-16720（80-FM-33）STS-1 ECLSS Consumables and Thermal Analysis（1980） （PDF p12） — https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=12
39. JSC-16720（80-FM-33）STS-1 ECLSS Consumables and Thermal Analysis（1980） （PDF p19） — https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=19
40. OMG Systems Modeling Language (SysML) Version 2.0 仕様 — https://www.omg.org/spec/SysML/2.0
41. SysML v2 Release（OMG SysML v2 Pilot Implementation の公開リリース・標準ライブラリ） — https://github.com/Systems-Modeling/SysML-v2-Release

## 14. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-04 | 初版作成（設計の率 26件、標準ミッションの枯渇の日 4件と日ごとの残量、実績の点 66件・予測 13件、設計と実績の比較 6件、図134・135、SysML v2 テキスト） |
| Rev. A | 2026-10-07 | 乗員の環境曝露定義書 SSD-EXP-ORB-001 への参照を注記（Rev. AZ） |
| Rev. B | 2026-10-07 | PFD-01 と図134 の LiOH を必要搭載数 42個で計算し直した（LiOH の前提の見直し）（Rev. BG） |
