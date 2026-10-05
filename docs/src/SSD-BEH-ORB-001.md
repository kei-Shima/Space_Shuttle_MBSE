# 状態遷移定義書（ミッションフェーズ・飛行継続判断）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-BEH-ORB-001 |
| 表題 | 状態遷移定義書（ミッションフェーズ・飛行継続判断） |
| 版・日付 | Rev. D／2026-10-03 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-OPS-PHASE-001 |
| 関連図 | SSD-SYS-ARC-001 図76 ミッションフェーズ・アボート 状態遷移図・図77 飛行継続判断（Go/No-Go）状態遷移図 |

## 1. 目的

ミッションの振る舞いを状態遷移で示す。図76 ミッションフェーズ・アボート 状態遷移図は、SSD-OPS-PHASE-001 の飛行フェーズとアボートモードを状態とし、フェーズの境の事象とアボートの選択条件を遷移とする。図77 飛行継続判断（Go/No-Go）状態遷移図は、軌道で系統の故障が起きたときの飛行継続の判断（NEOM・MDF・次の PLS）を状態とし、運用飛行規則 A2-102 の基準を遷移とする。同じ状態・遷移を SysML v2 のテキスト（model/SSD-BEH-ORB-001.sysml）でも示す。

## 2. 書き方

状態の種別は、単純状態・複合状態（下位の状態を持つ）・アボートモードの3つで、「終了」は状態機械の終わりを示す。遷移は「トリガ［ガード］」で、トリガは遷移を起こす事象、ガードはその時に成り立つべき条件である。SysML の欄は、SysML v2 テキストでの事象（item def）とガード（Boolean の属性）の名前である。状態の根拠は SSD-OPS-PHASE-001 の定義の文、遷移の根拠は遷移先の始まりを定める文、または選択の条件を定める文である。

## 3. 図76 の状態

図76 ミッションフェーズ・アボート 状態遷移図の状態 21件を示す。

