# 固体ロケットブースタ（SRB）要求書（L2）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-REQ-SRB-001 |
| 表題 | 固体ロケットブースタ（SRB）要求書（L2） |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-REQ-SYS-001 |
| 関連図 | SSD-SYS-ARC-001 図74 SRB 機能構成 |

## 1. 目的

SRBに対する要求（L2）を示し、L1 の要求（SSD-REQ-SYS-001）からの展開と、SRBの機能説明書（SSD-FD-SRB-001 と下位の説明書）の機能行・IF 行へのトレースを示す。要求から参照されない機能行について、要求が無くて妥当か、要求が抜けているかを判断する。要求は実績の運用値から導いたものである。

## 2. 要求の書き方

各要求は、要求文（〜すること）、値、根拠（出典の頁）、上位の L1 要求、割付先（機能行 F-ID・IF 行 IF-ID）、フェーズ（SSD-OPS-PHASE-001 の PH・AB の ID）、検証方法を持つ。検証方法は A（解析）、T（試験）、I（検査）、D（実証）の4つで、要求の性質から想定する方法を示す。要求はすべて、公開資料に記された実績の運用値・限界値から導いた「実績の運用値から導いた要求」である。

## 3. 上位の要求

本書の要求の上位の L1 要求を示す。

| L1 | 要求 |
|---|---|
| REQ-SYS-01 | システムは、オービタ、2本の SRB、推進薬を収める外部タンク、3基の SSME の4つの主要素で構成すること。 |
| REQ-SYS-02 | ペイロードを高度 100〜312 n.mi. の地球周回軌道へ運べること。 |
| REQ-SYS-04 | オービタと2本の SRB を再使用できること。 |
| REQ-SYS-08 | 乗員と機体の加速度を 3g 以下に保ち、上昇時の Nx を +3.11 g 以下とすること。 |
| REQ-SYS-10 | 各機能を2重・3重に冗長化し、1故障でミッションを継続でき、2故障で安全に帰還できること。 |
| REQ-SYS-15 | 上昇中のエンジン停止に対し、intact アボート（RTLS・TAL・AOA・ATO）で計画した着陸地点に安全に戻れること。 |
| REQ-SYS-16 | 地上支援設備に接続していない間、オービタ・外部タンク・SRB・ペイロードの電力をすべて機上で供給すること。 |

## 4. SRB要求

