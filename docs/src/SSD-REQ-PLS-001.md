# ペイロード系（PLS）要求書（L2）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-REQ-PLS-001 |
| 表題 | ペイロード系（PLS）要求書（L2） |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-REQ-SYS-001 |
| 関連図 | SSD-SYS-ARC-001 図66 ペイロード系 機能構成 |

## 1. 目的

PLSに対する要求（L2）を示し、L1 の要求（SSD-REQ-SYS-001）からの展開と、PLSの機能説明書（SSD-FD-PLS-001 と下位の説明書）の機能行・IF 行へのトレースを示す。要求から参照されない機能行について、要求が無くて妥当か、要求が抜けているかを判断する。要求は実績の運用値から導いたものである。

## 2. 要求の書き方

各要求は、要求文（〜すること）、値、根拠（出典の頁）、上位の L1 要求、割付先（機能行 F-ID・IF 行 IF-ID）、フェーズ（SSD-OPS-PHASE-001 の PH・AB の ID）、検証方法を持つ。検証方法は A（解析）、T（試験）、I（検査）、D（実証）の4つで、要求の性質から想定する方法を示す。要求はすべて、公開資料に記された実績の運用値・限界値から導いた「実績の運用値から導いた要求」である。

## 3. 上位の要求

本書の要求の上位の L1 要求を示す。

| L1 | 要求 |
|---|---|
| REQ-SYS-02 | ペイロードを高度 100〜312 n.mi. の地球周回軌道へ運べること。 |
| REQ-SYS-03 | 直径 15 ft・長さ 60 ft のペイロードベイにペイロードを収めること。 |
| REQ-SYS-07 | 乗員室を普段着で過ごせる環境（14.7 ± 0.2 psia）に保つこと。 |
| REQ-SYS-10 | 各機能を2重・3重に冗長化し、1故障でミッションを継続でき、2故障で安全に帰還できること。 |
| REQ-SYS-14 | 系統の故障に対し、Go/No-Go の判定基準（A2-1001 ほか各章の1001番）で上昇の継続・MDF・次の PLS への着陸を判断できること。 |

## 4. ペイロード系要求