| ID | 状態 | 親 | 種別 | SSD-OPS-PHASE-001 | SysML | 根拠 |
|---|---|---|---|---|---|---|
| PH-1 | 打上げ前 | — | 単純状態 | PH-1 | PH_1 | A1-104 は、打上げ前を SRB 点火より前と定義する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=468） |
| PH-2 | 上昇 | — | 複合状態（下位の状態を持つ） | PH-2 | PH_2 | A1-104 は、上昇を SRB 点火から OMS-2 燃焼の終了までと定義する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=468） |
| PH-2a | 上昇・第1段 | PH-2（上昇） | 単純状態 | PH-2a | PH_2a | T-0 で SRB が点火し、ソフトウェアはメジャーモード 102 に遷移する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/823） |
| PH-2b | 上昇・第2段 | PH-2（上昇） | 単純状態 | PH-2b | PH_2b | SRB が分離すると、GNC はメジャーモード 103 に遷移する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/823） |
| PH-2c | 上昇・軌道投入 | PH-2（上昇） | 単純状態 | PH-2c | PH_2c | メジャーモード 104 は ET 分離から OMS-1 燃焼の終了まで、105 は OMS-1 から OMS-2 の終了まで、106 は OMS-2 の終了から GNC OPS 2 の選択までである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/246） |
| PH-3 | 軌道 | — | 複合状態（下位の状態を持つ） | PH-3 | PH_3 | A1-104 は、軌道を OMS-2 燃焼の終了から離脱噴射の点火までと定義する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=468） |
| ST-ORB | 軌道運用 | PH-3（軌道） | 単純状態 | — | ST_ORB | 軌道投入後の作業では、軌道用ソフトウェアへの切替、放熱器の起動、ペイロードベイドアの開放、LES の脱衣と収納を行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/827） |
| PH-5 | EVA | PH-3（軌道） | 単純状態 | PH-5 | PH_5 | A1-104 は、EVA をエアロック減圧の開始から再与圧とエアロックの気密確認までと定義する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=468） |
| PH-4 | 離脱準備 | PH-3（軌道） | 単純状態 | PH-4 | PH_4 | A1-104 は、離脱準備を離脱噴射点火（TIG）の3.5時間前から TIG までと定義する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=468） |
| PH-6 | 再突入 | — | 複合状態（下位の状態を持つ） | PH-6 | PH_6 | A1-104 は、再突入を離脱噴射の点火から滑走停止までと定義する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=468） |
| PH-6a | 再突入・離脱噴射〜突入 | PH-6（再突入） | 単純状態 | PH-6a | PH_6a | 離脱噴射は2基の OMS エンジンで軌道を下げ、所定の高度と着陸地点からの距離で大気圏に入るようにする。燃焼時間は通常2〜3分である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/33） |
| PH-6b | 再突入・突入〜滑空 | PH-6（再突入） | 単純状態 | PH-6b | PH_6b | EI の5分前に GPC を OPS 304 に遷移させ、Mach 2.5・高度約 81,000 ft でソフトウェアは自動で OPS 305 に遷移して TAEM 誘導に入る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/845） |
| PH-6c | 再突入・進入〜着陸 | PH-6（再突入） | 単純状態 | PH-6c | PH_6c | 進入・着陸フェーズは高度約 10,000 ft・300 KEAS で始まり、機体が滑走路上で停止して終わる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/35） |
| PH-7 | 着陸後 | — | 単純状態 | PH-7 | PH_7 | A1-104 は、着陸後を滑走停止から乗員の退出までと定義する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=468） |
| PH-8 | ターンアラウンド | — | 単純状態 | PH-8 | PH_8 | A1-104 は、ターンアラウンド運用を乗員の退出後と定義する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=468） |
| AB-PAD | 射点アボート・脱出 | — | アボートモード | AB-PAD | AB_PAD | 打上げは SRB 点火までスクラブまたはアボートでき、SSME 始動後のアボートは地上打上げシーケンサ（GLS）が自動で制御する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/853） |
| AB-RTLS | RTLS（射点帰還） | — | アボートモード | AB-RTLS | AB_RTLS | RTLS は、離昇後から NEGATIVE RETURN までのエンジン停止に対し、準軌道で KSC のシャトル着陸施設（SLF）へ戻す非常手段である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/861） |
| AB-TAL | TAL（大洋横断着陸） | — | アボートモード | AB-TAL | AB_TAL | TAL は、2 ENGINE TAL から PRESS TO ATO（MECO）までのエンジン1基の停止に対する非常手段で、欧州またはアフリカの滑走路に着陸する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/869） |
| AB-ATO | ATO（軌道へのアボート） | — | アボートモード | AB-ATO | AB_ATO | ATO は、通常より低いが安全な軌道に入れるための非常手段で、性能不足または一部の系の故障で選ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/877） |
| AB-AOA | AOA（1周帰還） | — | アボートモード | AB-AOA | AB_AOA | AOA は、性能の損失で有効な軌道に乗れない場合や OMS 推進薬が足りない場合、また主要系の故障で早く着陸する必要がある場合に使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/873） |
| AB-CONT | コンティンジェンシー | — | アボートモード | AB-CONT | AB_CONT | コンティンジェンシーアボートは、intact アボートができない重大な故障の後に乗員の生存を図るもので、東海岸の着陸地点（ECAL）への着陸か洋上でのベイルアウトになる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/855） |

## 4. 図76 の遷移

図76 ミッションフェーズ・アボート 状態遷移図の遷移 25件を示す。

