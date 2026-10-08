# 補助動力・油圧（APU/HYD）要求書（L2）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-REQ-APU-001 |
| 表題 | 補助動力・油圧（APU/HYD）要求書（L2） |
| 版・日付 | Rev. A／2026-10-07 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-REQ-SYS-001 |
| 関連図 | SSD-SYS-ARC-001 図56 APU/HYD 機能構成 |

## 1. 目的

APU/HYDに対する要求（L2）を示し、L1 の要求（SSD-REQ-SYS-001）からの展開と、APU/HYDの機能説明書（SSD-FD-APU-001 と下位の説明書）の機能行・IF 行へのトレースを示す。要求から参照されない機能行について、要求が無くて妥当か、要求が抜けているかを判断する。要求は実績の運用値から導いたものである。

## 2. 要求の書き方

各要求は、要求文（〜すること）、値、根拠（出典の頁）、上位の L1 要求、割付先（機能行 F-ID・IF 行 IF-ID）、フェーズ（SSD-OPS-PHASE-001 の PH・AB の ID）、検証方法を持つ。検証方法は A（解析）、T（試験）、I（検査）、D（実証）の4つで、要求の性質から想定する方法を示す。要求はすべて、公開資料に記された実績の運用値・限界値から導いた「実績の運用値から導いた要求」である。

## 3. 上位の要求

本書の要求の上位の L1 要求を示す。

| L1 | 要求 |
|---|---|
| REQ-SYS-10 | 各機能を2重・3重に冗長化し、1故障でミッションを継続でき、2故障で安全に帰還できること。 |
| REQ-SYS-13 | 打上げ前の計画と飛行中の延長の決定のときに、2日の延長日（着陸地の天候に1日、系統のウェーブオフに1日）の消耗品を確保すること。 |
| REQ-SYS-14 | 系統の故障に対し、Go/No-Go の判定基準（A2-1001 ほか各章の1001番）で上昇の継続・MDF・次の PLS への着陸を判断できること。 |
| REQ-SYS-15 | 上昇中のエンジン停止に対し、intact アボート（RTLS・TAL・AOA・ATO）で計画した着陸地点に安全に戻れること。 |

## 4. APU/HYD要求

