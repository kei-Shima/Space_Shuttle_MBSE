# シーケンス定義書（軌道離脱〜着陸・上昇・指令とテレメトリの経路）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-BEH-ORB-003 |
| 表題 | シーケンス定義書（軌道離脱〜着陸・上昇・指令とテレメトリの経路） |
| 版・日付 | Rev. G／2026-10-17 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-BEH-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図83 軌道離脱〜着陸 シーケンス図・図84 上昇 シーケンス図・図85 指令・テレメトリ経路 シーケンス図・図238 ARS 空気系の運転と監視 シーケンス図・図239 RCRS と水冷却ループの運転と監視 シーケンス図・図240 与圧・給水・廃棄物・エアロックの運転と表示 シーケンス図・図241 煙検知と消火 シーケンス図・図242 キャビン温湿度の制御と監視 シーケンス図・図244 APU・油圧の運転と監視 シーケンス図・図245 DPS の運用管理と MPS の乗員操作 シーケンス図・図246 EVA の準備・減圧・再与圧・非常時の手順 シーケンス図・図247 OMS の乗員操作と表示 シーケンス図・図248 RCS の噴射器冗長管理と乗員操作 シーケンス図 |

## 1. 目的

複数の系・乗員・地上が順にやり取りする場面をシーケンス図で示す。図83 軌道離脱〜着陸 シーケンス図・図84 上昇 シーケンス図・図85 指令・テレメトリ経路 シーケンス図・図238 ARS 空気系の運転と監視 シーケンス図・図239 RCRS と水冷却ループの運転と監視 シーケンス図・図240 与圧・給水・廃棄物・エアロックの運転と表示 シーケンス図・図241 煙検知と消火 シーケンス図・図242 キャビン温湿度の制御と監視 シーケンス図・図244 APU・油圧の運転と監視 シーケンス図・図245 DPS の運用管理と MPS の乗員操作 シーケンス図・図246 EVA の準備・減圧・再与圧・非常時の手順 シーケンス図・図247 OMS の乗員操作と表示 シーケンス図・図248 RCS の噴射器冗長管理と乗員操作 シーケンス図 のメッセージは、系どうしのやり取りでは上位・下位の IF の ID に結び付け、IF 一覧が実際の動きで使われていることを示す。同じライフラインとメッセージを SysML v2 のテキスト（SysML/SSD-BEH-ORB-003.sysml）でも示す。

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

## 9. 図238 のライフライン

図238 ARS 空気系の運転と監視 シーケンス図（ARS 空気系の運転と監視）のライフライン 11件を示す。

| ID | ライフライン | 文書 | SysML |
|---|---|---|---|
| CREW | 乗員 | — | crew |
| COPS | キャビンファン運用管理 | SSD-FD-CAC-OPS-001 | cacFanOps |
| CFAN | キャビンファン | SSD-FD-CAC-FAN-001 | cacFan |
| CMON | キャビン空気の監視・表示 | SSD-FD-CAC-MON-001 | cacMon |
| AOPS | ベイ冷却運用管理 | SSD-FD-ARS-AVB-OPS-001 | avbOps |
| AFAN | ベイファン | SSD-FD-ARS-AVB-FAN-001 | avbFan |
| AMON | ベイ冷却の監視・表示 | SSD-FD-ARS-AVB-MON-001 | avbMon |
| IOPS | IMU ファン運用管理 | SSD-FD-ARS-IMU-OPS-001 | imuOps |
| IFAN | IMU ファン | SSD-FD-ARS-IMU-FAN-001 | imuFan |
| IMON | IMU ファン監視・表示 | SSD-FD-ARS-IMU-MON-001 | imuMon |
| DPS | DPS・アビオニクス | SSD-FD-DPS-001 | dps |

## 10. 図238 のメッセージ

図238 ARS 空気系の運転と監視 シーケンス図のメッセージ 15件を、上から順に示す。

| ID | 時刻 | 区間 | 送り手 → 受け手 | 内容 | 経路・IF | SysML | 根拠 |
|---|---|---|---|---|---|---|---|
| QA-01 | — | 運転の選択 | 乗員 → キャビンファン運用管理 | パネル L1 の CABIN FAN A・B スイッチで、運転するキャビンファンを選んで起動・停止する。 | スイッチ | QA_01（CabinFanSwitchSelect） | ECLSS 制御の表では、パネル L1 の CABIN FAN A/B スイッチがキャビンファンに給電し、IMU FANS A-B-C スイッチが IMU ファンに給電し、AV BAY 1/2/3 FANS A-B スイッチがアビオニクスベイの空気を循環させる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90） |
| QA-02 | — | 運転の選択 | キャビンファン運用管理 → キャビンファン | 運用規則に従って選んだキャビンファンを起動・停止する指令を渡す。 | IF-CAC-10 | QA_02（CabinFanRunCommand） | ECLSS 制御の表では、パネル L1 の CABIN FAN A/B スイッチがキャビンファンに給電し、IMU FANS A-B-C スイッチが IMU ファンに給電し、AV BAY 1/2/3 FANS A-B スイッチがアビオニクスベイの空気を循環させる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90） |
| QA-03 | — | 運転の選択 | 乗員 → ベイ冷却運用管理 | パネル L1 の AV BAY 1・2・3 FAN A・B スイッチで、各ベイの運転するファンを選ぶ。 | スイッチ | QA_03（BayFanSwitchSelect） | 各 IMU ファンはパネル L1 の IMU FAN スイッチで制御され、ON の位置で対応するファンが回り、OFF の位置で止まる。アビオニクスベイのファンは AV BAY 1・2・3 FAN A・B スイッチで制御される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） |
| QA-04 | — | 運転の選択 | ベイ冷却運用管理 → ベイファン | 運用規則に従って選んだベイファンを入切りする指令を渡す。打上げ時には各ベイの1台のファンが運転済みである。 | IF-AVB-08 | QA_04（BayFanRunCommand） | ECLSS 制御の表では、パネル L1 の CABIN FAN A/B スイッチがキャビンファンに給電し、IMU FANS A-B-C スイッチが IMU ファンに給電し、AV BAY 1/2/3 FANS A-B スイッチがアビオニクスベイの空気を循環させる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90）乗員の搭乗時に、ARS はすでに上昇用に整えてあり、キャビンファン1台・IMU ファン1台・各アビオニクスベイのファン1台が運転している。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/404） |
| QA-05 | — | 運転の選択 | 乗員 → IMU ファン運用管理 | パネル L1 の IMU FAN A・B・C スイッチで、運転する IMU ファンを選ぶ。 | スイッチ | QA_05（ImuFanSwitchSelect） | 各 IMU ファンはパネル L1 の IMU FAN スイッチで制御され、ON の位置で対応するファンが回り、OFF の位置で止まる。アビオニクスベイのファンは AV BAY 1・2・3 FAN A・B スイッチで制御される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） |
| QA-06 | — | 運転の選択 | IMU ファン運用管理 → IMU ファン | 運用規則と故障処置手順に従って選んだ IMU ファンを入切する指令を渡す。ON でファンが回り、OFF で止まる。 | IF-IMU-07 | QA_06（ImuFanRunCommand） | 各 IMU ファンはパネル L1 の IMU FAN スイッチで制御され、ON の位置で対応するファンが回り、OFF の位置で止まる。アビオニクスベイのファンは AV BAY 1・2・3 FAN A・B スイッチで制御される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376）ECLSS 制御の表では、パネル L1 の CABIN FAN A/B スイッチがキャビンファンに給電し、IMU FANS A-B-C スイッチが IMU ファンに給電し、AV BAY 1/2/3 FANS A-B スイッチがアビオニクスベイの空気を循環させる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90） |
| QA-07 | — | 監視と表示 | IMU ファン → IMU ファン監視・表示 | IMU FAN 信号調整器が給電する回転数センサの出力と、ΔP センサの差圧を渡す。 | IF-IMU-05 | QA_07（ImuFanSpeedDpData） | IMU FAN 信号調整器は、IMU ファンが正常に回っているかを確かめる回転数センサに給電し、IMU ファンの差圧センサは H2O BYP LOOP 1 SNSR 信号調整器が給電する。ARS のデータは OPS 2(4) では PASS SM SPEC 66 と PASS SM SYS SUMM 1、OPS 1・3 では BFS SM SYS SUMM 1 に表示される。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） |
| QA-08 | — | 監視と表示 | キャビン空気の監視・表示 → DPS・アビオニクス | キャビンファン差圧を、主 C&W のハードウェアチャネル 74（AV BAY/CABIN AIR 灯）と SM の表示へ送る。 | IF-CAC-12・IF-ARS-25 | QA_08（CabinFanDpSignal） | 主 C&W の AV BAY/CABIN AIR 灯は、キャビンファン差圧・Av Bay 1〜3 の空気出口温度・キャビン熱交換器の空気温度が限界外のときに点灯し、ハードウェアチャネルは 74・84・94・104・114 である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/133）IMU FAN 信号調整器は、IMU ファンが正常に回っているかを確かめる回転数センサに給電し、IMU ファンの差圧センサは H2O BYP LOOP 1 SNSR 信号調整器が給電する。ARS のデータは OPS 2(4) では PASS SM SPEC 66 と PASS SM SYS SUMM 1、OPS 1・3 では BFS SM SYS SUMM 1 に表示される。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） |
| QA-09 | — | 監視と表示 | ベイ冷却の監視・表示 → DPS・アビオニクス | ファン下流の温度センサのデータを、AIR TEMP 計器と主 C&W のハードウェアチャネル 84・94・104 へ送る。ベイ温度は SM SYS SUMM 2 と SPEC 66 ENVIRONMENT にも出る。 | IF-AVB-13・IF-ARS-28 | QA_09（BayAirTempSignal） | 主 C&W の AV BAY/CABIN AIR 灯は、キャビンファン差圧・Av Bay 1〜3 の空気出口温度・キャビン熱交換器の空気温度が限界外のときに点灯し、ハードウェアチャネルは 74・84・94・104・114 である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/133）アビオニクスベイのファン下流の温度センサのデータは AIR TEMP 計器に直接送られ、SM SYS SUMM 2 と SPEC 66 ENVIRONMENT の表示でも見られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/788） |
| QA-10 | — | 監視と表示 | ベイ冷却の監視・表示 → DPS・アビオニクス | ファン差圧を SM SYS SUMM 2（DISP 79）に表示し、SPEC 66 の限界外で SM 警報を出す。 | IF-AVB-14 | QA_10（BayFanDpDisplay） | SM SYS SUMM 2（DISP 79）の表示には、AV BAY 1〜3 の項目とファンの差圧の項目がある。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=80）C&W の FDA 表では、AV BAY FAN ΔP は SPEC 66 で、SM アラートの下限 2.5・上限 4.3（改良型ファンは 4.5・7.8）である。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=96） |
| QA-11 | — | 監視と表示 | IMU ファン監視・表示 → DPS・アビオニクス | IMU ファンの状態（運転中の「*」・回転数低下の「↓」）を、SM OPS 2 の PASS ENVIRONMENT（DISP 66）と SM SYS SUMM 1（DISP 78）に表示し、限界外で S66 IMU FAN DP・S66 IMU FN SPD の SM アラートを出す。IMU ファン差圧は BFS の SM SYS SUMM 1 にも出る。 | IF-IMU-10・IF-ARS-29 | QA_11（ImuFanStatusDisplay） | IMU ファンの状態は、PASS ENVIRONMENT（DISP 66）と PASS・BFS の SM SYS SUMM 1（DISP 78）に出る。運転中のファンには「*」が付き、回転数が限界より下がると「↓」が出る。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/IMU%20Workbook.pdf#page=25）IMU ファンの故障処置手順は、SM アラートのメッセージ S66 IMU FAN DP と S66 IMU FN SPD A(B,C) から始まり、ΔP が失われたときは回転数センサの「↓」を監視する。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=264）BFS SM SYS SUMM 1（DISP 78）の ECLSS の項目に、キャビンファンの差圧（FAN DP）と IMU ファンの差圧（IMU FAN DP）が出る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/359） |
| QA-12 | — | 監視と表示 | DPS・アビオニクス → 乗員 | SM の表示と、主 C&W の AV BAY/CABIN AIR 灯・SM アラートを、乗員に見せる。 | 表示・警報灯 | QA_12（AirLoopAlertAnnunciation） | 主 C&W の AV BAY/CABIN AIR 灯は、キャビンファン差圧・Av Bay 1〜3 の空気出口温度・キャビン熱交換器の空気温度が限界外のときに点灯し、ハードウェアチャネルは 74・84・94・104・114 である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/133）IMU ファンの故障処置手順は、SM アラートのメッセージ S66 IMU FAN DP と S66 IMU FN SPD A(B,C) から始まり、ΔP が失われたときは回転数センサの「↓」を監視する。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=264） |
| QA-13 | — | 喪失の判断 | キャビン空気の監視・表示 → キャビンファン運用管理 | 差圧の表示と警報を、キャビンファンの喪失判定（A17-101）と切替・点検の判断に使うために渡す。 | IF-CAC-11 | QA_13（CabinFanLossBasis） | フライトルール A17-101 は、キャビンファンの差圧が限界外で、乗員が空気流の喪失を検知したときに、キャビンファンの喪失とみなす。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1929） |
| QA-14 | — | 喪失の判断 | ベイ冷却の監視・表示 → ベイ冷却運用管理 | ベイ温度とファン差圧の表示・警報を、ファンの喪失判定（A17-103）と切替・処置の判断に使うために渡す。 | IF-AVB-12 | QA_14（BayFanLossBasis） | フライトルール A17-103 は、アビオニクスベイのファンの差圧が 2.5 inches H2O 未満または 4.3 inches H2O 超のときに、そのファンの喪失とみなす。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1931） |
| QA-15 | — | 喪失の判断 | IMU ファン監視・表示 → IMU ファン運用管理 | ΔP と回転数の表示・SM アラートを、IMU ファンの喪失判定（A17-104）とファンの切替の判断に使うために渡す。ΔP が失われたときは回転数センサの「↓」で故障を監視する。 | IF-IMU-12 | QA_15（ImuFanLossBasis） | フライトルール A17-104 は、IMU ファンの差圧が限界外のとき、または選んだファンの回転数が異常なときに、IMU ファンの喪失とみなす。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1933）IMU ファンの故障処置手順は、SM アラートのメッセージ S66 IMU FAN DP と S66 IMU FN SPD A(B,C) から始まり、ΔP が失われたときは回転数センサの「↓」を監視する。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=264） |

