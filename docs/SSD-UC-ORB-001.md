# 運用シナリオ・ユースケース定義書（ユースケース・ランデブー・秒読み・ペイロード放出・アボート）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-UC-ORB-001 |
| 表題 | 運用シナリオ・ユースケース定義書（ユースケース・ランデブー・秒読み・ペイロード放出・アボート） |
| 版・日付 | Rev. A／2026-10-07 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-OPS-PHASE-001 |
| 関連図 | SSD-SYS-ARC-001 図93 運用のユースケース図・図94 ランデブー・ドッキング シーケンス図・図95 最終秒読み〜RSLS アボート シーケンス図・図96 RMS によるペイロード放出 活動図・図97 上昇アボートの選択 活動図 |

## 1. 目的

宇宙輸送システムの運用を、ユースケース（システムが関係者に提供する働き）とアクタ（関係者）で整理し、各ユースケースを実現する振る舞いの図に結び付ける。これまでの振る舞いの図（図76〜88）に無かった場面のうち、ランデブー・ドッキング（図94）、最終秒読み〜RSLS による射場アボート（図95）、RMS によるペイロード放出（図96）、上昇アボートの選択（図97）をシナリオとして加える。同じ内容を SysML v2 のテキスト（SysML/SSD-UC-ORB-001.sysml）でも示す。

## 2. 書き方

ユースケースは「〜する」の形で、主体は宇宙輸送システム（構造モデル SSD-BLK-SYS-001 の SpaceTransportationSystem）である。include は必ず含む共通のユースケース、extend は条件のときに加わるユースケース（拡張する側 → 拡張される側）である。実現の欄は、そのユースケースの流れを示す図である。シーケンス図と活動図の書き方は SSD-BEH-ORB-003・SSD-BEH-ORB-004 と同じである。

## 3. アクタ

アクタ 8件を示す。関連の欄は、そのアクタが関わるユースケースの数である。

| ID | アクタ | 役割 | SysML | 関連 | 根拠 |
|---|---|---|---|---|---|
| CREW | 乗員（CDR・PLT・MS） | 機体を操縦し、系を監視・操作し、標準の時刻表と故障の手順を実行する。 | Crew | 12 | 乗員は打上げの約2時間45分前にオービタへ乗り込む。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/985）軌道上では、乗員が機体の系の監視と標準の時刻表の実行に責任を持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/989） |
| MCC | ミッション管制センタ（MCC） | SRB 点火から乗員の退出まで飛行を指揮し、アボートモードを決め、GO を出し、指令をアップリンクする。 | MissionControl | 12 | MCC のフライトディレクタは、SRB 点火から着陸後の乗員の退出までシャトルの飛行全体の指揮に責任を持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/987）MCC は ARD でアボートの能力を実時間で評価できるため、アボートモードの決定に主な責任を持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/987）MCC の INCO は MCC とシャトルの指令系の運用に責任を持ち、ペイロード宛てを含む全ての指令の承認でフライトディレクタを代表する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/989）飛行管制員は膨大なダウンリストのデータで系の性能を解析し、フライトディレクタは CAPCOM かアップリンク指令で乗員へ情報を流す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/979） |
| LCC | 打上げ管制（LCC・GLS・NTD） | 秒読みを進め、T−9分以後は GLS が機体を自動で構成・監視し、射点の緊急時は NTD が指揮する。 | LaunchControl | 2 | LCC の打上げディレクタが打上げチームに最終の GO を出し、T−9分の計画ホールドで MMT の議長が全要素の可否を問う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/986）T−9分に秒読みを再開すると、全ての作業は地上打上げシーケンサ（GLS）という計算機システムの制御下に入る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/986）射点での緊急時は、LCC の発射室で卓につく NASA テストディレクタ（NTD）が指揮をとる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/853） |
| CLOSEOUT | クローズアウトクルー・ASP | 乗り込みを助けて射点で最終点検を行い、射場の緊急時は乗員の退出を助ける。 | CloseoutCrew | 2 | 乗り込みは服の技術者と宇宙飛行士支援要員（ASP）が助け、彼らは射点で最終点検を行うクローズアウトクルーの一員である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/985）SSME 始動前のスクラブでは、通常は整然とした安全化の手順と、クローズアウトクルーの助けによる乗員の退出が続く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/853） |
| POCC | ペイロード顧客（POCC） | 主要なペイロードの活動に責任を持ち、MCC を経てペイロードのテレメトリを受ける。 | PayloadCustomer | 2 | 遠隔のペイロード運用管制センタ（POCC）があるときは、主要なペイロードの活動の責任は POCC の長にある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/989）ペイロードのテレメトリは PCMMU から NSP を経て音声と合わせられ、MCC と POCC へ送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/179） |
| ISS | ISS（乗員と機体） | ドッキングの受動側となり、RPM 中にオービタ下面を撮影する。 | SpaceStation | 1 | ISS へのランデブ中に、乗員は ISS の乗員がオービタを撮影できるよう RPM を行った。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=13）オービタ側のドッキング機構は能動で、ISS 側は通常受動である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/674） |
| RSO | 射場安全（Range Safety） | 人口密集域を危険にさらす飛行を終わらせる（第1段では SRB を遠隔で起爆）。 | RangeSafety | 1 | 射場安全は人口密集域を危険にさらす飛行を終わらせる役で、第1段では SRB の爆薬を遠隔で起爆して行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/858）SRB 点火の前にはどんな場合も飛行終了の措置をとらず、SSME 点火の後は射場アボートがありうる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=997） |
| NET | 追跡・通信網（STDN・TDRS） | MCC と機体の間で音声・指令・テレメトリを中継する。 | TrackingNetwork | 1 | S 帯のフォワードリンクは MCC から、上昇・突入では NASA の STDN 地上局を、軌道運用では TDRS を経て送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/162） |

## 4. ユースケース

ユースケース 12件を示す（図93 運用のユースケース図）。include・extend の関係の説明は SysML v2 テキストの doc にもある。

