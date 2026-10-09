# 外部タンク（ET）要求書（L2）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-REQ-ET-001 |
| 表題 | 外部タンク（ET）要求書（L2） |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-REQ-SYS-001 |
| 関連図 | SSD-SYS-ARC-001 図72 ET 機能構成 |

## 1. 目的

ETに対する要求（L2）を示し、L1 の要求（SSD-REQ-SYS-001）からの展開と、ETの機能説明書（SSD-FD-ET-001 と下位の説明書）の機能行・IF 行へのトレースを示す。要求から参照されない機能行について、要求が無くて妥当か、要求が抜けているかを判断する。要求は実績の運用値から導いたものである。

## 2. 要求の書き方

各要求は、要求文（〜すること）、値、根拠（出典の頁）、上位の L1 要求、割付先（機能行 F-ID・IF 行 IF-ID）、フェーズ（SSD-OPS-PHASE-001 の PH・AB の ID）、検証方法を持つ。検証方法は A（解析）、T（試験）、I（検査）、D（実証）の4つで、要求の性質から想定する方法を示す。要求はすべて、公開資料に記された実績の運用値・限界値から導いた「実績の運用値から導いた要求」である。

## 3. 上位の要求

本書の要求の上位の L1 要求を示す。

| L1 | 要求 |
|---|---|
| REQ-SYS-01 | システムは、オービタ、2本の SRB、推進薬を収める外部タンク、3基の SSME の4つの主要素で構成すること。 |
| REQ-SYS-02 | ペイロードを高度 100〜312 n.mi. の地球周回軌道へ運べること。 |
| REQ-SYS-04 | オービタと2本の SRB を再使用できること。 |
| REQ-SYS-10 | 各機能を2重・3重に冗長化し、1故障でミッションを継続でき、2故障で安全に帰還できること。 |
| REQ-SYS-15 | 上昇中のエンジン停止に対し、intact アボート（RTLS・TAL・AOA・ATO）で計画した着陸地点に安全に戻れること。 |
| REQ-SYS-16 | 地上支援設備に接続していない間、オービタ・外部タンク・SRB・ペイロードの電力をすべて機上で供給すること。 |

## 4. ET要求

