# キャビン大気の動的モデル定義書（CO2・圧力と漏れ・熱と湿度）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-ATM-ORB-001 |
| 表題 | キャビン大気の動的モデル定義書（CO2・圧力と漏れ・熱と湿度） |
| 版・日付 | 初版（Rev. -）／2026-10-08 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-PAR-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図163 CO2 分圧の時間変化（LiOH・RCRS・除去なし）・図164 乗員室の全圧・酸素分圧（穴の減圧・PPO2 の周期）・図165 乗員室の温度と湿度（定常・冷却の喪失） |

## 1. 目的

乗員室の大気（CO2 分圧、全圧と酸素分圧、温度と湿度）が時間とともにどう変わるかを、物質収支・熱収支の式で示す。消耗品の静的な収支（SSD-PAR-ORB-001）・日ごとの残量（SSD-PRF-ORB-001）・環境曝露の基準と実績（SSD-EXP-ORB-001）を補い、LiOH の交換の仕方・RCRS・漏れと穴の大きさ・冷却の喪失が、乗員の曝露と運用の限界（飛行規則）にどう効くかを示す。機器の接続と流れは内部ブロック図（図159〜161）にある。全体は図163〜165 に示す。

## 2. 書き方

パラメータ（ATM-P）は一次資料の値で、頁と照合語で示す。式（ATM-M）とシナリオの計算（ATM-S）は本書の計算で、資料が値を書かない係数（LiOH の破過の形、混合の係数の使い方、穴の流量係数、熱交換器の迂回の割合、有効な熱容量）は本書の判断・較正として補足に書いた。シナリオは 1分刻みで積分した。実績との比較（ATM-V）は飛行の報告の値と並べ、基準・限界との照合（ATM-E）は 3001 の照合表の行と飛行規則の値に照らした。照合表（SSD-HSI-SYS-001）の判定は変えない（モデルの値は本書の評価として示す）。

## 3. パラメータ

モデルの入力 20件を示す。「使う値」は本書のモデルで使った値、「資料の値」は資料の書き方（範囲・食い違いを含む）である。