| ID | 元 | 先 | トリガ | ガード | SysML（事象 ／ ガード） | 根拠 |
|---|---|---|---|---|---|---|
| TR-01 | PH-1（打上げ前） | PH-2a（上昇・第1段） | SRB 点火（T-0） | — | SrbIgnition | T-0 で SRB が点火し、ソフトウェアはメジャーモード 102 に遷移する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/823） |
| TR-02 | PH-2a（上昇・第1段） | PH-2b（上昇・第2段） | SRB 分離 | — | SrbSeparation | SRB が分離すると、GNC はメジャーモード 103 に遷移する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/823） |
| TR-03 | PH-2b（上昇・第2段） | PH-2c（上昇・軌道投入） | MECO・ET 分離 | — | MecoEtSeparation | 打上げの約8分半後に3基の主エンジンが停止（MECO）し、オービタの指令で外部タンクを投棄する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/32） |
| TR-04 | PH-2c（上昇・軌道投入） | ST-ORB（軌道運用） | OMS-2 燃焼終了 | — | Oms2Cutoff | A1-104 は、軌道を OMS-2 燃焼の終了から離脱噴射の点火までと定義する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=468） |
| TR-05 | ST-ORB（軌道運用） | PH-5（EVA） | エアロック減圧開始 | — | AirlockDepressStart | A1-104 は、EVA をエアロック減圧の開始から再与圧とエアロックの気密確認までと定義する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=468） |
| TR-06 | PH-5（EVA） | ST-ORB（軌道運用） | 再与圧・気密確認 | — | AirlockRepressVerified | A1-104 は、EVA をエアロック減圧の開始から再与圧とエアロックの気密確認までと定義する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=468） |
| TR-07 | ST-ORB（軌道運用） | PH-4（離脱準備） | 離脱噴射点火の3.5時間前 | — | DeorbitPrepStart | A1-104 は、離脱準備を離脱噴射点火（TIG）の3.5時間前から TIG までと定義する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=468） |
| TR-08 | PH-4（離脱準備） | PH-6a（再突入・離脱噴射〜突入） | 離脱噴射点火（TIG） | — | DeorbitIgnition | A1-104 は、再突入を離脱噴射の点火から滑走停止までと定義する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=468） |
| TR-09 | PH-6a（再突入・離脱噴射〜突入） | PH-6b（再突入・突入〜滑空） | 大気圏突入（EI、400,000 ft） | — | EntryInterface | 大気圏突入（EI）は、高度 400,000 ft、着陸地点の約 4,200 n.mi. 手前、速度約 25,000 fps の点とされる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/33） |
| TR-10 | PH-6b（再突入・突入〜滑空） | PH-6c（再突入・進入〜着陸） | 進入・着陸の開始（約10,000 ft） | — | ApproachAndLanding | 進入・着陸フェーズは高度約 10,000 ft・300 KEAS で始まり、機体が滑走路上で停止して終わる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/35） |
| TR-11 | PH-6c（再突入・進入〜着陸） | PH-7（着陸後） | 滑走停止 | — | WheelStop | A1-104 は、着陸後を滑走停止から乗員の退出までと定義する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=468） |
| TR-12 | PH-7（着陸後） | PH-8（ターンアラウンド） | 乗員退出 | — | CrewEgress | A1-104 は、ターンアラウンド運用を乗員の退出後と定義する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=468） |
| TR-13 | PH-1（打上げ前） | AB-PAD（射点アボート・脱出） | SSME 始動後の打上げ中止 | SRB 点火前 | LaunchAbort ／ beforeSrbIgnition | 打上げは SRB 点火までスクラブまたはアボートでき、SSME 始動後のアボートは地上打上げシーケンサ（GLS）が自動で制御する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/853）3基の主エンジンが T-3 秒までに定格推力の 90% に達しなければ、全 SSME を停止して SRB を点火せず、射点アボートとなる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/607） |
| TR-14 | PH-2b（上昇・第2段） | AB-RTLS（RTLS（射点帰還）） | エンジン停止 | 離昇2分30秒以降〜NEGATIVE RETURN | EngineOut ／ rtlsWindow | RTLS は、離昇後から NEGATIVE RETURN までのエンジン停止に対し、準軌道で KSC のシャトル着陸施設（SLF）へ戻す非常手段である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/861）外部タンクの加熱のため、RTLS は離昇2分30秒より前には選べない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/861） |
| TR-15 | PH-2b（上昇・第2段） | AB-TAL（TAL（大洋横断着陸）） | エンジン1基の停止 | 2 ENGINE TAL〜PRESS TO ATO | EngineOut ／ talWindow | TAL は、2 ENGINE TAL から PRESS TO ATO（MECO）までのエンジン1基の停止に対する非常手段で、欧州またはアフリカの滑走路に着陸する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/869） |
| TR-16 | PH-2b（上昇・第2段） | AB-ATO（ATO（軌道へのアボート）） | 性能不足・一部の系の故障 | PRESS TO ATO 以後 | PerformanceShortfall ／ pressToAto | ATO は、通常より低いが安全な軌道に入れるための非常手段で、性能不足または一部の系の故障で選ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/877）MECO 前に ATO を選ぶと OMS 推進薬を投棄し、アボート用の MECO 目標に切り替わり、可変 I-Y 誘導で軌道傾斜角を固定することがある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/877） |
| TR-17 | PH-2c（上昇・軌道投入） | AB-AOA（AOA（1周帰還）） | 性能不足・OMS 推進薬不足・主要系の故障 | MECO 後 | PerformanceShortfall ／ afterMeco | AOA は、性能の損失で有効な軌道に乗れない場合や OMS 推進薬が足りない場合、また主要系の故障で早く着陸する必要がある場合に使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/873） |
| TR-18 | PH-2（上昇） | AB-CONT（コンティンジェンシー） | intact アボートができない推力不足 | — | MultipleEngineOut | コンティンジェンシーアボートは、intact アボートができない重大な故障の後に乗員の生存を図るもので、東海岸の着陸地点（ECAL）への着陸か洋上でのベイルアウトになる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/855） |
| TR-19 | AB-RTLS（RTLS（射点帰還）） | PH-7（着陸後） | KSC の SLF で滑走停止 | — | WheelStop | RTLS は、離昇後から NEGATIVE RETURN までのエンジン停止に対し、準軌道で KSC のシャトル着陸施設（SLF）へ戻す非常手段である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/861） |
| TR-20 | AB-TAL（TAL（大洋横断着陸）） | PH-7（着陸後） | 欧州・アフリカの滑走路で滑走停止 | — | WheelStop | TAL は、2 ENGINE TAL から PRESS TO ATO（MECO）までのエンジン1基の停止に対する非常手段で、欧州またはアフリカの滑走路に着陸する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/869） |
| TR-21 | AB-ATO（ATO（軌道へのアボート）） | PH-3（軌道） | 約 105 n.mi. の円軌道に投入 | — | OrbitAchieved | 2回の ATO OMS 燃焼の後、オービタは約 105 n.mi. の円軌道に入る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/877） |
| TR-22 | AB-AOA（AOA（1周帰還）） | PH-6a（再突入・離脱噴射〜突入） | 2回目の OMS 燃焼（離脱） | — | DeorbitIgnition | 標準投入または低性能の直接投入では、1回目の OMS 燃焼で MECO 後の軌道を調整し、2回目の燃焼で離脱して AOA 着陸地点に降りる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/873） |
| TR-23 | AB-CONT（コンティンジェンシー） | 終了 | ECAL への着陸・洋上のベイルアウト | — | ContingencyLanding | コンティンジェンシーアボートは、intact アボートができない重大な故障の後に乗員の生存を図るもので、東海岸の着陸地点（ECAL）への着陸か洋上でのベイルアウトになる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/855） |
| TR-24 | AB-PAD（射点アボート・脱出） | 終了 | 射点での停止・脱出 | — | PadSafing | 射点の緊急時の脱出は、乗員だけで行うモード1と、閉鎖班・消防救難班の支援を受けるモード2〜4に分けて事前に訓練する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/853） |
| TR-25 | PH-8（ターンアラウンド） | 終了 | オービタ整備施設（OPF）への移動 | — | MoveToOpf | 乗員の退出後は地上員がオービタの電源を切り、機体と地上支援機材の車列は滑走路からオービタ整備施設（OPF）へ移る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/36） |

