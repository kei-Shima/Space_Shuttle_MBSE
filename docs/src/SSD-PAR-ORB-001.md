# パラメトリック定義書（消耗品・電力・排熱の収支）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-PAR-ORB-001 |
| 表題 | パラメトリック定義書（消耗品・電力・排熱の収支） |
| 版・日付 | Rev. E／2026-10-04 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-BUD-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図78 消耗品 パラメトリック図・図79 電力・反応剤・排熱 パラメトリック図 |

## 1. 目的

収支（SSD-BUD-ORB-001）の容量・負荷・マージンを、値（パラメータ）と式（制約）に分けて示す。図78 消耗品 パラメトリック図は LiOH・飲料水・窒素、図79 電力・反応剤・排熱 パラメトリック図は電力・反応剤（酸素・水素）・排熱で、値から式を通ってマージンに至る関係と、マージンが関わる要求を示す。同じ値と式を SysML v2 のテキスト（model/SSD-PAR-ORB-001.sysml）でも示す。

## 2. 書き方

パラメータの出どころは、資料（一次資料の値）・前提（標準ミッションの7人・10日と反応剤タンク5組）の2つである。制約の式は、資料の値どうしの関係を本書が書き下したもので、資料に式として書かれたものではない。結果は式を計算した値で、SSD-BUD-ORB-001 の同じ行の数値と照らした（§5）。マージンが負のものは、標準ミッションの前提では足りないことを示す。

## 3. パラメータ

パラメータ 26件を示す。根拠は SSD-BUD-ORB-001 と同じ一次資料の頁である。

