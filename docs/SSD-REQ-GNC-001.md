# 誘導・航法・制御（GN&C）要求書（L2）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-REQ-GNC-001 |
| 表題 | 誘導・航法・制御（GN&C）要求書（L2） |
| 版・日付 | Rev. A／2026-10-07 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-REQ-SYS-001 |
| 関連図 | SSD-SYS-ARC-001 図46 GN&C 機能構成 |

## 1. 目的

GN&Cに対する要求（L2）を示し、L1 の要求（SSD-REQ-SYS-001）からの展開と、GN&Cの機能説明書（SSD-FD-GNC-001 と下位の説明書）の機能行・IF 行へのトレースを示す。要求から参照されない機能行について、要求が無くて妥当か、要求が抜けているかを判断する。要求は実績の運用値から導いたものである。

## 2. 要求の書き方

各要求は、要求文（〜すること）、値、根拠（出典の頁）、上位の L1 要求、割付先（機能行 F-ID・IF 行 IF-ID）、フェーズ（SSD-OPS-PHASE-001 の PH・AB の ID）、検証方法を持つ。検証方法は A（解析）、T（試験）、I（検査）、D（実証）の4つで、要求の性質から想定する方法を示す。要求はすべて、公開資料に記された実績の運用値・限界値から導いた「実績の運用値から導いた要求」である。

## 3. 上位の要求

本書の要求の上位の L1 要求を示す。

| L1 | 要求 |
|---|---|
| REQ-SYS-02 | ペイロードを高度 100〜312 n.mi. の地球周回軌道へ運べること。 |
| REQ-SYS-08 | 乗員と機体の加速度を 3g 以下に保ち、上昇時の Nx を +3.11 g 以下とすること。 |
| REQ-SYS-09 | 帰還時に、分散を含む限界で約 750 n.mi. 以上の横方向移動（クロスレンジ）ができ、その範囲の着陸地を選べること。 |
| REQ-SYS-10 | 各機能を2重・3重に冗長化し、1故障でミッションを継続でき、2故障で安全に帰還できること。 |
| REQ-SYS-14 | 系統の故障に対し、Go/No-Go の判定基準（A2-1001 ほか各章の1001番）で上昇の継続・MDF・次の PLS への着陸を判断できること。 |
| REQ-SYS-15 | 上昇中のエンジン停止に対し、intact アボート（RTLS・TAL・AOA・ATO）で計画した着陸地点に安全に戻れること。 |

## 4. GN&C要求