| ID | 要求 | 値 | 根拠 | 上位 | 割付先 | フェーズ | 検証 |
|---|---|---|---|---|---|---|---|
| REQ-ET-01 | ET は液体水素と液体酸素を収め、上昇中に3基の SSME へ加圧して供給すること。 | LO2 約 2,787 lb/s・LH2 465 lb/s（104%） | ETは液体水素と液体酸素を収め、上昇中にオービタの3基のSSMEへ加圧して供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/67）LO2は直径17 inの供給管でインタタンクを通ってETの外へ出て右後部のアンビリカルへ送られ、SSMEの104%運転で約2,787 lb/sで流れる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/68）タンクは渦防止のバッフルとサイフォンの出口を持ち、LH2を直径17 inの管で左後部のアンビリカルへ送り、SSMEの104%運転で465 lb/sで流れる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/69） | REQ-SYS-01・REQ-SYS-02 | F-ET-LOX-01・F-ET-LOX-02・F-ET-LOX-05・F-ET-LH2-02 | PH-1（打上げ前）・PH-2（上昇） | D（実証） |
| REQ-ET-02 | LO2 タンクは 20〜22 psig、LH2 タンクは 32〜34 psia で運用し、揺動防止・渦防止の装置で残液を減らすこと。 | LO2 20〜22 psig・LH2 32〜34 psia | LO2タンクは化学切削のゴア・パネル・削り出し金具・リングコードを溶接したアルミのモノコック構造で、20〜22 psigで運用する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/68）タンクは残液を減らし液の動きを抑える揺動防止・渦防止の装置を持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/68）LH2タンクは溶接した胴の区分・5つの主リングフレーム・前後の楕円ドームから成るアルミのセミモノコック構造で、32〜34 psiaで運用する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/69） | REQ-SYS-02 | F-ET-LOX-03・F-ET-LOX-04・F-ET-LOX-06・F-ET-LOX-07・F-ET-LH2-01・F-ET-LH2-04 | PH-1（打上げ前）・PH-2（上昇） | T（試験） |
| REQ-ET-03 | 混合比 6:1 に必要な量より 1,100 lb 多い LH2 を積み、MECO の推進薬比を燃料過多にすること。 | LH2 余剰 1,100 lb | 6:1の混合比に必要な量より1,100 lb多いLH2を積み、MECOの推進薬比を燃料過多にしてエンジンの浸食を防ぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/69） | REQ-SYS-02 | F-ET-LH2-05・F-ET-LH2-06 | PH-1（打上げ前）・PH-2（上昇） | A（解析） |
| REQ-ET-04 | ET の構造は推進薬タンクとなり、オービタ・SRB との間の荷重を受けて分配し、全体の荷重経路の連続を与えること。 | 結合 前部1・後部2（オービタ） | インタタンクには前部のSRB/ET結合の推力ビームと金具があり、SRBの荷重をLO2・LH2タンクへ分配する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/68）ETの構造は推進薬タンクとなり、オービタ・SRBとの間で応力の荷重を受けて分配し、スペースシャトル全体の荷重経路の連続を与える。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=254）LH2タンクの前端にET/オービタの前部結合のポッド支柱、後端に2つの後部結合のボール金具とSRB/ETの後部安定支柱の取付けがある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/69） | REQ-SYS-01 | F-ET-ITK-01・F-ET-ITK-02・F-ET-ITK-03・F-ET-ITK-04・F-ET-ITK-05・F-ET-ITK-06・F-ET-LH2-03 | PH-1（打上げ前）・PH-2（上昇） | A（解析） |
| REQ-ET-05 | 後部のアンビリカルで推進薬・電力・信号をオービタとの間で伝え、ベント/リリーフ弁でタンクの過圧を防ぐこと。 | LH2 36 psig・LO2 31 psig で開 | ETは前部1か所・後部2か所でオービタに結合し、後部の結合部には液体・気体・電気信号・電力をタンクとオービタの間で伝えるアンビリカルがあり、オービタとSRBの間の信号もここを通る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/67）ETの2つの電気アンビリカルは、オービタからタンクと2本のSRBへ電力を送り、SRBとETの情報をオービタへ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/70）各タンクの前端にはベント/リリーフ弁があり、飛行中はLH2タンクのアレージ圧36 psig、LO2タンク31 psigで開く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/69） | REQ-SYS-01・REQ-SYS-16 | F-ET-UMB-01・F-ET-UMB-02・F-ET-UMB-03・F-ET-UMB-04・F-ET-UMB-05・F-ET-UMB-07 | PH-1（打上げ前）・PH-2（上昇） | T（試験） |
| REQ-ET-06 | 推進薬の枯渇センサを燃料・酸化剤に各4つ持ち、2つが乾きを検知するとエンジンを停止し、3つ以上の故障では TAL を判断すること。 | センサ 4／推進薬 | 推進薬の枯渇センサは燃料・酸化剤に各4つあり、規定の質量を過ぎてから2つが乾きを検知するとエンジンを停止する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/69）同じタンクの低レベルのセンサが3つ以上乾きに故障すると、上り坂の能力が無ければTALアボートを行う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1098） | REQ-SYS-10・REQ-SYS-15 | F-ET-UMB-06・F-ET-SEP-06 | PH-2（上昇）・AB-TAL（TAL（大洋横断着陸）） | A（解析） |
| REQ-ET-07 | 発泡断熱材とアブレータの TPS で、空気の液化と LH2 への熱の流れを防ぎ、ET の氷でオービタの TPS を傷めないこと。 | TPS 4,823 lb | ETのTPSは吹付けの発泡断熱材と成形済みのアブレータから成り、空気の液化を防ぐフェノールの断熱材も使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/69）LH2タンクの取付部には、空気にさらされる金属の液化を防ぎ、LH2への熱の流れを減らす断熱材が必要である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/69）秒読みでは、固定サービス構造の振り腕のキャップがETのLO2タンクのベントを覆って酸素の蒸気を吸い取り、ETに氷ができてオービタのTPSを傷めるのを防ぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/70） | REQ-SYS-04 | F-ET-TPS-01・F-ET-TPS-02・F-ET-TPS-03・F-ET-TPS-04・F-ET-TPS-05・F-ET-TPS-06 | PH-1（打上げ前）・PH-2（上昇） | I（検査） |
| REQ-ET-08 | MECO の後に ET を分離し、角速度や供給管の切離しの故障では分離を抑止して再接触を防ぎ、ET は定めた海域に落とすこと。 | 角速度 0.7 deg/s、遅延 MECO＋6分まで | MECOの後、機体の角速度が0.7 deg/sを超えるか供給管の切離しが故障すると「ET SEP INH」が出て、通常・ATOでは分離が抑止される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/603）ET/オービタの17 inの切離し弁が閉じたと確かめられないときは、開いた弁の推力の減衰を待って再接触を防ぐため、分離をMECO＋6分まで遅らせる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1102）分離の直前にオービタの信号でタンブル系が作動してLO2タンク前部の弁を開き、残りのガスを噴き出してETを回転させ、定めた区域に落とす。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=346） | REQ-SYS-15 | F-ET-SEP-01・F-ET-SEP-02・F-ET-SEP-03・F-ET-SEP-04・F-ET-SEP-07 | PH-2b（上昇・第2段）・AB-RTLS（RTLS（射点帰還）） | A（解析） |
| REQ-ET-09 | 射場安全系で打上げから ET の着水まで推進薬を分散させる手段を冗長な機器で持つこと。 | 電池・受信/解読器・アンテナ 冗長 | 射場安全系（RSS）は、打上げからETの着水までETの推進薬を分散させる手段で、冗長な電池・受信/解読器・アンテナ・火工品から成る。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=349） | REQ-SYS-10 | F-ET-SEP-05 | PH-1（打上げ前）・PH-2（上昇） | T（試験） |