| ID | ユースケース | アクタ | 実現 | include | extend | SysML | 根拠 |
|---|---|---|---|---|---|---|---|
| UC-01 | 最終秒読みを行う | LCC・CREW・MCC・CLOSEOUT | 図84（AS-01〜08）・図95 | UC-10 | UC-02→UC-01 | FinalCountdown | LCC の打上げディレクタが打上げチームに最終の GO を出し、T−9分の計画ホールドで MMT の議長が全要素の可否を問う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/986）T−9分に秒読みを再開すると、全ての作業は地上打上げシーケンサ（GLS）という計算機システムの制御下に入る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/986）T−9分に打上げの GO が出て、イベントタイマが始動する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/822）T−31秒以後はカットオフしかなく、カットオフでは T−20分へリサイクルする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/986）T−31秒以後は、MCC は秒読みのホールドを呼ばない。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=59）T−31秒に GLS が GPC の RSLS へ GO FOR AUTO SEQUENCE START を送り、RSLS がベント扉の構成・主エンジンの始動・SRB 点火の指令を行えるようにする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/986） |
| UC-02 | 射場アボートで機体を安全化し退出する | LCC・CREW・MCC・CLOSEOUT | 図95 | — | UC-02→UC-01 | PadAbortSafing | 打上げは SRB 点火まではスクラブまたはアボートでき、SSME 始動後の射場アボートは GLS が自動で制御する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/853）SSME 始動後の射場アボートで最も重大な危険は、過剰な水素による目に見えない水素火災である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/853）T−3秒に1基でも定格推力の 90% に達しなければ全 SSME を止め、SRB を点火せず、射場アボートとなる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/607）GLS は発射コミット基準を監視して違反があれば自動でカットオフし、カットオフで RSLS は制御を GLS に戻す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/986）続いて安全化のプログラムが自動で始まり、走らなければ LCC の管制員が手動で系を安全化する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/986）射場アボート・ホールドでの G1 から G9 への OPS 遷移は乗員か KSC の LDB 指令で行い、両方ができなければ MCC が行える。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1332）Mode 1 の脱出では NTD がオービタアクセスアーム（OAA）をハッチの位置へ戻させ、乗員が自力で OAA を通りスライドワイヤのバスケットへ逃げる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/853）SSME 始動前のスクラブでは、通常は整然とした安全化の手順と、クローズアウトクルーの助けによる乗員の退出が続く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/853） |
| UC-03 | 上昇する（SRB 点火〜MECO） | CREW・MCC・RSO | 図84 | UC-10 | UC-04→UC-03 | Ascent | 上昇の飛行フェーズは SRB 点火に始まり、OMS-2 の停止まで続く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/987）離昇から MECO まで、SSME が正常なら MPS のシーケンスと制御は全て GPC が自動で実行する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/607）動力飛行中、乗員は MCC の音声の呼びかけで現在のアボート能力を把握する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/855） |
| UC-04 | 上昇アボート（RTLS・TAL・AOA・ATO）を行う | CREW・MCC | 図97・図76（TR-14〜16・TR-19〜21） | — | UC-04→UC-03 | AscentAbort | MCC は ARD でアボートの能力を実時間で評価できるため、アボートモードの決定に主な責任を持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/987）上昇のアボートには、計画した着陸地へ安全に戻すインタクトアボートと、より重い故障で乗員の生存を図るコンティンジェンシアボートがある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/855）動力飛行中、乗員は MCC の音声の呼びかけで現在のアボート能力を把握する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/855）2 ENGINE TAL は2基で TAL の MECO 目標に届く最も早い慣性速度で、これより前のエンジン故障は多くの場合 RTLS となる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/856）TAL は 2 ENGINE TAL から PRESS TO ATO までの1基故障に対するインタクトアボートで、離昇の約40分後に着陸する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/869）AOA は軌道に入れないか OMS-1・OMS-2・離脱噴射に足る OMS 推進薬がないときに使い、離昇の約1時間45分後に着陸する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/873）ATO は名目より低い安全な軌道を得るアボートで、MECO 前に ABORT MODE スイッチか SPEC 51 で選ぶと OMS ダンプが行われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/877）アボートや着陸地・滑走路の変更は、通信があれば MCC の指示でのみ行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/980） |
| UC-05 | 軌道に投入し軌道運用の GO を得る | CREW・MCC | 図84（AS-14〜17）・図76 | — | — | OrbitInsertion | 上昇の飛行フェーズは SRB 点火に始まり、OMS-2 の停止まで続く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/987）直接投入では、OMS-2 噴射で軌道を円にする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/663）主要な系に問題がなければ、MCC は軌道運用の GO を出す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/829） |
| UC-06 | RMS でペイロードを放出する | CREW・MCC・POCC | 図96 | — | UC-08→UC-06 | PayloadDeploy | 遠隔のペイロード運用管制センタ（POCC）があるときは、主要なペイロードの活動の責任は POCC の長にある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/989）放出の運用は、ベイのペイロードを把持し、保持ラッチを解き、取り出して放出の位置・向きへ運び、放出することである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/706）ペイロードを放すには、キャリッジを伸ばして（デリジダイズ）プローブの張力をなくし、スネアを開く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/693）放出の運用を続ける前に、全ての PRLA・AKA に目視の手がかりか2つの解放表示の少なくとも1つがなければならない。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1636）RMS の運用は全て2人の操作員のチームで行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/711） |
| UC-07 | ISS とランデブし ODS でドッキングする | CREW・MCC・ISS | 図94 | UC-10 | — | RendezvousDocking | ISS へのランデブ中に、乗員は ISS の乗員がオービタを撮影できるよう RPM を行った。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=13）Ti 噴射はランデブの最終（遷移）段階を始める機上で目標計算する噴射で、オービタを MC4 の位置へ向かわせる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/835）MC4 噴射は +R-bar 上の 600 ft を目標とする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/838）接触で初期接触灯が点くと、乗員は DAP の予備の pbi で PCT を起動し、接触から2秒以内に始める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/678）次の RING IN には MCC の GO が要り、その条件はリングの整列と相対運動がないことである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/679）オービタ側のドッキング機構は能動で、ISS 側は通常受動である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/674） |
| UC-08 | 船外活動（EVA）を行う | CREW・MCC | 図87 | — | UC-08→UC-06・UC-08→UC-12 | ExtravehicularActivity | EVA は2回がペイロード用で、3回目はオービタの緊急運用のために取っておく。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/443）EVA には、予定・予定外・緊急の3つの区分がある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/443）乗員はエンドエフェクタをペイロードから EVA で外す訓練を受けており、解放の手段が1つを残して失われても EVA による解放を頼りに作業を続ける。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=590）EVA は、電気・機械の故障によるペイロードベイドアの閉駆動能力の喪失に対する冗長の一段とみなす。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=590） |
| UC-09 | 軌道離脱・突入・着陸する | CREW・MCC | 図83 | UC-10 | UC-12→UC-09 | DeorbitEntryLanding | CDR が OPS 302 に進むと、離脱噴射の GO/NO-GO が出される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/843）CDR が EXEC キーを押して OMS を点火させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/844）MCC のフライトディレクタは、SRB 点火から着陸後の乗員の退出までシャトルの飛行全体の指揮に責任を持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/987） |
| UC-10 | 指令とテレメトリで運用を監視・制御する | MCC・NET・POCC・CREW | 図85 | — | — | CommandAndTelemetry | MCC の INCO は MCC とシャトルの指令系の運用に責任を持ち、ペイロード宛てを含む全ての指令の承認でフライトディレクタを代表する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/989）S 帯のフォワードリンクは MCC から、上昇・突入では NASA の STDN 地上局を、軌道運用では TDRS を経て送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/162）飛行管制員は膨大なダウンリストのデータで系の性能を解析し、フライトディレクタは CAPCOM かアップリンク指令で乗員へ情報を流す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/979）MCC は、乗員が MCC の GO を要する箇所を予期して先に呼びかける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/979）ペイロードのテレメトリは PCMMU から NSP を経て音声と合わせられ、MCC と POCC へ送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/179） |
| UC-11 | 飛行中の系統故障に対処する（He 漏れ・FC 冷却喪失・火災・キャビン漏れ） | CREW・MCC | 図80・図81・図82・図86 | UC-10 | — | InFlightFailureResponse | 上昇初期の MPS のヘリウム漏れでは、カードの隔離手順でヘリウムの系統を1つずつ閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/895）通信があれば、MCC がヘリウムの漏れ率を解析して処置を勧める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/895）燃料電池の冷却は、冷却材ポンプの故障、交流母線の喪失、ECU の故障などで失われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/893）火災を確認すると、乗員は身を守ったうえで、内蔵か携帯のハロン消火器を放出して消火する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/891）キャビンの漏れへの乗員の対処は、漏れの大きさの評価、系の組替えによる隔離、電力の削減、軌道離脱の準備の4段階である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/890） |
| UC-12 | ペイロードベイドアの閉鎖不能に対処する | CREW・MCC | 図88 | UC-08 | UC-08→UC-12・UC-12→UC-09 | PayloadBayDoorFailure | ペイロードベイドアやラッチなど機械で動かす系の故障は、電気・機械・DPS のいずれにも起因しうる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/894）EVA は、電気・機械の故障によるペイロードベイドアの閉駆動能力の喪失に対する冗長の一段とみなす。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=590） |