| ID | 要求 | 値 | 根拠 | 上位 | 割付先 | フェーズ | 検証 |
|---|---|---|---|---|---|---|---|
| REQ-GNC-01 | 3台の IMU を搭載し、1台でも飛行できる能力を持ちつつ、軸をずらして取り付けて冗長管理で故障した IMU を判定できること。 | IMU 3（1台で飛行可・スキュー配置） | 飛行は1台のIMUでも可能であるが、冗長のために3台を搭載し、IMUはフライトデッキの表示・制御パネルの前方にある航法ベースに取り付けられる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/475）3台のIMUの軸は互いにも機体軸ともずらして（スキュー）取り付けられ、姿勢による不具合が同時に1台を超えないようにするとともに、冗長管理による故障IMUの判定に使われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/476） | REQ-SYS-10 | F-GNC-INS-01・F-GNC-INS-02・F-GNC-INS-04 | PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | D（実証） |
| REQ-GNC-02 | スタートラッカ・HUD・COAS で IMU をアラインメントし、再突入時（EI）の IMU の姿勢誤差を 0.5°以下にしてから軌道離脱すること。 | EI の姿勢誤差 ≦ 0.5°（公称の軌道離脱では 0.25° を超えれば遅らせる） | スタートラッカで得た2つの恒星の視線ベクトルで機体の慣性姿勢を定め、IMUの姿勢との差からトルク角を求めてジャイロのドリフトを除くが、IMUのずれが1.4°を超えるとHUDでまず1.4°以内に合わせる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/480）EIでのIMUの姿勢誤差が0.5°を超えると予測される場合は軌道離脱を行わず、公称の軌道離脱で0.25°を超える場合は軌道離脱を遅らせてアラインメントを行う（A4-151）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=940） | REQ-SYS-14 | F-GNC-INS-08・F-GNC-INS-09・F-GNC-INS-11・F-GNC-OPS-06・F-GNC-OPS-07 | PH-3（軌道）・PH-4（離脱準備）・PH-6a（再突入・離脱噴射〜突入） | D（実証） |
| REQ-GNC-03 | TACAN（または OV-105 の3系統 GPS）と MLS をそれぞれ3台持ち、中間値の選択で状態ベクトルの更新と進入・着陸に使えること。 | TACAN 3（最大 400 n.mi.）または GPS 3、MLS 3 | 3系統のGPSを持たない機体は冗長に動作する3台のTACANを持ち、各TACANは前胴の下面と上面に1つずつアンテナを持ち、受動冷却でミッドデッキのアビオニクスベイに置かれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/484）3台のMLSは着陸滑走路脇の地上局に対する斜距離・方位角・仰角を求めて進入・着陸の段階で使われ、各MLSはKu帯の送受信機と復号器から成る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/492）MLSの冗長管理は3台が有効なら距離・方位角・仰角の中間値を、2台なら平均を選ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/494） | REQ-SYS-10 | F-GNC-NAS-01・F-GNC-NAS-02・F-GNC-NAS-03・F-GNC-NAS-04・F-GNC-NAS-05・F-GNC-NAS-10・F-GNC-NAS-11 | PH-6b（再突入・突入〜滑空）・PH-6c（再突入・進入〜着陸） | D（実証） |
| REQ-GNC-04 | 左右2本のエアデータプローブと4台の ADTA でエアデータを求め、良い ADTA が1台だけになったらエアデータの誘導・制御への取り込みを禁止すること。 | プローブ 2・ADTA 4（展開 2モータ 15秒） | エアデータ系は前胴下面の左右2本のプローブと4台のADTAから成り、左プローブの圧力・温度はADTA 1・3へ、右プローブはADTA 2・4へ導かれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/490）良いADTAが1台だけになればエアデータのG&Cへの取り込みを禁止してデフォルト/NAVDADのエアデータで飛び、エアデータをすべて失うか取り込まないときはシータ限界を守る（A8-111）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1402） | REQ-SYS-10 | F-GNC-NAS-07・F-GNC-NAS-08・F-GNC-NAS-09・F-GNC-OPS-08 | PH-6b（再突入・突入〜滑空）・PH-6c（再突入・進入〜着陸） | D（実証） |
| REQ-GNC-05 | 機体の位置と速度（状態ベクトル）を伝播して推定し、軌道離脱・再突入では3台の IMU による3つの状態ベクトルから中間値の選択で1つを誘導・制御に渡すこと。 | 状態ベクトル 6要素＋時刻、再突入は3本の中間値 | 航法の基本機能は機体の慣性位置と速度（状態ベクトル）を時間に対して正確に推定することで、ランデブ時には目標の位置と速度も推定する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/469）軌道離脱・再突入では3台のIMUそれぞれに基づく3つの状態ベクトルを伝播し、交換可能な中間値選択で1つの状態ベクトルを誘導・飛行制御・表示に渡す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/528） | REQ-SYS-02・REQ-SYS-15 | F-GNC-GNS-01・F-GNC-GNS-02・F-GNC-GNS-03・F-GNC-GNS-04・F-GNC-GNS-05・F-GNC-GNS-06・F-GNC-GNS-07 | PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | D（実証） |
| REQ-GNC-06 | 上昇の誘導は、第1段は事前の姿勢表、第2段は閉ループの PEG で MECO の目標条件へ導き、主エンジンの推力を加速度 3 g を超えないよう調整すること。 | MECO の目標（速度・半径・経路角・傾斜角・昇交点）、3 g 以下 | 第1段の誘導は事前に計画した相対速度に対するロール・ピッチ・ヨーの姿勢表を使い、MPSのスロットルへも事前に定めたスロットル計画に従って指令を送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/523）第2段の誘導はPEG 1の周期的な閉ループ方式で、MECOの目標条件（速度・半径・経路角・軌道傾斜角・昇交点経度）へ機体を導き、主エンジンのスロットル指令を3 gを超えないように調整する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/524） | REQ-SYS-02・REQ-SYS-08 | F-GNC-GNS-08・F-GNC-GNS-09 | PH-2a（上昇・第1段）・PH-2b（上昇・第2段） | D（実証） |
| REQ-GNC-07 | 再突入の誘導は、温度・動圧・垂直加速度の制限を守る抗力加速度のプロファイルを飛び、TAEM のエネルギー管理と自動着陸の誘導で滑走路へ導くこと。 | 抗力プロファイル・HAC・フレア 30〜80 ft | 再突入の誘導は温度・動圧・垂直加速度の制限から機体を守る抗力加速度のプロファイルを飛び、迎角とバンク角で抗力を調整し、方位誤差に応じてロールリバーサルを指令する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/529）TAEMの誘導はエネルギー対距離のプロファイルに従ってHACを回り、A/Lの誘導は外側グライドスロープからプレフレアと最終フレア（30〜80 ft）を経て接地まで滑走路中心線へ導く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/530） | REQ-SYS-08・REQ-SYS-09 | F-GNC-GNS-11・F-GNC-GNS-12 | PH-6b（再突入・突入〜滑空）・PH-6c（再突入・進入〜着陸） | D（実証） |
| REQ-GNC-08 | 4台の RGA と4台の AA を持ち、中間値の選択と故障検出で選んだ値を飛行制御に与え、4台構成の系は1故障後も公称の終了まで飛行を続けられること。 | RGA 4・AA 4（4台構成は1故障後も NEOM） | 機体には4台のRGAがあり、各RGAはロール・ピッチ・ヨーの角速度を測る3個の1自由度レートジャイロを持ち、これらの角速度は上昇・再突入・軌道投入・軌道離脱でFCSへの主なフィードバックである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/498）RGAの冗長管理は交換可能な中間値方式（IMVS）でデータを選び、妥当性限界による故障検出に加え、スピンモータ回転検出器（SMRD）で電源を失ったRGAを外す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/498）再突入に必須なGNC系が故障許容をすべて失えば次のPLSで早期に終了し、4台構成の系（AA・RGA・FCSチャネルの位置フィードバック）は1故障後も公称の終了まで続けられる（A8-4）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1351） | REQ-SYS-10 | F-GNC-FCS-01・F-GNC-FCS-03・F-GNC-FCS-04・F-GNC-FCS-05・F-GNC-FCS-06・F-GNC-OPS-02 | PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | D（実証） |
| REQ-GNC-09 | 飛行の段階ごとの DAP（遷移・軌道・エアロジェット）で姿勢と並進を制御し、MECO の約20秒後に ET の分離を自動で指令して離脱の並進を行うこと。 | ET 分離 MECO＋約20秒、−Z 4 ft/s | DAPは操縦の要求を解釈して機体の現状と比較し、適切な舵効への指令を生成する飛行制御ソフトウェアの中核で、飛行段階ごとに異なるDAPがある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/516）遷移DAPはMECOから使われ、MECOの約20秒後に外部タンクの分離を自動で指令して下向きのRCSジェットで−Z方向へ4 ft/sまで並進させ、OMS-1・OMS-2の噴射ではOMSのTVCとRCSを使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/518）エアロジェットDAPはMM 304への移行（通常EI-5）から車輪停止まで働き、動圧に応じて舵面とRCSジェットを組み合わせる飛行適応型・閉ループの角速度指令型の制御で、ジェットの使用を徐々に減らして舵面の使用を増やす。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/521） | REQ-SYS-02 | F-GNC-FCS-07・F-GNC-FCS-08・F-GNC-FCS-09・F-GNC-FCS-10・F-GNC-FCS-11・F-GNC-FCS-12 | PH-2c（上昇・軌道投入）・PH-3（軌道）・PH-6（再突入） | T（試験） |
| REQ-GNC-10 | 7枚の空力舵面を、4チャネルのサーボ弁で制御する油圧アクチュエータで駆動し、故障したサーボ弁を二次差圧で切り離し、主の油圧を失えば待機系統へ切り替えること。 | フライトコントロールチャネル 4、SEC ΔP ≧ 2,025 psi が 120 ms で切り離し | ASAからサーボ弁への指令と、舵面の位置・圧力のフィードバックをASAへ戻す経路をフライトコントロールチャネルと呼び、各舵面に4チャネルある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/510）各エレボンのアクチュエータには3系統の油圧系から圧力が供給され、切替弁により主系統の圧力が約1,200〜1,500 psiaに下がると第1待機系統、さらに第2待機系統へ切り替わる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/510）サーボ弁の不具合で二次差圧（SEC ΔP）が2,025 psi以上の状態が120ミリ秒を超えると、ASAはそのサーボ弁をバイパスする切り離し指令を出し、FCS CHANNEL警報灯と「FCS CH X」のメッセージで知らせる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/512） | REQ-SYS-10 | F-GNC-ACT-01・F-GNC-ACT-02・F-GNC-ACT-03・F-GNC-ACT-04・F-GNC-ACT-05・F-GNC-ACT-06・F-GNC-ACT-07・F-GNC-ACT-08 | PH-6b（再突入・突入〜滑空）・PH-6c（再突入・進入〜着陸） | D（実証） |
| REQ-GNC-11 | 4台の ATVC で SSME・SRB の推力方向を制御し、各アクチュエータの4つのサーボ弁の多数決で1つの誤った指令の影響を除くこと。 | ATVC 4、SSME ピッチ ±10.5°・ヨー ±8.5°、SRB ±5° | 10基のアクチュエータが4つのATVCチャネルの指令電圧に応答し、各FCSチャネルのATVCは6つのSSMEドライバと4つのSRBドライバを持ち、各アクチュエータは4つのATVCから同じ指令を受ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/514）各アクチュエータの4つのサーボ弁は力の総和による多数決をとり、誤った指令が所定の時間を超えて続くとATVCが切り離しドライバでそのサーボ弁を外し、残りのチャネルで制御を続ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/515）SSMEのピッチ作動器は取付けの中立位置から最大10.5°、ヨー作動器は最大8.5°エンジンをジンバルさせ、SRBのロック・チルト軸の±5°はピッチ・ヨーの±7°に相当する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/515） | REQ-SYS-10・REQ-SYS-02 | F-GNC-ACT-09・F-GNC-ACT-10・F-GNC-ACT-11・F-GNC-ACT-12・IF-GNC-18 | PH-2（上昇） | A（解析） |
| REQ-GNC-12 | 完全なフライ・バイ・ワイヤとし、乗員の手動の指令（CSS）も GPC を通して出し、操縦装置は3重の変換器で1つの良い信号があれば働くこと。 | RHC 3か所・変換器 9（3重） | GNCは自動とCSSの2つの運用モードを持ち、CSSでも乗員の指令はGPCを通って発行され、乗員と推進系・舵面の間に機械的なつながりはない完全なフライ・バイ・ワイヤ機である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/473）RHCはCDR・PLT・後部の3か所にあり、各RHCはピッチ・ロール・ヨーの各軸に3個ずつ計9個の変換器を持つ3重冗長で、1つの良い信号があれば機能する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/500） | REQ-SYS-10 | F-GNC-CCD-01・F-GNC-CCD-02・F-GNC-CCD-03・F-GNC-CCD-04・F-GNC-CCD-05・F-GNC-CCD-06・F-GNC-CCD-09 | PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | D（実証） |
| REQ-GNC-13 | 操縦装置・TVC・空力舵面・センサ・専用表示の故障の数に応じて、A8-1001 の基準で MDF・次の PLS・初日の PLS を判断できる冗長を持つこと。 | 判定区分 3（MDF・次の PLS・初日の PLS） | GNCのGo/No-Goは操縦装置・スイッチ、TVC・ドライバ、空力舵面、センサ、専用表示ごとにMDF・次のPLS・初日のPLSとする故障数を定め、たとえばIMUの2台の故障は再突入に1台が要るため次の（または初日の）PLSとする（A8-1001）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1420）上昇中はGNC系に問題があっても軌道へ向かうことが最も望ましく、再突入に必須なGNC系の故障許容をすべて恒久的に失った場合は初日のPLSに帰還する（A8-3）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1350） | REQ-SYS-14 | F-GNC-OPS-01・F-GNC-OPS-02・F-GNC-OPS-04・F-GNC-OPS-05・F-GNC-OPS-11・F-GNC-OPS-12 | PH-2（上昇）・PH-3（軌道） | A（解析） |
| REQ-GNC-14 | 軌道離脱の前に、APU または油圧の循環ポンプを使って FCS の点検を行い、舵面・センサ・操縦装置の健全性を確かめること。 | 軌道離脱前に1回 | FCS点検の第1部（二次アクチュエータ点検）は、ASAのヌルドライバ故障を調べるため、できる限り軌道離脱噴射の前にAPUまたは油圧の循環ポンプを使って行う（A8-104）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1388） | REQ-SYS-10 | F-GNC-OPS-10・F-GNC-OPS-09 | PH-4（離脱準備） | T（試験） |