## 5. トレース表（機能行・IF → 要求）

ETの機能説明書 7 件の機能行 43 件と、要求の割付先の IF 行について、参照している要求を示す。機能行のうち 39 件が要求から参照され、4 件は参照されていない（判断の欄を参照）。

| 文書 | 機能・IF | 内容 | 要求 | 判断 |
|---|---|---|---|---|
| SSD-FD-ET-001 | F-ET-01 | 外部タンクは液体水素燃料と液体酸素酸化剤を収め、打上げ・上昇中にオービタの3基のSSMEへ加圧供給する。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-ET-001 | F-ET-02 | SSME停止後に投棄され、大気圏に再突入して分解し、遠隔の海域に落下する（回収しない）。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-ET-001 | F-ET-03 | 前部の液体酸素タンク、主に電気機器を収める非与圧のインタータンク、後部の液体水素タンクの3主要部から成る。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-ET-001 | F-ET-04 | 全長153.8 ft、直径27.6 ftで、推進薬充填時にはシャトル構成要素の中で最大かつ最重量である。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-ET-ITK-001 | F-ET-ITK-01 | インタタンクは鋼/アルミのセミモノコックの円筒構造で、両端のフランジでLO2タンクとLH2タンクをつなぐ。 | REQ-ET-04 | — |
| SSD-FD-ET-ITK-001 | F-ET-ITK-02 | インタタンクはETの計装の部品を収め、地上設備のアームとつながるアンビリカル板（パージガス・危険ガスの検知・水素のボイルオフ）を持つ。 | REQ-ET-04 | — |
| SSD-FD-ET-ITK-001 | F-ET-ITK-03 | インタタンクは飛行中にベントされる。 | REQ-ET-04 | — |
| SSD-FD-ET-ITK-001 | F-ET-ITK-04 | インタタンクには前部のSRB/ET結合の推力ビームと金具があり、SRBの荷重をLO2・LH2タンクへ分配する。 | REQ-ET-04 | — |
| SSD-FD-ET-ITK-001 | F-ET-ITK-05 | インタタンクは長さ270 in・直径331 in・重量12,100 lbである。 | REQ-ET-04 | — |
| SSD-FD-ET-ITK-001 | F-ET-ITK-06 | ETの構造は推進薬タンクとなり、オービタ・SRBとの間で応力の荷重を受けて分配し、スペースシャトル全体の荷重経路の連続を与える。 | REQ-ET-04 | — |
| SSD-FD-ET-LH2-001 | F-ET-LH2-01 | LH2タンクは溶接した胴の区分・5つの主リングフレーム・前後の楕円ドームから成るアルミのセミモノコック構造で、32〜34 psiaで運用する。 | REQ-ET-02 | — |
| SSD-FD-ET-LH2-001 | F-ET-LH2-02 | タンクは渦防止のバッフルとサイフォンの出口を持ち、LH2を直径17 inの管で左後部のアンビリカルへ送り、SSMEの104%運転で465 lb/sで流れる。 | REQ-ET-01 | — |
| SSD-FD-ET-LH2-001 | F-ET-LH2-03 | LH2タンクの前端にET/オービタの前部結合のポッド支柱、後端に2つの後部結合のボール金具とSRB/ETの後部安定支柱の取付けがある。 | REQ-ET-04 | — |
| SSD-FD-ET-LH2-001 | F-ET-LH2-04 | LH2タンクは直径331 in・長さ1,160 in・容積53,518 ft3・乾燥重量29,000 lbである。 | REQ-ET-02 | — |
| SSD-FD-ET-LH2-001 | F-ET-LH2-05 | 6:1の混合比に必要な量より1,100 lb多いLH2を積み、MECOの推進薬比を燃料過多にしてエンジンの浸食を防ぐ。 | REQ-ET-03 | — |
| SSD-FD-ET-LH2-001 | F-ET-LH2-06 | LH2タンクのアレージ圧が27.7 psia未満ならLH2 ULLAGE PRESSスイッチで手動で制御し、ベント/リリーフ弁の低い作動圧を避けるため35 psiaを超えないようにする。 | REQ-ET-03 | — |
| SSD-FD-ET-LOX-001 | F-ET-LOX-01 | ETは液体水素と液体酸素を収め、上昇中にオービタの3基のSSMEへ加圧して供給する。 | REQ-ET-01 | — |
| SSD-FD-ET-LOX-001 | F-ET-LOX-02 | ETは前方のLO2タンク、電気部品の大半を収める与圧されないインタタンク、後方のLH2タンクの3つから成る。 | REQ-ET-01 | — |
| SSD-FD-ET-LOX-001 | F-ET-LOX-03 | LO2タンクは化学切削のゴア・パネル・削り出し金具・リングコードを溶接したアルミのモノコック構造で、20〜22 psigで運用する。 | REQ-ET-02 | — |
| SSD-FD-ET-LOX-001 | F-ET-LOX-04 | タンクは残液を減らし液の動きを抑える揺動防止・渦防止の装置を持つ。 | REQ-ET-02 | — |
| SSD-FD-ET-LOX-001 | F-ET-LOX-05 | LO2は直径17 inの供給管でインタタンクを通ってETの外へ出て右後部のアンビリカルへ送られ、SSMEの104%運転で約2,787 lb/sで流れる。 | REQ-ET-01 | — |
| SSD-FD-ET-LOX-001 | F-ET-LOX-06 | LO2タンクの二重くさびのノーズコーンは抗力と加熱を減らし、電気部品を収め、避雷針となる。 | REQ-ET-02 | — |
| SSD-FD-ET-LOX-001 | F-ET-LOX-07 | LO2タンクは直径331 in・長さ592 in・空虚重量12,000 lbである。 | REQ-ET-02 | — |
| SSD-FD-ET-SEP-001 | F-ET-SEP-01 | MECOの後、機体の角速度が0.7 deg/sを超えるか供給管の切離しが故障すると「ET SEP INH」が出て、通常・ATOでは分離が抑止される。 | REQ-ET-08 | — |
| SSD-FD-ET-SEP-001 | F-ET-SEP-02 | RTLSでは、ベントのための短い遅れのあと自動でETを分離する。 | REQ-ET-08 | — |
| SSD-FD-ET-SEP-001 | F-ET-SEP-03 | ET/オービタの17 inの切離し弁が閉じたと確かめられないときは、開いた弁の推力の減衰を待って再接触を防ぐため、分離をMECO＋6分まで遅らせる。 | REQ-ET-08 | — |
| SSD-FD-ET-SEP-001 | F-ET-SEP-04 | 分離の直前にオービタの信号でタンブル系が作動してLO2タンク前部の弁を開き、残りのガスを噴き出してETを回転させ、定めた区域に落とす。 | REQ-ET-08 | — |
| SSD-FD-ET-SEP-001 | F-ET-SEP-05 | 射場安全系（RSS）は、打上げからETの着水までETの推進薬を分散させる手段で、冗長な電池・受信/解読器・アンテナ・火工品から成る。 | REQ-ET-09 | — |
| SSD-FD-ET-SEP-001 | F-ET-SEP-06 | 同じタンクの低レベルのセンサが3つ以上乾きに故障すると、上り坂の能力が無ければTALアボートを行う。 | REQ-ET-06 | — |
| SSD-FD-ET-SEP-001 | F-ET-SEP-07 | ETは回収せず、大気に再突入して分解し、遠い海域に落ちる。 | REQ-ET-08 | — |
| SSD-FD-ET-TPS-001 | F-ET-TPS-01 | ETのTPSは吹付けの発泡断熱材と成形済みのアブレータから成り、空気の液化を防ぐフェノールの断熱材も使う。 | REQ-ET-07 | — |
| SSD-FD-ET-TPS-001 | F-ET-TPS-02 | LH2タンクの取付部には、空気にさらされる金属の液化を防ぎ、LH2への熱の流れを減らす断熱材が必要である。 | REQ-ET-07 | — |
| SSD-FD-ET-TPS-001 | F-ET-TPS-03 | TPSの重量は4,823 lbである。 | REQ-ET-07 | — |
| SSD-FD-ET-TPS-001 | F-ET-TPS-04 | TPSはいくつかの組成のアブレータと発泡材を、吹付け・真空成形・成形品の接着などの方法で施工する。 | REQ-ET-07 | — |
| SSD-FD-ET-TPS-001 | F-ET-TPS-05 | 吹付けのポリイソシアヌレート発泡材（CPR-488）は、LO2タンク・インタタンク・LH2タンクの胴の発泡材である。 | REQ-ET-07 | — |
| SSD-FD-ET-TPS-001 | F-ET-TPS-06 | 秒読みでは、固定サービス構造の振り腕のキャップがETのLO2タンクのベントを覆って酸素の蒸気を吸い取り、ETに氷ができてオービタのTPSを傷めるのを防ぐ。 | REQ-ET-07 | — |
| SSD-FD-ET-UMB-001 | F-ET-UMB-01 | ETは前部1か所・後部2か所でオービタに結合し、後部の結合部には液体・気体・電気信号・電力をタンクとオービタの間で伝えるアンビリカルがあり、オービタとSRBの間の信号もここを通る。 | REQ-ET-05 | — |
| SSD-FD-ET-UMB-001 | F-ET-UMB-02 | 2つの後部のETアンビリカル板はオービタ側の板と合わさってボルトで締結され、分離の指令で火工品がボルトを切る。 | REQ-ET-05 | — |
| SSD-FD-ET-UMB-001 | F-ET-UMB-03 | ETはオービタのアンビリカルとつながる5つの推進薬のアンビリカル弁（LO2タンク2・LH2タンク3）を持つ。 | REQ-ET-05 | — |
| SSD-FD-ET-UMB-001 | F-ET-UMB-04 | LH2の中間径のアンビリカルは、打上げ前のLH2の予冷のシーケンスだけで使う再循環用である。 | REQ-ET-05 | — |
| SSD-FD-ET-UMB-001 | F-ET-UMB-05 | ETの2つの電気アンビリカルは、オービタからタンクと2本のSRBへ電力を送り、SRBとETの情報をオービタへ送る。 | REQ-ET-05 | — |
| SSD-FD-ET-UMB-001 | F-ET-UMB-06 | 推進薬の枯渇センサは燃料・酸化剤に各4つあり、規定の質量を過ぎてから2つが乾きを検知するとエンジンを停止する。 | REQ-ET-06 | — |
| SSD-FD-ET-UMB-001 | F-ET-UMB-07 | 各タンクの前端にはベント/リリーフ弁があり、飛行中はLH2タンクのアレージ圧36 psig、LO2タンク31 psigで開く。 | REQ-ET-05 | — |

