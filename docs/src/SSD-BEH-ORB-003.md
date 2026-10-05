# シーケンス定義書（軌道離脱〜着陸・上昇・指令とテレメトリの経路）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-BEH-ORB-003 |
| 表題 | シーケンス定義書（軌道離脱〜着陸・上昇・指令とテレメトリの経路） |
| 版・日付 | Rev. B／2026-10-03 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-BEH-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図83 軌道離脱〜着陸 シーケンス図・図84 上昇 シーケンス図・図85 指令・テレメトリ経路 シーケンス図 |

## 1. 目的

複数の系・乗員・地上が順にやり取りする場面をシーケンス図で示す。図83 軌道離脱〜着陸 シーケンス図・図84 上昇 シーケンス図・図85 指令・テレメトリ経路 シーケンス図 のメッセージは、系どうしのやり取りでは上位・下位の IF の ID に結び付け、IF 一覧が実際の動きで使われていることを示す。同じライフラインとメッセージを SysML v2 のテキスト（model/SSD-BEH-ORB-003.sysml）でも示す。

## 2. 書き方

ライフラインは系・乗員・地上で、系は機能説明書へのリンクを持つ。メッセージは時刻（目安）・送り手・受け手・内容・経路で、経路の欄は系どうしでは IF の ID、乗員の操作では「表示・操作部」「スイッチ」、地上と乗員の間は「音声」とする。区間は SSD-OPS-PHASE-001 の飛行フェーズである。

## 3. 図83 のライフライン

図83 軌道離脱〜着陸 シーケンス図（軌道離脱の準備から着陸後まで（標準の EOM））のライフライン 7件を示す。

| ID | ライフライン | 文書 | SysML |
|---|---|---|---|
| CREW | 乗員（CDR・PLT・MS） | — | crew |
| MCC | 地上（MCC） | — | mcc |
| GPC | GPC（DPS・GN&C） | SSD-FD-DPS-001 | gpc |
| OMS | 軌道制御系（OMS） | SSD-FD-OMS-001 | oms |
| APU | APU/HYD | SSD-FD-APU-001 | apu |
| ECLSS | ECLSS（ATCS） | SSD-FD-ECL-ATCS-001 | eclss |
| MECH | 機械系（ドア・ベント扉・脚・減速傘） | SSD-FD-MECH-001 | mech |

## 4. 図83 のメッセージ

図83 軌道離脱〜着陸 シーケンス図のメッセージ 27件を、上から順に示す。