## 5. トレース表（機能行・IF → 要求）

GN&Cの機能説明書 8 件の機能行 90 件と、要求の割付先の IF 行について、参照している要求を示す。機能行のうち 68 件が要求から参照され、22 件は参照されていない（判断の欄を参照）。

| 文書 | 機能・IF | 内容 | 要求 | 判断 |
|---|---|---|---|---|
| SSD-FD-GNC-001 | F-GNC-01 | 機上の航法センサには、慣性計測装置（IMU）3台のほか、戦術航法装置（TACAN）、エアデータシステム、マイクロ波着陸システム（MLS）、電波高度計、GPSなどがある。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-GNC-001 | F-GNC-02 | 2台のスタートラッカも航法系の一部である。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-GNC-001 | F-GNC-03 | 軌道上では、スタートラッカで恒星の方位と仰角を測り、IMUを定期的にアラインメントする。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-GNC-001 | F-GNC-04 | 軌道投入後、GN&C系はRCSとOMSを用いてオービタの姿勢と並進を制御し、機上の状態ベクトルは地上から通信アップリンクで定期的に更新される。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-GNC-001 | F-GNC-05 | 上昇推力方向制御（ATVC）は、打上げ・第1段上昇中は3基のSSMEと2本のSRBの推力方向を、第2段上昇中はSSMEのみの推力方向を制御して、姿勢と軌道を制御する。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-GNC-ACT-001 | F-GNC-ACT-01 | 大気中の再突入では7枚の空力舵面を動かして機体を制御し、各舵面は冗長な電気駆動のサーボ弁で制御される油圧アクチュエータで駆動される（ボディフラップの3台のアクチュエータはサーボ弁を使わず、3系統の油圧系に固定で割り当てられる）。 | REQ-GNC-10 | — |
| SSD-FD-GNC-ACT-001 | F-GNC-ACT-02 | サーボ弁は後部アビオニクスベイ4・5・6にある4台のASAで制御され、各ASAは各舵面の1つの弁を指令し、ASAの電源スイッチはパネルO14・O15・O16にある。 | REQ-GNC-10 | — |
| SSD-FD-GNC-ACT-001 | F-GNC-ACT-03 | ASAからサーボ弁への指令と、舵面の位置・圧力のフィードバックをASAへ戻す経路をフライトコントロールチャネルと呼び、各舵面に4チャネルある。 | REQ-GNC-10 | — |
| SSD-FD-GNC-ACT-001 | F-GNC-ACT-04 | 各エレボンのアクチュエータには3系統の油圧系から圧力が供給され、切替弁により主系統の圧力が約1,200〜1,500 psiaに下がると第1待機系統、さらに第2待機系統へ切り替わる。 | REQ-GNC-10 | — |
| SSD-FD-GNC-ACT-001 | F-GNC-ACT-05 | サーボ弁の不具合で二次差圧（SEC ΔP）が2,025 psi以上の状態が120ミリ秒を超えると、ASAはそのサーボ弁をバイパスする切り離し指令を出し、FCS CHANNEL警報灯と「FCS CH X」のメッセージで知らせる。 | REQ-GNC-10 | — |
| SSD-FD-GNC-ACT-001 | F-GNC-ACT-06 | パネルC3の4個のFCS CHANNELスイッチ（OVERRIDE・AUTO・OFF）は高いSEC ΔPによる自動の切り離しを制御し、OFFではそのチャネルを全アクチュエータでバイパスする。 | REQ-GNC-10 | — |
| SSD-FD-GNC-ACT-001 | F-GNC-ACT-07 | ラダーとスピードブレーキはそれぞれ3台の可逆油圧モータを持ち、差動・混合ギアボックスを介して共通の4台の回転アクチュエータを駆動し、3台のうち2台の油圧モータが故障しても設計速度の約半分で動く。 | REQ-GNC-10 | — |
| SSD-FD-GNC-ACT-001 | F-GNC-ACT-08 | ボディフラップは胴体後下端の3台のアクチュエータで駆動され、各アクチュエータは1系統の油圧と3台のASAの1台が制御するソレノイド弁を持ち、ボディフラップにはチャネルの切り離し機能はない。 | REQ-GNC-10 | — |
| SSD-FD-GNC-ACT-001 | F-GNC-ACT-09 | ATVCは後部アビオニクスベイにある4台の装置で、各油圧ジンバルアクチュエータにジンバル指令と故障検出を与え、コールドプレートとフレオン系で冷却される。 | REQ-GNC-11 | — |
| SSD-FD-GNC-ACT-001 | F-GNC-ACT-10 | 10基のアクチュエータが4つのATVCチャネルの指令電圧に応答し、各FCSチャネルのATVCは6つのSSMEドライバと4つのSRBドライバを持ち、各アクチュエータは4つのATVCから同じ指令を受ける。 | REQ-GNC-11 | — |
| SSD-FD-GNC-ACT-001 | F-GNC-ACT-11 | 各アクチュエータの4つのサーボ弁は力の総和による多数決をとり、誤った指令が所定の時間を超えて続くとATVCが切り離しドライバでそのサーボ弁を外し、残りのチャネルで制御を続ける。 | REQ-GNC-11 | — |
| SSD-FD-GNC-ACT-001 | F-GNC-ACT-12 | SSMEのピッチ作動器は取付けの中立位置から最大10.5°、ヨー作動器は最大8.5°エンジンをジンバルさせ、SRBのロック・チルト軸の±5°はピッチ・ヨーの±7°に相当する。 | REQ-GNC-11 | — |
| SSD-FD-GNC-CCD-001 | F-GNC-CCD-01 | GNCは自動とCSSの2つの運用モードを持ち、CSSでも乗員の指令はGPCを通って発行され、乗員と推進系・舵面の間に機械的なつながりはない完全なフライ・バイ・ワイヤ機である。 | REQ-GNC-12 | — |
| SSD-FD-GNC-CCD-001 | F-GNC-CCD-02 | RHCはCDR・PLT・後部の3か所にあり、各RHCはピッチ・ロール・ヨーの各軸に3個ずつ計9個の変換器を持つ3重冗長で、1つの良い信号があれば機能する。 | REQ-GNC-12 | — |
| SSD-FD-GNC-CCD-001 | F-GNC-CCD-03 | 上昇以外の段階ではRHCの変位がソフトウェアのデテントを超えるとその軸が自動からCSSに移るが、上昇中はパネルF2またはF4のCSSプッシュボタンを押す必要がある。 | REQ-GNC-12 | — |
| SSD-FD-GNC-CCD-001 | F-GNC-CCD-04 | THCは軌道上のRCSジェットの並進を指令し、各THCは各軸の正負の方向に1個ずつ計6個の3接点スイッチを持つ。 | REQ-GNC-12 | — |
| SSD-FD-GNC-CCD-001 | F-GNC-CCD-05 | ラダーペダルのRPTAは3個の変換器を持ち、自動の旋回協調のため滑空中は運用上使われず、接地後の滑走中に前輪の操向に使われる。 | REQ-GNC-12 | — |
| SSD-FD-GNC-CCD-001 | F-GNC-CCD-06 | SBTCは上昇中のSSMEのスロットルと再突入中のスピードブレーキの2つの機能を持ち、各SBTCは変位に比例する電圧を出す3個の変換器を持つ。 | REQ-GNC-12 | — |
| SSD-FD-GNC-CCD-001 | F-GNC-CCD-07 | ボディフラップスイッチはパネルL2とC3に1個ずつあり、主エンジンの熱防護と、再突入中にエレボンの変位を減らすピッチトリムのためのボディフラップの手動の位置決めを行う。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-GNC-12）が受け持つ構成・運用の記述。 |
| SSD-FD-GNC-CCD-001 | F-GNC-CCD-08 | パネルC3とA6Uの24個のORBITAL DAPプッシュボタンで、DAPの構成（A・B）、制御モード（AUTO・INRTL・LVLH・FREE）、並進と回転のモードを選ぶ。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-GNC-12）が受け持つ構成・運用の記述。 |
| SSD-FD-GNC-CCD-001 | F-GNC-CCD-09 | デバイスドライバユニット（DDU）はRHC・THC・SBTC・RPTAに直流と交流の電力を供給し、CDR・PLT・後部の各ステーションに1台ずつあって、それぞれ2系統の主母線の遮断器から給電される。 | REQ-GNC-12 | — |
| SSD-FD-GNC-CCD-001 | F-GNC-CCD-10 | ADIの3本の角速度指針は機体の回転角速度を示し、上昇中の角速度はSRBまたはオービタのRGAから直接表示される。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-GNC-12）が受け持つ構成・運用の記述。 |
| SSD-FD-GNC-CCD-001 | F-GNC-CCD-11 | HSIは航法点に対する機体の位置と方位・距離・コース/グライドパスの偏差を示し、上昇・再突入の誘導と比べる独立のソフトウェア源と、再突入中に個々の航法援助装置の健全性を評価する手段となる。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-GNC-12）が受け持つ構成・運用の記述。 |
| SSD-FD-GNC-CCD-001 | F-GNC-CCD-12 | HUDは最終進入で飛行指令と情報を透過型のコンバイナに重ねて示す単一系統の装置で、冗長のために2本のデータバスにつながる。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-GNC-12）が受け持つ構成・運用の記述。 |
| SSD-FD-GNC-CCD-001 | F-GNC-CCD-13 | SPIは再突入中にエレボン・ボディフラップ・ラダー・エルロン・スピードブレーキの実位置とスピードブレーキの指令位置を示すMEDSの表示である。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-GNC-12）が受け持つ構成・運用の記述。 |
| SSD-FD-GNC-FCS-001 | F-GNC-FCS-01 | 機体には4台のRGAがあり、各RGAはロール・ピッチ・ヨーの角速度を測る3個の1自由度レートジャイロを持ち、これらの角速度は上昇・再突入・軌道投入・軌道離脱でFCSへの主なフィードバックである。 | REQ-GNC-08 | — |
| SSD-FD-GNC-FCS-001 | F-GNC-FCS-02 | RGAはペイロードベイ床下の後部隔壁にあり、フレオン冷却ループのコールドプレートで冷却される。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-GNC-08・REQ-GNC-09）が受け持つ構成・運用の記述。 |
| SSD-FD-GNC-FCS-001 | F-GNC-FCS-03 | RGAの冗長管理は交換可能な中間値方式（IMVS）でデータを選び、妥当性限界による故障検出に加え、スピンモータ回転検出器（SMRD）で電源を失ったRGAを外す。 | REQ-GNC-08 | — |
| SSD-FD-GNC-FCS-001 | F-GNC-FCS-04 | RGAは電力節約のため軌道上ではFCS点検時を除き切られ、軌道離脱準備とOPS 3移行の前に再び入れられ、RGAを切ったままのOPS 3移行は制御の喪失を招きうる。 | REQ-GNC-08 | — |
| SSD-FD-GNC-FCS-001 | F-GNC-FCS-05 | 4台のAAはそれぞれ横（Y軸）と垂直（Z軸）の加速度を測る2個の加速度計を持ち、ミッドデッキ前部アビオニクスベイ1・2に置かれ、安定増強・第1段の荷重軽減・ADIの操舵誤差の表示に使われる。 | REQ-GNC-08 | — |
| SSD-FD-GNC-FCS-001 | F-GNC-FCS-06 | SRB RGAは各SRBに2台あり、第1段上昇中だけピッチ・ヨーの角速度のフィードバックを与え、SRB分離の2〜3秒前に解除されてオービタRGAのデータに置き換えられる。 | REQ-GNC-08 | — |
| SSD-FD-GNC-FCS-001 | F-GNC-FCS-07 | DAPは操縦の要求を解釈して機体の現状と比較し、適切な舵効への指令を生成する飛行制御ソフトウェアの中核で、飛行段階ごとに異なるDAPがある。 | REQ-GNC-09 | — |
| SSD-FD-GNC-FCS-001 | F-GNC-FCS-08 | 遷移DAPはMECOから使われ、MECOの約20秒後に外部タンクの分離を自動で指令して下向きのRCSジェットで−Z方向へ4 ft/sまで並進させ、OMS-1・OMS-2の噴射ではOMSのTVCとRCSを使う。 | REQ-GNC-09 | — |
| SSD-FD-GNC-FCS-001 | F-GNC-FCS-09 | 軌道上の飛行制御ソフトウェアはRCS DAP・OMS TVC DAP・姿勢処理モジュールとDAPの選択論理から成り、RCS DAPは主ジェットまたはバーニアジェットで姿勢と角速度を制御する。 | REQ-GNC-09 | — |
| SSD-FD-GNC-FCS-001 | F-GNC-FCS-10 | OMS TVC DAPは誘導の要求速度をOMSのジンバル指令に変換し、OMSの点火・停止の指令と、OMSエンジンの故障時に姿勢を保つRCSの指令も生成する。 | REQ-GNC-09 | — |
| SSD-FD-GNC-FCS-001 | F-GNC-FCS-11 | エアロジェットDAPはMM 304への移行（通常EI-5）から車輪停止まで働き、動圧に応じて舵面とRCSジェットを組み合わせる飛行適応型・閉ループの角速度指令型の制御で、ジェットの使用を徐々に減らして舵面の使用を増やす。 | REQ-GNC-09 | — |
| SSD-FD-GNC-FCS-001 | F-GNC-FCS-12 | 再突入のロールモードはエルロンを主な舵効とするラップアラウンドDAPが標準で、後部RCSの推進薬が少ない（10%未満）場合や後部のヨージェットを失った場合は、ヨージェットを使わないNo Yaw Jetモードを使う。 | REQ-GNC-09 | — |
| SSD-FD-GNC-GNS-001 | F-GNC-GNS-01 | 航法の基本機能は機体の慣性位置と速度（状態ベクトル）を時間に対して正確に推定することで、ランデブ時には目標の位置と速度も推定する。 | REQ-GNC-05 | — |
| SSD-FD-GNC-GNS-001 | F-GNC-GNS-02 | 状態ベクトルはM50座標系の位置（X・Y・Z、ft）と速度（ft/s）の6要素とGMTの時刻タグで表される。 | REQ-GNC-05 | — |
| SSD-FD-GNC-GNS-001 | F-GNC-GNS-03 | 航法はIMU・航法センサのデータと重力・抗力・ベントのモデルで状態ベクトルを伝播し、時間とともに増える誤差は、地上のレーダ追跡に基づく新しい状態ベクトルまたは差分のアップリンクで修正される。 | REQ-GNC-05 | — |
| SSD-FD-GNC-GNS-001 | F-GNC-GNS-04 | 航法はSuper-G積分方式で状態ベクトルを伝播し、惰行中は大気抗力の加速度のモデルを使い、REL NAVでランデブ航法を有効にすると目標の状態ベクトルも伝播する。 | REQ-GNC-05 | — |
| SSD-FD-GNC-GNS-001 | F-GNC-GNS-05 | 軌道離脱・再突入では3台のIMUそれぞれに基づく3つの状態ベクトルを伝播し、交換可能な中間値選択で1つの状態ベクトルを誘導・飛行制御・表示に渡す。 | REQ-GNC-05 | — |
| SSD-FD-GNC-GNS-001 | F-GNC-GNS-06 | 再突入では外部センサのデータを期待誤差の範囲と照合して取り込み（カルマンフィルタ）、HORIZ SIT表示の操作で取り込みの強制・禁止・自動を選べ、悪いセンサデータによる航法の汚染を防ぐ。 | REQ-GNC-05 | — |
| SSD-FD-GNC-GNS-001 | F-GNC-GNS-07 | 3系統GPSの機体では、軌道離脱・再突入の間は42秒ごと（17,000 ft以下は9秒ごと）に選択したGPSのベクトルを取り込み、MLSが使えるときはGPSの更新を自動で禁止する。 | REQ-GNC-05 | — |
| SSD-FD-GNC-GNS-001 | F-GNC-GNS-08 | 第1段の誘導は事前に計画した相対速度に対するロール・ピッチ・ヨーの姿勢表を使い、MPSのスロットルへも事前に定めたスロットル計画に従って指令を送る。 | REQ-GNC-06 | — |
| SSD-FD-GNC-GNS-001 | F-GNC-GNS-09 | 第2段の誘導はPEG 1の周期的な閉ループ方式で、MECOの目標条件（速度・半径・経路角・軌道傾斜角・昇交点経度）へ機体を導き、主エンジンのスロットル指令を3 gを超えないように調整する。 | REQ-GNC-06 | — |
| SSD-FD-GNC-GNS-001 | F-GNC-GNS-10 | 軌道上の誘導は、UNIV PTGで指定した機体軸を目標に向ける姿勢変化を計算し、PEG 7（外部ΔV）で点火時刻と速度変化を指定したOMSまたはRCSの噴射を指令する。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-GNC-05・REQ-GNC-06・REQ-GNC-07）が受け持つ構成・運用の記述。 |
| SSD-FD-GNC-GNS-001 | F-GNC-GNS-11 | 再突入の誘導は温度・動圧・垂直加速度の制限から機体を守る抗力加速度のプロファイルを飛び、迎角とバンク角で抗力を調整し、方位誤差に応じてロールリバーサルを指令する。 | REQ-GNC-07 | — |
| SSD-FD-GNC-GNS-001 | F-GNC-GNS-12 | TAEMの誘導はエネルギー対距離のプロファイルに従ってHACを回り、A/Lの誘導は外側グライドスロープからプレフレアと最終フレア（30〜80 ft）を経て接地まで滑走路中心線へ導く。 | REQ-GNC-07 | — |
| SSD-FD-GNC-INS-001 | F-GNC-INS-01 | オービタには3台のIMUがあり、各IMUは慣性安定化された4軸ジンバルの台座に3個の加速度計と2個の2軸ジャイロを載せ、GNCソフトウェアに慣性姿勢と速度のデータを与える。 | REQ-GNC-01 | — |
| SSD-FD-GNC-INS-001 | F-GNC-INS-02 | 飛行は1台のIMUでも可能であるが、冗長のために3台を搭載し、IMUはフライトデッキの表示・制御パネルの前方にある航法ベースに取り付けられる。 | REQ-GNC-01 | — |
| SSD-FD-GNC-INS-001 | F-GNC-INS-03 | ジンバルは外側から外ロール・ピッチ・内ロール・方位の順で、冗長な内ロールジンバルが全姿勢での使用を可能にし、ジンバルロックを防ぐ。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-GNC-01・REQ-GNC-02）が受け持つ構成・運用の記述。 |
| SSD-FD-GNC-INS-001 | F-GNC-INS-04 | 3台のIMUの軸は互いにも機体軸ともずらして（スキュー）取り付けられ、姿勢による不具合が同時に1台を超えないようにするとともに、冗長管理による故障IMUの判定に使われる。 | REQ-GNC-01 | — |
| SSD-FD-GNC-INS-001 | F-GNC-INS-05 | IMUはヒータだけに給電する暖機・待機モードと運転モードを持ち、冷えた状態から運転温度に達するまで約8時間かかり、GNC OPS 2・3・9のソフトウェア指令で運転モードに移る。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-GNC-01・REQ-GNC-02）が受け持つ構成・運用の記述。 |
| SSD-FD-GNC-INS-001 | F-GNC-INS-06 | 運転指令を受けたIMUはジンバルをケージしてからジャイロを回し、安定化ループに給電して慣性基準となるまでに約85秒かかり、電力の節約のために切る場合を除いて、打上げ前から飛行の終わりまで運転モードのままとする。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-GNC-01・REQ-GNC-02）が受け持つ構成・運用の記述。 |
| SSD-FD-GNC-INS-001 | F-GNC-INS-07 | IMU SOPは速度のM50座標への変換、レゾルバ出力のジンバル角への変換、表示用の加速度の計算、ソフトウェアBITE、スタートラッカまたは他のIMUによるずれに基づくトルク指令の計算を行う。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-GNC-01・REQ-GNC-02）が受け持つ構成・運用の記述。 |
| SSD-FD-GNC-INS-001 | F-GNC-INS-08 | スタートラッカは−Y軸と−Z軸の2台で、IMUを載せた航法ベースの延長部に置かれ、IMUのアラインメントと、ランデブ時の目標の追尾・視線ベクトルの算出に使われる。 | REQ-GNC-02 | — |
| SSD-FD-GNC-INS-001 | F-GNC-INS-09 | スタートラッカで得た2つの恒星の視線ベクトルで機体の慣性姿勢を定め、IMUの姿勢との差からトルク角を求めてジャイロのドリフトを除くが、IMUのずれが1.4°を超えるとHUDでまず1.4°以内に合わせる。 | REQ-GNC-02 | — |
| SSD-FD-GNC-INS-001 | F-GNC-INS-10 | スタートラッカのアセンブリには冗長管理がなく、2台は独立していずれも全作業を行え、単独でも同時にも運用できる。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-GNC-01・REQ-GNC-02）が受け持つ構成・運用の記述。 |
| SSD-FD-GNC-INS-001 | F-GNC-INS-11 | COASは無限遠に焦点を合わせた照準を投影する光学器具で、スタートラッカが使えないときのアラインメントには主にHUDが使われるがCOASも使え、乗員がATT REFボタンでマークした瞬間の3台のIMUのジンバル角が記録される。 | REQ-GNC-02 | — |
| SSD-FD-GNC-INS-001 | F-GNC-INS-12 | IMUの熱制御は自動の内部ヒータ系と強制空冷系から成り、内部ヒータはIMUに電源を入れると働いて電源を切るまで動作する。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-GNC-01・REQ-GNC-02）が受け持つ構成・運用の記述。 |
| SSD-FD-GNC-NAS-001 | F-GNC-NAS-01 | 3系統のGPSを持たない機体は冗長に動作する3台のTACANを持ち、各TACANは前胴の下面と上面に1つずつアンテナを持ち、受動冷却でミッドデッキのアビオニクスベイに置かれる。 | REQ-GNC-03 | — |
| SSD-FD-GNC-NAS-001 | F-GNC-NAS-02 | TACANはTACANまたはVORTACの地上局に対する斜距離と磁方位を求め、最大距離は400 n. mi.である。 | REQ-GNC-03 | — |
| SSD-FD-GNC-NAS-001 | F-GNC-NAS-03 | 再突入では2台以上のTACANがロックすると、TACANの距離・方位がMLSの捕捉（約18,000 ft）まで状態ベクトルの更新に使われる。 | REQ-GNC-03 | — |
| SSD-FD-GNC-NAS-001 | F-GNC-NAS-04 | TACANの冗長管理は距離・方位のデータの中間値を選び、故障を検出するとSM ALERTを点灯してGPCの故障メッセージを出す。 | REQ-GNC-03 | — |
| SSD-FD-GNC-NAS-001 | F-GNC-NAS-05 | OV-105では3台のGPS受信機が冗長に動作し、各受信機は前胴の下面と上面のアンテナを持ち、前部アビオニクスベイに置かれた対流冷却の装置（13 lb・40 W）である。 | REQ-GNC-03 | — |
| SSD-FD-GNC-NAS-001 | F-GNC-NAS-06 | GPSの選択フィルタは使える受信機が3台なら中間値選択、2台なら平均、1台ならその1台を選び、1台もなければ最後の有効なデータを伝播するが、有効なデータから18秒を超えるとそれを航法の更新に使わない。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-GNC-03・REQ-GNC-04）が受け持つ構成・運用の記述。 |
| SSD-FD-GNC-NAS-001 | F-GNC-NAS-07 | エアデータ系は前胴下面の左右2本のプローブと4台のADTAから成り、左プローブの圧力・温度はADTA 1・3へ、右プローブはADTA 2・4へ導かれる。 | REQ-GNC-04 | — |
| SSD-FD-GNC-NAS-001 | F-GNC-NAS-08 | ADTA SOPはADTAのデータから迎角・マッハ数・等価対気速度・真対気速度・動圧・気圧高度を計算し、4台の圧力が一致すれば各プローブの1組を平均してソフトウェアに渡す。 | REQ-GNC-04 | — |
| SSD-FD-GNC-NAS-001 | F-GNC-NAS-09 | 各プローブは2台の交流モータの回転式電気機械アクチュエータで独立に展開し、展開時間は2台のモータで15秒、1台で30秒である。 | REQ-GNC-04 | — |
| SSD-FD-GNC-NAS-001 | F-GNC-NAS-10 | 3台のMLSは着陸滑走路脇の地上局に対する斜距離・方位角・仰角を求めて進入・着陸の段階で使われ、各MLSはKu帯の送受信機と復号器から成る。 | REQ-GNC-03 | — |
| SSD-FD-GNC-NAS-001 | F-GNC-NAS-11 | MLSの冗長管理は3台が有効なら距離・方位角・仰角の中間値を、2台なら平均を選ぶ。 | REQ-GNC-03 | — |
| SSD-FD-GNC-NAS-001 | F-GNC-NAS-12 | 2台の電波高度計はC帯のパルスで最寄りの地表までの高度を0〜5,000 ftの範囲で測るが、航法には使われず乗員の監視用である。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-GNC-03・REQ-GNC-04）が受け持つ構成・運用の記述。 |
| SSD-FD-GNC-OPS-001 | F-GNC-OPS-01 | 上昇中はGNC系に問題があっても軌道へ向かうことが最も望ましく、再突入に必須なGNC系の故障許容をすべて恒久的に失った場合は初日のPLSに帰還する（A8-3）。 | REQ-GNC-13 | — |
| SSD-FD-GNC-OPS-001 | F-GNC-OPS-02 | 再突入に必須なGNC系が故障許容をすべて失えば次のPLSで早期に終了し、4台構成の系（AA・RGA・FCSチャネルの位置フィードバック）は1故障後も公称の終了まで続けられる（A8-4）。 | REQ-GNC-08・REQ-GNC-13 | — |
| SSD-FD-GNC-OPS-001 | F-GNC-OPS-03 | GNCのLRUへの電力またはデータ経路の冗長の喪失は、LRUの冗長の喪失とはみなさない（A8-10）。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-GNC-13・REQ-GNC-08・REQ-GNC-02・REQ-GNC-04・REQ-GNC-14）が受け持つ構成・運用の記述。 |
| SSD-FD-GNC-OPS-001 | F-GNC-OPS-04 | GNCのパラメータは共通の冗長出力との差がI-loadのRM追従限界を超えると故障とし、冗長出力を持たないLRU（IMU・TACAN・MSBLSなど）ではパラメータの喪失をLRUの喪失とする（A8-51）。 | REQ-GNC-13 | — |
| SSD-FD-GNC-OPS-001 | F-GNC-OPS-05 | 搭載のRMがジレンマを宣言したIMU・TACAN・ADTA・MLSの故障は、地上レーダのデータとの比較で故障したLRUを特定する（A8-52）。 | REQ-GNC-13 | — |
| SSD-FD-GNC-OPS-001 | F-GNC-OPS-06 | 軌道離脱噴射の70分前にIMU間のアラインメントでIMUのRMのしきい値をリセットし、再突入日の軌道離脱前の恒星アラインメントを重要なアラインメントとする（A8-110）。 | REQ-GNC-02 | — |
| SSD-FD-GNC-OPS-001 | F-GNC-OPS-07 | EIでのIMUの姿勢誤差が0.5°を超えると予測される場合は軌道離脱を行わず、公称の軌道離脱で0.25°を超える場合は軌道離脱を遅らせてアラインメントを行う（A4-151）。 | REQ-GNC-02 | — |
| SSD-FD-GNC-OPS-001 | F-GNC-OPS-08 | 良いADTAが1台だけになればエアデータのG&Cへの取り込みを禁止してデフォルト/NAVDADのエアデータで飛び、エアデータをすべて失うか取り込まないときはシータ限界を守る（A8-111）。 | REQ-GNC-04 | — |
| SSD-FD-GNC-OPS-001 | F-GNC-OPS-09 | GPCの故障による再割当てでは各GPCに同数のASAを割り当て、FA MDMまたはGPCの故障時は対応するFCSチャネルを切り、1つのアクチュエータに良いチャネルが2つだけ残れば両方をOVERRIDEにする（A8-107）。 | REQ-GNC-14 | — |
| SSD-FD-GNC-OPS-001 | F-GNC-OPS-10 | FCS点検の第1部（二次アクチュエータ点検）は、ASAのヌルドライバ故障を調べるため、できる限り軌道離脱噴射の前にAPUまたは油圧の循環ポンプを使って行う（A8-104）。 | REQ-GNC-14 | — |
| SSD-FD-GNC-OPS-001 | F-GNC-OPS-11 | GNCのGo/No-Goは操縦装置・スイッチ、TVC・ドライバ、空力舵面、センサ、専用表示ごとにMDF・次のPLS・初日のPLSとする故障数を定め、たとえばIMUの2台の故障は再突入に1台が要るため次の（または初日の）PLSとする（A8-1001）。 | REQ-GNC-13 | — |
| SSD-FD-GNC-OPS-001 | F-GNC-OPS-12 | PASSのRGA・AA・舵面の故障検出・切り離し（FDIR）は最初の故障で終わり、以後は乗員による選択フィルタの管理が必要で、BFSの選択フィルタは常に乗員の管理を要する。 | REQ-GNC-13 | — |
| SSD-FD-GNC-ACT-001 | IF-GNC-18 | （IF の行。内容は所有文書） | REQ-GNC-11 | — |