| ID | 量 | 使う値 | 単位 | 資料の値 | 根拠・補足 |
|---|---|---|---|---|---|
| ATM-P01 | 乗員室の容積 | 2475 | ft3 | 2,475（資料により 2,300・2,325） | 乗員室の容積は 2,475 立方フィートで、ペイロードベイの外部エアロックを加えると合わせて約 2,703 立方フィートになる。EVA の前のプリブリーズを楽にするため、乗員室を 10.2 psia に減圧することがある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/359）165分の非常帰還の要求は、直接 O2 のオリフィスから断続的に 17 lbm/hr、キャビンレギュレータから断続的に 23 lbm/hr の O2 を流し、初めの乗員室圧 14.7 psia、PPO2 3.20 psia、温度 70°F を仮定する。8 psia の維持に要る N2 は、Orb + Int Arlk（2475 ft3）で 85.2 lbm、Orb + Ext Arlk（2703 ft3）で 80.4 lbm である。N2 タンクの計測誤差は 1 タンク 4.05 lbm（RSS）、残量は 1 タンク 6.5 lbm である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1959）ARS の説明は乗員室の容積を 2,300 立方フィート、空気の流量を毎分 330 立方フィートとし、乗員室の空気は約7分で1回入れ替わるとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369）同じ解析は、O2 の要求を代謝 450 Btu/hr で 0.0739 lb/人・時とし、乗員室の容積を 2325 立方フィートとする。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=11）与圧系の性能の表は、外部エアロックを含む乗員室の容積を 2475 ft3、外部エアロックの容積を 185 ft3、キャビン圧レギュレータの流量（100 psid、仕様）を 75 lb/hr、ECLSS の O2 の予算を 2.08 lb/人・日とする。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=55） 補足：A17-202 の表と SCOM 2.9 の値をとった。STS-1 の解析は 2,325、換気の計算は 2,300 を使う。 |
| ATM-P02 | 全圧（通常） | 14.7 | psia | 14.7（14.5〜14.9） | 与圧制御系は乗員室を通常 14.7 ± 0.2 psia に与圧し、平均で窒素80%（130 ポンド）・酸素20%（40 ポンド）の混合に保つ。酸素分圧は 2.95〜3.45 psi に自動で保ち、窒素分圧 11.5 psia を足して全圧 14.7 ± 0.2 psia にする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/360）14.7 psi キャビンレギュレータは乗員室圧を 14.7 ± 0.2 psia に制御して最大流量は 75〜125 lb/hr、8 psi 非常用レギュレータは 8 ± 0.2 psia に制御して最大流量は同じく 75〜125 lb/hr である。レギュレータは2段で、乗員室圧が 14.7 psia に近い小さな需要には低流量段（0〜0.75 lb/hr）、14.7 psia を大きく下回る大きな需要には高流量段（0.75〜少なくとも 75 lb/hr）が働く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/366） |
| ATM-P03 | 乗員室の空気の温度（質量の計算） | 75 | °F | STS-108 の軌道上の平均 75 | STS-108 の軌道上の乗員室の温度の平均は 75 °F、10.2 psia の間の最大は 76.6 °F（飛行前の予測 82 °F）で、湿度の平均は 32.0 パーセント、2日目の運動の時間（MET 01:01:40 ごろ）に最大 50 パーセントであった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=32） 補足：空気の質量（本書の計算 183.7 lb、1 psia あたり 12.50 lb）の計算に使う。 |
| ATM-P04 | 乗員1人の CO2 の生成 | 0.0882 | lb/man-hour | 0.0882（代謝 450 Btu/hr） | STS-1 の ECLSS 解析は、乗員全員が 450 Btu/hr の代謝率で働き続けるとし、CO2 の生成を 0.0882 lb/人・時、O2 の必要量を 0.0739 lb/人・時とした。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=11）STS-1 の解析は、2人の乗員が1交代で働き、全員が 450 Btu/hr の代謝率で働き続けると仮定した。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=9） 補足：24時間で 2.12 lb/人・日（ARS の性能の表の 2.11 とほぼ同じ）。 |
| ATM-P05 | LiOH キャニスタ1個の定格 | 48 | man-hours | 48（A17-157 の目安 約 50） | キャビンファンを出た約 1,400 lb/hr の空気のうち、ダクトのオリフィスが約 120 lb/hr ずつを2個の LiOH キャニスタへ流す。キャニスタは所定の計画で通常1日1〜2回交換し（大人数の乗員ではより頻繁に）、各キャニスタの定格は 48 人・時である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370）SCOM の ECLSS の目安は、LiOH キャニスタ1個がおよそ 48 人・時使えるとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/419）1979年の FOM の ARS の性能の表は、LiOH キャニスタの有効な寿命を 2 人・日とする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=58）A17-157 は、7.6 mmHg で2日分に要る LiOH キャニスタの数は乗員数に等しいことを目安とし、LiOH キャニスタ1個はおよそ 50 人・時の CO2 を除くとする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1952） 補足：本書の計算：48 × 0.0882 = 4.23 lb CO2 を容量 C とした。 |
| ATM-P06 | 各 LiOH キャニスタを通る空気の流量 | 120 | lb/hr | 120（2個並列） | キャビンファンを出た約 1,400 lb/hr の空気のうち、ダクトのオリフィスが約 120 lb/hr ずつを2個の LiOH キャニスタへ流す。キャニスタは所定の計画で通常1日1〜2回交換し（大人数の乗員ではより頻繁に）、各キャニスタの定格は 48 人・時である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370）1979年の FOM は、オリフィスが各 LiOH キャニスタへ 120 lb/hr の空気を通し、CO2 1 lb あたり 875 Btu の熱が出るとし、PPCO2 が 5.0 mmHg に達したとき、または乗員4人ならほぼ12時間ごとに1個のキャニスタを交換するとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=35） |
| ATM-P07 | 装着部の混合の係数 | 0.63 | — | 63 percent | A15-203 は、通常のキャビンファンの流量で各 ATCO キャニスタ（LiOH キャニスタの装着部に入れる）が乗員室の大気の体積分を 90 分ごとに通し、混合が理想的でないため、LiOH キャニスタの装着部を体積分が1回通るごとに乗員室の空気の分子の 63 パーセントだけが床を通るとする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1874） 補足：装着部を体積分が1回通るごとに床を通る分子の割合（A15-203）。本書はキャニスタ・RCRS の除去の流量に掛けた（本書の判断）。 |
| ATM-P08 | RCRS を通る空気の流量 | 110 | lb/hr | 110（乗員 5〜7）／72（乗員 4） | RCRS は乗員7人までの 10〜16 日の飛行を可能にし、流量制御弁は打上げ前に乗員数「4」か「5〜7」に設定して RCRS を通る空気をそれぞれ 72 または 110 lb/hr とする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371）RCRS のファンの下流の2位置の弁は、乗員 4〜5人用と 6〜7人用の流量に合わせてあり、打上げ前に設定する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=217）RCRS は ARS の空気の一部をキャビンファンの上流から引いて CO2 を除き、ARS の全流量の約 6 パーセントが RCRS を通る。重量と ISS への短い飛行のため OV-105 から RCRS は取り外された。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=213） 補足：RCRS の除去の容量は資料に無いので、ベッドの効率を 1 とした（本書の判断）。 |
| ATM-P09 | 乗員1人の O2 の消費 | 1.76 | lb/人・日 | 1.76（予算 2.08） | 酸素系は乗員の消費と通常の乗員室の漏れの補給の酸素を与える。乗員1人は平均で1日 1.76 ポンドの酸素を使い、典型的な7人の乗員では、乗員室のガスの宇宙への通常の損失と代謝で1日に約 6 ポンドの窒素と 14 ポンドの酸素を使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/360）与圧系の性能の表は、外部エアロックを含む乗員室の容積を 2475 ft3、外部エアロックの容積を 185 ft3、キャビン圧レギュレータの流量（100 psid、仕様）を 75 lb/hr、ECLSS の O2 の予算を 2.08 lb/人・日とする。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=55）同じ解析は、O2 の要求を代謝 450 Btu/hr で 0.0739 lb/人・時とし、乗員室の容積を 2325 立方フィートとする。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=11）STS-1 では、軌道上の構成にしたとき乗員室圧はまだ 14.5 のレギュレータの設定点より上で流れは無く、103:02:43 G.m.t. に系統1のレギュレータが開いて酸素がゆっくり流れ始めた。それまでの圧力の低下から求めた乗員室の漏れの率は 2.58 lb/日で、地上の試験の 6.53 lb/日（差圧 3.2 psi）より小さく、同じ期間の酸素分圧の低下の解析から乗員の代謝の使用は 1.80 lb/人/日であった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=57） |
| ATM-P10 | O2 ブリードオリフィスの流量 | 0.36 | lb/hr | 0.36（6〜7人） | 代謝の補給の O2 は、軌道上で LEH O2 8 の QD に差すブリードオリフィスで与え、オリフィスは4〜5人の乗員で 0.24 lbm/hr、6〜7人の乗員で 0.36 lbm/hr の O2 を流す大きさである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/362）O2 ブリードオリフィスは乗員数に合わせた大きさで、乗員の代謝の O2 の使用を直接乗員室へ流して補い、乗員室圧が 14.7 psia を超えてレギュレータが流れないときも PPO2 を安定させる。PCS は飛行の半ばで系統2に切り替える。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=47）飛行規則 A17-256 は、PPO2 が 3.20 psia 未満なら飛行1日目の就寝前に O2 ブリードオリフィスを付け、再突入の日の軌道離脱準備で外すとし、オリフィスは 14.7 レギュレータを低流量域に保って WCS の使用や O2/N2 の切替による O2/N2 FLOW HIGH の誤警報をなくす。上昇の LES の流れで PPO2 が高いと、取り付けは2日目まで遅らせる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1971） |
| ATM-P11 | PPO2 の制御の範囲（14.7 psia） | 2.95〜3.45 | psia | 2.95〜3.45 | 与圧制御系は乗員室を通常 14.7 ± 0.2 psia に与圧し、平均で窒素80%（130 ポンド）・酸素20%（40 ポンド）の混合に保つ。酸素分圧は 2.95〜3.45 psi に自動で保ち、窒素分圧 11.5 psia を足して全圧 14.7 ± 0.2 psia にする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/360）PPO2 CNTLR スイッチは PPO2 を通常の範囲（14.7 psi で 2.95〜3.45）と非常の範囲（8 psi で 1.95〜2.45）に制御するよう設計されたが、EMER 位置は手順上使わない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/367） |
| ATM-P12 | 乗員室の漏れの率（実績） | 2.58 | lb/day | 2.58（STS-1） | STS-1 では、軌道上の構成にしたとき乗員室圧はまだ 14.5 のレギュレータの設定点より上で流れは無く、103:02:43 G.m.t. に系統1のレギュレータが開いて酸素がゆっくり流れ始めた。それまでの圧力の低下から求めた乗員室の漏れの率は 2.58 lb/日で、地上の試験の 6.53 lb/日（差圧 3.2 psi）より小さく、同じ期間の酸素分圧の低下の解析から乗員の代謝の使用は 1.80 lb/人/日であった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=57） 補足：STS-1 の解析の仮定は 8.2 lb/日（BJP-P13）、湿ったごみの区画のベントは約 3 lb/日（BJP-P17）。 |
| ATM-P13 | 8 psia 非常用レギュレータの最大流量 | 125 | lb/hr | 125（実際の平均、仕様 75） | 14.7 psi キャビンレギュレータは乗員室圧を 14.7 ± 0.2 psia に制御して最大流量は 75〜125 lb/hr、8 psi 非常用レギュレータは 8 ± 0.2 psia に制御して最大流量は同じく 75〜125 lb/hr である。レギュレータは2段で、乗員室圧が 14.7 psia に近い小さな需要には低流量段（0〜0.75 lb/hr）、14.7 psia を大きく下回る大きな需要には高流量段（0.75〜少なくとも 75 lb/hr）が働く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/366）飛行規則 A17-258 は、Tmax を N2 の枯渇前に着陸できる最も遅い軌道離脱 TIG とし、大気での再与圧までの最低の乗員室圧を 8 psia とする。Tmax の予測は 8 psia 非常用レギュレータの最大流量を1個 125 lb/hr の N2（仕様の最大は 75 lb/hr だが OMRSD の試験の実際の平均は約 125 lb/hr）、TIG から接地まで60分、O2 を 2.2〜3.0 psia に管理すると仮定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1972） |
| ATM-P14 | 乗員1人の顕熱 | 402.5 | Btu/man-hr | 402.5（最大、範囲 270〜402.5） | 1972年の EC/LSS の研究の設計の要求（付録）は、乗員1人の代謝熱を平均 434 Btu/man-hr、範囲 300〜647、顕熱を範囲 270〜402.5、潜熱を範囲 30〜244.5 とする。（出典: https://ntrs.nasa.gov/api/citations/19720017476/downloads/19720017476.pdf#page=409）同研究の表14（設計の要求）は、乗員1人の代謝熱を 647 Btu/hr（最大）、顕熱 402.5 Btu/hr（最大）、潜熱 244.5 Btu/hr（最大、65 °F の設計点）とし、乗員室の露点を 40〜57 °F（65 °F の設計点で最大 53 °F）、最小の換気流量を 400 cfm とする。（出典: https://ntrs.nasa.gov/api/citations/19720017476/downloads/19720017476.pdf#page=129） 補足：1972年の設計の研究の値で、実機の設計値ではない。 |
| ATM-P15 | 乗員1人の潜熱 | 244.5 | Btu/man-hr | 244.5（最大、範囲 30〜244.5） | 1972年の EC/LSS の研究の設計の要求（付録）は、乗員1人の代謝熱を平均 434 Btu/man-hr、範囲 300〜647、顕熱を範囲 270〜402.5、潜熱を範囲 30〜244.5 とする。（出典: https://ntrs.nasa.gov/api/citations/19720017476/downloads/19720017476.pdf#page=409）同研究の表14（設計の要求）は、乗員1人の代謝熱を 647 Btu/hr（最大）、顕熱 402.5 Btu/hr（最大）、潜熱 244.5 Btu/hr（最大、65 °F の設計点）とし、乗員室の露点を 40〜57 °F（65 °F の設計点で最大 53 °F）、最小の換気流量を 400 cfm とする。（出典: https://ntrs.nasa.gov/api/citations/19720017476/downloads/19720017476.pdf#page=129） 補足：1972年の設計の研究の値。本書の計算：244.5 ÷ 1050 = 0.233 lb/hr の水蒸気。 |
| ATM-P16 | 空冷の電子機器の熱負荷 | 1700 | Btu/hr | 1,700（設計の研究） | 同表14は、機体の熱負荷として乗員室の壁の熱負荷（再突入を除く）、空冷の電子機器の熱負荷 1700 Btu/hr、乗員室のコールドプレート冷却の電子機器の熱負荷 17,800 + 3,000 Btu/hr を挙げる（壁の熱負荷の値は OCR で「5000 f 4500 Btu/hr」）。（出典: https://ntrs.nasa.gov/api/citations/19720017476/downloads/19720017476.pdf#page=129） |
| ATM-P17 | キャビンファンの空気流量 | 1400 | lb/hr | 1,400（1,380〜1,575） | ARS の性能の表は、乗員室の風速 15〜40 ft/min（公称 25 ft/min）、乗員室の空気流量 1400 lb/hr、公称の露点の範囲 39〜61 °F、湿分分離器の入口流量（空気と水）37〜41 lb/hr、出口は空気 37 lb/hr・水 0〜4 lb/hr、LiOH が除く CO2 2.11 lb/man/day とする。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=94）同解析は乗員室の容積を 2325 立方フィート、キャビンファンの空気流を 1380 lb/hr（14.7 psia）とし、IMU に 156 lb/hr、乗員室のアビオニクスに 1140 lb/hr（うち 240 lb/hr は廃棄物処理区画）を通し、キャビン熱交換器を迂回する空気流の最大を 71.4 パーセントとした。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=11）A17-101 は差圧 4.2 inch H2O で流量は約 1575 lb/hr、適切な冷却に要る最小の流量は 1400 lb/hr（差圧 6.8 inch H2O）とする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1929） |
| ATM-P18 | キャビン熱交換器を迂回する空気の割合 | 0.4 | — | 0〜70 % | CABIN TEMP 回転スイッチは空気流の 0〜70 パーセントをキャビン熱交換器の周りへ迂回させ、full COOL は約 65 °F、full WARM は約 80 °F に当たる。上昇・再突入は比較的暖かい段階なので full COOL にする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/374）同解析は乗員室の容積を 2325 立方フィート、キャビンファンの空気流を 1380 lb/hr（14.7 psia）とし、IMU に 156 lb/hr、乗員室のアビオニクスに 1140 lb/hr（うち 240 lb/hr は廃棄物処理区画）を通し、キャビン熱交換器を迂回する空気流の最大を 71.4 パーセントとした。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=11） 補足：本書は 40 % をとった（本書の判断）。 |
| ATM-P19 | キャビン熱交換器の出口の空気の温度 | 50 | °F | 46〜60（STS-1 の実績） | STS-1 で待機の水ループ1を4時間ごとに回す間（2ループ運転）、キャビン熱交換器入口の水の温度は 42 °F から 58 °F に、出口の空気の温度は 52 °F から 60 °F に上がった。インターチェンジャのバイパスを 46 から 77 パーセントにすると流量は 1038 から 712 lb/hr に減り、熱交換器の効率を下げて出口の空気の温度を上げた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=55）STS-1 でバイパス弁を full cool に変えるとキャビン熱交換器の出口の空気の温度は約 46 °F から 49 °F になった。軌道離脱から接地までの乗員室の温度の読みは 77〜80 °F で、接地からハッチを開けるまで 80 °F、湿度は 31 から 36 パーセントに上がった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=56） 補足：本書は 50 °F をとった（本書の判断）。 |
| ATM-P20 | LiOH の反応水 | 0.409 | lb/lb CO2 | 0.409（1979年の FOM は正味ゼロ） | 同解析は LiOH キャニスタの反応水を吸収した CO2 1 lb あたり 0.409 lb、反応熱を 876 Btu/lb とし、空気流の 8.6 パーセントを各キャニスタに通すとした。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=11）同研究は、LiOH は CO2 を除くときに水を生じて湿度制御の機器の潜熱負荷を増やすとする。（出典: https://ntrs.nasa.gov/api/citations/19720017476/downloads/19720017476.pdf#page=124）1979年の FOM は、各コントローラが給気と還気のダクトの温度を感じて乗員の選んだ 65〜80 °F に制御するとし、LiOH の系は無水で正味の水の出入りはゼロで、CO2 1 lb あたり 875 Btu の熱を出すとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=35） |