| ID | 時刻 | 区間 | 送り手 → 受け手 | 内容 | 経路・IF | SysML | 根拠 |
|---|---|---|---|---|---|---|---|
| DO-01 | TIG−3:56 | PH-4 離脱準備 | 乗員（CDR・PLT・MS） → ECLSS（ATCS） | 放熱器のコールドソークを始める（RAD CNTLR OUT TEMP を HI） | スイッチ | DO_01（StartRadiatorColdsoak） | TIG の約3時間56分前に、CDR は RAD CNTLR OUT TEMP スイッチを HI にして放熱器のコールドソークを始める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/841） |
| DO-02 | TIG−2:55 | PH-4 離脱準備 | 乗員（CDR・PLT・MS） → ECLSS（ATCS） | 放熱器をバイパスしてコールドソークを保つ | スイッチ | DO_02（RadiatorBypass） | TIG の約2時間55分前に、CDR は放熱器をバイパスしてフレオンのコールドソークを保つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/841） |
| DO-03 | TIG−2:40 | PH-4 離脱準備 | 乗員（CDR・PLT・MS） → GPC（DPS・GN&C） | ペイロードベイドアの閉鎖を指令（SM PL BAY DOORS） | 表示・操作部 | DO_03（ClosePayloadBayDoors） | TIG の約2時間40分前に、乗員は IDP 4 の SM PL BAY DOORS 表示でペイロードベイドアを閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/841） |
| DO-04 | TIG−2:40 | PH-4 離脱準備 | GPC（DPS・GN&C） → 機械系（ドア・ベント扉・脚・減速傘） | ペイロードベイドアを閉じる（MDM→MCA） | IF-ORB-40 | DO_04（DoorCommand） | MCAへのモータの入切の指令は、GPC、DPSの項目入力、またはハードワイヤのスイッチから出る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/619） |
| DO-05 | TIG−2:16 | PH-4 離脱準備 | 乗員（CDR・PLT・MS） → GPC（DPS・GN&C） | GPC 1〜4 を PASS OPS 3、GPC 5 を BFS OPS 3 にする | 表示・操作部 | DO_05（Ops3Transition） | TIG の約2時間16分前に、CDR・PLT は GPC 1〜4 を PASS OPS 3、GPC 5 を BFS OPS 3 にする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/842） |
| DO-06 | TIG−1:42 | PH-4 離脱準備 | 地上（MCC） → GPC（DPS・GN&C） | 状態ベクトルと離脱の目標をアップリンク | IF-ORB-16・IF-ORB-01 | DO_06（StateVectorUplink） | TIG の約1時間42分前に、MCC は PAD を読み上げ、状態ベクトルと離脱の目標をアップリンクする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/842） |
| DO-07 | TIG−0:40 | PH-4 離脱準備 | 乗員（CDR・PLT・MS） → 軌道制御系（OMS） | OMS TVC のジンバル点検 | 表示・操作部 | DO_07（OmsGimbalCheck） | TIG の約40分前に、CDR は OMS MNVR EXEC 表示で OMS TVC のジンバル点検を行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/843） |
| DO-08 | TIG−0:25 | PH-4 離脱準備 | 乗員（CDR・PLT・MS） → GPC（DPS・GN&C） | ベント扉の閉鎖を指令（GNC 51 OVERRIDE） | 表示・操作部 | DO_08（VentDoorClose） | TIG の約25分前に、PLT は GNC 51 OVERRIDE 表示でベント扉を閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/843） |
| DO-09 | TIG−0:25 | PH-4 離脱準備 | GPC（DPS・GN&C） → 機械系（ドア・ベント扉・脚・減速傘） | ベント扉を閉じる | IF-ORB-40 | DO_09（DoorCommand） | ベント扉はGNCのソフトウェアのシーケンスで操作し、秒読みのT-28秒にRSLSが開のシーケンスを呼ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/621） |
| DO-10 | TIG−0:25 | PH-4 離脱準備 | 地上（MCC） → 乗員（CDR・PLT・MS） | 離脱噴射の GO/NO-GO（OPS 302） | 音声 | DO_10（DeorbitGo） | CDR は OPS 302 に進み、離脱噴射の GO/NO-GO が出される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/843） |
| DO-11 | TIG−0:05 | PH-4 離脱準備 | 乗員（CDR・PLT・MS） → APU/HYD | APU 1基を始動（低圧） | スイッチ | DO_11（SingleApuStart） | TIG の約5分前に、PLT は APU 1基を始動する。噴射の前に1基が低圧で動いていなければならない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/843） |
| DO-12 | TIG | PH-6a 離脱噴射〜突入 | GPC（DPS・GN&C） → 軌道制御系（OMS） | OMS を点火（離脱噴射、通常2〜3分） | IF-ORB-04 | DO_12（OmsIgnition） | CDR は EXEC キーで OMS を点火させ、離脱噴射の時間は通常2〜3分である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/844） |
| DO-13 | 噴射後 | PH-6a 離脱噴射〜突入 | 乗員（CDR・PLT・MS） → GPC（DPS・GN&C） | OPS 303 へ進む | 表示・操作部 | DO_13（Ops303Transition） | 正常な噴射の後、CDR は OPS 303 に進み、EI の5分前の姿勢へ向ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/844） |
| DO-14 | EI−13:00 | PH-6a 離脱噴射〜突入 | 乗員（CDR・PLT・MS） → APU/HYD | 残る2基の APU を始動し、3基を通常圧力にする | スイッチ | DO_14（RemainingApuStart） | EI の13分前に、PLT は残る2基の APU を始動し、3基とも通常圧力にする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/844） |
| DO-15 | EI−13:00 | PH-6a 離脱噴射〜突入 | APU/HYD → GPC（DPS・GN&C） | 油圧の供給（空力舵面・主エンジンのノズルの格納） | IF-ORB-08 | DO_15（HydraulicPressure） | PLT は主エンジンの油圧系を再加圧して、ノズルが正しく格納されていることを確かめる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/844） |
| DO-16 | EI−5:00 | PH-6a 離脱噴射〜突入 | 乗員（CDR・PLT・MS） → GPC（DPS・GN&C） | OPS 304 へ遷移 | 表示・操作部 | DO_16（Ops304Transition） | EI の5分前の姿勢を確かめると、CDR は GPC を OPS 304 に遷移させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/845） |
| DO-17 | EI+18:57 | PH-6b 突入〜滑空 | 乗員（CDR・PLT・MS） → ECLSS（ATCS） | 放熱器のコールドソークの使用を始める | スイッチ | DO_17（UseRadiatorColdsoak） | EI の約19分後（Mach 12）に、FES が働かなくなるのに備えて放熱器のコールドソークの使用を始める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/846） |
| DO-18 | EI+22:00 | PH-6b 突入〜滑空 | 地上（MCC） → 乗員（CDR・PLT・MS） | TACAN を航法に取り込む GO | 音声 | DO_18（TakeTacan） | MCC と乗員は TACAN のデータを航法と比べ、よければ MCC が TACAN を取り込むよう乗員に伝える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/846） |
| DO-19 | EI+25:00 | PH-6b 突入〜滑空 | 地上（MCC） → 乗員（CDR・PLT・MS） | エアデータを航法・誘導制御に取り込む GO | 音声 | DO_19（TakeAirData） | MCC は、エアデータを航法または誘導制御に取り込む GO を出す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/846） |
| DO-20 | EI+25:40 | PH-6b 突入〜滑空 | GPC（DPS・GN&C） → GPC（DPS・GN&C） | 自動で OPS 305 に遷移し TAEM 誘導に入る | — | DO_20（Ops305Auto） | Mach 2.5・高度約 81,000 ft で、ソフトウェアは自動で OPS 305 に遷移し、誘導は TAEM に入る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/846） |
| DO-21 | EI+25:55 | PH-6b 突入〜滑空 | GPC（DPS・GN&C） → 機械系（ドア・ベント扉・脚・減速傘） | 前部・後部・中胴のベント扉を開く | IF-ORB-40 | DO_21（DoorCommand） | Mach 2.4・高度約 80,000 ft で、前部・後部・中胴の区画のベント扉が開く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/846） |
| DO-22 | 接地−0:20 | PH-6c 進入〜着陸 | 乗員（CDR・PLT・MS） → 機械系（ドア・ベント扉・脚・減速傘） | 脚を下げる（高度 300 ft） | スイッチ | DO_22（GearDeploy） | 高度 300 ft で、PLT は CDR の合図で脚を下げる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/847） |
| DO-23 | 接地+0:01 | PH-6c 進入〜着陸 | 乗員（CDR・PLT・MS） → 機械系（ドア・ベント扉・脚・減速傘） | ドラッグシュートを展開 | スイッチ | DO_23（DragChuteDeploy） | 主脚の接地の直後に、PLT は CDR の合図でドラッグシュートを展開する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/848） |
| DO-24 | 接地+0:42 | PH-6c 進入〜着陸 | 乗員（CDR・PLT・MS） → 地上（MCC） | 滑走停止を報告 | 音声 | DO_24（WheelsStopReport） | オービタが止まると、CDR は滑走停止を MCC に報告し、着陸後の手順に移る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/848） |
| DO-25 | 着陸後 | PH-7 着陸後 | 乗員（CDR・PLT・MS） → GPC（DPS・GN&C） | MCC の指示で GNC OPS 901 へ遷移 | 表示・操作部 | DO_25（Ops901Transition） | CDR は MCC の指示で DPS を GNC OPS 901 に遷移させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/849） |
| DO-26 | 着陸後 | PH-7 着陸後 | 乗員（CDR・PLT・MS） → ECLSS（ATCS） | 放熱器を組み替え、必要なら NH3 ボイラを作動 | スイッチ | DO_26（Nh3BoilerOn） | CDR は放熱器を組み替え、必要なら NH3 ボイラを作動させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/849） |
| DO-27 | 着陸後 | PH-7 着陸後 | 乗員（CDR・PLT・MS） → APU/HYD | 主エンジンの再配置の後に APU/HYD を停止 | スイッチ | DO_27（ApuShutdown） | PLT は主エンジンの再配置を終えた後に APU・油圧を停止する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/849） |

