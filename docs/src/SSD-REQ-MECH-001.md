# 機械系（MECH）要求書（L2）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-REQ-MECH-001 |
| 表題 | 機械系（MECH）要求書（L2） |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-REQ-SYS-001 |
| 関連図 | SSD-SYS-ARC-001 図68 機械系 機能構成 |

## 1. 目的

MECHに対する要求（L2）を示し、L1 の要求（SSD-REQ-SYS-001）からの展開と、MECHの機能説明書（SSD-FD-MECH-001 と下位の説明書）の機能行・IF 行へのトレースを示す。要求から参照されない機能行について、要求が無くて妥当か、要求が抜けているかを判断する。要求は実績の運用値から導いたものである。

## 2. 要求の書き方

各要求は、要求文（〜すること）、値、根拠（出典の頁）、上位の L1 要求、割付先（機能行 F-ID・IF 行 IF-ID）、フェーズ（SSD-OPS-PHASE-001 の PH・AB の ID）、検証方法を持つ。検証方法は A（解析）、T（試験）、I（検査）、D（実証）の4つで、要求の性質から想定する方法を示す。要求はすべて、公開資料に記された実績の運用値・限界値から導いた「実績の運用値から導いた要求」である。

## 3. 上位の要求

本書の要求の上位の L1 要求を示す。

| L1 | 要求 |
|---|---|
| REQ-SYS-03 | 直径 15 ft・長さ 60 ft のペイロードベイにペイロードを収めること。 |
| REQ-SYS-04 | オービタと2本の SRB を再使用できること。 |
| REQ-SYS-10 | 各機能を2重・3重に冗長化し、1故障でミッションを継続でき、2故障で安全に帰還できること。 |
| REQ-SYS-14 | 系統の故障に対し、Go/No-Go の判定基準（A2-1001 ほか各章の1001番）で上昇の継続・MDF・次の PLS への着陸を判断できること。 |
| REQ-SYS-18 | 前脚接地の降下率を 11.5 fps（9.9°/s）以下にすること。 |

## 4. 機械系要求

