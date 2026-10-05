# オービタ収支・マージン表

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-BUD-ORB-001 |
| 表題 | オービタ収支・マージン表 |
| 版・日付 | Rev. D／2026-10-04 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図44 収支マージン要約 |

## 1. 目的

オービタの電力・熱・消耗品・推進薬について、容量（供給側）と負荷（消費側）を突き合わせ、マージンを値と比率で示す（収支）。前提のミッションは、乗員運用マニュアル（SCOM、USA007587 Rev. A CPN-1、OI-33、2008年）の値による乗員 7人・10日の単独飛行とし、STS-1 の消耗品解析（JSC-16720）の値を比較の列に置いた。図44 収支マージン要約の根拠とする。質量とデータの収支は扱わない。

## 2. 前提（標準ミッション）

| 項目 | 標準ミッション | STS-1（比較） | 根拠 |
|---|---|---|---|
| 乗員数 | 7人 | 2人 | 典型的な7人クルーでは、キャビンガスの宇宙への通常損失と代謝消費により、1日当たり約6ポンドの窒素と14ポンドの酸素が使われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/360）オービタは最大8人の搭乗クルーを運んだ実績がある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/31）STS-1 の解析では2人のクルーが単一シフトで作業すると仮定し、全員が公称代謝率450 Btu/時で連続して活動するとした。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=9） |
| 軌道滞在 | 10日（240時間） | 54.762時間（着陸後の GSE 接続まで） | スペースシャトルの公称ミッションは宇宙滞在4〜16日である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/31）STS-1 の解析では、高度120,000フィートから着陸を経て地上支援装置（GSE）接続（54.762時間）まで NH3 ボイラで排熱する。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=10） |
| 飛行の形態 | 単独飛行（ISS にドッキングしない）。RCRS と EDO クライオパレットは使わない | — | OV-105 は長期の単独飛行のための RCRS の機器を持つが、ISS とのドッキング中は不要であり、今後は使う予定がない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371）EDO クライオパレットは、現在は使われていない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/345） |
| 機体 | OV-103・OV-104（OMS の最大搭載量の値） | — | 性能の経験則では、OMS の最大搭載量は OV-103/104で25064 lbs、最小は10800 lbs である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1022） |
| PRSD の反応剤タンク | 5組（SCOM が挙げる3・5・8組のうち、10日に足りる最少） | — | 酸素・水素タンク3基で軌道上最大8日間、5基で最大12日間、8基で最大18日間の運用に足りる。正確な期間は乗員数と電力負荷で変わる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/356） |
| 窒素タンク | 6基（標準の構成） | — | 窒素はペイロードベイの2系統のタンクから供給し、OV-103と OV-105は標準6基構成、OV-104は5基である。各タンクは80°Fで公称2,964 psia に充填し、容積は8,181立方インチである。搭載数はミッション要求により飛行ごとに変わりうる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/364） |
| LiOH キャニスタ | 装着2個と予備30個（最大） | 6個 | キャビン空気は約120 lb/時ずつ2個の LiOH キャニスタに流れて CO2 が除去される。キャニスタは所定の計画で通常1日1〜2回交換し（大人数クルーではより頻繁に）、各キャニスタの定格は48人・時である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370）予備キャニスタは最大30個を、ミッドデッキ床下のキャビン熱交換器と水タンクの間のロッカーに収納する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370）STS-1 の ECLSS 水酸化リチウム収支では、搭載総数6個、不測事態予備1個、公称ミッションに使える数5個、飛行所要4個、マージン1個である。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=16） |

## 3. 表の書き方

マージンは容量 − 負荷、比率はマージン ÷ 容量である。負の値は不足を示す。容量・負荷・マージンの数値は根拠の値から本書が計算したもので、式を「計算」の欄に示した。値に幅があるものは最悪と最良の組合せを「〜」で示し、図44 には最悪の値を棒で、最良までを淡い棒で描いた。「フェーズ」は SSD-OPS-PHASE-001 の PH の ID である。項目の末尾が「故障時」の行は、1つ以上の故障の後の状態を示す。