## 5. 図84 のライフライン

図84 上昇 シーケンス図（打上げの GO から OMS-2 まで（直接投入））のライフライン 9件を示す。

| ID | ライフライン | 文書 | SysML |
|---|---|---|---|
| LPS | 地上（打上げ処理システム） | — | lps |
| CREW | 乗員 | — | crew |
| GPC | GPC（DPS・GN&C） | SSD-FD-DPS-001 | gpc |
| EPS | 電力系（EPS） | SSD-FD-EPS-001 | eps |
| APU | APU/HYD | SSD-FD-APU-001 | apu |
| MPS | 主推進系（MPS） | SSD-FD-MPS-001 | mps |
| ET | 外部タンク（ET） | SSD-FD-ET-001 | et |
| SRB | SRB | SSD-FD-SRB-001 | srb |
| OMS | 軌道制御系（OMS） | SSD-FD-OMS-001 | oms |

## 6. 図84 のメッセージ

図84 上昇 シーケンス図のメッセージ 17件を、上から順に示す。

| ID | 時刻 | 区間 | 送り手 → 受け手 | 内容 | 経路・IF | SysML | 根拠 |
|---|---|---|---|---|---|---|---|
| AS-01 | T−9分 | PH-1 打上げ前 | 地上（打上げ処理システム） → 乗員 | 打上げの GO、イベントタイマの始動 | 音声 | AS_01（LaunchGo） | T-9 分で打上げの GO が出て、イベントタイマを始動する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/822） |
| AS-02 | T−8分 | PH-1 打上げ前 | 乗員 → 電力系（EPS） | 必須母線を燃料電池につなぐ | スイッチ | AS_02（EssentialBusToFc） | T-8 分に操縦手が必須母線を燃料電池に接続する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/822） |
| AS-03 | T−5分 | PH-1 打上げ前 | 乗員 → APU/HYD | APU を起動し圧力を確かめる | スイッチ | AS_03（ApuStart） | T-6:15 に APU の起動前準備を行い、T-5 分に操縦手が APU を起動して圧力を確かめる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/822） |
| AS-04 | T−2分55秒 | PH-1 打上げ前 | 地上（打上げ処理システム） → 主推進系（MPS） | ET の LO2・LH2 タンクを地上のヘリウムで加圧 | IF-ORB-29 | AS_04（EtPressurization） | T-2 分55 秒に打上げ処理システムが液体酸素タンクのベント弁を閉じ、地上支援設備のヘリウムで 21 psig に加圧する。T-1 分57 秒には液体水素タンクを 42 psig に加圧する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/606） |
| AS-05 | T−50秒 | PH-1 打上げ前 | 地上（打上げ処理システム） → 電力系（EPS） | 地上電源の供給を終える（以後は燃料電池が全電力） | IF-ORB-31 | AS_05（GroundPowerOff） | 3基の燃料電池は、打上げの50秒前から着陸の滑走終了まで機体の 28 V 直流電力のすべてを発電し、それ以前は地上電源と燃料電池が電力を供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/311） |
| AS-06 | T−31秒 | PH-1 打上げ前 | 地上（打上げ処理システム） → GPC（DPS・GN&C） | 機上の打上げシーケンス（RSLS）を有効にする | IF-ORB-17 | AS_06（RslsEnable） | T-31 秒に打上げ処理システムが機上の冗長セット打上げシーケンス（RSLS）を有効にし、以後の手順は GPC が機上の時計で行う。GPC は打上げ処理システムからのホールド・再開・リサイクルの指令にはなお応じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/606） |
| AS-07 | T−6.6秒 | PH-1 打上げ前 | GPC（DPS・GN&C） → 主推進系（MPS） | SSME の始動を指令 | IF-ORB-06 | AS_07（SsmeStart） | T-6.6 秒に GPC がエンジン始動を指令し、各エンジンの主燃料弁が開く。主燃料弁の開から MECO まで、液体水素が外部タンクから流れる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/606） |
| AS-08 | T−6.6秒 | PH-1 打上げ前 | 外部タンク（ET） → 主推進系（MPS） | 液体水素の供給（MECO まで） | IF-ORB-15 | AS_08（PropellantFlow） | T-6.6 秒に GPC がエンジン始動を指令し、各エンジンの主燃料弁が開く。主燃料弁の開から MECO まで、液体水素が外部タンクから流れる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/606） |
| AS-09 | T−0 | PH-2a 第1段 | GPC（DPS・GN&C） → SRB | SRB の点火を指令（MEC 経由） | IF-ORB-26 | AS_09（SrbIgnitionCommand） | 固体ロケットモータの点火指令は、オービタのコンピュータから MEC を通じて各 SRB の S&A 装置の NSI 起爆器へ送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/74） |
| AS-10 | MET 0:30 | PH-2a 第1段 | GPC（DPS・GN&C） → 主推進系（MPS） | 推力を 72% に絞る（最大動圧の領域） | IF-ORB-06 | AS_10（ThrottleDown） | 動圧の上昇に合わせて GPC はエンジンを通常 72% に絞り、最大動圧の領域での構造荷重を抑える。この推力の谷は通常 MET 約30〜65秒である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/607） |
| AS-11 | MET 約2:00 | PH-2b 第2段 | GPC（DPS・GN&C） → SRB | SRB の分離を指令 | IF-ORB-26 | AS_11（SrbSeparationCommand） | オービタの SRB 分離シーケンスが出す分離指令が各ボルトの NSI 起爆器を作動させ、分離モータを点火する。上部ストラットは SRB と外部タンク・オービタの間のアンビリカルも通している。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/77） |
| AS-12 | MET 約7:30 | PH-2b 第2段 | GPC（DPS・GN&C） → 主推進系（MPS） | 加速度を 3g 以下に保つよう絞る | IF-ORB-06 | AS_12（ThreeGThrottle） | MET 約7分30秒から、機体の加速度を 3g 以下に保つためにエンジンを絞る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/608） |
| AS-13 | MET 約8:30 | PH-2b 第2段 | GPC（DPS・GN&C） → 主推進系（MPS） | MECO を指令 | IF-ORB-06 | AS_13（MecoCommand） | GPC は通常、機体が所定の速度に達すると MECO を指令する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/608） |
| AS-14 | MECO 後 | PH-2c 軌道投入 | GPC（DPS・GN&C） → 外部タンク（ET） | ET の分離を指令 | IF-ORB-25 | AS_14（EtSeparationCommand） | オービタの GPC が外部タンク分離を指令すると、アンビリカル板を結合するボルトが火工品で切断される。外部タンクの2本の電気アンビリカルは、オービタからタンクと SRB への電力と、SRB・タンクからの情報を通している。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/70） |
| AS-15 | MECO+2分 | PH-2c 軌道投入 | GPC（DPS・GN&C） → 主推進系（MPS） | MPS 推進薬の投棄を始める | IF-ORB-06 | AS_15（MpsDump） | 直接投入では、MECO の2分後に MPS 推進薬の投棄が自動で始まる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/825） |
| AS-16 | MET 約12:55 | PH-2c 軌道投入 | 乗員 → APU/HYD | MCC と確認して APU を停止 | スイッチ | AS_16（ApuShutdownAscent） | MPS の投棄が終わると油圧の MPS/TVC 隔離弁を閉じ、MCC と確認して APU を停止する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/826） |
| AS-17 | OMS-2 | PH-2c 軌道投入 | GPC（DPS・GN&C） → 軌道制御系（OMS） | OMS-2 燃焼（約2分） | IF-ORB-04 | AS_17（Oms2Burn） | OMS-2 燃焼は、160 n.mi. の円軌道の場合で約2分である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/827） |