## 11. 図239 のライフライン

図239 RCRS と水冷却ループの運転と監視 シーケンス図（RCRS と水冷却ループの運転と監視）のライフライン 11件を示す。

| ID | ライフライン | 文書 | SysML |
|---|---|---|---|
| CREW | 乗員 | — | crew |
| ROPS | RCRS 運用管理 | SSD-FD-ARS-RCRS-OPS-001 | rcrsOps |
| RCTL | RCRS 制御器 | SSD-FD-ARS-RCRS-CTL-001 | rcrsCtl |
| RBED | RCRS ベッド | SSD-FD-ARS-RCRS-BED-001 | rcrsBed |
| RUSC | RCRS 空気回収・均圧 | SSD-FD-ARS-RCRS-USC-001 | rcrsUsc |
| RMON | RCRS 計装・表示 | SSD-FD-ARS-RCRS-MON-001 | rcrsMon |
| DPS | DPS（SM 表示） | SSD-FD-DPS-001 | dps |
| WOPS | 水ループ運用管理 | SSD-FD-ARS-WCL-OPS-001 | wclOps |
| WPMP | ポンプパッケージ | SSD-FD-ARS-WCL-PMP-001 | wclPmp |
| WICH | インターチェンジャ・バイパス | SSD-FD-ARS-WCL-ICH-001 | wclIch |
| WMON | 水ループ監視 | SSD-FD-ARS-WCL-MON-001 | wclMon |

## 12. 図239 のメッセージ

図239 RCRS と水冷却ループの運転と監視 シーケンス図のメッセージ 14件を、上から順に示す。

| ID | 時刻 | 区間 | 送り手 → 受け手 | 内容 | 経路・IF | SysML | 根拠 |
|---|---|---|---|---|---|---|---|
| QB-01 | — | RCRS の運転の選択 | 乗員 → RCRS 運用管理 | 乗員がパネル MO51F のモードスイッチ（OPER/STBY）と電源スイッチを操作する | パネル MO51F（スイッチ） | QB_01（RcrsSwitchInput） | RCRS の制御スイッチはパネル MO51F にあり、制御器ごとのモードスイッチ（OPER で運転の手順を始め、STBY で待機にして止める）と電源スイッチで操作する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=224） |
| QB-02 | — | RCRS の運転の選択 | RCRS 運用管理 → RCRS 制御器 | 運用規則と故障処置に従って制御器を起動・停止し、故障時は他方の制御器に切り替える | IF-RCRS-14 | QB_02（RcrsControllerSelect） | RCRS の制御スイッチはパネル MO51F にあり、制御器ごとのモードスイッチ（OPER で運転の手順を始め、STBY で待機にして止める）と電源スイッチで操作する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=224）一方の制御器だけの故障では、他方の制御器（SYS 2(1)）で通常の運転を続ける。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=331） |
| QB-03 | — | RCRS の工程の制御 | RCRS 制御器 → RCRS ベッド | 作動中の制御器が真空サイクル弁のアクチュエータ A・B を回し、ベッドの空気ポペットと真空ポペットを開閉して吸着と再生を切り替える | IF-RCRS-05 | QB_03（VacuumCycleValveDrive） | アクチュエータ A は回ってベッド A の空気ポペットとベッド B の真空ポペットを開き、ベッド A を空気流に、ベッド B を真空に開く。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=219）作動中の制御器の制御論理が、各構成品と計装に出力信号と電力を供給する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=218） |
| QB-04 | — | RCRS の工程の制御 | RCRS 制御器 → RCRS 空気回収・均圧 | 作動中の制御器が工程に応じて均圧弁を開閉し、ullage-save 圧縮機を動かす | IF-RCRS-06 | QB_04（PressureEqualizeCommand） | 6個の均圧弁はそれぞれ2つのコイルを持ち、2台の制御器が1つずつ受け持つので、コイルや制御器を1つ失っても系は失われない。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=217）ullage-save 圧縮機は起動の30秒後に、排気中のベッドの圧力が圧縮機サイクル開始時の2/3未満かを確かめ、確かめに失敗すると制御器を入れ直すか他方を選ぶまで止められる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=229） |
| QB-05 | — | RCRS の工程の制御 | RCRS 計装・表示 → RCRS 制御器 | ベッド圧力・ベッド差圧などの計測値を作動中の制御器に入力し、故障検知に使わせる | IF-RCRS-09 | QB_05（BedSensorInput） | 制御器は、故障検知のために計装からの入力も受ける。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=218）RCRS の自動停止の論理は、ベッド圧力・ベッド差圧・圧縮機の回転数と弁位置の表示が許容できないとき RCRS を停止する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1937） |
| QB-06 | — | RCRS の表示と喪失の判断 | RCRS 計装・表示 → DPS（SM 表示） | RCRS の計測値（FILTER ΔP、PPCO2、TEMP、BED A・B PRESS、ΔP、VAC PRESS）を SM に送り、SPEC 66 ENVIRONMENT の右下に表示させる | IF-RCRS-10・IF-ARS-26 | QB_06（RcrsMeasurementDisplay） | RCRS の情報は SPEC 66 ENVIRONMENT の右下に表示される。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=228）共通計装の値は系の評価のためにダウンリンクされるだけで、制御には使わない。SPEC 66 の SM 表示は OPS 2・4 で使える。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=227）RCRS の運転の状況は、OPS 2 の SPEC 66 ENVIRONMENT で乗員が確かめる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371） |
| QB-07 | — | RCRS の表示と喪失の判断 | RCRS 制御器 → DPS（SM 表示） | 制御器の状態を SPEC 66 に示し、故障で停止すると故障ディスクリートのテレメトリを6秒間「1」にして、SM メッセージ S66 CO2 RL SYS を出させる | IF-RCRS-11・IF-ARS-26 | QB_07（RcrsControllerFault） | 故障検知の論理が故障を見つけると RCRS を停止し、パネル MO51F の該当制御器の故障灯を点け、故障ディスクリートのテレメトリを6秒間「1」にしてから「0」に戻す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=228）SM メッセージ S66 CO2 RL SYS は、RCRS の制御器が故障したとき、または故障検知の論理が2つのベッドのどちらかで誤った圧力を検知したときに出る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=229） |
| QB-08 | — | RCRS の表示と喪失の判断 | DPS（SM 表示） → 乗員 | SPEC 66 の表示と SM メッセージを乗員に示す | SM 表示 | QB_08（RcrsDisplayToCrew） | 共通計装の値は系の評価のためにダウンリンクされるだけで、制御には使わない。SPEC 66 の SM 表示は OPS 2・4 で使える。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=227）SM メッセージ S66 CO2 RL SYS は、RCRS の制御器が故障したとき、または故障検知の論理が2つのベッドのどちらかで誤った圧力を検知したときに出る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=229） |
| QB-09 | — | RCRS の表示と喪失の判断 | RCRS 計装・表示 → RCRS 運用管理 | PPCO2 と RCRS の表示・SM メッセージを、RCRS の喪失判定と故障処置の判断に使わせる | IF-RCRS-15 | QB_09（RcrsLossJudgement） | RCRS の喪失は、PPCO2 を 7.6 mmHg 未満に保てないとき、または PPCO2 の把握ができないときと判定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1937） |
| QB-10 | — | 水ループの運転の選択 | 乗員 → 水ループ運用管理 | 乗員がパネル L1 の H2O PUMP LOOP スイッチと BYPASS MODE スイッチを操作する | パネル L1（スイッチ） | QB_10（WaterLoopSwitchInput） | パネル L1 の H2O PUMP LOOP 1 の A/B スイッチでループ 1 のポンプ A・B を選び、H2O PUMP LOOP 1・2 の GPC/OFF/ON スイッチでポンプを動かす・止める。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90）パネル L1 の LOOP 1・2 BYPASS MODE スイッチで AUTO か MAN を選び、MAN のときは BYPASS MAN の INCR/DECR スイッチで水バイパス弁の位置を制御する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90） |
| QB-11 | — | 水ループの運転の選択 | 水ループ運用管理 → ポンプパッケージ | H2O PUMP LOOP 1 の A/B 選択と GPC/OFF/ON スイッチで、運転するポンプを選び起動・停止する | IF-WCL-09 | QB_11（WaterPumpSelect） | パネル L1 の H2O PUMP LOOP 1 の A/B スイッチでループ 1 のポンプ A・B を選び、H2O PUMP LOOP 1・2 の GPC/OFF/ON スイッチでポンプを動かす・止める。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90） |
| QB-12 | — | 水ループの運転の選択 | 水ループ運用管理 → インターチェンジャ・バイパス | LOOP 1・2 BYPASS MODE スイッチで自動・手動を選び、手動では MAN INCR/DECR スイッチでバイパス弁の位置を調整する | IF-WCL-10 | QB_12（BypassModeCommand） | パネル L1 の LOOP 1・2 BYPASS MODE スイッチで AUTO か MAN を選び、MAN のときは BYPASS MAN の INCR/DECR スイッチで水バイパス弁の位置を制御する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90） |
| QB-13 | — | 水ループの温度制御と監視 | ポンプパッケージ → インターチェンジャ・バイパス | 自動モードでは、バイパス制御器がポンプ出口温度を設定値 63.0 ± 2.5°F と比べてバイパス弁を開閉する | IF-WCL-06 | QB_13（PumpOutletTemperature） | AUTO のとき、水のバイパス制御器とバイパス弁が、ポンプ出口温度の設定値 63.0 ± 2.5°F を保つようにバイパス水量を自動で制御する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/379） |
| QB-14 | — | 水ループの温度制御と監視 | 水ループ監視 → 水ループ運用管理 | ポンプ出口圧・アキュムレータ量・インターチェンジャ流量・ポンプ出口温度などを、ARS 水ループの喪失判定とループ切替の判断に使わせる | IF-WCL-11 | QB_14（WaterLoopLossJudgement） | ARS 水ループの喪失は、アキュムレータ量が 0 になる、インターチェンジャ流量を保てない、ポンプ出口温度を保てないなどの場合と判定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2059） |

## 13. 図240 のライフライン

図240 与圧・給水・廃棄物・エアロックの運転と表示 シーケンス図（与圧・給水・廃棄物・エアロックの運転と表示）のライフライン 12件を示す。

| ID | ライフライン | 文書 | SysML |
|---|---|---|---|
| CREW | 乗員 | — | crew |
| POPS | 与圧運用管理 | SSD-FD-ECL-PCS-OPS-001 | pcsOps |
| PMNF | 与圧系のマニホールド・弁構成 | SSD-FD-ECL-PCS-MNF-001 | pcsMnf |
| PO2S | O2 供給（与圧） | SSD-FD-ECL-PCS-O2S-001 | pcsO2s |
| PMON | 与圧の監視 | SSD-FD-ECL-PCS-MON-001 | pcsMon |
| WCSO | WCS 運用管理 | SSD-FD-ECL-WCS-OPS-001 | wcsOps |
| WFSP | ファンセパレータ | SSD-FD-ECL-WCS-FSP-001 | wcsFsp |
| WCMD | コモード操作 | SSD-FD-ECL-WCS-CMD-001 | wcsCmd |
| WVAC | 真空ベント | SSD-FD-ECL-WCS-VAC-001 | wcsVac |
| H2O | 給水・廃水系 | SSD-FD-ECL-H2O-001 | h2oSys |
| ALSM | エアロック計測 | SSD-FD-ECL-ALS-MON-001 | alsMon |
| DPS | DPS（SM 表示・警報） | SSD-FD-DPS-001 | dps |

## 14. 図240 のメッセージ

図240 与圧・給水・廃棄物・エアロックの運転と表示 シーケンス図のメッセージ 14件を、上から順に示す。