## 4. モデル（式）

式 7件を示す（本書の計算）。

| ID | 名前 | 式 | 補足 |
|---|---|---|---|
| ATM-M01 | CO2 の物質収支 | dm/dt = n·g − Σ ηᵢ·f·Q·m/M　（m：CO2 の質量、M：空気の質量、n：乗員数、g：ATM-P04、f：ATM-P07、Q：ATM-P06 または ATM-P08） | ppCO2 [mmHg] = m/M × 28.97/44.01 × P × 760/14.696。 |
| ATM-M02 | LiOH の吸収と破過 | dLᵢ/dt = ηᵢ·f·Q·m/M、ηᵢ = 1（Lᵢ ≤ 0.75 C）、(C − Lᵢ)/(0.25 C)（それより上）　（C：ATM-P05 の 4.23 lb） | 破過の形（容量の 75 % から直線で効率が落ちる）は本書の判断（資料は「残りが減ると除去の速さが大きく落ちる」とだけ書く）。 |
| ATM-M03 | 全圧と漏れ | dP/dt = (F − ṁ)·P/M、等価 dP/dT = dP/dt × 14.7/P　（F：補給、ṁ：漏れの質量流量） | 空気の質量 M = P·V·28.97/(1545.35·T)。 |
| ATM-M04 | 穴の臨界流 | ṁ [lb/s] = 0.532·Cd·A·P/√T　（A：穴の面積 in²、P psia、T °R、Cd = 1） | Cd = 1 は流量の最も大きい側（本書の判断）。8 psia では非常用レギュレータが ATM-P13 まで補給する。 |
| ATM-M05 | 酸素分圧の収支 | dm_O2/dt = ブリード − 消費 − 漏れ·x_O2 ＋（O2 の補給の間）F、F = 消費 − ブリード ＋ 漏れ | 14.7 psi キャビンレギュレータが全圧を保ち、O2/N2 制御弁が PPO2 の下限で O2、上限で N2 の補給に切り替える。 |
| ATM-M06 | 乗員室の熱収支 | T = T_out ＋ Q/(ṁ_fan·(1 − b)·c_p)、冷却の喪失：dT/dt = Q/C_eff　（Q：n·顕熱 ＋ 機器、b：ATM-P18） | C_eff（構造・機器を含む有効な熱容量）は、資料の「2つの水ループを失うと2時間以内に約 90 °F」から本書が較正した（C_eff = Q × 2 h ÷ 15 °F）。 |
| ATM-M07 | 水蒸気の収支 | dW/dt = (n·潜熱/1050 ＋ 0.409·n·g)/M − 凝縮　（W：湿度比） | 定常では熱交換器の出口の温度で凝縮し、露点 ≈ T_out（本書の判断）。冷却の喪失では凝縮が無い。 |