## 5. 図94 のライフライン

図94 ランデブー・ドッキング シーケンス図（ISS とのランデブ・ドッキング（Ti 噴射〜ODS による捕獲・ハッチ開））のライフライン 8件を示す。

| ID | ライフライン | 文書 | SysML |
|---|---|---|---|
| CREW | 乗員（CDR・PLT・MS） | — | crew |
| MCC | 地上（MCC） | — | mcc |
| GPC | GPC（DPS・GN&C） | SSD-FD-DPS-001 | gpc |
| KU | C&T：Ku 帯（レーダ） | SSD-FD-CT-KU-001 | ku |
| OMS | 軌道制御系（OMS） | SSD-FD-OMS-001 | oms |
| RCS | 姿勢制御系（RCS） | SSD-FD-RCS-001 | rcs |
| ODS | オービタドッキング系（ODS・APDS） | SSD-FD-PLS-ODS-001 | ods |
| ISS | ISS（受動側） | — | iss |

## 6. 図94 のメッセージ

図94 ランデブー・ドッキング シーケンス図のメッセージ 18件を、上から順に示す。

| ID | 時刻 | 区間 | 送り手 → 受け手 | 内容 | 経路・IF | SysML | 根拠 |
|---|---|---|---|---|---|---|---|
| RD-01 | 前日 | PH-3 軌道（ランデブ） | 乗員（CDR・PLT・MS） → オービタドッキング系（ODS・APDS） | ODS を初期化しリングを初期位置へ伸ばす | — | RD_01（RdMsg01） | ドッキングの前日に、乗員はドッキング系を初期化・確認・構成する手順を行い、終わると電源を切る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/833）RING OUT の指令でリングを初期位置（最終位置から 15.7 in）まで約 4.3 in/min で伸ばす。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/678） |
| RD-02 | TI前 | PH-3 軌道（ランデブ） | 乗員（CDR・PLT・MS） → C&T：Ku 帯（レーダ） | Ku 帯を RADAR モードにする | — | RD_02（RdMsg02） | 乗員はランデブのため Ku 帯を RADAR モードにし、距離 144,000 ft で ISS を検出した（STS-135）。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=10） |
| RD-03 | TI前 | PH-3 軌道（ランデブ） | C&T：Ku 帯（レーダ） → GPC（DPS・GN&C） | レーダ捕捉（約150 kft）、距離・距離変化率 | IF-ORB-24 | RD_03（RdMsg03） | 乗員はランデブのため Ku 帯を RADAR モードにし、距離 144,000 ft で ISS を検出した（STS-135）。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=10）ランデブレーダは距離約 150 kft で捕捉し、角度に加えて距離と距離変化率を与える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/835） |
| RD-04 | TI | PH-3 軌道（ランデブ） | GPC（DPS・GN&C） → 軌道制御系（OMS） | Ti 噴射（機上で目標計算、MC4 位置へ） | IF-ORB-04 | RD_04（RdMsg04） | Ti 噴射はランデブの最終（遷移）段階を始める機上で目標計算する噴射で、オービタを MC4 の位置へ向かわせる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/835）STS-122 の OMS-7（Ti）噴射は左エンジンの単独噴射であった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=13） |
| RD-05 | TI後 | PH-3 軌道（ランデブ） | C&T：Ku 帯（レーダ） → GPC（DPS・GN&C） | レーダ・ST で航法を更新し MC 噴射を計算 | IF-ORB-24 | RD_05（RdMsg05） | Ti 後はレーダか ST のデータで航法を更新し、4回の中間修正噴射の目標計算に使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/835） |
| RD-06 | MC1〜MC3 | PH-3 軌道（ランデブ） | GPC（DPS・GN&C） → 姿勢制御系（RCS） | 中間修正 MC1〜MC3（残差の整え） | IF-ORB-03 | RD_06（RdMsg06） | MC1 は Ti の残差を整える噴射で、MC2 は時刻でなく目標への仰角に基づいて行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/838）STS-135 の MC2〜MC4 は主スラスタを使う多軸の RCS 噴射であった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=11） |
| RD-07 | MC4 | PH-3 軌道（ランデブ） | GPC（DPS・GN&C） → 姿勢制御系（RCS） | MC4 噴射（+R-bar 上 600 ft が目標） | IF-ORB-03 | RD_07（RdMsg07） | MC4 噴射は +R-bar 上の 600 ft を目標とする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/838） |
| RD-08 | MC4後 | PH-3 軌道（ランデブ） | 乗員（CDR・PLT・MS） → GPC（DPS・GN&C） | 手動段階：THC で R-dot を修正（ブレーキング） | — | RD_08（RdMsg08） | MC4 後の手動段階では +R-bar の姿勢へ向け、R-dot の修正（ブレーキングゲート）を行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/838）放出後にペイロードから離れる最初の機動のような小さな速度変化には RCS を使い、CDR・PLT が THC と DAP パネルで GPC へ指令する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/925） |
| RD-09 | R-bar 600 ft | PH-3 軌道（ランデブ） | GPC（DPS・GN&C） → 姿勢制御系（RCS） | R-bar ピッチ機動（RPM） | IF-ORB-03 | RD_09（RdMsg09） | STS-122 の R-bar ピッチ機動（RPM）は約7分55秒続き、最大ピッチ角速度は約 0.7 deg/s であった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=14） |
| RD-10 | RPM中 | PH-3 軌道（ランデブ） | ISS（受動側） → 地上（MCC） | ISS 乗員が下面を撮影し画像を地上へ | — | RD_10（RdMsg10） | ISS へのランデブ中に、乗員は ISS の乗員がオービタを撮影できるよう RPM を行った。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=13）ドッキングへの最終接近中に撮った RPM のデジタル画像はダウンリンクされ、TPS の損傷評価に使われた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=17） |
| RD-11 | 最終接近 | PH-3 軌道（ランデブ） | GPC（DPS・GN&C） → 姿勢制御系（RCS） | TORVA で +V-bar へ遷移し接近 | IF-ORB-03 | RD_11（RdMsg11） | TORVA では +R-bar の 600 ft まで飛び、軌道角速度の2倍で +V-bar へ遷移する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/838） |
| RD-12 | V-bar | PH-3 軌道（ドッキング） | 乗員（CDR・PLT・MS） → オービタドッキング系（ODS・APDS） | ODS の電源を入れる（内側ハッチ閉） | — | RD_12（RdMsg12） | V-bar（または R-bar）の最終接近でドッキング系の電源を再び入れ、内側のエアロックハッチを閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/678） |
| RD-13 | 接触 | PH-3 軌道（ドッキング） | 乗員（CDR・PLT・MS） → GPC（DPS・GN&C） | 接触から2秒以内に PCT を起動 | — | RD_13（RdMsg13） | 接触で初期接触灯が点くと、乗員は DAP の予備の pbi で PCT を起動し、接触から2秒以内に始める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/678） |
| RD-14 | 接触 | PH-3 軌道（ドッキング） | GPC（DPS・GN&C） → 姿勢制御系（RCS） | PCT 噴射で APDS の捕獲力を与える | IF-ORB-03 | RD_14（RdMsg14） | PCT は、動荷重を超えずに APDS による捕獲に必要な力を与える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/678） |
| RD-15 | 捕獲 | PH-3 軌道（ドッキング） | オービタドッキング系（ODS・APDS） → 乗員（CDR・PLT・MS） | 捕獲灯、5秒後にダンパで減衰 | — | RD_15（RdMsg15） | 捕獲で捕獲灯が点き、5秒後に電磁ブレーキ（ダンパ）が自動で働いて相対運動を減衰させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/678）捕獲してもオービタか ISS が信号を受けない（ISS がフリードリフトにならない）場合、相対運動が安定なら待つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/679） |
| RD-16 | 捕獲後 | PH-3 軌道（ドッキング） | 地上（MCC） → 乗員（CDR・PLT・MS） | 整列・相対運動なしで RING IN の GO | — | RD_16（RdMsg16） | 次の RING IN には MCC の GO が要り、その条件はリングの整列と相対運動がないことである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/679） |
| RD-17 | 捕獲後 | PH-3 軌道（ドッキング） | オービタドッキング系（ODS・APDS） → ISS（受動側） | リング引込み・構造フック閉（ハードメイト） | — | RD_17（RdMsg17） | RING IN でリングを引き込むと準備完了の信号で構造フックが閉じ、INTERFACE SEALED センサが働く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/679）STS-122 では捕獲後に約7分31秒減衰させ、リング引込み・フック閉・リング伸展で捕獲ラッチを解き、最終位置でドッキングを終えた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=14） |
| RD-18 | ドッキング後 | PH-3 軌道（ドッキング） | 乗員（CDR・PLT・MS） → ISS（受動側） | ハッチを開けて移送を始める | — | RD_18（RdMsg18） | STS-135 では、ハッチを 191/16:34 GMT に開いた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=11）ハッチを開けた後、乗員の歓迎と安全の説明を経て移送作業を始めた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=20） |