## 4. 電力

燃料電池3基の出力と PRSD の反応剤を容量、軌道上と再突入時の電力を負荷とする。

| ID | 項目 | フェーズ | 容量 | 負荷 | マージン | 比率 | STS-1（比較） | 計算 | 根拠 |
|---|---|---|---|---|---|---|---|---|---|
| BUD-PWR-01 | 軌道上の平均電力（燃料電池3基の通常の連続出力） | PH-3 | 30 kW | 14 kW | 16 kW | 53% | — | 10 kW × 3基 = 30 kW。30 − 14 = 16 kW。 | 各燃料電池（FC）は通常時に最大10 kWの連続電力を供給できる。3基のFCはそれぞれ独立した直流母線に給電する独立の電源として同時に運転される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/320）オービタの軌道上の平均消費電力は約14 kWであり、残りの能力をペイロードに使える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/320） |
| BUD-PWR-02 | 軌道上の平均電力（燃料電池の寿命を考えた出力の上限） | PH-3 | 24 kW | 14 kW | 10 kW | 42% | — | 8 kW × 3基 = 24 kW。24 − 14 = 10 kW。 | FCは直流母線電圧とFC温度が保てる範囲で2〜12 kWの任意の出力で運転でき、通常は2〜10 kWを連続、10〜12 kWを3時間ごとに15分以内で管理する。寿命の観点から通常運用ではFC出力を8 kW未満に抑えるべきであり、加速的な寿命低下を受け入れれば8〜10 kWの連続運転も許容される。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1438）オービタの軌道上の平均消費電力は約14 kWであり、残りの能力をペイロードに使える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/320） |
| BUD-PWR-03 | 軌道上で燃料電池1基が故障したときの総電力（故障時） | PH-3 | 18 kW | 14 kW | 4 kW | 22% | — | 残る2基は各12 kW まで出せる（24 kW）が、規則は総電力を18 kW に制限する。18 − 14 = 4 kW。 | 軌道上でFCが1基故障した場合、スペースハブの電力はオービタ総電力18 kWの制限内で管理する。この18 kWの制限は、最後に残るFCの過負荷を防ぐためのものである。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1509）1基以上のFCが故障した異常時には、各FCは12 kWを連続で供給できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/320）オービタの軌道上の平均消費電力は約14 kWであり、残りの能力をペイロードに使える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/320） |
| BUD-PWR-04 | 再突入時の電力 | PH-6 | 30 kW | 19 kW | 11 kW | 37% | — | 10 kW × 3基 = 30 kW。30 − 19 = 11 kW。 | 各燃料電池（FC）は通常時に最大10 kWの連続電力を供給できる。3基のFCはそれぞれ独立した直流母線に給電する独立の電源として同時に運転される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/320）いつでも再突入できるための供給水レッドラインを定めた検討は、放熱器コールドソーク開始をTIG−3:56、放熱器バイパスをTIG−2:50、ペイロードベイドア閉をTIG−2:35、FES停止を接地12分前とし、再突入時の電力レベルを19 kWと仮定している。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2054） |
| BUD-PWR-05 | 反応剤で足りる軌道滞在日数（PRSD 5組） | PH-3 | 12日 | 10日 | 2日 | 17% | — | 12 − 10 = 2日。3組（8日）では2日足りない。 | 酸素・水素タンク3基で軌道上最大8日間、5基で最大12日間、8基で最大18日間の運用に足りる。正確な期間は乗員数と電力負荷で変わる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/356） |
| BUD-PWR-06 | 反応剤の量（PRSD 5組。燃料電池と乗員の酸素） | PH-3 | 酸素 3,905 lb・水素 460 lb | 酸素 2,492 lb・水素 302 lb | 酸素 1,413 lb・水素 158 lb | 酸素 36%・水素 34% | — | 781 lb × 5 = 3,905 lb、92 lb × 5 = 460 lb。14 kW × 240 時間 = 3,360 kWh。3,360 × 0.7 = 2,352 lb、3,360 × 0.09 = 302 lb。乗員の酸素 14 lb/日 × 10日 = 140 lb。タンクの残量・予備と電力負荷の変動は含まない。 | 酸素タンクは1基あたり容積11.2立方フィートで最大781 lbの酸素を貯蔵し、水素タンクは1基あたり容積21.39立方フィートで最大92 lbの水素を貯蔵する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/313）EPSの目安として、1 kWhあたり酸素0.7 lbm、水素0.09 lbmを消費する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1022）与圧系（PCS）の酸素は、中部胴体にある電力系（EPS）の極低温酸素から供給される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/360）典型的な7人クルーでは、キャビンガスの宇宙への通常損失と代謝消費により、1日当たり約6ポンドの窒素と14ポンドの酸素が使われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/360） |