| ID | 時刻 | 区間 | 送り手 → 受け手 | 内容 | 経路・IF | SysML | 根拠 |
|---|---|---|---|---|---|---|---|
| QC-01 | — | 与圧の構成と監視 | 与圧運用管理 → 与圧系のマニホールド・弁構成 | 選んだ系統のキャビンレギュレータ入口弁と O2 レギュレータ入口弁の開、O2/N2 制御弁の AUTO（軌道上）、または全閉と PCS 1 だけ開（上昇・再突入）を渡す | IF-PCS-16 | QC_01（PressureValveConfig） | 軌道上の PCS は、選んだ系統の14.7 psia キャビンレギュレータ入口弁と O2 レギュレータ入口弁を開き、O2/N2 制御弁を AUTO にする。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=47）通常の PCS の弁の構成は、上昇・再突入では両系統の14.7 psia キャビンレギュレータ入口弁と O2 レギュレータ入口弁を閉じ、PCS 1 の O2/N2 制御弁を開、PCS 2 を閉とする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1964） |
| QC-02 | — | 与圧の構成と監視 | 与圧運用管理 → O2 供給（与圧） | PPO2 が3.20 psia 未満なら就寝前の O2 ブリードオリフィスの取り付け、帰還日の取り外しと、直接 O2 弁の使い方を渡す | IF-PCS-17 | QC_02（O2BleedOrificeCommand） | PPO2 が3.20 psia 未満なら飛行1日目の就寝前に O2 ブリードオリフィスを LEH のクイックディスコネクトに取り付け、帰還日の軌道離脱準備で外す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1971）直接 O2 弁の流れは、10.2 psia のキャビンの維持といくつかの故障への対処に使う。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=33） |
| QC-03 | — | 与圧の構成と監視 | 与圧の監視 → 与圧運用管理 | 14.7 psia に換算した等価の dP/dT を渡し、緊急中止・AOA の判定に使わせる | IF-PCS-15 | QC_03（EquivalentDpDt） | 上昇中の隔離できない漏れが0.15 psia/min を超えれば緊急中止、0.02〜0.15 psia/min なら AOA 中止とし、dP/dT は14.7 psia のキャビン圧に換算した等価の値である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1955） |
| QC-04 | — | 与圧の構成と監視 | 与圧運用管理 → 乗員 | 漏れの判定（0.15 psia/min 超は緊急中止、0.02〜0.15 は AOA 中止）の結果を伝え、処置を促す | — | QC_04（CabinLeakJudgment） | 上昇中の隔離できない漏れが0.15 psia/min を超えれば緊急中止、0.02〜0.15 psia/min なら AOA 中止とし、dP/dT は14.7 psia のキャビン圧に換算した等価の値である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1955） |
| QC-05 | — | 給水・廃水の表示 | 給水・廃水系 → DPS（SM 表示・警報） | 給水タンク量 A〜D と給水圧を、軌道上は PASS SM の SPEC 66、上昇・再突入は BFS の THERMAL 表示へ送る | IF-H2O-05 | QC_05（SupplyWaterDisplayData） | 給水系の情報は、軌道上は PASS SM の SPEC 66、上昇・再突入では BFS の THERMAL 表示で見る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=158）SPEC 66 の ENVIRONMENT 表示は、給水タンク量 A〜D と給水圧、給水・廃水のダンプ配管温度とノズル温度、真空ベントノズル温度の欄を持つ。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=160） |
| QC-06 | — | 給水・廃水の表示 | 給水・廃水系 → DPS（SM 表示・警報） | 給水・廃水のダンプ配管温度とノズル温度 A・B を SPEC 66 へ送り、45°F未満・125°F超・250°F超で SM アラートを出させる | IF-H2O-12 | QC_06（DumpTempData） | SPEC 66 の ENVIRONMENT 表示は、給水タンク量 A〜D と給水圧、給水・廃水のダンプ配管温度とノズル温度、真空ベントノズル温度の欄を持つ。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=160）ダンプ配管温度が45°F未満か125°F超、またはノズル温度が250°F超になると、SM アラートが出る。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=325） |
| QC-07 | — | 廃棄物収集の操作 | 乗員 → WCS 運用管理 | FAN SEP 選択スイッチでファンセパレータを選び、MODE スイッチを操作する | — | QC_07（FanSepSelection） | FAN SEP 選択スイッチで使うファンセパレータを選び、MODE スイッチが AUTO のときは選んだ分離器のオートクレードルのマイクロスイッチが働く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/758） |
| QC-08 | — | 廃棄物収集の操作 | WCS 運用管理 → ファンセパレータ | 選んだファンセパレータを指令する（MODE が AUTO なら小便器のホースを外すと起動、リミットスイッチ故障時はバイパススイッチで交流を供給） | IF-WCS-13 | QC_08（FanSeparatorCommand） | FAN SEP 選択スイッチで使うファンセパレータを選び、MODE スイッチが AUTO のときは選んだ分離器のオートクレードルのマイクロスイッチが働く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/758）リミットスイッチが故障したときは、バイパススイッチで対応するリレーに直流を与えて分離器に交流を供給する。真空ベント隔離弁はパネル ML31C の WASTE H2O VACUUM VENT ISOL VLV CONTROL スイッチで制御する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/760） |
| QC-09 | — | 廃棄物収集の操作 | 乗員 → WCS 運用管理 | MODE スイッチを OFF から動かし、COMMODE/MANUAL/EMU にする | — | QC_09（ModeSwitchSelection） | COMMODE CONTROL ハンドルは MODE スイッチを OFF から動かすまで操作できず、機械的に連動している。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=474）MODE スイッチを COMMODE/MANUAL/EMU にしないと、COMMODE CONTROL ハンドルを前へ押せない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/759） |
| QC-10 | — | 廃棄物収集の操作 | WCS 運用管理 → コモード操作 | MODE スイッチの位置を渡し、OFF の間は COMMODE CONTROL ハンドルを動かせないよう連動させる | IF-WCS-14 | QC_10（CommodeInterlockCommand） | COMMODE CONTROL ハンドルは MODE スイッチを OFF から動かすまで操作できず、機械的に連動している。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=474）MODE スイッチを COMMODE/MANUAL/EMU にしないと、COMMODE CONTROL ハンドルを前へ押せない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/759） |
| QC-11 | — | 廃棄物収集の操作 | 乗員 → WCS 運用管理 | VACUUM VALVE のスイッチを操作する（軌道上は通常開、打上げ・再突入は閉） | — | QC_11（VacuumValveSwitch） | WCS の VACUUM VALVE は便器への真空ベント管を開閉し、軌道上は通常開き、打上げ・再突入では閉じる。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=468） |
| QC-12 | — | 廃棄物収集の操作 | WCS 運用管理 → 真空ベント | 便器への真空ベント管を開閉する指令を渡す。真空ベント隔離弁は ML31C のスイッチで開閉する | IF-WCS-15 | QC_12（VacuumVentCommand） | WCS の VACUUM VALVE は便器への真空ベント管を開閉し、軌道上は通常開き、打上げ・再突入では閉じる。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=468）リミットスイッチが故障したときは、バイパススイッチで対応するリレーに直流を与えて分離器に交流を供給する。真空ベント隔離弁はパネル ML31C の WASTE H2O VACUUM VENT ISOL VLV CONTROL スイッチで制御する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/760） |
| QC-13 | — | 真空ベントとエアロックの表示 | 真空ベント → DPS（SM 表示・警報） | 真空ベントノズル温度（VAC VT NOZ T）を SM の DISP 66 ENVIRONMENT へ送る。非常時は廃棄物収集器の圧力が1 psia 未満で5分続けば便器を再開できる | IF-WCS-12・IF-ECL-37 | QC_13（VacVentNozzleTemp） | 真空ベントノズル温度（VAC VT NOZ T）とエアロック圧力（AIRLK P）は、SM の DISP 66 ENVIRONMENT に表示される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/359）廃棄物収集器の圧力は MCC が確認し、非常時の真空ベント運用では1 psia 未満が5分続けば便器の使用を再開できる。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=481） |
| QC-14 | — | 真空ベントとエアロックの表示 | エアロック計測 → DPS（SM 表示・警報） | エアロックの雰囲気、ベスティビュール減圧弁、水配管、構造ヒータの計測値を SM OPS 2 の SPEC 177 EXTERNAL AIRLOCK へ、エアロック圧力を DISP 66 へも送る | IF-ALS-10・IF-ECL-38 | QC_14（AirlockMeasurements） | EXTERNAL AIRLOCK 表示（DISP 177）は SM OPS 2 だけで使え、エアロックの雰囲気、ベスティビュール減圧弁、水配管、構造ヒータの情報を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=189）真空ベントノズル温度（VAC VT NOZ T）とエアロック圧力（AIRLK P）は、SM の DISP 66 ENVIRONMENT に表示される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/359） |

## 15. 図241 のライフライン

図241 煙検知と消火 シーケンス図（煙検知と消火）のライフライン 6件を示す。

| ID | ライフライン | 文書 | SysML |
|---|---|---|---|
| DET | 煙感知器 | SSD-FD-ECL-FDS-DET-001 | smokeDetector |
| ALM | 煙警報 | SSD-FD-ECL-FDS-ALM-001 | smokeAlarm |
| DPS | DPS・アビオニクス | SSD-FD-DPS-001 | dpsAvionics |
| OPS | 火災対応・運用管理 | SSD-FD-ECL-FDS-OPS-001 | fireOps |
| FIX | 遠隔消火（ベイ） | SSD-FD-ECL-FDS-FIX-001 | bayFireExt |
| PFE | 携帯消火器・消火ポート | SSD-FD-ECL-FDS-PFE-001 | portableExt |

## 16. 図241 のメッセージ

図241 煙検知と消火 シーケンス図のメッセージ 8件を、上から順に示す。

| ID | 時刻 | 区間 | 送り手 → 受け手 | 内容 | 経路・IF | SysML | 根拠 |
|---|---|---|---|---|---|---|---|
| QD-01 | — | 検知と警報 | 煙感知器 → 煙警報 | 煙感知器が警報条件を満たし、トリップ信号を出して、パネル L1 の該当する SMOKE DETECTION 灯を点灯させる。 | IF-FDS-02 | QD_01（SmokeTripSignal） | 煙感知器が警報条件を満たすとトリップ信号が出て、パネル L1 の該当する赤の SMOKE DETECTION 灯が点灯する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/118） |
| QD-02 | — | 検知と警報 | 煙感知器 → DPS・アビオニクス | 各感知器の濃度のアナログ出力を GPC へ送り、SM SYS SUMM 1 に表示させる（2.0 mg/m3 でバックアップ C&W が警報を出す）。 | IF-FDS-03・IF-ECL-18 | QD_02（SmokeConcentrationData） | 煙濃度は SM SYS SUMM 1（SPEC 78）に表示され、2.0 mg/m3 でバックアップ C&W の警報が出る。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=28） |
| QD-03 | — | 検知と警報 | 煙警報 → DPS・アビオニクス | 煙警報で C&W のサイレンを鳴らし、4つの MASTER ALARM 表示を点灯させる。 | IF-FDS-06 | QD_03（SmokeAlarmAnnunciation） | 煙検知系は C&W のサイレンを鳴らし、パネル F2・F4・A7・MO52J の4つの MASTER ALARM 表示を点灯させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/114） |
| QD-04 | — | 確認と感知器の試験 | 煙警報 → 火災対応・運用管理 | SMOKE DETECTION 灯・サイレンと DPS 表示の濃度を渡し、乗員が火災の位置を特定して実際の火災かを確かめる。 | IF-FDS-07 | QD_04（FireIndicationCue） | 消火の操作では、乗員が火災の表示を見て位置を特定し、煙・火災の表示が本物かを確かめる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=38） |
| QD-05 | — | 確認と感知器の試験 | 煙警報 → 煙感知器 | SENSOR RESET で感知器の論理回路をリセットし、CIRCUIT TEST で感知器に 28 V を加えて灯と時間遅れを試験する。 | IF-FDS-05 | QD_05（SensorResetTestCommand） | SENSOR RESET は感知器の論理回路をリセットし、CIRCUIT TEST は 28 V を感知器に加えて灯と20秒の時間遅れを試験する。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=39） |
| QD-06 | — | 消火 | 火災対応・運用管理 → 遠隔消火（ベイ） | ベイの火災を確認したら、そのベイの Halon ボトルを放出し、ベイファンを止める。 | IF-FDS-13 | QD_06（BayHalonDischargeCommand） | ベイの火災では、そのベイの Halon ボトルを放出しベイファンを止め、乗員室の火災ではキャビンファンを止めて携帯の Halon ボトルを消火ポートへ放出する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1923） |
| QD-07 | — | 消火 | 火災対応・運用管理 → 携帯消火器・消火ポート | 乗員室の火災では、火元を特定して確かめたうえで、キャビンファンを止めヘルメットを着け、携帯の Halon ボトルを消火ポートへ放出する。 | IF-FDS-14 | QD_07（CabinHalonDischargeAction） | ベイの火災では、そのベイの Halon ボトルを放出しベイファンを止め、乗員室の火災ではキャビンファンを止めて携帯の Halon ボトルを消火ポートへ放出する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1923）乗員室の火災では、Halon ボトルの放出の前に、乗員が火元を特定して火災の存在を確かめる必要がある。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1915） |
| QD-08 | — | テレメトリ | 遠隔消火（ベイ） → DPS・アビオニクス | 煙検知系と遠隔消火系の各種パラメータをテレメトリへ送る（MCC は空ボトルは分かるが、放出の時刻は分からない）。 | IF-FDS-09 | QD_08（FdsTelemetryParameters） | 煙検知系と遠隔消火系の各種パラメータはテレメトリへ送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/123）MCC の空ボトルの表示からは、漏れの始まりや放出の時刻は分からない。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1928） |

## 17. 図242 のライフライン

図242 キャビン温湿度の制御と監視 シーケンス図（キャビン温湿度の制御と監視）のライフライン 6件を示す。

| ID | ライフライン | 文書 | SysML |
|---|---|---|---|
| CREW | 乗員 | — | crew |
| OPS | 温湿度運用管理 | SSD-FD-ARS-THC-OPS-001 | thcOps |
| MON | 温湿度監視 | SSD-FD-ARS-THC-MON-001 | thcMon |
| TCV | 温度制御弁・給気混合 | SSD-FD-ARS-THC-TCV-001 | thcTcv |
| SEP | 湿度分離器・凝縮水排出 | SSD-FD-ARS-THC-SEP-001 | thcSep |
| DPS | DPS・アビオニクス | SSD-FD-DPS-001 | dps |

## 18. 図242 のメッセージ

図242 キャビン温湿度の制御と監視 シーケンス図のメッセージ 10件を、上から順に示す。