| ID | 要求 | 値 | 根拠 | 上位 | 割付先 | フェーズ | 検証 |
|---|---|---|---|---|---|---|---|
| REQ-SRB-01 | 各 SRB は海面で約 3,300,000 lb の推力を出し、打上げと第1段上昇の推力の 71.4% を担うこと。 | 約 3,300,000 lb／本・71.4% | 各SRBは海面で約3,300,000 lbの推力を出し、打上げと第1段上昇の推力の71.4%を担い、高度約150,000 ftまで機体を持ち上げる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/71）推進薬は2分あまりで燃え尽き、その時点でSRBを投棄する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/71） | REQ-SYS-01・REQ-SYS-02 | F-SRB-MTR-01・F-SRB-MTR-02・F-SRB-MTR-03・F-SRB-MTR-04・F-SRB-MTR-05・F-SRB-MTR-09 | PH-1（打上げ前）・PH-2a（上昇・第1段） | T（試験） |
| REQ-SRB-02 | 推進薬の穿孔で打上げ約 50 秒後に推力を約3分の1下げて最大動圧での過大な応力を防ぎ、2本の推力の不釣合いを小さくすること。 | 約 50 秒で約 1/3 減 | 前部セグメントの11点の星形と後部の二重截頭円錐の穿孔で、点火時の高い推力を打上げ約50秒後に約3分の1下げ、最大動圧での過大な応力を防ぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/72）SRBは4つのモータセグメントから成る対で使い、同じ原料のバッチから対で充填して推力の不釣合いを小さくする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/72） | REQ-SYS-08 | F-SRB-MTR-06・F-SRB-MTR-07・F-SRB-MTR-08 | PH-1（打上げ前）・PH-2a（上昇・第1段） | A（解析） |
| REQ-SRB-03 | 打上げ前は4組の保持ボルトで機体を移動発射台に固定し、離昇時に破断式のナットで切り離すこと。 | 保持ボルト 4組／本 | 打上げ前、各SRBは後部スカートで4組のボルトとナットにより移動発射台に固定され、離昇時に小さな爆薬で切られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/71）2本のSRBは積み重ねた全体の重量を支え、その荷重を構造を通して移動発射台へ伝える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/71）各保持ボルトは両端にナットがあり、上のナットだけが破断式で、点火の指令で2つのNSIが作動する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/73） | REQ-SYS-01 | F-SRB-HDP-01・F-SRB-HDP-02・F-SRB-HDP-03 | PH-1（打上げ前） | D（実証） |
| REQ-SRB-04 | 点火の指令は3基の SSME が定格の 90% 以上で故障や保留が無いときだけ出し、PIC は arm・fire 1・fire 2 の3信号がそろったときだけ火工品を発火させること。 | SSME ≧ 90%、信号 3 | 点火の指令は、3基のSSMEが定格の90%以上で、SSMEの故障やPICの低電圧が無く、地上の保留も無いときに出る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/74）PICは、GPCから出てMECが28 V DCに整形したarm・fire 1・fire 2の3つの信号がそろったときだけ火工品を発火させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/74） | REQ-SYS-10 | F-SRB-HDP-04・F-SRB-HDP-05・F-SRB-HDP-06・F-SRB-HDP-07 | PH-1（打上げ前） | T（試験） |
| REQ-SRB-05 | ノズルを全軸 8° ジンバルさせ、各 SRB の2つの独立した HPU と多数決のサーボ弁で、1つの故障が推力方向制御に影響しないこと。 | ジンバル 8°、HPU 2／本 | 各ノズルは推力方向制御のためジンバルし、後部の可撓軸受をジンバル機構とし、全軸のジンバル能力は8°である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/72）各HPUは両方のサーボアクチュエータにつながり、主の油圧が2,050 psi未満になると切替弁が副の油圧に切り替え、APUは113%の速度で両方のアクチュエータに足りる油圧を出す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/76）各アクチュエータの4つの独立したサーボ弁は力の和による多数決で、1つの誤った指令が動きに影響しないようにし、続くときはその弁の油圧を切り離す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/76） | REQ-SYS-10 | F-SRB-TVC-01・F-SRB-TVC-02・F-SRB-TVC-03・F-SRB-TVC-04・F-SRB-TVC-05・F-SRB-TVC-06・F-SRB-TVC-07・F-SRB-TVC-08 | PH-1（打上げ前）・PH-2a（上昇・第1段） | T（試験） |
| REQ-SRB-06 | SRB の電力はオービタの主直流母線3つから互いに予備となるよう供給し、主母線が1つ故障しても SRB の母線がすべて給電され続けること。 | 公称 28 V（24〜32 V） | SRBの電力はオービタの主直流母線A・B・CからSRB母線A・B・Cへ供給し、主母線Cが母線A・Bの、主母線Bが母線Cの予備となるので、オービタの主母線が1つ故障してもSRBの母線はすべて給電され続ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/75）SRBの直流電圧は公称28 V、上限32 V・下限24 Vである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/75） | REQ-SYS-10・REQ-SYS-16 | F-SRB-AVN-01・F-SRB-AVN-02・F-SRB-AVN-03・F-SRB-AVN-04・F-SRB-AVN-05 | PH-1（打上げ前）・PH-2a（上昇・第1段） | A（解析） |
| REQ-SRB-07 | 各 SRB に射場安全系を持ち、2本の分配器をクロスストラップし、機体が打上げ軌道のレッドラインを外れたときだけ使うこと。 | 指令 2（arm・fire） | 射場安全系（RSS）は各SRBに1つあり、地上局からのarmとfireの2つの指令を受け、機体が打上げ軌道のレッドラインを外れたときだけ使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/77）2本のSRBのRSSの分配器はクロスストラップされ、一方がarmや破壊の信号を受けると他方にも送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/78） | REQ-SYS-10 | F-SRB-AVN-06・F-SRB-AVN-07・F-SRB-AVN-08 | PH-1（打上げ前）・PH-2a（上昇・第1段） | T（試験） |
| REQ-SRB-08 | 両方の SRB の燃焼圧が 50 psi 以下になったら分離を始め、発火の指令から 30 ms 以内に分離モータで ET から離すこと。 | ≦ 50 psi、30 ms、BSM 8／本 | SRBの分離は両方のSRBの頭部の燃焼圧が50 psi以下になったときに始まり、センサの偏りに備えて点火からの時間でも分離する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/77）SRBは火工品の発火の指令から30 ms以内にETから分離する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/77）各SRBの両端に4基ずつの分離モータ（BSM）があり、分離時に1.02秒燃焼してSRBをETから離す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/72） | REQ-SYS-15 | F-SRB-ATT-01・F-SRB-ATT-02・F-SRB-ATT-03・F-SRB-ATT-04・F-SRB-ATT-05・F-SRB-ATT-06・F-SRB-ATT-07 | PH-2a（上昇・第1段） | D（実証） |
| REQ-SRB-09 | パラシュートで SRB を 76 ft/s で着水させて回収し、モータセグメント・点火器・ノズルを再整備して再使用できること。 | 着水 76 ft/s | 回収は高高度の気圧スイッチでノーズキャップのスラスタを作動させて始まり、分離188秒後・高度15,700 ftでノーズキャップを外してパイロットシュートを出す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/78）分離277秒後に76 ft/sで着水し、空の燃焼室に空気が残って前端を約30 ft水面に出して浮かぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/79）回収したSRBは発射場へ曳航して分解・洗浄し、モータセグメント・点火器・ノズルを製造元へ送って再整備するが、ノーズキャップとノズルの延長部は回収しない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/72） | REQ-SYS-04 | F-SRB-REC-01・F-SRB-REC-02・F-SRB-REC-03・F-SRB-REC-04・F-SRB-REC-05・F-SRB-REC-06 | PH-2a（上昇・第1段） | D（実証） |