## 5. 熱

放熱器・FES・アンモニアボイラの排熱能力を容量とする。負荷の電力は、運用飛行規則 A18-1001 の比（44,200 Btu/hr を 10 kW）で排熱量に読み替える（1 kW あたり 4,420 Btu/hr）。

| ID | 項目 | フェーズ | 容量 | 負荷 | マージン | 比率 | STS-1（比較） | 計算 | 根拠 |
|---|---|---|---|---|---|---|---|---|---|
| BUD-THM-01 | 軌道上の排熱（放熱器だけ） | PH-3 | 61,100 Btu/hr | 61,880 Btu/hr | −780 Btu/hr | −1% | 放熱器だけでは足りず、トッピング FES が各周回約45分・最大18,000 Btu/hr を補った | 14 kW × 4,420 Btu/hr = 61,880 Btu/hr。61,100 − 61,880 = −780 Btu/hr。 | 放熱器の最大排熱能力は61,100 Btu/hrであり、ペイロードベイドアを閉じているときは通常バイパスされる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/384）オービタの軌道上の平均消費電力は約14 kWであり、残りの能力をペイロードに使える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/320）フレオンループ2（最悪ケース）での高負荷エバポレータ・副制御器の能力は44,200 Btu/hr、すなわち10 kWであり、フレオンループ1（最悪ケース）でのトッピングエバポレータの能力は24,600 Btu/hr、すなわち5.5 kWである。いずれもエバポレータコア1基の試験データに基づく。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2153）STS-1では放熱器が軌道上で出口温度38°Fを常時は維持できず、トッピングFESが各周回の約45分間、最大18,000 Btu/hrの補助冷却を行う必要がある。この水使用のため供給水の最大量は940 lbにとどまり、供給水タンクの投棄は不要であった。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=12） |
| BUD-THM-02 | 軌道上の排熱（放熱器とトッピング FES） | PH-3 | 100,100 Btu/hr | 61,880 Btu/hr | 38,220 Btu/hr | 38% | — | 61,100 + 39,000 = 100,100 Btu/hr。100,100 − 61,880 = 38,220 Btu/hr。 | 放熱器の最大排熱能力は61,100 Btu/hrであり、ペイロードベイドアを閉じているときは通常バイパスされる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/384）主制御器でトッピングエバポレータのみを使うときのFESの最大能力は39,000 Btu/hrである。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=142） |
| BUD-THM-03 | フレオン冷却ループ1系統での軌道上の運用（故障時） | PH-3 | 15 kW | 14 kW | 1 kW | 7% | — | 15 − 14 = 1 kW（電力に読み替えた値で比べる）。 | 軌道上でフレオン冷却ループ（FCL）1系統のみで運用するには軽度の減電（15 kWまで）が必要となり得るほか、FESの使用か低温姿勢の飛行が必要となる。このため通常運用には両FCLを各1ポンプで運転する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2074）オービタの軌道上の平均消費電力は約14 kWであり、残りの能力をペイロードに使える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/320） |
| BUD-THM-04 | 再突入時の排熱（FES の高負荷とトッピング） | PH-6 | 148,000 Btu/hr | 83,980 Btu/hr | 64,020 Btu/hr | 43% | 降下時の供給水の所要量 335.9 lb（FES の水は 1,010 Btu/lb） | 19 kW × 4,420 Btu/hr = 83,980 Btu/hr。148,000 − 83,980 = 64,020 Btu/hr。 | FESの最大能力は、主制御器ではトッピングと高負荷の併用で148,000 Btu/hr、トッピングのみで39,000 Btu/hr、副制御器ではトッピング76,800 Btu/hr、高負荷113,100 Btu/hrである。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=142）いつでも再突入できるための供給水レッドラインを定めた検討は、放熱器コールドソーク開始をTIG−3:56、放熱器バイパスをTIG−2:50、ペイロードベイドア閉をTIG−2:35、FES停止を接地12分前とし、再突入時の電力レベルを19 kWと仮定している。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2054）フレオンループ2（最悪ケース）での高負荷エバポレータ・副制御器の能力は44,200 Btu/hr、すなわち10 kWであり、フレオンループ1（最悪ケース）でのトッピングエバポレータの能力は24,600 Btu/hr、すなわち5.5 kWである。いずれもエバポレータコア1基の試験データに基づく。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2153）STS-1の供給水収支（ノミナルミッション）の飛行所要量は、乗員使用38.4 lb、上昇265.4 lb、軌道469.7 lb（軌道離脱リハーサルを含む）、降下335.9 lbであり、マージンは90.2 lbである。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=19）STS-1解析では、FESの水の放熱能力を1,010 Btu/lb、アンモニアボイラのNH3の放熱能力を520 Btu/lbとした。降下時は放熱器収納（51.02時間）から高度120,000フィート（54.36時間）までFESで、120,000フィートから着陸を経てGSE接続（54.762時間）までNH3ボイラで排熱する。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=10） |
| BUD-THM-05 | 再突入時の排熱（トッピングを失った後にフレオンループ1系統を失ったとき。故障時） | PH-6 | 10 kW | 19 kW | −9 kW | −90% | — | 10 − 19 = −9 kW。規則のとおり、再突入の前に減電が要る。 | フレオンループ2（最悪ケース）での高負荷エバポレータ・副制御器の能力は44,200 Btu/hr、すなわち10 kWであり、フレオンループ1（最悪ケース）でのトッピングエバポレータの能力は24,600 Btu/hr、すなわち5.5 kWである。いずれもエバポレータコア1基の試験データに基づく。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2153）トッピングエバポレータか主制御器2台を失った後に次の故障（フレオンループ1系統の喪失）が起きると、再突入の前に大幅な減電が要る。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2153）いつでも再突入できるための供給水レッドラインを定めた検討は、放熱器コールドソーク開始をTIG−3:56、放熱器バイパスをTIG−2:50、ペイロードベイドア閉をTIG−2:35、FES停止を接地12分前とし、再突入時の電力レベルを19 kWと仮定している。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2054） |
| BUD-THM-06 | 着陸後のアンモニアボイラの冷却時間（2系統） | PH-7 | 50〜70分 | 15〜35分 | 15〜55分 | 30〜79% | アンモニアの所要量 75.4 lb、使える量 82.7 lb（マージン 7.3 lb、9%） | 25〜35分 × 2系統 = 50〜70分。アンモニアが要るのは、コールドソークが尽きる接地後10〜15分から GSE の接続が終わる30〜45分まで（15〜35分）。最悪の組合せは 50 − 35 = 15分。1系統だけでは最悪 25 − 35 = −10分。 | 各アンモニアボイラ供給系は約25〜35分の地上冷却に足りる。軌道上のコールドソークは約15分の冷却に足り、打上げ前のフレオン調整は2〜3分の冷却に足りる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/419）アンモニアボイラ系は、独立した2つのアンモニア貯蔵・制御系が1つの共通ボイラに供給する構成である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/391）再突入時は接地約11分前に放熱器の流れを始め、コールドソークが尽きる接地後10〜15分まで放熱器が冷却する。その後MCCの要請でNH3冷却を始め、接地後30〜45分にGSE接続が完了するまでNH3が冷却を担う。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=109）STS-1のアンモニア収支では、搭載量97.6 lb、予備を除いたノミナルミッションで使える量82.7 lbに対して飛行所要量は75.4 lbであり、マージンは7.3 lbである。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=15） |