| ID | パラメータ | 値 | 単位 | SysML | 出どころ | 要求 | 根拠 |
|---|---|---|---|---|---|---|---|
| PAR-01 | 乗員数 | 7 | 人 | crew | 前提 | REQ-SYS-05 | 典型的な7人クルーでは、キャビンガスの宇宙への通常損失と代謝消費により、1日当たり約6ポンドの窒素と14ポンドの酸素が使われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/360）オービタは最大8人の搭乗クルーを運んだ実績がある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/31） |
| PAR-02 | 軌道滞在日数 | 10 | 日 | days | 前提 | REQ-SYS-06 | スペースシャトルの公称ミッションは宇宙滞在4〜16日である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/31） |
| PAR-03 | LiOH の予備日数（PLS を見送るため） | 2 | 日 | reserveDays | 資料 | REQ-SYS-13 | LiOH キャニスタの数とクルー数がミッション終了（EOM）を決める。PLS 機会を見送るには、未使用の LiOH を最低2日分予備として保持しなければならない。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=804） |
| PAR-04 | LiOH キャニスタの数（装着2個と予備30個） | 32 | 個 | liohCanisters | 資料 | — | 予備キャニスタは最大30個を、ミッドデッキ床下のキャビン熱交換器と水タンクの間のロッカーに収納する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） |
| PAR-05 | LiOH キャニスタ1個の定格 | 48 | 人・時 | liohRating | 資料 | — | キャビン空気は約120 lb/時ずつ2個の LiOH キャニスタに流れて CO2 が除去される。キャニスタは所定の計画で通常1日1〜2回交換し（大人数クルーではより頻繁に）、各キャニスタの定格は48人・時である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） |
| PAR-06 | 給水タンクの数 | 4 | 基 | waterTanks | 資料 | REQ-ECLSS-10 | 給水系は窒素で与圧する4基のタンクからなり、各タンクの使用可能容量は水165ポンド（ほかに残留3.3ポンド）である。3基の燃料電池は最大25ポンド/時の給水を生成する（発電1 kW 当たり約0.77ポンド/時）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/394） |
| PAR-07 | 給水タンク1基の容量 | 165 | lb | waterPerTank | 資料 | REQ-ECLSS-10 | 給水系は窒素で与圧する4基のタンクからなり、各タンクの使用可能容量は水165ポンド（ほかに残留3.3ポンド）である。3基の燃料電池は最大25ポンド/時の給水を生成する（発電1 kW 当たり約0.77ポンド/時）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/394） |
| PAR-08 | 1人1日の水の代謝必要量 | 6 | lb/人・日 | waterPerPersonDay | 資料 | — | タンク A には少なくとも76パーセント（128 lb）の水を残す必要がある。これは5人のクルーが96時間の最小飛行期間（MDF）を過ごすのに必要な量で、1人1日6 lb の代謝必要量を前提とする。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=146） |
| PAR-09 | 窒素タンクの数 | 6 | 基 | n2Tanks | 資料 | — | 窒素はペイロードベイの2系統のタンクから供給し、OV-103と OV-105は標準6基構成、OV-104は5基である。各タンクは80°Fで公称2,964 psia に充填し、容積は8,181立方インチである。搭載数はミッション要求により飛行ごとに変わりうる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/364） |
| PAR-10 | 窒素タンクの満載重量 | 143 | lb | n2Full | 資料 | — | 性能の経験則では、N2 タンクの乾燥重量は83 lbm、満載重量は143 lbm である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1022） |
| PAR-11 | 窒素タンクの乾燥重量 | 83 | lb | n2Dry | 資料 | — | 性能の経験則では、N2 タンクの乾燥重量は83 lbm、満載重量は143 lbm である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1022） |
| PAR-12 | 窒素の使用量（7人） | 6 | lb/日 | n2PerDay | 資料 | — | 典型的な7人クルーでは、キャビンガスの宇宙への通常損失と代謝消費により、1日当たり約6ポンドの窒素と14ポンドの酸素が使われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/360） |
| PAR-13 | 燃料電池の数 | 3 | 基 | nFc | 資料 | REQ-EPS-03 | 各燃料電池（FC）は通常時に最大10 kWの連続電力を供給できる。3基のFCはそれぞれ独立した直流母線に給電する独立の電源として同時に運転される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/320） |
| PAR-14 | 燃料電池1基の最大連続出力（通常時） | 10 | kW | fcNominal | 資料 | REQ-EPS-04 | 各燃料電池（FC）は通常時に最大10 kWの連続電力を供給できる。3基のFCはそれぞれ独立した直流母線に給電する独立の電源として同時に運転される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/320） |
| PAR-15 | 軌道上の平均消費電力 | 14 | kW | orbitLoad | 資料 | REQ-EPS-19 | オービタの軌道上の平均消費電力は約14 kWであり、残りの能力をペイロードに使える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/320） |
| PAR-16 | 再突入時の電力（検討の仮定） | 19 | kW | reentryLoad | 資料 | — | いつでも再突入できるための供給水レッドラインを定めた検討は、放熱器コールドソーク開始をTIG−3:56、放熱器バイパスをTIG−2:50、ペイロードベイドア閉をTIG−2:35、FES停止を接地12分前とし、再突入時の電力レベルを19 kWと仮定している。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2054） |
| PAR-17 | 燃料電池1基故障時の総電力の上限 | 18 | kW | fcFailTotal | 資料 | REQ-EPS-18 | 軌道上でFCが1基故障した場合、スペースハブの電力はオービタ総電力18 kWの制限内で管理する。この18 kWの制限は、最後に残るFCの過負荷を防ぐためのものである。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1509） |
| PAR-18 | 1 kWh あたりの酸素消費 | 0.7 | lb/kWh | o2PerKwh | 資料 | — | EPSの目安として、1 kWhあたり酸素0.7 lbm、水素0.09 lbmを消費する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1022） |
| PAR-19 | 1 kWh あたりの水素消費 | 0.09 | lb/kWh | h2PerKwh | 資料 | — | EPSの目安として、1 kWhあたり酸素0.7 lbm、水素0.09 lbmを消費する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1022） |
| PAR-20 | 酸素タンク1基の貯蔵量 | 781 | lb | o2PerTank | 資料 | — | 酸素タンクは1基あたり容積11.2立方フィートで最大781 lbの酸素を貯蔵し、水素タンクは1基あたり容積21.39立方フィートで最大92 lbの水素を貯蔵する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/313） |
| PAR-21 | 水素タンク1基の貯蔵量 | 92 | lb | h2PerTank | 資料 | — | 酸素タンクは1基あたり容積11.2立方フィートで最大781 lbの酸素を貯蔵し、水素タンクは1基あたり容積21.39立方フィートで最大92 lbの水素を貯蔵する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/313） |
| PAR-22 | 反応剤タンクの組数 | 5 | 組 | tankSets | 前提 | REQ-EPS-12 | 酸素・水素タンク3基で軌道上最大8日間、5基で最大12日間、8基で最大18日間の運用に足りる。正確な期間は乗員数と電力負荷で変わる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/356） |
| PAR-23 | 乗員の酸素使用量（7人・漏洩込み） | 14 | lb/日 | o2CrewPerDay | 資料 | REQ-EPS-11 | 典型的な7人クルーでは、キャビンガスの宇宙への通常損失と代謝消費により、1日当たり約6ポンドの窒素と14ポンドの酸素が使われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/360） |
| PAR-24 | 1 kW あたりの排熱 | 4,420 | Btu/hr | heatPerKw | 資料 | — | フレオンループ2（最悪ケース）での高負荷エバポレータ・副制御器の能力は44,200 Btu/hr、すなわち10 kWであり、フレオンループ1（最悪ケース）でのトッピングエバポレータの能力は24,600 Btu/hr、すなわち5.5 kWである。いずれもエバポレータコア1基の試験データに基づく。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2153） |
| PAR-25 | 放熱器の最大排熱能力 | 61,100 | Btu/hr | radiatorMax | 資料 | REQ-ECLSS-08 | 放熱器の最大排熱能力は61,100 Btu/hrであり、ペイロードベイドアを閉じているときは通常バイパスされる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/384） |
| PAR-26 | FES トッピングの最大排熱能力 | 39,000 | Btu/hr | fesTopping | 資料 | REQ-ECLSS-08 | 主制御器でトッピングエバポレータのみを使うときのFESの最大能力は39,000 Btu/hrである。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=142） |