| ID | 要求 | 値 | 根拠 | 上位 | 割付先 | フェーズ | 検証 |
|---|---|---|---|---|---|---|---|
| REQ-PLS-01 | RMS は6関節・長さ 50 ft 3 in のアームで、無重量の環境で最大 586,000 lb のペイロードを展開・回収できること。 | 最大 586,000 lb、長さ 50 ft 3 in | RMSはPDRSの機械の腕で、ペイロードの展開・回収、EVAの足場、宇宙ステーションの組立、ペイロードベイの点検に使い、最大586,000 lbを動かせる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/687）アームは6つの関節を構造部材（ブーム）でつなぎ、先端にエンドエフェクタを持ち、長さ50 ft 3 in・直径15 inである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/688）RMSは地上の重力の下では関節モータが腕の重さを動かせないため、無重量の環境でだけ運用できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/688） | REQ-SYS-02・REQ-SYS-03 | F-PLS-ARM-01・F-PLS-ARM-02・F-PLS-ARM-03・F-PLS-ARM-04・F-PLS-ARM-07 | PH-3（軌道） | D（実証） |
| REQ-PLS-02 | 各関節はブレーキで静止を保ち、主母線 A の SPA と主母線 B の予備駆動増幅器の2つの経路で関節を駆動できること。 | 28 V DC、駆動経路 2 | 各関節のモータはブレーキで静止状態に保たれ、ブレーキの解除には28 V DCを加え続ける必要がある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/690）各関節のデジタルサーボ電力増幅器（SPA）は主母線Aの+28 V DCを関節の駆動に合わせ、肩の予備駆動増幅器は主母線Bの電力で選んだ関節を駆動する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/691） | REQ-SYS-10 | F-PLS-ARM-05・F-PLS-ARM-06・F-PLS-ARM-08 | PH-3（軌道） | T（試験） |
| REQ-PLS-03 | MCIU で SM GPC・表示操作部・RMS の情報を交換し、組込み試験で重大な故障を検知して乗員と地上へ知らせ、故障した MCIU は予備と交換できること。 | 予備 MCIU 1 | MCIUの主な機能はSM GPC・表示操作部・RMSとの情報の交換と評価で、データの処理、故障への対応、エンドエフェクタの自動捕獲・解放の論理を受け持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/689）RMSの飛行では予備のMCIUを積むのが普通で、故障したMCIUを飛行中に交換できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/689）RMSは組込み試験で重大な故障を検知し、パネルA8Uの表示灯とDPS表示に出し、テレメトリで地上へ送れる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/688） | REQ-SYS-10・REQ-SYS-14 | F-PLS-CTL-01・F-PLS-CTL-02・F-PLS-CTL-06・F-PLS-CTL-07 | PH-3（軌道） | T（試験） |
| REQ-PLS-04 | THC・RHC で RMS を手動で操作でき、運用は2人の操作員で行うこと。 | 操作員 2 | 並進ハンドコントローラ（THC）は、ソフトウェアで定めた分解点（POR）の3次元の直線運動を手動で指令する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/689）回転ハンドコントローラ（RHC）はピッチ・ヨー・ロールの指令を出し、握りに速度保持・速度切替・捕獲/解放のスイッチを持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/689）軌道上の運用は2人の操作員で行い、R1は左舷の後部飛行甲板でアームの軌跡を、R2は右舷でDPSの入力・PRLA・カメラを操作する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/688） | REQ-SYS-03 | F-PLS-CTL-03・F-PLS-CTL-04・F-PLS-CTL-05 | PH-3（軌道） | D（実証） |
| REQ-PLS-05 | MPM は2重の冗長モータでアームを収納・運用位置へ回し、保持ラッチは冗長モータで駆動し、アームを戻せないときはドアを閉められるよう投棄できること。 | 分離点 4（左舷） | MPMの駆動系は2重の冗長モータでトルクチューブを回し、アームを収納位置からペイロードベイ外の運用位置へ回転させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/698）アームは左舷の縦通材に沿って後・中・前の3か所でラッチされ、保持ラッチは冗長モータで駆動される2重の回転面である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/699）アームやOBSSを受け台に戻せないときは、ペイロードベイドアを閉められるよう投棄でき、左舷には肩と3つの台座の4つの分離点がある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/699） | REQ-SYS-10 | F-PLS-MPM-01・F-PLS-MPM-02・F-PLS-MPM-03・F-PLS-MPM-04・F-PLS-MPM-05・F-PLS-MPM-06・F-PLS-MPM-07 | PH-3（軌道） | D（実証） |
| REQ-PLS-06 | 1回の飛行で最大3つのペイロードを3軸で支え、展開するペイロードは2重の電動機で駆動するラッチで固定すること。 | 最大 3ペイロード、縦通材 124点・キール 75点 | オービタのペイロード保持系は、1回の飛行で最大3つのペイロードを3軸で支える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/702）1つのペイロードには通常3〜4個の縦通材のラッチがあり、X・Z方向の荷重を受ける2つの主ラッチと、Z方向だけを受ける安定ラッチから成る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/703）PAYLOAD RETENTION LATCHESスイッチをLATCHにすると、選んだラッチの2重の電動機に交流電力が加わって閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/705） | REQ-SYS-03 | F-PLS-PRL-01・F-PLS-PRL-02・F-PLS-PRL-03・F-PLS-PRL-04・F-PLS-PRL-05・F-PLS-PRL-06・F-PLS-PRL-07 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | D（実証） |
| REQ-PLS-07 | ODS で ISS にドッキングし、外部エアロックで2つの宇宙機の間の気密な通路をつくること。 | 構造フック 12対 | ODSはISSへのドッキングに使い、外部エアロック・トラス組立・APDSの3つから成る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/673）外部エアロックは、ドッキング後に2つの宇宙機の間の気密な通路となる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/674）APDSは、ほぼ同じドッキング機構を両方の機体に付けて、捕獲・動的な減衰・整列・ハードドッキングを行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/674） | REQ-SYS-02・REQ-SYS-07 | F-PLS-ODS-01・F-PLS-ODS-02・F-PLS-ODS-03・F-PLS-ODS-04・F-PLS-ODS-05・F-PLS-ODS-06・F-PLS-ODS-07 | PH-3（軌道） | D（実証） |
| REQ-PLS-08 | RMS の運用の前に肩のブレースを解除し、点検を1飛行に1回できるだけ早く行い、少なくとも2つのよいカメラの視野を用意すること。 | 点検 約 1時間・カメラ ≧ 2 | RMSの運用の前に肩のブレースを解除し、荷物を持つ運用ではMPMを展開しておく。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/705）RMSの点検は約1時間の手順で1飛行に1回だけ行い、問題に対処する時間を取るためできるだけ早く組む。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/705）CCTVのカメラは肝心なときに故障しやすいので、RMSの運用には少なくとも2つのよいカメラの視野を用意する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/715） | REQ-SYS-03 | F-PLS-OPS-01・F-PLS-OPS-02・F-PLS-OPS-07 | PH-3（軌道） | D（実証） |
| REQ-PLS-09 | RMS の Go/No-Go 基準で各運用の継続を判断し、PDRS・PRLA の故障には EVA を冗長の1段として使えること。 | EVA を冗長の1段 | RMSのGo/No-Go基準は、肩のブレースの解除・投棄系・MPMの収納モータ・MRLなどの喪失の数について、受け台から出す・荷物なし・つかむ・荷物ありの各運用を続けられるかを示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1753）EVAは、PDRS（エンドエフェクタの解放、MPMの収納、MRLのラッチ、肩のブレースの解除、RMSの受け台への収納）の故障に対して冗長の1段として扱われる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=590）回収の可能性を残すため、展開するペイロードのPRLA・AKAは回収が選択肢でなくなるまで閉じず、故障したPRLAはEVAで開閉することを考える。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1635） | REQ-SYS-10・REQ-SYS-14 | F-PLS-OPS-03・F-PLS-OPS-04・F-PLS-OPS-05・F-PLS-OPS-06 | PH-3（軌道） | A（解析） |

