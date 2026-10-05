# ミッションフェーズ・運用モード定義書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-OPS-PHASE-001 |
| 表題 | ミッションフェーズ・運用モード定義書 |
| 版・日付 | Rev. G／2026-10-04 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図39 フェーズ別 サブシステム稼働表・図40 上昇シーケンス |

## 1. 目的

スペースシャトルのミッションを飛行フェーズとアボートモードに分け、フェーズごとの主な事象、データ処理系（DPS）のOPS・メジャーモード、各サブシステムと外部要素の稼働・モードを定義する。本書のフェーズは、運用飛行規則 A1-104 と乗員運用マニュアル（SCOM）の通常・緊急手順という実際の運用の記述から導いたもので、設計当初の要求文書から取ったものではない。図39 フェーズ別 サブシステム稼働表と図40 上昇シーケンスの根拠とする。

## 2. 飛行フェーズ

運用飛行規則 A1-104 の8区分（PH-1〜PH-8）を主とし、上昇（PH-2）と再突入（PH-6）を本モデルの下位区分に分ける。EVA（PH-5）と離脱準備（PH-4）は時間的には軌道（PH-3）の一部である。図39 の列は、下位区分のあるフェーズでは下位区分で示す。

| ID | フェーズ | 範囲 | 定義・主な事象 |
|---|---|---|---|
| PH-1 | 打上げ前 | SRB 点火まで | A1-104 は、打上げ前を SRB 点火より前と定義する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=468）乗員は L-4:55 に起床し、L-2:45 にホワイトルームへ到着して搭乗する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/821）T-9 分で打上げの GO が出てイベントタイマを始動し、T-0:07 に主エンジンの点火シーケンスが始まる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/822） |
| PH-2 | 上昇 | SRB 点火〜OMS-2 燃焼終了 | A1-104 は、上昇を SRB 点火から OMS-2 燃焼の終了までと定義する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=468） |
| PH-2a | 　上昇・第1段 | SRB 点火（T-0）〜SRB 分離（MET 約2分） | T-0 で SRB が点火し、ソフトウェアはメジャーモード 102 に遷移する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/823）メジャーモード 102 は離昇から SRB 分離までである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/246）約2分で2本の SRB は推進薬を使い切り、オービタの分離信号で外部タンクから切り離される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/32） |
| PH-2b | 　上昇・第2段 | SRB 分離〜MECO・ET 分離 | SRB が分離すると、GNC はメジャーモード 103 に遷移する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/823）メジャーモード 103 は SRB 分離から外部タンク分離の運動の完了までである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/246）打上げの約8分半後に3基の主エンジンが停止（MECO）し、オービタの指令で外部タンクを投棄する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/32） |
| PH-2c | 　上昇・軌道投入 | ET 分離〜OMS-2 燃焼終了 | メジャーモード 104 は ET 分離から OMS-1 燃焼の終了まで、105 は OMS-1 から OMS-2 の終了まで、106 は OMS-2 の終了から GNC OPS 2 の選択までである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/246）通常の直接投入では MECO で一時的な楕円軌道に入り、OMS-2 燃焼で軌道を安定させる。性能が大きく不足した場合は、先に OMS-1 燃焼で安全な高度へ上げる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/32） |
| PH-3 | 軌道 | OMS-2 燃焼終了〜離脱噴射点火 | A1-104 は、軌道を OMS-2 燃焼の終了から離脱噴射の点火までと定義する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=468）軌道投入後の作業では、軌道用ソフトウェアへの切替、放熱器の起動、ペイロードベイドアの開放、LES の脱衣と収納を行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/827） |
| PH-4 | 　離脱準備 | 離脱噴射点火の3.5時間前〜点火 | A1-104 は、離脱準備を離脱噴射点火（TIG）の3.5時間前から TIG までと定義する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=468）SCOM では、乗員は TIG の4時間前に離脱準備チェックリストへ移る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/841） |
| PH-5 | 　EVA | エアロック減圧開始〜再与圧・気密確認 | A1-104 は、EVA をエアロック減圧の開始から再与圧とエアロックの気密確認までと定義する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=468）計画 EVA の最長は6時間で、計画・計画外の EVA はすべて2名で行い、第1飛行日には行わない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/460） |
| PH-6 | 再突入 | 離脱噴射点火〜滑走停止 | A1-104 は、再突入を離脱噴射の点火から滑走停止までと定義する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=468） |
| PH-6a | 　再突入・離脱噴射〜突入 | 離脱噴射点火〜大気圏突入（EI、400,000 ft） | 離脱噴射は2基の OMS エンジンで軌道を下げ、所定の高度と着陸地点からの距離で大気圏に入るようにする。燃焼時間は通常2〜3分である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/33）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/844）大気圏突入（EI）は、高度 400,000 ft、着陸地点の約 4,200 n.mi. 手前、速度約 25,000 fps の点とされる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/33） |
| PH-6b | 　再突入・突入〜滑空 | EI〜TAEM〜進入・着陸の開始（約10,000 ft） | EI の5分前に GPC を OPS 304 に遷移させ、Mach 2.5・高度約 81,000 ft でソフトウェアは自動で OPS 305 に遷移して TAEM 誘導に入る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/845）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/846）TAEM インタフェースは高度約 83,000 ft・速度 2,500 fps・滑走路から 60 n.mi. で、進入・着陸誘導は高度 10,000 ft で始まる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/34）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/35） |
| PH-6c | 　再突入・進入〜着陸 | 進入・着陸（約10,000 ft）〜滑走停止 | 進入・着陸フェーズは高度約 10,000 ft・300 KEAS で始まり、機体が滑走路上で停止して終わる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/35）乗員は高度 300 ft で着陸装置を下げ、主脚接地の直後にドラッグシュートを展開する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/35）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/848） |
| PH-7 | 着陸後 | 滑走停止〜乗員退出 | A1-104 は、着陸後を滑走停止から乗員の退出までと定義する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=468）着陸後は APU・油圧の停止、DPS の OPS 901 への遷移、系統の停止を行い、乗員は機外へ出る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/849） |
| PH-8 | ターンアラウンド | 乗員退出後 | A1-104 は、ターンアラウンド運用を乗員の退出後と定義する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=468）乗員の退出後は地上員がオービタの電源を切り、機体と地上支援機材の車列は滑走路からオービタ整備施設（OPF）へ移る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/36） |

## 3. アボートモード

上昇中のアボートは、intact アボート（RTLS・TAL・AOA・ATO）とコンティンジェンシーアボートに分かれる。intact アボートは、性能が大きい順に ATO、AOA、TAL、RTLS と選ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/855）

| ID | モード | 選択できる範囲・条件 | 内容 |
|---|---|---|---|
| AB-RTLS | RTLS（射点帰還） | 離昇後〜NEGATIVE RETURN（選択は離昇2分30秒以降） | RTLS は、離昇後から NEGATIVE RETURN までのエンジン停止に対し、準軌道で KSC のシャトル着陸施設（SLF）へ戻す非常手段である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/861）外部タンクの加熱のため、RTLS は離昇2分30秒より前には選べない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/861）機体は動力ピッチアラウンド（PPA）で向きを反転し、外部タンクの推進薬が 2% 以下になってから MECO・分離する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/861）GNC は OPS 6 に切り替わり、ET 分離の後にメジャーモード 602 の滑空に入る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/861）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/865） |
| AB-TAL | TAL（大洋横断着陸） | 2 ENGINE TAL〜PRESS TO ATO（MECO） | TAL は、2 ENGINE TAL から PRESS TO ATO（MECO）までのエンジン1基の停止に対する非常手段で、欧州またはアフリカの滑走路に着陸する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/869）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/855）OMS 推進薬は通常、OMS エンジンと、OMS タンクに連結した後方 RCS 24 基から投棄する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/869）TAL は MECO と ET 分離の後に GNC OPS 3 への遷移を要する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/871） |
| AB-AOA | AOA（1周帰還） | MECO 後（性能不足・OMS 推進薬不足・主要系の故障） | AOA は、性能の損失で有効な軌道に乗れない場合や OMS 推進薬が足りない場合、また主要系の故障で早く着陸する必要がある場合に使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/873）標準投入または低性能の直接投入では、1回目の OMS 燃焼で MECO 後の軌道を調整し、2回目の燃焼で離脱して AOA 着陸地点に降りる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/873）AOA の着陸地点の候補は、エドワーズ空軍基地、ケネディ宇宙センター、ノースラップ・ストリップである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/876） |
| AB-ATO | ATO（軌道へのアボート） | MECO 前（PRESS TO ATO 以後）または MECO 後 | ATO は、通常より低いが安全な軌道に入れるための非常手段で、性能不足または一部の系の故障で選ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/877）MECO 前に ATO を選ぶと OMS 推進薬を投棄し、アボート用の MECO 目標に切り替わり、可変 I-Y 誘導で軌道傾斜角を固定することがある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/877）2回の ATO OMS 燃焼の後、オービタは約 105 n.mi. の円軌道に入る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/877） |
| AB-CONT | コンティンジェンシーアボート | intact アボートができない推力不足（2基以上の停止など） | コンティンジェンシーアボートは、intact アボートができない重大な故障の後に乗員の生存を図るもので、東海岸の着陸地点（ECAL）への着陸か洋上でのベイルアウトになる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/855）コンティンジェンシーアボートの多くでは PASS を OPS 6（RTLS）に切り替える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/879） |
| AB-PAD | 射点でのアボート・脱出（モード1〜4） | SRB 点火まで | 打上げは SRB 点火までスクラブまたはアボートでき、SSME 始動後のアボートは地上打上げシーケンサ（GLS）が自動で制御する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/853）3基の主エンジンが T-3 秒までに定格推力の 90% に達しなければ、全 SSME を停止して SRB を点火せず、射点アボートとなる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/607）射点の緊急時の脱出は、乗員だけで行うモード1と、閉鎖班・消防救難班の支援を受けるモード2〜4に分けて事前に訓練する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/853） |

## 4. データ処理系の OPS・メジャーモード

GPC の応用ソフトウェアは、ミッションの段階ごとの運用シーケンス（OPS）と、その下のメジャーモード（MM）に分かれる。SM の OPS 4 は、現在は機上で使わない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/245）