## 6. 要求から参照されない機能行

要求から参照されない機能行 4 件のうち、4 件は「要求なしで妥当」、0 件は「要求が抜けている」と判断した。「要求なしで妥当」は、系の全般の記述（親の説明書）か、同じ下位機能に要求があり、その要求が受け持つ構成・数量・運用の記述であるものである。「要求が抜けている」は、今後 L2 要求を足す候補である。文書ごとの件数を示す。

| 文書 | 機能行 | 要求から参照 | 要求なしで妥当 | 要求が抜けている |
|---|---|---|---|---|
| SSD-FD-ET-001 | 4 | 0 | 4 | 0 |
| SSD-FD-ET-ITK-001 | 6 | 6 | 0 | 0 |
| SSD-FD-ET-LH2-001 | 6 | 6 | 0 | 0 |
| SSD-FD-ET-LOX-001 | 7 | 7 | 0 | 0 |
| SSD-FD-ET-SEP-001 | 7 | 7 | 0 | 0 |
| SSD-FD-ET-TPS-001 | 6 | 6 | 0 | 0 |
| SSD-FD-ET-UMB-001 | 7 | 7 | 0 | 0 |

## 7. 検証（V&V）

各要求の検証方法（解析 A・試験 T・検査 I・実証 D）について、その方法で要求が満たされたことを示す公開資料の頁を「検証の根拠」に示す（9件のうち根拠あり 9件・根拠なし 0件）。根拠が見つからないものは「根拠なし」とし、理由を書いた。