## 4. 制約（式）

制約 7件と、その出力 26件の式と計算の結果を示す。式の名前はパラメータと前の制約の出力の SysML の名前である。

| ID | 制約 | 出力 | 式 | 結果 | 単位 | 収支の行（欄） | 要求 |
|---|---|---|---|---|---|---|---|
| CON-01 | LiOH の CO2 除去能力（LiohBudget、図78） | liohCapacity | liohCapacity = liohCanisters × liohRating | 1,536 | 人・時 | BUD-CON-04（容量） | REQ-ECLSS-06・REQ-SYS-05・REQ-SYS-06 |
|  |  | liohLoad | liohLoad = crew × days × 24 | 1,680 | 人・時 | BUD-CON-04（負荷） |  |
|  |  | liohMargin | liohMargin = liohCapacity − liohLoad | −144 | 人・時 | BUD-CON-04（マージン） |  |
|  |  | liohDays | liohDays = liohCapacity ÷ (crew × 24) | 9.14 | 日 | — |  |
| CON-02 | LiOH の能力（予備日数を含む）（LiohReserve、図78） | liohLoadReserve | liohLoadReserve = crew × (days + reserveDays) × 24 | 2,016 | 人・時 | BUD-CON-05（負荷） | REQ-ECLSS-06・REQ-SYS-13 |
|  |  | liohMarginReserve | liohMarginReserve = liohCapacity − liohLoadReserve | −480 | 人・時 | BUD-CON-05（マージン） |  |
| CON-03 | 飲料水（貯蔵分）（WaterBudget、図78） | waterCapacity | waterCapacity = waterTanks × waterPerTank | 660 | lb | BUD-CON-03（容量） | REQ-ECLSS-10 |
|  |  | waterLoad | waterLoad = waterPerPersonDay × crew × days | 420 | lb | BUD-CON-03（負荷） |  |
|  |  | waterMargin | waterMargin = waterCapacity − waterLoad | 240 | lb | BUD-CON-03（マージン） |  |
| CON-04 | 窒素（キャビンの与圧と漏洩）（NitrogenBudget、図78） | n2Capacity | n2Capacity = (n2Full − n2Dry) × n2Tanks | 360 | lb | BUD-CON-02（容量） | REQ-ECLSS-01 |
|  |  | n2Load | n2Load = n2PerDay × days | 60 | lb | BUD-CON-02（負荷） |  |
|  |  | n2Margin | n2Margin = n2Capacity − n2Load | 300 | lb | BUD-CON-02（マージン） |  |
| CON-05 | 軌道上・再突入・故障時の電力（PowerBudget、図79） | powerCapacity | powerCapacity = nFc × fcNominal | 30 | kW | BUD-PWR-01（容量） | REQ-EPS-19・REQ-EPS-18 |
|  |  | powerMargin | powerMargin = powerCapacity − orbitLoad | 16 | kW | BUD-PWR-01（マージン） |  |
|  |  | powerMarginEntry | powerMarginEntry = powerCapacity − reentryLoad | 11 | kW | BUD-PWR-04（マージン） |  |
|  |  | powerMarginFail | powerMarginFail = fcFailTotal − orbitLoad | 4 | kW | BUD-PWR-03（マージン） |  |
| CON-06 | 反応剤（酸素・水素）（ReactantBudget、図79） | energy | energy = orbitLoad × days × 24 | 3,360 | kWh | — | REQ-EPS-12・REQ-EPS-11 |
|  |  | o2Capacity | o2Capacity = o2PerTank × tankSets | 3,905 | lb | BUD-PWR-06（容量・酸素） |  |
|  |  | o2Load | o2Load = energy × o2PerKwh + o2CrewPerDay × days | 2,492 | lb | BUD-PWR-06（負荷・酸素） |  |
|  |  | o2Margin | o2Margin = o2Capacity − o2Load | 1,413 | lb | BUD-PWR-06（マージン・酸素） |  |
|  |  | h2Capacity | h2Capacity = h2PerTank × tankSets | 460 | lb | BUD-PWR-06（容量・水素） |  |
|  |  | h2Load | h2Load = energy × h2PerKwh | 302.4 | lb | BUD-PWR-06（負荷・水素） |  |
|  |  | h2Margin | h2Margin = h2Capacity − h2Load | 157.6 | lb | BUD-PWR-06（マージン・水素） |  |
| CON-07 | 軌道上の排熱（HeatRejection、図79） | heatLoad | heatLoad = orbitLoad × heatPerKw | 61,880 | Btu/hr | BUD-THM-01（負荷） | REQ-ECLSS-08 |
|  |  | heatMarginRadiator | heatMarginRadiator = radiatorMax − heatLoad | −780 | Btu/hr | BUD-THM-01（マージン） |  |
|  |  | heatMarginWithFes | heatMarginWithFes = radiatorMax + fesTopping − heatLoad | 38,220 | Btu/hr | BUD-THM-02（マージン） |  |