## 5. トレース表（機能行・IF → 要求）

PLSの機能説明書 7 件の機能行 50 件と、要求の割付先の IF 行について、参照している要求を示す。機能行のうち 43 件が要求から参照され、7 件は参照されていない（判断の欄を参照）。

| 文書 | 機能・IF | 内容 | 要求 | 判断 |
|---|---|---|---|---|
| SSD-FD-PLS-001 | F-PLS-01 | PDRSは、ペイロードなどの物体を遠隔で保持・操作し、物体や作業を遠隔で監視するためのハードウェア・ソフトウェア・インタフェースで、RMS、マニピュレータ位置決め機構（MPM）、保持ラッチ（MRL）、MCIU、専用の表示・操作器を含む。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-PLS-001 | F-PLS-02 | RMSはPDRSの機械アームで、ペイロードの放出・回収、EVA乗員の足部拘束具や作業台の足場の提供、宇宙ステーションの構成品の結合、ペイロードベイの点検などを行う。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-PLS-001 | F-PLS-03 | アームは6つの関節と先端のエンドエフェクタを持ち、長さ50フィート3インチ、6自由度である。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-PLS-001 | F-PLS-04 | MCIUは、SM GPC、表示・操作器、RMSとの情報のやり取りを取り扱い、故障条件を解析し、エンドエフェクタの自動捕獲・解放の手順を制御する。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-PLS-001 | F-PLS-05 | ODSはシャトルを国際宇宙ステーション（ISS）にドッキングさせるためのもので、外部エアロック、トラス組立、APDSの3つの主要構成品から成り、ペイロードベイの576隔壁より後方に置かれる。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-PLS-001 | F-PLS-06 | 外部エアロックは、ドッキング後に2機の間に気密の内部トンネルを形成する。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-PLS-001 | F-PLS-07 | APDSは、ほぼ同一のドッキング機構を各機に取り付けて、捕獲、動的減衰、位置合わせ、ハードドッキングを行う。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-PLS-ARM-001 | F-PLS-ARM-01 | RMSはPDRSの機械の腕で、ペイロードの展開・回収、EVAの足場、宇宙ステーションの組立、ペイロードベイの点検に使い、最大586,000 lbを動かせる。 | REQ-PLS-01 | — |
| SSD-FD-PLS-ARM-001 | F-PLS-ARM-02 | アームは6つの関節を構造部材（ブーム）でつなぎ、先端にエンドエフェクタを持ち、長さ50 ft 3 in・直径15 inである。 | REQ-PLS-01 | — |
| SSD-FD-PLS-ARM-001 | F-PLS-ARM-03 | アームの重量は905 lb、系全体では994 lbである。 | REQ-PLS-01 | — |
| SSD-FD-PLS-ARM-001 | F-PLS-ARM-04 | RMSは地上の重力の下では関節モータが腕の重さを動かせないため、無重量の環境でだけ運用できる。 | REQ-PLS-01 | — |
| SSD-FD-PLS-ARM-001 | F-PLS-ARM-05 | 各関節のモータはブレーキで静止状態に保たれ、ブレーキの解除には28 V DCを加え続ける必要がある。 | REQ-PLS-02 | — |
| SSD-FD-PLS-ARM-001 | F-PLS-ARM-06 | 各関節のデジタルサーボ電力増幅器（SPA）は主母線Aの+28 V DCを関節の駆動に合わせ、肩の予備駆動増幅器は主母線Bの電力で選んだ関節を駆動する。 | REQ-PLS-02 | — |
| SSD-FD-PLS-ARM-001 | F-PLS-ARM-07 | 上腕・下腕のブームは薄肉の黒鉛/エポキシ複合材の円管で、端のフランジはアルミ合金である。 | REQ-PLS-01 | — |
| SSD-FD-PLS-ARM-001 | F-PLS-ARM-08 | 打上げ時は肩のブレースで肩ピッチの歯車列への荷重を抑え、軌道上で解除するが、軌道上で再びラッチすることはできない。 | REQ-PLS-02 | — |
| SSD-FD-PLS-CTL-001 | F-PLS-CTL-01 | MCIUの主な機能はSM GPC・表示操作部・RMSとの情報の交換と評価で、データの処理、故障への対応、エンドエフェクタの自動捕獲・解放の論理を受け持つ。 | REQ-PLS-03 | — |
| SSD-FD-PLS-CTL-001 | F-PLS-CTL-02 | RMSの飛行では予備のMCIUを積むのが普通で、故障したMCIUを飛行中に交換できる。 | REQ-PLS-03 | — |
| SSD-FD-PLS-CTL-001 | F-PLS-CTL-03 | 並進ハンドコントローラ（THC）は、ソフトウェアで定めた分解点（POR）の3次元の直線運動を手動で指令する。 | REQ-PLS-04 | — |
| SSD-FD-PLS-CTL-001 | F-PLS-CTL-04 | 回転ハンドコントローラ（RHC）はピッチ・ヨー・ロールの指令を出し、握りに速度保持・速度切替・捕獲/解放のスイッチを持つ。 | REQ-PLS-04 | — |
| SSD-FD-PLS-CTL-001 | F-PLS-CTL-05 | 軌道上の運用は2人の操作員で行い、R1は左舷の後部飛行甲板でアームの軌跡を、R2は右舷でDPSの入力・PRLA・カメラを操作する。 | REQ-PLS-04 | — |
| SSD-FD-PLS-CTL-001 | F-PLS-CTL-06 | RMSは組込み試験で重大な故障を検知し、パネルA8Uの表示灯とDPS表示に出し、テレメトリで地上へ送れる。 | REQ-PLS-03 | — |
| SSD-FD-PLS-CTL-001 | F-PLS-CTL-07 | MCIUは、ABE・表示操作部・SM GPCとの通信のつながり、エンドエフェクタの機能、自身の健全性を監視する。 | REQ-PLS-03 | — |
| SSD-FD-PLS-MPM-001 | F-PLS-MPM-01 | MPMはトルクチューブ、その上の台座、MRL、投棄系から成る。 | REQ-PLS-05 | — |
| SSD-FD-PLS-MPM-001 | F-PLS-MPM-02 | 左舷のMPMは肩の取付点（X=679.5）とX=911.05・1189・1256.5の3つの台座から成り、各台座は2つの45°の受け台と保持ラッチを持つ。 | REQ-PLS-05 | — |
| SSD-FD-PLS-MPM-001 | F-PLS-MPM-03 | MPMの駆動系は2重の冗長モータでトルクチューブを回し、アームを収納位置からペイロードベイ外の運用位置へ回転させる。 | REQ-PLS-05 | — |
| SSD-FD-PLS-MPM-001 | F-PLS-MPM-04 | アームは左舷の縦通材に沿って後・中・前の3か所でラッチされ、保持ラッチは冗長モータで駆動される2重の回転面である。 | REQ-PLS-05 | — |
| SSD-FD-PLS-MPM-001 | F-PLS-MPM-05 | アームやOBSSを受け台に戻せないときは、ペイロードベイドアを閉められるよう投棄でき、左舷には肩と3つの台座の4つの分離点がある。 | REQ-PLS-05 | — |
| SSD-FD-PLS-MPM-001 | F-PLS-MPM-06 | 肩の取付点の配線束は、支持部を分離する前に冗長な火工品式ギロチンで切断する。 | REQ-PLS-05 | — |
| SSD-FD-PLS-MPM-001 | F-PLS-MPM-07 | 右舷のMPMの台座はOBSSを支え、前方のMPMはラッチ時にOBSSへヒータ電力を与える。 | REQ-PLS-05 | — |
| SSD-FD-PLS-ODS-001 | F-PLS-ODS-01 | ODSはISSへのドッキングに使い、外部エアロック・トラス組立・APDSの3つから成る。 | REQ-PLS-07 | — |
| SSD-FD-PLS-ODS-001 | F-PLS-ODS-02 | ODSはペイロードベイの576隔壁の後方、トンネルアダプタの後ろにある。 | REQ-PLS-07 | — |
| SSD-FD-PLS-ODS-001 | F-PLS-ODS-03 | 外部エアロックは、ドッキング後に2つの宇宙機の間の気密な通路となる。 | REQ-PLS-07 | — |
| SSD-FD-PLS-ODS-001 | F-PLS-ODS-04 | トラス組立はドッキング系の構成品を収める構造の基盤で、ペイロードベイに取り付けられ、ランデブ・ドッキング用のカメラ・照明などを収める。 | REQ-PLS-07 | — |
| SSD-FD-PLS-ODS-001 | F-PLS-ODS-05 | APDSは、ほぼ同じドッキング機構を両方の機体に付けて、捕獲・動的な減衰・整列・ハードドッキングを行う。 | REQ-PLS-07 | — |
| SSD-FD-PLS-ODS-001 | F-PLS-ODS-06 | 機構の主な構成品は12対の構造フックを持つ基部リング、3枚の花弁を持つ伸縮する案内リング、6つの電磁ブレーキなどで、オービタ側が能動、ISS側が受動である。 | REQ-PLS-07 | — |
| SSD-FD-PLS-ODS-001 | F-PLS-ODS-07 | 後部飛行甲板の2つの操作パネルと外部エアロック床下の9つの電子箱が、機構に電力と論理制御を与える。 | REQ-PLS-07 | — |
| SSD-FD-PLS-OPS-001 | F-PLS-OPS-01 | RMSの運用の前に肩のブレースを解除し、荷物を持つ運用ではMPMを展開しておく。 | REQ-PLS-08 | — |
| SSD-FD-PLS-OPS-001 | F-PLS-OPS-02 | RMSの点検は約1時間の手順で1飛行に1回だけ行い、問題に対処する時間を取るためできるだけ早く組む。 | REQ-PLS-08 | — |
| SSD-FD-PLS-OPS-001 | F-PLS-OPS-03 | RMSのGo/No-Go基準は、肩のブレースの解除・投棄系・MPMの収納モータ・MRLなどの喪失の数について、受け台から出す・荷物なし・つかむ・荷物ありの各運用を続けられるかを示す。 | REQ-PLS-09 | — |
| SSD-FD-PLS-OPS-001 | F-PLS-OPS-04 | EVAは、PDRS（エンドエフェクタの解放、MPMの収納、MRLのラッチ、肩のブレースの解除、RMSの受け台への収納）の故障に対して冗長の1段として扱われる。 | REQ-PLS-09 | — |
| SSD-FD-PLS-OPS-001 | F-PLS-OPS-05 | RMSとペイロードを投棄しなければならないときは、宇宙に浮かぶ物体を減らすため、できる限り1つにまとめて投棄する。 | REQ-PLS-09 | — |
| SSD-FD-PLS-OPS-001 | F-PLS-OPS-06 | 回収の可能性を残すため、展開するペイロードのPRLA・AKAは回収が選択肢でなくなるまで閉じず、故障したPRLAはEVAで開閉することを考える。 | REQ-PLS-09 | — |
| SSD-FD-PLS-OPS-001 | F-PLS-OPS-07 | CCTVのカメラは肝心なときに故障しやすいので、RMSの運用には少なくとも2つのよいカメラの視野を用意する。 | REQ-PLS-08 | — |
| SSD-FD-PLS-PRL-001 | F-PLS-PRL-01 | 展開しないペイロードはボルト止めの受動の保持具で、展開するペイロードはモータ駆動の能動の保持具で固定する。 | REQ-PLS-06 | — |
| SSD-FD-PLS-PRL-001 | F-PLS-PRL-02 | オービタのペイロード保持系は、1回の飛行で最大3つのペイロードを3軸で支える。 | REQ-PLS-06 | — |
| SSD-FD-PLS-PRL-001 | F-PLS-PRL-03 | 取付点は左右の縦通材とベイ底の中心線に3.933 in間隔にあり、縦通材の124点・キールの75点を展開するペイロードに使える。 | REQ-PLS-06 | — |
| SSD-FD-PLS-PRL-001 | F-PLS-PRL-04 | ブリッジ金具はペイロードの荷重をオービタ構造へ伝え、PRLAとAKAの構造の取付面となる。 | REQ-PLS-06 | — |
| SSD-FD-PLS-PRL-001 | F-PLS-PRL-05 | 1つのペイロードには通常3〜4個の縦通材のラッチがあり、X・Z方向の荷重を受ける2つの主ラッチと、Z方向だけを受ける安定ラッチから成る。 | REQ-PLS-06 | — |
| SSD-FD-PLS-PRL-001 | F-PLS-PRL-06 | キールのラッチは側方の荷重を受け、閉じるとペイロードをY方向にベイの中心へ寄せるので、縦通材のラッチより先に閉じる。 | REQ-PLS-06 | — |
| SSD-FD-PLS-PRL-001 | F-PLS-PRL-07 | PAYLOAD RETENTION LATCHESスイッチをLATCHにすると、選んだラッチの2重の電動機に交流電力が加わって閉じる。 | REQ-PLS-06 | — |