| ID | 時刻 | 区間 | 送り手 → 受け手 | 内容 | 経路・IF | SysML | 根拠 |
|---|---|---|---|---|---|---|---|
| QE-01 | — | 運転の選択 | 乗員 → 温湿度運用管理 | パネル L1 の CABIN TEMP CNTRL スイッチでコントローラを選び、CABIN TEMP ロータリスイッチで温度を選ぶ | スイッチ | QE_01（CabinTempSwitchInput） | パネル L1 の HUMIDITY SEP スイッチは湿度分離器の電源を入切りし、CABIN TEMP CNTRL スイッチは 2 台の温度コントローラの一方を選ぶ。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90） |
| QE-02 | — | 運転の選択 | 温湿度運用管理 → 温度制御弁・給気混合 | 選んだコントローラと温度を温度制御弁の制御へ渡す | IF-THC-14（選択） | QE_02（CabinTempSelection） | パネル L1 の HUMIDITY SEP スイッチは湿度分離器の電源を入切りし、CABIN TEMP CNTRL スイッチは 2 台の温度コントローラの一方を選ぶ。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90） |
| QE-03 | — | 運転の選択 | 乗員 → 温湿度運用管理 | パネル L1 の HUMIDITY SEP A・B スイッチ（ON–OFF）を操作する | スイッチ | QE_03（HumiditySepSwitchInput） | パネル L1 の HUMIDITY SEP スイッチは湿度分離器の電源を入切りし、CABIN TEMP CNTRL スイッチは 2 台の温度コントローラの一方を選ぶ。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90） |
| QE-04 | — | 運転の選択 | 温湿度運用管理 → 湿度分離器・凝縮水排出 | 湿度分離器 A・B の電源を個別に入切りする | IF-THC-15 | QE_04（HumiditySepPowerCommand） | パネル L1 の HUMIDITY SEP スイッチは湿度分離器の電源を入切りし、CABIN TEMP CNTRL スイッチは 2 台の温度コントローラの一方を選ぶ。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90） |
| QE-05 | — | 制御と検知 | 温湿度監視 → 温度制御弁・給気混合 | 有効なコントローラが給気ダクトと還流ダクトの温度を検知し、選ばれた温度に制御する | IF-THC-10 | QE_05（DuctTempControlData） | 有効な温度コントローラは、給気ダクトと還流ダクトの温度を検知し、乗員が選んだ温度に制御する。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=35）SCOM の系統図は、キャビン温度セレクタ、ダクト温度センサ、温度制御弁を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） |
| QE-06 | — | 制御と検知 | 湿度分離器・凝縮水排出 → 温湿度監視 | 回転数センサの信号で、湿度分離器が正常に回っているかを検知する | IF-THC-09 | QE_06（SeparatorSpeedSignal） | HUM SEP 信号調整器が回転数センサに給電し、湿度分離器が正常に運転しているかを検知する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） |
| QE-07 | — | 表示と警報 | 温湿度監視 → DPS・アビオニクス | 湿度分離器 A・B の運転状態（HUMID SEP）とキャビン温度（CABIN T）を SM へ送り、SPEC 66 ENVIRONMENT に表示する | IF-THC-12 | QE_07（EnvironmentDisplayData） | 湿度分離器の運転状態（HUMID SEP）とキャビン温度（CABIN T）は、ENVIRONMENT 表示に出る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=81） |
| QE-08 | — | 表示と警報 | DPS・アビオニクス → 乗員 | 運転中の分離器の回転数が下がると、SM の警報「S66 HUMID SEP A(B)」を出す | 表示・操作部 | QE_08（HumidSepAlert） | SM の警報「S66 HUMID SEP A(B)」は、湿度分離器の故障処置の入口になる。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=285） |
| QE-09 | — | 喪失の判断と処置 | 温湿度監視 → 温湿度運用管理 | 熱交換器出口温度・キャビン温度・分離器の運転状態の表示と警報を、キャビン大気制御の喪失判定（A17-102）と故障処置に使う | IF-THC-13 | QE_09（AtmosphereLossJudgementData） | キャビン温度を 95 度（90 度）F 未満に保てないとき、キャビン大気制御は喪失とみなされる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1930） |
| QE-10 | — | 喪失の判断と処置 | 温湿度運用管理 → 温度制御弁・給気混合 | コントローラで弁を制御できない場合は、MD44F で弁アームを4つの固定穴の一つにピン止めする | IF-THC-14（手動） | QE_10（ManualBypassValvePin） | コントローラで単一のバイパス弁を制御できないとき、乗員は MD44F で弁アームを固定穴の一つにピン止めする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375） |

## 19. 図244 のライフライン

図244 APU・油圧の運転と監視 シーケンス図（APU・油圧の運転と監視）のライフライン 8件を示す。

| ID | ライフライン | 文書 | SysML |
|---|---|---|---|
| CREW | 乗員 | — | crew |
| OPS | APU/HYD 運用管理 | SSD-FD-APU-OPS-001 | apuOps |
| FUL | ヒドラジン燃料供給 | SSD-FD-APU-FUL-001 | apuFul |
| WSB | 水噴霧ボイラ | SSD-FD-APU-WSB-001 | apuWsb |
| HYD | 主油圧ポンプ・供給 | SSD-FD-APU-HYD-001 | apuHyd |
| CTL | APU 制御器 | SSD-FD-APU-CTL-001 | apuCtl |
| TRB | タービン・ギアボックス | SSD-FD-APU-TRB-001 | apuTrb |
| FSW | DPS：飛行ソフトウェア | SSD-FD-DPS-FSW-001 | dpsFsw |

## 20. 図244 のメッセージ

図244 APU・油圧の運転と監視 シーケンス図のメッセージ 17件を、上から順に示す。

| ID | 時刻 | 区間 | 送り手 → 受け手 | 内容 | 経路・IF | SysML | 根拠 |
|---|---|---|---|---|---|---|---|
| YA-01 | — | 始動前の準備 | 乗員 → APU/HYD 運用管理 | パネル R2 の APU FUEL TK VLV 1・2・3 スイッチを OPEN にする。 | スイッチ | YA_01（FuelTkVlvSwitchSelect） | パネル R2 の APU FUEL TK VLV 1・2・3 スイッチを OPEN にすると、各 APU の2個の燃料タンク隔離弁が通電して開き、CLOSE にするか電力を失うと両弁が閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/86） |
| YA-02 | — | 始動前の準備 | APU/HYD 運用管理 → ヒドラジン燃料供給 | スイッチの位置に従って各 APU の2個の燃料タンク隔離弁を通電して開く指令を渡す。CLOSE か電力喪失では両弁が閉じる。 | IF-APU-03 | YA_02（FuelIsolationValveCommand） | パネル R2 の APU FUEL TK VLV 1・2・3 スイッチを OPEN にすると、各 APU の2個の燃料タンク隔離弁が通電して開き、CLOSE にするか電力を失うと両弁が閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/86） |
| YA-03 | — | 始動前の準備 | 乗員 → APU/HYD 運用管理 | パネル R2 の BOILER N2 SUPPLY 1・2・3 スイッチで、各ボイラの窒素遮断弁を開く。 | スイッチ | YA_03（BoilerN2SwitchSelect） | パネル R2 の BOILER N2 SUPPLY 1・2・3 スイッチが各ボイラの窒素遮断弁を制御し、遮断弁は2つの独立したソレノイドコイルで主・副どちらの制御器からも操作できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/96） |
| YA-04 | — | 始動前の準備 | APU/HYD 運用管理 → 水噴霧ボイラ | 各ボイラの窒素遮断弁を開閉する指令を渡す。遮断弁は2つの独立したソレノイドで主・副どちらの制御器からも操作できる。 | IF-APU-21 | YA_04（BoilerN2ShutoffCommand） | パネル R2 の BOILER N2 SUPPLY 1・2・3 スイッチが各ボイラの窒素遮断弁を制御し、遮断弁は2つの独立したソレノイドコイルで主・副どちらの制御器からも操作できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/96） |
| YA-05 | — | 始動前の準備 | 水噴霧ボイラ → APU/HYD 運用管理 | 制御器が有効で、窒素遮断弁が開、蒸気ベントのノズル温度が 130°F 超、作動油のバイパス弁が正しい位置のとき、R2 の APU/HYD READY TO START 表示へ準備完了の信号を渡す。 | IF-APU-21 | YA_05（BoilerReadySignal） | ボイラの制御器が有効で、窒素遮断弁が開、蒸気ベントのノズル温度が 130°F 超、作動油のバイパス弁が正しい位置のとき、パネル R2 の APU/HYD READY TO START 表示へ準備完了の信号が送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/98） |
| YA-06 | — | 始動前の準備 | 乗員 → APU/HYD 運用管理 | APU の始動に先立って、パネル R2 の HYD MAIN PUMP PRESS スイッチを LOW にする。 | スイッチ | YA_06（HydPumpPressLowSelect） | パネル R2 の HYD MAIN PUMP PRESS スイッチを LOW にすると減圧弁が通電して、主ポンプの吐出圧が 2,900〜3,100 psi から 500〜1,000 psi に下がり、APU の始動時のトルクの要求が減る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/99） |
| YA-07 | — | 始動前の準備 | APU/HYD 運用管理 → 主油圧ポンプ・供給 | 減圧弁を通電して主ポンプの吐出圧を 500〜1,000 psi に下げる指令を渡す。 | IF-APU-20 | YA_07（PumpDepressurizeCommand） | パネル R2 の HYD MAIN PUMP PRESS スイッチを LOW にすると減圧弁が通電して、主ポンプの吐出圧が 2,900〜3,100 psi から 500〜1,000 psi に下がり、APU の始動時のトルクの要求が減る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/99） |
| YA-08 | — | 始動前の準備 | タービン・ギアボックス → APU 制御器 | ガス発生器床の温度トランスデューサの信号を渡す。 | IF-APU-06 | YA_08（GasGenBedTempSignal） | ガス発生器床ヒータは、APU 制御器内の比較器が床温度トランスデューサの信号を受けて 360〜425°F に保ち、この温度範囲が効率のよい始動のための触媒反応を確保する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/94） |
| YA-09 | — | 始動と制御 | APU 制御器 → タービン・ギアボックス | 比較器でガス発生器床ヒータを 360〜425°F に保つ制御を行う。 | IF-APU-06 | YA_09（GasGenHeaterControl） | ガス発生器床ヒータは、APU 制御器内の比較器が床温度トランスデューサの信号を受けて 360〜425°F に保ち、この温度範囲が効率のよい始動のための触媒反応を確保する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/94） |
| YA-10 | — | 始動と制御 | 乗員 → APU/HYD 運用管理 | パネル R2 の APU OPERATE スイッチを START/RUN にし、APU AUTO SHUT DOWN スイッチを ENABLE（または INHIBIT）にする。 | スイッチ | YA_10（ApuOperateSwitchSelect） | パネル R2 の APU OPERATE 1・2・3 スイッチを START/RUN にすると、対応する APU 制御器が始動を開始し、ガス発生器と燃料ポンプのヒータの電力を自動で断つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/89）パネル R2 の APU AUTO SHUT DOWN スイッチを ENABLE にすると制御器の自動停止の機能が有効になり、INHIBIT にすると自動停止が禁止される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/90） |
| YA-11 | — | 始動と制御 | APU/HYD 運用管理 → APU 制御器 | APU の始動の指令と、自動停止の機能の有効（ENABLE）・禁止（INHIBIT）の指令を渡す。制御器は始動を開始し、ガス発生器と燃料ポンプのヒータの電力を自動で断つ。 | IF-APU-19 | YA_11（ApuStartAutoShutCommand） | パネル R2 の APU OPERATE 1・2・3 スイッチを START/RUN にすると、対応する APU 制御器が始動を開始し、ガス発生器と燃料ポンプのヒータの電力を自動で断つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/89）パネル R2 の APU AUTO SHUT DOWN スイッチを ENABLE にすると制御器の自動停止の機能が有効になり、INHIBIT にすると自動停止が禁止される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/90） |
| YA-12 | — | 始動と制御 | APU 制御器 → タービン・ギアボックス | ギアボックス圧力が 5.2 psi 未満になると、潤滑油系の GN2 加圧弁を通電して開く指令を渡し、掃気と潤滑油ポンプの運転に必要な圧力を保つ。 | IF-APU-06 | YA_12（GearboxGn2ValveCommand） | APU 制御器は、ギアボックス圧力が 5.2 psi 未満になると潤滑油系の GN2 加圧弁を通電して開き、掃気と潤滑油ポンプの運転に必要なギアボックス圧力を保つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/88） |
| YA-13 | — | 始動と制御 | 乗員 → APU/HYD 運用管理 | APU の始動後に、HYD MAIN PUMP PRESS スイッチを LOW から NORM にする。 | スイッチ | YA_13（HydPumpPressNormSelect） | APU の始動後に HYD MAIN PUMP PRESS スイッチを LOW から NORM にすると減圧弁の通電が切れ、主ポンプの吐出圧が 500〜1,000 psi から 2,900〜3,100 psi に上がる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/100） |
| YA-14 | — | 始動と制御 | APU/HYD 運用管理 → 主油圧ポンプ・供給 | 減圧弁の通電を切る指令を渡し、主ポンプの吐出圧を 2,900〜3,100 psi に上げる。 | IF-APU-20 | YA_14（PumpNormalPressCommand） | APU の始動後に HYD MAIN PUMP PRESS スイッチを LOW から NORM にすると減圧弁の通電が切れ、主ポンプの吐出圧が 500〜1,000 psi から 2,900〜3,100 psi に上がる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/100） |
| YA-15 | — | 監視と停止後の処置 | 水噴霧ボイラ → DPS：飛行ソフトウェア | 各ボイラの GN2 容器と水タンクの冗長な圧力・温度センサの値を制御器を通して SM GPC へ渡す。GPC は水タンクの量を計算して専用の MEDS 表示へ送り、水量・窒素タンク圧力・調圧器圧力・窒素タンク温度は軌道上で SM APU/HYD（DISP 86）表示の右側に出る。 | IF-APU-14 | YA_15（BoilerSensorTelemetry） | 各ボイラの GN2 容器と水タンクの冗長な圧力・温度センサの値は制御器を通して SM GPC へ送られ、GPC が水タンクの量を計算して専用の MEDS 表示へ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/97）ボイラの水量・窒素タンク圧力・調圧器圧力・窒素タンク温度は、軌道上では SM APU/HYD（DISP 86）表示の右側に示される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/95） |
| YA-16 | — | 監視と停止後の処置 | 乗員 → APU/HYD 運用管理 | APU の自動停止の後は、再び開いた隔離弁が高温のガス発生器床へ燃料を流さないよう、APU FUEL TK VLV スイッチを CLOSE にする。 | スイッチ | YA_16（FuelTkVlvCloseAfterShutdown） | APU の自動停止の後は、燃料タンク隔離弁が再び開いて高温のガス発生器床へ燃料が流れないよう、APU FUEL TK VLV スイッチを CLOSE にする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/89） |
| YA-17 | — | 監視と停止後の処置 | APU/HYD 運用管理 → ヒドラジン燃料供給 | 燃料タンク隔離弁を閉じる指令を渡す。 | IF-APU-03 | YA_17（FuelIsolationValveCloseCommand） | APU の自動停止の後は、燃料タンク隔離弁が再び開いて高温のガス発生器床へ燃料が流れないよう、APU FUEL TK VLV スイッチを CLOSE にする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/89）パネル R2 の APU FUEL TK VLV 1・2・3 スイッチを OPEN にすると、各 APU の2個の燃料タンク隔離弁が通電して開き、CLOSE にするか電力を失うと両弁が閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/86） |