AS-11〜AS-13 の区間には、エンジン停止のときのアボートの選択（alt の枠）がある：alt［エンジン停止など］：RTLS（離昇2分30秒以降〜NEGATIVE RETURN）／TAL（2 ENGINE TAL〜PRESS TO ATO）／ATO（PRESS TO ATO 以後）→ 図76 TR-14〜16

- 外部タンクの加熱のため、RTLS は離昇2分30秒より前には選べない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/861）
- TAL は、2 ENGINE TAL から PRESS TO ATO（MECO）までのエンジン1基の停止に対する非常手段で、欧州またはアフリカの滑走路に着陸する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/869）
- ATO は、通常より低いが安全な軌道に入れるための非常手段で、性能不足または一部の系の故障で選ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/877）

## 7. 図85 のライフライン

図85 指令・テレメトリ経路 シーケンス図（地上からの指令と、機上のテレメトリが地上へ戻るまでの経路（S帯 PM））のライフライン 6件を示す。

| ID | ライフライン | 文書 | SysML |
|---|---|---|---|
| MCC | 地上（MCC） | — | mcc |
| NET | 追跡・通信網（TDRS・地上局） | — | net |
| SBD | C&T：S帯 PM（トランスポンダ・NSP） | SSD-FD-CT-SBD-001 | sband |
| GPC | DPS：FF・PF MDM と GPC | SSD-FD-DPS-001 | gpc |
| SYS | 各系（例：機械系の MCA） | SSD-FD-MECH-ACT-001 | system |
| INST | C&T：計装（DSC・OI MDM・PCMMU・SSR） | SSD-FD-CT-INST-001 | inst |