## 5. トレース表（機能行・IF → 要求）

SRBの機能説明書 7 件の機能行 49 件と、要求の割付先の IF 行について、参照している要求を示す。機能行のうち 45 件が要求から参照され、4 件は参照されていない（判断の欄を参照）。

| 文書 | 機能・IF | 内容 | 要求 | 判断 |
|---|---|---|---|---|
| SSD-FD-SRB-001 | F-SRB-01 | 2本のSRBは、シャトルを射点から高度約150,000 ftまで持ち上げる主推力を担う。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-SRB-001 | F-SRB-02 | 各SRBの海面推力は打上げ時で約3,300,000 lbで、3基のSSMEの推力が確認された後に点火される。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-SRB-001 | F-SRB-03 | 燃焼終了後に分離され、パラシュートで大西洋に着水し、回収・点検・整備のうえ再使用された。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-SRB-001 | F-SRB-04 | SRBの推力方向制御用の油圧系も、ヒドラジン式の補助動力装置で駆動される。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-SRB-ATT-001 | F-SRB-ATT-01 | ETは各SRBの後部フレームで2つの横の振れ止めと斜めの結合でつながり、SRBの前端は前部スカートでETに結合する。 | REQ-SRB-08 | — |
| SSD-FD-SRB-ATT-001 | F-SRB-ATT-02 | SRBの分離は両方のSRBの頭部の燃焼圧が50 psi以下になったときに始まり、センサの偏りに備えて点火からの時間でも分離する。 | REQ-SRB-08 | — |
| SSD-FD-SRB-ATT-001 | F-SRB-ATT-03 | 分離の手順ではATVCがアクチュエータを中立に戻してSSMEを第2段の構成にし、SRBの推力が100,000 lb未満になるようにする。 | REQ-SRB-08 | — |
| SSD-FD-SRB-ATT-001 | F-SRB-ATT-04 | SRBは火工品の発火の指令から30 ms以内にETから分離する。 | REQ-SRB-08 | — |
| SSD-FD-SRB-ATT-001 | F-SRB-ATT-05 | 前部の結合点は1本のボルトで保持された玉（SRB）と受け（ET）から成り、ボルトは両端にNSIの圧力カートリッジを持ち、射場安全系のクロスストラップの配線も通す。 | REQ-SRB-08 | — |
| SSD-FD-SRB-ATT-001 | F-SRB-ATT-06 | 後部の結合点は上・斜め・下の3本の支柱から成り、各支柱のボルトは両端にNSIの圧力カートリッジを持ち、上の支柱はSRBとETからオービタへのアンビリカルも通す。 | REQ-SRB-08 | — |
| SSD-FD-SRB-ATT-001 | F-SRB-ATT-07 | 各SRBの両端に4基ずつの分離モータ（BSM）があり、分離時に1.02秒燃焼してSRBをETから離す。 | REQ-SRB-08 | — |
| SSD-FD-SRB-AVN-001 | F-SRB-AVN-01 | 各SRBは前部スカートと結合リングに1つずつ統合電子組立（IEA）を持ち、後部IEAは点火の指令とノズルの推力方向制御のため前部IEAとオービタのアビオニクスにつながる。 | REQ-SRB-06 | — |
| SSD-FD-SRB-AVN-001 | F-SRB-AVN-02 | 各IEAは多重化/多重分離器（MDM）を持つ。 | REQ-SRB-06 | — |
| SSD-FD-SRB-AVN-001 | F-SRB-AVN-03 | SRBの電力はオービタの主直流母線A・B・CからSRB母線A・B・Cへ供給し、主母線Cが母線A・Bの、主母線Bが母線Cの予備となるので、オービタの主母線が1つ故障してもSRBの母線はすべて給電され続ける。 | REQ-SRB-06 | — |
| SSD-FD-SRB-AVN-001 | F-SRB-AVN-04 | SRBの直流電圧は公称28 V、上限32 V・下限24 Vである。 | REQ-SRB-06 | — |
| SSD-FD-SRB-AVN-001 | F-SRB-AVN-05 | SRBのレートジャイロ組立（SRGA）は、入替え可能な中間値選択でSRBのピッチ・ヨーの角速度を与え、20回のミッション向けに設計されている。 | REQ-SRB-06 | — |
| SSD-FD-SRB-AVN-001 | F-SRB-AVN-06 | 射場安全系（RSS）は各SRBに1つあり、地上局からのarmとfireの2つの指令を受け、機体が打上げ軌道のレッドラインを外れたときだけ使う。 | REQ-SRB-07 | — |
| SSD-FD-SRB-AVN-001 | F-SRB-AVN-07 | 2本のSRBのRSSの分配器はクロスストラップされ、一方がarmや破壊の信号を受けると他方にも送られる。 | REQ-SRB-07 | — |
| SSD-FD-SRB-AVN-001 | F-SRB-AVN-08 | 分離の手順でSRBのRSSの電源を切り、回収系の電源を入れる。 | REQ-SRB-07 | — |
| SSD-FD-SRB-HDP-001 | F-SRB-HDP-01 | 打上げ前、各SRBは後部スカートで4組のボルトとナットにより移動発射台に固定され、離昇時に小さな爆薬で切られる。 | REQ-SRB-03 | — |
| SSD-FD-SRB-HDP-001 | F-SRB-HDP-02 | 2本のSRBは積み重ねた全体の重量を支え、その荷重を構造を通して移動発射台へ伝える。 | REQ-SRB-03 | — |
| SSD-FD-SRB-HDP-001 | F-SRB-HDP-03 | 各保持ボルトは両端にナットがあり、上のナットだけが破断式で、点火の指令で2つのNSIが作動する。 | REQ-SRB-03 | — |
| SSD-FD-SRB-HDP-001 | F-SRB-HDP-04 | 点火の指令はオービタの計算機からMECを経て移動発射台の保持PICへ送られ、打上げ前の最後の16秒にPICの低電圧を監視し、低電圧なら打上げを保留する。 | REQ-SRB-04 | — |
| SSD-FD-SRB-HDP-001 | F-SRB-HDP-05 | 点火の指令は、3基のSSMEが定格の90%以上で、SSMEの故障やPICの低電圧が無く、地上の保留も無いときに出る。 | REQ-SRB-04 | — |
| SSD-FD-SRB-HDP-001 | F-SRB-HDP-06 | PICは、GPCから出てMECが28 V DCに整形したarm・fire 1・fire 2の3つの信号がそろったときだけ火工品を発火させる。 | REQ-SRB-04 | — |
| SSD-FD-SRB-HDP-001 | F-SRB-HDP-07 | 点火の順序は、PICがS&A装置の火工品を点火し、S&Aの薬が起爆剤を、起爆剤がモータの点火器を、点火器がモータの推進薬を点火する。 | REQ-SRB-04 | — |
| SSD-FD-SRB-MTR-001 | F-SRB-MTR-01 | 2本のSRBはこれまでに飛んだ最大の固体推進薬のモータで、初めて再使用を前提に設計された。 | REQ-SRB-01 | — |
| SSD-FD-SRB-MTR-001 | F-SRB-MTR-02 | 各SRBは海面で約3,300,000 lbの推力を出し、打上げと第1段上昇の推力の71.4%を担い、高度約150,000 ftまで機体を持ち上げる。 | REQ-SRB-01 | — |
| SSD-FD-SRB-MTR-001 | F-SRB-MTR-03 | 推進薬は2分あまりで燃え尽き、その時点でSRBを投棄する。 | REQ-SRB-01 | — |
| SSD-FD-SRB-MTR-001 | F-SRB-MTR-04 | 各SRBは長さ約149 ft・直径12 ftで、打上げ時の重量は約1,300,000 lb（うち推進薬約1,100,000 lb）である。 | REQ-SRB-01 | — |
| SSD-FD-SRB-MTR-001 | F-SRB-MTR-05 | 推進薬は過塩素酸アンモニウム（69.6%）・アルミニウム（16%）・酸化鉄（0.4%）・結合剤（12.04%）・硬化剤（1.96%）の混合である。 | REQ-SRB-01 | — |
| SSD-FD-SRB-MTR-001 | F-SRB-MTR-06 | 前部セグメントの11点の星形と後部の二重截頭円錐の穿孔で、点火時の高い推力を打上げ約50秒後に約3分の1下げ、最大動圧での過大な応力を防ぐ。 | REQ-SRB-02 | — |
| SSD-FD-SRB-MTR-001 | F-SRB-MTR-07 | SRBは4つのモータセグメントから成る対で使い、同じ原料のバッチから対で充填して推力の不釣合いを小さくする。 | REQ-SRB-02 | — |
| SSD-FD-SRB-MTR-001 | F-SRB-MTR-08 | 各ノズルは膨張比7.72:1で、燃焼中に浸食・炭化する炭素布の内張りを持つ。 | REQ-SRB-02 | — |
| SSD-FD-SRB-MTR-001 | F-SRB-MTR-09 | 打上げ0.23秒後に燃焼圧が563.5 psiaに達して離昇し、0.6秒後に最大（公称914 psia）となる。 | REQ-SRB-01 | — |
| SSD-FD-SRB-REC-001 | F-SRB-REC-01 | 回収は高高度の気圧スイッチでノーズキャップのスラスタを作動させて始まり、分離188秒後・高度15,700 ftでノーズキャップを外してパイロットシュートを出す。 | REQ-SRB-09 | — |
| SSD-FD-SRB-REC-001 | F-SRB-REC-02 | 直径54 ftのドローグシュートはSRBを安定させ、270,000 lbの荷重に耐え、重量は約1,200 lbである。 | REQ-SRB-09 | — |
| SSD-FD-SRB-REC-001 | F-SRB-REC-03 | 低高度の気圧スイッチで高度5,500 ft・分離243秒後にフラスタムを前部スカートから分離し、ドローグシュートがそれを引き離す。 | REQ-SRB-09 | — |
| SSD-FD-SRB-REC-001 | F-SRB-REC-04 | 分離277秒後に76 ft/sで着水し、空の燃焼室に空気が残って前端を約30 ft水面に出して浮かぶ。 | REQ-SRB-09 | — |
| SSD-FD-SRB-REC-001 | F-SRB-REC-05 | 主傘は着水後に海水作動の放出装置（SWAR）で外れ、回収船が来るまでSRBにつながれる。 | REQ-SRB-09 | — |
| SSD-FD-SRB-REC-001 | F-SRB-REC-06 | 回収したSRBは発射場へ曳航して分解・洗浄し、モータセグメント・点火器・ノズルを製造元へ送って再整備するが、ノーズキャップとノズルの延長部は回収しない。 | REQ-SRB-09 | — |
| SSD-FD-SRB-TVC-001 | F-SRB-TVC-01 | 各ノズルは推力方向制御のためジンバルし、後部の可撓軸受をジンバル機構とし、全軸のジンバル能力は8°である。 | REQ-SRB-05 | — |
| SSD-FD-SRB-TVC-001 | F-SRB-TVC-02 | 各SRBは2つの独立した油圧動力装置（HPU）を持ち、各HPUはAPU・燃料供給・油圧ポンプ・リザーバ・マニホールドから成る。 | REQ-SRB-05 | — |
| SSD-FD-SRB-TVC-001 | F-SRB-TVC-03 | APUはヒドラジンを燃料とし、軸動力で油圧ポンプを回し、2つの系は打上げ28秒前からSRB分離まで動く。 | REQ-SRB-05 | — |
| SSD-FD-SRB-TVC-001 | F-SRB-TVC-04 | 各燃料タンクは22 lbのヒドラジンを収め、400 psiの窒素で加圧する。 | REQ-SRB-05 | — |
| SSD-FD-SRB-TVC-001 | F-SRB-TVC-05 | 各HPUは両方のサーボアクチュエータにつながり、主の油圧が2,050 psi未満になると切替弁が副の油圧に切り替え、APUは113%の速度で両方のアクチュエータに足りる油圧を出す。 | REQ-SRB-05 | — |
| SSD-FD-SRB-TVC-001 | F-SRB-TVC-06 | 各SRBはロックとチルトの2つの油圧ジンバルサーボアクチュエータを持ち、ノズルを動かして推力の方向を制御する。 | REQ-SRB-05 | — |
| SSD-FD-SRB-TVC-001 | F-SRB-TVC-07 | 各アクチュエータの4つの独立したサーボ弁は力の和による多数決で、1つの誤った指令が動きに影響しないようにし、続くときはその弁の油圧を切り離す。 | REQ-SRB-05 | — |
| SSD-FD-SRB-TVC-001 | F-SRB-TVC-08 | APU/HPUと油圧系は20回のミッションに再使用できる。 | REQ-SRB-05 | — |