| ID | 要求 | 値 | 根拠 | 上位 | 割付先 | フェーズ | 検証 |
|---|---|---|---|---|---|---|---|
| REQ-MECH-01 | 展開・開閉する機構は2つの3相交流モータを持つ電動アクチュエータで動かし、1つのモータでも2倍の時間で所定の位置まで動かせること。 | モータ 2／アクチュエータ | 電動アクチュエータ（PDU）は2つの3相交流モータ・ブレーキ・差動組立・歯車箱・リミットスイッチを持ち、ET扉のセンタラインラッチ以外はトルクリミッタも持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/619）通常はアクチュエータの2つの交流モータが同時に動き（2モータ駆動）、1つだけで動かすと所定の位置まで2倍の時間がかかる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/619）ベント扉・PLBD・放熱器・ET扉・ペイロード保持ラッチなどの駆動機構は冗長のため2つのモータを持ち、駆動時間が1モータの時間を超えると故障とみなす。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1605） | REQ-SYS-10 | F-MECH-ACT-01・F-MECH-ACT-02・F-MECH-ACT-03・F-MECH-ACT-04・F-MECH-ACT-05・F-MECH-ACT-06・F-MECH-OPS-02 | PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | D（実証） |
| REQ-MECH-02 | 機械系の操作には常にタイマを使い、1モータの時間を過ぎても所定の状態にならなければ駆動の指令を続けないこと。 | 1モータの駆動時間 | 機械系を操作するときは常にタイマを使い、1モータの時間を過ぎても所定の状態にならなければ駆動の指令を続けない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/640） | REQ-SYS-10 | F-MECH-ACT-07 | PH-3（軌道）・PH-6（再突入） | A（解析） |
| REQ-MECH-03 | 左右2枚のペイロードベイドアでペイロードの開口をつくり、閉じた状態を 32 のラッチで保ち、右舷を先に開けて後に閉めること。 | ドア 2枚・1,600 ft2、ラッチ 32 | ドアは左右2枚で、各ドアは伸縮継手でつないだ5つの区分から成り、長さ約60 ft・合計面積1,600 ft2である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/627）右舷のドアは左舷のドアに重なってセンタラインの圧力・熱のシールとなるため、右舷を先に開けて後に閉める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/627）ドアは合計32のラッチ（センタラインの16と前後の隔壁の各8）で閉じた状態に保たれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/627） | REQ-SYS-03 | F-MECH-PLB-01・F-MECH-PLB-02・F-MECH-PLB-03・F-MECH-PLB-04・F-MECH-PLB-05・F-MECH-PLB-06・F-MECH-PLB-07 | PH-2c（上昇・軌道投入）・PH-3（軌道）・PH-4（離脱準備） | D（実証） |
| REQ-MECH-04 | 閉用のモータが2基そろっていなくても冗長側で閉じられるようにし、1つのラッチギャングが外れたままでも突入できること。 | 外れたギャング 1まで突入可 | ラッチギャングに閉用のモータが2基そろっていなくても、冗長側のモータで閉じられるので機体はフェイルセーフで、1つのギャングが外れたままでも突入できる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1622） | REQ-SYS-10 | F-MECH-OPS-03・F-MECH-OPS-01 | PH-4（離脱準備）・PH-6（再突入） | A（解析） |
| REQ-MECH-05 | 能動ベント系の 14 のベント口で、大気中から真空へ移る間とその逆に与圧されない区画を外気と等圧にすること。 | ベント口 14、開閉 5秒 | 能動ベント系は、大気中から真空へ移る間に与圧されない区画を外気と等圧にする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/621）能動ベント系は胴体の左右各7つ、計14のベント口から成り、各扉は圧力シールと熱シールを持ち、電動アクチュエータで内側へ動く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/621）ベント扉は2モータ駆動でそれぞれ5秒で開閉し、一部の扉は地上のパージのための中間位置を持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/621） | REQ-SYS-04 | F-MECH-VNT-01・F-MECH-VNT-02・F-MECH-VNT-03・F-MECH-VNT-04・F-MECH-OPS-04 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | D（実証） |
| REQ-MECH-06 | ET 分離後に ET アンビリカル扉を閉じ、露出した開口を突入の加熱から守ること。 | 扉 2 | ET分離後、ET扉を閉じて露出した開口を突入の加熱から守り、扉はTPSのタイルで覆われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/623）ET扉にはセンタラインラッチ（上昇中に扉を開いたまま保つ）とアップロックラッチ（閉じた扉を固定する）がある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/623） | REQ-SYS-04 | F-MECH-VNT-05・F-MECH-VNT-06・F-MECH-VNT-07・F-MECH-OPS-05 | PH-2b（上昇・第2段）・PH-2c（上昇・軌道投入） | D（実証） |
| REQ-MECH-07 | 3脚の降着装置を高度 300±100 ft・312 KEAS 以下で展開し、10秒以内に下げ位置でロックし、油圧が無いときは火工品でアップロックを外すこと。 | 300±100 ft・≦ 312 KEAS・10秒 | 展開を指令すると油圧系1の圧力でアップロックフックが外れ、脚はばね・油圧アクチュエータ・空気力・重力で下がり、10秒以内に下げ位置でロックされる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/544）油圧系1の圧力が無いときは、指令の1秒後に各脚のアップロックフックの火工品が自動でフックを外す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/544）脚は高度300±100 ft、最大312 KEASで展開する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/544） | REQ-SYS-10・REQ-SYS-18 | F-MECH-LDG-01・F-MECH-LDG-02・F-MECH-LDG-03・F-MECH-LDG-04・F-MECH-LDG-05・F-MECH-LDG-06・F-MECH-LDG-07・F-MECH-LDG-08 | PH-7（着陸後） | D（実証） |
| REQ-MECH-08 | 接地後に冗長な指令でドラッグシュートを展開して対地 60（±20） kt で投棄し、4つの主輪のブレーキを油圧系1・2（系3は予備）で効かせること。 | 投棄 60（±20） kt、主輪 4 | ドラッグシュートは垂直尾翼の基部に収め、機首下げの前にCDRかPLTの冗長な指令で展開し、主エンジンのベルを守るため対地60（±20） ktで投棄する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/546）4つの主輪はそれぞれ電気油圧式のディスクブレーキとアンチスキッドを持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/547）制動は油圧系1・2を能動、系3を予備とし、3つの主直流電気系をすべて使う冗長な構成で、主脚の荷重を検知して約1.9秒後から効く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/547） | REQ-SYS-10 | F-MECH-DEC-01・F-MECH-DEC-02・F-MECH-DEC-03・F-MECH-DEC-04・F-MECH-DEC-05 | PH-7（着陸後） | D（実証） |
| REQ-MECH-09 | 前輪操向は主脚接地・ピッチ角 0°未満・前脚接地がそろってから有効にし、GPC モードとキャスタモードを持つこと。 | 有効化条件 3 | 前脚の油圧操向アクチュエータはラダーペダルの電子指令に応じ、GPCモードとキャスタモードがある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/551）前輪操向は、主脚接地（WOW）・ピッチ角0°未満・前脚接地（WONG）の条件がそろってから有効になる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/551） | REQ-SYS-18 | F-MECH-DEC-06・F-MECH-DEC-07 | PH-7（着陸後） | D（実証） |
| REQ-MECH-10 | 脚の展開系の2つの喪失で次の PLS とし、制動・前輪操向による方向制御はゼロ故障許容を判定条件とすること。 | 展開系 2喪失で次の PLS | MMACSのGo/No-Go基準は、脚の油圧・火工品の展開系の2つの喪失で次のPLSとし、制動・前輪操向による方向制御はゼロ故障許容を判定条件とする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1665） | REQ-SYS-14 | F-MECH-OPS-06 | PH-3（軌道）・PH-6（再突入） | A（解析） |