## 5. 収支との照合

式の結果を SSD-BUD-ORB-001 の行の数値と照らした。24件すべてが一致する（整数に丸めて比べる。水素の負荷 302.4 lb は SSD-BUD-ORB-001 では 302 lb）。

| 制約 | 出力 | 結果 | 収支の行（欄） | 収支の値 | 照合 |
|---|---|---|---|---|---|
| CON-01 | liohCapacity | 1,536 | BUD-CON-04（容量） | 1,536 人・時 | 一致 |
| CON-01 | liohLoad | 1,680 | BUD-CON-04（負荷） | 1,680 人・時 | 一致 |
| CON-01 | liohMargin | −144 | BUD-CON-04（マージン） | −144 人・時 | 一致 |
| CON-02 | liohLoadReserve | 2,016 | BUD-CON-05（負荷） | 2,016 人・時 | 一致 |
| CON-02 | liohMarginReserve | −480 | BUD-CON-05（マージン） | −480 人・時 | 一致 |
| CON-03 | waterCapacity | 660 | BUD-CON-03（容量） | 660 lb | 一致 |
| CON-03 | waterLoad | 420 | BUD-CON-03（負荷） | 420 lb | 一致 |
| CON-03 | waterMargin | 240 | BUD-CON-03（マージン） | 240 lb | 一致 |
| CON-04 | n2Capacity | 360 | BUD-CON-02（容量） | 360 lb | 一致 |
| CON-04 | n2Load | 60 | BUD-CON-02（負荷） | 60 lb | 一致 |
| CON-04 | n2Margin | 300 | BUD-CON-02（マージン） | 300 lb | 一致 |
| CON-05 | powerCapacity | 30 | BUD-PWR-01（容量） | 30 kW | 一致 |
| CON-05 | powerMargin | 16 | BUD-PWR-01（マージン） | 16 kW | 一致 |
| CON-05 | powerMarginEntry | 11 | BUD-PWR-04（マージン） | 11 kW | 一致 |
| CON-05 | powerMarginFail | 4 | BUD-PWR-03（マージン） | 4 kW | 一致 |
| CON-06 | o2Capacity | 3,905 | BUD-PWR-06（容量・酸素） | 3,905 | 一致 |
| CON-06 | o2Load | 2,492 | BUD-PWR-06（負荷・酸素） | 2,492 | 一致 |
| CON-06 | o2Margin | 1,413 | BUD-PWR-06（マージン・酸素） | 1,413 | 一致 |
| CON-06 | h2Capacity | 460 | BUD-PWR-06（容量・水素） | 460 | 一致 |
| CON-06 | h2Load | 302.4 | BUD-PWR-06（負荷・水素） | 302 | 一致 |
| CON-06 | h2Margin | 157.6 | BUD-PWR-06（マージン・水素） | 158 | 一致 |
| CON-07 | heatLoad | 61,880 | BUD-THM-01（負荷） | 61,880 Btu/hr | 一致 |
| CON-07 | heatMarginRadiator | −780 | BUD-THM-01（マージン） | −780 Btu/hr | 一致 |
| CON-07 | heatMarginWithFes | 38,220 | BUD-THM-02（マージン） | 38,220 Btu/hr | 一致 |