## 6. 要求から参照されない機能行

要求から参照されない機能行 7 件のうち、7 件は「要求なしで妥当」、0 件は「要求が抜けている」と判断した。「要求なしで妥当」は、系の全般の記述（親の説明書）か、同じ下位機能に要求があり、その要求が受け持つ構成・数量・運用の記述であるものである。「要求が抜けている」は、今後 L2 要求を足す候補である。文書ごとの件数を示す。

| 文書 | 機能行 | 要求から参照 | 要求なしで妥当 | 要求が抜けている |
|---|---|---|---|---|
| SSD-FD-PLS-001 | 7 | 0 | 7 | 0 |
| SSD-FD-PLS-ARM-001 | 8 | 8 | 0 | 0 |
| SSD-FD-PLS-CTL-001 | 7 | 7 | 0 | 0 |
| SSD-FD-PLS-MPM-001 | 7 | 7 | 0 | 0 |
| SSD-FD-PLS-ODS-001 | 7 | 7 | 0 | 0 |
| SSD-FD-PLS-OPS-001 | 7 | 7 | 0 | 0 |
| SSD-FD-PLS-PRL-001 | 7 | 7 | 0 | 0 |

## 7. 検証（V&V）

各要求の検証方法（解析 A・試験 T・検査 I・実証 D）について、その方法で要求が満たされたことを示す公開資料の頁を「検証の根拠」に示す（9件のうち根拠あり 9件・根拠なし 0件）。根拠が見つからないものは「根拠なし」とし、理由を書いた。