## 21. 図245 のライフライン

図245 DPS の運用管理と MPS の乗員操作 シーケンス図（DPS の運用管理と MPS の乗員操作）のライフライン 10件を示す。

| ID | ライフライン | 文書 | SysML |
|---|---|---|---|
| CREW | 乗員 | — | crew |
| DOPS | DPS 運用管理 | SSD-FD-DPS-OPS-001 | dpsOps |
| GPC | 汎用計算機・冗長セット | SSD-FD-DPS-GPC-001 | dpsGpc |
| BUS | データバス網・MDM | SSD-FD-DPS-BUS-001 | dpsBus |
| MTU | マスタタイミングユニット | SSD-FD-DPS-MTU-001 | dpsMtu |
| MOPS | MPS 運用管理 | SSD-FD-MPS-OPS-001 | mpsOps |
| MCTL | 主エンジン制御器 | SSD-FD-MPS-CTL-001 | mpsCtl |
| MHE | ヘリウム・空圧 | SSD-FD-MPS-HE-001 | mpsHe |
| MDMP | 充填・ダンプ・不活性化 | SSD-FD-MPS-DMP-001 | mpsDmp |
| MTVC | 油圧・推力方向制御 | SSD-FD-MPS-TVC-001 | mpsTvc |

## 22. 図245 のメッセージ

図245 DPS の運用管理と MPS の乗員操作 シーケンス図のメッセージ 17件を、上から順に示す。

| ID | 時刻 | 区間 | 送り手 → 受け手 | 内容 | 経路・IF | SysML | 根拠 |
|---|---|---|---|---|---|---|---|
| YB-01 | — | DPS の故障と時刻の管理 | 汎用計算機・冗長セット → DPS 運用管理 | 搭載と地上の監視で、冗長セットの故障・分裂、GPC 故障、データ経路の故障を宣言する材料を渡す。 | IF-DPS-18 | YB_01（GpcFailureDeclaration） | DPS の故障は、搭載と地上の監視により、冗長セットの故障・分裂、GPC 故障、データ経路の故障として宣言する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1289） |
| YB-02 | — | DPS の故障と時刻の管理 | DPS 運用管理 → 汎用計算機・冗長セット | 故障した GPC を、上昇・再突入では MODE スイッチで HALT にし、それ以外では電源を切り、軌道上では DPS を構成し直して回復を試みる。 | IF-DPS-18 | YB_02（GpcFailureRecoveryAction） | 故障した GPC は、上昇・再突入では MODE スイッチで HALT にし、それ以外では電源を切り、軌道上では DPS を構成し直して回復を試みる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1293） |
| YB-03 | — | DPS の故障と時刻の管理 | DPS 運用管理 → データバス網・MDM | MECO 後の FC・ペイロード MDM の故障に対し、DPS UTILITY 表示の項目入力でポートモードによる回復を試みる。 | IF-DPS-19 | YB_03（MdmPortModeRecovery） | MECO 後の FC・ペイロード MDM の故障では、非普遍 I/O エラーの場合を除き、DPS UTILITY 表示の項目入力で、どの有効な OPS のどのメジャーモードでもポートモードによる回復を試みられる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1328） |
| YB-04 | — | DPS の故障と時刻の管理 | DPS 運用管理 → データバス網・MDM | データ経路の故障の後に、MDM の電源を切って入れ直し、出力をリセットする。 | IF-DPS-19 | YB_04（MdmPowerCycleReset） | データ経路の故障の後は、MDM の電源を切って入れ直して出力をリセットする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1320） |
| YB-05 | — | DPS の故障と時刻の管理 | DPS 運用管理 → マスタタイミングユニット | MTU と GPC の GMT の誤差が 100 ms を超えたら、15 ms の更新を行う。 | IF-DPS-20 | YB_05（GmtErrorUpdate） | MTU と GPC の GMT の誤差は、SPEC 2 TIME が使えるときは 100 ms 以下に保ち、誤差がその閾値を超えたら 15 ms の更新を行う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1330） |
| YB-06 | — | DPS の故障と時刻の管理 | DPS 運用管理 → マスタタイミングユニット | MTU の BITE ビット 4 が立って MCC が時刻差の増加を見た場合などに、MECO 後から HAC 進入までの間に発振器を手動で切り替える。 | IF-DPS-20 | YB_06（MtuOscillatorSwitch） | MTU の BITE ビット 4 が立って MCC が MTU の時刻差の増加を見た場合などは、MECO 後から HAC 進入までの間に発振器を手動で切り替える。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1331） |
| YB-07 | — | MPS の乗員操作 | 乗員 → MPS 運用管理 | パネル C3 の MAIN ENGINE SHUT DOWN 押しボタンを押す（両接点が健全であること）。 | 押しボタン | YB_07（EngineShutdownPushbutton） | 乗員はパネル C3 の MAIN ENGINE SHUT DOWN 押しボタン（両接点が健全であること）でエンジンを手動停止する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/618） |
| YB-08 | — | MPS の乗員操作 | MPS 運用管理 → 主エンジン制御器 | エンジンを手動停止する指令を、主エンジン制御器へ渡す。 | IF-MPS-17 | YB_08（EngineManualShutdownCommand） | 乗員はパネル C3 の MAIN ENGINE SHUT DOWN 押しボタン（両接点が健全であること）でエンジンを手動停止する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/618） |
| YB-09 | — | MPS の乗員操作 | 主エンジン制御器 → MPS 運用管理 | 停止・停止後の段階やレッドライン超過、指令経路故障・ロックアップ・データ経路故障の状態を渡す。 | IF-MPS-17 | YB_09（EngineStatusReport） | パネル F7 の MAIN ENGINE STATUS ライトは、停止・停止後の段階かレッドライン超過で赤が点灯し、指令経路故障・油圧ロックアップ・電気的ロックアップ・データ経路故障でも点灯する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/602） |
| YB-10 | — | MPS の乗員操作 | MPS 運用管理 → 乗員 | パネル F7 の MAIN ENGINE STATUS ライトを点灯させる。 | 表示灯 | YB_10（EngineStatusLightAnnunciation） | パネル F7 の MAIN ENGINE STATUS ライトは、停止・停止後の段階かレッドライン超過で赤が点灯し、指令経路故障・油圧ロックアップ・電気的ロックアップ・データ経路故障でも点灯する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/602） |
| YB-11 | — | MPS の乗員操作 | 乗員 → MPS 運用管理 | パネル R2 の He ISOLATION A・B と He INTERCONNECT のスイッチを操作する。 | スイッチ | YB_11（HeSwitchSelect） | 乗員はパネル R2 の He ISOLATION A・B（LEFT・CTR・RIGHT）スイッチで各エンジン系統の遮断弁を個別に操作し、ヘリウム漏れの隔離手順を行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/598）He INTERCONNECT LEFT・CTR・RIGHT スイッチ（IN OPEN・GPC・OUT OPEN）は、各エンジン系統の相互接続弁の組を 1 個のスイッチで操作する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/599） |
| YB-12 | — | MPS の乗員操作 | MPS 運用管理 → ヘリウム・空圧 | 各エンジン系統の遮断弁を個別に、相互接続弁の組を 1 個のスイッチで操作する指令を渡す。 | IF-MPS-18 | YB_12（HeIsolationValveCommand） | 乗員はパネル R2 の He ISOLATION A・B（LEFT・CTR・RIGHT）スイッチで各エンジン系統の遮断弁を個別に操作し、ヘリウム漏れの隔離手順を行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/598）He INTERCONNECT LEFT・CTR・RIGHT スイッチ（IN OPEN・GPC・OUT OPEN）は、各エンジン系統の相互接続弁の組を 1 個のスイッチで操作する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/599） |
| YB-13 | — | MPS の乗員操作 | 乗員 → MPS 運用管理 | MPS PRPLT DUMP SEQUENCE スイッチを START または STOP にする。 | スイッチ | YB_13（DumpSequenceSwitchSelect） | 乗員は MPS PRPLT DUMP SEQUENCE スイッチの START でダンプを手動で始め、STOP で ET 分離の遅れの間の自動ダンプを止める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/609） |
| YB-14 | — | MPS の乗員操作 | MPS 運用管理 → 充填・ダンプ・不活性化 | ダンプの手動開始と、ET 分離の遅れの間の自動ダンプの停止の指令を渡す。自動の真空不活性化が十分でないときは、手動の真空不活性化も行う。 | IF-MPS-19 | YB_14（PropellantDumpCommand） | 乗員は MPS PRPLT DUMP SEQUENCE スイッチの START でダンプを手動で始め、STOP で ET 分離の遅れの間の自動ダンプを止める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/609）自動の真空不活性化が十分でないときは、LO2 または LH2 の供給系統を手動で真空不活性化し、LO2 系統は LO2 FILL/DRAIN 弁から行う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1031） |
| YB-15 | — | MPS の乗員操作 | 乗員 → MPS 運用管理 | パネル R4 の HYDRAULICS MPS/TVC ISOL VLV SYS 1〜3 スイッチを、軌道上では CLOSE にする。 | スイッチ | YB_15（HydIsolSwitchSelect） | 乗員はパネル R4 の HYDRAULICS MPS/TVC ISOL VLV SYS 1〜3 スイッチを軌道上では CLOSE にし、遮断弁下流の油圧漏れから守る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/601） |
| YB-16 | — | MPS の乗員操作 | MPS 運用管理 → 油圧・推力方向制御 | 遮断弁を閉じて下流の油圧漏れから守る指令を渡す。OPEN にすると弁が開く。 | IF-MPS-20 | YB_16（TvcIsolationValveCommand） | 乗員はパネル R4 の HYDRAULICS MPS/TVC ISOL VLV SYS 1〜3 スイッチを軌道上では CLOSE にし、遮断弁下流の油圧漏れから守る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/601）弁はスイッチを OPEN にすると開き、スイッチの上のトークバックが開で OP、閉で CL を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/600） |
| YB-17 | — | MPS の乗員操作 | 油圧・推力方向制御 → 乗員 | スイッチの上のトークバックが、開で OP、閉で CL を示す。 | トークバック | YB_17（TvcIsolValveTalkback） | 弁はスイッチを OPEN にすると開き、スイッチの上のトークバックが開で OP、閉で CL を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/600） |

## 23. 図246 のライフライン

図246 EVA の準備・減圧・再与圧・非常時の手順 シーケンス図（EVA の準備・減圧・再与圧・非常時の手順）のライフライン 6件を示す。

| ID | ライフライン | 文書 | SysML |
|---|---|---|---|
| EOPS | 合図と運用管理 | SSD-FD-EVA-OPS-001 | evaOps |
| ECHK | EMU 点検・準備 | SSD-FD-EVA-CHK-001 | evaChk |
| EDPR | 減圧・再与圧 | SSD-FD-EVA-DPR-001 | evaDpr |
| EMNT | EVA 後の手入れ・再充填 | SSD-FD-EVA-MNT-001 | evaMnt |
| EEMG | 非常時の手順 | SSD-FD-EVA-EMG-001 | evaEmg |
| MCC | 地上管制（MCC） | — | mcc |

## 24. 図246 のメッセージ

図246 EVA の準備・減圧・再与圧・非常時の手順 シーケンス図のメッセージ 7件を、上から順に示す。

| ID | 時刻 | 区間 | 送り手 → 受け手 | 内容 | 経路・IF | SysML | 根拠 |
|---|---|---|---|---|---|---|---|
| YC-01 | — | 前呼吸と減圧 | 合図と運用管理 → EMU 点検・準備 | キャビンを 10.2 psi にしてからの時間（12 時間・24 時間）に応じて、EMU 内の前呼吸を 1 時間 15 分・40 分とし、14.7 psi のままなら 4 時間とする基準を渡す。 | IF-EVA-01 | YC_01（PrebreatheScheduleData） | EVA チェックリストの EMU 前呼吸の表では、キャビン圧 10.2 psi で 12 時間なら前呼吸は 1 時間 15 分、24 時間なら 40 分とし、14.7 psi のままなら 4 時間とする。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=88）SCOM の 10.2 psia キャビン方式の選択肢 1 は初期前呼吸 60 分・10.2 psia で 12 時間・最終前呼吸 75 分、選択肢 2 は 24 時間・最終前呼吸 40 分であり、スーツ内 4 時間の前呼吸の方式もある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/403） |
| YC-02 | — | 前呼吸と減圧 | EMU 点検・準備 → 地上管制（MCC） | 前呼吸の時間が終わったら、減圧の GO を確かめる。 | 手順（MCC 確認） | YC_02（DepressGoCheck） | EVA チェックリストの手順 53 は、前呼吸の時間が終わったら MCC に DEPRESS/REPRESS（キューカード）の GO を確かめると定める。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=89） |
| YC-03 | — | 前呼吸と減圧 | EMU 点検・準備 → 減圧・再与圧 | MCC の GO を確かめた後、DEPRESS/REPRESS のキューカードで減圧を始めるよう渡す。 | IF-EVA-02 | YC_03（DepressStartCue） | EVA チェックリストの手順 53 は、前呼吸の時間が終わったら MCC に DEPRESS/REPRESS（キューカード）の GO を確かめると定める。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=89） |
| YC-04 | — | 前呼吸と減圧 | 合図と運用管理 → 減圧・再与圧 | 減圧・再与圧は、エアロックの構成ごと（通常構成・トンネルアダプタ）の DEPRESS/REPRESS キューカードに従うよう渡す。漏れ点検の不合格時の手順は FAILED LEAK CHECK に載せる。 | IF-EVA-05 | YC_04（CueCardConfigSelect） | EVA チェックリストのキューカードの一覧には、DEPRESS/REPRESS（通常構成）・DEPRESS/REPRESS（トンネルアダプタ）・FAILED LEAK CHECK の各キューカードがある。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=232） |
| YC-05 | — | 再与圧と EVA 後 | 減圧・再与圧 → EVA 後の手入れ・再充填 | 再与圧でエアロックの気密を確かめて O2 ACT を切った後に POST EVA へ移るよう渡す。再与圧で DCS の症状が消えた場合は、MCC に確かめるまで EMU を脱がない。 | IF-EVA-06 | YC_05（PostEvaHandoff） | EVA 後の POST EVA の手順の警告は、再与圧中に DCS の症状が消えた場合は EMU を脱がず、PMC 経由で MCC に確かめると定め、手順 7 で O2 ACT を切る。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=114） |
| YC-06 | — | 非常時の手順 | 合図と運用管理 → 非常時の手順 | カフチェックリストで DCS の区分を判断した結果を渡す。カフ 4 では ABORT EVA として患者をエアロックへ連れ戻して単独で再与圧し、DCS の処置の手順へ移る。この手順は、カフ 4 への進行を防ぐために EVA を終えた後の処置を定める。 | IF-EVA-13 | YC_06（DcsAbortJudgment） | EVA チェックリストの DCS の区分のカフ 4 は、中枢神経または心肺の重い症状であり、ABORT EVA として患者をエアロックへ連れ戻して単独で再与圧し、もう一人は PLB を安全にして EVA を終える。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=195）DCS の処置の手順では、カフ 4 への進行を防ぐために EVA を終える。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=226） |
| YC-07 | — | 非常時の手順 | 非常時の手順 → 減圧・再与圧 | EMU の汚染が疑われた場合は、エアロックを 5 psia まで再与圧した状態で保ち、検知管による汚染試験を行ってから再与圧を続けるよう渡す。汚染の除去では真空で 15 分保持した後に、エアロックを 5 psi まで再与圧する（REPRESS の手順 1〜8）。 | IF-EVA-07 | YC_07（ContaminationRepressHold） | フライトルール A15-203 によれば、EVA の後の検知管（Drager）試験は、エアロックの圧力を 5 psia にして行う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1873）EVA チェックリストの汚染除去の流れでは、真空の保持時間（PET）が 15 分になったらエアロックを 5 psi まで再与圧し、REPRESS の手順 1〜8 を行う。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=149） |