## 6. 要求との関係

要求ごとに、関係する制約とマージンを示す。SysML v2 テキストでは、各要求を「マージンが0以上」の制約として書いた。LiOH（REQ-ECLSS-06）と、放熱器だけの排熱（REQ-ECLSS-08）は標準ミッションでマージンが負で、前者は SSD-BUD-ORB-001 の負のマージン（据え置きの決定）、後者はトッピング FES で補う運用（BUD-THM-02）に当たる。

| 要求 | 制約 | マージン | 標準ミッションでの状態 |
|---|---|---|---|
| REQ-ECLSS-06 | CON-01・CON-02 | liohMargin・liohMarginReserve | マージンが負：liohMargin = −144・liohMarginReserve = −480 |
| REQ-SYS-05 | CON-01 | liohMargin | マージンが負：liohMargin = −144 |
| REQ-SYS-06 | CON-01 | liohMargin | マージンが負：liohMargin = −144 |
| REQ-SYS-13 | CON-02 | liohMarginReserve | マージンが負：liohMarginReserve = −480 |
| REQ-ECLSS-10 | CON-03 | waterMargin | マージンはすべて0以上 |
| REQ-ECLSS-01 | CON-04 | n2Margin | マージンはすべて0以上 |
| REQ-EPS-19 | CON-05 | powerMargin・powerMarginEntry・powerMarginFail | マージンはすべて0以上 |
| REQ-EPS-18 | CON-05 | powerMargin・powerMarginEntry・powerMarginFail | マージンはすべて0以上 |
| REQ-EPS-12 | CON-06 | o2Margin・h2Margin | マージンはすべて0以上 |
| REQ-EPS-11 | CON-06 | o2Margin・h2Margin | マージンはすべて0以上 |
| REQ-ECLSS-08 | CON-07 | heatMarginRadiator・heatMarginWithFes | マージンが負：heatMarginRadiator = −780 |

## 7. SysML v2 テキスト