| ID | 要求 | 値 | 根拠 | 上位 | 割付先 | フェーズ | 検証 |
|---|---|---|---|---|---|---|---|
| REQ-APU-01 | 3台の APU と燃料系を互いに独立させ、各 APU は無水ヒドラジンを公称90分、AOA のように約110分連続で運転できる量を搭載すること。 | 約 332 lb／APU（公称 90分・連続約 110分） | 各APUの燃料系は燃料タンクと燃料タンク隔離弁、燃料ポンプ、燃料制御弁から成り、3台のAPUと燃料系は後部胴体にある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/84）打上げ前の標準の搭載量は約332 lbで、ミッションでの公称運転時間90分、またはAOAのように約110分連続運転するアボートを支え、運転中のAPUは毎分約3〜3.5 lbの燃料を消費する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/84） | REQ-SYS-10・REQ-SYS-15 | F-APU-FUL-01・F-APU-FUL-02・F-APU-FUL-03・F-APU-FUL-04・F-APU-FUL-05・F-APU-FUL-07 | PH-1（打上げ前）・PH-2（上昇）・PH-6（再突入）・PH-7（着陸後） | D（実証） |
| REQ-APU-02 | 燃料系の温度を、ヒドラジンが凍らない 35°F 超に冗長なヒータで保つこと。 | 35°F 超 | 燃料タンク・燃料配管・水配管のヒータはA・Bの冗長な系に分かれ、パネルA12のAPU HEATER TANK/FUEL LINE/H2O SYSスイッチで選んで1系統ずつ使い、サーモスタットで55〜65°Fに保つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/94）ヒドラジンは35°Fで凍るため、燃料系の温度を35°F超に保てない場合と、燃料配管が2回以上の凍結・解凍を受けた場合はAPUを喪失とする（A10-1）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1529） | REQ-SYS-10 | F-APU-FUL-06・F-APU-FUL-10・F-APU-FUL-11・F-APU-FUL-12・F-APU-TRB-11 | PH-3（軌道） | D（実証） |
| REQ-APU-03 | ガス発生器のヒドラジンの分解ガスでタービンを回し、減速ギアボックスで主油圧ポンプ・燃料ポンプ・潤滑油ポンプを駆動し、潤滑油は WSB で冷やすこと。 | 潤滑油 約 60 psi | ガス発生器は圧力容器にShell 405触媒の床を収めたもので、APUの排気室の内側に取り付けられ、ヒドラジンは触媒に触れると発熱反応で約1,700°Fの高温ガスに分解する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/87）タービンの軸動力は減速ギアボックスを介して主油圧ポンプ・燃料ポンプ・潤滑油ポンプを駆動し、通常の回転数はそれぞれ3,918 rpm・3,918 rpm・12,215 rpmである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/87）潤滑油ポンプは潤滑油を約60 psiに昇圧して対応する水噴霧ボイラへ送って冷却し、潤滑油系ごとの2個のアキュムレータが熱膨張の吸収、最低約15 psiaの圧力の維持、無重量・全高度の潤滑油溜めの役割を果たす。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/88） | REQ-SYS-10 | F-APU-TRB-01・F-APU-TRB-02・F-APU-TRB-04・F-APU-TRB-05・F-APU-TRB-06・F-APU-TRB-13 | PH-1（打上げ前）・PH-2（上昇）・PH-6（再突入）・PH-7（着陸後） | D（実証） |
| REQ-APU-04 | 各 APU の制御器は回転数を約 74,000 rpm（103%）に保ち、80% 未満・129% 超で自動停止でき、回転数は3個のピックアップで冗長に測ること。 | 103%（74,160 rpm）、停止 80%・129% | 通常の運転では主制御弁がパルス動作でAPUの回転数を約74,000 rpm（103%）に保ち、副制御弁は113%で制御しようとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/87）自動停止を有効にした制御器は、回転数が57,600 rpm（80%）未満または92,880 rpm（129%）超になるとAPUを停止し、停止の指令で副燃料弁と燃料タンク隔離弁を閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/90）タービン回転数は3個の磁気ピックアップ（MPU）が制御器に与え、2個のMPUが故障すると4つの回転数制御チャンネルのうち3つが低速度を判定してAPUが停止する（A10-26の根拠）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1551） | REQ-SYS-10 | F-APU-CTL-01・F-APU-CTL-02・F-APU-CTL-04・F-APU-CTL-05・F-APU-CTL-06・F-APU-CTL-07・F-APU-CTL-10・F-APU-CTL-11・IF-APU-15 | PH-1（打上げ前）・PH-2（上昇）・PH-6（再突入）・PH-7（着陸後） | D（実証） |
| REQ-APU-05 | 独立した3系統の油圧系を持ち、主油圧ポンプで 3,000 psi を供給して SSME の TVC・弁、空力舵面、脚・ブレーキ・前輪操向を駆動すること。 | 3系統、3,000 psi・0〜63 gpm | オービタには独立した3系統の油圧系があり、各系統は主油圧ポンプ、リザーバ、ブートストラップ式アキュムレータ、フィルタ、制御弁、油圧／フレオン熱交換器、電動循環ポンプ、電気ヒータから成る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/83）主油圧ポンプは可変容量形で、APUが通常の回転数のとき3,000 psiで0〜63 gpm、高速のとき最大69.6 gpmを送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/100）各油圧系はSSMEのジンバル（TVC）、SSMEの制御弁、空力舵面、外部タンク切離しアンビリカルの格納、主脚・前脚の展開、主脚ブレーキとアンチスキッド、前輪操舵（系1、系2が予備）の作動器に圧力を与える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/83） | REQ-SYS-10 | F-APU-HYD-01・F-APU-HYD-02・F-APU-HYD-03・F-APU-HYD-04・F-APU-HYD-05・F-APU-HYD-06・F-APU-HYD-09・F-APU-HYD-10・IF-APU-11 | PH-1（打上げ前）・PH-2（上昇）・PH-6（再突入）・PH-7（着陸後） | D（実証） |
| REQ-APU-06 | APU が止まっている軌道上では、電動の循環ポンプで作動油を循環させてフレオンループの熱で温め、アキュムレータの圧力を保つこと。 | 再加圧 1,960 psi、同時運転 1台 | 作動油はフレオン／油圧熱交換器を通ってオービタのフレオン冷却ループの熱を受け取り、温度制御のバイパス弁は熱交換器の入口が105°F未満なら熱交換器へ通し、115°F超なら迂回させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/102）HYD CIRC PUMPスイッチをGPCにすると、SM GPCは制御温度のどれかが（場所により）0°Fまたは−10°F未満になると循環ポンプを起動し、すべてが20°F超になるか系1で15分・系2・3で10分たつと停止する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/103）アキュムレータ圧力が1,960 psiまで下がると制御プログラムは再加圧のために循環ポンプを最優先で起動し（このとき2台が同時に運転しうる）、1,960 psiを超えるか2分たつと停止する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/103） | REQ-SYS-10 | F-APU-CIR-01・F-APU-CIR-02・F-APU-CIR-03・F-APU-CIR-04・F-APU-CIR-05・F-APU-CIR-07・F-APU-CIR-11 | PH-3（軌道） | D（実証） |
| REQ-APU-07 | 各 APU・油圧系に独立した水噴霧ボイラを持ち、冗長な制御器で潤滑油を約 250°F、作動油を 210〜220°F に自動で保つこと。 | 潤滑油 約 250°F・作動油 210〜220°F | 水噴霧ボイラ系はAPU・油圧系ごとに1台の同一で独立した3台のボイラから成り、各ボイラは潤滑油系と油圧系の管に水を噴霧して蒸発させることで潤滑油と作動油を冷やし、蒸気は垂直尾翼の右舷側にあるボイラごとの排気ダクトから出る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/95）冗長な電気制御器が完全に自動で運転し、潤滑油を約250°F、作動油を210〜220°Fに保つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/95） | REQ-SYS-10 | F-APU-WSB-01・F-APU-WSB-03・F-APU-WSB-04・F-APU-WSB-05・F-APU-WSB-06・F-APU-WSB-09・F-APU-WSB-11 | PH-1（打上げ前）・PH-2（上昇）・PH-6（再突入）・PH-7（着陸後） | D（実証） |
| REQ-APU-08 | 1系統を失っても EOM まで飛行を続け、2系統を失えば次の PLS で突入する判断ができるよう、突入に2系統の油圧を確保すること。 | 1系統喪失で EOM、2系統喪失で次の PLS | 1系統を失っても通常どおりEOMまで飛行を続け、次の故障で突入中に単一APUの運用となる冗長度の喪失では次のPLSを行う（A10-21A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1532）2系統を失った場合は次のPLSで突入し、全系統の喪失が迫っている場合は最も早い機会にアボートする（優先順位はRTLS・TAL・AOA・初日PLS・PLS・ELS）（A10-21A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1533） | REQ-SYS-10・REQ-SYS-14 | F-APU-OPS-06・F-APU-OPS-07・F-APU-OPS-08・F-APU-OPS-09・F-APU-OPS-10 | PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | A（解析） |
| REQ-APU-09 | 軌道離脱の前に、2〜3系統が使えるときは APU の燃料 192 lb と WSB の水 63 lb を残すこと。 | 燃料 192 lb・水 63 lb（2〜3系統） | 軌道離脱の前に必要なAPU燃料とWSBの水は、2〜3系統が使えるときは192 lbと63 lb、1系統のときは203 lbと67 lbである（A10-32B）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1563） | REQ-SYS-13・REQ-SYS-15 | F-APU-OPS-11・F-APU-OPS-04・F-APU-OPS-05 | PH-4（離脱準備）・PH-6（再突入） | A（解析） |

## 5. トレース表（機能行・IF → 要求）

APU/HYDの機能説明書 8 件の機能行 92 件と、要求の割付先の IF 行について、参照している要求を示す。機能行のうち 55 件が要求から参照され、37 件は参照されていない（判断の欄を参照）。