## 25. 図247 のライフライン

図247 OMS の乗員操作と表示 シーケンス図（OMS の乗員操作と表示）のライフライン 7件を示す。

| ID | ライフライン | 文書 | SysML |
|---|---|---|---|
| CREW | 乗員 | — | crew |
| OOPS | OMS 運用管理（規則・処置） | SSD-FD-OMS-OPS-001 | omsOps |
| EENG | OMS エンジン・GN2 系 | SSD-FD-OMS-ENG-001 | omsEng |
| EHE | OMS ヘリウム加圧 | SSD-FD-OMS-HE-001 | omsHe |
| EXFD | OMS クロスフィード・RCS 連結 | SSD-FD-OMS-XFD-001 | omsXfd |
| EPSD | OMS 推進薬貯蔵・分配 | SSD-FD-OMS-PSD-001 | omsPsd |
| ETHM | OMS 推進薬熱管理 | SSD-FD-OMS-THM-001 | omsThm |

## 26. 図247 のメッセージ

図247 OMS の乗員操作と表示 シーケンス図のメッセージ 10件を、上から順に示す。

| ID | 時刻 | 区間 | 送り手 → 受け手 | 内容 | 経路・IF | SysML | 根拠 |
|---|---|---|---|---|---|---|---|
| YD-01 | — | 噴射前の準備 | 乗員 → OMS 運用管理（規則・処置） | 各噴射の前に、パネル C3 の OMS ENG スイッチを ARM/PRESS にし、それ以外のときは OFF にしておく。 | スイッチ | YD_01（OmsEngSwitchSelect） | OMS ENG LEFT・RIGHT スイッチ（パネル C3）を ARM/PRESS にすると窒素の圧力隔離弁が開く。乗員は各 OMS 噴射の前にこの位置にし、それ以外のときは OFF にしておく。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/647） |
| YD-02 | — | 噴射前の準備 | OMS 運用管理（規則・処置） → OMS エンジン・GN2 系 | ARM/PRESS で GN2 の圧力隔離弁を開く指令を渡す。制御弁1・2は、スイッチが ARM か ARM/PRESS で OMS ENG VLV スイッチが ON のときに計算機の指令で開く。 | IF-OMS-06 | YD_02（OmsEngGn2ValveCommand） | OMS ENG LEFT・RIGHT スイッチ（パネル C3）を ARM/PRESS にすると窒素の圧力隔離弁が開く。乗員は各 OMS 噴射の前にこの位置にし、それ以外のときは OFF にしておく。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/647）GN2 の制御弁1・2は、C3 の OMS ENG スイッチが ARM か ARM/PRESS で、O14（左）・O16（右）の OMS ENG VLV スイッチが ON のときに、計算機の指令で開く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/648） |
| YD-03 | — | 噴射前の準備 | 乗員 → OMS 運用管理（規則・処置） | パネル O8 の He PRESS/VAPOR ISOL スイッチ A・B を、手動の OPEN・CLOSE か、自動制御の GPC 位置にする。 | スイッチ | YD_03（OmsHeSwitchSelect） | パネル O8 の LEFT・RIGHT OMS He PRESS/VAPOR ISOL スイッチは、ヘリウム圧力弁を手動の OPEN・CLOSE と自動制御の GPC 位置で操作し、GPC 位置では自動の噴射シーケンスが噴射の始めに弁を開き終わりに閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/650） |
| YD-04 | — | 噴射前の準備 | OMS 運用管理（規則・処置） → OMS ヘリウム加圧 | ヘリウム圧力弁と蒸気隔離弁を開閉する指令を渡す。A か B のどちらかが OPEN なら両方の蒸気隔離弁が開き、両方が CLOSE なら両方が閉じ、GPC 位置では噴射シーケンスが自動で制御する。 | IF-OMS-07 | YD_04（OmsHeIsolationCommand） | パネル O8 の LEFT・RIGHT OMS He PRESS/VAPOR ISOL スイッチは、ヘリウム圧力弁を手動の OPEN・CLOSE と自動制御の GPC 位置で操作し、GPC 位置では自動の噴射シーケンスが噴射の始めに弁を開き終わりに閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/650）A か B のスイッチが OPEN の位置なら両方の蒸気隔離弁が開き、両方が CLOSE の位置なら両方が閉じ、GPC 位置では GPC が弁を自動で開閉する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/651） |
| YD-05 | — | 噴射前の準備 | 乗員 → OMS 運用管理（規則・処置） | パネル O8 の OMS CROSSFEED A・B スイッチで弁の組を選び、軌道上のインタコネクトは O7 の RCS スイッチとあわせて手動で組む。 | スイッチ | YD_05（OmsCrossfeedSwitchSelect） | パネル O8 の LEFT・RIGHT OMS CROSSFEED A・B スイッチは、ポッドの燃料・酸化剤のクロスフィード弁の組を操作し、GPC 位置のときは、オービタの計算機の指令で A または B の組が自動で開閉される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/656）軌道上の OMS-RCS インタコネクトは手動で組み、RCS の推進薬タンク隔離弁をパネル O7 のスイッチで閉じ、RCS のクロスフィード弁を開いてから OMS のクロスフィード弁を開く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/656） |
| YD-06 | — | 噴射前の準備 | OMS 運用管理（規則・処置） → OMS クロスフィード・RCS 連結 | 燃料・酸化剤のクロスフィード弁の組を開閉する指令を渡す。GPC 位置のときは、A・B の弁の組がオービタの計算機の指令で自動的に開閉される。 | IF-OMS-08 | YD_06（OmsCrossfeedValveCommand） | パネル O8 の LEFT・RIGHT OMS CROSSFEED A・B スイッチは、ポッドの燃料・酸化剤のクロスフィード弁の組を操作し、GPC 位置のときは、オービタの計算機の指令で A または B の組が自動で開閉される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/656） |
| YD-07 | — | 推進薬量の監視 | OMS 推進薬貯蔵・分配 → OMS 運用管理（規則・処置） | トータライザの全量と後室プローブの量を渡す。使用可能推進薬は計測量から残量を差し引いて定義される。 | IF-OMS-09 | YD_07（OmsPropellantQuantityData） | トータライザの出力はパネル O3 の RCS/OMS PRPLT QTY の LED に表示され、GNC SYS SUMM 2 の表示には後室プローブの量（OMS AFT QTY）が出る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/653）フライトルール A6-301 は、OMS の使用可能推進薬を、計測した推進薬から残量を差し引いたものと定義する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1246） |
| YD-08 | — | 推進薬量の監視 | OMS 運用管理（規則・処置） → 乗員 | 全量をパネル O3 の RCS/OMS PRPLT QTY に、後室の量を GNC SYS SUMM 2 の OMS AFT QTY に出し、推進薬の予算とレッドラインの管理に使わせる。 | 表示 | YD_08（OmsQuantityDisplay） | トータライザの出力はパネル O3 の RCS/OMS PRPLT QTY の LED に表示され、GNC SYS SUMM 2 の表示には後室プローブの量（OMS AFT QTY）が出る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/653）フライトルール A6-301 は、OMS の使用可能推進薬を、計測した推進薬から残量を差し引いたものと定義する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1246） |
| YD-09 | — | ヒータ系統の切替 | 乗員 → OMS 運用管理（規則・処置） | パネル A14 の RCS/OMS HTR スイッチで、左右ポッドと OMS クロスフィード配管のヒータの A・B 系統を選ぶ。 | スイッチ | YD_09（OmsHeaterSwitchSelect） | 軌道運用チェックリストのヒータ再構成では、パネル A14 の RCS/OMS HTR スイッチで、左右ポッドと OMS クロスフィード配管のヒータの A・B 系統を切り替える。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=179） |
| YD-10 | — | ヒータ系統の切替 | OMS 運用管理（規則・処置） → OMS 推進薬熱管理 | 選んだヒータ系統へ切り替える指令を渡す。飛行中に少なくとも1回は冗長な系統（A か B）へ切り替える。 | IF-OMS-10 | YD_10（OmsHeaterStringCommand） | 軌道運用チェックリストのヒータ再構成では、パネル A14 の RCS/OMS HTR スイッチで、左右ポッドと OMS クロスフィード配管のヒータの A・B 系統を切り替える。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=179）フライトルール A6-251 は、ヒータを飛行中に少なくとも1回は冗長な系統（A か B）へ切り替えると定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1229） |

## 27. 図248 のライフライン

図248 RCS の噴射器冗長管理と乗員操作 シーケンス図（RCS の噴射器冗長管理と乗員操作）のライフライン 9件を示す。

| ID | ライフライン | 文書 | SysML |
|---|---|---|---|
| CREW | 乗員 | — | crew |
| OPS | RCS 運用管理 | SSD-FD-RCS-OPS-001 | rcsOps |
| PRP | 推進薬貯蔵・分配 | SSD-FD-RCS-PRP-001 | rcsPrp |
| HEP | ヘリウム加圧 | SSD-FD-RCS-HEP-001 | rcsHep |
| HTR | 熱制御（ヒータ） | SSD-FD-RCS-HTR-001 | rcsHtr |
| RJD | 噴射器駆動回路 | SSD-FD-RCS-RJD-001 | rcsRjd |
| JET | 主・バーニア噴射器 | SSD-FD-RCS-JET-001 | rcsJet |
| RM | 噴射器冗長管理 | SSD-FD-RCS-RM-001 | rcsRm |
| CWP | 警報系（C/W） | SSD-FD-CW-PRI-001 | cwPri |

## 28. 図248 のメッセージ

図248 RCS の噴射器冗長管理と乗員操作 シーケンス図のメッセージ 14件を、上から順に示す。