## 7. 図95 のライフライン

図95 最終秒読み〜RSLS アボート シーケンス図（最終秒読みと RSLS アボート（SSME 始動後の射場アボート））のライフライン 8件を示す。

| ID | ライフライン | 文書 | SysML |
|---|---|---|---|
| LCC | 打上げ管制（LCC・GLS・NTD） | — | lcc |
| CREW | 乗員 | — | crew |
| MCC | 地上（MCC） | — | mcc |
| GPC | GPC（RSLS） | SSD-FD-DPS-001 | gpc |
| APU | APU/HYD | SSD-FD-APU-001 | apu |
| MECH | 機械系（ベント扉） | SSD-FD-MECH-001 | mech |
| MPS | 主推進系（MPS・SSME） | SSD-FD-MPS-001 | mps |
| SRB | SRB | SSD-FD-SRB-001 | srb |

## 8. 図95 のメッセージ

図95 最終秒読み〜RSLS アボート シーケンス図のメッセージ 16件を、上から順に示す。

| ID | 時刻 | 区間 | 送り手 → 受け手 | 内容 | 経路・IF | SysML | 根拠 |
|---|---|---|---|---|---|---|---|
| RS-01 | T−9分 | PH-1 打上げ前 | 打上げ管制（LCC・GLS・NTD） → 乗員 | 打上げの GO、GLS シーケンス開始 | — | RS_01（RsMsg01） | LCC の打上げディレクタが打上げチームに最終の GO を出し、T−9分の計画ホールドで MMT の議長が全要素の可否を問う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/986）T−9分に秒読みを再開すると、全ての作業は地上打上げシーケンサ（GLS）という計算機システムの制御下に入る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/986）T−9分に打上げの GO が出て、イベントタイマが始動する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/822） |
| RS-02 | T−5分 | PH-1 打上げ前 | 乗員 → APU/HYD | APU 3台を始動し主ポンプを加圧 | — | RS_02（RsMsg02） | T−5分にパイロットが3台の APU を始動し、主ポンプを加圧して約 3,000 psi を確かめる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/104） |
| RS-03 | T−4分5秒 | PH-1 打上げ前 | APU/HYD → 主推進系（MPS・SSME） | 油圧の供給（2,800 psi 未満なら自動ホールド） | IF-ORB-07 | RS_03（RsMsg03） | T−4分5秒までに3系統の主ポンプ圧力が 2,800 psi を超えなければ、GLS が自動で打上げをホールドする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/104） |
| RS-04 | T−2分55秒 | PH-1 打上げ前 | 打上げ管制（LCC・GLS・NTD） → 主推進系（MPS・SSME） | LO2 タンクのベント弁を閉じ He で加圧 | IF-ORB-29 | RS_04（RsMsg04） | T−2分55秒に打上げ処理システムが LO2 タンクのベント弁を閉じ、地上のヘリウムで 21 psig に加圧する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/606） |
| RS-05 | T−31秒 | PH-1 打上げ前 | 打上げ管制（LCC・GLS・NTD） → GPC（RSLS） | GO FOR AUTO SEQUENCE START | IF-ORB-17 | RS_05（RsMsg05） | T−31秒に GLS が GPC の RSLS へ GO FOR AUTO SEQUENCE START を送り、RSLS がベント扉の構成・主エンジンの始動・SRB 点火の指令を行えるようにする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/986）以後の全シーケンスは機上時計に基づき冗長セットの GPC が行うが、GPC は打上げ処理システムのホールド・再開・リサイクルの指令には応じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/606）T−31秒以後は、MCC は秒読みのホールドを呼ばない。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=59） |
| RS-06 | T−28秒 | PH-1 打上げ前 | GPC（RSLS） → 機械系（ベント扉） | ベント扉を順に開く | IF-ORB-40 | RS_06（RsMsg06） | ベント扉は T−28秒までパージ位置にあり、RSLS が開のシーケンスを呼ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/621） |
| RS-07 | T−16秒 | PH-1 打上げ前 | GPC（RSLS） → SRB | SRB 点火・ホールドダウン解放の PIC をアーム | IF-ORB-26 | RS_07（RsMsg07） | T−16秒に、GPC が SRB 点火・ホールドダウン解放・T-0 アンビリカル解放の起爆制御器のアーム指令を出し始める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/606） |
| RS-08 | T−9.5秒 | PH-1 打上げ前 | GPC（RSLS） → 主推進系（MPS・SSME） | LH2 プリバルブを開く | IF-ORB-06 | RS_08（RsMsg08） | T−9.5秒にエンジンの冷却が終わり、GPC が LH2 プリバルブを開く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/606） |
| RS-09 | T−6.6秒 | PH-1 打上げ前 | GPC（RSLS） → 主推進系（MPS・SSME） | SSME の始動を指令 | IF-ORB-06 | RS_09（RsMsg09） | T−6.6秒に GPC がエンジンの始動指令を出し、各エンジンの主燃料弁が開く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/606） |
| RS-10 | T−6.6〜3秒 | PH-1 打上げ前 | 主推進系（MPS・SSME） → GPC（RSLS） | Pc・エンジン状態を返す（乗員も Pc を監視） | IF-ORB-06 | RS_10（RsMsg10） | SSME の順次始動は、OMS/MPS の MEDS 表示の燃焼室圧力（Pc）で監視する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/912）主エンジンのリミットが有効なら、制御器はレッドライン違反を検知してエンジンを自動で止める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/602） |
| RS-11 | T−3秒 | PH-1 打上げ前 | GPC（RSLS） → 主推進系（MPS・SSME） | 90% 未満の SSME があれば全 SSME を停止 | IF-ORB-06 | RS_11（RsMsg11） | T−3秒に1基でも定格推力の 90% に達しなければ全 SSME を止め、SRB を点火せず、射場アボートとなる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/607） |
| RS-12 | 停止後 | AB-PAD 射場アボート | GPC（RSLS） → 打上げ管制（LCC・GLS・NTD） | RSLS が制御を GLS に戻す（SRB は非点火） | IF-ORB-17 | RS_12（RsMsg12） | GLS は発射コミット基準を監視して違反があれば自動でカットオフし、カットオフで RSLS は制御を GLS に戻す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/986）T−3秒に1基でも定格推力の 90% に達しなければ全 SSME を止め、SRB を点火せず、射場アボートとなる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/607） |
| RS-13 | 停止後 | AB-PAD 射場アボート | 打上げ管制（LCC・GLS・NTD） → GPC（RSLS） | GLS の安全化プログラム（不可なら手動） | IF-ORB-17 | RS_13（RsMsg13） | 続いて安全化のプログラムが自動で始まり、走らなければ LCC の管制員が手動で系を安全化する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/986）SSME 始動後の射場アボートで最も重大な危険は、過剰な水素による目に見えない水素火災である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/853） |
| RS-14 | 停止後 | AB-PAD 射場アボート | 乗員 → GPC（RSLS） | G1→G9 の OPS 遷移 | — | RS_14（RsMsg14） | 射場アボート・ホールドでの G1 から G9 への OPS 遷移は乗員か KSC の LDB 指令で行い、両方ができなければ MCC が行える。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1332） |
| RS-15 | 停止後 | AB-PAD 射場アボート | 地上（MCC） → GPC（RSLS） | 乗員・KSC とも不可なら G1→G9 を指令 | IF-ORB-16・IF-ORB-01 | RS_15（RsMsg15） | 射場アボート・ホールドでの G1 から G9 への OPS 遷移は乗員か KSC の LDB 指令で行い、両方ができなければ MCC が行える。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1332） |
| RS-16 | 緊急時 | AB-PAD 射場アボート | 打上げ管制（LCC・GLS・NTD） → 乗員 | NTD が脱出モードを指示（OAA を戻す） | — | RS_16（RsMsg16） | 射点での緊急時は、LCC の発射室で卓につく NASA テストディレクタ（NTD）が指揮をとる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/853）Mode 1 の脱出では NTD がオービタアクセスアーム（OAA）をハッチの位置へ戻させ、乗員が自力で OAA を通りスライドワイヤのバスケットへ逃げる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/853） |