| ID | OPS | MM | 内容 | 使うフェーズ | 根拠 |
|---|---|---|---|---|---|
| OPS-9 | GNC OPS 9 | 901 | 打上げ前（カウント前）・着陸後の構成監視 | 打上げ前・着陸後 | OPS 9 の MM 901 は、カウント前と着陸後の構成監視に使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/245）着陸後、MCC の指示で DPS を GNC OPS 901 に遷移させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/849） |
| OPS-1 | GNC OPS 1 | 101〜106 | 上昇（101 ターミナルカウント、102 第1段、103 第2段、104 OMS-1、105 OMS-2、106 投入後の慣性飛行） | 打上げ前（L-20分〜）・上昇 | OPS 1 のメジャーモードは、101 が打上げ20分前から離昇まで、102 が離昇から SRB 分離まで、103 が SRB 分離から ET 分離の運動の完了までである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/246）打上げの L-1:00 に PASS の OPS 1 のロードを始め、L-58:30 に BFS を OPS 1 に遷移させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/822） |
| OPS-6 | GNC OPS 6 | 601〜603 | RTLS（601 第2段、602・603 滑空） | RTLS・コンティンジェンシー | 打上げ時の GNC のメモリ構成1は、RTLS に新しいソフトウェアを読み込む時間が無いため、OPS 1（上昇）と OPS 6（RTLS）の両方を持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/245） |
| OPS-2 | GNC OPS 2・SM OPS 2 | 201・202 | 軌道（GNC：201 軌道慣性飛行、202 マヌーバ実行／SM：201 軌道運用、202 ペイロードベイドア運用） | 軌道・離脱準備・EVA | 軌道では GNC OPS 2 を GPC 1・2 に、SM ソフトウェアを GPC 4 に読み込み、GPC 3 には OPS 2 を読み込んで待機させ、GPC 5 は BFS のまま停止させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/827）SM OPS 2 では、軌道の MM 201 からペイロードベイドアの MM 202 への切替と戻しを乗員が手動で行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/246） |
| OPS-8 | GNC OPS 8 | 801 | 軌道での点検（飛行制御系の点検） | 軌道の最後の終日 | 最後の終日の飛行制御系（FCS）点検では、センサと操縦装置の電源を入れて OPS 8 に遷移させ、点検の後に GNC OPS 2 に戻す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/838）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/839） |
| OPS-3 | GNC OPS 3 | 301〜305 | 再突入（301 離脱前の慣性飛行、302 離脱噴射、303 突入前の監視、304 突入、305 TAEM・着陸） | 離脱準備の終わり・再突入 | 離脱準備では GPC 1〜4 を PASS OPS 3 に、GPC 5 を BFS OPS 3 に構成する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/842）離脱噴射の後は OPS 303 に進み、EI の5分前に OPS 304、TAEM で OPS 305 に遷移する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/844）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/845） |

## 5. 上昇シーケンスの主な事象

T-9 分から OMS-2 燃焼までの主な事象と、その時点で有効になる、または切れる IF を示す。図40 の列はこの表の行に対応する。「開始」「終了」は IF の接続・流れの始まりと終わり、「指令・切替」はその時点の指令や切替を表す。

| ID | 時刻 | 事象 | IF の変化 | 根拠 |
|---|---|---|---|---|
| EV-01 | T-9分 | 打上げ GO | — | T-9 分で打上げの GO が出て、イベントタイマを始動する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/822） |
| EV-02 | T-8分 | 必須母線を燃料電池へ | — | T-8 分に操縦手が必須母線を燃料電池に接続する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/822） |
| EV-03 | T-5分 | APU 起動 | IF-ORB-07 開始、IF-ORB-08 開始 | T-6:15 に APU の起動前準備を行い、T-5 分に操縦手が APU を起動して圧力を確かめる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/822） |
| EV-04 | T-2分55秒 | ET タンクの加圧 | IF-ORB-29 指令・切替、IF-ORB-30 終了 | T-2 分55 秒に打上げ処理システムが液体酸素タンクのベント弁を閉じ、地上支援設備のヘリウムで 21 psig に加圧する。T-1 分57 秒には液体水素タンクを 42 psig に加圧する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/606）打上げ前は地上支援設備が燃料電池の反応剤を補給して搭載量を満たし、T-2分35秒で充填を終える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/347） |
| EV-05 | T-50秒 | 燃料電池が全電力を発電 | IF-ORB-31 終了 | 3基の燃料電池は、打上げの50秒前から着陸の滑走終了まで機体の 28 V 直流電力のすべてを発電し、それ以前は地上電源と燃料電池が電力を供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/311）後部電力制御組立の電力接触器は、燃料電池が給電を引き継ぐまで、地上から T-0 アンビリカルを通じて 28 V 直流電力を配電する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/338） |
| EV-06 | T-31秒 | 機上の打上げシーケンスへ移管 | IF-ORB-17 指令・切替 | T-31 秒に打上げ処理システムが機上の冗長セット打上げシーケンス（RSLS）を有効にし、以後の手順は GPC が機上の時計で行う。GPC は打上げ処理システムからのホールド・再開・リサイクルの指令にはなお応じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/606） |
| EV-07 | T-6.6秒 | SSME 始動 | IF-ORB-06 開始、IF-ORB-15 開始 | T-6.6 秒に GPC がエンジン始動を指令し、各エンジンの主燃料弁が開く。主燃料弁の開から MECO まで、液体水素が外部タンクから流れる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/606） |
| EV-08 | T-0 | SRB 点火・離昇 | IF-SYS-09 終了、IF-ORB-29 終了、IF-ORB-32 終了、IF-ORB-33 終了、IF-ORB-17 終了、IF-SYS-10 終了、IF-ORB-26 指令・切替、IF-ORB-21 開始、IF-ORB-22 開始 | 3基の SSME が T-3 秒までに定格推力の 90% に達すると、T-0 で GPC が SRB 点火、ホールドダウン解放、T-0 アンビリカル切離しの火工品制御器の点火を指令する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/606）T-0 から、SSME のジンバルアクチュエータは点火前の固定位置から中立位置に戻り、以後は推力方向制御のために動く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/607）固体ロケットモータの点火指令は、オービタのコンピュータから MEC を通じて各 SRB の S&A 装置の NSI 起爆器へ送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/74） |
| EV-09 | MET 0:30〜1:05 | スロットルバケット・最大動圧 | — | 動圧の上昇に合わせて GPC はエンジンを通常 72% に絞り、最大動圧の領域での構造荷重を抑える。この推力の谷は通常 MET 約30〜65秒である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/607）最大動圧は通常、離昇の30〜60秒後に達する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/32） |
| EV-10 | MET 約2:00 | SRB 分離 | IF-SYS-02 終了、IF-ORB-18 終了、IF-ORB-22 終了、IF-ORB-26 指令・切替、IF-ORB-28 終了、IF-ORB-03 指令・切替 | 両 SRB の室圧が 50 psi を下回ると SRB 分離が始まり、分離の間は前方 RCS の上向きジェット3基が操縦室の窓を破片から守るために噴射する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/823）オービタの SRB 分離シーケンスが出す分離指令が各ボルトの NSI 起爆器を作動させ、分離モータを点火する。上部ストラットは SRB と外部タンク・オービタの間のアンビリカルも通している。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/77）SRB 分離でフラッシュエバポレータ（FES）が BFS から GPC ON 指令を受け、能動冷却を始める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405） |
| EV-11 | MET 約7:30 | 3g 制限・TDRS へ切替 | IF-ORB-16 指令・切替 | MET 約7分30秒から、機体の加速度を 3g 以下に保つためにエンジンを絞る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/608）S帯 PM 通信は、BFS の保存プログラム指令で STDN から TDRS のモードに切り替わる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/824） |
| EV-12 | MET 約8:30 | MECO | IF-ORB-06 終了、IF-ORB-15 終了、IF-ORB-21 終了 | GPC は通常、機体が所定の速度に達すると MECO を指令する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/608）MECO の速度は約 25,820 fps である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/825） |
| EV-13 | MECO 後 | ET 分離 | IF-ORB-36 終了、IF-ORB-27 終了、IF-ORB-25 指令・切替、IF-ORB-03 指令・切替 | オービタの GPC が外部タンク分離を指令すると、アンビリカル板を結合するボルトが火工品で切断される。外部タンクの2本の電気アンビリカルは、オービタからタンクと SRB への電力と、SRB・タンクからの情報を通している。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/70）ET 分離では -Z 方向の並進を行い、その完了で GNC はメジャーモード 104 に遷移する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/825）前方・後方の RCS ジェットは、分離時にオービタを外部タンクから遠ざける並進と姿勢制御を行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/32） |
| EV-14 | MECO+2分 | MPS 推進薬の投棄 | — | 直接投入では、MECO の2分後に MPS 推進薬の投棄が自動で始まる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/825） |
| EV-15 | MET 約12:55 | APU 停止・ET 扉閉 | IF-ORB-07 終了、IF-ORB-08 終了 | MPS の投棄が終わると油圧の MPS/TVC 隔離弁を閉じ、MCC と確認して APU を停止する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/826）操縦手は MPS エンジンの電源を切って GH2 を不活性化し、ET アンビリカル扉を閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/826） |
| EV-16 | OMS-2 | OMS-2 燃焼（上昇の終了） | IF-ORB-04 指令・切替 | OMS-2 燃焼は、160 n.mi. の円軌道の場合で約2分である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/827）A1-104 では OMS-2 燃焼の終了で上昇フェーズが終わり、軌道フェーズが始まる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=468） |

## 6. サブシステムの稼働

オービタの16サブシステムと外部要素（外部タンク、SRB、追跡・通信網、打上げ処理システム、ミッション管制センター）の、フェーズとアボートモードごとの稼働・モードを示す。図39 の各セルはこの表の行（ACT-要素-番号）を開く。状態の区分は稼働、切替・事象、待機・準備、停止、該当なしの5つである。