## 5. 図77 の状態

図77 飛行継続判断（Go/No-Go）状態遷移図の状態 4件を示す。

| ID | 状態 | 親 | 種別 | SSD-OPS-PHASE-001 | SysML | 根拠 |
|---|---|---|---|---|---|---|
| GN-NEOM | 通常（NEOM まで飛行） | — | 単純状態 | — | GN_NEOM | 再突入に必須の系の1故障目では、通常は予定の飛行終了（NEOM）まで飛行を続ける。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=581） |
| GN-MDF | 最短飛行（MDF） | — | 単純状態 | — | GN_MDF | MDF は約72時間で、第4飛行日の終わりより前に主着陸地（PLS）に着陸する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=582） |
| GN-PLS | 次の PLS で帰還 | — | 単純状態 | — | GN_PLS | 次の PLS の軌道離脱は、0故障許容になる故障などに対し、最も早い実用的な時刻に米本土の着陸地へ行う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=584） |
| GN-DOP | 離脱準備（PH-4 へ） | — | 単純状態 | — | GN_DOP | 次の PLS でも、できれば通常の離脱準備の時間を取り、少なくとも3.5時間の離脱準備を行う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=584） |

## 6. 図77 の遷移

図77 飛行継続判断（Go/No-Go）状態遷移図の遷移 9件を示す。