## 9. 図96 の節点

図96 RMS によるペイロード放出 活動図（RMS によるペイロードの放出（PRLA・エンドエフェクタの故障時の EVA と投棄を含む））の節点 16件を示す。

| ID | 種別 | 内容 | 機能 | SysML | 根拠 |
|---|---|---|---|---|---|
| ST-PD | 開始 | — | — | start | — |
| AC-PD-01 | 行動 | 肩ブレース解除・MPM 展開・MRL 解除 | F-PLS-OPS-01・F-PLS-ARM-08・F-PLS-MPM-03・F-PLS-MPM-04 | AC_PD_01 | RMS の運用の前に肩のブレースを解除し、荷物を持つ運用では MPM を展開する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/705）RMS 起動の手順では MRL を解き、アームを受け台から出す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/705） |
| AC-PD-02 | 行動 | エンドエフェクタでペイロードを把持 | F-PLS-CTL-04・F-PLS-CTL-01 | AC_PD_02 | 放出の運用は、ベイのペイロードを把持し、保持ラッチを解き、取り出して放出の位置・向きへ運び、放出することである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/706）標準のエンドエフェクタは回転するリングで3本のワイヤスネアをグラップルフィクスチャに巻き付けて捕らえる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/693）RMS の運用は全て2人の操作員のチームで行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/711） |
| AC-PD-03 | 行動 | ペイロード保持ラッチ（PRLA）を解放 | F-PLS-PRL-01・F-PLS-PRL-05 | AC_PD_03 | PAYLOAD RETENTION LATCHES スイッチを RELEASE にすると保持ラッチが開き、両モータでは30秒かかる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/704） |
| DC-PD-01 | 判断 | 全 PRLA・AKA の解放を確認したか | — | DC_PD_01 | 放出の運用を続ける前に、全ての PRLA・AKA に目視の手がかりか2つの解放表示の少なくとも1つがなければならない。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1636） |
| AC-PD-04 | 行動 | EVA で PRLA を開く | F-PLS-OPS-06 | AC_PD_04 | 解放やラッチに失敗した PRLA は、EVA で開閉することを考える（AKA は除く）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1635） |
| MG-PD-01 | 合流 | — | — | MG_PD_01 | — |
| AC-PD-05 | 行動 | 取り出して放出の位置・向きへ運ぶ | F-PLS-CTL-03・F-PLS-CTL-05 | AC_PD_05 | 放出の運用は、ベイのペイロードを把持し、保持ラッチを解き、取り出して放出の位置・向きへ運び、放出することである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/706） |
| AC-PD-06 | 行動 | デリジダイズしスネアを開いて放出 | F-PLS-CTL-04・F-PLS-ARM-01 | AC_PD_06 | ペイロードを放すには、キャリッジを伸ばして（デリジダイズ）プローブの張力をなくし、スネアを開く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/693） |
| DC-PD-02 | 判断 | 放出できたか（RMS 故障なし） | — | DC_PD_02 | アームの操作員は、RMS の故障を疑ったら直ちに BRAKES スイッチを ON にするよう訓練されている。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/697） |
| DC-PD-03 | 判断 | EVA で解放できるか | — | DC_PD_03 | 乗員はエンドエフェクタをペイロードから EVA で外す訓練を受けており、解放の手段が1つを残して失われても EVA による解放を頼りに作業を続ける。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=590）EVA を行う前でも、ペイロード・RMS を投棄できるのでオービタはフェイルセーフである。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=590） |
| AC-PD-07 | 行動 | EVA でエンドエフェクタを外す | F-PLS-OPS-04 | AC_PD_07 | 乗員はエンドエフェクタをペイロードから EVA で外す訓練を受けており、解放の手段が1つを残して失われても EVA による解放を頼りに作業を続ける。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=590） |
| AC-PD-08 | 行動 | アームとペイロードを一体で投棄 | F-PLS-OPS-05・F-PLS-MPM-05・F-PLS-MPM-06 | AC_PD_08 | RMS とペイロードを投棄するときは、できる限り1つにまとめて投棄する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1752）RMS 投棄は緊急の手順で、アームを衝撃なく分離した後、パイロットが投棄物からオービタを分離する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/707） |
| MG-PD-02 | 合流 | — | — | MG_PD_02 | — |
| AC-PD-09 | 行動 | RCS でオービタを分離（最小 ΔV まで） | — | AC_PD_09 | 放出後にペイロードから離れる最初の機動のような小さな速度変化には RCS を使い、CDR・PLT が THC と DAP パネルで GPC へ指令する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/925）ペイロードの分離の機動は、少なくとも最小の分離速度まで噴射を完了する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=956）RMS 投棄は緊急の手順で、アームを衝撃なく分離した後、パイロットが投棄物からオービタを分離する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/707） |
| EN-PD | 終了 | — | — | done | — |