| ID | 検証方法 | 状態 | 検証の根拠 |
|---|---|---|---|
| REQ-ET-01 | D（実証） | 根拠あり | 1.3節（PDF p67〜70）：ETの3つの構成、軽量化（SLWT）、オービタとの結合とアンビリカルを述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/67） |
| REQ-ET-02 | T（試験） | 根拠あり | 5.1.1節（PDF p254）：LO2タンクの長さ・直径・容積を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=254） |
| REQ-ET-03 | A（解析） | 根拠あり | （PDF p9）：極低温の充填中にLH2のECOセンサの回路が湿りに故障した事象を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=9） |
| REQ-ET-04 | A（解析） | 根拠あり | （PDF p31）：打上げ前の点検でインタタンクにひびが見られたことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=31） |
| REQ-ET-05 | T（試験） | 根拠あり | （PDF p27）：LH2の補充中にLH2のECOセンサが湿りを示した事象を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=27） |
| REQ-ET-06 | A（解析） | 根拠あり | A5-154（PDF p1091）：LH2タンクの加圧の手動の制御を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1091） |
| REQ-ET-07 | I（検査） | 根拠あり | （PDF p47）：MECO後のETの熱防護の写真による記録（DTO 312）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=47） |
| REQ-ET-08 | A（解析） | 根拠あり | （PDF p8）：ETがオービタから分離した時刻を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=8） |
| REQ-ET-09 | T（試験） | 根拠あり | 5.4.3節（PDF p346）：分離後にETを回転させるタンブル系を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=346） |