## 6. 消耗品

乗員 7人・10日の酸素・窒素・飲料水・LiOH の消費を、搭載量と比べる。

| ID | 項目 | フェーズ | 容量 | 負荷 | マージン | 比率 | STS-1（比較） | 計算 | 根拠 |
|---|---|---|---|---|---|---|---|---|---|
| BUD-CON-01 | 酸素（乗員の代謝と漏洩） | PH-3 | PRSD の酸素と共通（BUD-PWR-06） | 140 lb | BUD-PWR-06 に含む | — | 0.0739 lb/人・時（代謝率 450 Btu/時） | 14 lb/日 × 10日 = 140 lb。 | 典型的な7人クルーでは、キャビンガスの宇宙への通常損失と代謝消費により、1日当たり約6ポンドの窒素と14ポンドの酸素が使われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/360）与圧系（PCS）の酸素は、中部胴体にある電力系（EPS）の極低温酸素から供給される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/360）STS-1 の解析では、代謝率450 Btu/時での O2 必要量を0.0739 lb/人・時とした。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=11） |
| BUD-CON-02 | 窒素（キャビンの与圧と漏洩） | PH-3 | 360 lb | 60 lb | 300 lb | 83% | キャビンの漏洩 8.2 lb/日 | （143 − 83）lb × 6基 = 360 lb（満載と乾燥の重量の差）。6 lb/日 × 10日 = 60 lb。 | 窒素はペイロードベイの2系統のタンクから供給し、OV-103と OV-105は標準6基構成、OV-104は5基である。各タンクは80°Fで公称2,964 psia に充填し、容積は8,181立方インチである。搭載数はミッション要求により飛行ごとに変わりうる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/364）性能の経験則では、N2 タンクの乾燥重量は83 lbm、満載重量は143 lbm である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1022）窒素の典型的な使用量は1日約6 lbm（クルー7人、14.7 psia を想定）である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/419）STS-1 の解析では、与圧キャビンからの大気漏洩を8.2 lb/日とした。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=10） |
| BUD-CON-03 | 飲料水（乗員の代謝。貯蔵分だけ） | PH-3 | 660 lb | 420 lb | 240 lb | 36% | 打上げ時の搭載 925.0 lb、燃料電池の生成水 824.9 lb、マージン 90.2 lb | 165 lb × 4基 = 660 lb。6 lb × 7人 × 10日 = 420 lb。燃料電池の生成水（14 kW で約 10.8 lb/時）は含まない。 | 給水系は窒素で与圧する4基のタンクからなり、各タンクの使用可能容量は水165ポンド（ほかに残留3.3ポンド）である。3基の燃料電池は最大25ポンド/時の給水を生成する（発電1 kW 当たり約0.77ポンド/時）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/394）タンク A には少なくとも76パーセント（128 lb）の水を残す必要がある。これは5人のクルーが96時間の最小飛行期間（MDF）を過ごすのに必要な量で、1人1日6 lb の代謝必要量を前提とする。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=146）STS-1 の ECLSS 飲料水・給水収支（公称ミッション）では、6基の総容量1009.8 lb に対して打上げ時搭載量925.0 lb、ミッション計画に使える量905.2 lb、予備合計530.5 lb である。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=18）STS-1 の公称ミッションの給水の飛行所要はクルー使用38.4 lb、上昇265.4 lb、軌道上469.7 lb、降下335.9 lb で、燃料電池の生成水824.9 lb を差し引いた正味使用量は284.5 lb、マージンは90.2 lb である。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=19）STS-1の供給水収支（ノミナルミッション）では、飛行所要量から差し引く生成水の量を824.9 lbとし、正味の使用量を284.5 lbとしている。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=19） |
| BUD-CON-04 | LiOH キャニスタ（CO2 の除去） | PH-3 | 1,536 人・時 | 1,680 人・時 | −144 人・時 | −9% | 搭載6個、飛行の所要4個、マージン1個（不測事態の予備1個を除く） | （2 + 30）個 × 48 人・時 = 1,536 人・時。7人 × 240 時間 = 1,680 人・時。7人では 1,536 ÷ 168 = 9.1日分。 | キャビン空気は約120 lb/時ずつ2個の LiOH キャニスタに流れて CO2 が除去される。キャニスタは所定の計画で通常1日1〜2回交換し（大人数クルーではより頻繁に）、各キャニスタの定格は48人・時である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370）予備キャニスタは最大30個を、ミッドデッキ床下のキャビン熱交換器と水タンクの間のロッカーに収納する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370）SCOM は、RCRS を使えるようになったことで、7人までの乗員で10〜16日のミッションを行うときの重量と収納容積の大きな問題が解決したとしている。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371）OV-105 は長期の単独飛行のための RCRS の機器を持つが、ISS とのドッキング中は不要であり、今後は使う予定がない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371）STS-1 の ECLSS 水酸化リチウム収支では、搭載総数6個、不測事態予備1個、公称ミッションに使える数5個、飛行所要4個、マージン1個である。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=16） |
| BUD-CON-05 | LiOH キャニスタ（PLS の機会を見送るための予備2日を含む） | PH-3 | 1,536 人・時 | 2,016 人・時 | −480 人・時 | −31% | — | 予備 7人 × 48 時間 = 336 人・時。1,680 + 336 = 2,016 人・時。 | LiOH キャニスタの数とクルー数がミッション終了（EOM）を決める。PLS 機会を見送るには、未使用の LiOH を最低2日分予備として保持しなければならない。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=804）キャビン空気は約120 lb/時ずつ2個の LiOH キャニスタに流れて CO2 が除去される。キャニスタは所定の計画で通常1日1〜2回交換し（大人数クルーではより頻繁に）、各キャニスタの定格は48人・時である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） |