| ID | 要素 | フェーズ・アボート | 状態（区分） | 根拠 |
|---|---|---|---|---|
| ACT-CT-01 | 通信・追跡（C&T） | 打上げ前 | 通信点検（UHF・ICOM）（待機・準備） | 打上げ前、支援員が通信点検を行い、UHF の保護回線とヘッドセットのインタフェース装置、機内通話回線 A・B を確かめる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/821）機内通話（ICOM）回線は T-0 アンビリカルを通る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/985） |
| ACT-CT-02 | 通信・追跡（C&T） | 第1段・第2段・軌道投入 | S帯 PM（STDN→TDRS）（稼働） | 上昇中の S帯 PM 通信は、MET 約7分30秒に BFS の保存プログラム指令で STDN から TDRS のモードに切り替わる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/824） |
| ACT-CT-03 | 通信・追跡（C&T） | 軌道 | S帯・Ku帯（TDRS）（稼働） | 軌道投入後に S帯を TDRSS の高レートに設定し、Ku帯アンテナを展開して起動する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/828）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/829） |
| ACT-CT-04 | 通信・追跡（C&T） | EVA | S帯・Ku帯＋UHF（EVA）（稼働） | EVA 通信系は、オービタの UHF 系、EMU 無線、EMU 電気ハーネス、通信キャリア組立、生体センサなどから成る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/450） |
| ACT-CT-05 | 通信・追跡（C&T） | 離脱準備 | Ku帯アンテナ収納（切替・事象） | 離脱準備では TIG の3時間48分前に Ku帯アンテナを収納する（前夜に収納済みでなければ）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/841） |
| ACT-CT-06 | 通信・追跡（C&T） | 離脱〜突入・突入・滑空・進入・着陸 | S帯（冗長構成）（稼働） | 再突入のスイッチ構成では、通信パネルを冗長度が最大になるように構成する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/842） |
| ACT-CT-07 | 通信・追跡（C&T） | 着陸後 | MCC と交信（稼働） | 機体が停止すると、機長は MCC に「wheels stop」を報告する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/848） |
| ACT-CT-08 | 通信・追跡（C&T） | ターンアラウンド | 停止（地上処理）（停止） | 乗員の退出後は地上員がオービタの電源を切り、機体は滑走路からオービタ整備施設（OPF）へ移る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/36） |
| ACT-CT-09 | 通信・追跡（C&T） | RTLS・TAL・AOA・ATO | 上昇・再突入と同じ（MCC の指示）（稼働） | 上昇中、乗員は MCC の音声で現在のアボート能力を把握し、通信を失った場合は NO COMM MODE BOUNDARIES のカードを使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/855） |
| ACT-DPS-01 | データ処理系（DPS） | 打上げ前 | OPS 1 をロード（PASS・BFS）（切替・事象） | L-1:00 に PASS の OPS 1 のロードを始め、L-58:30 に BFS を OPS 1 に遷移させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/822） |
| ACT-DPS-02 | データ処理系（DPS） | 第1段・第2段・軌道投入 | OPS 1（MM 102〜106）（稼働） | 上昇中の GNC は、離昇から SRB 分離までが MM 102、SRB 分離から ET 分離までが MM 103、その後 OMS-2 の終了までが MM 104〜106 である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/246） |
| ACT-DPS-03 | データ処理系（DPS） | 軌道・EVA | GNC OPS 2・SM（GPC 1・2・4）（稼働） | 軌道では GNC OPS 2 を GPC 1・2 に、SM ソフトウェアを GPC 4 に読み込み、GPC 3 は待機、GPC 5 は BFS のまま停止させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/827） |
| ACT-DPS-04 | データ処理系（DPS） | 離脱準備 | OPS 3 へ遷移（切替・事象） | 離脱準備では GPC 1〜4 を PASS OPS 3 に、GPC 5 を BFS OPS 3 に構成する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/842） |
| ACT-DPS-05 | データ処理系（DPS） | 離脱〜突入・突入・滑空・進入・着陸 | OPS 3（MM 302〜305）（稼働） | 離脱噴射の後は OPS 303 に進み、EI の5分前に OPS 304、TAEM で OPS 305 に遷移する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/844）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/845）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/846） |
| ACT-DPS-06 | データ処理系（DPS） | 着陸後 | OPS 9（MM 901）（切替・事象） | 着陸後、MCC の指示で DPS を GNC OPS 901 に遷移させ、GPC 2〜4 を止めてストリングを GPC 1 に割り当て直す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/849） |
| ACT-DPS-07 | データ処理系（DPS） | ターンアラウンド | 停止（地上処理）（停止） | 乗員の退出後は地上員がオービタの電源を切り、機体は滑走路からオービタ整備施設（OPF）へ移る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/36） |
| ACT-DPS-08 | データ処理系（DPS） | RTLS | OPS 6（MM 601〜603）（切替・事象） | 打上げ時の GNC のメモリ構成1は OPS 1 と OPS 6（RTLS）の両方を持ち、RTLS の選択で GNC ソフトウェアが RTLS に切り替わる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/245）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/861） |
| ACT-DPS-09 | データ処理系（DPS） | TAL | OPS 1→MECO後に OPS 3（切替・事象） | TAL は MECO と ET 分離の後に GNC OPS 3 への遷移を要し、その時間は約3分しかない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/871） |
| ACT-DPS-10 | データ処理系（DPS） | AOA | OPS 1→OPS 3（切替・事象） | AOA では離脱の目標を OPS 1 で呼び出し、OPS 3 への遷移に持ち越す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/875） |
| ACT-DPS-11 | データ処理系（DPS） | ATO | 通常の上昇と同じ（稼働） | ATO の動力飛行の手順は、MECO 前の OMS 投棄を除けば通常の上昇チェックリストの手順である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/877） |
| ACT-GNC-01 | 誘導・航法・制御（GN&C） | 打上げ前 | 航法援助の起動（待機・準備） | L-5:30 の支援員チェックリストには、通信点検、LiOH キャニスタの取付け、航法援助の起動などが含まれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/821） |
| ACT-GNC-02 | 誘導・航法・制御（GN&C） | 第1段・第2段 | 上昇誘導・ATVC（稼働） | 速度 127 fps 以上で機体はロール・ヨー・ピッチして上昇姿勢をとる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/823）ATVC の指令は GPC の飛行制御系が生成した位置指令に始まり、SSME と SRB のサーボアクチュエータでノズルを首振りさせて終わる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/514） |
| ACT-GNC-03 | 誘導・航法・制御（GN&C） | 軌道投入 | OMS 燃焼の誘導（稼働） | OMS-2 では点火前に姿勢誤差を直す必要は無く、OMS エンジンの推力方向制御が機体を正しい姿勢へ導く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/826） |
| ACT-GNC-04 | 誘導・航法・制御（GN&C） | 軌道・EVA | 姿勢制御・IMU アライン（稼働） | 軌道ではスタートラッカの電源を入れて扉を開き、星のデータで IMU のアラインを行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/829）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/831） |
| ACT-GNC-05 | 誘導・航法・制御（GN&C） | 離脱準備 | FCS・航法援助の起動（切替・事象） | TIG の3時間15分前に、再突入に向けて FCS・DDU・航法援助の電源を入れる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/841） |
| ACT-GNC-06 | 誘導・航法・制御（GN&C） | 離脱〜突入 | 離脱噴射の誘導（稼働） | 離脱噴射では、機長と操縦手が OMS MNVR EXEC の表示で速度増分・残り時間・近地点高度を監視する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/844） |
| ACT-GNC-07 | 誘導・航法・制御（GN&C） | 突入・滑空 | 再突入誘導・舵面制御（稼働） | 動圧 2.0 psf で空力舵面の制御が始まり、約 8 psf で閉ループ誘導が始まる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/845） |
| ACT-GNC-08 | 誘導・航法・制御（GN&C） | 進入・着陸 | 進入・着陸誘導・MLS（稼働） | 高度 10,000 ft で乗員は進入・着陸誘導に入ったことを確かめ、それ以前に MLS を捕捉する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/847） |
| ACT-GNC-09 | 誘導・航法・制御（GN&C） | 着陸後 | 停止（NWS・操縦装置）（停止） | 着陸後、機長は前輪操向・飛行操縦装置・HUD の電源を切る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/849） |
| ACT-GNC-10 | 誘導・航法・制御（GN&C） | ターンアラウンド | 停止（地上処理）（停止） | 乗員の退出後は地上員がオービタの電源を切り、機体は滑走路からオービタ整備施設（OPF）へ移る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/36） |
| ACT-GNC-11 | 誘導・航法・制御（GN&C） | RTLS | RTLS 誘導（PPA）（切替・事象） | RTLS では機体が来た道を戻るために向きを反転する必要があり、この旋回を動力ピッチアラウンド（PPA）という。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/861） |
| ACT-GNC-12 | 誘導・航法・制御（GN&C） | TAL | TAL 誘導（着陸地点へ）（切替・事象） | アボートの選択で、TAL の誘導は選んだ着陸地点の面へ機体を向け始める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/869） |
| ACT-GNC-13 | 誘導・航法・制御（GN&C） | AOA | AOA 目標（OMS-1/2）（切替・事象） | OMS-1 の AOA は、MECO 後に乗員が OMS MNVR の表示で AOA の目標を選んで決める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/873） |
| ACT-GNC-14 | 誘導・航法・制御（GN&C） | ATO | ATO 目標・可変 I-Y（切替・事象） | MECO 前の ATO の選択は OMS 投棄を行い、アボート用の MECO 目標に切り替え、可変 I-Y 誘導を有効にすることがある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/877） |
| ACT-RCS-01 | 姿勢制御系（RCS） | 打上げ前 | 待機（クロスフィード弁）（待機・準備） | L-25 分ごろ、OMS/RCS のクロスフィード弁を打上げ処理システムが打上げ用に構成する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/822） |
| ACT-RCS-02 | 姿勢制御系（RCS） | 第1段 | 待機（姿勢は TVC）（待機・準備） | 誘導系の指令は ATVC ドライバへ送られ、ドライバは指令に比例した信号を主エンジンと SRB の各サーボアクチュエータへ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/76） |
| ACT-RCS-03 | 姿勢制御系（RCS） | 第2段 | SRB 分離時に前方ジェット噴射（切替・事象） | SRB 分離の間、前方 RCS の上向きジェット3基が操縦室の窓を SRB の破片から守るために噴射する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/823） |
| ACT-RCS-04 | 姿勢制御系（RCS） | 軌道投入 | ET 分離の並進・姿勢制御（稼働） | 前方・後方の RCS ジェットは、姿勢制御、ET 分離時の並進、OMS 燃焼姿勢への運動を行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/32） |
| ACT-RCS-05 | 姿勢制御系（RCS） | 軌道・EVA・離脱準備 | 姿勢制御・並進（バーニア）（稼働） | 軌道では前方・後方の RCS ジェットが姿勢制御と小さな並進運動を行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/32）MCC の GO の後、機長はバーニアジェットを起動し、DAP は通常 A/AUTO/VERN を選ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/829） |
| ACT-RCS-06 | 姿勢制御系（RCS） | 離脱〜突入 | 姿勢制御・前方 RCS 投棄（稼働） | 離脱噴射の後は RCS で機首を前に向け、EI の18分前に前方 RCS の推進薬を投棄する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/33）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/844） |
| ACT-RCS-07 | 姿勢制御系（RCS） | 突入・滑空 | 後方 RCS（ロール→ピッチ停止）（稼働） | 再突入では後方 RCS だけを使い、動圧 10 psf でロール、40 psf でピッチの機能を止める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/34） |
| ACT-RCS-08 | 姿勢制御系（RCS） | 進入・着陸 | 停止（Mach 1 で全停止）（停止） | Mach 1 ですべての RCS ジェットの動作を止め、以後は空力舵面だけで機体を操る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/34） |
| ACT-RCS-09 | 姿勢制御系（RCS） | 着陸後 | 安全化（停止） | 着陸後、機長と操縦手は RCS・OMS を安全化する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/849） |
| ACT-RCS-10 | 姿勢制御系（RCS） | ターンアラウンド | 停止（地上処理）（停止） | 乗員の退出後は地上員がオービタの電源を切り、機体は滑走路からオービタ整備施設（OPF）へ移る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/36） |
| ACT-RCS-11 | 姿勢制御系（RCS） | RTLS・TAL | OMS 推進薬の投棄（連結）（切替・事象） | 連結投棄では GPC が弁を切り替え、OMS 推進薬を RCS ジェットで燃やす。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/864）TAL では、OMS 推進薬を OMS エンジンと OMS タンクに連結した後方 RCS 24 基から投棄するのが通常である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/869） |
| ACT-RCS-12 | 姿勢制御系（RCS） | AOA・ATO | 通常と同じ（稼働） | AOA の再突入と着陸は、通常の再突入・着陸と同様である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/876）ATO の動力飛行の手順は、MECO 前の OMS 投棄を除けば通常の上昇チェックリストの手順である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/877） |
| ACT-EPS-01 | 電力系（EPS） | 打上げ前 | 地上電源＋燃料電池（T-50秒〜燃料電池）（切替・事象） | 打上げの50秒前までは、地上電源と機上の燃料電池が電力を供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/311）T-8 分に操縦手が必須母線を燃料電池に接続する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/822） |
| ACT-EPS-02 | 電力系（EPS） | 第1段・第2段・軌道投入・軌道・離脱準備・EVA・離脱〜突入・突入・滑空・進入・着陸・RTLS・TAL・AOA・ATO | 燃料電池3基（稼働） | EPS は飛行のすべてのフェーズで動作し、3基の燃料電池が打上げの50秒前から着陸の滑走終了まで機体の 28 V 直流電力のすべてを発電する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/311） |
| ACT-EPS-03 | 電力系（EPS） | 着陸後 | 燃料電池（稼働継続）（稼働） | 着陸後の点検の間も燃料電池は稼働を続ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/36） |
| ACT-EPS-04 | 電力系（EPS） | ターンアラウンド | 停止（地上員が電源断）（停止） | 乗員の退出後は地上員がオービタの電源を切り、機体は滑走路からオービタ整備施設（OPF）へ移る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/36） |
| ACT-ECLSS-01 | 環境制御・生命維持（ECLSS） | 打上げ前 | 地上冷却・キャビン気密点検（待機・準備） | 打上げ前、フレオン冷却ループは地上支援設備で冷やす。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405）ハッチを閉じた後、キャビンを 16.7 psi に加圧してリーク点検を行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/821） |
| ACT-ECLSS-02 | 環境制御・生命維持（ECLSS） | 第1段 | 能動冷却なし（熱慣性）（待機・準備） | 離昇から SRB 分離のころまでは能動的な冷却手段が無く、フレオンループの熱慣性で温度上昇を抑える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405） |
| ACT-ECLSS-03 | 環境制御・生命維持（ECLSS） | 第2段・軌道投入 | FES で冷却（稼働） | SRB 分離で FES が BFS から GPC ON 指令を受けて能動冷却を始め、上昇から軌道投入後の作業まで主な冷却源となる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405） |
| ACT-ECLSS-04 | 環境制御・生命維持（ECLSS） | 軌道 | 放熱器で冷却（14.7 psia）（稼働） | 軌道投入後の作業で放熱器に冷却材を流し、ペイロードベイドアを開くと、放熱器が主な冷却源になる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405）圧力制御系は通常、乗員室を 14.7 ± 0.2 psia に与圧する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/360） |
| ACT-ECLSS-05 | 環境制御・生命維持（ECLSS） | EVA | キャビン 10.2 psia・エアロック減圧（切替・事象） | EVA の前には、事前酸素呼吸を楽にするためにキャビンを 10.2 psia に減圧できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/359）エアロック減圧弁は、キャビンを 10.2 psia に減圧するときと、EVA のためにエアロックを減圧するときに使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369） |
| ACT-ECLSS-06 | 環境制御・生命維持（ECLSS） | 離脱準備 | 放熱器のコールドソーク（切替・事象） | 離脱準備では、再突入で使うために放熱器をコールドソークする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405） |
| ACT-ECLSS-07 | 環境制御・生命維持（ECLSS） | 離脱〜突入 | FES で冷却（稼働） | コールドソークの後は放熱器をバイパスし、FES が離脱から EI を経て V=12k（約 175,000 ft）まで冷却する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405） |
| ACT-ECLSS-08 | 環境制御・生命維持（ECLSS） | 突入・滑空・進入・着陸 | 放熱器コールドソーク（V=12k〜）（稼働） | V=12k で放熱器の制御器を起動し、蓄えた冷たいフレオンを使う。放熱器のコールドソークは通常、滑走終了までの主な冷却源となる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405） |
| ACT-ECLSS-09 | 環境制御・生命維持（ECLSS） | 着陸後 | NH3 ボイラ→地上冷却（切替・事象） | コールドソークを使い切るとアンモニアボイラが主な冷却源となり、地上支援設備の冷却車の接続が終わると地上冷却に切り替える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405）着陸後の早い段階で、機長が放熱器の再構成とアンモニアボイラの起動を行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/849） |
| ACT-ECLSS-10 | 環境制御・生命維持（ECLSS） | ターンアラウンド | 停止（地上処理）（停止） | 乗員の退出後は地上員がオービタの電源を切り、機体は滑走路からオービタ整備施設（OPF）へ移る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/36） |
| ACT-ECLSS-11 | 環境制御・生命維持（ECLSS） | RTLS | FES→NH3 ボイラ（ET 分離から）（切替・事象） | RTLS では、アンモニアボイラが ET 分離（MM 602）で BFS から GPC ON 指令を受け、着陸まで冷却する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405） |
| ACT-ECLSS-12 | 環境制御・生命維持（ECLSS） | TAL・AOA | FES→NH3 ボイラ（MM 304・120,000 ft）（切替・事象） | TAL・AOA では、アンモニアボイラが MM 304・高度 120,000 ft で BFS から GPC ON 指令を受ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405） |
| ACT-ECLSS-13 | 環境制御・生命維持（ECLSS） | ATO | 通常の上昇と同じ（稼働） | ATO の動力飛行の手順は、MECO 前の OMS 投棄を除けば通常の上昇チェックリストの手順である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/877） |
| ACT-APU-01 | 補助動力・油圧（APU/HYD） | 打上げ前 | T-5分に3基起動（切替・事象） | T-5 分に操縦手が APU を起動して圧力を確かめる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/822） |
| ACT-APU-02 | 補助動力・油圧（APU/HYD） | 第1段・第2段 | 3基稼働（SSME・舵面の油圧）（稼働） | APU や油圧の故障が破局につながらない限り、主エンジンへの油圧を途切れさせないため、系は MECO の後まで止めない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/884） |
| ACT-APU-03 | 補助動力・油圧（APU/HYD） | 軌道投入 | MPS 投棄の後に停止（切替・事象） | MPS 投棄の後、油圧の MPS/TVC 隔離弁を閉じ、MCC と確認して APU を停止する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/826） |
| ACT-APU-04 | 補助動力・油圧（APU/HYD） | 軌道・EVA | 停止（循環ポンプで保温）（停止） | 軌道では油圧の熱調節を有効にし、圧力や温度が下がると GPC が油圧の循環ポンプを動かす。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/829）最後の終日の FCS 点検では、MCC が指定した APU を1基使う（循環ポンプで代えることもある）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/838） |
| ACT-APU-05 | 補助動力・油圧（APU/HYD） | 離脱準備 | TIG-5分に1基起動（切替・事象） | TIG の5分前に操縦手が APU を1基起動する。離脱噴射の前に1基が低圧で動いていなければならない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/843） |
| ACT-APU-06 | 補助動力・油圧（APU/HYD） | 離脱〜突入 | 1基→EI-13分に3基（切替・事象） | EI の13分前に残りの2基を起動し、3基とも通常圧力に切り替えて SSME の油圧再加圧に備える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/844） |
| ACT-APU-07 | 補助動力・油圧（APU/HYD） | 突入・滑空・進入・着陸 | 3基稼働（舵面・脚・ブレーキ）（稼働） | Mach 2.6 で操縦手は、それまでの故障を考えて APU を着陸に最適な構成にする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/846）脚下げを指令すると、油圧系1の圧力で各脚のアップロックフックが外れる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/544） |
| ACT-APU-08 | 補助動力・油圧（APU/HYD） | 着陸後 | 主エンジン再配置の後に停止（切替・事象） | 着陸後、主エンジンの再配置が終わると APU・油圧を停止する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/849） |
| ACT-APU-09 | 補助動力・油圧（APU/HYD） | ターンアラウンド | 停止（地上処理）（停止） | 乗員の退出後は地上員がオービタの電源を切り、機体は滑走路からオービタ整備施設（OPF）へ移る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/36） |
| ACT-APU-10 | 補助動力・油圧（APU/HYD） | RTLS・TAL | 3基稼働（着陸まで）（稼働） | APU・油圧の系は MECO の後まで止めない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/884）全油圧の喪失が迫る場合は、地上までの時間が最も短い経路を選ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/858） |
| ACT-APU-11 | 補助動力・油圧（APU/HYD） | AOA | 低圧で運転を継続（稼働） | OMS-1 の後に AOA を選ぶと、APU を停止せずに油圧系を減圧し、停止と再起動を避ける。低圧で運転すると再突入用の燃料を節約できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/873） |
| ACT-APU-12 | 補助動力・油圧（APU/HYD） | ATO | 通常と同じ（MECO 後に停止）（稼働） | ATO の動力飛行の手順は、MECO 前の OMS 投棄を除けば通常の上昇チェックリストの手順である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/877） |
| ACT-OMS-01 | 軌道制御系（OMS） | 打上げ前 | GN2 加圧・待機（待機・準備） | L-1:20 に機長が OMS エンジンのスイッチを ARM/PRESS にして GN2 で加圧する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/822） |
| ACT-OMS-02 | 軌道制御系（OMS） | 第1段・第2段 | 待機（OMS アシストは燃焼）（待機・準備） | 性能の厳しい一部のミッションでは、通常の上昇中に OMS アシスト燃焼を行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/824） |
| ACT-OMS-03 | 軌道制御系（OMS） | 軌道投入 | OMS-1（必要時）・OMS-2（稼働） | 直接投入では OMS-2 燃焼で軌道を安定させ、性能が大きく不足した場合は OMS-1 燃焼で安全な高度へ上げてから OMS-2 を行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/32） |
| ACT-OMS-04 | 軌道制御系（OMS） | 軌道 | 軌道変換・ランデブ（稼働） | OMS エンジンは、ISS とのランデブのための軌道変換などに使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/32） |
| ACT-OMS-05 | 軌道制御系（OMS） | 離脱準備・EVA | 待機（ヒータで保温）（待機・準備） | 軌道投入後に OMS・RCS のヒータを起動し、55〜90°F に保つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/828） |
| ACT-OMS-06 | 軌道制御系（OMS） | 離脱〜突入 | 離脱噴射（2〜3分）（稼働） | 離脱噴射では2基の OMS エンジンで軌道を下げる。燃焼時間は通常2〜3分である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/33）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/844） |
| ACT-OMS-07 | 軌道制御系（OMS） | 突入・滑空・進入・着陸 | 停止（ジンバルを再突入位置へ）（停止） | 離脱噴射の後、機長はジンバルが再突入の位置へ動いたことを確かめて OMS ジンバルの電源を切る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/844） |
| ACT-OMS-08 | 軌道制御系（OMS） | 着陸後 | 安全化（停止） | 着陸後、機長と操縦手は RCS・OMS を安全化する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/849） |
| ACT-OMS-09 | 軌道制御系（OMS） | ターンアラウンド | 停止（地上処理）（停止） | 乗員の退出後は地上員がオービタの電源を切り、機体は滑走路からオービタ整備施設（OPF）へ移る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/36） |
| ACT-OMS-10 | 軌道制御系（OMS） | RTLS | 推進薬の投棄（切替・事象） | 打上げ時の OMS 推進薬の量はミッションごとに決まり、RTLS では OMS 推進薬を投棄する。連結投棄では OMS 推進薬を RCS ジェットでも燃やす。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/864） |
| ACT-OMS-11 | 軌道制御系（OMS） | TAL | 推進薬の投棄（OMS＋後方 RCS）（切替・事象） | TAL では OMS 推進薬を OMS エンジンと後方 RCS 24 基から投棄する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/869） |
| ACT-OMS-12 | 軌道制御系（OMS） | AOA | OMS-1・離脱噴射（切替・事象） | AOA では1回目の OMS 燃焼で MECO 後の軌道を調整し、2回目の燃焼で離脱する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/873） |
| ACT-OMS-13 | 軌道制御系（OMS） | ATO | MECO 前の投棄・OMS-1/2（切替・事象） | ATO では MECO 前に OMS 推進薬を投棄して重量を減らし推力を加え、2回の OMS 燃焼で約 105 n.mi. の円軌道に入る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/877） |
| ACT-MPS-01 | 主推進系（MPS） | 打上げ前 | 推進薬充填・T-6.6秒に SSME 始動（切替・事象） | T-6.6 秒に GPC がエンジン始動を指令し、各エンジンの主燃料弁が開く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/606） |
| ACT-MPS-02 | 主推進系（MPS） | 第1段 | SSME×3（スロットルバケット）（稼働） | 最大動圧の領域では GPC がエンジンを通常 72% に絞り、MET 約65秒で通常 104% に戻す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/607） |
| ACT-MPS-03 | 主推進系（MPS） | 第2段 | SSME×3（3g 制限→MECO）（稼働） | MET 約7分30秒から加速度を 3g 以下に保つようにエンジンを絞り、所定の速度で GPC が MECO を指令する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/608） |
| ACT-MPS-04 | 主推進系（MPS） | 軌道投入 | 推進薬の投棄・GH2 不活性化（切替・事象） | 直接投入では MECO の2分後に MPS 推進薬の投棄が自動で始まる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/825）操縦手は MPS エンジンの電源を切って GH2 を不活性化する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/826） |
| ACT-MPS-05 | 主推進系（MPS） | 軌道・EVA・離脱準備 | 停止（停止） | 軌道投入後、上昇用の推力方向制御、エンジンインタフェース装置、主エンジン用の MEC を電源から切り離す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/828） |
| ACT-MPS-06 | 主推進系（MPS） | 離脱〜突入・突入・滑空・進入・着陸 | 停止（ノズルを収納位置へ）（停止） | EI の13分前に主エンジンの油圧系を再加圧し、ノズルが正しく収納されていることを確かめる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/844）Mach 8 でドラッグシュートの展開に備えて SSME を再配置する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/846） |
| ACT-MPS-07 | 主推進系（MPS） | 着陸後 | 主エンジンの再配置（切替・事象） | 着陸後、操縦手はボディフラップを TRAIL にし、OPS 9 の表示で主エンジンを再配置する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/849） |
| ACT-MPS-08 | 主推進系（MPS） | ターンアラウンド | 停止（地上処理）（停止） | 乗員の退出後は地上員がオービタの電源を切り、機体は滑走路からオービタ整備施設（OPF）へ移る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/36） |
| ACT-MPS-09 | 主推進系（MPS） | RTLS | PPA→MECO・MM 602 で投棄（切替・事象） | RTLS は機体が滑走路まで滑空できる速度と高度でエンジンを止める。MPS の投棄は MM 602 への遷移と同時に始まる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/861）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/866） |
| ACT-MPS-10 | 主推進系（MPS） | TAL | MECO・MM 304 で投棄（切替・事象） | TAL では RTLS と同様の MPS 投棄が MM 304 で自動で始まる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/871） |
| ACT-MPS-11 | 主推進系（MPS） | AOA・ATO | SSME（停止があれば2基）（稼働） | エンジンの推力の喪失による性能の損失は、故障の時刻に大きく依存する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/855）PRESS TO ATO は、SSME 2基で設計上の速度不足以内の MECO を達成できる最も早い速度である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/856） |
| ACT-TPS-01 | 熱防護系（TPS） | 打上げ前・第1段・第2段・軌道投入・軌道・離脱準備・EVA・着陸後・ターンアラウンド・ATO | 受動（外板を保護）（待機・準備） | TPS はオービタの外部構造外板に施工した各種材料から成り、主に再突入時に外板を許容温度内に保つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/65） |
| ACT-TPS-02 | 熱防護系（TPS） | 離脱〜突入・突入・滑空・進入・着陸・AOA | 受動（再突入の加熱）（稼働） | EI の約6分後から表面温度が最大になる領域（Mach 24〜19）に入る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/845） |
| ACT-TPS-03 | 熱防護系（TPS） | RTLS | 受動（加熱は通常より小さい）（稼働） | RTLS の再突入の熱負荷は、ほかのアボートや通常の着陸より小さい。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/858） |
| ACT-TPS-04 | 熱防護系（TPS） | TAL | 受動（加熱が厳しい）（稼働） | TAL の再突入軌道は熱的に厳しい。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/858）TAL の引起こしでは、主翼前縁の高温を避けるために初期迎角を 43° とする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/871） |
| ACT-STR-01 | 構造（STR） | 打上げ前 | 受動（垂直姿勢でET に結合）（待機・準備） | 打上げ構成では、オービタと2本の SRB が発射台の上で外部タンクに機首を上にして結合されている。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/32） |
| ACT-STR-02 | 構造（STR） | 第1段 | 最大動圧（MET 30〜60秒）（稼働） | 最大動圧は上昇の早い段階、通常は離昇の30〜60秒後に達する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/32） |
| ACT-STR-03 | 構造（STR） | 第2段・軌道投入・離脱〜突入・突入・滑空・進入・着陸 | 加速度 3g 以下（稼働） | 乗員室は普段着で過ごせる環境で、加速度は 3g を超えない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/31） |
| ACT-STR-04 | 構造（STR） | 軌道・離脱準備・EVA | 受動（与圧容器）（待機・準備） | 乗員室は 16 psia で設計されている。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/54） |
| ACT-STR-05 | 構造（STR） | 着陸後 | 地上のパージで冷却（切替・事象） | 着陸後は右側の T-0 アンビリカルに空調パージ装置をつなぎ、後部胴体・ペイロードベイ・前部胴体・主翼・垂直尾翼・OMS/RCS ポッドに冷気を送って再突入の熱を逃がす。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/36） |
| ACT-STR-06 | 構造（STR） | ターンアラウンド | 停止（地上処理）（停止） | 乗員の退出後は地上員がオービタの電源を切り、機体は滑走路からオービタ整備施設（OPF）へ移る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/36） |
| ACT-STR-07 | 構造（STR） | RTLS・TAL・AOA・ATO | 上昇・再突入と同じ（3g 以下）（稼働） | 加速度は 3g を超えない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/31） |
| ACT-MECH-01 | 機械系（MECH） | 打上げ前 | ベント扉（パージ位置）（待機・準備） | ベント扉の一部には中間位置があり、非与圧区画を乾燥空気または窒素でパージできる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/621） |
| ACT-MECH-02 | 機械系（MECH） | 第1段・第2段 | ベント扉（自動シーケンス）（稼働） | ベント扉は、マスタタイミングユニット、メジャーモードの遷移、速度、DPS の項目入力で起動する GNC ソフトウェアのシーケンスで制御される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/621） |
| ACT-MECH-03 | 機械系（MECH） | 軌道投入 | ET アンビリカル扉を閉（切替・事象） | 操縦手は ET アンビリカル扉を閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/826） |
| ACT-MECH-04 | 機械系（MECH） | 軌道・EVA | PLBD 開（放熱器）（稼働） | MET 1:28 ごろ PLBD を自動で開き、各扉は約63秒で開く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/829） |
| ACT-MECH-05 | 機械系（MECH） | 離脱準備 | PLBD 閉・ベント扉閉（切替・事象） | TIG の2時間40分前に PLBD を閉じ、25分前に操縦手がベント扉を閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/841）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/843） |
| ACT-MECH-06 | 機械系（MECH） | 離脱〜突入 | ベント扉閉（停止） | 離脱噴射の前に、操縦手が GNC 51 の表示でベント扉を閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/843） |
| ACT-MECH-07 | 機械系（MECH） | 突入・滑空 | ベント扉開（Mach 2.4）（切替・事象） | Mach 2.4 で前部・後部・中部の区画のベントが開く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/846） |
| ACT-MECH-08 | 機械系（MECH） | 進入・着陸 | 脚下げ・ブレーキ・ドラッグシュート（稼働） | 高度 300 ft で操縦手が着陸装置を下げ、主脚接地の後にドラッグシュートを展開し、ブレーキを掛ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/847）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/848） |
| ACT-MECH-09 | 機械系（MECH） | 着陸後 | ET 扉開・脚とシュートの安全化（切替・事象） | 着陸後、ドラッグシュートと着陸装置を安全化し、MCC に知らせてから ET アンビリカル扉を開く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/849） |
| ACT-MECH-10 | 機械系（MECH） | ターンアラウンド | 停止（地上処理）（停止） | 乗員の退出後は地上員がオービタの電源を切り、機体は滑走路からオービタ整備施設（OPF）へ移る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/36） |
| ACT-MECH-11 | 機械系（MECH） | RTLS・TAL | ET 扉を閉（2母線故障時は RTLS）（切替・事象） | 主母線2系統の故障は ET 扉の閉鎖を妨げ、TAL の再突入は熱的に厳しいため、この場合は RTLS を優先する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/858） |
| ACT-MECH-12 | 機械系（MECH） | AOA・ATO | 通常と同じ（稼働） | AOA の再突入と着陸は、通常の再突入・着陸と同様である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/876）ATO の動力飛行の手順は、MECO 前の OMS 投棄を除けば通常の上昇チェックリストの手順である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/877） |
| ACT-CW-01 | 警報系（C/W） | 打上げ前 | 音量調整・メモリ消去（待機・準備） | 打上げ前、空地通信が C/W の音より大きく聞こえるように C/W の音量を調整する。L-17 分に操縦手が C/W のメモリスイッチで F7 のライトを消す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/821）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/822） |
| ACT-CW-02 | 警報系（C/W） | 第1段・第2段・軌道投入 | 上昇用の限界値で監視（稼働） | 軌道投入後に C/W 系を上昇用から軌道用の運用に再設定し、一部の限界値を変え、一部を抑止する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/830） |
| ACT-CW-03 | 警報系（C/W） | 軌道・EVA | 軌道用の限界値で監視（稼働） | 軌道投入後に C/W 系を上昇用から軌道用の運用に再設定する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/830） |
| ACT-CW-04 | 警報系（C/W） | 離脱準備 | 再突入用の設定（切替・事象） | 離脱準備では MPS のヘリウム系の圧力の C/W を有効にし、油圧系の低圧の C/W も有効にする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/842） |
| ACT-CW-05 | 警報系（C/W） | 離脱〜突入・突入・滑空・進入・着陸・着陸後 | 監視（稼働） | C/W 系は、APU、データ処理系、ECLSS、電力系、飛行制御系、誘導・航法、油圧、主推進系、RCS、OMS、ペイロードとインタフェースを持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/113） |
| ACT-CW-06 | 警報系（C/W） | ターンアラウンド | 停止（地上処理）（停止） | 乗員の退出後は地上員がオービタの電源を切り、機体は滑走路からオービタ整備施設（OPF）へ移る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/36） |
| ACT-CW-07 | 警報系（C/W） | RTLS・TAL・AOA・ATO | 監視（系統故障によるアボート）（稼働） | SYS FLIGHT RULES のカードは、重大な系統故障に対して RTLS・TAL を選ぶ規則をまとめたものである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/858） |
| ACT-CREW-01 | 乗員系・脱出系（CREW） | 打上げ前 | 搭乗・LES 着用（T-2分に O2）（切替・事象） | 乗員は L-2:45 にホワイトルームへ到着して搭乗し、T-2 分に全員が酸素の流れを始めてバイザーを閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/821）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/822） |
| ACT-CREW-02 | 乗員系・脱出系（CREW） | 第1段・第2段・軌道投入 | LES 着用・着座（稼働） | MET 1:37 に機長と操縦手が座席を離れ、全員が打上げ・再突入服（LES）を脱いで収納する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/829） |
| ACT-CREW-03 | 乗員系・脱出系（CREW） | 軌道 | LES 収納・ギャレー・WCS（稼働） | 軌道投入後にギャレーと廃棄物収集系（WCS）を構成して起動する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/828） |
| ACT-CREW-04 | 乗員系・脱出系（CREW） | EVA | 事前酸素呼吸・EMU 着用（切替・事象） | EVA の手順は、マスクによる事前酸素呼吸、キャビンの 10.2 psi への減圧、EMU の点検と着用、事前酸素呼吸、エアロックの減圧の順に進む。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/460） |
| ACT-CREW-05 | 乗員系・脱出系（CREW） | 離脱準備 | 座席取付け・LES着用・水分補給（切替・事象） | 離脱準備では専門家が座席を取り付け、機長と操縦手は TIG の1時間24分前に LES を着る。乗員は水分を補給して重力への再適応に備える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/841）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/842）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/843） |
| ACT-CREW-06 | 乗員系・脱出系（CREW） | 離脱〜突入・突入・滑空・進入・着陸 | LES 着用・着座（稼働） | TIG の59分前に機長と操縦手が着座し、高度 10,000 ft で LES のバイザーを下ろす（KSC の場合）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/843）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/847） |
| ACT-CREW-07 | 乗員系・脱出系（CREW） | 着陸後 | 健康確認・退出（切替・事象） | 着陸後、フライトサージャンが機内に入って健康を確認し、乗員は機外へ出る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/849） |
| ACT-CREW-08 | 乗員系・脱出系（CREW） | ターンアラウンド | 該当なし（退出済み）（該当なし） | 乗員は着陸後6〜9時間で通常ヒューストンへ戻る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/849） |
| ACT-CREW-09 | 乗員系・脱出系（CREW） | RTLS・TAL・AOA・ATO | 上昇時と同じ（LES 着用）（稼働） | T-2 分に全員が酸素の流れを始めてバイザーを閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/822） |
| ACT-PLS-01 | ペイロード支援（PDRS・ODS） | 打上げ前・第1段・第2段・軌道投入 | 収納（RMS 固定）（待機・準備） | RMS を搭載する場合、MET 2:35 ごろに起動を始め、MCIU に電源を入れ、肩部のブレースを外す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/831） |
| ACT-PLS-02 | ペイロード支援（PDRS・ODS） | 軌道 | RMS 起動・ドッキング系（稼働） | RMS はペイロード運用の必要に応じて展開する。ドッキングの前日にドッキング系を初期化・確認し、終わると電源を切る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/831）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/833） |
| ACT-PLS-03 | ペイロード支援（PDRS・ODS） | EVA | 外部エアロック（ODS）（稼働） | エアロックはミッドデッキの外、ペイロードベイにあり、オービタドッキング系の節で詳しく扱う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/359） |
| ACT-PLS-04 | ペイロード支援（PDRS・ODS） | 離脱準備・離脱〜突入・突入・滑空・進入・着陸・着陸後 | 収納（RMS を固定）（待機・準備） | PLBD を閉じる準備として、RMS のカメラを位置決めし、RMS のヒータを切る（RMS を搭載した場合）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/841） |
| ACT-PLS-05 | ペイロード支援（PDRS・ODS） | ターンアラウンド | 停止（地上処理）（停止） | 乗員の退出後は地上員がオービタの電源を切り、機体は滑走路からオービタ整備施設（OPF）へ移る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/36） |
| ACT-PLS-06 | ペイロード支援（PDRS・ODS） | RTLS・TAL・AOA | 収納（使用しない）（待機・準備） | RMS の起動は、軌道投入後の MET 2:35 ごろに始める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/831） |
| ACT-PLS-07 | ペイロード支援（PDRS・ODS） | ATO | 通常と同じ（軌道で使用）（稼働） | ATO の動力飛行の手順は、MECO 前の OMS 投棄を除けば通常の上昇チェックリストの手順である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/877） |
| ACT-EVA-01 | 船外活動（EVA/EMU） | 打上げ前・第1段・第2段・軌道投入・離脱準備・離脱〜突入・突入・滑空・進入・着陸・着陸後 | 収納（エアロックに EMU×2）（待機・準備） | 通常、2着の EMU をエアロックに収納する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/55） |
| ACT-EVA-02 | 船外活動（EVA/EMU） | 軌道 | EMU の点検・整備（待機・準備） | EVA の後は EMU の電池と水酸化リチウムカートリッジを交換または再充填し、次の EVA に向けて水を再充填する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/460） |
| ACT-EVA-03 | 船外活動（EVA/EMU） | EVA | EMU 稼働（最大7時間・2名）（稼働） | EMU は、脱出15分、有効作業6時間、進入15分、予備30分の、合計最大7時間の EVA に対応するよう設計されている。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/444）計画・計画外の EVA はすべて2名で行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/460） |
| ACT-EVA-04 | 船外活動（EVA/EMU） | ターンアラウンド | 停止（地上処理）（停止） | 乗員の退出後は地上員がオービタの電源を切り、機体は滑走路からオービタ整備施設（OPF）へ移る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/36） |
| ACT-EVA-05 | 船外活動（EVA/EMU） | RTLS・TAL・AOA・ATO | 収納（待機・準備） | 外部エアロックは、打上げと再突入の間に最大2着の EMU を収納する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/463） |
| ACT-ET-01 | 外部タンク（ET） | 打上げ前 | 推進薬充填・タンク加圧（切替・事象） | T-2 分55 秒に液体酸素タンク、T-1 分57 秒に液体水素タンクを、地上支援設備のヘリウムで加圧する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/606） |
| ACT-ET-02 | 外部タンク（ET） | 第1段・第2段 | SSME へ推進薬を供給（稼働） | 主燃料弁の開から MECO まで、液体水素は外部タンクとオービタの間の切離し弁を通って液体水素供給管のマニホールドへ流れる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/606） |
| ACT-ET-03 | 外部タンク（ET） | 軌道投入 | 分離・投棄（切替・事象） | MECO の後、外部タンクはオービタの指令で投棄され、弾道軌道で大気圏に入って崩壊する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/32） |
| ACT-ET-04 | 外部タンク（ET） | 軌道・離脱準備・EVA・離脱〜突入・突入・滑空・進入・着陸・着陸後・ターンアラウンド | 該当なし（分離済み）（該当なし） | 外部タンクは MECO の後に投棄される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/32） |
| ACT-ET-05 | 外部タンク（ET） | RTLS | 推進薬 2% 以下で分離（切替・事象） | RTLS で安全に分離するには、外部タンクの推進薬が 2% 以下でなければならない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/861） |
| ACT-ET-06 | 外部タンク（ET） | TAL・AOA・ATO | MECO 後に分離（切替・事象） | 外部タンクは MECO の後に投棄される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/32）TAL では、ET の加熱を抑え ET 分離時に正しい再突入姿勢をとるため、所定の速度でヘッドアップにロールする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/871） |
| ACT-SRB-01 | 固体ロケットブースタ（SRB×2） | 打上げ前 | ホールドダウン（T-0 に解放）（待機・準備） | 各 SRB は後部スカートで移動式発射台に4本のボルトで固定され、T-0 に GPC がホールドダウン解放の火工品を点火する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/32）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/606） |
| ACT-SRB-02 | 固体ロケットブースタ（SRB×2） | 第1段 | 燃焼（約2分）（稼働） | 約2分で2本の SRB は推進薬を使い切る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/32） |
| ACT-SRB-03 | 固体ロケットブースタ（SRB×2） | 第2段 | 分離・降下・回収（切替・事象） | 分離した SRB はパラシュートで減速して射点の約 141 n.mi. 先の海上に着水し、回収して再使用する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/32） |
| ACT-SRB-04 | 固体ロケットブースタ（SRB×2） | 軌道投入・軌道・離脱準備・EVA・離脱〜突入・突入・滑空・進入・着陸・着陸後・ターンアラウンド | 該当なし（分離済み）（該当なし） | SRB は上昇の約2分で外部タンクから切り離される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/32） |
| ACT-SRB-05 | 固体ロケットブースタ（SRB×2） | RTLS | 燃焼終了後にRTLS を選択（待機・準備） | 外部タンクの加熱のため、RTLS は離昇2分30秒より前には選べない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/861） |
| ACT-SRB-06 | 固体ロケットブースタ（SRB×2） | TAL・AOA・ATO | 通常と同じ（第1段）（稼働） | SRB 分離は、両 SRB の頭部の室圧が 50 psi 以下になると始まる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/77） |
| ACT-NET-01 | 追跡・通信網（TDRS／STDN） | 打上げ前・第1段・第2段 | STDN（地上局）（稼働） | 上昇中の S帯 PM 通信は、MET 約7分30秒に STDN から TDRS のモードに切り替わる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/824） |
| ACT-NET-02 | 追跡・通信網（TDRS／STDN） | 軌道投入・軌道・離脱準備・EVA・離脱〜突入 | TDRS（稼働） | 軌道投入後に S帯を TDRSS の高レートに設定する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/828） |
| ACT-NET-03 | 追跡・通信網（TDRS／STDN） | 突入・滑空・進入・着陸 | TDRS・地上局（追跡）（稼働） | Mach 7.5 ごろには、MCC は状態ベクトルの更新に十分な追跡データを得る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/846） |
| ACT-NET-04 | 追跡・通信網（TDRS／STDN） | 着陸後 | 交信（稼働） | 機体が停止すると、機長は MCC に「wheels stop」を報告する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/848） |
| ACT-NET-05 | 追跡・通信網（TDRS／STDN） | ターンアラウンド | 該当なし（KSC へ引継ぎ）（該当なし） | MCC がオービタ試験指揮者（OTC）に引き継ぐと、支援員は機体を KSC の担当に渡す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/849） |
| ACT-NET-06 | 追跡・通信網（TDRS／STDN） | RTLS・TAL・AOA・ATO | 上昇・再突入と同じ（稼働） | 上昇中、乗員は MCC の音声で現在のアボート能力を把握し、通信を失った場合は NO COMM MODE BOUNDARIES のカードを使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/855） |
| ACT-LPS-01 | 打上げ処理システム（KSC） | 打上げ前 | 地上管制（T-31秒に機上へ）（稼働） | T-31 秒に打上げ処理システムが機上の冗長セット打上げシーケンスを有効にし、以後の手順は GPC が行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/606）SSME 始動後のアボートは、地上打上げシーケンサ（GLS）が自動で制御する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/853） |
| ACT-LPS-02 | 打上げ処理システム（KSC） | 第1段・第2段・軌道投入・軌道・離脱準備・EVA・離脱〜突入・突入・滑空・進入・着陸 | 該当なし（T-0 で切離し）（該当なし） | T-0 に GPC が T-0 アンビリカル切離しの火工品を点火する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/606） |
| ACT-LPS-03 | 打上げ処理システム（KSC） | 着陸後 | 地上支援（冷却・パージ）（稼働） | 着陸後は約160人の打上げ運用チームが回収を支援し、T-0 アンビリカルに空調パージ装置と地上冷却装置をつなぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/36） |
| ACT-LPS-04 | 打上げ処理システム（KSC） | ターンアラウンド | OPF で整備（稼働） | 乗員の退出後は地上員がオービタの電源を切り、機体は滑走路からオービタ整備施設（OPF）へ移る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/36） |
| ACT-LPS-05 | 打上げ処理システム（KSC） | RTLS | KSC の SLF へ帰還（稼働） | RTLS は準軌道で KSC のシャトル着陸施設（SLF）へ戻る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/861） |
| ACT-LPS-06 | 打上げ処理システム（KSC） | TAL | 該当なし（欧州・アフリカに着陸）（該当なし） | TAL は欧州またはアフリカの滑走路に着陸する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/855） |
| ACT-LPS-07 | 打上げ処理システム（KSC） | AOA | 着陸地点による（KSC など）（待機・準備） | AOA の着陸地点の候補は、エドワーズ空軍基地、ケネディ宇宙センター、ノースラップ・ストリップである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/876） |
| ACT-LPS-08 | 打上げ処理システム（KSC） | ATO | 該当なし（軌道へ）（該当なし） | ATO は通常より低い安全な軌道に入れるための非常手段である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/877） |
| ACT-MCC-01 | ミッション管制センター（JSC） | 打上げ前 | 上昇・アボートのデータ更新（待機・準備） | 乗員は MCC との空地音声点検を行い、上昇・アボートのデータの更新を受ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/822） |
| ACT-MCC-02 | ミッション管制センター（JSC） | 第1段・第2段・軌道投入 | アボート判断（ARD）（稼働） | MCC はアボート領域判定プログラム（ARD）で、性能の問題による速度不足を予測する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/855） |
| ACT-MCC-03 | ミッション管制センター（JSC） | 軌道・EVA | 軌道運用の GO・アップリンク（稼働） | 主要な系に問題が無ければ MCC は軌道運用の GO を出し、オービタの状態ベクトルなどをアップリンクする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/829） |
| ACT-MCC-04 | ミッション管制センター（JSC） | 離脱準備 | PAD の読上げ・離脱の GO/NO-GO（切替・事象） | TIG の1時間42分前に機長は MCC から PAD の読上げを受け、25分前に離脱噴射の GO/NO-GO が出る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/842）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/843） |
| ACT-MCC-05 | ミッション管制センター（JSC） | 離脱〜突入・突入・滑空・進入・着陸 | 状態ベクトル・TACAN・エアデータの GO（稼働） | Mach 7 で MCC と乗員は TACAN のデータを航法と比べ、良ければ MCC が TACAN の採用を指示する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/846） |
| ACT-MCC-06 | ミッション管制センター（JSC） | 着陸後 | 延長電源投入のGO→OTC へ引継ぎ（切替・事象） | MCC の延長電源投入の GO で系統の停止を始め、MCC はオービタ試験指揮者（OTC）に引き継ぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/849） |
| ACT-MCC-07 | ミッション管制センター（JSC） | ターンアラウンド | 該当なし（KSC へ引継ぎ済み）（該当なし） | MCC がオービタ試験指揮者（OTC）に引き継ぐと、支援員は機体を KSC の担当に渡す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/849） |
| ACT-MCC-08 | ミッション管制センター（JSC） | RTLS・TAL・AOA・ATO | アボートの指示（切替・事象） | RTLS の実施を決めると、MCC は乗員に「Abort RTLS」を指示する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/861）AOA の実施は MCC の指示と、OMS-1 の目標の解を OMS 1/2 TGTING のカードで確かめて決める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/873） |