## 8. 図85 のメッセージ

図85 指令・テレメトリ経路 シーケンス図のメッセージ 12件を、上から順に示す。

| ID | 時刻 | 区間 | 送り手 → 受け手 | 内容 | 経路・IF | SysML | 根拠 |
|---|---|---|---|---|---|---|---|
| CM-01 | — | アップリンク（指令） | 地上（MCC） → 追跡・通信網（TDRS・地上局） | 指令・音声を送る | — | CM_01（GroundCommand） | S帯PM系は、地上局またはTDRSを経由してオービタと地上の間の双方向通信を行い、コマンド、音声、テレメトリ、トーン測距、2-wayドップラ追跡の5つの機能のチャネルを持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/160） |
| CM-02 | — | アップリンク（指令） | 追跡・通信網（TDRS・地上局） → C&T：S帯 PM（トランスポンダ・NSP） | S帯 PM のフォワードリンク（72 kbps：音声2チャネルと指令 8 kbps） | IF-CT-01 | CM_02（ForwardLink） | フォワードリンクの高データレートは72 kbps（A/G音声2チャネル各32 kbpsとコマンド8 kbps）、リターンリンクの高データレートは192 kbps（A/G音声2チャネル各32 kbpsとテレメトリ128 kbps）で、2-way測距はTDRSを経由しては働かない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/162） |
| CM-03 | — | アップリンク（指令） | C&T：S帯 PM（トランスポンダ・NSP） → DPS：FF・PF MDM と GPC | NSP が指令を解読し FF MDM を経て GPC へ | IF-CT-05 | CM_03（DecodedCommand） | NSPは2台の冗長で、ACCUからのA/G音声をデジタル化してPCMMUのテレメトリと時分割多重してトランスポンダへ送り、フォワードリンクでは音声をACCUへ戻し、地上コマンドを解読してFF MDM（NSP 1はFF 1、NSP 2はFF 3）へ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/167） |
| CM-04 | — | アップリンク（指令） | DPS：FF・PF MDM と GPC → 各系（例：機械系の MCA） | 指令を MDM を経て各系へ（例：MCA のモータの入切） | IF-ORB-40 | CM_04（SystemCommand） | MCAへのモータの入切の指令は、GPC、DPSの項目入力、またはハードワイヤのスイッチから出る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/619） |
| CM-05 | — | アップリンク（指令） | DPS：FF・PF MDM と GPC → C&T：S帯 PM（トランスポンダ・NSP） | 通信系の組替えの指令（PF MDM→GCIL） | IF-CT-07 | CM_05（GcilCommand） | 地上からの指令はすべてS帯のアップリンクまたはKu帯のフォワードリンクでNSPとFF MDMを経てGPCへ送られ、GCILで制御する通信系を組み替える指令はGPCからPF MDMを経てGCILへ送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/160） |
| CM-06 | — | 計測とテレメトリ（ダウンリンク） | 各系（例：機械系の MCA） → C&T：計装（DSC・OI MDM・PCMMU・SSR） | センサの信号を DSC で 0〜5 V に変換して MDM へ | — | CM_06（SensorSignal） | DSCは周波数・温度・角速度・電圧・電流などのセンサの信号をMDMが受け付ける0〜5 V dcに変換し、14台は前方4、後方3、ペイロードベイ下3、左右の尾部4に分かれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/196） |
| CM-07 | — | 計測とテレメトリ（ダウンリンク） | C&T：計装（DSC・OI MDM・PCMMU・SSR） → C&T：計装（DSC・OI MDM・PCMMU・SSR） | OI MDM が PCMMU の要求でデータを選びデジタル化 | — | CM_07（OiData） | OI MDMは多重化器としてだけ働き、PCMMUの要求に応じてデータを選び・デジタル化してOIデータバスで送り（要求・応答方式）、前方4台（OF）・後方3台（OA）がある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/197） |
| CM-08 | — | 計測とテレメトリ（ダウンリンク） | DPS：FF・PF MDM と GPC → C&T：計装（DSC・OI MDM・PCMMU・SSR） | GPC のダウンリストを PCMMU へ | IF-CT-06 | CM_08（Downlist） | PCMMUはOI MDMのデータ、GPCのダウンリスト、PDIのペイロードテレメトリを受け、テレメトリ形式ロード（TFL）に従ってインタリーブ・形式化する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/197） |
| CM-09 | — | 計測とテレメトリ（ダウンリンク） | C&T：計装（DSC・OI MDM・PCMMU・SSR） → C&T：S帯 PM（トランスポンダ・NSP） | 形式化したテレメトリを NSP へ | IF-CT-14 | CM_09（Telemetry） | PCMMUはインタリーブ・形式化したデータをNSPへ送り、NSPがACCUからのA/G音声と合わせてS帯PMのダウンリンクとKu帯のリターンリンクのチャネル1で送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/197） |
| CM-10 | — | 計測とテレメトリ（ダウンリンク） | C&T：計装（DSC・OI MDM・PCMMU・SSR） → C&T：計装（DSC・OI MDM・PCMMU・SSR） | SSR に記録し、後でダウンリンク | — | CM_10（RecordedTelemetry） | PCMMUのテレメトリはNSPを経てSSRにも送られて記録され、後でS帯FMまたはKu帯でダウンリンクされる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/197） |
| CM-11 | — | 計測とテレメトリ（ダウンリンク） | C&T：S帯 PM（トランスポンダ・NSP） → 追跡・通信網（TDRS・地上局） | リターンリンク（192 kbps：音声2チャネルとテレメトリ 128 kbps） | IF-CT-01 | CM_11（ReturnLink） | フォワードリンクの高データレートは72 kbps（A/G音声2チャネル各32 kbpsとコマンド8 kbps）、リターンリンクの高データレートは192 kbps（A/G音声2チャネル各32 kbpsとテレメトリ128 kbps）で、2-way測距はTDRSを経由しては働かない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/162） |
| CM-12 | — | 計測とテレメトリ（ダウンリンク） | 追跡・通信網（TDRS・地上局） → 地上（MCC） | テレメトリ・音声を MCC へ | — | CM_12（GroundTelemetry） | S帯PM系は、地上局またはTDRSを経由してオービタと地上の間の双方向通信を行い、コマンド、音声、テレメトリ、トーン測距、2-wayドップラ追跡の5つの機能のチャネルを持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/160） |