| ID | 検証方法 | 状態 | 検証の根拠 |
|---|---|---|---|
| REQ-PLS-01 | D（実証） | 根拠あり | 2.21節 Remote Manipulator System（PDF p687〜697）：アームの寸法・関節駆動・SPA・構造を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/690） |
| REQ-PLS-02 | T（試験） | 根拠あり | （PDF p10）：SRMSの肘カメラが正しく収納されていなかった事象を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=10） |
| REQ-PLS-03 | T（試験） | 根拠あり | （PDF p44）：MCIUのテレメトリデータに関する飛行中の事象を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=44） |
| REQ-PLS-04 | D（実証） | 根拠あり | PDRSの章の目次（PDF p23）：C/WのMCIU灯やGPCデータ灯に対する処置を挙げる。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=23） |
| REQ-PLS-05 | D（実証） | 根拠あり | MPM STOW/DEPLOY（目次、PDF p50）：EVAでMPMを収納・展開する手順があることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=50） |
| REQ-PLS-06 | D（実証） | 根拠あり | PRLA OPEN/CLOSE（目次、PDF p50）：EVAでPRLAを開閉する手順があることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=50） |
| REQ-PLS-07 | D（実証） | 根拠あり | （PDF p51）：ドッキングリングの最終位置などのドッキングの記録を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=51） |
| REQ-PLS-08 | D（実証） | 根拠あり | （PDF p12）：SRMSの電源投入と点検を問題なく行い、OBSSを取り出した記録を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=12） |
| REQ-PLS-09 | A（解析） | 根拠あり | A12-1001（PDF p1753）：RMSの各運用を続けるためのGo/No-Go基準を示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1753） |