## 7. 各系のモード遷移

フェーズの境で状態が変わる主な系（EPS・APU/HYD・ECLSS の与圧と冷却）のモード遷移を示す。

| ID | 系 | 遷移 | 時期・条件 | 根拠 |
|---|---|---|---|---|
| MD-EPS-1 | EPS | 地上電源＋燃料電池 → 燃料電池3基 | T-50 秒（打上げ前） | 3基の燃料電池は打上げの50秒前から着陸の滑走終了まで全電力を発電し、それ以前は地上電源と燃料電池が電力を供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/311） |
| MD-EPS-2 | EPS | 燃料電池3基 → 停止 | 乗員退出の後（ターンアラウンド） | 着陸後の点検の間は燃料電池が稼働を続け、乗員が退出した後に地上員がオービタの電源を切る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/36） |
| MD-APU-1 | APU/HYD | 停止 → 3基稼働 | T-5 分（打上げ前） | T-5 分に操縦手が APU を起動する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/822） |
| MD-APU-2 | APU/HYD | 3基稼働 → 停止 | MPS 投棄の後（MET 約13分） | MPS の投棄が終わると油圧の MPS/TVC 隔離弁を閉じ、MCC と確認して APU を停止する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/826） |
| MD-APU-3 | APU/HYD | 停止 → 1基（低圧） | TIG の5分前（離脱準備） | 離脱噴射の前に1基が低圧で動いていなければならない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/843） |
| MD-APU-4 | APU/HYD | 1基 → 3基（通常圧力） | EI の13分前（再突入） | EI の13分前に残りの2基を起動し、3基とも通常圧力にする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/844） |
| MD-APU-5 | APU/HYD | 3基 → 停止 | 着陸後（主エンジン再配置の後） | 主エンジンの再配置が終わると APU・油圧を停止する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/849） |
| MD-APU-6 | APU/HYD | 3基 → 低圧で継続（停止しない） | AOA（OMS-1 の後） | OMS-1 の後に AOA を選ぶと、APU を停止せずに油圧系を減圧する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/873） |
| MD-ECL-1 | ECLSS（与圧） | 14.7 psia（通常） | 軌道など | 14.7 psi のキャビン調圧器はキャビン圧力を 14.7 ± 0.2 psia に保つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/366） |
| MD-ECL-2 | ECLSS（与圧） | 14.7 → 10.2 psia | EVA の前 | EVA の手順では、キャビンの圧力を 14.7 psi から 10.2 psi に下げる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/460） |
| MD-ECL-3 | ECLSS（与圧） | → 8 psia（非常用） | 大きなキャビンリーク | 8 psia の非常用調圧器は、大きなキャビンリークの際に 8 psia を保つよう流量を与える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/366） |
| MD-ECL-4 | ECLSS（冷却） | 地上冷却 → 熱慣性 → FES → 放熱器 | 打上げ前 → 第1段 → SRB 分離 → 軌道投入後 | 打上げ前は地上支援設備で冷やし、離昇後は熱慣性で温度上昇を抑え、SRB 分離から FES が冷却し、軌道投入後の作業で放熱器が主な冷却源になる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405） |
| MD-ECL-5 | ECLSS（冷却） | コールドソーク・FES → 放熱器コールドソーク → NH3 ボイラ → 地上冷却 | 離脱準備 → V=12k → 滑走終了 → 着陸後 | 離脱準備で放熱器をコールドソークし、FES が V=12k まで冷却した後は放熱器のコールドソークを使い、使い切るとアンモニアボイラ、地上冷却車の接続後は地上冷却に切り替える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405） |