## 10. 図96 の流れ

図96 RMS によるペイロード放出 活動図の流れ 18件を示す。

| ID | 元 | 先 | ガード | SysML のガード |
|---|---|---|---|---|
| FL-PD-01 | ST-PD（開始） | AC-PD-01（肩ブレース解除・MPM 展開・MRL 解除） | — | — |
| FL-PD-02 | AC-PD-01（肩ブレース解除・MPM 展開・MRL 解除） | AC-PD-02（エンドエフェクタでペイロードを把持） | — | — |
| FL-PD-03 | AC-PD-02（エンドエフェクタでペイロードを把持） | AC-PD-03（ペイロード保持ラッチ（PRLA）を解放） | — | — |
| FL-PD-04 | AC-PD-03（ペイロード保持ラッチ（PRLA）を解放） | DC-PD-01（全 PRLA・AKA の解放を確認したか） | — | — |
| FL-PD-05 | DC-PD-01（全 PRLA・AKA の解放を確認したか） | MG-PD-01（合流） | 解放を確認 | prlaReleased |
| FL-PD-06 | DC-PD-01（全 PRLA・AKA の解放を確認したか） | AC-PD-04（EVA で PRLA を開く） | 解放を確認できない | not prlaReleased |
| FL-PD-07 | AC-PD-04（EVA で PRLA を開く） | MG-PD-01（合流） | — | — |
| FL-PD-08 | MG-PD-01（合流） | AC-PD-05（取り出して放出の位置・向きへ運ぶ） | — | — |
| FL-PD-09 | AC-PD-05（取り出して放出の位置・向きへ運ぶ） | AC-PD-06（デリジダイズしスネアを開いて放出） | — | — |
| FL-PD-10 | AC-PD-06（デリジダイズしスネアを開いて放出） | DC-PD-02（放出できたか（RMS 故障なし）） | — | — |
| FL-PD-11 | DC-PD-02（放出できたか（RMS 故障なし）） | MG-PD-02（合流） | 放出できた | payloadReleased |
| FL-PD-12 | DC-PD-02（放出できたか（RMS 故障なし）） | DC-PD-03（EVA で解放できるか） | 放出できない | not payloadReleased |
| FL-PD-13 | DC-PD-03（EVA で解放できるか） | AC-PD-07（EVA でエンドエフェクタを外す） | EVA を行える | evaReleaseAvailable |
| FL-PD-14 | DC-PD-03（EVA で解放できるか） | AC-PD-08（アームとペイロードを一体で投棄） | EVA を行えない | not evaReleaseAvailable |
| FL-PD-15 | AC-PD-07（EVA でエンドエフェクタを外す） | MG-PD-02（合流） | — | — |
| FL-PD-16 | AC-PD-08（アームとペイロードを一体で投棄） | MG-PD-02（合流） | — | — |
| FL-PD-17 | MG-PD-02（合流） | AC-PD-09（RCS でオービタを分離（最小 ΔV まで）） | — | — |
| FL-PD-18 | AC-PD-09（RCS でオービタを分離（最小 ΔV まで）） | EN-PD（終了） | — | — |

## 11. 図97 の節点

図97 上昇アボートの選択 活動図（上昇アボートのモード選択と TAL・ATO・AOA の流れ（1基のエンジン停止））の節点 17件を示す。

| ID | 種別 | 内容 | 機能 | SysML | 根拠 |
|---|---|---|---|---|---|
| ST-AB | 開始 | — | — | start | — |
| AC-AB-01 | 行動 | エンジン停止を検知し MCC の呼びかけを受ける | F-MPS-OPS-01 | AC_AB_01 | 動力飛行中、乗員は MCC の音声の呼びかけで現在のアボート能力を把握する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/855）MCC は ARD でアボートの能力を実時間で評価できるため、アボートモードの決定に主な責任を持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/987） |
| DC-AB-01 | 判断 | 2 ENGINE TAL より前か | — | DC_AB_01 | 2 ENGINE TAL は2基で TAL の MECO 目標に届く最も早い慣性速度で、これより前のエンジン故障は多くの場合 RTLS となる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/856）NEGATIVE RETURN は RTLS で MECO 目標に届く最後の機会で、これを過ぎたエンジン故障は多くの場合 TAL となる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/856） |
| AC-AB-02 | 行動 | RTLS を選ぶ（以後は図76） | F-ET-SEP-02・F-MPS-DMP-12 | AC_AB_02 | RTLS は離昇後 NEGATIVE RETURN 前のエンジン故障で宣言でき、ABORT MODE を RTLS にして ABORT を押すと GNC のソフトウェアが RTLS に組み替わる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/861） |
| DC-AB-02 | 判断 | PRESS TO ATO より前か | — | DC_AB_02 | PRESS TO ATO は2基で設計の速度不足に届く最も早い速度で、通常は ATO を選んで MECO 前に OMS ダンプを行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/856）TAL は 2 ENGINE TAL から PRESS TO ATO までの1基故障に対するインタクトアボートで、離昇の約40分後に着陸する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/869） |
| AC-AB-03 | 行動 | TAL を選び OMS 推進薬をダンプ | F-OMS-XFD-06・F-OMS-OPS-02・F-RCS-OPS-02 | AC_AB_03 | TAL は 2 ENGINE TAL から PRESS TO ATO までの1基故障に対するインタクトアボートで、離昇の約40分後に着陸する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/869）TAL は MECO 前に ABORT MODE を TAL にし ABORT を押して選び、選ぶと直ちに OMS 推進薬のダンプが始まる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/869） |
| AC-AB-04 | 行動 | MECO・ET 分離の後 OPS 3 へ遷移 | F-GNC-FCS-08・F-ET-SEP-01 | AC_AB_04 | TAL では、MECO と ET 分離の後に GNC OPS 3 への遷移が要り、これは時間が重要である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/871） |
| AC-AB-05 | 行動 | ATO を選ぶ（必要なら MECO 前に OMS ダンプ） | F-OMS-OPS-02 | AC_AB_05 | PRESS TO ATO は2基で設計の速度不足に届く最も早い速度で、通常は ATO を選んで MECO 前に OMS ダンプを行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/856）PRESS TO MECO を過ぎればアボートは要らず、MECO 前の OMS ダンプも要らない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/856）ATO は名目より低い安全な軌道を得るアボートで、MECO 前に ABORT MODE スイッチか SPEC 51 で選ぶと OMS ダンプが行われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/877） |
| AC-AB-06 | 行動 | MECO 後に OMS-1（共通目標） | F-OMS-TVC-08 | AC_AB_06 | OMS-1 は ATO と AOA の共通の目標で行え、最終の決定は OMS-1 の後まで延ばせる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/877） |
| DC-AB-03 | 判断 | OMS-2 で安全な軌道に入れるか | — | DC_AB_03 | AOA は軌道に入れないか OMS-1・OMS-2・離脱噴射に足る OMS 推進薬がないときに使い、離昇の約1時間45分後に着陸する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/873）AOA の実行は MCC の呼びかけと OMS 1/2 TGTING カードとの照合で決め、OMS-1 の後に OPS 3 へ移って OMS-2（離脱）噴射を行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/873）OMS-1 は ATO と AOA の共通の目標で行え、最終の決定は OMS-1 の後まで延ばせる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/877） |
| AC-AB-07 | 行動 | OMS-2 で約105 n.mi. の円軌道へ（ATO） | F-OMS-01 | AC_AB_07 | ATO の2回の OMS 噴射の後、オービタは約 105 n.mi. の円軌道に入り、少なくとも1日は運用を続けられる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/877） |
| AC-AB-08 | 行動 | AOA：OPS 3 で OMS-2（離脱）噴射 | F-APU-OPS-03・F-OMS-06 | AC_AB_08 | AOA の実行は MCC の呼びかけと OMS 1/2 TGTING カードとの照合で決め、OMS-1 の後に OPS 3 へ移って OMS-2（離脱）噴射を行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/873）OMS-1 の後に AOA を選んだ場合は、APU を止めずに油圧系を減圧する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/873） |
| MG-AB-01 | 合流 | — | — | MG_AB_01 | — |
| AC-AB-09 | 行動 | 突入して TAL・AOA のサイトに着陸 | F-GNC-GNS-11・F-GNC-FCS-11 | AC_AB_09 | TAL の MM 304 は通常の突入とほぼ同じだが、引き起こしの段階では 43° の初期迎角を飛ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/871）TAL は 2 ENGINE TAL から PRESS TO ATO までの1基故障に対するインタクトアボートで、離昇の約40分後に着陸する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/869）AOA は軌道に入れないか OMS-1・OMS-2・離脱噴射に足る OMS 推進薬がないときに使い、離昇の約1時間45分後に着陸する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/873） |
| EN-AB-1 | 終了 | — | — | done | — |
| EN-AB-2 | 終了 | — | — | done | — |
| EN-AB-R | 終了 | — | — | done | — |