## 8. 注記（出典間の相違・構成変更）

> **注記** トレース表の「要求なしで妥当」は、親の説明書の全般の記述か、同じ下位機能（文書）に割り付けた要求が受け持つ構成・運用の記述であることを根拠に、文書ごとにまとめて判断したもので、機能行1件ずつに要求の要否を検討したものではない。

## 9. 参考文献

1. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p687） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/687
2. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p688） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/688
3. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p690） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/690
4. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p691） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/691
5. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p689） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/689
6. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p698） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/698
7. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p699） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/699
8. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p702） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/702
9. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p703） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/703
10. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p705） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/705
11. Shuttle Crew Operations Manual 2.19 Orbiter Docking System（USA007587 Rev. A CPN-1、PDF p673） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/673
12. Shuttle Crew Operations Manual 2.19 Orbiter Docking System（USA007587 Rev. A CPN-1、PDF p674） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/674
13. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p715） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/715
14. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A12-1001 RMS GO/NO-GO CRITERIA（PDF p1753） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1753
15. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A2-104 Systems Redundancy Requirements（PDF p590） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=590
16. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-281 PRLA'S/AKA'S（PDF p1635） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1635
17. STS-122 Mission Report Flight Summary（PDF p10） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=10
18. STS-108 Mission Report Orbiter Anomalies（PDF p44） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=44
19. JSC-48027 Rev. F Malfunction Procedures（MAL） 12 PDRS（PDF p23） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=23
20. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） Contents（PDF p50） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=50
21. STS-108 Mission Report Docking（PDF p51） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=51
22. STS-122 Mission Report Flight Summary（PDF p12） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=12

## 10. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（L2 要求 9件、機能行 50件とのトレース、検証の根拠） |
