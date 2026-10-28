# 設計の決定の記録定義書（決定・代替案・理由・時期。NASA SP-4221 の記述による）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-DCN-ORB-001 |
| 表題 | 設計の決定の記録定義書（決定・代替案・理由・時期。NASA SP-4221 の記述による） |
| 版・日付 | 初版（Rev. -）／2026-10-28 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-REQ-SYS-001 |
| 関連図 | SSD-SYS-ARC-001 図282 設計の決定と代替案・理由の記録・図283 設計の決定の時系列（年代別の実績）・図284 設計の決定と機能ブロック（構成）の対応 |

## 1. 目的

シャトルの主要な設計の決定を、選んだもの・選ばなかった代替案・理由・時期の記録にする。これまでのモデルには、CO2 除去のトレードスタディ（図104）と、L1 要求（SSD-REQ-SYS-001）はあったが、要求の背景にある設計の決定（なぜ固体ブースタか、なぜ外部タンクは使い捨てか、など）を代替案つきで持つ文書は無かった。

## 2. 範囲と書き方

資料は NASA SP-4221（歴史書。二次資料）の1冊で、1972年までの決定を述べる。記録は本文の連続した1〜3文に、決定・代替案・理由の3つがそろうものだけの19件（1960年代 6・1970年代 8・年不明 5）。政治・組織の決定は載せていない。1973年以降の設計の決定は範囲外で、全数は主張しない。本文の語は英語のまま、日本語は見出しだけにして推定を足していない。

## 3. 年代別の件数

決定の時期を本文が書く年で数えた。図283 に同じ表を示す。

| 年代 | 件数 | 機能ブロック |
|---|---|---|
| 1960年代 | 6 | MPS・ORB・SRB・STR・TPS |
| 1970年代 | 8 | ET・MPS・SRB・STR・TPS |
| 年不明 | 5 | MPS・ORB・SRB |

## 4. 機能ブロック別の件数

決定の対象の語に本書の規則（cxrules.py）を当てた。図284 に同じ表を示す。

| 機能ブロック | 名前 | 件数 | 記録 |
|---|---|---|---|
| <a href='SSD-FD-SRB-001.html'>SRB</a> | 固体ロケットブースタ | 5 | DCN-002・DCN-014・DCN-015・DCN-018・DCN-019 |
| <a href='SSD-FD-STR-001.html'>STR</a> | 構造（翼・ペイロードベイ・機体の材料） | 4 | DCN-003・DCN-007・DCN-010・DCN-013 |
| <a href='SSD-FD-MPS-001.html'>MPS</a> | 主推進系（SSME） | 3 | DCN-006・DCN-012・DCN-017 |
| <a href='SSD-FD-ORB-001.html'>ORB</a> | オービタ・全体の構成 | 3 | DCN-004・DCN-005・DCN-016 |
| <a href='SSD-FD-TPS-001.html'>TPS</a> | 熱防護系 | 3 | DCN-001・DCN-009・DCN-011 |
| <a href='SSD-FD-ET-001.html'>ET</a> | 外部タンク | 1 | DCN-008 |

## 5. 設計の決定の記録

19件を年の順に示す。決定・代替案・理由は本文の語のまま（英語）。図282 に同じ表を示す。