## 7. 推進薬

OMS の速度変化の能力と後部 RCS の推進薬を、軌道投入・軌道離脱・再突入の所要量と比べる。

| ID | 項目 | フェーズ | 容量 | 負荷 | マージン | 比率 | STS-1（比較） | 計算 | 根拠 |
|---|---|---|---|---|---|---|---|---|---|
| BUD-PRP-01 | OMS の速度変化（軌道投入と軌道離脱） | PH-2c・PH-6a | 1,000 fps | 200〜1,000 fps | 0〜800 fps | 0〜80% | — | 各100〜500 fps × 2回 = 200〜1,000 fps。軌道高度の調整は1海里あたり約2 fps（10海里で約20 fps）で、上限の組合せではこの分が残らない。 | 満載のタンクを使い切ると、OMS は合計約1,000 ft/sec の速度変化を与えられる。軌道投入噴射と軌道離脱噴射はそれぞれ通常約100〜500 ft/sec の速度変化を要する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/643）性能の経験則では、OMS の最大搭載量は OV-103/104で25064 lbs、最小は10800 lbs である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1022）軌道調整に要する速度変化は、高度変化1海里当たり約2 ft/sec である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/643） |
| BUD-PRP-02 | 後部 RCS の推進薬（再突入） | PH-6 | 2,200 lb | 350 lb | 1,850 lb | 84% | — | 1,100 lb × 2ポッド = 2,200 lb。2,200 − 350 = 1,850 lb。軌道上で使える量は 4,970 − 2,200 = 2,770 lb。 | オービタは通常、各ポッドに後方 RCS 推進薬約50パーセント（約1100 lb）を残して軌道離脱する。ラップアラウンド DAP の導入以降、エントリー中の後方 RCS 使用量は合計で平均16パーセント（350 lb）である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1012）性能の経験則では、後方 RCS の満載は4970 lbs（100%超）で、ARCS 1%は片側22 lbs である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1022） |