## 8. 注記（出典間の相違・構成変更）

> **注記** トレース表の「要求なしで妥当」は、親の説明書の全般の記述か、同じ下位機能（文書）に割り付けた要求が受け持つ構成・運用の記述であることを根拠に、文書ごとにまとめて判断したもので、機能行1件ずつに要求の要否を検討したものではない。

## 9. 参考文献

1. Shuttle Crew Operations Manual 1.3 External Tank（USA007587 Rev. A CPN-1、PDF p67） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/67
2. Shuttle Crew Operations Manual 1.3 External Tank（USA007587 Rev. A CPN-1、PDF p68） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/68
3. Shuttle Crew Operations Manual 1.3 External Tank（USA007587 Rev. A CPN-1、PDF p69） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/69
4. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） 5.1.1 Structures Subsystem（PDF p254） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=254
5. Shuttle Crew Operations Manual 1.3 External Tank（USA007587 Rev. A CPN-1、PDF p70） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/70
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A5-157 ET LOW LEVEL CUTOFF SENSOR FAILED DRY（PDF p1098） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1098
7. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p603） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/603
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A5-202 ET SEPARATION INHIBIT FOR 17-INCH DISCONNECT FAILURE [CIL]（PDF p1102） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1102
9. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） 5.4.3 Tumbling System（PDF p346） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=346
10. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） 5.5 Range Safety Subsystem（PDF p349） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=349
11. STS-122 Mission Report Flight Summary（PDF p9） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=9
12. STS-135 Mission Report External Tank（PDF p31） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=31
13. STS-114 Mission Report External Tank（PDF p27） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=27
14. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A5-154 LH2 TANK PRESSURIZATION [CIL]（PDF p1091） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1091
15. STS-108 Mission Report Development Test Objectives（PDF p47） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=47
16. STS-135 Mission Report Flight Summary（PDF p8） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=8

## 10. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（L2 要求 9件、機能行 43件とのトレース、検証の根拠） |