| ID | 年 | 機能ブロック | 決定（選んだもの） | 代替案 | 理由 | 根拠 |
|---|---|---|---|---|---|---|
| DCN-001 | 1969 | <a href='SSD-FD-TPS-001.html'>TPS</a> | a no-lift entry | a lifting entry | easier to do a no-lift entry than a lifting entry, from the standpoint of heat protection | Even with thermal protection, he did not want to fly his shuttle during reentry, in the manner of an airplane: “It’s a hell of a lot easier to do a no-lift entry than a lifting entry, from the standpoint of heat protecti（出典: https://www.nasa.gov/wp-content/uploads/2023/04/sp-4221.pdf#page=227） |
| DCN-002 | 1969 | <a href='SSD-FD-SRB-001.html'>SRB</a> | ruled out expendable boosters for a reusable shuttle | expendable boosters | such boosters were found to exceed the Saturn V in size | Those studies ruled out expendable boosters for a reusable shuttle, for such boosters were found to exceed the Saturn V in size.（出典: https://www.nasa.gov/wp-content/uploads/2023/04/sp-4221.pdf#page=235） |
| DCN-003 | 1969 | <a href='SSD-FD-STR-001.html'>STR</a> | turned to winged orbiters resembling those of Faget | lifting-body orbiters | having found no advantage in its lifting-body orbiters | McDonnell Douglas, having found no advantage in its lifting-body orbiters, turned to winged orbiters resembling those of Faget.（出典: https://www.nasa.gov/wp-content/uploads/2023/04/sp-4221.pdf#page=238） |
| DCN-004 | 1969 | <a href='SSD-FD-ORB-001.html'>ORB</a> | eliminated the Triamese configurations | The initial concept, the FR-1 | It had proven difficult, however, to have one shape serve both as booster and orbiter | On September 4, another meeting eliminated the Triamese configurations. The initial concept, the FR-1, had called for three elements of common length and structural design. It had proven difficult, however, to have one s（出典: https://www.nasa.gov/wp-content/uploads/2023/04/sp-4221.pdf#page=238） |
| DCN-005 | 1969 | <a href='SSD-FD-ORB-001.html'>ORB</a> | the FR-3 configuration was the forer~mner | FR-5 | the problem of center-of-gravity shift was not so severe as to call for the design innovations of this class of concepts | The FR-3and FR-5 remained. The latter had few advocates; the problem of center-of-gravity shift was not so severe as to call for the design innovations of this class of concepts. The manager Max Akridge writes, “It was f（出典: https://www.nasa.gov/wp-content/uploads/2023/04/sp-4221.pdf#page=238） |
| DCN-006 | 1969 | <a href='SSD-FD-MPS-001.html'>MPS</a> | to use the bell type only | the aerospike | had no real experience with the aerospike, though they had plenty with the bell | NASA and its contractors, however, had no real experience with the aerospike, though they had plenty with the bell; indeed, all their rocket engines built and flown to date had been of the bell type. In October, a meetin（出典: https://www.nasa.gov/wp-content/uploads/2023/04/sp-4221.pdf#page=256） |
| DCN-007 | 1970 | <a href='SSD-FD-STR-001.html'>STR</a> | the merits of titanium encouraged its use during NASA’s design work of 1970 and 1971 | aluminum | the advantages of titanium promised a complete orbiter, including thermal protection, that would weigh some fifteen percent less than a counterpart built of aluminum | Overall, the advantages of titanium promised a complete orbiter, including thermal protection, that would weigh some fifteen percent less than a counterpart built of aluminum. With the titanium orbiter requiring less the（出典: https://www.nasa.gov/wp-content/uploads/2023/04/sp-4221.pdf#page=350） |
| DCN-008 | 1971 | <a href='SSD-FD-ET-001.html'>ET</a> | place the orbiter’s liquid hydrogen within expendable tankage | their fullyreusable configurations | Liquid hydrogen is bulky, having only one-fourteenth the density of water | This approach gained further favor in March 197 1, as NASA instructed McDonnell Douglas and North American Rockwell to develop variants of their fullyreusable configurations that would also place the orbiter’s liquid hyd（出典: https://www.nasa.gov/wp-content/uploads/2023/04/sp-4221.pdf#page=356） |
| DCN-009 | 1971 | <a href='SSD-FD-TPS-001.html'>TPS</a> | it would use its structure as a heat sink | tiles；exotic metals | the lower staging velocity virtually eliminated the need for thermal protection | Better still, the lower staging velocity virtually eliminated the need for thermal protection. The booster now would need neither tiles nor exotic metals. Instead, it would use its structure as a heat sink, just as with （出典: https://www.nasa.gov/wp-content/uploads/2023/04/sp-4221.pdf#page=367） |
| DCN-010 | 1971 | <a href='SSD-FD-STR-001.html'>STR</a> | Donlan favored the delta wing | the straight-wing orbiter | the straight-wing orbiter would experience unsteady flow and buffeting, making it harder to fly | Temperatures on the sides of the fuselage would run from 900 to 1,300degrees, making the analysis and design of thermal protection more complex. During transition from supersonic to subsonic speeds, the straight-wing orb（出典: https://www.nasa.gov/wp-content/uploads/2023/04/sp-4221.pdf#page=420） |
| DCN-011 | 1972 | <a href='SSD-FD-TPS-001.html'>TPS</a> | the orbiter indeed would take shape as an aircraft built largely of this metal | hot structures | hot structures now looked like an open invitation to a cost overrun, everyone knew how to build an aluminum airplane | Though hot structures now looked like an open invitation to a cost overrun, everyone knew how to build an aluminum airplane, and the orbiter indeed would take shape as an aircraft built largely of this metal. It then nee（出典: https://www.nasa.gov/wp-content/uploads/2023/04/sp-4221.pdf#page=434） |
| DCN-012 | 1972 | <a href='SSD-FD-MPS-001.html'>MPS</a> | replaced them with three SSMEs | four J-2s engines | NASA now was free to build an honest orbiter, one that would be right the first time | With Shultz’s support, NASA now was free to build an honest orbiter, one that would be right the first time. MSC-040A had called for four J-2s engines; a variant of January 1972, MSC-O4OC, replaced them with three SSMEs.（出典: https://www.nasa.gov/wp-content/uploads/2023/04/sp-4221.pdf#page=434） |
| DCN-013 | 1972 | <a href='SSD-FD-STR-001.html'>STR</a> | NASA would get the full-size version that it wanted | the smaller orbiter | contractor studies found no advantage in the smaller orbiter, no offset to its compromise of NASA’s ability to carry DoD payloads | On the whole, contractor studies found no advantage in the smaller orbiter, no offset to its compromise of NASA’s ability to carry DoD payloads. This removed the last questions as to whether NASA would get the full-size （出典: https://www.nasa.gov/wp-content/uploads/2023/04/sp-4221.pdf#page=438） |
| DCN-014 | 1972 | <a href='SSD-FD-SRB-001.html'>SRB</a> | choosing the solid motor | the pressure-fed option；the less costly pump-fed booster | the projected costs for the solids drew on Air Force experience and were both low and firm, estimates for either of the liquid-fueled options were dodgy and likely to increase | This could happen quite severely with the pressure-fed option; it would also happen with the less costly pump-fed booster, even with the abort system deleted. Moreover, while the projected costs for the solids drew on Ai（出典: https://www.nasa.gov/wp-content/uploads/2023/04/sp-4221.pdf#page=439） |
| DCN-015 | 年不明 | <a href='SSD-FD-SRB-001.html'>SRB</a> | rocket engines were preferable to airbreathers for first-stage propulsion | airbreathers | the economic advantage for the rocket engine was always about the same as the developmental cost of the airbreathing engine | These studies concluded that, without exception, rocket engines were preferable to airbreathers for first-stage propulsion. A leader in these efforts, Max Akridge of NASA-Marshall wrote that “the economic advantage for t（出典: https://www.nasa.gov/wp-content/uploads/2023/04/sp-4221.pdf#page=100） |
| DCN-016 | 年不明 | <a href='SSD-FD-ORB-001.html'>ORB</a> | vertical takeoff proved to offer an advantage over horizontal launch | horizontal launch | the cost of developing a rocket sled was not offset by lower weight and cost in the flight vehicle | Similarly, vertical takeoff proved to offer an advantage over horizontal launch because the cost of developing a rocket sled was not offset by lower weight and cost in the flight vehicle.（出典: https://www.nasa.gov/wp-content/uploads/2023/04/sp-4221.pdf#page=100） |
| DCN-017 | 年不明 | <a href='SSD-FD-MPS-001.html'>MPS</a> | an entirely new rocket motor, the Space Shuttle Main Engine (SSME) | the XLR-129 | that engine promised 250,000 pounds of thrust and NASA wanted 415,000, to reduce the number and weight of the engines in the Shuttle’s booster | Even so, NASA was not about to accept the XLR-129, for that engine promised 250,000 pounds of thrust and NASA wanted 415,000, to reduce the number and weight of the engines in the Shuttle’s booster. In turn, those 415,00（出典: https://www.nasa.gov/wp-content/uploads/2023/04/sp-4221.pdf#page=256） |
| DCN-018 | 年不明 | <a href='SSD-FD-SRB-001.html'>SRB</a> | drop it entirely | this damn big reusable booster；ablative stuff | You cannot get the pilots away, the metallic heat shield is going to give you all kinds of problems, to do it with ablative stuff makes it too heavy | So you see, it was easy to say, “Why do we break our necks putting twelve engines in this damn big reusable booster? You cannot get the pilots away, the metallic heat shield is going to give you all kinds of problems, to（出典: https://www.nasa.gov/wp-content/uploads/2023/04/sp-4221.pdf#page=375） |
| DCN-019 | 年不明 | <a href='SSD-FD-SRB-001.html'>SRB</a> | the pressure-fed reusable booster | The winged S-IC | it appeared more costly than the pressure-fed reusable booster | The winged S-IC soon would die as well, for it appeared more costly than the pressure-fed reusable booster.（出典: https://www.nasa.gov/wp-content/uploads/2023/04/sp-4221.pdf#page=379） |