## 9. IF との対応

メッセージが通る IF 17件と、その IF を使うメッセージを示す。

| 所有文書 | IF | メッセージ |
|---|---|---|
| SSD-FD-CT-SBD-001 | IF-CT-01 | CM-02・CM-11 |
| SSD-FD-CT-SBD-001 | IF-CT-05 | CM-03 |
| SSD-FD-CT-INST-001 | IF-CT-06 | CM-08 |
| SSD-FD-CT-OPS-001 | IF-CT-07 | CM-05 |
| SSD-FD-CT-INST-001 | IF-CT-14 | CM-09 |
| SSD-FD-CT-001 | IF-ORB-01 | DO-06 |
| SSD-FD-GNC-001 | IF-ORB-04 | DO-12・AS-17 |
| SSD-FD-DPS-001 | IF-ORB-06 | AS-07・AS-10・AS-12・AS-13・AS-15 |
| SSD-FD-APU-001 | IF-ORB-08 | DO-15 |
| SSD-FD-MPS-001 | IF-ORB-15 | AS-08 |
| SSD-FD-CT-001 | IF-ORB-16 | DO-06 |
| SSD-FD-DPS-001 | IF-ORB-17 | AS-06 |
| SSD-FD-DPS-001 | IF-ORB-25 | AS-14 |
| SSD-FD-DPS-001 | IF-ORB-26 | AS-09・AS-11 |
| SSD-FD-EXT-001 | IF-ORB-29 | AS-04 |
| SSD-FD-EXT-001 | IF-ORB-31 | AS-05 |
| SSD-FD-DPS-001 | IF-ORB-40 | DO-04・DO-09・DO-21・CM-04 |