## 8. 注記（出典間の相違・構成変更）

> **注記** フェーズの8区分は運用飛行規則 A1-104（2002年版）による。上昇の第1段・第2段・軌道投入と、再突入の離脱噴射〜突入・突入〜滑空・進入〜着陸は、DPS のメジャーモードと SCOM の通常手順の区切りから本モデルが定めた下位区分である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/246）

> **注記** A1-104 は離脱準備を TIG の3.5時間前からとするが、SCOM（2008年、OI-33）の通常手順では TIG の4時間前に離脱準備チェックリストへ移る。本書の区切りは A1-104 に従う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/841）

> **注記** EVA フェーズと離脱準備フェーズは、A1-104 では独立の区分だが、時間的には軌道フェーズの一部である。図39 の EVA・離脱準備の列は、その期間の状態を示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=468）

> **注記** アボートモードの境界と時刻は飛行ごとに異なる。本書の時刻は SCOM に示された一般的な値で、飛行固有のデータは飛行力学担当（FDO）が持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/855）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の値は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

> **注記** 図39 のアボートの列で、SCOM にアボート固有の記述が無い系は、MCC の指示や通常の上昇・再突入の手順に従うものとして「上昇・再突入と同じ」「通常と同じ」と記した。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/877）

> **注記** フェーズとアボートモードの状態遷移（図76）と、軌道での飛行継続の判断の状態遷移（図77）は [SSD-BEH-ORB-001](SSD-BEH-ORB-001.md) に示す（SysML v2 テキスト：model/SSD-BEH-ORB-001.sysml）。