## 6. 図

図282 は決定ごとの代替案と理由の表、図283 は年代別の件数、図284 は機能ブロック別の件数である。

## 7. SysML v2 テキスト

同じ内容を SysML v2 のテキスト [SysML/SSD-DCN-ORB-001.sysml](../SysML/SSD-DCN-ORB-001.sysml) に示す。設計の決定 19件（part def DesignDecision）から成る。決定・代替案・理由・時期・機能ブロックは文字列の属性で、パッケージへの矢印は張らない。OMG SysML v2 Pilot Implementation 0.62.0（2026-08 リリース、標準ライブラリ付き）で読み込んで、構文・名前の解決・型の検査で誤り 0件・警告 0件を確かめた。要求への関係は張らず、トレースの外に置いた。

## 8. 注記（出典間の相違・構成変更）

> **注記** 範囲・取れなかった値・本書の判断：資料は NASA SP-4221「The Space Shuttle Decision」の1冊（歴史書・二次資料）。1972年までの決定が対象で、1973年以降の設計の決定（SSME の開発中の変更・熱防護系の変更・事故後の改修など）は本書の範囲外である。事前の基準 (c)（3つの年代）は満たせず、ユーザーの選択（2026-10-28）で「1960年代・1970年代の2つの年代」に直した（結果を見たあとの判断）。