| ID | 時刻 | 区間 | 送り手 → 受け手 | 内容 | 経路・IF | SysML | 根拠 |
|---|---|---|---|---|---|---|---|
| YE-01 | — | 運転の操作 | 乗員 → RCS 運用管理 | パネル O7・O8 のスイッチで、推進薬系の弁（タンク隔離・マニホールド隔離・クロスフィード）の開閉を選ぶ。 | スイッチ | YE_01（RcsValveSwitchSelect） | RCS の制御スイッチの大部分はパネル O7・O8 にあり、熱制御のスイッチはパネル A14 にある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/742）タンク隔離弁の対のトークバックは、開で OP、閉で CL を示し、移動中、または一方が開で他方が閉のときはバーバーポールを示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/722） |
| YE-02 | — | 運転の操作 | RCS 運用管理 → 推進薬貯蔵・分配 | 運用規則と手順に従い、推進薬系の弁（タンク隔離・マニホールド隔離・クロスフィード）の操作を渡す。トークバックは対が開なら OP、閉なら CL、移動中や不一致ならバーバーポールを示す。 | IF-RCS-16 | YE_02（RcsPropellantValveOperation） | RCS の制御スイッチの大部分はパネル O7・O8 にあり、熱制御のスイッチはパネル A14 にある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/742）タンク隔離弁の対のトークバックは、開で OP、閉で CL を示し、移動中、または一方が開で他方が閉のときはバーバーポールを示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/722） |
| YE-03 | — | 運転の操作 | 乗員 → RCS 運用管理 | パネル O7・O8 の He PRESS A・B スイッチで、ヘリウム隔離弁を操作し、調圧器の故障では RCS REGULATOR RECONFIG の手順で加圧経路を切り替える。 | スイッチ | YE_03（RcsHePressSwitchSelect） | オービット運用チェックリストの RCS REGULATOR RECONFIG の手順は、パネル O7・O8 の He PRESS A・B スイッチを操作する。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=256） |
| YE-04 | — | 運転の操作 | RCS 運用管理 → ヘリウム加圧 | He PRESS A・B のスイッチ操作として、ヘリウム隔離弁の開閉と加圧経路の切替を渡す。 | IF-RCS-17 | YE_04（RcsHeIsolationCommand） | オービット運用チェックリストの RCS REGULATOR RECONFIG の手順は、パネル O7・O8 の He PRESS A・B スイッチを操作する。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=256） |
| YE-05 | — | 運転の操作 | 乗員 → RCS 運用管理 | パネル A14 のヒータスイッチで、ヒータ系（A・B）の選択と入切を行う。 | スイッチ | YE_05（RcsHeaterSwitchSelect） | RCS の制御スイッチの大部分はパネル O7・O8 にあり、熱制御のスイッチはパネル A14 にある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/742） |
| YE-06 | — | 運転の操作 | RCS 運用管理 → 熱制御（ヒータ） | 運用規則に従い、ヒータ系（A・B）の選択と入切を渡す。ヒータ系は飛行中に少なくとも一度は冗長側へ切り替える。 | IF-RCS-19 | YE_06（RcsHeaterSelectCommand） | RCS の制御スイッチの大部分はパネル O7・O8 にあり、熱制御のスイッチはパネル A14 にある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/742）フライトルール A6-251 は、ヒータを飛行中に少なくとも一度は冗長側（A または B）へ切り替えると定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1229） |
| YE-07 | — | 噴射器と弁の監視 | 噴射器駆動回路 → 噴射器冗長管理 | 燃焼室圧の離散信号を、実際に噴射したことの表示として渡す。RM は Pc 離散信号・CMD B・ドライバ出力離散信号を噴射器の故障の検知に使う。 | IF-RCS-04 | YE_07（RcsPcDiscreteSignal） | 反応ジェットドライバ（RJD）は、燃焼室圧の離散信号を作り、実際の噴射の表示として冗長管理（RM）へ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/719）RCS RM が使う噴射器のパラメータは、Pc 離散信号・CMD B・ドライバ出力離散信号と、酸化剤・燃料の噴射器温度である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/728） |
| YE-08 | — | 噴射器と弁の監視 | 主・バーニア噴射器 → 噴射器冗長管理 | 各噴射器の燃料・酸化剤の噴射器温度を渡す。RM の限界を3周期続けて下回ると漏れ（fail-leak）と判定される。限界は主噴射器で酸化剤 30°F・燃料 20°F、OPS 2 のバーニアで 130°F である。 | IF-RCS-05 | YE_08（RcsInjectorTempData） | 酸化剤か燃料の噴射器温度が RM の噴射器温度限界を3周期続けて下回ると、fail-leak（漏れ）と判定され、故障フラグが立って通報される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/729）フライトルール A6-8 は、主噴射器の酸化剤の噴射器温度が 30°F 未満、または燃料が 20°F 未満（OPS 2 のバーニアは 130°F 未満）の漏れを、噴射器の喪失とみなす。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1140） |
| YE-09 | — | 噴射器と弁の監視 | 推進薬貯蔵・分配 → 噴射器冗長管理 | マニホールド隔離弁の離散信号（弁の状態）を渡す。RM はマニホールドの状態を評価する。 | IF-RCS-06 | YE_09（RcsManifoldValveStatus） | RCS RM は、実際のマニホールド弁の状態を入力とする、マニホールド弁の状態の独立した評価を持ち、弁の離散信号が変わったときに状態を評価し直す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/731） |
| YE-10 | — | 噴射器と弁の監視 | 噴射器冗長管理 → 推進薬貯蔵・分配 | OPS 2・8 で fail-on が通報され、AUTO MANF CL が有効でスイッチが GPC 位置なら、GPC が該当するマニホールドを自動で閉じる指令を渡す。 | IF-RCS-06 | YE_10（RcsManifoldAutoCloseCommand） | OPS 2・8 で fail-on が通報されたとき、AUTO MANF CL が SPEC 23 で有効にしてあり、スイッチが GPC の位置にあれば、GPC が該当するマニホールドを自動で閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/723） |
| YE-11 | — | SPEC 23 の操作と He 圧の警報 | 乗員 → RCS 運用管理 | SPEC 23 の項目入力で、噴射器の手動の選択解除・再選択、マニホールド状態の開・閉の上書き、ポッドの故障限度の変更、AUTO MANF CL の有効化を行う。 | SPEC 23 の項目入力 | YE_11（RcsSpec23ItemEntry） | SPEC 23 の項目入力で、噴射器の手動の選択解除・再選択とマニホールド状態の開・閉の上書きを行い、主噴射器の故障限度（PRI JET FAIL LIM）は SPEC 23 の項目 4 である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/730）OPS 2・8 で fail-on が通報されたとき、AUTO MANF CL が SPEC 23 で有効にしてあり、スイッチが GPC の位置にあれば、GPC が該当するマニホールドを自動で閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/723） |
| YE-12 | — | SPEC 23 の操作と He 圧の警報 | RCS 運用管理 → 噴射器冗長管理 | 噴射器の選択解除・再選択、マニホールド状態の上書き、ポッドの故障限度の変更、AUTO MANF CL の有効化を渡す。 | IF-RCS-18 | YE_12（RcsRmOverrideEntry） | SPEC 23 の項目入力で、噴射器の手動の選択解除・再選択とマニホールド状態の開・閉の上書きを行い、主噴射器の故障限度（PRI JET FAIL LIM）は SPEC 23 の項目 4 である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/730）OPS 2・8 で fail-on が通報されたとき、AUTO MANF CL が SPEC 23 で有効にしてあり、スイッチが GPC の位置にあれば、GPC が該当するマニホールドを自動で閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/723） |
| YE-13 | — | SPEC 23 の操作と He 圧の警報 | ヘリウム加圧 → 警報系（C/W） | ポッドのヘリウム圧（燃料か酸化剤）が 500 psi 未満になったことを、F(L,R) He P の故障メッセージとして渡す。 | IF-RCS-14 | YE_13（RcsHeliumPressureFault） | ポッドのヘリウム圧（燃料か酸化剤）が 500 psi を下回ると、F(L,R) He P の故障メッセージが出る（PASS は OPS 2・8、BFS は OPS 1・3・6）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/735） |
| YE-14 | — | SPEC 23 の操作と He 圧の警報 | 警報系（C/W） → 乗員 | F(L,R) He P の故障メッセージを乗員に見せる。乗員はポケットチェックリストの RCS LEAK ISOL の手順で対処する。 | 表示・警報 | YE_14（RcsHePAlertAnnunciation） | ポッドのヘリウム圧（燃料か酸化剤）が 500 psi を下回ると、F(L,R) He P の故障メッセージが出る（PASS は OPS 2・8、BFS は OPS 1・3・6）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/735）C&W の訓練マニュアルは、F_RCS He P のメッセージに、ポケットチェックリストの RCS LEAK ISOL の手順を使うと定めている。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=92） |

## 29. IF との対応

メッセージが通る IF 102件と、その IF を使うメッセージを示す。

| 所有文書 | IF | メッセージ |
|---|---|---|
| SSD-FD-ECL-ALS-MON-001 | IF-ALS-10 | QC-14 |
| SSD-FD-APU-OPS-001 | IF-APU-03 | YA-02・YA-17 |
| SSD-FD-APU-CTL-001 | IF-APU-06 | YA-08・YA-09・YA-12 |
| SSD-FD-APU-WSB-001 | IF-APU-14 | YA-15 |
| SSD-FD-APU-OPS-001 | IF-APU-19 | YA-11 |
| SSD-FD-APU-OPS-001 | IF-APU-20 | YA-07・YA-14 |
| SSD-FD-APU-OPS-001 | IF-APU-21 | YA-04・YA-05 |
| SSD-FD-ARS-CAC-001 | IF-ARS-25 | QA-08 |
| SSD-FD-ARS-RCRS-001 | IF-ARS-26 | QB-06・QB-07 |
| SSD-FD-ARS-AVB-001 | IF-ARS-28 | QA-09 |
| SSD-FD-ARS-IMU-001 | IF-ARS-29 | QA-11 |
| SSD-FD-ARS-AVB-OPS-001 | IF-AVB-08 | QA-04 |
| SSD-FD-ARS-AVB-MON-001 | IF-AVB-12 | QA-14 |
| SSD-FD-ARS-AVB-MON-001 | IF-AVB-13 | QA-09 |
| SSD-FD-ARS-AVB-MON-001 | IF-AVB-14 | QA-10 |
| SSD-FD-CAC-OPS-001 | IF-CAC-10 | QA-02 |
| SSD-FD-CAC-MON-001 | IF-CAC-11 | QA-13 |
| SSD-FD-CAC-MON-001 | IF-CAC-12 | QA-08 |
| SSD-FD-CT-SBD-001 | IF-CT-01 | CM-02・CM-11 |
| SSD-FD-CT-SBD-001 | IF-CT-05 | CM-03 |
| SSD-FD-CT-INST-001 | IF-CT-06 | CM-08 |
| SSD-FD-CT-OPS-001 | IF-CT-07 | CM-05 |
| SSD-FD-CT-INST-001 | IF-CT-14 | CM-09 |
| SSD-FD-DPS-OPS-001 | IF-DPS-18 | YB-01・YB-02 |
| SSD-FD-DPS-OPS-001 | IF-DPS-19 | YB-03・YB-04 |
| SSD-FD-DPS-OPS-001 | IF-DPS-20 | YB-05・YB-06 |
| SSD-FD-ECL-FDS-001 | IF-ECL-18 | QD-02 |
| SSD-FD-ECL-WCS-001 | IF-ECL-37 | QC-13 |
| SSD-FD-ECL-ALS-001 | IF-ECL-38 | QC-14 |
| SSD-FD-EVA-OPS-001 | IF-EVA-01 | YC-01 |
| SSD-FD-EVA-CHK-001 | IF-EVA-02 | YC-03 |
| SSD-FD-EVA-OPS-001 | IF-EVA-05 | YC-04 |
| SSD-FD-EVA-DPR-001 | IF-EVA-06 | YC-05 |
| SSD-FD-EVA-EMG-001 | IF-EVA-07 | YC-07 |
| SSD-FD-EVA-OPS-001 | IF-EVA-13 | YC-06 |
| SSD-FD-ECL-FDS-DET-001 | IF-FDS-02 | QD-01 |
| SSD-FD-ECL-FDS-DET-001 | IF-FDS-03 | QD-02 |
| SSD-FD-ECL-FDS-ALM-001 | IF-FDS-05 | QD-05 |
| SSD-FD-ECL-FDS-ALM-001 | IF-FDS-06 | QD-03 |
| SSD-FD-ECL-FDS-ALM-001 | IF-FDS-07 | QD-04 |
| SSD-FD-ECL-FDS-FIX-001 | IF-FDS-09 | QD-08 |
| SSD-FD-ECL-FDS-OPS-001 | IF-FDS-13 | QD-06 |
| SSD-FD-ECL-FDS-OPS-001 | IF-FDS-14 | QD-07 |
| SSD-FD-ECL-H2O-SPL-001 | IF-H2O-05 | QC-05 |
| SSD-FD-ECL-H2O-DMP-001 | IF-H2O-12 | QC-06 |
| SSD-FD-ARS-IMU-FAN-001 | IF-IMU-05 | QA-07 |
| SSD-FD-ARS-IMU-OPS-001 | IF-IMU-07 | QA-06 |
| SSD-FD-ARS-IMU-MON-001 | IF-IMU-10 | QA-11 |
| SSD-FD-ARS-IMU-MON-001 | IF-IMU-12 | QA-15 |
| SSD-FD-MPS-OPS-001 | IF-MPS-17 | YB-08・YB-09 |
| SSD-FD-MPS-OPS-001 | IF-MPS-18 | YB-12 |
| SSD-FD-MPS-OPS-001 | IF-MPS-19 | YB-14 |
| SSD-FD-MPS-OPS-001 | IF-MPS-20 | YB-16 |
| SSD-FD-OMS-OPS-001 | IF-OMS-06 | YD-02 |
| SSD-FD-OMS-OPS-001 | IF-OMS-07 | YD-04 |
| SSD-FD-OMS-OPS-001 | IF-OMS-08 | YD-06 |
| SSD-FD-OMS-PSD-001 | IF-OMS-09 | YD-07 |
| SSD-FD-OMS-OPS-001 | IF-OMS-10 | YD-10 |
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
| SSD-FD-ECL-PCS-MON-001 | IF-PCS-15 | QC-03 |
| SSD-FD-ECL-PCS-OPS-001 | IF-PCS-16 | QC-01 |
| SSD-FD-ECL-PCS-OPS-001 | IF-PCS-17 | QC-02 |
| SSD-FD-ARS-RCRS-CTL-001 | IF-RCRS-05 | QB-03 |
| SSD-FD-ARS-RCRS-CTL-001 | IF-RCRS-06 | QB-04 |
| SSD-FD-ARS-RCRS-MON-001 | IF-RCRS-09 | QB-05 |
| SSD-FD-ARS-RCRS-MON-001 | IF-RCRS-10 | QB-06 |
| SSD-FD-ARS-RCRS-CTL-001 | IF-RCRS-11 | QB-07 |
| SSD-FD-ARS-RCRS-OPS-001 | IF-RCRS-14 | QB-02 |
| SSD-FD-ARS-RCRS-MON-001 | IF-RCRS-15 | QB-09 |
| SSD-FD-RCS-RJD-001 | IF-RCS-04 | YE-07 |
| SSD-FD-RCS-JET-001 | IF-RCS-05 | YE-08 |
| SSD-FD-RCS-RM-001 | IF-RCS-06 | YE-09・YE-10 |
| SSD-FD-RCS-HEP-001 | IF-RCS-14 | YE-13 |
| SSD-FD-RCS-OPS-001 | IF-RCS-16 | YE-02 |
| SSD-FD-RCS-OPS-001 | IF-RCS-17 | YE-04 |
| SSD-FD-RCS-OPS-001 | IF-RCS-18 | YE-12 |
| SSD-FD-RCS-OPS-001 | IF-RCS-19 | YE-06 |
| SSD-FD-ARS-THC-SEP-001 | IF-THC-09 | QE-06 |
| SSD-FD-ARS-THC-MON-001 | IF-THC-10 | QE-05 |
| SSD-FD-ARS-THC-MON-001 | IF-THC-12 | QE-07 |
| SSD-FD-ARS-THC-MON-001 | IF-THC-13 | QE-09 |
| SSD-FD-ARS-THC-OPS-001 | IF-THC-14 | QE-02・QE-10 |
| SSD-FD-ARS-THC-OPS-001 | IF-THC-15 | QE-04 |
| SSD-FD-ARS-WCL-PMP-001 | IF-WCL-06 | QB-13 |
| SSD-FD-ARS-WCL-OPS-001 | IF-WCL-09 | QB-11 |
| SSD-FD-ARS-WCL-OPS-001 | IF-WCL-10 | QB-12 |
| SSD-FD-ARS-WCL-MON-001 | IF-WCL-11 | QB-14 |
| SSD-FD-ECL-WCS-VAC-001 | IF-WCS-12 | QC-13 |
| SSD-FD-ECL-WCS-OPS-001 | IF-WCS-13 | QC-08 |
| SSD-FD-ECL-WCS-OPS-001 | IF-WCS-14 | QC-10 |
| SSD-FD-ECL-WCS-OPS-001 | IF-WCS-15 | QC-12 |