| 文書 | 機能・IF | 内容 | 要求 | 判断 |
|---|---|---|---|---|
| SSD-FD-APU-001 | F-APU-01 | オービタには独立した3系統の油圧系がある。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-APU-001 | F-APU-02 | 各系統は、SSMEのジンバルによる推力方向制御、SSMEの各種制御弁、空力舵面（エレボン、ボディフラップ、ラダー／スピードブレーキ）、外部タンク切離しアンビリカルの格納、降着装置の展開、主脚ブレーキとアンチスキッド、前輪操向に油圧を供給する。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-APU-001 | F-APU-03 | 3台の同一で独立した改良型APUが、油圧系に動力を供給する。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-APU-001 | F-APU-04 | APUはヒドラジン燃料のタービン駆動装置で、軸動力で油圧ポンプを回し、1台の質量は約88 lb、出力は135馬力である。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-APU-001 | F-APU-05 | 3台のAPUは打上げ5分前から上昇段階を通して作動し、最初のOMS噴射の後に停止される。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-APU-CIR-001 | F-APU-CIR-01 | 循環ポンプは1台の電動機で駆動する2台の固定容量形歯車ポンプを直列にしたもので、高圧・小流量側（2,500 psig）は休止中のアキュムレータ圧力の維持に、低圧・大流量側（350 psig）は作動油の循環に使う。 | REQ-APU-06 | — |
| SSD-FD-APU-CIR-001 | F-APU-CIR-02 | 作動油はフレオン／油圧熱交換器を通ってオービタのフレオン冷却ループの熱を受け取り、温度制御のバイパス弁は熱交換器の入口が105°F未満なら熱交換器へ通し、115°F超なら迂回させる。 | REQ-APU-06 | — |
| SSD-FD-APU-CIR-001 | F-APU-CIR-03 | HYD CIRC PUMPスイッチをGPCにすると、SM GPCは制御温度のどれかが（場所により）0°Fまたは−10°F未満になると循環ポンプを起動し、すべてが20°F超になるか系1で15分・系2・3で10分たつと停止する。 | REQ-APU-06 | — |
| SSD-FD-APU-CIR-001 | F-APU-CIR-04 | 循環ポンプは1台で2.4 kWを使うため、制御プログラムは同時に1台だけが運転するよう優先順位をつける。 | REQ-APU-06 | — |
| SSD-FD-APU-CIR-001 | F-APU-CIR-05 | アキュムレータ圧力が1,960 psiまで下がると制御プログラムは再加圧のために循環ポンプを最優先で起動し（このとき2台が同時に運転しうる）、1,960 psiを超えるか2分たつと停止する。 | REQ-APU-06 | — |
| SSD-FD-APU-CIR-001 | F-APU-CIR-06 | 循環ポンプは、APU制御器が対応するAPUの運転指令を出すと自動的に切り離される。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-APU-06）が受け持つ構成・運用の記述。 |
| SSD-FD-APU-CIR-001 | F-APU-CIR-07 | 循環で温められない油圧配管の部分はサーモスタットで自動制御するヒータで温め、各部は冗長なA・Bのヒータを持ち、パネルA12のHYDRAULIC HEATERスイッチで制御する。 | REQ-APU-06 | — |
| SSD-FD-APU-CIR-001 | F-APU-CIR-08 | MPS/TVC隔離弁とブレーキ隔離弁は圧力で作動し、操作に100 psid以上が必要なため、APUが止まっているときは循環ポンプで圧力を与える（A10-74A）。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-APU-06）が受け持つ構成・運用の記述。 |
| SSD-FD-APU-CIR-001 | F-APU-CIR-09 | 循環ポンプは、FESの故障時のフレオンループの補助冷却や、APUの始動がEI−13分より遅れるときの作動油の加温にも使う（A10-74A）。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-APU-06）が受け持つ構成・運用の記述。 |
| SSD-FD-APU-CIR-001 | F-APU-CIR-10 | 循環ポンプの本体温度または運転中のリザーバ温度が230°Fを超えると循環ポンプを喪失とするが、循環ポンプの喪失だけでは油圧系の喪失としない（A10-51B）。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-APU-06）が受け持つ構成・運用の記述。 |
| SSD-FD-APU-CIR-001 | F-APU-CIR-11 | 軌道上ではAPUの始動前のリザーバ温度を162°F未満に保つよう努め、そのために循環ポンプの運転時間を減らすか、ATCSを組み替えてフレオン／油圧熱交換器でのフレオン温度を95°F未満に下げる（A10-73E）。 | REQ-APU-06 | — |
| SSD-FD-APU-CIR-001 | F-APU-CIR-12 | 循環ポンプの起動時には大きな突入電流・4〜5 Vの母線電圧の低下・電磁干渉が生じるため、オービタが電力を与える火工品を使うペイロード展開の間は循環ポンプを入り切りさせない（A10-74B）。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-APU-06）が受け持つ構成・運用の記述。 |
| SSD-FD-APU-CTL-001 | F-APU-CTL-01 | 各APUは専用のデジタル制御器を持ち、制御器は故障を検知し、タービン回転数、ギアボックスの加圧、燃料ポンプ・ガス発生器のヒータを制御する。 | REQ-APU-04 | — |
| SSD-FD-APU-CTL-001 | F-APU-CTL-02 | 制御器はパネルR2のAPU CNTLR PWRスイッチで入切し、ONで制御器とAPUに28 V直流電力が送られ、制御器は内部の2重の遠隔電力制御器で冗長に給電される。 | REQ-APU-04 | — |
| SSD-FD-APU-CTL-001 | F-APU-CTL-03 | APU 1・2・3の制御器は、それぞれ後部アビオニクスベイ4・5・6の棚3のコールドプレートに取り付けられる。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-APU-04）が受け持つ構成・運用の記述。 |
| SSD-FD-APU-CTL-001 | F-APU-CTL-04 | 通常の運転では主制御弁がパルス動作でAPUの回転数を約74,000 rpm（103%）に保ち、副制御弁は113%で制御しようとする。 | REQ-APU-04 | — |
| SSD-FD-APU-CTL-001 | F-APU-CTL-05 | 主燃料制御弁のパルスの頻度と長さはAPUにかかる油圧の負荷で決まり、回転数が目標を超えると弁が閉じて燃料はバイパス管で燃料ポンプの入口へ戻る。 | REQ-APU-04 | — |
| SSD-FD-APU-CTL-001 | F-APU-CTL-06 | APU SPEED SELECTスイッチのNORMは回転数を74,160 rpm（103%±8%）、HIGHは81,360 rpm（113%±8%）に制御し、HIGHでは82,800 rpm（115%）が第2の予備となる。 | REQ-APU-04 | — |
| SSD-FD-APU-CTL-001 | F-APU-CTL-07 | 自動停止を有効にした制御器は、回転数が57,600 rpm（80%）未満または92,880 rpm（129%）超になるとAPUを停止し、停止の指令で副燃料弁と燃料タンク隔離弁を閉じる。 | REQ-APU-04 | — |
| SSD-FD-APU-CTL-001 | F-APU-CTL-08 | 始動の論理は、始動指令から10.5秒間は低速度の検査を遅らせて正常な回転数に達する時間を与えるが、過速度の検査は遅らせない。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-APU-04）が受け持つ構成・運用の記述。 |
| SSD-FD-APU-CTL-001 | F-APU-CTL-09 | R2のAPU/HYD READY TO START表示は、ガス発生器温度190°F超、タービン回転数80%未満、WSB制御器の準備完了、燃料タンク隔離弁の開、主油圧ポンプの減圧がそろうと灰色になり、始動して80%を超えるとバーバーポールになる。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-APU-04）が受け持つ構成・運用の記述。 |
| SSD-FD-APU-CTL-001 | F-APU-CTL-10 | タービン回転数は3個の磁気ピックアップ（MPU）が制御器に与え、2個のMPUが故障すると4つの回転数制御チャンネルのうち3つが低速度を判定してAPUが停止する（A10-26の根拠）。 | REQ-APU-04 | — |
| SSD-FD-APU-CTL-001 | F-APU-CTL-11 | デジタル制御器の冗長性により誤った自動停止は極めて起こりにくく、始動から10.5秒を過ぎた後の誤停止には制御器部品またはMPUの2つ以上の故障が必要である（A10-26の根拠）。 | REQ-APU-04 | — |
| SSD-FD-APU-CTL-001 | F-APU-CTL-12 | APU AUTO SHUT DOWNスイッチをINHIBITにすると自動停止だけが禁止され、80%未満・129%超ではAPU UNDERSPEED・APU OVERSPEEDの灯と警報音は出続ける。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-APU-04）が受け持つ構成・運用の記述。 |
| SSD-FD-APU-FUL-001 | F-APU-FUL-01 | 各APUの燃料系は燃料タンクと燃料タンク隔離弁、燃料ポンプ、燃料制御弁から成り、3台のAPUと燃料系は後部胴体にある。 | REQ-APU-01 | — |
| SSD-FD-APU-FUL-001 | F-APU-FUL-02 | 燃料は貯蔵性の無水ヒドラジンで、中央に隔膜を持つ総容量約350 lbのタンクに入れ、隔膜の反対側のGN2の圧力で燃料を配管へ押し出す。 | REQ-APU-01 | — |
| SSD-FD-APU-FUL-001 | F-APU-FUL-03 | 燃料タンクは直径28インチの球形で、タンク1・2は後部胴体の左舷、タンク3は右舷にあり、打上げ前に365 psiに加圧される。 | REQ-APU-01 | — |
| SSD-FD-APU-FUL-001 | F-APU-FUL-04 | 打上げ前の標準の搭載量は約332 lbで、ミッションでの公称運転時間90分、またはAOAのように約110分連続運転するアボートを支え、運転中のAPUは毎分約3〜3.5 lbの燃料を消費する。 | REQ-APU-01 | — |
| SSD-FD-APU-FUL-001 | F-APU-FUL-05 | 各燃料配管にはフィルタがあり、配管はフィルタの下流で2本の並列の経路に分かれ、各経路の隔離弁がAPUへの燃料の冗長な経路となる。 | REQ-APU-01 | — |
| SSD-FD-APU-FUL-001 | F-APU-FUL-06 | 燃料タンク隔離弁は電磁弁で、両弁を閉じた後の熱の戻りで下流の圧力がタンク圧力より40〜200 psi高くなると逆方向に逃がし、弁の温度は弁ごとに2点（APUごとに4点）計測される。 | REQ-APU-02 | — |
| SSD-FD-APU-FUL-001 | F-APU-FUL-07 | 燃料ポンプは固定容量形の歯車ポンプで、減速ギアボックスを介してタービンに駆動されて約1,400〜1,500 psiを吐出し、出口のフィルタが詰まると約1,725 psiでポンプ入口へ逃がす。 | REQ-APU-01 | — |
| SSD-FD-APU-FUL-001 | F-APU-FUL-08 | 燃料ポンプ軸のシールからの漏れはAPUごとに500 ccの回収ボトルへ導かれ、ボトルが満杯になると約45 psiaで破裂板が破れて機外へ排出される。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-APU-01・REQ-APU-02）が受け持つ構成・運用の記述。 |
| SSD-FD-APU-FUL-001 | F-APU-FUL-09 | 回転数は燃料ポンプの下流に直列に置いた主・副の電磁パルス式燃料制御弁で制御し、主弁は電力を失うと全開になり、副弁は電力を失うと閉じてAPUを停止させる。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-APU-01・REQ-APU-02）が受け持つ構成・運用の記述。 |
| SSD-FD-APU-FUL-001 | F-APU-FUL-10 | 燃料タンク・燃料配管・水配管のヒータはA・Bの冗長な系に分かれ、パネルA12のAPU HEATER TANK/FUEL LINE/H2O SYSスイッチで選んで1系統ずつ使い、サーモスタットで55〜65°Fに保つ。 | REQ-APU-02 | — |
| SSD-FD-APU-FUL-001 | F-APU-FUL-11 | 燃料タンク・燃料配管の圧力の説明のつかない低下などでヒドラジンの漏れが確認または疑われる場合はAPUを喪失とし、漏れの確認は地上が行う（A10-1）。 | REQ-APU-02 | — |
| SSD-FD-APU-FUL-001 | F-APU-FUL-12 | ヒドラジンは35°Fで凍るため、燃料系の温度を35°F超に保てない場合と、燃料配管が2回以上の凍結・解凍を受けた場合はAPUを喪失とする（A10-1）。 | REQ-APU-02 | — |
| SSD-FD-APU-HYD-001 | F-APU-HYD-01 | オービタには独立した3系統の油圧系があり、各系統は主油圧ポンプ、リザーバ、ブートストラップ式アキュムレータ、フィルタ、制御弁、油圧／フレオン熱交換器、電動循環ポンプ、電気ヒータから成る。 | REQ-APU-05 | — |
| SSD-FD-APU-HYD-001 | F-APU-HYD-02 | 主油圧ポンプは可変容量形で、APUが通常の回転数のとき3,000 psiで0〜63 gpm、高速のとき最大69.6 gpmを送る。 | REQ-APU-05 | — |
| SSD-FD-APU-HYD-001 | F-APU-HYD-03 | 各主ポンプには電動の減圧弁があり、APUの始動時には吐出圧を2,900〜3,100 psiから500〜1,000 psiに下げてAPUに必要なトルクを減らす。 | REQ-APU-05 | — |
| SSD-FD-APU-HYD-001 | F-APU-HYD-04 | 各油圧系のフィルタモジュールの高圧逃がし弁は、供給管の圧力が3,850 psidを超えるとポンプ供給管の圧力を戻り管へ逃がす。 | REQ-APU-05 | — |
| SSD-FD-APU-HYD-001 | F-APU-HYD-05 | リザーバの圧力はアキュムレータのブートストラップ機構（可変面積のピストンで約40:1に減圧）で保たれ、主ポンプと循環ポンプの入口圧力を確保して始動・運転中のキャビテーションを防ぐ。 | REQ-APU-05 | — |
| SSD-FD-APU-HYD-001 | F-APU-HYD-06 | 主ポンプが止まるとプライオリティ弁が閉じてアキュムレータが約2,500 psiを保ち、主ポンプの入口に約62 psiaを与える（確実な始動に必要な最低入口圧力は20 psia）。 | REQ-APU-05 | — |
| SSD-FD-APU-HYD-001 | F-APU-HYD-07 | 各リザーバの容量は8ガロンで、作動油は火災の危険を減らす合成炭化水素のMIL-H-83282であり、リザーバの量はMEDS表示のHYDRAULIC QUANTITY計に百分率で示される。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-APU-05）が受け持つ構成・運用の記述。 |
| SSD-FD-APU-HYD-001 | F-APU-HYD-08 | アキュムレータはベローズ式で70°FでGN2を1,700 psigに予圧し、GN2の容積は115立方インチ、作動油の容積は51立方インチである。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-APU-05）が受け持つ構成・運用の記述。 |
| SSD-FD-APU-HYD-001 | F-APU-HYD-09 | 各油圧系はSSMEのジンバル（TVC）、SSMEの制御弁、空力舵面、外部タンク切離しアンビリカルの格納、主脚・前脚の展開、主脚ブレーキとアンチスキッド、前輪操舵（系1、系2が予備）の作動器に圧力を与える。 | REQ-APU-05 | — |
| SSD-FD-APU-HYD-001 | F-APU-HYD-10 | 切替弁は同じ作動器に割り当てた2つの冗長な系の圧力を比べて十分な圧力の系から作動器へ流す2位置弁で、3系統を割り当てた作動器には主／待機1と待機1／待機2の2個の切替弁がある（A10-51の根拠）。 | REQ-APU-05 | — |
| SSD-FD-APU-HYD-001 | F-APU-HYD-11 | MPS/TVC隔離弁は軌道上では閉じ、SSMEの油圧の再加圧とSSMEの再配置のときだけ開く（A10-71D）。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-APU-05）が受け持つ構成・運用の記述。 |
| SSD-FD-APU-HYD-001 | F-APU-HYD-12 | 油圧系は、APUの運転中に主ポンプを加圧して要求流量で2,760〜3,500 psiaを出せない場合、確認された隔離できない漏れがある場合、作動油の温度を−40°F超に保てない場合などに喪失とする（A10-51）。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-APU-05）が受け持つ構成・運用の記述。 |
| SSD-FD-APU-HYD-001 | F-APU-HYD-13 | 上昇中に油圧の漏れがあっても対処はMECOの後とし、MECOの後に該当するMPS/TVC隔離弁を閉じ、それでも隔離できなければ低圧（LOW PRESS）にするかAPUを停止する（A10-72A）。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-APU-05）が受け持つ構成・運用の記述。 |
| SSD-FD-APU-OPS-001 | F-APU-OPS-01 | WSB制御器は打上げの8時間前に電源を入れてボイラの水タンクを加圧し、APUの起動は燃料を節約するためにできるだけ遅らせ、T−6分15秒に操縦手が起動前の手順を始める。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-APU-09・REQ-APU-08）が受け持つ構成・運用の記述。 |
| SSD-FD-APU-OPS-001 | F-APU-OPS-02 | T−5分に3台を起動して主ポンプを加圧し、T−4分5秒までに3系統の主ポンプ圧力が2,800 psiを超えなければ地上打上げシーケンサ（GLS）が自動で打上げを保留する。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-APU-09・REQ-APU-08）が受け持つ構成・運用の記述。 |
| SSD-FD-APU-OPS-001 | F-APU-OPS-03 | APUとWSBは主エンジンのパージ・投棄・格納のシーケンスが終わると停止するが、AOAを宣言した場合はAPUを止めずに油圧ポンプを減圧して燃料の消費を抑える。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-APU-09・REQ-APU-08）が受け持つ構成・運用の記述。 |
| SSD-FD-APU-OPS-001 | F-APU-OPS-04 | 軌道離脱の前日にはMCCが選んだ1台のAPUを起動し、主ポンプを通常の圧力にして空力舵面の駆動を確かめるFCSチェックアウトを約5分行う。 | REQ-APU-09 | — |
| SSD-FD-APU-OPS-001 | F-APU-OPS-05 | 軌道離脱噴射の5分前にMCCが選んだ1台を低圧のまま起動し、突入インタフェースの13分前に残る2台を起動して3系統を通常の圧力にする。 | REQ-APU-09 | — |
| SSD-FD-APU-OPS-001 | F-APU-OPS-06 | 上昇中は、APUや油圧の故障が破局につながらない限り主エンジンへの油圧を途切れさせないようMECOの後まで系を停止せず、動力飛行中に1系統を失うとSSMEが油圧ロックアップになる。 | REQ-APU-08 | — |
| SSD-FD-APU-OPS-001 | F-APU-OPS-07 | APUは確認された129%超の過速度を除いてMECOの前に停止せず、上昇中やRTLSで1系統以上を失った場合は残るAPUを高速で運転する（A10-25）。 | REQ-APU-08 | — |
| SSD-FD-APU-OPS-001 | F-APU-OPS-08 | 1系統を失っても通常どおりEOMまで飛行を続け、次の故障で突入中に単一APUの運用となる冗長度の喪失では次のPLSを行う（A10-21A）。 | REQ-APU-08 | — |
| SSD-FD-APU-OPS-001 | F-APU-OPS-09 | 2系統を失った場合は次のPLSで突入し、全系統の喪失が迫っている場合は最も早い機会にアボートする（優先順位はRTLS・TAL・AOA・初日PLS・PLS・ELS）（A10-21A）。 | REQ-APU-08 | — |
| SSD-FD-APU-OPS-001 | F-APU-OPS-10 | 突入・アボートと計画では、空力舵面のための2系統、脚展開の冗長、必要時の前輪操舵、半分のブレーキ能力の冗長を確保するためにAPUを「必要」と定義し、単一のAPU/油圧系での着陸は認定されていない（A10-33）。 | REQ-APU-08 | — |
| SSD-FD-APU-OPS-001 | F-APU-OPS-11 | 軌道離脱の前に必要なAPU燃料とWSBの水は、2〜3系統が使えるときは192 lbと63 lb、1系統のときは203 lbと67 lbである（A10-32B）。 | REQ-APU-09 | — |
| SSD-FD-APU-OPS-001 | F-APU-OPS-12 | APUの燃料と窒素の漏れは量が少なくなるまで区別できないため燃料の漏れとして扱い、MECOの後はAPUを停止して燃料タンク隔離弁を閉じ、隔離できなければ再起動して燃料を使い切る。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-APU-09・REQ-APU-08）が受け持つ構成・運用の記述。 |
| SSD-FD-APU-TRB-001 | F-APU-TRB-01 | ガス発生器は圧力容器にShell 405触媒の床を収めたもので、APUの排気室の内側に取り付けられ、ヒドラジンは触媒に触れると発熱反応で約1,700°Fの高温ガスに分解する。 | REQ-APU-03 | — |
| SSD-FD-APU-TRB-001 | F-APU-TRB-02 | 高温ガスは単段のタービン翼車を2回通過した後、ガス発生器の外側を流れて機外へ出て、排気ダクトでのガスの温度は約1,000°Fである。 | REQ-APU-03 | — |
| SSD-FD-APU-TRB-001 | F-APU-TRB-03 | タービンの排気はガス発生器の外側を流れてそれを冷やした後、後部胴体の上部の垂直尾翼の近くにある排気ダクトから機外へ出る。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-APU-03・REQ-APU-02）が受け持つ構成・運用の記述。 |
| SSD-FD-APU-TRB-001 | F-APU-TRB-04 | タービンの軸動力は減速ギアボックスを介して主油圧ポンプ・燃料ポンプ・潤滑油ポンプを駆動し、通常の回転数はそれぞれ3,918 rpm・3,918 rpm・12,215 rpmである。 | REQ-APU-03 | — |
| SSD-FD-APU-TRB-001 | F-APU-TRB-05 | 潤滑油系は固定容量ポンプを用いる掃気式で、無重量下でも潤滑油ポンプの始動に必要な吸込み圧力を得るためにGN2で加圧され、潤滑油系ごとに専用の窒素容器を持つ。 | REQ-APU-03 | — |
| SSD-FD-APU-TRB-001 | F-APU-TRB-06 | 潤滑油ポンプは潤滑油を約60 psiに昇圧して対応する水噴霧ボイラへ送って冷却し、潤滑油系ごとの2個のアキュムレータが熱膨張の吸収、最低約15 psiaの圧力の維持、無重量・全高度の潤滑油溜めの役割を果たす。 | REQ-APU-03 | — |
| SSD-FD-APU-TRB-001 | F-APU-TRB-07 | ガス発生器床・噴射器・排気ガスの温度はBFS SM SYS SUMM 2（GG BED、INJ、EGT）に表示され、床温度は軌道上の停止中にヒータで保温している床の監視に使う。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-APU-03・REQ-APU-02）が受け持つ構成・運用の記述。 |
| SSD-FD-APU-TRB-001 | F-APU-TRB-08 | 噴射器の水冷却系は約180分の通常の冷却期間がとれない場合だけ使い、熱の戻りでヒドラジンが噴射器への燃料配管で爆発しないよう噴射器の分岐流路を400°F未満に冷やす。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-APU-03・REQ-APU-02）が受け持つ構成・運用の記述。 |
| SSD-FD-APU-TRB-001 | F-APU-TRB-09 | 噴射器冷却用の水タンクは後部胴体に1個あって3台のAPUが共用し、約9 lb（連続21分）の水を120 psiのGN2で押し出し、高温での再起動の約6回分に足りる。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-APU-03・REQ-APU-02）が受け持つ構成・運用の記述。 |
| SSD-FD-APU-TRB-001 | F-APU-TRB-10 | 改良型APUの燃料ポンプとガス発生器弁モジュールはヒートシンクと遮熱板による受動冷却で熱の戻りを防ぎ、燃料ポンプが210°F超またはガス発生器弁モジュールが200°F超のときは爆発のおそれがあるため再起動しない。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-APU-03・REQ-APU-02）が受け持つ構成・運用の記述。 |
| SSD-FD-APU-TRB-001 | F-APU-TRB-11 | パネルA12のAPU HEATER GAS GEN/FUEL PUMPスイッチのヒータ（A・B系）は燃料ポンプとガス発生器弁モジュールを約100°Fに保ち、APU HEATER LUBE OIL LINEスイッチのヒータは潤滑油配管を55〜65°Fに保つ。 | REQ-APU-02 | — |
| SSD-FD-APU-TRB-001 | F-APU-TRB-12 | MECOの後に潤滑油出口温度が325°F超またはギアボックス軸受温度が350°F超になると、MCCの判断でAPUを停止する（A10-24A）。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-APU-03・REQ-APU-02）が受け持つ構成・運用の記述。 |
| SSD-FD-APU-TRB-001 | F-APU-TRB-13 | ボイラによる潤滑油の冷却をすべて失うと、全運転温度に達したAPUは2〜3分で軸受が焼き付く。 | REQ-APU-03 | — |
| SSD-FD-APU-WSB-001 | F-APU-WSB-01 | 水噴霧ボイラ系はAPU・油圧系ごとに1台の同一で独立した3台のボイラから成り、各ボイラは潤滑油系と油圧系の管に水を噴霧して蒸発させることで潤滑油と作動油を冷やし、蒸気は垂直尾翼の右舷側にあるボイラごとの排気ダクトから出る。 | REQ-APU-07 | — |
| SSD-FD-APU-WSB-001 | F-APU-WSB-02 | 各ボイラは45×31×19インチで制御器とベントノズルを含めて181 lbあり、後部胴体のXo 1340〜1400に取り付けられ、水の容量は142 lbである。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-APU-07）が受け持つ構成・運用の記述。 |
| SSD-FD-APU-WSB-001 | F-APU-WSB-03 | 作動油はボイラを3回、潤滑油は2回通り、作動油の管には3本、潤滑油の管には2本の噴霧バーで水を吹き付け、両者の給水弁は別々に制御される。 | REQ-APU-07 | — |
| SSD-FD-APU-WSB-001 | F-APU-WSB-04 | 冗長な電気制御器が完全に自動で運転し、潤滑油を約250°F、作動油を210〜220°Fに保つ。 | REQ-APU-07 | — |
| SSD-FD-APU-WSB-001 | F-APU-WSB-05 | 2台の制御器はパネルR2のBOILER CNTLR/HTRスイッチで選んで給電し（OFFで両方の電源を断つ）、水量はA・Bのどちらかの制御器に給電していれば得られる。 | REQ-APU-07 | — |
| SSD-FD-APU-WSB-001 | F-APU-WSB-06 | 予め入れた水が蒸発した後で能動冷却が始まる前に残った水が凍る凍結への対策として、ベローズ式の貯水タンクに水とPGMEの混合液（PGME 47%・水53%）を入れ、STS-114以後はボイラとタンクの両方に搭載している。 | REQ-APU-07 | — |
| SSD-FD-APU-WSB-001 | F-APU-WSB-07 | 各ボイラのGN2は直径6インチの球形容器に70°Fで2,400 psi・0.77 lb入り、R2のBOILER N2 SUPPLYスイッチで操作する遮断弁と24.5〜26 psigに調圧する調圧器を経て水タンクを加圧する。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-APU-07）が受け持つ構成・運用の記述。 |
| SSD-FD-APU-WSB-001 | F-APU-WSB-08 | 打上げ時は各ボイラに最大4.86 lbのPGME/水の混合液を入れておくプールモードで、上昇中に水が沸騰し尽くすと打上げの約13分後に噴霧モードに移り、作動油は上昇中は通常は噴霧冷却を要しない。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-APU-07）が受け持つ構成・運用の記述。 |
| SSD-FD-APU-WSB-001 | F-APU-WSB-09 | 運転中の制御器は作動油と潤滑油の出口温度をそれぞれ208°F・250°Fの設定点と比べて給水弁を開き、水は最大で作動油部に毎分10 lb、潤滑油部に毎分5 lb流れる。 | REQ-APU-07 | — |
| SSD-FD-APU-WSB-001 | F-APU-WSB-10 | 作動油の流量の一時的な急増（最大63 gpm）でボイラが流量を制限しないよう、ボイラ前後の差圧が49 psiを超えるとばね式のポペット弁が開いて逃がす。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-APU-07）が受け持つ構成・運用の記述。 |
| SSD-FD-APU-WSB-001 | F-APU-WSB-11 | ボイラ・水タンク・蒸気ベントには軌道上の凍結を防ぐ電気ヒータがあり、水タンクとボイラのヒータは50°Fで入り55°Fで切れ、蒸気ベントのヒータはAPU起動の約2時間前から使う。 | REQ-APU-07 | — |
| SSD-FD-APU-WSB-001 | F-APU-WSB-12 | WSBは、N2・H2Oの漏れが消耗品のレッドラインを割る場合、制御器A・Bのどちらでも潤滑油戻り温度325°F未満・リザーバ温度230°F未満を保てない場合、2つの蒸気ベントヒータをともに失った場合などに喪失とし、WSBの喪失はやがて対応するAPU・油圧系の喪失につながる（A10-101）。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-APU-07）が受け持つ構成・運用の記述。 |
| SSD-FD-APU-WSB-001 | F-APU-WSB-13 | WSBのN2供給弁は、APUの運転の準備と運転中を除いて閉じておく（A10-121）。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-APU-07）が受け持つ構成・運用の記述。 |
| SSD-FD-APU-HYD-001 | IF-APU-11 | （IF の行。内容は所有文書） | REQ-APU-05 | — |
| SSD-FD-APU-CTL-001 | IF-APU-15 | （IF の行。内容は所有文書） | REQ-APU-04 | — |