## 8. 要約

比率を示した18行のうち、最悪の値が負のものは4行（BUD-THM-01 −1%・BUD-THM-05 −90%・BUD-CON-04 −9%・BUD-CON-05 −31%）、0〜20%のものは3行（BUD-PWR-05 17%・BUD-THM-03 7%・BUD-PRP-01 0〜80%）、20%以上のものは11行である。

標準ミッションで最も厳しいのは LiOH で、7人では約9.1日分しかない（BUD-CON-04）。SCOM は、7人までの10〜16日のミッションの重量と収納の問題を RCRS が解決したとしており、単独の長期飛行では LiOH だけに頼れないことと合う。

軌道上の排熱は、平均電力を排熱に読み替えると放熱器の最大能力とほぼ釣り合う（BUD-THM-01）。STS-1 でもトッピング FES の補助が要った。

故障時の行（BUD-PWR-03・BUD-THM-03・BUD-THM-05）は、減電や運用の変更で負荷を下げることを前提にしている。

OMS は、軌道投入と軌道離脱がともに上限（各500 fps）のとき余裕が無い（BUD-PRP-01）。

## 9. 注記（出典間の相違・構成変更）

> **注記** 本書のマージンは、実績の運用値（SCOM・運用飛行規則・SODB）から逆算した運用上の余裕であり、設計の要求値に対する設計マージンではない。