## 5. トレース表（機能行・IF → 要求）

MECHの機能説明書 7 件の機能行 52 件と、要求の割付先の IF 行について、参照している要求を示す。機能行のうち 42 件が要求から参照され、10 件は参照されていない（判断の欄を参照）。

| 文書 | 機能・IF | 内容 | 要求 | 判断 |
|---|---|---|---|---|
| SSD-FD-MECH-001 | F-MECH-01 | 機械系は展開・格納・開閉を要する構成品で、アクティブベント系、ETアンビリカル扉、ペイロードベイドア、展開式放熱器、着陸・減速系を含み、それぞれを電気または油圧のアクチュエータで動かす。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-MECH-001 | F-MECH-02 | 電気機械式アクチュエータ（PDU）は2基の3相交流モータを持ち、モータとリミットスイッチの電力はモータ制御組立（MCA）から供給される。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-MECH-001 | F-MECH-03 | 着陸装置は前脚と左右の主脚から成る三脚式で、各脚は緩衝支柱と2組の車輪・タイヤを持ち、主脚の各車輪はアンチスキッド付きのブレーキを備える。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-MECH-001 | F-MECH-04 | 乗員が脚下げを指令すると、油圧系1の圧力で各脚のアップロックフックが外れ、脚はばね・油圧アクチュエータ・空気力・重力で下がって、10秒以内に下げ位置でロックされる。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-MECH-001 | F-MECH-05 | 4つの主脚車輪はそれぞれ電気油圧式ディスクブレーキとアンチスキッド系を備え、制動系は油圧系1・2を常用、系3を予備とし、3系統の主直流電源をすべて使う。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-MECH-001 | F-MECH-06 | 前脚の油圧操舵アクチュエータは機長・操縦手のラダーペダルからの電子指令に応答し、GPCモードとキャスタモードがある。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-MECH-001 | F-MECH-07 | ドラッグシュートは垂直安定板の基部に収納され、機首下げの前に機長または操縦手の冗長な指令で手動展開して、滑走中の減速を補助する。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-MECH-001 | F-MECH-08 | アクティブベント系は、地上の大気から宇宙の真空まで、機体の非与圧区画を周囲の環境と均圧させる。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-MECH-001 | F-MECH-09 | 外部タンク分離後は、露出した2つの後部アンビリカル開口をET扉で閉じ、再突入加熱から保護する。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-MECH-001 | F-MECH-10 | ペイロードベイドアは、ペイロードの放出・回収のための開口を与え、中部胴体を構造的に支持し、ECLSSの放熱器を収める。各扉は1基の電気機械式アクチュエータで開閉し、計32個のラッチで閉じた状態に保持する。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-MECH-ACT-001 | F-MECH-ACT-01 | 機械系はオービタの展開・収納・開閉する構成品で、それぞれを電動または油圧のアクチュエータが動かす。 | REQ-MECH-01 | — |
| SSD-FD-MECH-ACT-001 | F-MECH-ACT-02 | 機械系には能動ベント系・ETアンビリカル扉・ペイロードベイドア・展開式放熱器・着陸減速系があり、放熱器は2.9節、着陸減速系は2.14節で扱われる。 | REQ-MECH-01 | — |
| SSD-FD-MECH-ACT-001 | F-MECH-ACT-03 | 電動アクチュエータ（PDU）は2つの3相交流モータ・ブレーキ・差動組立・歯車箱・リミットスイッチを持ち、ET扉のセンタラインラッチ以外はトルクリミッタも持つ。 | REQ-MECH-01 | — |
| SSD-FD-MECH-ACT-001 | F-MECH-ACT-04 | アクチュエータのモータとリミットスイッチの電力はモータ制御組立（MCA）から供給され、MCAはパネルMA73CのMCA LOGICスイッチと遮断器で給電される。 | REQ-MECH-01 | — |
| SSD-FD-MECH-ACT-001 | F-MECH-ACT-05 | 通常はアクチュエータの2つの交流モータが同時に動き（2モータ駆動）、1つだけで動かすと所定の位置まで2倍の時間がかかる。 | REQ-MECH-01 | — |
| SSD-FD-MECH-ACT-001 | F-MECH-ACT-06 | MCAへのモータの入切の指令は、GPC、DPSの項目入力、またはハードワイヤのスイッチから出る。 | REQ-MECH-01 | — |
| SSD-FD-MECH-ACT-001 | F-MECH-ACT-07 | 機械系を操作するときは常にタイマを使い、1モータの時間を過ぎても所定の状態にならなければ駆動の指令を続けない。 | REQ-MECH-02 | — |
| SSD-FD-MECH-DEC-001 | F-MECH-DEC-01 | 接地後、乗員はドラッグシュートを展開し、制動と前輪操向を始める。 | REQ-MECH-08 | — |
| SSD-FD-MECH-DEC-001 | F-MECH-DEC-02 | ドラッグシュートは垂直尾翼の基部に収め、機首下げの前にCDRかPLTの冗長な指令で展開し、主エンジンのベルを守るため対地60（±20） ktで投棄する。 | REQ-MECH-08 | — |
| SSD-FD-MECH-DEC-001 | F-MECH-DEC-03 | 展開時は火工品で収納部の扉を外し、モータが9 ftのパイロットシュートを出し、それが40 ftの主傘を引き出す。 | REQ-MECH-08 | — |
| SSD-FD-MECH-DEC-001 | F-MECH-DEC-04 | 4つの主輪はそれぞれ電気油圧式のディスクブレーキとアンチスキッドを持つ。 | REQ-MECH-08 | — |
| SSD-FD-MECH-DEC-001 | F-MECH-DEC-05 | 制動は油圧系1・2を能動、系3を予備とし、3つの主直流電気系をすべて使う冗長な構成で、主脚の荷重を検知して約1.9秒後から効く。 | REQ-MECH-08 | — |
| SSD-FD-MECH-DEC-001 | F-MECH-DEC-06 | 前脚の油圧操向アクチュエータはラダーペダルの電子指令に応じ、GPCモードとキャスタモードがある。 | REQ-MECH-09 | — |
| SSD-FD-MECH-DEC-001 | F-MECH-DEC-07 | 前輪操向は、主脚接地（WOW）・ピッチ角0°未満・前脚接地（WONG）の条件がそろってから有効になる。 | REQ-MECH-09 | — |
| SSD-FD-MECH-LDG-001 | F-MECH-LDG-01 | 降着装置は前脚と左右の主脚の3脚式で、前脚は前胴の下部、主脚は中胴に隣接する左右の翼の下部にあり、各脚は緩衝支柱と2つの車輪・タイヤを持つ。 | REQ-MECH-07 | — |
| SSD-FD-MECH-LDG-001 | F-MECH-LDG-02 | 前脚は2枚、各主脚は1枚の扉を持ち、脚を下ろすと扉が自動で開く。 | REQ-MECH-07 | — |
| SSD-FD-MECH-LDG-001 | F-MECH-LDG-03 | 展開を指令すると油圧系1の圧力でアップロックフックが外れ、脚はばね・油圧アクチュエータ・空気力・重力で下がり、10秒以内に下げ位置でロックされる。 | REQ-MECH-07 | — |
| SSD-FD-MECH-LDG-001 | F-MECH-LDG-04 | 油圧系1の圧力が無いときは、指令の1秒後に各脚のアップロックフックの火工品が自動でフックを外す。 | REQ-MECH-07 | — |
| SSD-FD-MECH-LDG-001 | F-MECH-LDG-05 | 脚は高度300±100 ft、最大312 KEASで展開する。 | REQ-MECH-07 | — |
| SSD-FD-MECH-LDG-001 | F-MECH-LDG-06 | 脚は地上作業でだけ格納でき、飛行中には引き込めない。 | REQ-MECH-07 | — |
| SSD-FD-MECH-LDG-001 | F-MECH-LDG-07 | 緩衝支柱は空気/油式の緩衝器で、着陸の衝撃を和らげる主な手段である。 | REQ-MECH-07 | — |
| SSD-FD-MECH-LDG-001 | F-MECH-LDG-08 | ARMボタンで脚の展開弁の継電器を準備して火工品の制御器を活性化し、DNボタンで油圧系1・2の展開弁を開く。 | REQ-MECH-07 | — |
| SSD-FD-MECH-OPS-001 | F-MECH-OPS-01 | MMACSのGo/No-Go基準は、PLBD駆動モータを扉あたり2基、ラッチ駆動モータをギャングあたり2基として扱い、脚の展開系・制動・前輪操向の判定条件を示す。 | REQ-MECH-04 | — |
| SSD-FD-MECH-OPS-001 | F-MECH-OPS-02 | ベント扉・PLBD・放熱器・ET扉・ペイロード保持ラッチなどの駆動機構は冗長のため2つのモータを持ち、駆動時間が1モータの時間を超えると故障とみなす。 | REQ-MECH-01 | — |
| SSD-FD-MECH-OPS-001 | F-MECH-OPS-03 | ラッチギャングに閉用のモータが2基そろっていなくても、冗長側のモータで閉じられるので機体はフェイルセーフで、1つのギャングが外れたままでも突入できる。 | REQ-MECH-04 | — |
| SSD-FD-MECH-OPS-001 | F-MECH-OPS-04 | 軌道上ではベント扉を通常すべて開けておき、扉1・2の閉の冗長を失ったときは反対側の扉に開の冗長があれば閉じる。 | REQ-MECH-05 | — |
| SSD-FD-MECH-OPS-001 | F-MECH-OPS-05 | ET扉の閉の項目入力は、手動の閉操作がうまくいかず、センタラインラッチが収納されて両方の扉のラッチの準備が確かめられたとき、またはAOAのときだけ使う。 | REQ-MECH-06 | — |
| SSD-FD-MECH-OPS-001 | F-MECH-OPS-06 | MMACSのGo/No-Go基準は、脚の油圧・火工品の展開系の2つの喪失で次のPLSとし、制動・前輪操向による方向制御はゼロ故障許容を判定条件とする。 | REQ-MECH-10 | — |
| SSD-FD-MECH-PLB-001 | F-MECH-PLB-01 | ペイロードベイドアはペイロードの展開・回収の開口となり、中胴の構造を支え、ECLSSの放熱器を収める。 | REQ-MECH-03 | — |
| SSD-FD-MECH-PLB-001 | F-MECH-PLB-02 | ドアは左右2枚で、各ドアは伸縮継手でつないだ5つの区分から成り、長さ約60 ft・合計面積1,600 ft2である。 | REQ-MECH-03 | — |
| SSD-FD-MECH-PLB-001 | F-MECH-PLB-03 | 右舷のドアは左舷のドアに重なってセンタラインの圧力・熱のシールとなるため、右舷を先に開けて後に閉める。 | REQ-MECH-03 | — |
| SSD-FD-MECH-PLB-001 | F-MECH-PLB-04 | 各ドアは13のヒンジ（固定の5つと熱膨張を許す浮動の8つ）で中胴につながり、2つの3相交流モータを持つ1つの電動アクチュエータで開閉する。 | REQ-MECH-03 | — |
| SSD-FD-MECH-PLB-001 | F-MECH-PLB-05 | ドアは合計32のラッチ（センタラインの16と前後の隔壁の各8）で閉じた状態に保たれる。 | REQ-MECH-03 | — |
| SSD-FD-MECH-PLB-001 | F-MECH-PLB-06 | センタラインのラッチは4つずつ4組（ギャング）に分かれ、各組を1つの電動アクチュエータで駆動し、1組の開閉に20秒（2モータ）かかる。 | REQ-MECH-03 | — |
| SSD-FD-MECH-PLB-001 | F-MECH-PLB-07 | 右舷のドアがセンタラインのフック、左舷のドアがローラを持ち、フックが回ってローラをつかむ。 | REQ-MECH-03 | — |
| SSD-FD-MECH-VNT-001 | F-MECH-VNT-01 | 能動ベント系は、大気中から真空へ移る間に与圧されない区画を外気と等圧にする。 | REQ-MECH-05 | — |
| SSD-FD-MECH-VNT-001 | F-MECH-VNT-02 | 能動ベント系は胴体の左右各7つ、計14のベント口から成り、各扉は圧力シールと熱シールを持ち、電動アクチュエータで内側へ動く。 | REQ-MECH-05 | — |
| SSD-FD-MECH-VNT-001 | F-MECH-VNT-03 | ベント扉は2モータ駆動でそれぞれ5秒で開閉し、一部の扉は地上のパージのための中間位置を持つ。 | REQ-MECH-05 | — |
| SSD-FD-MECH-VNT-001 | F-MECH-VNT-04 | ベント扉はGNCのソフトウェアのシーケンスで操作し、秒読みのT-28秒にRSLSが開のシーケンスを呼ぶ。 | REQ-MECH-05 | — |
| SSD-FD-MECH-VNT-001 | F-MECH-VNT-05 | ETとオービタの燃料・電気のアンビリカルは機体下面の2つの後部の開口から入り、左の空洞に液体水素、右の空洞に液体酸素のアンビリカルがある。 | REQ-MECH-06 | — |
| SSD-FD-MECH-VNT-001 | F-MECH-VNT-06 | ET分離後、ET扉を閉じて露出した開口を突入の加熱から守り、扉はTPSのタイルで覆われる。 | REQ-MECH-06 | — |
| SSD-FD-MECH-VNT-001 | F-MECH-VNT-07 | ET扉にはセンタラインラッチ（上昇中に扉を開いたまま保つ）とアップロックラッチ（閉じた扉を固定する）がある。 | REQ-MECH-06 | — |