## 10. SysML v2 テキスト

同じライフラインとメッセージを SysML v2 のテキスト [model/SSD-BEH-ORB-003.sysml](../../model/SSD-BEH-ORB-003.sysml) に示す。シーケンスの occurrence def 3件、メッセージ 56件と、その順序（first … then）から成る。本書の表と同じデータから作り、SysML v2 の文法による構文の検査を通し、Rev. AG で OMG SysML v2 Pilot Implementation 0.62.0 により、ほかのモデルと一緒に読み込んで名前の解決・型の検査を行い、誤り 0件・警告 0件を確かめた（SSD-MDL-SYS-001）。alt の枠（アボートの選択）はテキストには書かず、図76 の状態遷移に任せた。

## 11. 注記（出典間の相違・構成変更）

> **注記** 図83・図84 の時刻は SCOM の標準の時刻表の目安で、飛行によって変わる。乗員から系への矢印は、表示・操作部やスイッチによる操作で、IF の行ではない。

> **注記** 図84 の alt の枠は、第2段でエンジンが停止したときのアボートの選択を示す。選択の後の流れは図76（TR-14〜16 と TR-19〜21）による。

> **注記** 図85 の「各系」は、GPC から MDM を経て指令を受ける系の代表として機械系の MCA を描いた。ほかの系も同じ経路（FF・FA MDM など）で指令を受ける。