## 6. 要求から参照されない機能行

要求から参照されない機能行 22 件のうち、22 件は「要求なしで妥当」、0 件は「要求が抜けている」と判断した。「要求なしで妥当」は、系の全般の記述（親の説明書）か、同じ下位機能に要求があり、その要求が受け持つ構成・数量・運用の記述であるものである。「要求が抜けている」は、今後 L2 要求を足す候補である。文書ごとの件数を示す。

| 文書 | 機能行 | 要求から参照 | 要求なしで妥当 | 要求が抜けている |
|---|---|---|---|---|
| SSD-FD-GNC-001 | 5 | 0 | 5 | 0 |
| SSD-FD-GNC-ACT-001 | 12 | 12 | 0 | 0 |
| SSD-FD-GNC-CCD-001 | 13 | 7 | 6 | 0 |
| SSD-FD-GNC-FCS-001 | 12 | 11 | 1 | 0 |
| SSD-FD-GNC-GNS-001 | 12 | 11 | 1 | 0 |
| SSD-FD-GNC-INS-001 | 12 | 6 | 6 | 0 |
| SSD-FD-GNC-NAS-001 | 12 | 10 | 2 | 0 |
| SSD-FD-GNC-OPS-001 | 12 | 11 | 1 | 0 |

## 7. 検証（V&V）