## 5. シナリオと結果

シナリオ 10件と計算の結果を示す（本書の計算）。

| ID | シナリオ | 式 | 結果 | 補足 |
|---|---|---|---|---|
| ATM-S01 | CO2：乗員7人、LiOH 2個を12時間ごとに同時に交換（48時間） | ATM-M01・M02 | 最小 2.04・最大 2.71 mmHg、1時間平均の最大 2.58 mmHg | 各キャニスタは 12時間で 42 man-hours を受け持つ（定格 48 の 88 %）。交換の直前に破過で PPCO2 が上がる。 |
| ATM-S02 | CO2：乗員7人、1個ずつ6時間ごとに交互に交換 | ATM-M01・M02 | 最小 2.04・最大 2.37 mmHg、1時間平均の最大 2.31 mmHg | 新しいキャニスタが使用済みを補うので、同時の交換より山が低い（資料の「新品と組み合わせる」運用）。 |
| ATM-S03 | CO2：乗員2人（STS-1 の構成）、LiOH 2個 | ATM-M01・M02 | 定常 0.58 mmHg | キャニスタは定格の 25 % しか使わず、破過しない。 |
| ATM-S04 | CO2：乗員7人、RCRS だけ（LiOH なし） | ATM-M01 | 定常 4.46 mmHg | ベッドの効率 1 の上限の見積り（本書の判断）。 |
| ATM-S05 | CO2：乗員7人、除去なし（上昇・再突入・着陸後）、ATM-S01 の値から | ATM-M01 | 上がる速さ 1.68 mmHg/時、7.6 mmHg まで 199 分 | LiOH を外す区間・ハッチを開けるまでの上がり方。 |
| ATM-S06 | 全圧：一定の漏れの dP/dt | ATM-M03 | 2.58 lb/日 → -0.00014 psi/分、8.2 lb/日 → -0.00046 psi/分、3 lb/hr → -0.0040 psi/分 | 空気の質量 1 psia あたり 12.50 lb（本書の計算）。 |
| ATM-S07 | 全圧：穴の減圧（直径 0.1〜1.0 in、8 psia 非常用レギュレータ1個） | ATM-M03・M04 | 0.1 in：初めの漏れ 10 lb/hr・等価 dP/dT -0.013 psi/分・12.5 psia まで —・8 psia まで —・3時間後 12.57 psia、0.25 in：初めの漏れ 60 lb/hr・等価 dP/dT -0.080 psi/分・12.5 psia まで 30 分・8 psia まで 112 分・3時間後 7.99 psia、0.45 in：初めの漏れ 194 lb/hr・等価 dP/dT -0.258 psi/分・12.5 psia まで 9 分・8 psia まで 34 分・3時間後 7.97 psia、0.75 in：初めの漏れ 538 lb/hr・等価 dP/dT -0.717 psi/分・12.5 psia まで 4 分・8 psia まで 12 分・3時間後 3.42 psia、1.0 in：初めの漏れ 956 lb/hr・等価 dP/dT -1.275 psi/分・12.5 psia まで 2 分・8 psia まで 7 分・3時間後 1.92 psia | 8 psia を保てる最大の穴は 1個で 0.49 in（125 lb/hr）、2個で 0.69 in（250 lb/hr）。 |
| ATM-S08 | 酸素分圧：乗員7人、14.7 psia、漏れ 2.58 lb/日（240時間） | ATM-M05 | PPO2 は 2.95〜3.45 psia を周期 約 123 時間で往復（O2 の補給で上がる 85 時間・N2 の補給で下がる 39 時間） | 消費 0.513 lb/hr に対しブリード 0.36 lb/hr なので、PPO2 は N2 の補給の間に下がる。 |
| ATM-S09 | 熱・湿度：乗員7人の定常（迂回 40 %、出口 50 °F） | ATM-M06・M07 | 熱負荷 4,518 Btu/hr、乗員室 72.4 °F（22.4 °C）、露点 ≈ 50 °F、相対湿度 45 % | — |
| ATM-S10 | 熱・湿度：2つの水ループの喪失（乗員7人、75 °F・40 % から） | ATM-M06・M07 | 2時間後 90.0 °F・90 %、95 °F まで 160 分、C_eff 602 Btu/°F（本書の較正） | 水蒸気の生成 1.88 lb/hr（乗員の潜熱と LiOH の反応水）。 |