> **注記** SODB は燃料電池1基の連続出力を 7 kW、系統全体の最大を 36 kW としており、SCOM（OI-33）の 10 kW と違う。本書の容量は SCOM の値による。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=154）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/320）

> **注記** SCOM の概要（1.1）は OMS-2 と軌道離脱の噴射をそれぞれ200〜550 fps とし、OMS の節（2.18）は軌道投入と軌道離脱の噴射をそれぞれ100〜500 fps とする。本書は 2.18 の値を使った（1.1 の値の上限の組合せでは −100 fps になる）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/32）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/33）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/643）

> **注記** STS-1 の列は、1981年の STS-1 の消耗品解析（JSC-16720）の値で、乗員数・期間・機体の構成が標準ミッションと違う。比較のために並べた。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=9）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本表の値は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

> **注記** 本書の容量・負荷・マージンを値と式に分けたパラメトリック（図78・図79）は [SSD-PAR-ORB-001](SSD-PAR-ORB-001.md) に示す（SysML v2 テキスト：model/SSD-PAR-ORB-001.sysml）。

> **注記** LiOH 不足（BUD-CON-04・05）を受けた CO2 除去のトレードスタディ、質量特性と OMS の Δv の解析は [SSD-ANA-ORB-001](SSD-ANA-ORB-001.md) に示す（SysML v2 テキスト：model/SSD-ANA-ORB-001.sysml）。

> **注記** 機体の違いとミッションキットが収支の行（PRSD の日数・LiOH・窒素・OMS）に効く仕方は [SSD-VAR-ORB-001](SSD-VAR-ORB-001.md) に示す（SysML v2 テキスト：model/SSD-VAR-ORB-001.sysml）。

> **注記** 消耗品の収支の時間軸のプロファイル（日ごとの残量）と飛行の実績は [SSD-PRF-ORB-001](SSD-PRF-ORB-001.md) に示す（SysML v2 テキスト：model/SSD-PRF-ORB-001.sysml）。

## 10. 参考文献

1. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Pressure Control System（PDF p360） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/360
2. Shuttle Crew Operations Manual 1.1 Overview（USA007587 Rev. A CPN-1、PDF p31） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/31
3. JSC-16720（80-FM-33）STS-1 ECLSS Consumables and Thermal Analysis（1980） 3.1 STS-1 Unique Guidelines and Assumptions（PDF p9） — https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=9
4. JSC-16720（80-FM-33）STS-1 ECLSS Consumables and Thermal Analysis（1980） 3.2 Active Thermal Control Subsystem（PDF p10） — https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=10
5. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p371） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371
6. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p345） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/345
7. Shuttle Crew Operations Manual 9.3 Entry（USA007587 Rev. A CPN-1、PDF p1022） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1022
8. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p356） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/356
9. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Nitrogen System（PDF p364） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/364
10. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p370） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370
11. JSC-16720（80-FM-33）STS-1 ECLSS Consumables and Thermal Analysis（1980） Table III ECLSS Lithium Hydroxide Budget（PDF p16） — https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=16
12. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p320） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/320
13. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A9-51 FC Power Level Constraints（PDF p1438） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1438
14. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A9-356 Fuel Cell Failure Management（PDF p1509） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1509
15. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-59 Supply Water Redline（PDF p2054） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2054
16. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p313） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/313
17. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p384） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/384
18. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-1001 Thermal Go/No-Go Criteria（PDF p2153） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2153
19. JSC-16720（80-FM-33）STS-1 ECLSS Consumables and Thermal Analysis（1980） 4.0 Concluding Remarks（PDF p12） — https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=12
20. USA006020 Rev. B ECLSS 21002 訓練マニュアル 4.17.6 ATCS Systems Performance, Limitations, and Capabilities（PDF p142） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=142
21. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-251 Freon Coolant Loops (FCL)（PDF p2074） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2074
22. JSC-16720（80-FM-33）STS-1 ECLSS Consumables and Thermal Analysis（1980） Table V ECLSS Potable/Supply Water Budget (Concluded)（PDF p19） — https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=19
23. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 ECLSS Rules of Thumb（PDF p419） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/419
24. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p391） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/391
25. USA006020 Rev. B ECLSS 21002 訓練マニュアル 4.13.1 Radiator Coldsoak（PDF p109） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=109
26. JSC-16720（80-FM-33）STS-1 ECLSS Consumables and Thermal Analysis（1980） Table II ECLSS Ammonia Budget（PDF p15） — https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=15
27. JSC-16720（80-FM-33） STS-1 Environmental Control and Life Support System Consumables and Thermal Analysis（1980年） 3.3節 Atmospheric Revitalization Subsystem（PDF p11） — https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=11
28. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Supply Water System（PDF p394） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/394
29. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 5.1節 Supply Water Storage System（続き）（PDF p146） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=146
30. JSC-16720（80-FM-33）STS-1 ECLSS Consumables and Thermal Analysis（1980） Table V ECLSS Potable/Supply Water Budget（PDF p18） — https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=18
31. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A2-1001 Orbiter Systems Go/No-Go（注[7]）（PDF p804） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=804
32. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p643） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/643
33. Shuttle Crew Operations Manual 9.3 Entry（USA007587 Rev. A CPN-1、PDF p1012） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1012
34. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） 3.4.4.1 Fuel Cell Powerplant Subsystem（PDF p154） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=154
35. Shuttle Crew Operations Manual 1.1 Overview（USA007587 Rev. A CPN-1、PDF p32） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/32
36. Shuttle Crew Operations Manual 1.1 Overview（USA007587 Rev. A CPN-1、PDF p33） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/33
37. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 11. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（標準ミッション 7人・10日の電力・熱・消耗品・推進薬の収支 19 行と STS-1 の比較） |
| Rev. A | 2026-10-02 | パラメトリック定義書 SSD-PAR-ORB-001 への参照を注記（Rev. Z） |
| Rev. B | 2026-10-03 | 解析定義書 SSD-ANA-ORB-001 への参照を注記（Rev. AJ） |
| Rev. C | 2026-10-03 | 構成の違い定義書 SSD-VAR-ORB-001 への参照を注記（Rev. AK） |
| Rev. D | 2026-10-04 | 消耗品・電力プロファイル定義書 SSD-PRF-ORB-001 への参照を注記（Rev. AW） |