同じ値と式を SysML v2 のテキスト [model/SSD-PAR-ORB-001.sysml](../../model/SSD-PAR-ORB-001.sysml) に示す。制約の constraint def 7件、標準ミッションの part def StandardMission（属性 52件、制約の使用 7件と bind による結び付け）、要求の requirement def 11件（マージンが0以上の制約）から成る。本書の表と同じデータから作り、SysML v2 の文法による構文の検査を通し、Rev. AG で OMG SysML v2 Pilot Implementation 0.62.0 により、ほかのモデルと一緒に読み込んで名前の解決・型の検査を行い、誤り 0件・警告 0件を確かめた（SSD-MDL-SYS-001）。式の求解（制約を解くこと）はしていない。式の計算は本書の生成の中で行い、§5 で収支と照らした。Rev. AN で、属性と制約の入出力を SysML v2 の量（ISQ の質量・電力・エネルギー・時間）と単位（lb・kW・Btu/hr など）で型付けし、1日の時間の 24 を 24 [h] と書いた（式の形と数値は変えていない。数（人数・日数・個数）は Real のまま。量の種類と単位の一覧は SSD-IBD-ORB-001）。

## 8. 注記（出典間の相違・構成変更）

> **注記** 同じ値が複数の制約に入る（乗員数・軌道滞在日数など）。図78・図79 では制約ごとに値の箱を置いたが、モデルとしては1つの値（PAR の ID が同じ）である。

> **注記** 制約の式は線形の積と和だけで、資料が述べる「乗員数と電力負荷で変わる」などの効果（例：PRSD の日数）は含まない。

> **注記** 質量特性と Δv の制約（ロケット方程式・着陸重量・重心）は [SSD-ANA-ORB-001](SSD-ANA-ORB-001.md) に示す（SysML v2 テキスト：model/SSD-ANA-ORB-001.sysml）。

> **注記** 飛行の実績（反応剤・電力・窒素など）と標準ミッションのパラメータの比較は [SSD-IND-ORB-001](SSD-IND-ORB-001.md) に示す（SysML v2 テキスト：model/SSD-IND-ORB-001.sysml）。

> **注記** 標準ミッションのパラメータからの日ごとの残量と枯渇の日（LiOH 約9.1日）、飛行の実績との比較は [SSD-PRF-ORB-001](SSD-PRF-ORB-001.md) に示す（SysML v2 テキスト：model/SSD-PRF-ORB-001.sysml）。

## 9. 参考文献

1. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Pressure Control System（PDF p360） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/360
2. Shuttle Crew Operations Manual 1.1 Overview（USA007587 Rev. A CPN-1、PDF p31） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/31
3. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A2-1001 Orbiter Systems Go/No-Go（注[7]）（PDF p804） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=804
4. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p370） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370
5. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Supply Water System（PDF p394） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/394
6. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 5.1節 Supply Water Storage System（続き）（PDF p146） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=146
7. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Nitrogen System（PDF p364） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/364
8. Shuttle Crew Operations Manual 9.3 Entry（USA007587 Rev. A CPN-1、PDF p1022） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1022
9. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p320） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/320
10. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-59 Supply Water Redline（PDF p2054） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2054
11. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A9-356 Fuel Cell Failure Management（PDF p1509） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1509
12. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p313） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/313
13. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p356） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/356
14. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-1001 Thermal Go/No-Go Criteria（PDF p2153） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2153
15. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p384） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/384
16. USA006020 Rev. B ECLSS 21002 訓練マニュアル 4.17.6 ATCS Systems Performance, Limitations, and Capabilities（PDF p142） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=142

## 10. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（パラメータ 26件、制約 7件・出力 26件、収支との照合 24件、SysML v2 テキスト） |
| Rev. A | 2026-10-03 | SysML v2 テキストの検査の記述を改めた（Pilot による名前の解決・型の検査、モデル統合・検査定義書 SSD-MDL-SYS-001）（Rev. AG） |
| Rev. B | 2026-10-03 | 解析定義書 SSD-ANA-ORB-001 への参照を注記（Rev. AJ） |
| Rev. C | 2026-10-03 | SysML v2 テキストの属性を量（ISQ）と単位で型付けし直した（内部ブロック・流れ定義書 SSD-IBD-ORB-001）（Rev. AN） |
| Rev. D | 2026-10-03 | 個体・時間定義書 SSD-IND-ORB-001 への参照を注記（Rev. AR） |
| Rev. E | 2026-10-04 | 消耗品・電力プロファイル定義書 SSD-PRF-ORB-001 への参照を注記（Rev. AW） |