## 6. 実績との比較

モデルの結果と飛行の実績・資料の記述 7件を比べる。

| ID | シナリオ | モデル | 実績・資料 | 根拠 | 比べた結果 |
|---|---|---|---|---|---|
| ATM-V01 | ATM-S03 | モデル 0.58 mmHg | STS-1 の軌道上 0.4〜1.0 mmHg（装着の直後・交換の前・両方を外したとき） | — | 合う |
| ATM-V02 | ATM-S04 | モデル 4.46 mmHg | RCRS だけの STS-80 の最大 4.38 mmHg 未満、STS-62 の 1.12〜3.92 mmHg、STS-73 の最大 4.59 mmHg 未満 | — | 合う（上限の見積り） |
| ATM-V03 | ATM-S01 | モデル 2.04〜2.71 mmHg | STS-125（7人）の飛行日1 の最大 5.64、後半の最大 4.48 mmHg | — | 実績が高い（ドッキング中の ISS との混合・交換の時刻・センサの位置はモデルに無い） |
| ATM-V04 | ATM-S06 | 3 lb/hr → -0.0040 psi/分 | 故障処置の手順の目安：約 3 lb/hr ↔ dP/dT 約 −0.004 psi/分 | — | 合う |
| ATM-V05 | ATM-S07 | 8 psia を保てる漏れ 125 lb/hr（1個）・250 lb/hr（2個）、穴 0.49・0.69 in | 8 psia 未満で安定するには漏れが 250 lb/hr を超える必要がある | — | 合う |
| ATM-V06 | ATM-S09 | モデル 72.4 °F・45 % | STS-108 の軌道上の平均 75 °F、湿度の飛行の平均 32 %（運動中の最大 50 %） | — | 温度は合う。湿度はモデルが高い（凝縮の温度を熱交換器の出口とみなしたため） |
| ATM-V07 | ATM-S10 | 2時間後 90.0 °F・90 % | 2つの水ループを失うと2時間以内に約 90 °F・相対湿度 100 % | — | 温度は較正に使った（独立の比較ではない）。湿度は 2時間後 90 % |

## 7. 基準・限界との照合

基準（3001 の照合表の行）と運用の限界（飛行規則）に、モデルの値 8件を照らす。

| ID | 量 | 基準の出どころ | 基準 | モデル | 判定 | 根拠 |
|---|---|---|---|---|---|---|
| ATM-E01 | CO2 分圧の1時間平均（7人・LiOH） | HSI-102 | ≤ 3 mmHg（1時間平均） | ATM-S01 2.58・ATM-S02 2.31 mmHg | 満たす | — |
| ATM-E02 | CO2 分圧の1時間平均（7人・RCRS だけ） | HSI-102 | ≤ 3 mmHg（1時間平均） | ATM-S04 4.46 mmHg | 満たさない | — |
| ATM-E03 | CO2 分圧の長期の最大（除去なし） | A13-52A.2 | ≤ 7.6 mmHg | ATM-S05：199 分で 7.6 mmHg に達する | 時間で決まる | — |
| ATM-E04 | 漏れで 8 psia を保てる穴（非常用レギュレータ1個） | A13-51 | 乗員室圧 ≥ 8.0 psia | 直径 0.49 in まで（2個で 0.69 in） | — | — |
| ATM-E05 | 上昇中の即時の完全アボートの漏れ | A17-201 | 等価 dP/dT 0.15 psia/分 | 漏れ 112 lb/hr、直径 0.34 in の穴に当たる | — | — |
| ATM-E06 | 吸気の酸素分圧（PIO2） | HSI-101 | 目標 145〜155 mmHg | ATM-S08 の PPO2 2.95〜3.45 psia → PIO2 143〜167 mmHg | 一部満たさない（下限側・上限側で範囲の外） | — |
| ATM-E07 | 乗員室の温度・相対湿度（定常） | HSI-108 | 18〜27 °C、25〜75 % | ATM-S09 22.4 °C・45 % | 満たす | — |
| ATM-E08 | 冷却の喪失の大気の制御の喪失 | A17-102A | 乗員室 95 °F | ATM-S10：160 分で 95 °F に達する | 時間で決まる | — |

## 8. 照合表の行とモデル

照合表（Vol. 2 6章ほか）の行 24件について、本書のモデル・資料から出せる値を示す。照合表の判定は変えない。