各要求の検証方法（解析 A・試験 T・検査 I・実証 D）について、その方法で要求が満たされたことを示す公開資料の頁を「検証の根拠」に示す（14件のうち根拠あり 14件・根拠なし 0件）。根拠が見つからないものは「根拠なし」とし、理由を書いた。

| ID | 検証方法 | 状態 | 検証の根拠 |
|---|---|---|---|
| REQ-GNC-01 | D（実証） | 根拠あり | 2.3.5.1〜2.3.5.2節（PDF p40）：スタートラッカの光学汚染と警報、RMによる3台のIMUの選択と速度・姿勢の追従のデータを記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=40） |
| REQ-GNC-02 | D（実証） | 根拠あり | IMU・スタートラッカ（PDF p56）：IMUの加速度計の補償を1回、ドリフト補償を2回調整し、−Yスタートラッカは航法星を705回捕捉して495回逃したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=56） |
| REQ-GNC-03 | D（実証） | 根拠あり | 2.3.5.3〜2.3.5.5節（PDF p41）：TACANの方位の跳び（マルチパス）、MSBLSの捕捉（約16,500 ft）、電波高度計の前脚の反射による誤指示を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=41） |
| REQ-GNC-04 | D（実証） | 根拠あり | ADTA（PDF p52）：4台のADTAが正常で、エアデータプローブを約マッハ4.7で展開し、約マッハ2.6でGN&Cに取り込んだと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=52） |
| REQ-GNC-05 | D（実証） | 根拠あり | GPS航法（PDF p46）：単一系統GPSの飛行の計画どおり、高速Cバンド追跡で確かめた後にMM 304でGPSの状態ベクトルをPASSとBFSに取り込み、航法の残差が大きく減ったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=46） |
| REQ-GNC-06 | D（実証） | 根拠あり | STS-114 の飛行報告は、MECO が期待した許容範囲内で起き、ET の落下点が飛行前の予測から 15 n.mi. の範囲にあったことを示し、上昇の誘導が MECO の目標条件へ機体を導いたことの実証である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=32） |
| REQ-GNC-07 | D（実証） | 根拠あり | 2.3.2.1節（PDF p23）：オートランドの作動（約9,600 ftで作動、50秒間制御）と外側グライドスロープの追従を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=23） |
| REQ-GNC-08 | D（実証） | 根拠あり | 飛行制御系（PDF p53）：4台のORGAと4台のSRGAの出力が互いに追従し、SMRDの脱落がなく、4台のAAも正常に追従したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=53） |
| REQ-GNC-09 | T（試験） | 根拠あり | 飛行制御系（PDF p52）：OPS 8のFCS点検で、舵面の駆動・チャネル試験・ORGAとAAの試験・DDU/操縦装置のデータに異常がなかったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=52） |
| REQ-GNC-10 | D（実証） | 根拠あり | 飛行制御系（PDF p52）：再突入で全舵面のアクチュエータが正常に動き、二次差圧が等化しきい値内で、位置がGPCの指令に追従したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=52） |
| REQ-GNC-11 | A（解析） | 根拠あり | 付録C.2（PDF p44〜50）：ボディフラップ・ラダー/スピードブレーキ・エレボン・主エンジン（ATVC）のアクチュエータの評価で、IOAとNASAの故障モードがすべて一致したとする。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=50） |
| REQ-GNC-12 | D（実証） | 根拠あり | 飛行制御系（PDF p53）：DDUと操縦装置の動作が正常で、RHCとTHCのチャネルの追従が正常だったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=53） |
| REQ-GNC-13 | A（解析） | 根拠あり | 付録C.4（PDF p52）：GNCの解析（故障モードワークシート141件・PCI 24件）をNASAの基準（FMEA 148件・CIL 36件）と比べ、CIL項目の相違はなかったとする。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=52） |
| REQ-GNC-14 | T（試験） | 根拠あり | 7章 FCS CHECKOUT（PDF p211〜213）：RGA・ADTAのセンサ試験と、限界を外れたLRUの選択解除を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=211） |