| ID | 元 | 先 | トリガ | ガード | SysML（事象 ／ ガード） | 根拠 |
|---|---|---|---|---|---|---|
| GT-01 | GN-NEOM（通常（NEOM まで飛行）） | GN-NEOM（通常（NEOM まで飛行）） | 再突入に必須の系の1故障目 | 1故障許容が残り、一般的な故障ではない | FirstFailure ／ singleFaultTolerant | 再突入に必須の系の1故障目では、通常は NEOM まで飛行を続け、フェイルセーフでなくなった場合は故障モードと残る能力を技術的に審査する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=581） |
| GT-02 | GN-NEOM（通常（NEOM まで飛行）） | GN-PLS（次の PLS で帰還） | 再突入に必須の系の1故障目 | 審査で一般的な故障・地上処理の問題と判断 | FirstFailure ／ genericFailure | 1故障目の審査で、一般的な故障か地上処理の一般的な問題が起きて残る系に及ぶおそれがあると判断すれば、飛行を PLS で終える。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=581） |
| GT-03 | GN-NEOM（通常（NEOM まで飛行）） | GN-MDF（最短飛行（MDF）） | 再突入に必須の系の2故障目 | オービタが1故障許容のまま | SecondFailure ／ singleFaultTolerant | 2故障目で、オービタが1故障許容のままなら、主ペイロードの展開と乗員の適応のため MDF まで飛行を続ける。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=582） |
| GT-04 | GN-NEOM（通常（NEOM まで飛行）） | GN-PLS（次の PLS で帰還） | 再突入に必須の系の2故障目 | 故障許容をすべて失う、または一般的な故障 | SecondFailure ／ lostAllFaultTolerance | 2故障目で、その系が故障許容をすべて失うか一般的な故障とみなされれば、飛行を次の PLS で終える。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=582） |
| GT-05 | GN-MDF（最短飛行（MDF）） | GN-PLS（次の PLS で帰還） | 0故障許容になる故障 | — | ZeroFaultTolerance | オービタの系を0故障許容にする故障、またはあと1故障で重大な構成管理の状態になる故障では、次の PLS の軌道離脱を最も早い実用的な時刻に行う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=584） |
| GT-06 | GN-NEOM（通常（NEOM まで飛行）） | GN-PLS（次の PLS で帰還） | MDF にあたる故障 | 飛行72時間以降 | SecondFailure ／ past72Hours | 通常なら MDF とする故障が飛行72時間を過ぎて起きた場合は、通常の EOM の収納と突入準備の時間を取れる次の PLS の機会に着陸する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=585） |
| GT-07 | GN-NEOM（通常（NEOM まで飛行）） | GN-DOP（離脱準備（PH-4 へ）） | EOM の離脱準備の開始 | 第5飛行日（約96時間）以降 | EomDeorbitPrep ／ afterFlightDay5 | 通常の EOM 着陸は、第5飛行日の初め（約96時間）より前には行わない。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=581） |
| GT-08 | GN-MDF（最短飛行（MDF）） | GN-DOP（離脱準備（PH-4 へ）） | MDF の離脱準備の開始 | 約72時間、第4飛行日の終わりより前 | MdfDeorbitPrep ／ beforeEndOfFlightDay4 | MDF は約72時間で、第4飛行日の終わりより前に PLS に着陸する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=582） |
| GT-09 | GN-PLS（次の PLS で帰還） | GN-DOP（離脱準備（PH-4 へ）） | 次の PLS の離脱準備の開始 | 少なくとも3.5時間の離脱準備 | NextPlsDeorbitPrep ／ minDeorbitPrep | 次の PLS では、できれば通常の離脱準備の時間を取り、少なくとも3.5時間の離脱準備を行う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=584） |

## 7. SysML v2 テキスト

同じ状態・遷移を SysML v2 のテキスト [model/SSD-BEH-ORB-001.sysml](../../model/SSD-BEH-ORB-001.sysml) に示す。事象の item def 26件、状態機械の state def 2件（MissionMode・FlightContinuation）、状態 25件、遷移 34件と、2つの状態機械を持つ part def Orbiter から成る。このテキストは本書の表と同じデータから作り、SysML v2 の文法による構文の検査を通し、Rev. AG で OMG SysML v2 Pilot Implementation 0.62.0 により、ほかのモデルと一緒に読み込んで名前の解決・型の検査を行い、誤り 0件・警告 0件を確かめた（SSD-MDL-SYS-001）。

## 8. 注記（出典間の相違・構成変更）

> **注記** 故障の数（どの系で何故障なら MDF・次の PLS か）は、A2-1001 の表（MDF・NXT PLS の列）と各章の1001番の規則による。本図は判断の流れだけを示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=800）

> **注記** 故障の状況によっては、故障の理解・系の構成の確認・乗員の休息のため、次の着陸機会に入るより軌道にとどまるほうが安全な場合がある。本図はこの例外を描かない。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=585）

> **注記** 「軌道運用」（ST-ORB）は、A1-104 の軌道のうち離脱準備・EVA 以外の時間を表すために本書で足した状態である。