| 照合表の行 | 要求の要旨 | 基準 | 照合表の判定 | 本書のモデル・資料から出せる値 | 本書の照合 |
|---|---|---|---|---|---|
| HSI-099 | 環境・スーツの監視データを時間の傾向の解析に使える形式で提供する（[V2 6001]）。 | —（値なし） | データ不足 | 実績の PPCO2 の点（STS-1 の交換ごとの値、STS-3 の 6.4→1.9→3.0→8.4 mm Hg、STS-108 の区間ごとの最大）は傾向の例になるが、データの形式は資料に無い。 バックアップ dP/dT は5秒ごとに30秒前の乗員室圧と比べて計算する（BJP-027）。飛行報告の時刻つきの値（BJP-068・BJP-076）は傾向の解析の例になるが、データの形式・標本化の周期の要求の判定には使えない（本書の判断）。 Mission Report の時系列（STS-108 の温度・湿度の時刻つきの値、BJT-A15〜A26）はテレメトリから傾向を作れたことを示すが、記録の形式は資料に無い。 | — |
| HSI-100 | 乗員室の大気は希釈ガスを30%以上含む。 | ≥30%（希釈ガス） | 適合 | 14.7 psia で窒素約80%（BJP-002）。モデルで O2 濃度の上限 30%（10.2 psia）・40%（8.0 psia）を使うと希釈ガスは 70%・60% 以上（本書の計算、BJP-043・BJP-044）。8 psia の運用でも基準を満たすことを時系列で示せる。 | — |
| HSI-101 | 吸気の酸素分圧（PIO2）を表 6.2-1 の範囲に保つ。 | PIO2 目標 145〜155 mmHg、上限 356 mmHg（無期限）、下限 127 mmHg（1時間平均、絶対 122 mmHg） | 不適合 | 本書の計算：PIO2 =（PB − 47 mmHg）× PPO2/PB。10.2 psia の運用の PPO2 2.55〜2.80 psia（BJP-049）は PIO2 約 120〜132 mmHg で、下限の 2.55 は絶対の下限 122 mmHg を約 2 mmHg 下回る。A13-51 の最小（10.2 psia で 2.35）は約 111 mmHg、8.0 psia で 2.38 は約 109 mmHg。PPO2 の時系列（減圧・漏れ・8 psia の運用）から1時間平均の PIO2 を求めれば、判定を時間で示せる。 | ATM-E06 |
| HSI-102 | 居住区画の CO2 分圧の1時間平均を 3 mmHg 以下に保つ（[V2 6004]）。 | ≤3 mmHg（1時間平均） | 不適合 | 乗員数・生成率（BJC-P01〜P06）・LiOH の流量と交換（BJC-P07・P10）・容積（BJC-P13）から PPCO2 の時間変化を計算すれば1時間平均を求められる。実績の時系列は STS-1（0.4〜5.8 mmHg）・STS-3（最大 8.4）・STS-65（平均 2.3）・STS-108（4.69〜6.0）など（BJC-A01〜A20）。運用の限界 7.6 mmHg（BJC-L01）は基準を 4.6 mmHg 上回る。 | ATM-E01・ATM-E02 |
| HSI-103 | 乗員がさらされる全圧を 5 psia を超え 15.0 psia 以下に保つ（無期限の暴露）。 | 5 psia < 全圧 ≤ 15.0 psia | 適合 | 通常 14.5〜14.9 psia（BJP-002）、10.2 psia の運用 10.0〜10.4（BJP-049）、非常 8 ± 0.2（BJP-008）。一時の値：打上げ前の気密点検 16.7 psia（BJP-013）、STS-1 の打上げで 15.04 psia（既存 PRO-04）。正圧逃し弁は 15.5 psid で開く（BJP-012）。 | — |
| HSI-104 | 1.0 psi を超える圧力の変化では、機内の全圧の変化率を 13.5 psi/min 以下にする。 | ≤13.5 psi/min（>1.0 psi の変化） | データ不足 | 一次資料の実績：STS-108 の 14.7→10.2 psia の減圧は45分（平均 0.10 psi/分、本書の計算、BJP-076）、エアロックの EVA の減圧の予想は 2.8 psia/分（BJP-077）で、どちらも基準内。本書の計算：ハッチの均圧弁（NORM 240・EMER 1278 lb/hr、14.5 psid、BJP-032）で外部エアロック（228 ft3）を再与圧すると初めの変化率は約 3.4 psi/分（NORM）と約 18 psi/分（EMER、基準を超える。空気 228 ft3・70°F 約 17 lb として計算。エアロックの中の乗員は EMU を着ている）。照合表の参考のとおり HIDH は通常 0.10 psi/秒・非常 1.00 psi/秒とする（二次資料）。 | — |
| HSI-105 | 計画ごとに DCS の対策を定め、地上の試験で DCS の確率 4% 未満（95% の信頼度）を示す。 | DCS の確率 <4%（95% の信頼度） | データ不足 | A13-51 は 14.7 から 8 psia への減圧を R 値 1.50 とし、四肢の減圧症の危険 10% 未満・動けなくなる減圧症 2% 未満とする（BJP-053）。信頼度は書かれず、基準とは比べられない（本書の判断）。モデルの減圧の時系列は R 値の計算に使える。 | — |
| HSI-106 | 指令による圧力の変化中、乗員の停止の指示から 1 psi 以内で止め、その後に加圧・減圧を選べる。 | 停止の指示から 1 psi 以内で停止 | データ不足 | 10.2 psia の減圧は乗員が減圧弁を手で操作し、60秒ごとに CABIN P を記録して弁を切り替える（BJP-061）。STS-108 の平均 0.10 psi/分（BJP-076）なら60秒の間の変化は約 0.1 psi（本書の計算）で、1 psi より十分小さい。止めた後に N2・O2 で加圧できる（BJP-062）。 | — |
| HSI-107 | DCS を治療する能力を持つ。 | —（値なし） | 適合 | モデルに関わる値：10.2 から 14.7 psia への再与圧の N2 59.9 lbm（Orb + Ext Arlk、BJP-050）と、A17-304 の N2 45 lb・O2 11 lb（BJP-051）。 | — |
| HSI-108 | 乗員室の湿度・温度を図 6.2-2 の運用の限界の内に保つ（スーツ・上昇・再突入・着陸・着陸後を除く）。 | 18〜27 °C、25〜75 %（図 6.2-2 の両端） | データ不足 | 実績の温度・湿度：STS-1 軌道上 75〜83 °F・16〜40 %、STS-46 最大 85.5 °F・67.5 %、STS-54 最大 80 °F・56 %、STS-108 平均 75 °F・32 %（最大 50 %）。照合表の「実績の記録が無い」を埋められる。STS-1 の 83 °F・STS-46 の 85.5 °F は 27 °C を超え、STS-1 の 16 % は 25 % を下回る（センサが高めに偏る点に注意、BJT-B09）。 | ATM-E07 |
| HSI-109 | 通常の運用で居住区画の湿度・温度を図 6.2-3 の性能の範囲に到達できる。 | 20〜25 °C、30〜60 % | 適合 | 選べる温度 65〜80 °F と通常の湿度 30〜65 %（BJT-L03・L04）。実績の平均 STS-108 の 75 °F（23.9 °C）・32 % は範囲の内。 | — |
| HSI-110 | 打上げ前・上昇・再突入・着陸後などで乗員の蓄熱を 4.7 kJ/kg と −4.1 kJ/kg の間に保つ。 | 4.7 kJ/kg > ΔQ > −4.1 kJ/kg | データ不足 | 蓄熱の解析は無いが、モデルの入力に使える値：乗員の代謝熱（BJT-P01・P03〜P06）、再突入・着陸の温度の上限 75 °F（BJT-L02）、ICU の除熱 340 Btu/hr、着陸後の乗員室の温度（STS-1 80 °F、STS-108 76.9〜77.7 °F）。 | — |
| HSI-111 | 着陸後の通常の運用で相対湿度を表 6.2-2 の範囲に抑える。 | 25〜75 % は無期限など | データ不足 | 着陸後の湿度の実績：STS-1 接地 31 % → ハッチ開 36 %（BJT-A10）、STS-108 車輪停止の 8分30秒後に最大 46.4 %（BJT-A25）。どちらも 25〜75 % の内で、照合表の「値が無い」を埋められる。 | — |
| HSI-112 | 居住区画の温度の設定点を 0.5 °C 以下の刻みで選べ、設定の誤差を ±1.5 °C とする。 | 刻み ≤0.5 °C、誤差 ±1.5 °C | データ不足 | Orbit Ops Checklist の操作ごとの期待変化は 1〜9 degF（BJT-052）で、手動のピン止めは4位置。センサは 7〜11 °F 高く偏る（BJT-045）。1972年の設計の研究は「選んだ温度に対する制御の許容差」の項目を置く（BJT-018、値は OCR で読みにくい）。実機の刻み・誤差の値は資料に無い。 | — |
| HSI-113 | 居住区画の温度を 1 °C/時以上の速さで変えられる。 | ≥1 °C/時 | データ不足 | 弁の全行程は最大4分（BJT-P24）。実績の上昇率の候補：STS-108 で打上げ 77.7 °F → 3時間23分で 83.8 °F（本書の計算：約 1.8 °F/時 ≈ 1.0 °C/時）。ただしこれは制御による変化ではない。 | — |
| HSI-114 | 全圧・湿度・温度・換気・ppO2 を機内と遠隔の両方から制御できる。 | —（値なし） | データ不足 | 全圧と PPO2 は 14.7 psi キャビンレギュレータと O2/N2 コントローラの AUTO で自動に制御し（BJP-008・BJP-009）、10.2 psia では乗員が手で維持する（BJP-062）。遠隔（MCC）から指令で制御する記述は無い。 温度は乗員が CABIN TEMP とピン止めで操作し、MCC は手順・解析（Thermal Verification Analysis、FULL COOL の指示）で関わる（BJT-046）。地上からの指令による温度の制御は資料に無い。 | — |
| HSI-115 | 隔離できる居住区画ごとに全圧・湿度・温度・ppO2・ppCO2 を自動で記録する（[V2 6020]）。 | —（値なし） | データ不足 | Mission Report の PPCO2 の値（BJC-A01〜A20）はテレメトリから読んだ点で、記録の形式・周期は資料に無い。モデルの比較の点として使える。 乗員室圧・PPO2・dP/dT・O2/N2 の流量の計測は図161 の EQ-PCS-20 にある。記録の範囲の記述は無く、モデルからは判定に使える値は出ない（本書の判断）。 乗員室の湿度は CABIN AIR 信号調整器のトランスデューサで計り MCC だけが見る（照合表の EQ-ARSA-11 の記述）。Mission Report に湿度の時系列（STS-1・STS-108）があり、地上で記録されていたことを示す。 | — |
| HSI-116 | 運動の区域で増える O2 の消費と熱・CO2 などに環境制御が対応する（[V2 7041]）。 | —（値なし） | データ不足 | 運動中の CO2 の出力 109.90×10^-4 lbm/min（HIDH、BJC-P05）を生成の入力にすれば、LiOH 2個（各 120 lb/hr）での PPCO2 の上がり方を計算できる。シャトルの運動中の実測は資料に無い。 STS-108 で運動の時間に湿度が平均 32 % から最大 50 % に上がった（BJT-A22）。後の時代の運動中の負荷は HIDH 表 6.2-10（BJT-069）。照合表の「運動中の値が無い」を埋められる。 | — |
| HSI-117 | 全圧・湿度・温度・ppO2・ppCO2 の実時間の値を機内と遠隔の乗員に表示する（[V2 6021]）。 | —（値なし） | 不適合 | PPCO2 は SPEC 66 に 0〜30 mm Hg で表示（BJC-045）。判定の理由は湿度で、CO2 のモデルは判定を変えない（本書の判断）。 全圧・PPO2・dP/dT・EQ dP/dT・O2 濃度は O1 の計器と SM SYS SUMM 1・SPEC 66 に表示する（BJP-027・BJP-023）。不適合の理由（湿度）は本担当の範囲の外。 温度は乗員室の温度センサ（偏りあり）とパネル O1 の熱交換器の出口温度。湿度は機内に表示しない（MCC のみ）。判定を変える新しい事実は無い。 | — |
| HSI-118 | 全圧・湿度・温度・ppO2・ppCO2 が安全の限界を外れたら機内と遠隔に警報を出す（[V2 6022]）。 | —（値なし） | 不適合 | PPCO2 の警報は SM アラート S66 CAB PPCO2（7.6 mmHg 超、BJC-L03）。モデルの PPCO2 がこの値を超える時刻を警報の発生として示せる。 全圧：CABIN ATM 13.76〜15.36 psia（CW-06、BJP-018）、dP/dT −0.08 psi/分のクラス1と −0.12 psi/分のクラス3（BJP-017）、10.2 psia の運用の上限 10.6（BJP-049）。PPO2：2.7〜3.6 psia（BJP-018）。モデルの時系列でこれらの限界を超える時刻を示せる。 温度の警報は熱交換器の出口 145 °F（BJT-L06）。運用の限界（80・75・95 °F、BJT-L01・L02・L07）は飛行規則で MCC が監視するもので、C&W の警報ではない。 | — |
| HSI-122 | CO2 や熱のたまりができない換気を保つ（[V2 6107]）。 | （理由の欄）時間平均の風速 15〜120 ft/min | 適合 | 循環 330 ft3/min・約7分に1回の入れ替え（BJC-P12）と、LiOH の装着部の混合係数 63 パーセント（BJC-P20）を、区画を分けたモデルの混合の係数に使える。 風速 15〜40 ft/min（公称 25）、ファン 1400 lb/hr（BJT-P11・P14）。乗員室の温度が場所によって大きく違ったこと（DTO 664、BJT-045）は熱のたまりの候補の事実。 | — |
| HSI-126 | 異常時の運用でも ppO2・ppCO2・相対湿度を制御する（[V2 6108]）。 | —（値なし） | データ不足 | LiOH の交換の間はキャビンファンを止める（BJC-013）ので換気と除去が止まる時間の PPCO2 の上がり方を計算できる。ファンを止めた区画の上がり方の資料の値は Spacehab の 23.7 分（7.15→7.6 mmHg）・378 分（→15 mmHg）（BJC-B12）。 異常時の湿度の挙動：2つの水ループの喪失で 2時間以内に RH 100 %（BJT-048）、減圧・再与圧で湿分を捨てる。換気の無い場所の作業の記述は引き続き無い。 | — |
| HSI-276 | 各ハッチの各側に、与圧服の有無を問わずその側から操作できる手動の均圧の能力を与える。 | —（値なし） | データ不足 | エアロックの各ハッチに2個の均圧弁（NORM 240・EMER 1278 lb/hr、14.5 psid）がある（BJP-032）。側面ハッチの均圧の手段は本担当の資料にも無い。 | — |
| HSI-485 | 打上げ・再突入と客室の減圧の危険の高い運用で、乗員が十分な時間、与圧服を着られること。 | —（値なし） | 適合 | 上昇・再突入は与圧服（LES）を着て、漏れでは 8 psia で LES ヘルメットへ1人 2.5 lb O2/hr を送る（BJP-037）。0.45 インチの穴の165分の帰還の想定（BJP-038）は、服を着ている時間の見積りに使える。 | — |