## 6. 要求から参照されない機能行

要求から参照されない機能行 4 件のうち、4 件は「要求なしで妥当」、0 件は「要求が抜けている」と判断した。「要求なしで妥当」は、系の全般の記述（親の説明書）か、同じ下位機能に要求があり、その要求が受け持つ構成・数量・運用の記述であるものである。「要求が抜けている」は、今後 L2 要求を足す候補である。文書ごとの件数を示す。

| 文書 | 機能行 | 要求から参照 | 要求なしで妥当 | 要求が抜けている |
|---|---|---|---|---|
| SSD-FD-SRB-001 | 4 | 0 | 4 | 0 |
| SSD-FD-SRB-ATT-001 | 7 | 7 | 0 | 0 |
| SSD-FD-SRB-AVN-001 | 8 | 8 | 0 | 0 |
| SSD-FD-SRB-HDP-001 | 7 | 7 | 0 | 0 |
| SSD-FD-SRB-MTR-001 | 9 | 9 | 0 | 0 |
| SSD-FD-SRB-REC-001 | 6 | 6 | 0 | 0 |
| SSD-FD-SRB-TVC-001 | 8 | 8 | 0 | 0 |

## 7. 検証（V&V）

各要求の検証方法（解析 A・試験 T・検査 I・実証 D）について、その方法で要求が満たされたことを示す公開資料の頁を「検証の根拠」に示す（9件のうち根拠あり 9件・根拠なし 0件）。根拠が見つからないものは「根拠なし」とし、理由を書いた。