## 6. 要求から参照されない機能行

要求から参照されない機能行 10 件のうち、10 件は「要求なしで妥当」、0 件は「要求が抜けている」と判断した。「要求なしで妥当」は、系の全般の記述（親の説明書）か、同じ下位機能に要求があり、その要求が受け持つ構成・数量・運用の記述であるものである。「要求が抜けている」は、今後 L2 要求を足す候補である。文書ごとの件数を示す。

| 文書 | 機能行 | 要求から参照 | 要求なしで妥当 | 要求が抜けている |
|---|---|---|---|---|
| SSD-FD-MECH-001 | 10 | 0 | 10 | 0 |
| SSD-FD-MECH-ACT-001 | 7 | 7 | 0 | 0 |
| SSD-FD-MECH-DEC-001 | 7 | 7 | 0 | 0 |
| SSD-FD-MECH-LDG-001 | 8 | 8 | 0 | 0 |
| SSD-FD-MECH-OPS-001 | 6 | 6 | 0 | 0 |
| SSD-FD-MECH-PLB-001 | 7 | 7 | 0 | 0 |
| SSD-FD-MECH-VNT-001 | 7 | 7 | 0 | 0 |

## 7. 検証（V&V）

各要求の検証方法（解析 A・試験 T・検査 I・実証 D）について、その方法で要求が満たされたことを示す公開資料の頁を「検証の根拠」に示す（10件のうち根拠あり 10件・根拠なし 0件）。根拠が見つからないものは「根拠なし」とし、理由を書いた。