## 6. 要求から参照されない機能行

要求から参照されない機能行 37 件のうち、37 件は「要求なしで妥当」、0 件は「要求が抜けている」と判断した。「要求なしで妥当」は、系の全般の記述（親の説明書）か、同じ下位機能に要求があり、その要求が受け持つ構成・数量・運用の記述であるものである。「要求が抜けている」は、今後 L2 要求を足す候補である。文書ごとの件数を示す。

| 文書 | 機能行 | 要求から参照 | 要求なしで妥当 | 要求が抜けている |
|---|---|---|---|---|
| SSD-FD-APU-001 | 5 | 0 | 5 | 0 |
| SSD-FD-APU-CIR-001 | 12 | 7 | 5 | 0 |
| SSD-FD-APU-CTL-001 | 12 | 8 | 4 | 0 |
| SSD-FD-APU-FUL-001 | 12 | 10 | 2 | 0 |
| SSD-FD-APU-HYD-001 | 13 | 8 | 5 | 0 |
| SSD-FD-APU-OPS-001 | 12 | 8 | 4 | 0 |
| SSD-FD-APU-TRB-001 | 13 | 7 | 6 | 0 |
| SSD-FD-APU-WSB-001 | 13 | 7 | 6 | 0 |

## 7. 検証（V&V）