## 8. 注記（出典間の相違・構成変更）

> **注記** トレース表の「要求なしで妥当」は、親の説明書の全般の記述か、同じ下位機能（文書）に割り付けた要求が受け持つ構成・運用の記述であることを根拠に、文書ごとにまとめて判断したもので、機能行1件ずつに要求の要否を検討したものではない。

## 9. 参考文献

1. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p475） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/475
2. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p476） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/476
3. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p480） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/480
4. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A4-151 IMU Alignment（PDF p940） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=940
5. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.13節 TACAN（PDF p484） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/484
6. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p492） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/492
7. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p494） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/494
8. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p490） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/490
9. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A8-111 GNC Air Data System Management（PDF p1402） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1402
10. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p469） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/469
11. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p528） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/528
12. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p523） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/523
13. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p524） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/524
14. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p529） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/529
15. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p530） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/530
16. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p498） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/498
17. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A8-4 Fault Tolerance Philosophy（PDF p1351） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1351
18. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p516） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/516
19. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p518） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/518
20. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p521） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/521
21. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p510） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/510
22. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p512） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/512
23. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p514） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/514
24. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p515） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/515
25. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p473） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/473
26. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p500） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/500
27. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A8-1001 GNC Go/No-Go Criteria（PDF p1420） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1420
28. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A8-3 Loss of GNC System（PDF p1350） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1350
29. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A8-104 FCS Checkout（PDF p1388） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1388
30. STS-2 Orbiter Mission Report 2.3.5 Hardware Performance（PDF p40） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=40
31. STS-122 Mission Report Inertial Measurement Unit and Star Tracker System（PDF p56） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=56
32. STS-2 Orbiter Mission Report 2.3.5.3〜2.3.5.5 TACAN・MSBLS・Radar Altimeter（PDF p41） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=41
33. STS-114 Mission Report Air Data Transducer Assembly（PDF p52） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=52
34. STS-135 Mission Report Global Positioning System（PDF p46） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=46
35. STS-114 Mission Report External Tank（PDF p32） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=32
36. STS-4 Orbiter Mission Report 2.3.2.1 Autoland Engage and Tracking（PDF p23） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=23
37. NSTS-37452 STS-125 Mission Report（2010） Flight Control Subsystem（IFA STS-125-V-02）（PDF p53） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=53
38. NASA-CR-185550 IOA: FMEA/CIL Assessment Interim Report C.2.4 Main Engine (ATVC) Actuator（PDF p50） — https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=50
39. NASA-CR-185550 IOA: FMEA/CIL Assessment Interim Report C.4 Guidance, Navigation and Control System（PDF p52） — https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=52
40. Orbit Operations Checklist Rev M PCN-10 7-21 FCS Checkout（Sensor Test）（PDF p211） — https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=211

## 10. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（L2 要求 14件、機能行 90件とのトレース、検証の根拠） |
| Rev. A | 2026-10-07 | 上位の要求 REQ-SYS-09 の文を改めた（Rev. BG の要求の値の見直し）（Rev. BG） |