> **注記** シーケンス図の生存線から構造モデルの部品への割付は [SSD-ALC-SYS-001](SSD-ALC-SYS-001.md) に示す（SysML v2 テキスト：model/SSD-ALC-SYS-001.sysml）。

## 12. 参考文献

1. Shuttle Crew Operations Manual 5.4 Entry（USA007587 Rev. A CPN-1、PDF p841） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/841
2. Shuttle Crew Operations Manual 2.17 Mechanical Systems（USA007587 Rev. A CPN-1、PDF p619） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/619
3. Shuttle Crew Operations Manual 5.4 Entry（USA007587 Rev. A CPN-1、PDF p842） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/842
4. Shuttle Crew Operations Manual 5.4 Entry（USA007587 Rev. A CPN-1、PDF p843） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/843
5. Shuttle Crew Operations Manual 2.17 Mechanical Systems（USA007587 Rev. A CPN-1、PDF p621） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/621
6. Shuttle Crew Operations Manual 5.4 Entry（USA007587 Rev. A CPN-1、PDF p844） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/844
7. Shuttle Crew Operations Manual 5.4 Entry（USA007587 Rev. A CPN-1、PDF p845） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/845
8. Shuttle Crew Operations Manual 5.4 Entry（USA007587 Rev. A CPN-1、PDF p846） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/846
9. Shuttle Crew Operations Manual 5.4 Entry（USA007587 Rev. A CPN-1、PDF p847） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/847
10. Shuttle Crew Operations Manual 5.4 Entry（USA007587 Rev. A CPN-1、PDF p848） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/848
11. Shuttle Crew Operations Manual 5.5 Postlanding（USA007587 Rev. A CPN-1、PDF p849） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/849
12. Shuttle Crew Operations Manual 5.1 Prelaunch（USA007587 Rev. A CPN-1、PDF p822） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/822
13. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p606） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/606
14. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p311） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/311
15. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p74） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/74
16. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p607） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/607
17. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p77） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/77
18. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p608） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/608
19. Shuttle Crew Operations Manual 1.3 External Tank（USA007587 Rev. A CPN-1、PDF p70） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/70
20. Shuttle Crew Operations Manual 5.2 Ascent（USA007587 Rev. A CPN-1、PDF p825） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/825
21. Shuttle Crew Operations Manual 5.2 Ascent（USA007587 Rev. A CPN-1、PDF p826） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/826
22. Shuttle Crew Operations Manual 5.2 Ascent（USA007587 Rev. A CPN-1、PDF p827） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/827
23. Shuttle Crew Operations Manual 6.3 Return to Launch Site（USA007587 Rev. A CPN-1、PDF p861） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/861
24. Shuttle Crew Operations Manual 6.4 Transoceanic Abort Landing（USA007587 Rev. A CPN-1、PDF p869） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/869
25. Shuttle Crew Operations Manual 6.6 Abort to Orbit（USA007587 Rev. A CPN-1、PDF p877） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/877
26. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p160） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/160
27. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p162） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/162
28. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p167） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/167
29. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p196） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/196
30. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p197） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/197

## 13. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（図83 軌道離脱〜着陸 シーケンス図のライフライン 7件・メッセージ 27件、図84 上昇 シーケンス図のライフライン 9件・メッセージ 17件、図85 指令・テレメトリ経路 シーケンス図のライフライン 6件・メッセージ 12件、IF との対応 17件、SysML v2 テキスト） |
| Rev. A | 2026-10-03 | 割付定義書 SSD-ALC-SYS-001 への参照を注記（Rev. AF） |
| Rev. B | 2026-10-03 | SysML v2 テキストの検査の記述を改めた（Pilot による名前の解決・型の検査、モデル統合・検査定義書 SSD-MDL-SYS-001）（Rev. AG） |