各要求の検証方法（解析 A・試験 T・検査 I・実証 D）について、その方法で要求が満たされたことを示す公開資料の頁を「検証の根拠」に示す（9件のうち根拠あり 9件・根拠なし 0件）。根拠が見つからないものは「根拠なし」とし、理由を書いた。

| ID | 検証方法 | 状態 | 検証の根拠 |
|---|---|---|---|
| REQ-APU-01 | D（実証） | 根拠あり | PDF p46（IFA STS-122-V-02）：APU 3の燃料シール排出配管のA系ヒータのサーモスタットの設定点がずれ、A12のA系ヒータをB系に切り替えたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=46） |
| REQ-APU-02 | D（実証） | 根拠あり | PDF p46（IFA STS-114-V-06）：APU 1の排出系の圧力が上昇後の停止の約1時間後から低下し、燃料の漏れではなくGN2の外部漏れと判断されたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=46） |
| REQ-APU-03 | D（実証） | 根拠あり | 2.2.1.1節（PDF p23）：打上げ試行時の潤滑油フィルタの詰まり（ペンタエリスリトール）と、ガス発生器の気泡を示す室圧の低下を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=23） |
| REQ-APU-04 | D（実証） | 根拠あり | APU System（PDF p44）：STS-115以後のAPU 1のガス発生器床ヒータの下側の設定点のずれが、予想どおり再現したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=44） |
| REQ-APU-05 | D（実証） | 根拠あり | PDF p46：打上げ前の循環ポンプの運転によるブートストラップ・アキュムレータの充填と、APUの起動・停止時のプライオリティ弁の開閉が規格内だったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=46） |
| REQ-APU-06 | D（実証） | 根拠あり | 1-3・1-4（PDF p43〜44）：循環ポンプを使った隔離弁の位置の変更と、主母線の母線結合を組み替えて循環ポンプ2・3を手動で30分運転する手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=44） |
| REQ-APU-07 | D（実証） | 根拠あり | PDF p6：MECOの後にWSB 3が制御器A・BのいずれでもAPU 3の潤滑油を冷却せず、APU 3を停止した（解析ではWSBの凍結）と記す。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=6） |
| REQ-APU-08 | A（解析） | 根拠あり | 表1-1（PDF p13）：APUのFMEA 314件（NASA 313件）・CIL 106件、油圧・WSBのFMEA 447件（NASA 364件）・CIL 183件（NASA 111件）、油圧アクチュエータのFMEA 112件・CIL 59件を示す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13） |
| REQ-APU-09 | A（解析） | 根拠あり | PDF p8：APU 2でFCSチェックアウトを行い（12分2秒）、WSB 2の制御器2B・2Aでともに冷却が正常であることを確かめて、突入にWSB 2を制約なく使ったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-59%20Space%20Shuttle%20Mission%20Report.pdf#page=8） |