## 30. SysML v2 テキスト

同じライフラインとメッセージを SysML v2 のテキスト [SysML/SSD-BEH-ORB-003.sysml](../SysML/SSD-BEH-ORB-003.sysml) に示す。シーケンスの occurrence def 13件、メッセージ 182件と、その順序（first … then）から成る。本書の表と同じデータから作り、SysML v2 の文法による構文の検査を通し、Rev. AG で OMG SysML v2 Pilot Implementation 0.62.0 により、ほかのモデルと一緒に読み込んで名前の解決・型の検査を行い、誤り 0件・警告 0件を確かめた（SSD-MDL-SYS-001）。alt の枠（アボートの選択）はテキストには書かず、図76 の状態遷移に任せた。

## 31. 注記（出典間の相違・構成変更）

> **注記** 図83・図84 の時刻は SCOM の標準の時刻表の目安で、飛行によって変わる。乗員から系への矢印は、表示・操作部やスイッチによる操作で、IF の行ではない。

> **注記** 図84 の alt の枠は、第2段でエンジンが停止したときのアボートの選択を示す。選択の後の流れは図76（TR-14〜16 と TR-19〜21）による。

> **注記** 図85 の「各系」は、GPC から MDM を経て指令を受ける系の代表として機械系の MCA を描いた。ほかの系も同じ経路（FF・FA MDM など）で指令を受ける。

> **注記** シーケンス図の生存線から構造モデルの部品への割付は [SSD-ALC-SYS-001](SSD-ALC-SYS-001.md) に示す（SysML v2 テキスト：SysML/SSD-ALC-SYS-001.sysml）。

> **注記** 軌道離脱準備から着陸までの乗員の役割（CDR・PLT・MS2）と地上の作業の段は [SSD-TSK-ORB-001](SSD-TSK-ORB-001.md) に示す（SysML v2 テキスト：SysML/SSD-TSK-ORB-001.sysml）。

> **注記** 上昇・軌道離脱〜着陸の時間変化のモデル（シーケンスは本書の図83・84）は [SSD-TRJ-ORB-001](SSD-TRJ-ORB-001.md) に示す（SysML v2 テキスト：SysML/SSD-TRJ-ORB-001.sysml）。

> **注記** 本書の判断（Rev. CE）：ECLSS のシーケンス図 5件（図238・図239・図240・図241・図242）は、データ・指令の IF（運転の指令・計測値の表示・警報）に、メッセージの『経路・IF』の欄で IF を結び付けた。運転の選択・表示・警報の判断は、運用飛行規則・故障処置手順・訓練マニュアルの記述による。時刻は書かない。IF を載せないメッセージ（スイッチ・SM 表示・警報灯）は乗員と DPS の間の操作・表示で、QC-04（漏れの判定の結果を乗員に伝える）は資料に直接の手順が無く、判定の流れとして置いた（本書の判断）。

> **注記** 本書の判断（Rev. CH）：ECLSS 以外のシーケンス図 5件（図244・図245・図246・図247・図248）は、データ・指令の IF（乗員のスイッチ操作・計測値の表示・警報）に、メッセージの『経路・IF』の欄で IF を結び付けた。操作・表示・警報の判断は、乗員運用手引・運用飛行規則・SCOM の記述による。時刻は書かない。IF を載せないメッセージ（スイッチ・押しボタン・トークバック・表示灯）は乗員と機能ブロックの間の操作・表示である。

> **注記** 最終秒読み（図95）の前の地上処理（図254・255。T-43〜T-11 の保持を含む）は [SSD-GND-ORB-001](SSD-GND-ORB-001.md) に示す（SysML v2 テキスト：SysML/SSD-GND-ORB-001.sysml）。

## 32. 参考文献

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
31. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表3-6 ECLSS controls (ARS)（PDF p90） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90
32. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p376） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376
33. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Operations（PDF p404） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/404
34. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.5節 ARS Instrumentation and Displays（PDF p74） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74
35. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 AV BAY/CABIN AIR（PDF p133） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/133
36. Shuttle Crew Operations Manual 4.1 Instrument Markings（USA007587 Rev. A CPN-1、PDF p788） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/788
37. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.5.1節 図3-18 SM SYS SUMM 2（PDF p80） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=80
38. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 表7-2 C&W FDA table（PDF p96） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=96
39. USA004488 Rev. B（IMU 21002） Inertial Measurement Unit Workbook（訓練ワークブック、2006年） 2.10節 Thermal Controls（ファンの状態表示）（PDF p25） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/IMU%20Workbook.pdf#page=25
40. JSC-48027 Rev. F Malfunction Procedures（MAL）6.1d CABIN IMU（PDF p264） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=264
41. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p359） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/359
42. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-101 ATMOSPHERE REVITALIZATION SYSTEM (ARS) AIR LOSS DEFINITIONS（PDF p1929） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1929
43. Space Shuttle Operational Flight Rules Vol. A – All Flights A17-103 Loss of Avionics Bay Fan（NSTS-12820 PCN-1、PDF p1931） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1931
44. Space Shuttle Operational Flight Rules Vol. A – All Flights A17-104 IMU Fan（NSTS-12820 PCN-1、PDF p1933） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1933
45. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.2.3（ステート12）・C.3 Controls（PDF p224） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=224
46. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.8a（続き）（PDF p331） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=331
47. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.2.3 Operations（図C-5・Startup）（PDF p219） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=219
48. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.2.2〜C.2.3 RCRS Hardware・Operations（PDF p218） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=218
49. USA006020 Rev. B ECLSS 21002 訓練マニュアル （PDF p217） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=217
50. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.5 Fault Detection・C.6 Fault Messages（PDF p229） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=229
51. Space Shuttle Operational Flight Rules Vol. A – All Flights A17-106 Regenerative CO2 Removal System (RCRS) Loss Definition（NSTS-12820 PCN-1、PDF p1937） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1937
52. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.4（表C-2 SPEC 66）・C.5 Fault Detection（PDF p228） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=228
53. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.4 Instrumentation and Displays（表C-1）（PDF p227） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=227
54. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p371） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371
55. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Water Coolant Loop System（PDF p379） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/379
56. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-101 ARS Water Loop（C項）（PDF p2059） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2059
57. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 2.7.1〜2.7.2節 Ascent・Orbit（PDF p47） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=47
58. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-251 Normal PCS Configuration（PDF p1964） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1964
59. NSTS-12820 Space Shuttle Operational Flight Rules Vol. A（2002、2214頁） （PDF p1971） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1971
60. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 2.5節 Pressure Control System Controls（PDF p33） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=33
61. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-201 Cabin Pressure Integrity（PDF p1955） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1955
62. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 5.6節 Supply and Wastewater System Instrumentation/Displays（PDF p158） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=158
63. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 図5-13 SPEC 66 ENVIRONMENT（PDF p160） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=160
64. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.5c WASTE H2O PRESS・DMP LN T・NOZ T（PDF p325） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=325
65. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.25節 Operations（PDF p758） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/758
66. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.25節 Vacuum Vent System・Alternative Waste Collection（PDF p760） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/760
67. JSC-12770 Vol. 12 Basic Rev. B Shuttle Flight Operations Manual – Crew Systems（1987年） 3.17.4.1〜3.17.4.2節 Commode Interlocks・Waste Production Quantities（PDF p474） — https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=474
68. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.25節 Waste Management System（EMU water drain mode）（PDF p759） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/759
69. JSC-12770 Vol. 12 Basic Rev. B Shuttle Flight Operations Manual – Crew Systems（1987年） 表3.17-1 WCS display and control functions（VACUUM VALVE）（PDF p468） — https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=468
70. JSC-48025 Rev. F PCN-13 In-Flight Maintenance (IFM) Checklist W-56a Interconnect Vacuum Vent and Waste Water Dump Systems（PDF p481） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=481
71. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 6.8.3節 CRT Displays（PDF p189） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=189
72. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p118） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/118
73. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 3.3.2.4〜3.3.2.5節 Performance Monitoring・Troubleshooting False Alarms（PDF p28） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=28
74. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p114） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/114
75. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 3.3.4.1節 Panel L1（PDF p38） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=38
76. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 表3-1 Displays and controls（Panel L1）（PDF p39） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=39
77. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-53 Fire and Post-Fire Actions（PDF p1923） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1923
78. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-1 Fire/Post-Fire Definitions（PDF p1915） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1915
79. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p123） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/123
80. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-54 Management Following Halon Discharge without Fire Confirmation（PDF p1928） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1928
81. JSC-12770 Vol.3 Shuttle Flight Operations Manual, ECLSS（1979） （PDF p35） — https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=35
82. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p370） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370
83. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.5.1節 図3-19 SPEC 66 ENVIRONMENT（PDF p81） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=81
84. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.2j HUMID SEP（PDF p285） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=285
85. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-102 CABIN ATMOSPHERIC CONTROL（PDF p1930） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1930
86. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p375） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375
87. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p86） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/86
88. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p96） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/96
89. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p98） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/98
90. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p99） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/99
91. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p94） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/94
92. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p89） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/89
93. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p90） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/90
94. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p88） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/88
95. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p100） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/100
96. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p97） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/97
97. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p95） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/95
98. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A7-1 PASS DPS FAILURE（PDF p1289） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1289
99. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A7-3 GPC FAILURE（PDF p1293） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1293
100. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A7-105 MDM PORT MODING（PDF p1328） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1328
101. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A7-101 POWER CYCLING/MANAGEMENT（PDF p1320） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1320
102. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A7-107 TIME MANAGEMENT（PDF p1330） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1330
103. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A7-107 TIME MANAGEMENT（PDF p1331） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1331
104. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p618） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/618
105. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p602） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/602
106. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p598） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/598
107. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p599） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/599
108. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p609） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/609
109. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A5-13 MPS DUMPS AND VACUUM INERTING DEFINITIONS（PDF p1031） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1031
110. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p601） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/601
111. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p600） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/600
112. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 4-8 EMU PREBREATHE（PDF p88） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=88
113. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p403） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/403
114. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 4-9 EMU PREBREATHE（続き）（PDF p89） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=89
115. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 20-2 CUE CARD CONFIGURATION（PDF p232） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=232
116. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 9-2 POST EVA（PDF p114） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=114
117. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 15-3 DECOMPRESSION SICKNESS (DCS)（PDF p195） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=195
118. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 19.1 DCS TREATMENT（PDF p226） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=226
119. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-203 Cabin Atmosphere Decontamination Following EVA（続き）（PDF p1873） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1873
120. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 12.1 STS EVA DECONTAMINATION（続き）（PDF p149） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=149
121. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p647） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/647
122. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p648） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/648
123. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p650） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/650
124. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p651） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/651
125. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p656） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/656
126. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p653） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/653
127. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-301 OMS USABLE PROPELLANT（PDF p1246） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1246
128. JSC-48035 Rev. M PCN-10 Orbit Operations Checklist 6-5 Heater Reconfig（PDF p179） — https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=179
129. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-251 GENERAL（PDF p1229） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1229
130. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p742） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/742
131. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p722） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/722
132. Orbit Operations Checklist Rev M PCN-10 RCS REGULATOR RECONFIG（PDF p256） — https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=256
133. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p719） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/719
134. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p728） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/728
135. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p729） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/729
136. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-8 RCS THRUSTER（PDF p1140） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1140
137. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p731） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/731
138. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p723） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/723
139. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p730） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/730
140. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p735） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/735
141. USA006019 Rev. A C&W 21002 Caution and Warning 訓練マニュアル（2008） 7.3 Fault message table（Comments）（PDF p92） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=92

## 13. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（図83 軌道離脱〜着陸 シーケンス図のライフライン 7件・メッセージ 27件、図84 上昇 シーケンス図のライフライン 9件・メッセージ 17件、図85 指令・テレメトリ経路 シーケンス図のライフライン 6件・メッセージ 12件、IF との対応 17件、SysML v2 テキスト） |
| Rev. A | 2026-10-03 | 割付定義書 SSD-ALC-SYS-001 への参照を注記（Rev. AF） |
| Rev. B | 2026-10-03 | SysML v2 テキストの検査の記述を改めた（Pilot による名前の解決・型の検査、モデル統合・検査定義書 SSD-MDL-SYS-001）（Rev. AG） |
| Rev. C | 2026-10-07 | 乗員の作業分析・機能の分担定義書 SSD-TSK-ORB-001 への参照を注記（Rev. BA） |
| Rev. D | 2026-10-12 | 上昇・再突入の時間変化モデル定義書 SSD-TRJ-ORB-001 への参照を注記（Rev. BZ） |
| Rev. E | 2026-10-16 | ECLSS のシーケンス図 5件（図238〜図242：メッセージ 61件、IF 53件）を足した（Rev. CE） |
| Rev. F | 2026-10-16 | ECLSS 以外のシーケンス図 5件（図244〜図248：メッセージ 65件、IF 32件）を足した（Rev. CH） |
| Rev. G | 2026-10-17 | 地上処理・ターンアラウンド定義書 SSD-GND-ORB-001 への参照を注記（Rev. CM） |