| ID | 検証方法 | 状態 | 検証の根拠 |
|---|---|---|---|
| REQ-MECH-01 | D（実証） | 根拠あり | P-42 PAYLOAD BAY DOOR SYS ENABLE RECOVERY（目次、PDF p42）：PLBDの駆動系の有効化を回復する手順があることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=42） |
| REQ-MECH-02 | A（解析） | 根拠あり | 2.17節 Electromechanical Actuators（PDF p619〜620）：PDUの構成とMCAからの電力・指令を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/619） |
| REQ-MECH-03 | D（実証） | 根拠あり | 9.1 PLB DOORS（目次、PDF p22）：ドア・ラッチギャングが1モータの時間内に開閉しないときの処置を挙げる。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=22） |
| REQ-MECH-04 | A（解析） | 根拠あり | （PDF p18）：両方のPLBDを正常に閉じた時刻を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=18） |
| REQ-MECH-05 | D（実証） | 根拠あり | Vent Door Operations（PDF p67）：ベント扉の運用の制約を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=67） |
| REQ-MECH-06 | D（実証） | 根拠あり | A10-261（PDF p1631）：軌道上・突入のベント扉の管理を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1631） |
| REQ-MECH-07 | D（実証） | 根拠あり | （PDF p17）：前脚扉のタイルの損傷の点検の記録を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=17） |
| REQ-MECH-08 | D（実証） | 根拠あり | （PDF p18）：ドラッグシュートの展開と投棄の時刻を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=18） |
| REQ-MECH-09 | D（実証） | 根拠あり | B-1 BRAKE ANTISKID CONTROL COMMAND INHIBIT（目次、PDF p40）：ブレーキのアンチスキッドの指令を禁止する手順があることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=40） |
| REQ-MECH-10 | A（解析） | 根拠あり | A10-241（PDF p1629）：ET扉の閉の項目入力を使う条件を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1629） |