| ID | 検証方法 | 状態 | 検証の根拠 |
|---|---|---|---|
| REQ-SRB-01 | T（試験） | 根拠あり | （PDF p20）：両方のRSRMの性能が規格の範囲内で、圧力の時間変化のずれが許容値を十分下回ったことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=20） |
| REQ-SRB-02 | A（解析） | 根拠あり | （PDF p9）：RSRMの継手に低温用の材料のOリングを初めて使ったことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=9） |
| REQ-SRB-03 | D（実証） | 根拠あり | （PDF p32）：点火器と継手のヒータの通電と運用を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=32） |
| REQ-SRB-04 | T（試験） | 根拠あり | A2-3（PDF p491）：打上げの保留の扱いを定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=491） |
| REQ-SRB-05 | T（試験） | 根拠あり | （PDF p32）：RSRBのHPUの軸受の浸漬の要求の違反を免除した記録を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=32） |
| REQ-SRB-06 | A（解析） | 根拠あり | （PDF p19）：Cバンド制御器（CBC）の4回目の飛行の記録を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=19） |
| REQ-SRB-07 | T（試験） | 根拠あり | A4-260（PDF p1001）：射場安全の破壊の基準を超えないための処置を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1001） |
| REQ-SRB-08 | D（実証） | 根拠あり | （PDF p10）：SRBとETの分離が明瞭に記録されたことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=10） |
| REQ-SRB-09 | D（実証） | 根拠あり | （PDF p9）：SRB分離後のOMSの補助の機動の記録を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=9） |