## 12. 図97 の流れ

図97 上昇アボートの選択 活動図の流れ 17件を示す。

| ID | 元 | 先 | ガード | SysML のガード |
|---|---|---|---|---|
| FL-AB-01 | ST-AB（開始） | AC-AB-01（エンジン停止を検知し MCC の呼びかけを受ける） | — | — |
| FL-AB-02 | AC-AB-01（エンジン停止を検知し MCC の呼びかけを受ける） | DC-AB-01（2 ENGINE TAL より前か） | — | — |
| FL-AB-03 | DC-AB-01（2 ENGINE TAL より前か） | AC-AB-02（RTLS を選ぶ（以後は図76）） | 2 ENGINE TAL より前 | before2EngineTal |
| FL-AB-04 | DC-AB-01（2 ENGINE TAL より前か） | DC-AB-02（PRESS TO ATO より前か） | 2 ENGINE TAL 以後 | not before2EngineTal |
| FL-AB-05 | AC-AB-02（RTLS を選ぶ（以後は図76）） | EN-AB-R（終了） | — | — |
| FL-AB-06 | DC-AB-02（PRESS TO ATO より前か） | AC-AB-03（TAL を選び OMS 推進薬をダンプ） | PRESS TO ATO より前 | beforePressToAto |
| FL-AB-07 | DC-AB-02（PRESS TO ATO より前か） | AC-AB-05（ATO を選ぶ（必要なら MECO 前に OMS ダンプ）） | PRESS TO ATO 以後 | not beforePressToAto |
| FL-AB-08 | AC-AB-03（TAL を選び OMS 推進薬をダンプ） | AC-AB-04（MECO・ET 分離の後 OPS 3 へ遷移） | — | — |
| FL-AB-09 | AC-AB-04（MECO・ET 分離の後 OPS 3 へ遷移） | MG-AB-01（合流） | — | — |
| FL-AB-10 | AC-AB-05（ATO を選ぶ（必要なら MECO 前に OMS ダンプ）） | AC-AB-06（MECO 後に OMS-1（共通目標）） | — | — |
| FL-AB-11 | AC-AB-06（MECO 後に OMS-1（共通目標）） | DC-AB-03（OMS-2 で安全な軌道に入れるか） | — | — |
| FL-AB-12 | DC-AB-03（OMS-2 で安全な軌道に入れるか） | AC-AB-07（OMS-2 で約105 n.mi. の円軌道へ（ATO）） | 安全な軌道に入れる | safeOrbitAchievable |
| FL-AB-13 | DC-AB-03（OMS-2 で安全な軌道に入れるか） | AC-AB-08（AOA：OPS 3 で OMS-2（離脱）噴射） | 入れない（AOA） | not safeOrbitAchievable |
| FL-AB-14 | AC-AB-07（OMS-2 で約105 n.mi. の円軌道へ（ATO）） | EN-AB-2（終了） | — | — |
| FL-AB-15 | AC-AB-08（AOA：OPS 3 で OMS-2（離脱）噴射） | MG-AB-01（合流） | — | — |
| FL-AB-16 | MG-AB-01（合流） | AC-AB-09（突入して TAL・AOA のサイトに着陸） | — | — |
| FL-AB-17 | AC-AB-09（突入して TAL・AOA のサイトに着陸） | EN-AB-1（終了） | — | — |

## 13. IF との対応

シーケンスのメッセージが通る IF 11件と、その IF を使うメッセージを示す。

| 所有文書 | IF | メッセージ |
|---|---|---|
| SSD-FD-CT-001 | IF-ORB-01 | RS-15 |
| SSD-FD-GNC-001 | IF-ORB-03 | RD-06・RD-07・RD-09・RD-11・RD-14 |
| SSD-FD-GNC-001 | IF-ORB-04 | RD-04 |
| SSD-FD-DPS-001 | IF-ORB-06 | RS-08・RS-09・RS-10・RS-11 |
| SSD-FD-APU-001 | IF-ORB-07 | RS-03 |
| SSD-FD-CT-001 | IF-ORB-16 | RS-15 |
| SSD-FD-DPS-001 | IF-ORB-17 | RS-05・RS-12・RS-13 |
| SSD-FD-CT-001 | IF-ORB-24 | RD-03・RD-05 |
| SSD-FD-DPS-001 | IF-ORB-26 | RS-07 |
| SSD-FD-EXT-001 | IF-ORB-29 | RS-04 |
| SSD-FD-DPS-001 | IF-ORB-40 | RS-06 |

## 14. SysML v2 テキスト

同じ内容を SysML v2 のテキスト [SysML/SSD-UC-ORB-001.sysml](../SysML/SSD-UC-ORB-001.sysml) に示す。アクタの part def 8件、ユースケースの use case def 12件（include 6件）、extend の依存 5件、シーケンスの occurrence def 2件、活動の action def 2件、実現の #refinement 18件から成り、構造モデルと振る舞いのモデル（SSD-BEH-ORB-001〜004）を読み込んでから読む。本書の表と同じデータから作り、OMG SysML v2 Pilot Implementation 0.62.0（2026-08 リリース、標準ライブラリ付き）で読み込んで、構文・名前の解決・型の検査で誤り 0件・警告 0件を確かめた。

## 15. 注記（出典間の相違・構成変更）

> **注記** SysML v2 には UML の extend に当たる関係が無いので、extend は依存（dependency）で書いた。

> **注記** 図94 の時刻は Ti 噴射（TIG）を基準とする段階の名で、実際の時刻は飛行で変わる。乗員から系への矢印はスイッチ・THC・DAP の pbi による操作で IF の行でない。

> **注記** 図94 の ODS と ISS の間（RD-17・RD-18）は機体間の機械的結合で、既存の IF 一覧に該当する行がない（新設の候補）。

> **注記** 図95 の SSME 始動後の流れは SCOM 2.16・8.4 による。APU の停止など射場アボート後の乗員の個別の手順は公開資料で確かめられなかった。