> **注記** TR-18 は上昇（PH-2）のどの下位状態からも起こりうる遷移として、複合状態から引いた。アボートの選択の時期の細かい境界（NEGATIVE RETURN・PRESS TO ATO など）は SSD-OPS-PHASE-001 §3 の範囲の欄による。

> **注記** 状態遷移の各場面の流れを、系どうしのメッセージで示したシーケンス図（図83〜85）は [SSD-BEH-ORB-003](SSD-BEH-ORB-003.md) に示す（SysML v2 テキスト：model/SSD-BEH-ORB-003.sysml）。

> **注記** 系をまたぐ運用・非常時の処置（キャビン減圧・EVA・ペイロードベイドア閉鎖不能）の活動図（図86〜88）は [SSD-BEH-ORB-004](SSD-BEH-ORB-004.md) に示す（SysML v2 テキスト：model/SSD-BEH-ORB-004.sysml）。

> **注記** アボートモードの選択の活動図（図97）と、運用のユースケース（図93）は [SSD-UC-ORB-001](SSD-UC-ORB-001.md) に示す（SysML v2 テキスト：model/SSD-UC-ORB-001.sysml）。

## 9. 参考文献

1. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A1-104 Flight Phase（PDF p468） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=468
2. Shuttle Crew Operations Manual 5.2 Ascent（USA007587 Rev. A CPN-1、PDF p823） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/823
3. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p246） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/246
4. Shuttle Crew Operations Manual 5.2 Ascent（USA007587 Rev. A CPN-1、PDF p827） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/827
5. Shuttle Crew Operations Manual 1.1 Overview（USA007587 Rev. A CPN-1、PDF p33） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/33
6. Shuttle Crew Operations Manual 5.4 Entry（USA007587 Rev. A CPN-1、PDF p845） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/845
7. Shuttle Crew Operations Manual 1.1 Overview（USA007587 Rev. A CPN-1、PDF p35） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/35
8. Shuttle Crew Operations Manual 6.1 Launch Abort Modes and Rationale（USA007587 Rev. A CPN-1、PDF p853） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/853
9. Shuttle Crew Operations Manual 6.3 Return to Launch Site（USA007587 Rev. A CPN-1、PDF p861） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/861
10. Shuttle Crew Operations Manual 6.4 Transoceanic Abort Landing（USA007587 Rev. A CPN-1、PDF p869） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/869
11. Shuttle Crew Operations Manual 6.6 Abort to Orbit（USA007587 Rev. A CPN-1、PDF p877） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/877
12. Shuttle Crew Operations Manual 6.5 Abort Once Around（USA007587 Rev. A CPN-1、PDF p873） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/873
13. Shuttle Crew Operations Manual 6.2 Ascent Aborts（USA007587 Rev. A CPN-1、PDF p855） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/855
14. Shuttle Crew Operations Manual 1.1 Overview（USA007587 Rev. A CPN-1、PDF p32） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/32
15. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p607） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/607
16. Shuttle Crew Operations Manual 1.1 Overview（USA007587 Rev. A CPN-1、PDF p36） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/36
17. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A2-102 Mission Duration Requirements（PDF p581） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=581
18. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A2-102 MISSION DURATION REQUIREMENTS（PDF p582） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=582
19. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A2-102 Mission Duration Requirements（PDF p584） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=584
20. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A2-102 MISSION DURATION REQUIREMENTS（PDF p585） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=585
21. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A2-1001 Orbiter Systems Go/No-Go（PDF p800） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=800

## 10. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（図76 ミッションフェーズ・アボート 状態遷移図の状態 21件・遷移 25件、図77 飛行継続判断（Go/No-Go）状態遷移図の状態 4件・遷移 9件、SysML v2 テキスト） |
| Rev. A | 2026-10-02 | シーケンス定義書 SSD-BEH-ORB-003 への参照を注記（Rev. AB） |
| Rev. B | 2026-10-02 | 活動定義書 SSD-BEH-ORB-004 への参照を注記（Rev. AC） |
| Rev. C | 2026-10-03 | SysML v2 テキストの検査の記述を改めた（Pilot による名前の解決・型の検査、モデル統合・検査定義書 SSD-MDL-SYS-001）（Rev. AG） |
| Rev. D | 2026-10-03 | 運用シナリオ・ユースケース定義書 SSD-UC-ORB-001 への参照を注記（Rev. AH） |