> **注記** 上昇（図84）と軌道離脱〜着陸（図83）のシーケンス図は [SSD-BEH-ORB-003](SSD-BEH-ORB-003.md) に示す（SysML v2 テキスト：model/SSD-BEH-ORB-003.sysml）。

> **注記** 運用のユースケースと、ランデブー・ドッキング、最終秒読み〜RSLS アボート、ペイロード放出、上昇アボートの選択のシナリオ（図93〜97）は [SSD-UC-ORB-001](SSD-UC-ORB-001.md) に示す（SysML v2 テキスト：model/SSD-UC-ORB-001.sysml）。

> **注記** 系（GPC・燃料電池・APU・RMS・ATCS）のモードとミッションフェーズの対応（図103）は [SSD-BEH-ORB-005](SSD-BEH-ORB-005.md) に示す（SysML v2 テキスト：model/SSD-BEH-ORB-005.sysml）。

> **注記** 飛行ごとのフェーズの時刻（時間切片）は [SSD-IND-ORB-001](SSD-IND-ORB-001.md) に示す（SysML v2 テキスト：model/SSD-IND-ORB-001.sysml）。

> **注記** 系（OMS・RCS・MPS・C&T・与圧系・ODS）のモードとミッションフェーズの対応（図142）は [SSD-BEH-ORB-006](SSD-BEH-ORB-006.md) に示す（SysML v2 テキスト：model/SSD-BEH-ORB-006.sysml）。