> **注記** 図96 の AC-PD-09（オービタの分離）は PLS の機能でなく RCS・GNC の機能で、SSD-FD-PLS-* に該当する F-ID がない。

> **注記** 図97 は1基のエンジン停止の性能アボートを対象とし、2基停止のコンティンジェンシアボート（SCOM 6.7）と系統故障による RTLS/TAL の選択は含めない。PRESS TO MECO 以後はアボート不要で通常の MECO となる（R6-103）。

> **注記** 乗員・搭載計算機・地上の機能の分担（自動化の段階）は [SSD-TSK-ORB-001](SSD-TSK-ORB-001.md) に示す（SysML v2 テキスト：SysML/SSD-TSK-ORB-001.sysml）。

## 16. 参考文献

1. Shuttle Crew Operations Manual 8.4 Launch（USA007587 Rev. A CPN-1、PDF p985） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/985
2. Shuttle Crew Operations Manual 8.6 Orbit（USA007587 Rev. A CPN-1、PDF p989） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/989
3. Shuttle Crew Operations Manual 8.5 Ascent（USA007587 Rev. A CPN-1、PDF p987） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/987
4. Shuttle Crew Operations Manual 8.2 Working with Mission Control（USA007587 Rev. A CPN-1、PDF p979） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/979
5. Shuttle Crew Operations Manual 8.4 Launch（USA007587 Rev. A CPN-1、PDF p986） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/986
6. Shuttle Crew Operations Manual 6.1 Launch Abort Modes and Rationale（USA007587 Rev. A CPN-1、PDF p853） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/853
7. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p179） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/179
8. STS-114 Mission Report Flight Day 2（MDU CDR 2 BITE failure）（PDF p13） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=13
9. Shuttle Crew Operations Manual 2.19 Orbiter Docking System（USA007587 Rev. A CPN-1、PDF p674） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/674
10. Shuttle Crew Operations Manual 6.2 Ascent Aborts（USA007587 Rev. A CPN-1、PDF p858） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/858
11. NSTS-12820 Space Shuttle Operational Flight Rules Vol. A（2002、2214頁） （PDF p997） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=997
12. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p162） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/162
13. Shuttle Crew Operations Manual 5.1 Prelaunch（USA007587 Rev. A CPN-1、PDF p822） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/822
14. NSTS-12820 Space Shuttle Operational Flight Rules Vol. A（2002、2214頁） （PDF p59） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=59
15. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p607） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/607
16. NSTS-12820 Space Shuttle Operational Flight Rules Vol. A（2002、2214頁） （PDF p1332） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1332
17. Shuttle Crew Operations Manual 6.2 Ascent Aborts（USA007587 Rev. A CPN-1、PDF p855） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/855
18. Shuttle Crew Operations Manual 6.2 Ascent Aborts（USA007587 Rev. A CPN-1、PDF p856） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/856
19. Shuttle Crew Operations Manual 6.4 Transoceanic Abort Landing（USA007587 Rev. A CPN-1、PDF p869） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/869
20. Shuttle Crew Operations Manual 6.5 Abort Once Around（USA007587 Rev. A CPN-1、PDF p873） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/873
21. Shuttle Crew Operations Manual 6.6 Abort to Orbit（USA007587 Rev. A CPN-1、PDF p877） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/877
22. Shuttle Crew Operations Manual 8.2 Working with Mission Control（USA007587 Rev. A CPN-1、PDF p980） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/980
23. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p663） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/663
24. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 5.2節 Ascent（Post Insertion、続き）（PDF p829） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/829
25. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p706） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/706
26. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p693） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/693
27. NSTS-12820 Space Shuttle Operational Flight Rules Vol. A（2002、2214頁） （PDF p1636） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1636
28. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p711） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/711
29. Shuttle Crew Operations Manual 5.3 Orbit（USA007587 Rev. A CPN-1、PDF p835） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/835
30. Shuttle Crew Operations Manual 5.3 Orbit（USA007587 Rev. A CPN-1、PDF p838） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/838
31. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.19節 APDS Operational Sequences（Docking）（PDF p678） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/678
32. Shuttle Crew Operations Manual 2.19 Orbiter Docking System（USA007587 Rev. A CPN-1、PDF p679） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/679
33. Shuttle Crew Operations Manual 2.11 Extravehicular Activity（USA007587 Rev. A CPN-1、PDF p443） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/443
34. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A2-104 Systems Redundancy Requirements（PDF p590） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=590
35. Shuttle Crew Operations Manual 5.4 Entry（USA007587 Rev. A CPN-1、PDF p843） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/843
36. Shuttle Crew Operations Manual 5.4 Entry（USA007587 Rev. A CPN-1、PDF p844） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/844
37. Shuttle Crew Operations Manual 6.8 Systems Failures（USA007587 Rev. A CPN-1、PDF p895） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/895
38. Shuttle Crew Operations Manual 6.8 Systems Failures（USA007587 Rev. A CPN-1、PDF p893） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/893
39. Shuttle Crew Operations Manual 6.8 Systems Failures（USA007587 Rev. A CPN-1、PDF p891） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/891
40. Shuttle Crew Operations Manual 6.8 Systems Failures（USA007587 Rev. A CPN-1、PDF p890） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/890
41. Shuttle Crew Operations Manual 6.8 Systems Failures（USA007587 Rev. A CPN-1、PDF p894） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/894
42. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 5.3節 Orbit（PDF p833） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/833
43. STS-135 Mission Report Flight Day 3（GPC 3）（PDF p10） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=10
44. STS-122 Mission Report （PDF p13） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=13
45. STS-135 Mission Report （PDF p11） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=11
46. Shuttle Crew Operations Manual 7.2 Orbit（USA007587 Rev. A CPN-1、PDF p925） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/925
47. STS-122 Mission Report （PDF p14） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=14
48. STS-114 Mission Report Flight Summary（PDF p17） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=17
49. STS-135 Mission Report （PDF p20） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=20
50. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p104） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/104
51. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p606） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/606
52. Shuttle Crew Operations Manual 2.17 Mechanical Systems（USA007587 Rev. A CPN-1、PDF p621） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/621
53. Shuttle Crew Operations Manual 7.1 Ascent（USA007587 Rev. A CPN-1、PDF p912） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/912
54. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p602） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/602
55. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p705） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/705
56. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p704） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/704
57. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-281 PRLA'S/AKA'S（PDF p1635） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1635
58. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p697） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/697
59. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A12-182 RMS/PAYLOAD JETTISON（PDF p1752） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1752
60. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p707） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/707
61. NSTS-12820 Space Shuttle Operational Flight Rules Vol. A（2002、2214頁） （PDF p956） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=956
62. Shuttle Crew Operations Manual 6.3 Return to Launch Site（USA007587 Rev. A CPN-1、PDF p861） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/861
63. Shuttle Crew Operations Manual 6.4 Transoceanic Abort Landing（USA007587 Rev. A CPN-1、PDF p871） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/871

## 17. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-03 | 初版作成（アクタ 8件・ユースケース 12件の図93 運用のユースケース図、図94 ランデブー・ドッキング シーケンス図のメッセージ 18件、図95 最終秒読み〜RSLS アボート シーケンス図のメッセージ 16件、図96 RMS によるペイロード放出 活動図の節点 16件、図97 上昇アボートの選択 活動図の節点 17件、SysML v2 テキスト） |
| Rev. A | 2026-10-07 | 乗員の作業分析・機能の分担定義書 SSD-TSK-ORB-001 への参照を注記（Rev. BA） |