## 8. 注記（出典間の相違・構成変更）

> **注記** トレース表の「要求なしで妥当」は、親の説明書の全般の記述か、同じ下位機能（文書）に割り付けた要求が受け持つ構成・運用の記述であることを根拠に、文書ごとにまとめて判断したもので、機能行1件ずつに要求の要否を検討したものではない。

## 9. 参考文献

1. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p84） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/84
2. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p94） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/94
3. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-1 APU LOSS DEFINITIONS（PDF p1529） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1529
4. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p87） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/87
5. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p88） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/88
6. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p90） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/90
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-26 APU AUTO SHUTDOWN INHIBIT MANAGEMENT（PDF p1551） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1551
8. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p83） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/83
9. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p100） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/100
10. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p102） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/102
11. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p103） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/103
12. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p95） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/95
13. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-21 LOSS OF APU/HYDRAULIC SYSTEM(S) ACTIONS（PDF p1532） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1532
14. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-21 LOSS OF APU/HYDRAULIC SYSTEM(S) ACTIONS（PDF p1533） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1533
15. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-32 APU/HYD CONSUMABLES（PDF p1563） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1563
16. STS-122 Mission Report Auxiliary Power Unit System（PDF p46） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=46
17. STS-114 Mission Report Auxiliary Power Unit System（PDF p46） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=46
18. STS-2 Orbiter Mission Report 2.2.1.2 Fuel Pump/Gas Generator Valve Module Cooling（PDF p23） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=23
19. NSTS-37452 STS-125 Mission Report（2010） Auxiliary Power Unit System（PDF p44） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=44
20. Orbit Operations Checklist Rev M PCN-10 1-4 MANUAL CIRC PUMP OPS（PDF p44） — https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=44
21. NASA-CR-194116 STS-54 Mission Report（1993） Mission Summary（PDF p6） — https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=6
22. NASA-CR-185550 IOA: FMEA/CIL Assessment Interim Report Table 1-1 FMEA/CIL Assessment Overview (Interim)（PDF p13） — https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13
23. STS-59 Mission Report Mission Summary（PDF p8） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-59%20Space%20Shuttle%20Mission%20Report.pdf#page=8

## 10. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（L2 要求 9件、機能行 92件とのトレース、検証の根拠） |
| Rev. A | 2026-10-07 | 上位の要求 REQ-SYS-13 の文を改めた（Rev. BG の要求の値の見直し）（Rev. BG） |