## 8. 注記（出典間の相違・構成変更）

> **注記** トレース表の「要求なしで妥当」は、親の説明書の全般の記述か、同じ下位機能（文書）に割り付けた要求が受け持つ構成・運用の記述であることを根拠に、文書ごとにまとめて判断したもので、機能行1件ずつに要求の要否を検討したものではない。

## 9. 参考文献

1. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p71） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/71
2. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p72） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/72
3. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p73） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/73
4. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p74） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/74
5. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p76） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/76
6. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p75） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/75
7. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p77） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/77
8. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p78） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/78
9. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p79） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/79
10. STS-108 Mission Report Reusable Solid Rocket Motors（PDF p20） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=20
11. NSTS-37452 STS-125 Mission Report（2010） Flight Summary（PDF p9） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=9
12. STS-135 Mission Report Reusable Solid Rocket Boosters（PDF p32） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=32
13. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A2-3 LAUNCH HOLD（PDF p491） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=491
14. STS-108 Mission Report Solid Rocket Boosters（PDF p19） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=19
15. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A4-260 RANGE SAFETY LIMIT AVOIDANCE ACTIONS（PDF p1001） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1001
16. STS-122 Mission Report Flight Summary（PDF p10） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=10
17. STS-114 Mission Report Flight Summary（PDF p9） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=9

## 10. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（L2 要求 9件、機能行 49件とのトレース、検証の根拠） |