## 9. 図

図163 は CO2 分圧の時間変化（LiOH の同時・交互の交換、乗員2人、RCRS だけ、除去なし）と、基準（3 mmHg の1時間平均）・運用の限界（7.6 mmHg）の線を示す。図164 は穴の大きさごとの減圧の曲線（8 psia 非常用レギュレータ1個）と、酸素分圧の周期（O2 と N2 の補給の切り替え）を示す。図165 は冷却の喪失のときの乗員室の温度と相対湿度の上がり方と、定常の熱収支を示す。

## 10. SysML v2 テキスト

同じ内容を SysML v2 のテキスト [SysML/SSD-ATM-ORB-001.sysml](../SysML/SSD-ATM-ORB-001.sysml) に示す。パラメータの part def（CabinAtmosphere、属性 20件）、式の constraint def 7件、乗員7人の定常に式を当てた part def（StandardCrewCabin、assert constraint）、シナリオの analysis def 10件（CO2・PPO2 の時間の AtmosphereProfile は SampledFunction の特化）、照合の requirement def 8件（照合表の 3001 の要求への #CriterionFrom）から成る。OMG SysML v2 Pilot Implementation 0.62.0（2026-08 リリース、標準ライブラリ付き）で読み込んで、構文・名前の解決・型の検査で誤り 0件・警告 0件を確かめた。式の数値の積分は Pilot では行わず、本書の計算の結果を属性に書いた。