> **注記** 範囲・取れなかった値・本書の判断：記録は、本文の連続した1〜3文に、決定・代替案・理由の3つがそろうものだけ（19件）。政治・組織の決定（予算・契約者の選定・大統領や議会の決定、約10件）、シャトルに無関係な決定（約5件）、3つの要素が3文に収まらないもの（約9件）は載せていない（担当の自己申告。再計算していない）。

> **注記** 範囲・取れなかった値・本書の判断：担当が全文を読んだのは決定が集まる章で、残りはキーワードでの絞り込み。本文に平易に書かれた決定を見落としている可能性がある。全数は主張しない。

> **注記** 範囲・取れなかった値・本書の判断：決定の時期は本文が書く年で、書かれていない5件は年不明とした。機能ブロックは決定の対象の語に本書の規則（cxrules.py）を当てた本書の判断で、決定が複数のブロックにまたがるものは主な対象に置いた。

> **注記** 範囲・取れなかった値・本書の判断：SysML は decision を part def DesignDecision の使用として持つ（代替案は文字列）。図104 のような analysis def（トレードスタディ）にはしていない：本文の記述は代替案の比較の結果（選択と理由）で、評価の基準の値を持たないため。

## 9. 参考文献

1. NASA SP-4221 Heppenheimer, T. A.「The Space Shuttle Decision: NASA's Search for a Reusable Space Vehicle」（1999年、489頁、59,663,742 バイト） （PDF p227） — https://www.nasa.gov/wp-content/uploads/2023/04/sp-4221.pdf#page=227
2. NASA SP-4221 Heppenheimer, T. A.「The Space Shuttle Decision: NASA's Search for a Reusable Space Vehicle」（1999年、489頁、59,663,742 バイト） （PDF p235） — https://www.nasa.gov/wp-content/uploads/2023/04/sp-4221.pdf#page=235
3. NASA SP-4221 Heppenheimer, T. A.「The Space Shuttle Decision: NASA's Search for a Reusable Space Vehicle」（1999年、489頁、59,663,742 バイト） （PDF p238） — https://www.nasa.gov/wp-content/uploads/2023/04/sp-4221.pdf#page=238
4. NASA SP-4221 Heppenheimer, T. A.「The Space Shuttle Decision: NASA's Search for a Reusable Space Vehicle」（1999年、489頁、59,663,742 バイト） （PDF p256） — https://www.nasa.gov/wp-content/uploads/2023/04/sp-4221.pdf#page=256
5. NASA SP-4221 Heppenheimer, T. A.「The Space Shuttle Decision: NASA's Search for a Reusable Space Vehicle」（1999年、489頁、59,663,742 バイト） （PDF p350） — https://www.nasa.gov/wp-content/uploads/2023/04/sp-4221.pdf#page=350
6. NASA SP-4221 Heppenheimer, T. A.「The Space Shuttle Decision: NASA's Search for a Reusable Space Vehicle」（1999年、489頁、59,663,742 バイト） （PDF p356） — https://www.nasa.gov/wp-content/uploads/2023/04/sp-4221.pdf#page=356
7. NASA SP-4221 Heppenheimer, T. A.「The Space Shuttle Decision: NASA's Search for a Reusable Space Vehicle」（1999年、489頁、59,663,742 バイト） （PDF p367） — https://www.nasa.gov/wp-content/uploads/2023/04/sp-4221.pdf#page=367
8. NASA SP-4221 Heppenheimer, T. A.「The Space Shuttle Decision: NASA's Search for a Reusable Space Vehicle」（1999年、489頁、59,663,742 バイト） （PDF p420） — https://www.nasa.gov/wp-content/uploads/2023/04/sp-4221.pdf#page=420
9. NASA SP-4221 Heppenheimer, T. A.「The Space Shuttle Decision: NASA's Search for a Reusable Space Vehicle」（1999年、489頁、59,663,742 バイト） （PDF p434） — https://www.nasa.gov/wp-content/uploads/2023/04/sp-4221.pdf#page=434
10. NASA SP-4221 Heppenheimer, T. A.「The Space Shuttle Decision: NASA's Search for a Reusable Space Vehicle」（1999年、489頁、59,663,742 バイト） （PDF p438） — https://www.nasa.gov/wp-content/uploads/2023/04/sp-4221.pdf#page=438
11. NASA SP-4221 Heppenheimer, T. A.「The Space Shuttle Decision: NASA's Search for a Reusable Space Vehicle」（1999年、489頁、59,663,742 バイト） （PDF p439） — https://www.nasa.gov/wp-content/uploads/2023/04/sp-4221.pdf#page=439
12. NASA SP-4221 Heppenheimer, T. A.「The Space Shuttle Decision: NASA's Search for a Reusable Space Vehicle」（1999年、489頁、59,663,742 バイト） （PDF p100） — https://www.nasa.gov/wp-content/uploads/2023/04/sp-4221.pdf#page=100
13. NASA SP-4221 Heppenheimer, T. A.「The Space Shuttle Decision: NASA's Search for a Reusable Space Vehicle」（1999年、489頁、59,663,742 バイト） （PDF p375） — https://www.nasa.gov/wp-content/uploads/2023/04/sp-4221.pdf#page=375
14. NASA SP-4221 Heppenheimer, T. A.「The Space Shuttle Decision: NASA's Search for a Reusable Space Vehicle」（1999年、489頁、59,663,742 バイト） （PDF p379） — https://www.nasa.gov/wp-content/uploads/2023/04/sp-4221.pdf#page=379
15. OMG Systems Modeling Language (SysML) Version 2.0 仕様 — https://www.omg.org/spec/SysML/2.0
16. SysML v2 Release（OMG SysML v2 Pilot Implementation の公開リリース・標準ライブラリ） — https://github.com/Systems-Modeling/SysML-v2-Release

## 10. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-28 | 初版作成（設計の決定 19件〔1960年代 6・1970年代 8・年不明 5〕、機能ブロック 6、図282〜284、SysML v2 テキスト） |