## 9. 参考文献

1. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A1-104 Flight Phase（PDF p468） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=468
2. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 5.1節 Prelaunch（PDF p821） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/821
3. Shuttle Crew Operations Manual 5.1 Prelaunch（USA007587 Rev. A CPN-1、PDF p822） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/822
4. Shuttle Crew Operations Manual 5.2 Ascent（USA007587 Rev. A CPN-1、PDF p823） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/823
5. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p246） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/246
6. Shuttle Crew Operations Manual 1.1 Overview（USA007587 Rev. A CPN-1、PDF p32） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/32
7. Shuttle Crew Operations Manual 5.2 Ascent（USA007587 Rev. A CPN-1、PDF p827） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/827
8. Shuttle Crew Operations Manual 5.4 Entry（USA007587 Rev. A CPN-1、PDF p841） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/841
9. Shuttle Crew Operations Manual 2.11 Extravehicular Activity（USA007587 Rev. A CPN-1、PDF p460） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/460
10. Shuttle Crew Operations Manual 1.1 Overview（USA007587 Rev. A CPN-1、PDF p33） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/33
11. Shuttle Crew Operations Manual 5.4 Entry（USA007587 Rev. A CPN-1、PDF p844） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/844
12. Shuttle Crew Operations Manual 5.4 Entry（USA007587 Rev. A CPN-1、PDF p845） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/845
13. Shuttle Crew Operations Manual 5.4 Entry（USA007587 Rev. A CPN-1、PDF p846） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/846
14. Shuttle Crew Operations Manual 1.1 Overview（USA007587 Rev. A CPN-1、PDF p34） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/34
15. Shuttle Crew Operations Manual 1.1 Overview（USA007587 Rev. A CPN-1、PDF p35） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/35
16. Shuttle Crew Operations Manual 5.4 Entry（USA007587 Rev. A CPN-1、PDF p848） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/848
17. Shuttle Crew Operations Manual 5.5 Postlanding（USA007587 Rev. A CPN-1、PDF p849） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/849
18. Shuttle Crew Operations Manual 1.1 Overview（USA007587 Rev. A CPN-1、PDF p36） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/36
19. Shuttle Crew Operations Manual 6.3 Return to Launch Site（USA007587 Rev. A CPN-1、PDF p861） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/861
20. Shuttle Crew Operations Manual 6.3 Return to Launch Site（USA007587 Rev. A CPN-1、PDF p865） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/865
21. Shuttle Crew Operations Manual 6.4 Transoceanic Abort Landing（USA007587 Rev. A CPN-1、PDF p869） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/869
22. Shuttle Crew Operations Manual 6.2 Ascent Aborts（USA007587 Rev. A CPN-1、PDF p855） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/855
23. Shuttle Crew Operations Manual 6.4 Transoceanic Abort Landing（USA007587 Rev. A CPN-1、PDF p871） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/871
24. Shuttle Crew Operations Manual 6.5 Abort Once Around（USA007587 Rev. A CPN-1、PDF p873） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/873
25. Shuttle Crew Operations Manual 6.5 Abort Once Around（USA007587 Rev. A CPN-1、PDF p876） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/876
26. Shuttle Crew Operations Manual 6.6 Abort to Orbit（USA007587 Rev. A CPN-1、PDF p877） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/877
27. Shuttle Crew Operations Manual 6.7 Contingency Abort（USA007587 Rev. A CPN-1、PDF p879） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/879
28. Shuttle Crew Operations Manual 6.1 Launch Abort Modes and Rationale（USA007587 Rev. A CPN-1、PDF p853） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/853
29. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p607） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/607
30. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p245） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/245
31. Shuttle Crew Operations Manual 5.3 Orbit（USA007587 Rev. A CPN-1、PDF p838） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/838
32. Shuttle Crew Operations Manual 5.3 Orbit（USA007587 Rev. A CPN-1、PDF p839） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/839
33. Shuttle Crew Operations Manual 5.4 Entry（USA007587 Rev. A CPN-1、PDF p842） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/842
34. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p606） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/606
35. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p311） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/311
36. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p338） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/338
37. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p74） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/74
38. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p77） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/77
39. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p405） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405
40. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p608） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/608
41. Shuttle Crew Operations Manual 5.2 Ascent（USA007587 Rev. A CPN-1、PDF p824） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/824
42. Shuttle Crew Operations Manual 5.2 Ascent（USA007587 Rev. A CPN-1、PDF p825） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/825
43. Shuttle Crew Operations Manual 1.3 External Tank（USA007587 Rev. A CPN-1、PDF p70） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/70
44. Shuttle Crew Operations Manual 5.2 Ascent（USA007587 Rev. A CPN-1、PDF p826） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/826
45. Shuttle Crew Operations Manual 8.4 Launch（USA007587 Rev. A CPN-1、PDF p985） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/985
46. Shuttle Crew Operations Manual 5.2 Ascent（USA007587 Rev. A CPN-1、PDF p828） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/828
47. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 5.2節 Ascent（Post Insertion、続き）（PDF p829） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/829
48. Shuttle Crew Operations Manual 2.11 Extravehicular Activity（USA007587 Rev. A CPN-1、PDF p450） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/450
49. Shuttle Crew Operations Manual 6.5 Abort Once Around（USA007587 Rev. A CPN-1、PDF p875） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/875
50. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p514） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/514
51. Shuttle Crew Operations Manual 5.3 Orbit（USA007587 Rev. A CPN-1、PDF p831） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/831
52. Shuttle Crew Operations Manual 5.4 Entry（USA007587 Rev. A CPN-1、PDF p847） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/847
53. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p76） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/76
54. Shuttle Crew Operations Manual 6.3 Return to Launch Site（USA007587 Rev. A CPN-1、PDF p864） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/864
55. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Pressure Control System（PDF p360） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/360
56. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p359） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/359
57. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p369） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369
58. Shuttle Crew Operations Manual 6.8 Systems Failures（USA007587 Rev. A CPN-1、PDF p884） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/884
59. Shuttle Crew Operations Manual 5.4 Entry（USA007587 Rev. A CPN-1、PDF p843） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/843
60. Shuttle Crew Operations Manual 2.14 Landing/Deceleration System（USA007587 Rev. A CPN-1、PDF p544） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/544
61. Shuttle Crew Operations Manual 6.2 Ascent Aborts（USA007587 Rev. A CPN-1、PDF p858） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/858
62. Shuttle Crew Operations Manual 6.3 Return to Launch Site（USA007587 Rev. A CPN-1、PDF p866） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/866
63. Shuttle Crew Operations Manual 6.2 Ascent Aborts（USA007587 Rev. A CPN-1、PDF p856） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/856
64. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p65） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/65
65. Shuttle Crew Operations Manual 1.1 Overview（USA007587 Rev. A CPN-1、PDF p31） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/31
66. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p54） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/54
67. Shuttle Crew Operations Manual 2.17 Mechanical Systems（USA007587 Rev. A CPN-1、PDF p621） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/621
68. Shuttle Crew Operations Manual 5.2 Ascent（USA007587 Rev. A CPN-1、PDF p830） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/830
69. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p113） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/113
70. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 5.3節 Orbit（PDF p833） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/833
71. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p55） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/55
72. Shuttle Crew Operations Manual 2.11 Extravehicular Activity（USA007587 Rev. A CPN-1、PDF p444） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/444
73. Shuttle Crew Operations Manual 2.11 Extravehicular Activity（USA007587 Rev. A CPN-1、PDF p463） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/463
74. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Oxygen/Nitrogen Manifold・PPO2 Control（PDF p366） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/366
75. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149
76. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p347） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/347

## 10. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（飛行フェーズ・アボートモード・OPS／メジャーモード・上昇の事象・サブシステムの稼働・モード遷移） |
| Rev. A | 2026-10-01 | 出典を乗員運用マニュアル（SCOM、OI-33）の頁に更新（1文）（Rev. Q） |
| Rev. B | 2026-10-02 | 状態遷移定義書 SSD-BEH-ORB-001 への参照を注記（Rev. Y） |
| Rev. C | 2026-10-02 | シーケンス定義書 SSD-BEH-ORB-003 への参照を注記（Rev. AB） |
| Rev. D | 2026-10-03 | 運用シナリオ・ユースケース定義書 SSD-UC-ORB-001 への参照を注記（Rev. AH） |
| Rev. E | 2026-10-03 | 系の状態遷移定義書 SSD-BEH-ORB-005 への参照を注記（Rev. AI） |
| Rev. F | 2026-10-03 | 個体・時間定義書 SSD-IND-ORB-001 への参照を注記（Rev. AR） |
| Rev. G | 2026-10-04 | 系の状態遷移定義書その2 SSD-BEH-ORB-006 への参照を注記（Rev. AX） |