## 8. 注記（出典間の相違・構成変更）

> **注記** トレース表の「要求なしで妥当」は、親の説明書の全般の記述か、同じ下位機能（文書）に割り付けた要求が受け持つ構成・運用の記述であることを根拠に、文書ごとにまとめて判断したもので、機能行1件ずつに要求の要否を検討したものではない。

## 9. 参考文献

1. Shuttle Crew Operations Manual 2.17 Mechanical Systems（USA007587 Rev. A CPN-1、PDF p619） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/619
2. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-161 DRIVE MECHANISMS LOSS DEFINITIONS（PDF p1605） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1605
3. Shuttle Crew Operations Manual 2.17 Mechanical Systems（USA007587 Rev. A CPN-1、PDF p640） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/640
4. Shuttle Crew Operations Manual 2.17 Mechanical Systems（USA007587 Rev. A CPN-1、PDF p627） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/627
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-209 PLBD Rule Reference Matrix（PDF p1622） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1622
6. Shuttle Crew Operations Manual 2.17 Mechanical Systems（USA007587 Rev. A CPN-1、PDF p621） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/621
7. Shuttle Crew Operations Manual 2.17 Mechanical Systems（USA007587 Rev. A CPN-1、PDF p623） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/623
8. Shuttle Crew Operations Manual 2.14 Landing/Deceleration System（USA007587 Rev. A CPN-1、PDF p544） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/544
9. Shuttle Crew Operations Manual 2.14 Landing/Deceleration System（USA007587 Rev. A CPN-1、PDF p546） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/546
10. Shuttle Crew Operations Manual 2.14 Landing/Deceleration System（USA007587 Rev. A CPN-1、PDF p547） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/547
11. Shuttle Crew Operations Manual 2.14 Landing/Deceleration System（USA007587 Rev. A CPN-1、PDF p551） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/551
12. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-1001 MMACS Go/No-Go Criteria（PDF p1665） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1665
13. In-Flight Maintenance Checklist Rev F PCN-13 Contents（PDF p42） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=42
14. JSC-48027 Rev. F Malfunction Procedures（MAL） 9.1 PLB Doors（PDF p22） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=22
15. STS-135 Mission Report Flight Day 14（PDF p18） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=18
16. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） PDF（PDF p67） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=67
17. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-261 VENT DOOR MANAGEMENT（PDF p1631） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1631
18. STS-114 Mission Report Flight Summary（PDF p17） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=17
19. In-Flight Maintenance Checklist Rev F PCN-13 Contents（PDF p40） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=40
20. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-241 ET UMBILICAL DOOR KEYBOARD ENTRY（PDF p1629） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1629

## 10. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（L2 要求 10件、機能行 52件とのトレース、検証の根拠） |