## 11. 注記（出典間の相違・構成変更）

> **注記** 乗員室の容積は資料により 2,475（SCOM 2.9・A17-202）・2,300（SCOM の換気の計算）・2,325（STS-1 の解析）ft3 と違う。本書は 2,475 をとった。2,325 にすると CO2 の上がる速さと穴の減圧の速さは約 6 % 速くなる。

> **注記** LiOH キャニスタの CO2 の容量（lb）は資料に無く、定格 48 man-hours と乗員1人の生成 0.0882 lb/man-hour から 4.23 lb とした。容量の 75 % から効率が直線で落ちる破過の形は本書の判断で、資料は「残りが減ると除去の速さが大きく落ちる」とだけ書く。

> **注記** RCRS の除去の容量・ベッドの効率は資料に無い。ATM-S04 は効率 1 の上限の見積りで、実績（STS-62・73・80）と同じ程度の値になった。

> **注記** CO2 の限界は、飛行規則・SODB が 7.6・15 mmHg、HIDH が 7.8・16 mmHg と書く。本書は飛行規則の値をとった。A17-151C の「7.6 (6.1) mmHg」の 6.1 の意味は資料に書かれていない。

> **注記** 穴の流量係数は Cd = 1 とした（流量の最も大きい側）。Cd を 0.6 にすると、同じ流量に当たる穴の直径は約 1.3 倍になる。0.25 インチの穴の等価 dP/dT（−0.080 psi/分）は C&W クラス1 の警報の値と同じになった。

> **注記** 酸素分圧の周期（ATM-S08）は、補給の流量を消費とブリードと漏れの差とし、O2/N2 制御弁が PPO2 の上下限で切り替わるとした本書のモデルで、O2/N2 コントローラの実際の切り替えの幅・遅れは資料に無い。

> **注記** 熱の値（乗員の顕熱・潜熱、電子機器の熱負荷）は 1972年の設計の研究の値で、実機の値は資料に無い。有効な熱容量は資料の「2時間以内に約 90 °F」から較正したので、ATM-V07 の温度は独立の比較ではない。

> **注記** LiOH の反応水は STS-1 の解析が 0.409 lb/lb CO2、1979年の FOM が「無水の系で正味ゼロ」と書き、食い違う。本書は 0.409 をとった（湿度を高めに見積る側）。

## 12. 参考文献

1. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p359） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/359
2. NSTS-12820 Space Shuttle Operational Flight Rules Vol. A（2002、2214頁） （PDF p1959） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1959
3. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p369） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369
4. JSC-16720（80-FM-33）STS-1 ECLSS Consumables and Thermal Analysis（1980） （PDF p11） — https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=11
5. USA006020 Rev. B ECLSS Training Manual（2006-10-23、232頁、7,067,870 バイト） （PDF p55） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=55
6. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p360） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/360
7. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p366） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/366
8. STS-108 Mission Report （PDF p32） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=32
9. JSC-16720（80-FM-33）STS-1 ECLSS Consumables and Thermal Analysis（1980） （PDF p9） — https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=9
10. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p370） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370
11. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p419） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/419
12. JSC-12770 Vol.3 Shuttle Flight Operations Manual, ECLSS（1979） （PDF p58） — https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=58
13. NSTS-12820 Space Shuttle Operational Flight Rules Vol. A（2002、2214頁） （PDF p1952） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1952
14. JSC-12770 Vol.3 Shuttle Flight Operations Manual, ECLSS（1979） （PDF p35） — https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=35
15. NSTS-12820 Space Shuttle Operational Flight Rules Vol. A（2002、2214頁） （PDF p1874） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1874
16. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p371） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371
17. USA006020 Rev. B ECLSS 21002 訓練マニュアル （PDF p217） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=217
18. USA006020 Rev. B ECLSS 21002 訓練マニュアル （PDF p213） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=213
19. JSC-17378 STS-1 Orbiter Final Mission Report（1981年8月） （PDF p57） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=57
20. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p362） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/362
21. USA006020 Rev. B ECLSS Training Manual（2006-10-23、232頁、7,067,870 バイト） （PDF p47） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=47
22. NSTS-12820 Space Shuttle Operational Flight Rules Vol. A（2002、2214頁） （PDF p1971） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1971
23. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p367） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/367
24. NSTS-12820 Space Shuttle Operational Flight Rules Vol. A（2002、2214頁） （PDF p1972） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1972
25. NASA CR-1981 Space Shuttle Environmental Control/Life Support Systems（Hamilton Standard SVHSER 5851、1972年5月、435頁、14,295,029 バイト） （PDF p409） — https://ntrs.nasa.gov/api/citations/19720017476/downloads/19720017476.pdf#page=409
26. NASA CR-1981 Space Shuttle Environmental Control/Life Support Systems（Hamilton Standard SVHSER 5851、1972年5月、435頁、14,295,029 バイト） （PDF p129） — https://ntrs.nasa.gov/api/citations/19720017476/downloads/19720017476.pdf#page=129
27. USA006020 Rev. B ECLSS 21002 訓練マニュアル （PDF p94） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=94
28. NSTS-12820 Space Shuttle Operational Flight Rules Vol. A（2002、2214頁） （PDF p1929） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1929
29. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p374） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/374
30. JSC-17378 STS-1 Orbiter Final Mission Report（1981年8月） （PDF p55） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=55
31. JSC-17378 STS-1 Orbiter Final Mission Report（1981年8月） （PDF p56） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=56
32. NASA CR-1981 Space Shuttle Environmental Control/Life Support Systems（Hamilton Standard SVHSER 5851、1972年5月、435頁、14,295,029 バイト） （PDF p124） — https://ntrs.nasa.gov/api/citations/19720017476/downloads/19720017476.pdf#page=124
33. OMG Systems Modeling Language (SysML) Version 2.0 仕様 — https://www.omg.org/spec/SysML/2.0
34. SysML v2 Release（OMG SysML v2 Pilot Implementation の公開リリース・標準ライブラリ） — https://github.com/Systems-Modeling/SysML-v2-Release

## 13. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-08 | 初版作成（パラメータ 20件・式 7件・シナリオ 10件・実績との比較 7件・照合 8件、図163〜165、SysML v2 テキスト） |
